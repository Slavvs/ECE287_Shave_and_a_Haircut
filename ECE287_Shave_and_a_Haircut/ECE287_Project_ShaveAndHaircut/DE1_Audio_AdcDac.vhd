-- DE1 ADC DAC interface
-- top-level module
-- References:  
-- 1.  DE1 User's manual
-- 2.  DE1 Reference Designs (specifically, DE1_Default)
-- 3.  Digital Differential Analyzer: http://courses.cit.cornell.edu/ece576/DDA/index.htm
-- credit to Bharathwaj Muthuswamy for all files except for for adc_dac_controller.vhd, all code within those files is his work
-- EECS 3921 Fall 2010
-- muthuswamy@msoe.edu

-- This design is a VHDL interface to the audio codec on the DE1 board
-- Placing SW(0) in the UP position plays a tune (Shave and a Haircut)
-- SW(6) and SW(7) control the speed
-- SW(8) and SW(9) control the volume
-- The codec is configured for 16-bit 48 KHz sampling frequency.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Shave_and_a_Haircut is port
	(
		CLOCK_50 : in std_logic;
		CLOCK_27 : in std_logic;
		SW : in std_logic_vector(9 downto 0);
		AUD_ADCLRCK : out std_logic;
		AUD_DACLRCK : out std_logic;
		AUD_DACDAT : out std_logic;
		AUD_XCK : out std_logic;
		AUD_BCLK : out std_logic;
		I2C_SCLK : out std_logic; -- master (our module) drives i2c clock
		I2C_SDAT : inout std_logic);
end Shave_and_a_Haircut;
	
architecture topLevel of Shave_and_a_Haircut is
	
	component audioCodecController is
	port(
		clock50MHz,reset: in std_logic;
		I2C_SCLK_Internal: inout std_logic;
		--must be inout to allow FPGA to read the ack bit
		I2C_SDAT_Internal: inout std_logic;
		SDAT_Control: inout std_logic;
		--for testing
		clock50KHz_Out: out std_logic
	);
	end component;
	
	component delayCounter is port (
		reset : in std_logic;
		clock : in std_logic;
		resetAdc : out std_logic);
	end component;
	
	component clockBuffer IS
	PORT
	(
		areset		: IN STD_LOGIC  := '0';
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC );
	END component;
	
	component Audio_Alt_PLL IS
	PORT
	(
		areset		: IN STD_LOGIC  := '0';
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC);
	END component;

	component adc_dac_controller is port (
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
	end component;
	
	signal i2cClock,audioClock,clock50MHz : std_logic := '0';
	signal stateOut : integer range 0 to 7;
	signal resetAdcDac : std_logic := '0';
	
	signal reset: std_logic;
	signal clock50KHz: std_logic;
	signal i2cDataControl: std_logic;
	signal i2cData: std_LOGIC;
	
	
	signal adcLRC,bitClock,dacLRC,dacDat : std_logic := '0';
	
begin
	-- clock buffer to avoid clock skews
	clockBuffer50MHz : clockBuffer port map(not SW(0),CLOCK_50,clock50MHz);
	
	audio_Codec_Controller : audioCodecController port map(clock50MHz, reset, i2cClock, i2cData,
		i2cDataControl, clock50KHz);
	-- we only start the audio controller below long (40 ms) after we reset the system
	-- the reason is that transmitting all the i2c data takes at least 19 ms (20 KHz clock)
	adcDacControllerStartDelay : delayCounter port map (SW(0),clock50MHz,resetAdcDac);
	
	
	-- we will use a PLL to generate the necessary 18.432 MHz Audio Control clock
	audioPllClockGen : Audio_Alt_PLL port map (not resetAdcDac,CLOCK_27,audioClock);
	
	adcDacController : adc_dac_controller port map (resetAdcDac,SW(6),SW(7),SW(8),SW(9),audioClock,bitClock,adcLRC,AUD_DACLRCK,dacDat);
	-- send out the clocks
	I2C_SCLK <= i2cClock;
	AUD_BCLK <= bitClock;
	AUD_XCK <= audioClock;	
	
	-- output assignments
	AUD_ADCLRCK <= adcLRC;
	AUD_DACDAT <= dacDat;
	 
	
		
end topLevel;

