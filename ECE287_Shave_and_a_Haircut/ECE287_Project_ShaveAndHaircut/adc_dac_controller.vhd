-- DE1 ADC DAC interface
-- adc, dac data interface
-- References:  
-- 1.  DE1 Reference designs (specifically, DE1_Default on DE1 System CD)
-- Bharathwaj Muthuswamy
-- EECS 3921 Fall 2010
-- muthuswamy@msoe.edu

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adc_dac_controller is port (
		reset : in std_logic;
		halfSpeed : in std_logic; --connected to SW(6) 
		twiceSpeed : in std_logic; --connected to SW(7)
		volumeDown : in std_logic; -- connected to SW(8)
		volumeUp : in std_logic; -- connected to SW(9)
		audioClock : in std_logic; -- 18.432 MHz sample clock
		bitClock : out std_logic;
		adcLRSelect : out std_logic;
		dacLRSelect : out std_logic;
		dacData : out std_logic) ;
end entity;

architecture behavioral of adc_dac_controller is
	
	type NOTE is (C, G, GSharp, Rest, B);
	
	signal shaveAndAHaircut : NOTE := C;
	signal noteNum : integer range 0 to 16 := 1;
	
	signal internalBitClock : std_logic := '0';
	signal bitClockCounter : integer range 0 to 255;

	signal internalLRSelect,dataCount : std_logic := '0';
	signal LRCounter : integer range 0 to 31; 
	signal leftOutCounter,rightOutCounter : integer range 0 to 15;
	
	signal leftChannel ,rightChannel : std_logic_vector(15 downto 0):= X"0000";
	signal signalValue : integer range -32768 to 32767;
	
	signal leftChannelOut, rightChannelOut : std_logic_vector(15 downto 0) := X"0000";
	
	signal beatCounter : integer range 0 to 23999;
	signal beatLimit : integer range 0 to 23999; 
	
	-- the counters control the frequencies  for each note
	signal C5Counter : integer range 0 to 91; --C5 = 523Hz 	full period takes approximately 48k/523 = 92 clock cycles
	signal B4Counter : integer range 0 to 96; --B4 = 493Hz 	full period takes approximately 48k/493 = 97 clock cycles
	signal GSharp4Counter : integer range 0 to 115; --G#4 = 415Hz 	 full period takes approximately 48k/415 = 116 clock cycles
	signal G4Counter : integer range 0 to 121; --G4 = 392Hz 	 full period takes approximately 48k/392 =  122 clock cycles

	signal C5, B4, GSharp4, G4 : integer range -32768 to 32767;
	
begin
	-- generate bit clock
	-- we have an 18.432 MHz reference clock (refer to audio codec datasheet, this is the required frequency)
	-- we need to shift out 16 bits, 2 channels at 48 KHz.  Hence, the count value for flipping the clock bit is
	-- count = 18.432e6/(48000*16*2) - 1 = 11 (approx)
	
	-- the code for this process was developed by Bharathwaj Muthuswamy
	process(audioClock,reset)
	begin
		if reset = '0' then
			bitClockCounter <= 0;
			internalBitClock <= '0';
		else
			if audioClock'event and audioClock = '1' then
				if bitClockCounter < 5 then					
					internalBitClock <= '0'; 
					bitClockCounter <= bitClockCounter + 1;
				elsif bitClockCounter >= 5 and bitClockCounter < 11 then
					internalBitClock <= '1'; 
					bitClockCounter <= bitClockCounter + 1;
				else
					internalBitClock <= '0'; 
					bitClockCounter <= 0;
				end if;
			end if;
		end if;
	end process;
	bitClock <= internalBitClock;
	
	-- generate LeftRight select signals 
	-- flip every 16 bits, starting on NEGATIVE edge
	process(internalBitClock,reset)
	begin
		if reset = '0' then					
			leftChannel <= X"0000";
			rightChannel <= X"0000";
			LRCounter <= 0;
			internalLRSelect <= '0'; -- should start at low, fig. 26 on p. 33 of audio codec datasheet
			dataCount <= '0';
			leftOutCounter <= 15;
			rightOutCounter <= 15;
			shaveAndAHaircut <= C;
			noteNum <= 0;
		else
			if internalBitClock'event and internalBitClock = '0' then -- flip on negative edge								
				if LRCounter < 16 then	
					internalLRSelect <= '1';
					LRCounter <= LRCounter + 1;
					leftOutCounter <= leftOutCounter - 1;
					rightOutCounter <= 15;
					dataCount <= '0';					
				elsif LRCounter >= 16 and LRCounter < 32 then
					internalLRSelect <= '0';
					LRCounter <= LRCounter + 1;
					dataCount <= '0';
					leftOutCounter <= 15;
					rightOutCounter <= rightOutCounter - 1;
					if LRCounter = 31 then
						LRCounter <= 0;
						dataCount <= '1';
					-- previous code made by Bharathwaj Muthuswamy
					
						--case statement to determine the order in whick the notes are played 
						--the sequence is 8 beats long and broken into 16 different segments
						Case shaveAndAHaircut IS
							when C =>
								leftChannel <= std_logic_vector(to_signed(C5,16));
								rightChannel <= std_logic_vector(to_signed(C5,16));
								signalValue <= C5;
								if beatCounter >= beatLimit then
									noteNum <= noteNum + 1;
									if noteNum = 2 then
										shaveAndAHaircut <= G;
									elsif noteNum = 14 then
										shaveAndAHaircut <= Rest;
									else 
										shaveAndAHaircut <= C;
									end if;
								else
									shaveAndAHaircut <= C;
								end if;
							when G =>
								leftChannel <= std_logic_vector(to_signed(G4,16));
								rightChannel <= std_logic_vector(to_signed(G4,16));
								signalValue <= G4;
								if beatCounter >= beatLimit then
									noteNum <= noteNum + 1;
									if noteNum = 3 then
										shaveAndAHaircut <= G;
									elsif noteNum = 4 then
										shaveAndAHaircut <= GSharp;
									elsif noteNum = 8 then 
										shaveAndAHaircut <= Rest;
									else 
										shaveAndAHaircut <= G;
									end if;
								else
									shaveAndAHaircut <= G;
								end if;
							when GSharp =>
								leftChannel <= std_logic_vector(to_signed(GSharp4,16));
								rightChannel <= std_logic_vector(to_signed(GSharp4,16));
								signalValue <= GSharp4;
								if beatCounter >= beatLimit then
									noteNum <= noteNum + 1;
									if noteNum = 6 then
										shaveAndAHaircut <= G;
									else 
										shaveAndAHaircut <= GSharp;
									end if;
								else
									shaveAndAHaircut <= GSharp;
								end if;
							when Rest =>
								leftChannel <= X"0000";
								rightChannel <= X"0000";
								signalValue <= 0;
								if beatCounter >= beatLimit then
									noteNum <= noteNum + 1;
									if noteNum = 10 then
										shaveAndAHaircut <= B;
									elsif noteNum = 16 then
										shaveAndAHaircut <= C;
										noteNum <= 1;
									else 
										shaveAndAHaircut <= Rest;
									end if;
								else
									shaveAndAHaircut <= Rest;
								end if;
							when B =>
								leftChannel <= std_logic_vector(to_signed(B4,16));
								rightChannel <= std_logic_vector(to_signed(B4,16));
								signalValue <= B4;
								if beatCounter >= beatLimit then
									noteNum <= noteNum + 1;
									if noteNum = 12 then
										shaveAndAHaircut <= C;
									else 
										shaveAndAHaircut <= B;
									end if;
								else
									ShaveAndAHaircut <= B;
								end if;
						end case;
					end if;						
				end if;									
			end if;
		end if;
	end process;

	adcLRSelect <= internalLRSelect;
	dacLRSelect <= internalLRSelect;
	
	--volume control
	process(internalBitClock, reset, internalLRSelect)
	begin
		if dataCount'event and dataCount = '1' then
			if volumeUp = '1' and volumeDown ='0' then
				leftChannelOut <= std_logic_vector(to_signed(signalValue * 2, 16));
				rightChannelOut <= std_logic_vector(to_signed(signalValue * 2, 16));
			elsif volumeUp = '0' and volumeDown = '1' then
				leftChannelOut <= std_logic_vector(to_signed(signalValue * 1/2, 16));
				rightChannelOut <= std_logic_vector(to_signed(signalValue * 1/2, 16));
			else
				leftChannelOut <= leftChannel;
				rightChannelOut <= rightChannel;		
			end if;
		end if;
	end process;
	
	
	-- data output
	process(internalBitClock,reset,internalLRSelect)
	begin
		if reset = '0' then
			 dacData <= '0';
		else
			-- start on falling edge of bit clock
			if internalBitClock'event and internalBitClock = '0' then											
				if internalLRSelect = '1' then
					-- remember, you need to send MSb first.  So, we start at bit 15
					dacData <= leftChannelOut(leftOutCounter);
				else
					dacData <= rightChannelOut(rightOutCounter);
				end if;	
			end if;
		end if;
	 end process;
	 
	--beatLimit determins how long a beat is  
	--default is 1 beat = 1/4 sec  (48KHz/4 = 12000 cycles) so the whole sequence takes 4 seconds to play
	process(halfSpeed, twiceSpeed)
	begin
		if halfSpeed ='1' and twiceSpeed ='0' then
			beatLimit <= 23999;
		elsif halfSpeed ='0' and twiceSpeed ='1' then
			beatLimit <= 5999;
		else
			beatLimit <= 11999;
		end if;
	end process;
	
	--keeps the beat
	process(dataCount,reset)
	begin
		if reset = '0' then
			beatCounter <= 0;
		else
			if dataCount'event and dataCount = '1' then
				if beatCounter >= beatLimit then
					beatCounter <= 0;
				else
					beatCounter <= beatCounter + 1;
				end if;
			end if;
		end if;
	end process;	
	
	--C5 address generator
	process(dataCount,reset)
	begin
		if reset = '0' then
			C5Counter <= 0;
		else
			if dataCount'event and dataCount = '1' then
				if C5Counter >= 91 then
					C5Counter <= 0;
				else
					C5Counter <= C5Counter + 1;
				end if;
			end if;
		end if;
	end process;
	
	--B4 address generator
	process(dataCount,reset)
	begin
		if reset = '0' then
			B4Counter <= 0;
		else
			if dataCount'event and dataCount = '1' then
				if B4Counter >= 96 then
					B4Counter <= 0;
				else
					B4Counter <= B4Counter + 1;
				end if;
			end if;
		end if;
	end process;
	
	--G#4 address generator
	process(dataCount,reset)
	begin
		if reset = '0' then
			GSharp4Counter <= 0;
		else
			if dataCount'event and dataCount = '1' then
				if GSharp4Counter >= 115 then
					GSharp4Counter <= 0;
				else
					GSharp4Counter <= GSharp4Counter + 1;
				end if;
			end if;
		end if;
	end process;
	
	--G4 address generator
	process(dataCount,reset)
	begin
		if reset = '0' then
			G4Counter <= 0;
		else
			if dataCount'event and dataCount = '1' then
				if G4Counter >= 121 then
					G4Counter <= 0;
				else
					G4Counter <= G4Counter + 1;
				end if;
			end if;
		end if;
	end process;
	



	--C5 table			
	with C5Counter select  
    C5  <=  2731 when 0,
				2731 when 1,
				2731 when 2,
				2731 when 3,
    2731 when 4,
    2731 when 5,
    2731 when 6,
    2731 when 7,
    2731 when 8,
    2731 when 9,
    2731 when 10,
    2731 when 11,
    2731 when 12,
    2731 when 13,
    2731 when 14,
    2731 when 15,
    2731 when 16,
    2731 when 17,
    2731 when 18,
    2731 when 19,
    2731 when 20,
    2731 when 21,
    2731 when 22,
    2731 when 23,
    2731 when 24,
    2731 when 25,
    2731 when 26,
    2731 when 27,
    2731 when 28,
    2731 when 29,
    2731 when 30,
    2731 when 31,
    2731 when 32,
    2731 when 33,
    2731 when 34,
    2731 when 35,
    2731 when 36,
    2731 when 37,
    2731 when 38,
    2731 when 39,
    2731 when 40,
    2731 when 41,
    2731 when 42,
    2731 when 43,
    2731 when 44,
    2731 when 45,
    -2731 when 46,
    -2731 when 47,
	 -2731 when 48,
	 -2731 when 49,
	 -2731 when 50,
	 -2731 when 51,
	 -2731 when 52,
	 -2731 when 53,
	 -2731 when 54,
	 -2731 when 55,
	 -2731 when 56,
	 -2731 when 57,
	 -2731 when 58,
	 -2731 when 59,
	 -2731 when 60,
	 -2731 when 61,
	 -2731 when 62,
	 -2731 when 63,
	 -2731 when 64,
	 -2731 when 65,
	 -2731 when 66,
	 -2731 when 67,
	 -2731 when 68,
	 -2731 when 69,
	 -2731 when 70,
	 -2731 when 71,
	 -2731 when 72,
	 -2731 when 73,
	 -2731 when 74,
	 -2731 when 75,
	 -2731 when 76,
	 -2731 when 77,
	 -2731 when 78,
	 -2731 when 79,
	 -2731 when 80,
	 -2731 when 81,
	 -2731 when 82,
	 -2731 when 83,
	 -2731 when 84,
	 -2731 when 85,
	 -2731 when 86,
	 -2731 when 87,
	 -2731 when 88,
	 -2731 when 89,
	 -2731 when 90,
	 -2731 when 91;
		
	--B4 table
	with B4Counter select  
    B4  <=  2731 when 0,
				2731 when 1,
				2731 when 2,
				2731 when 3,
    2731 when 4,
    2731 when 5,
    2731 when 6,
    2731 when 7,
    2731 when 8,
    2731 when 9,
    2731 when 10,
    2731 when 11,
    2731 when 12,
    2731 when 13,
    2731 when 14,
    2731 when 15,
    2731 when 16,
    2731 when 17,
    2731 when 18,
    2731 when 19,
    2731 when 20,
    2731 when 21,
    2731 when 22,
    2731 when 23,
    2731 when 24,
    2731 when 25,
    2731 when 26,
    2731 when 27,
    2731 when 28,
    2731 when 29,
    2731 when 30,
    2731 when 31,
    2731 when 32,
    2731 when 33,
    2731 when 34,
    2731 when 35,
    2731 when 36,
    2731 when 37,
    2731 when 38,
    2731 when 39,
    2731 when 40,
    2731 when 41,
    2731 when 42,
    2731 when 43,
    2731 when 44,
    2731 when 45,
    2731 when 46,
    2731 when 47,				
	 2731 when 48,
	 -2731 when 49,
	 -2731 when 50,
	 -2731 when 51,
	 -2731 when 52,
	 -2731 when 53,
	 -2731 when 54,
	 -2731 when 55,
	 -2731 when 56,
	 -2731 when 57,
	 -2731 when 58,
	 -2731 when 59,
	 -2731 when 60,
	 -2731 when 61,
	 -2731 when 62,
	 -2731 when 63,
	 -2731 when 64,
	 -2731 when 65,
	 -2731 when 66,
	 -2731 when 67,
	 -2731 when 68,
	 -2731 when 69,
	 -2731 when 70,
	 -2731 when 71,
	 -2731 when 72,
	 -2731 when 73,
	 -2731 when 74,
	 -2731 when 75,
	 -2731 when 76,
	 -2731 when 77,
	 -2731 when 78,
	 -2731 when 79,
	 -2731 when 80,
	 -2731 when 81,
	 -2731 when 82,
	 -2731 when 83,
	 -2731 when 84,
	 -2731 when 85,
	 -2731 when 86,
	 -2731 when 87,
	 -2731 when 88,
	 -2731 when 89,
	 -2731 when 90,
	 -2731 when 91,
	 -2731 when 92,
	 -2731 when 93,
	 -2731 when 94,
	 -2731 when 95,
	 -2731 when 96;
	 
	 
	--G#4 table
	with GSharp4Counter select  
    GSharp4  <=  2731 when 0,
				2731 when 1,
				2731 when 2,
				2731 when 3,
    2731 when 4,
    2731 when 5,
    2731 when 6,
    2731 when 7,
    2731 when 8,
    2731 when 9,
    2731 when 10,
    2731 when 11,
    2731 when 12,
    2731 when 13,
    2731 when 14,
    2731 when 15,
    2731 when 16,
    2731 when 17,
    2731 when 18,
    2731 when 19,
    2731 when 20,
    2731 when 21,
    2731 when 22,
    2731 when 23,
    2731 when 24,
    2731 when 25,
    2731 when 26,
    2731 when 27,
    2731 when 28,
    2731 when 29,
    2731 when 30,
    2731 when 31,
    2731 when 32,
    2731 when 33,
    2731 when 34,
    2731 when 35,
    2731 when 36,
    2731 when 37,
    2731 when 38,
    2731 when 39,
    2731 when 40,
    2731 when 41,
    2731 when 42,
    2731 when 43,
    2731 when 44,
    2731 when 45,
    2731 when 46,
    2731 when 47,			
	 2731 when 48,
	 2731 when 49,
	 2731 when 50,
	 2731 when 51,
	 2731 when 52,
	 2731 when 53,
	 2731 when 54,
	 2731 when 55,
	 2731 when 56,
	 2731 when 57,
	 -2731 when 58,
	 -2731 when 59,
	 -2731 when 60,
	 -2731 when 61,
	 -2731 when 62,
	 -2731 when 63,
	 -2731 when 64,
	 -2731 when 65,
	 -2731 when 66,
	 -2731 when 67,
	 -2731 when 68,
	 -2731 when 69,
	 -2731 when 70,
	 -2731 when 71,
	 -2731 when 72,
	 -2731 when 73,
	 -2731 when 74,
	 -2731 when 75,
	 -2731 when 76,
	 -2731 when 77,
	 -2731 when 78,
	 -2731 when 79,
	 -2731 when 80,
	 -2731 when 81,
	 -2731 when 82,
	 -2731 when 83,
	 -2731 when 84,
	 -2731 when 85,
	 -2731 when 86,
	 -2731 when 87,
	 -2731 when 88,
	 -2731 when 89,
	 -2731 when 90,
	 -2731 when 91,
	 -2731 when 92,
	 -2731 when 93,
	 -2731 when 94,
	 -2731 when 95,
	 -2731 when 96,
	 -2731 when 97,
	 -2731 when 98,
	 -2731 when 99,
	 -2731 when 100,
	 -2731 when 101,
	 -2731 when 102,
	 -2731 when 103,
	 -2731 when 104,
	 -2731 when 105,
	 -2731 when 106,
	 -2731 when 107,
	 -2731 when 108,
	 -2731 when 109,
	 -2731 when 110,
	 -2731 when 111,
	 -2731 when 112,
	 -2731 when 113,
	 -2731 when 114,
	 -2731 when 115;
	 
	--G4 table
	with G4Counter select  
    G4  <=  2731 when 0,
				2731 when 1,
				2731 when 2,
				2731 when 3,
    2731 when 4,
    2731 when 5,
    2731 when 6,
    2731 when 7,
    2731 when 8,
    2731 when 9,
    2731 when 10,
    2731 when 11,
    2731 when 12,
    2731 when 13,
    2731 when 14,
    2731 when 15,
    2731 when 16,
    2731 when 17,
    2731 when 18,
    2731 when 19,
    2731 when 20,
    2731 when 21,
    2731 when 22,
    2731 when 23,
    2731 when 24,
    2731 when 25,
    2731 when 26,
    2731 when 27,
    2731 when 28,
    2731 when 29,
    2731 when 30,
    2731 when 31,
    2731 when 32,
    2731 when 33,
    2731 when 34,
    2731 when 35,
    2731 when 36,
    2731 when 37,
    2731 when 38,
    2731 when 39,
    2731 when 40,
    2731 when 41,
    2731 when 42,
    2731 when 43,
    2731 when 44,
    2731 when 45,
    2731 when 46,
    2731 when 47,				
	 2731 when 48,
	 2731 when 49,
	 2731 when 50,
	 2731 when 51,
	 2731 when 52,
	 2731 when 53,
	 2731 when 54,
	 2731 when 55,
	 2731 when 56,
	 2731 when 57,
	 2731 when 58,
	 2731 when 59,
	 2731 when 60,
	 -2731 when 61,
	 -2731 when 62,
	 -2731 when 63,
	 -2731 when 64,
	 -2731 when 65,
	 -2731 when 66,
	 -2731 when 67,
	 -2731 when 68,
	 -2731 when 69,
	 -2731 when 70,
	 -2731 when 71,
	 -2731 when 72,
	 -2731 when 73,
	 -2731 when 74,
	 -2731 when 75,
	 -2731 when 76,
	 -2731 when 77,
	 -2731 when 78,
	 -2731 when 79,
	 -2731 when 80,
	 -2731 when 81,
	 -2731 when 82,
	 -2731 when 83,
	 -2731 when 84,
	 -2731 when 85,
	 -2731 when 86,
	 -2731 when 87,
	 -2731 when 88,
	 -2731 when 89,
	 -2731 when 90,
	 -2731 when 91,
	 -2731 when 92,
	 -2731 when 93,
	 -2731 when 94,
	 -2731 when 95,
	 -2731 when 96,
	 -2731 when 97,
	 -2731 when 98,
	 -2731 when 99,
	 -2731 when 100,
	 -2731 when 101,
	 -2731 when 102,
	 -2731 when 103,
	 -2731 when 104,
	 -2731 when 105,
	 -2731 when 106,
	 -2731 when 107,
	 -2731 when 108,
	 -2731 when 109,
	 -2731 when 110,
	 -2731 when 111,
	 -2731 when 112,
	 -2731 when 113,
	 -2731 when 114,
	 -2731 when 115,
	 -2731 when 116,
	 -2731 when 117,
	 -2731 when 118,
	 -2731 when 119,
	 -2731 when 120,
	 -2731 when 121;
	 

end behavioral;