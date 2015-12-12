-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "12/11/2015 15:16:24"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Shave_and_a_Haircut IS
    PORT (
	CLOCK_50 : IN std_logic;
	CLOCK_27 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	AUD_ADCLRCK : BUFFER std_logic;
	AUD_DACLRCK : BUFFER std_logic;
	AUD_DACDAT : BUFFER std_logic;
	AUD_XCK : BUFFER std_logic;
	AUD_BCLK : BUFFER std_logic;
	I2C_SCLK : BUFFER std_logic;
	I2C_SDAT : BUFFER std_logic
	);
END Shave_and_a_Haircut;

-- Design Ports Information
-- SW[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCLRCK	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_XCK	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SCLK	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SDAT	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_27	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Shave_and_a_Haircut IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_CLOCK_27 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_I2C_SDAT : std_logic;
SIGNAL \audioPllClockGen|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \audioPllClockGen|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clockBuffer50MHz|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clockBuffer50MHz|altpll_component|pll_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adcDacController|dataCount~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adcDacController|internalBitClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_AUD_XCK_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockBuffer50MHz|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockBuffer50MHz|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \clockBuffer50MHz|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \clockBuffer50MHz|altpll_component|pll~CLK3\ : std_logic;
SIGNAL \clockBuffer50MHz|altpll_component|pll~CLK4\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \I2C_SDAT~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \clockBuffer50MHz|altpll_component|pll~FBOUT\ : std_logic;
SIGNAL \clockBuffer50MHz|altpll_component|_clk0\ : std_logic;
SIGNAL \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~0_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~95_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~1\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~2_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~94_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~3\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~4_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~93_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~5\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~6_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~92_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~7\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~8_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~91_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~9\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~10_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~90_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~11\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~12_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~89_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~13\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~14_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~77_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~15\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~16_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~76_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~17\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~18_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~75_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~19\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~20_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~78_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~21\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~22_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~82_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~23\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~24_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~81_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~25\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~26_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~80_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~27\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~28_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~79_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~29\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~30_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~83_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~31\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~32_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~84_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|LessThan0~3_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|LessThan0~4_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|LessThan0~5_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~33\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~34_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~88_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~35\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~36_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~87_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~37\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~38_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~86_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~39\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~40_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~85_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~41\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~42_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~74_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~43\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~44_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~73_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~45\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~46_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~72_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~47\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~48_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~71_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~49\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~50_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~70_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~51\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~52_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~69_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~53\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~54_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~68_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~55\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~56_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~67_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~57\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~58_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~66_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~59\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~60_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~65_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~61\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~62_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|Add0~64_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|LessThan0~0_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|LessThan0~1_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|LessThan0~2_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|LessThan0~6_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|LessThan0~7_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|resetAdc~feeder_combout\ : std_logic;
SIGNAL \adcDacControllerStartDelay|resetAdc~q\ : std_logic;
SIGNAL \CLOCK_27~input_o\ : std_logic;
SIGNAL \audioPllClockGen|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[0]~9_combout\ : std_logic;
SIGNAL \adcDacController|LessThan2~0_combout\ : std_logic;
SIGNAL \adcDacController|bitClockCounter~17_combout\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[0]~10\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[1]~11_combout\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[1]~12\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[2]~13_combout\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[2]~14\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[3]~15_combout\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[3]~16\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[4]~18_combout\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[4]~19\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[5]~20_combout\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[5]~21\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[6]~22_combout\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[6]~23\ : std_logic;
SIGNAL \adcDacController|bitClockCounter[7]~24_combout\ : std_logic;
SIGNAL \adcDacController|bitClockCounter~8_combout\ : std_logic;
SIGNAL \adcDacController|internalBitClock~0_combout\ : std_logic;
SIGNAL \adcDacController|internalBitClock~1_combout\ : std_logic;
SIGNAL \adcDacController|internalBitClock~q\ : std_logic;
SIGNAL \adcDacController|internalBitClock~clkctrl_outclk\ : std_logic;
SIGNAL \adcDacController|LRCounter[0]~5_combout\ : std_logic;
SIGNAL \adcDacController|LRCounter[0]~6\ : std_logic;
SIGNAL \adcDacController|LRCounter[1]~7_combout\ : std_logic;
SIGNAL \adcDacController|LRCounter[1]~8\ : std_logic;
SIGNAL \adcDacController|LRCounter[2]~9_combout\ : std_logic;
SIGNAL \adcDacController|LRCounter[2]~10\ : std_logic;
SIGNAL \adcDacController|LRCounter[3]~11_combout\ : std_logic;
SIGNAL \adcDacController|LRCounter[3]~12\ : std_logic;
SIGNAL \adcDacController|LRCounter[4]~13_combout\ : std_logic;
SIGNAL \adcDacController|internalLRSelect~0_combout\ : std_logic;
SIGNAL \adcDacController|internalLRSelect~q\ : std_logic;
SIGNAL \adcDacController|Equal0~0_combout\ : std_logic;
SIGNAL \adcDacController|Equal0~1_combout\ : std_logic;
SIGNAL \adcDacController|dataCount~feeder_combout\ : std_logic;
SIGNAL \adcDacController|dataCount~q\ : std_logic;
SIGNAL \adcDacController|dataCount~clkctrl_outclk\ : std_logic;
SIGNAL \adcDacController|Add4~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \adcDacController|beatCounter[0]~15_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[0]~16\ : std_logic;
SIGNAL \adcDacController|beatCounter[1]~17_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[1]~18\ : std_logic;
SIGNAL \adcDacController|beatCounter[2]~19_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[2]~20\ : std_logic;
SIGNAL \adcDacController|beatCounter[3]~21_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[3]~22\ : std_logic;
SIGNAL \adcDacController|beatCounter[4]~23_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[4]~24\ : std_logic;
SIGNAL \adcDacController|beatCounter[5]~25_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[5]~26\ : std_logic;
SIGNAL \adcDacController|beatCounter[6]~27_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[6]~28\ : std_logic;
SIGNAL \adcDacController|beatCounter[7]~29_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[7]~30\ : std_logic;
SIGNAL \adcDacController|beatCounter[8]~31_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[8]~32\ : std_logic;
SIGNAL \adcDacController|beatCounter[9]~33_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~3_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[9]~34\ : std_logic;
SIGNAL \adcDacController|beatCounter[10]~35_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[10]~36\ : std_logic;
SIGNAL \adcDacController|beatCounter[11]~37_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[11]~38\ : std_logic;
SIGNAL \adcDacController|beatCounter[12]~39_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[12]~40\ : std_logic;
SIGNAL \adcDacController|beatCounter[13]~41_combout\ : std_logic;
SIGNAL \adcDacController|beatCounter[13]~42\ : std_logic;
SIGNAL \adcDacController|beatCounter[14]~43_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~0_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~1_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~2_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~10_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~16_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~11_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~12_combout\ : std_logic;
SIGNAL \adcDacController|beatLimit[12]~0_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~13_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~14_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~15_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~17_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~5_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~8_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~6_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~7_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~4_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~9_combout\ : std_logic;
SIGNAL \adcDacController|LessThan5~18_combout\ : std_logic;
SIGNAL \adcDacController|noteNum[0]~3_combout\ : std_logic;
SIGNAL \adcDacController|Add4~1\ : std_logic;
SIGNAL \adcDacController|Add4~2_combout\ : std_logic;
SIGNAL \adcDacController|noteNum[4]~0_combout\ : std_logic;
SIGNAL \adcDacController|noteNum[4]~1_combout\ : std_logic;
SIGNAL \adcDacController|noteNum[4]~2_combout\ : std_logic;
SIGNAL \adcDacController|Add4~3\ : std_logic;
SIGNAL \adcDacController|Add4~4_combout\ : std_logic;
SIGNAL \adcDacController|Add4~5\ : std_logic;
SIGNAL \adcDacController|Add4~6_combout\ : std_logic;
SIGNAL \adcDacController|Add4~7\ : std_logic;
SIGNAL \adcDacController|Add4~8_combout\ : std_logic;
SIGNAL \adcDacController|Selector13~0_combout\ : std_logic;
SIGNAL \adcDacController|Equal1~1_combout\ : std_logic;
SIGNAL \adcDacController|Equal8~0_combout\ : std_logic;
SIGNAL \adcDacController|Selector18~1_combout\ : std_logic;
SIGNAL \adcDacController|Equal4~0_combout\ : std_logic;
SIGNAL \adcDacController|Equal2~0_combout\ : std_logic;
SIGNAL \adcDacController|Selector18~0_combout\ : std_logic;
SIGNAL \adcDacController|Equal1~0_combout\ : std_logic;
SIGNAL \adcDacController|Equal2~1_combout\ : std_logic;
SIGNAL \adcDacController|Selector18~2_combout\ : std_logic;
SIGNAL \adcDacController|Selector18~3_combout\ : std_logic;
SIGNAL \adcDacController|shaveAndAHaircut~9_combout\ : std_logic;
SIGNAL \adcDacController|shaveAndAHaircut.C~q\ : std_logic;
SIGNAL \adcDacController|Selector19~0_combout\ : std_logic;
SIGNAL \adcDacController|Equal4~1_combout\ : std_logic;
SIGNAL \adcDacController|Selector20~0_combout\ : std_logic;
SIGNAL \adcDacController|Selector20~1_combout\ : std_logic;
SIGNAL \adcDacController|shaveAndAHaircut.GSharp~q\ : std_logic;
SIGNAL \adcDacController|Selector19~1_combout\ : std_logic;
SIGNAL \adcDacController|Equal5~0_combout\ : std_logic;
SIGNAL \adcDacController|Selector19~2_combout\ : std_logic;
SIGNAL \adcDacController|Selector19~3_combout\ : std_logic;
SIGNAL \adcDacController|shaveAndAHaircut.G~q\ : std_logic;
SIGNAL \adcDacController|Selector21~0_combout\ : std_logic;
SIGNAL \adcDacController|Selector21~1_combout\ : std_logic;
SIGNAL \adcDacController|Selector21~2_combout\ : std_logic;
SIGNAL \adcDacController|shaveAndAHaircut.Rest~q\ : std_logic;
SIGNAL \adcDacController|Equal7~0_combout\ : std_logic;
SIGNAL \adcDacController|Selector22~0_combout\ : std_logic;
SIGNAL \adcDacController|Selector22~1_combout\ : std_logic;
SIGNAL \adcDacController|shaveAndAHaircut.B~q\ : std_logic;
SIGNAL \adcDacController|B4Counter[0]~7_combout\ : std_logic;
SIGNAL \adcDacController|B4Counter[4]~16\ : std_logic;
SIGNAL \adcDacController|B4Counter[5]~17_combout\ : std_logic;
SIGNAL \adcDacController|B4Counter[5]~18\ : std_logic;
SIGNAL \adcDacController|B4Counter[6]~19_combout\ : std_logic;
SIGNAL \adcDacController|LessThan7~0_combout\ : std_logic;
SIGNAL \adcDacController|B4Counter[0]~8\ : std_logic;
SIGNAL \adcDacController|B4Counter[1]~9_combout\ : std_logic;
SIGNAL \adcDacController|B4Counter[1]~10\ : std_logic;
SIGNAL \adcDacController|B4Counter[2]~11_combout\ : std_logic;
SIGNAL \adcDacController|B4Counter[2]~12\ : std_logic;
SIGNAL \adcDacController|B4Counter[3]~13_combout\ : std_logic;
SIGNAL \adcDacController|B4Counter[3]~14\ : std_logic;
SIGNAL \adcDacController|B4Counter[4]~15_combout\ : std_logic;
SIGNAL \adcDacController|Mux14~0_combout\ : std_logic;
SIGNAL \adcDacController|Mux14~1_combout\ : std_logic;
SIGNAL \adcDacController|C5Counter[0]~7_combout\ : std_logic;
SIGNAL \adcDacController|C5Counter[2]~12\ : std_logic;
SIGNAL \adcDacController|C5Counter[3]~13_combout\ : std_logic;
SIGNAL \adcDacController|C5Counter[3]~14\ : std_logic;
SIGNAL \adcDacController|C5Counter[4]~15_combout\ : std_logic;
SIGNAL \adcDacController|C5Counter[4]~16\ : std_logic;
SIGNAL \adcDacController|C5Counter[5]~17_combout\ : std_logic;
SIGNAL \adcDacController|C5Counter[5]~18\ : std_logic;
SIGNAL \adcDacController|C5Counter[6]~19_combout\ : std_logic;
SIGNAL \adcDacController|LessThan6~0_combout\ : std_logic;
SIGNAL \adcDacController|LessThan6~1_combout\ : std_logic;
SIGNAL \adcDacController|C5Counter[0]~8\ : std_logic;
SIGNAL \adcDacController|C5Counter[1]~9_combout\ : std_logic;
SIGNAL \adcDacController|C5Counter[1]~10\ : std_logic;
SIGNAL \adcDacController|C5Counter[2]~11_combout\ : std_logic;
SIGNAL \adcDacController|Mux2~0_combout\ : std_logic;
SIGNAL \adcDacController|Selector0~0_combout\ : std_logic;
SIGNAL \adcDacController|G4Counter[0]~7_combout\ : std_logic;
SIGNAL \adcDacController|G4Counter[4]~16\ : std_logic;
SIGNAL \adcDacController|G4Counter[5]~17_combout\ : std_logic;
SIGNAL \adcDacController|G4Counter[5]~18\ : std_logic;
SIGNAL \adcDacController|G4Counter[6]~19_combout\ : std_logic;
SIGNAL \adcDacController|LessThan9~0_combout\ : std_logic;
SIGNAL \adcDacController|LessThan9~1_combout\ : std_logic;
SIGNAL \adcDacController|G4Counter[0]~8\ : std_logic;
SIGNAL \adcDacController|G4Counter[1]~9_combout\ : std_logic;
SIGNAL \adcDacController|G4Counter[1]~10\ : std_logic;
SIGNAL \adcDacController|G4Counter[2]~11_combout\ : std_logic;
SIGNAL \adcDacController|G4Counter[2]~12\ : std_logic;
SIGNAL \adcDacController|G4Counter[3]~13_combout\ : std_logic;
SIGNAL \adcDacController|G4Counter[3]~14\ : std_logic;
SIGNAL \adcDacController|G4Counter[4]~15_combout\ : std_logic;
SIGNAL \adcDacController|Mux38~0_combout\ : std_logic;
SIGNAL \adcDacController|Mux38~1_combout\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[0]~7_combout\ : std_logic;
SIGNAL \adcDacController|LessThan8~0_combout\ : std_logic;
SIGNAL \adcDacController|LessThan8~1_combout\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[0]~8\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[1]~9_combout\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[1]~10\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[2]~11_combout\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[2]~12\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[3]~13_combout\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[3]~14\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[4]~15_combout\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[4]~16\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[5]~17_combout\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[5]~18\ : std_logic;
SIGNAL \adcDacController|GSharp4Counter[6]~19_combout\ : std_logic;
SIGNAL \adcDacController|Mux26~0_combout\ : std_logic;
SIGNAL \adcDacController|Selector0~1_combout\ : std_logic;
SIGNAL \adcDacController|Selector0~2_combout\ : std_logic;
SIGNAL \adcDacController|Selector0~3_combout\ : std_logic;
SIGNAL \adcDacController|signalValue[12]~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \adcDacController|process_2~0_combout\ : std_logic;
SIGNAL \adcDacController|signalValue[15]~1_combout\ : std_logic;
SIGNAL \adcDacController|Selector1~0_combout\ : std_logic;
SIGNAL \adcDacController|Selector1~2_combout\ : std_logic;
SIGNAL \adcDacController|Selector1~1_combout\ : std_logic;
SIGNAL \adcDacController|Selector1~3_combout\ : std_logic;
SIGNAL \adcDacController|Selector1~4_combout\ : std_logic;
SIGNAL \adcDacController|signalValue[0]~2_combout\ : std_logic;
SIGNAL \adcDacController|Add5~1_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[14]~3_combout\ : std_logic;
SIGNAL \adcDacController|leftChannel[10]~feeder_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut~15_combout\ : std_logic;
SIGNAL \adcDacController|rightOutCounter~3_combout\ : std_logic;
SIGNAL \adcDacController|rightOutCounter~2_combout\ : std_logic;
SIGNAL \adcDacController|rightOutCounter~1_combout\ : std_logic;
SIGNAL \adcDacController|Add5~0_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[2]~2_combout\ : std_logic;
SIGNAL \adcDacController|Add3~0_combout\ : std_logic;
SIGNAL \adcDacController|rightOutCounter~0_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[6]~1_combout\ : std_logic;
SIGNAL \adcDacController|Mux1~0_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[10]~0_combout\ : std_logic;
SIGNAL \adcDacController|Mux1~1_combout\ : std_logic;
SIGNAL \adcDacController|Add5~2_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[5]~4_combout\ : std_logic;
SIGNAL \adcDacController|leftChannel[11]~feeder_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[13]~7_combout\ : std_logic;
SIGNAL \adcDacController|Add5~3_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[1]~6_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[9]~5_combout\ : std_logic;
SIGNAL \adcDacController|Mux1~2_combout\ : std_logic;
SIGNAL \adcDacController|Mux1~3_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[8]~8_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[12]~10_combout\ : std_logic;
SIGNAL \adcDacController|leftChannel[0]~0_combout\ : std_logic;
SIGNAL \adcDacController|Add5~4_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut~16_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[4]~9_combout\ : std_logic;
SIGNAL \adcDacController|Mux1~4_combout\ : std_logic;
SIGNAL \adcDacController|Mux1~5_combout\ : std_logic;
SIGNAL \adcDacController|Mux1~6_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[15]~14_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[11]~11_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[3]~13_combout\ : std_logic;
SIGNAL \adcDacController|leftChannelOut[7]~12_combout\ : std_logic;
SIGNAL \adcDacController|Mux1~7_combout\ : std_logic;
SIGNAL \adcDacController|Mux1~8_combout\ : std_logic;
SIGNAL \adcDacController|Mux1~9_combout\ : std_logic;
SIGNAL \adcDacController|leftOutCounter~3_combout\ : std_logic;
SIGNAL \adcDacController|leftOutCounter~2_combout\ : std_logic;
SIGNAL \adcDacController|leftOutCounter~1_combout\ : std_logic;
SIGNAL \adcDacController|Add1~0_combout\ : std_logic;
SIGNAL \adcDacController|leftOutCounter~0_combout\ : std_logic;
SIGNAL \adcDacController|Mux0~7_combout\ : std_logic;
SIGNAL \adcDacController|Mux0~8_combout\ : std_logic;
SIGNAL \adcDacController|Mux0~0_combout\ : std_logic;
SIGNAL \adcDacController|Mux0~1_combout\ : std_logic;
SIGNAL \adcDacController|Mux0~4_combout\ : std_logic;
SIGNAL \adcDacController|Mux0~5_combout\ : std_logic;
SIGNAL \adcDacController|Mux0~2_combout\ : std_logic;
SIGNAL \adcDacController|Mux0~3_combout\ : std_logic;
SIGNAL \adcDacController|Mux0~6_combout\ : std_logic;
SIGNAL \adcDacController|Mux0~9_combout\ : std_logic;
SIGNAL \adcDacController|dacData~0_combout\ : std_logic;
SIGNAL \adcDacController|dacData~q\ : std_logic;
SIGNAL \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_AUD_XCK_outclk\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~7\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~8_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|count~4_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~9\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~10_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|count~3_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~11\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~12_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|count~2_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~13\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~14_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|count~1_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~15\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~16_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|count~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~1\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~2_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~3\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~4_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|count~5_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~5\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Add0~6_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|output~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|output~q\ : std_logic;
SIGNAL \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|Add0~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|countBit[0]~3_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|countWord~4_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|Add0~5\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|Add0~7\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|Add0~8_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|countBit[4]~4_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|countWord[3]~1_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|countWord~3_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|countWord~2_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|countWord~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|Selector6~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|Selector6~1_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|I2C_state.stopCondition~q\ : std_logic;
SIGNAL \audio_Codec_Controller|I2C_state~16_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|I2C_state.resetState~q\ : std_logic;
SIGNAL \audio_Codec_Controller|process_0~1_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|I2C_state.startCondition~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|I2C_state.startCondition~q\ : std_logic;
SIGNAL \audio_Codec_Controller|Equal3~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|Selector3~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|Selector3~1_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|I2C_state.sendData~q\ : std_logic;
SIGNAL \audio_Codec_Controller|Selector8~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|Selector8~1_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|bitCountEnable~q\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|Add0~1\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|Add0~2_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|countBit[1]~2_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|Add0~3\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|Add0~4_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|countBit[2]~1_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|process_0~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|Add0~6_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|countBit~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|Selector4~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|I2C_state.acknowledge~feeder_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|I2C_state.acknowledge~q\ : std_logic;
SIGNAL \audio_Codec_Controller|Selector5~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|I2C_state.prepForStop~q\ : std_logic;
SIGNAL \audio_Codec_Controller|Selector1~0_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|Selector1~1_combout\ : std_logic;
SIGNAL \audio_Codec_Controller|SCLK_Temp~q\ : std_logic;
SIGNAL \audio_Codec_Controller|I2C_SCLK_Internal~combout\ : std_logic;
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|countWord\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \audio_Codec_Controller|clock50KHzInstance|count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \audio_Codec_Controller|dataBitCounterInstance|countBit\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adcDacControllerStartDelay|delayCounterInternalCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \adcDacController|signalValue\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adcDacController|rightOutCounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adcDacController|noteNum\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adcDacController|leftOutCounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adcDacController|leftChannelOut\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adcDacController|leftChannel\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adcDacController|bitClockCounter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \adcDacController|beatCounter\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \adcDacController|LRCounter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adcDacController|GSharp4Counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \adcDacController|G4Counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \adcDacController|C5Counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \adcDacController|B4Counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_SW[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\ : std_logic;
SIGNAL \adcDacControllerStartDelay|ALT_INV_resetAdc~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_CLOCK_27 <= CLOCK_27;
ww_SW <= SW;
AUD_ADCLRCK <= ww_AUD_ADCLRCK;
AUD_DACLRCK <= ww_AUD_DACLRCK;
AUD_DACDAT <= ww_AUD_DACDAT;
AUD_XCK <= ww_AUD_XCK;
AUD_BCLK <= ww_AUD_BCLK;
I2C_SCLK <= ww_I2C_SCLK;
I2C_SDAT <= ww_I2C_SDAT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\audioPllClockGen|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_27~input_o\);

\audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk\(0) <= \audioPllClockGen|altpll_component|auto_generated|pll1_CLK_bus\(0);
\audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk\(1) <= \audioPllClockGen|altpll_component|auto_generated|pll1_CLK_bus\(1);
\audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk\(2) <= \audioPllClockGen|altpll_component|auto_generated|pll1_CLK_bus\(2);
\audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk\(3) <= \audioPllClockGen|altpll_component|auto_generated|pll1_CLK_bus\(3);
\audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk\(4) <= \audioPllClockGen|altpll_component|auto_generated|pll1_CLK_bus\(4);

\clockBuffer50MHz|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\clockBuffer50MHz|altpll_component|_clk0\ <= \clockBuffer50MHz|altpll_component|pll_CLK_bus\(0);
\clockBuffer50MHz|altpll_component|pll~CLK1\ <= \clockBuffer50MHz|altpll_component|pll_CLK_bus\(1);
\clockBuffer50MHz|altpll_component|pll~CLK2\ <= \clockBuffer50MHz|altpll_component|pll_CLK_bus\(2);
\clockBuffer50MHz|altpll_component|pll~CLK3\ <= \clockBuffer50MHz|altpll_component|pll_CLK_bus\(3);
\clockBuffer50MHz|altpll_component|pll~CLK4\ <= \clockBuffer50MHz|altpll_component|pll_CLK_bus\(4);

\adcDacController|dataCount~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \adcDacController|dataCount~q\);

\audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk\(0));

\audio_Codec_Controller|clock50KHzInstance|output~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \audio_Codec_Controller|clock50KHzInstance|output~q\);

\adcDacController|internalBitClock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \adcDacController|internalBitClock~q\);

\audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_AUD_XCK_INCLK_bus\ <= (vcc & vcc & vcc & \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk\(0));

\clockBuffer50MHz|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clockBuffer50MHz|altpll_component|_clk0\);

\SW[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SW[0]~input_o\);
\ALT_INV_SW[0]~inputclkctrl_outclk\ <= NOT \SW[0]~inputclkctrl_outclk\;
\adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\ <= NOT \adcDacController|internalBitClock~clkctrl_outclk\;
\adcDacControllerStartDelay|ALT_INV_resetAdc~q\ <= NOT \adcDacControllerStartDelay|resetAdc~q\;

-- Location: IOOBUF_X9_Y0_N16
\AUD_ADCLRCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adcDacController|internalLRSelect~q\,
	devoe => ww_devoe,
	o => ww_AUD_ADCLRCK);

-- Location: IOOBUF_X9_Y0_N23
\AUD_DACLRCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adcDacController|internalLRSelect~q\,
	devoe => ww_devoe,
	o => ww_AUD_DACLRCK);

-- Location: IOOBUF_X7_Y0_N16
\AUD_DACDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adcDacController|dacData~q\,
	devoe => ww_devoe,
	o => ww_AUD_DACDAT);

-- Location: IOOBUF_X5_Y0_N23
\AUD_XCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_AUD_XCK_outclk\,
	devoe => ww_devoe,
	o => ww_AUD_XCK);

-- Location: IOOBUF_X54_Y0_N9
\AUD_BCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adcDacController|internalBitClock~q\,
	devoe => ww_devoe,
	o => ww_AUD_BCLK);

-- Location: IOOBUF_X115_Y52_N9
\I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \audio_Codec_Controller|I2C_SCLK_Internal~combout\,
	devoe => ww_devoe,
	o => ww_I2C_SCLK);

-- Location: IOOBUF_X115_Y17_N2
\I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_I2C_SDAT);

-- Location: IOIBUF_X58_Y0_N15
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: CLKCTRL_G19
\SW[0]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[0]~inputclkctrl_outclk\);

-- Location: IOIBUF_X56_Y73_N1
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_3
\clockBuffer50MHz|altpll_component|pll\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 6,
	c0_initial => 1,
	c0_low => 6,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 7101,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "manual",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_SW[0]~inputclkctrl_outclk\,
	fbin => \clockBuffer50MHz|altpll_component|pll~FBOUT\,
	inclk => \clockBuffer50MHz|altpll_component|pll_INCLK_bus\,
	fbout => \clockBuffer50MHz|altpll_component|pll~FBOUT\,
	clk => \clockBuffer50MHz|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G13
\clockBuffer50MHz|altpll_component|_clk0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y3_N0
\adcDacControllerStartDelay|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~0_combout\ = \adcDacControllerStartDelay|delayCounterInternalCount\(0) $ (VCC)
-- \adcDacControllerStartDelay|Add0~1\ = CARRY(\adcDacControllerStartDelay|delayCounterInternalCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(0),
	datad => VCC,
	combout => \adcDacControllerStartDelay|Add0~0_combout\,
	cout => \adcDacControllerStartDelay|Add0~1\);

-- Location: LCCOMB_X12_Y3_N2
\adcDacControllerStartDelay|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~95_combout\ = (\adcDacControllerStartDelay|Add0~0_combout\ & !\adcDacControllerStartDelay|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|Add0~0_combout\,
	datad => \adcDacControllerStartDelay|LessThan0~7_combout\,
	combout => \adcDacControllerStartDelay|Add0~95_combout\);

-- Location: FF_X12_Y3_N3
\adcDacControllerStartDelay|delayCounterInternalCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~95_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(0));

-- Location: LCCOMB_X11_Y3_N2
\adcDacControllerStartDelay|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~2_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(1) & (!\adcDacControllerStartDelay|Add0~1\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(1) & ((\adcDacControllerStartDelay|Add0~1\) # 
-- (GND)))
-- \adcDacControllerStartDelay|Add0~3\ = CARRY((!\adcDacControllerStartDelay|Add0~1\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(1),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~1\,
	combout => \adcDacControllerStartDelay|Add0~2_combout\,
	cout => \adcDacControllerStartDelay|Add0~3\);

-- Location: LCCOMB_X12_Y3_N4
\adcDacControllerStartDelay|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~94_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~2_combout\,
	combout => \adcDacControllerStartDelay|Add0~94_combout\);

-- Location: FF_X12_Y3_N5
\adcDacControllerStartDelay|delayCounterInternalCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~94_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(1));

-- Location: LCCOMB_X11_Y3_N4
\adcDacControllerStartDelay|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~4_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(2) & (\adcDacControllerStartDelay|Add0~3\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(2) & (!\adcDacControllerStartDelay|Add0~3\ 
-- & VCC))
-- \adcDacControllerStartDelay|Add0~5\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(2) & !\adcDacControllerStartDelay|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(2),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~3\,
	combout => \adcDacControllerStartDelay|Add0~4_combout\,
	cout => \adcDacControllerStartDelay|Add0~5\);

-- Location: LCCOMB_X12_Y3_N10
\adcDacControllerStartDelay|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~93_combout\ = (\adcDacControllerStartDelay|Add0~4_combout\ & !\adcDacControllerStartDelay|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|Add0~4_combout\,
	datad => \adcDacControllerStartDelay|LessThan0~7_combout\,
	combout => \adcDacControllerStartDelay|Add0~93_combout\);

-- Location: FF_X12_Y3_N11
\adcDacControllerStartDelay|delayCounterInternalCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~93_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(2));

-- Location: LCCOMB_X11_Y3_N6
\adcDacControllerStartDelay|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~6_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(3) & (!\adcDacControllerStartDelay|Add0~5\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(3) & ((\adcDacControllerStartDelay|Add0~5\) # 
-- (GND)))
-- \adcDacControllerStartDelay|Add0~7\ = CARRY((!\adcDacControllerStartDelay|Add0~5\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(3),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~5\,
	combout => \adcDacControllerStartDelay|Add0~6_combout\,
	cout => \adcDacControllerStartDelay|Add0~7\);

-- Location: LCCOMB_X12_Y3_N8
\adcDacControllerStartDelay|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~92_combout\ = (\adcDacControllerStartDelay|Add0~6_combout\ & !\adcDacControllerStartDelay|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|Add0~6_combout\,
	datad => \adcDacControllerStartDelay|LessThan0~7_combout\,
	combout => \adcDacControllerStartDelay|Add0~92_combout\);

-- Location: FF_X12_Y3_N9
\adcDacControllerStartDelay|delayCounterInternalCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~92_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(3));

-- Location: LCCOMB_X11_Y3_N8
\adcDacControllerStartDelay|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~8_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(4) & (\adcDacControllerStartDelay|Add0~7\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(4) & (!\adcDacControllerStartDelay|Add0~7\ 
-- & VCC))
-- \adcDacControllerStartDelay|Add0~9\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(4) & !\adcDacControllerStartDelay|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(4),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~7\,
	combout => \adcDacControllerStartDelay|Add0~8_combout\,
	cout => \adcDacControllerStartDelay|Add0~9\);

-- Location: LCCOMB_X12_Y3_N22
\adcDacControllerStartDelay|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~91_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~8_combout\,
	combout => \adcDacControllerStartDelay|Add0~91_combout\);

-- Location: FF_X12_Y3_N23
\adcDacControllerStartDelay|delayCounterInternalCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~91_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(4));

-- Location: LCCOMB_X11_Y3_N10
\adcDacControllerStartDelay|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~10_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(5) & (!\adcDacControllerStartDelay|Add0~9\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(5) & ((\adcDacControllerStartDelay|Add0~9\) # 
-- (GND)))
-- \adcDacControllerStartDelay|Add0~11\ = CARRY((!\adcDacControllerStartDelay|Add0~9\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(5),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~9\,
	combout => \adcDacControllerStartDelay|Add0~10_combout\,
	cout => \adcDacControllerStartDelay|Add0~11\);

-- Location: LCCOMB_X12_Y3_N12
\adcDacControllerStartDelay|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~90_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~10_combout\,
	combout => \adcDacControllerStartDelay|Add0~90_combout\);

-- Location: FF_X12_Y3_N13
\adcDacControllerStartDelay|delayCounterInternalCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~90_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(5));

-- Location: LCCOMB_X11_Y3_N12
\adcDacControllerStartDelay|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~12_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(6) & (\adcDacControllerStartDelay|Add0~11\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(6) & 
-- (!\adcDacControllerStartDelay|Add0~11\ & VCC))
-- \adcDacControllerStartDelay|Add0~13\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(6) & !\adcDacControllerStartDelay|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(6),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~11\,
	combout => \adcDacControllerStartDelay|Add0~12_combout\,
	cout => \adcDacControllerStartDelay|Add0~13\);

-- Location: LCCOMB_X10_Y3_N16
\adcDacControllerStartDelay|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~89_combout\ = (\adcDacControllerStartDelay|Add0~12_combout\ & !\adcDacControllerStartDelay|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|Add0~12_combout\,
	datad => \adcDacControllerStartDelay|LessThan0~7_combout\,
	combout => \adcDacControllerStartDelay|Add0~89_combout\);

-- Location: FF_X10_Y3_N17
\adcDacControllerStartDelay|delayCounterInternalCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~89_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(6));

-- Location: LCCOMB_X11_Y3_N14
\adcDacControllerStartDelay|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~14_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(7) & (!\adcDacControllerStartDelay|Add0~13\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(7) & ((\adcDacControllerStartDelay|Add0~13\) # 
-- (GND)))
-- \adcDacControllerStartDelay|Add0~15\ = CARRY((!\adcDacControllerStartDelay|Add0~13\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(7),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~13\,
	combout => \adcDacControllerStartDelay|Add0~14_combout\,
	cout => \adcDacControllerStartDelay|Add0~15\);

-- Location: LCCOMB_X10_Y3_N28
\adcDacControllerStartDelay|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~77_combout\ = (\adcDacControllerStartDelay|Add0~14_combout\) # (\adcDacControllerStartDelay|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|Add0~14_combout\,
	datad => \adcDacControllerStartDelay|LessThan0~7_combout\,
	combout => \adcDacControllerStartDelay|Add0~77_combout\);

-- Location: FF_X10_Y3_N29
\adcDacControllerStartDelay|delayCounterInternalCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~77_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(7));

-- Location: LCCOMB_X11_Y3_N16
\adcDacControllerStartDelay|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~16_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(8) & (\adcDacControllerStartDelay|Add0~15\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(8) & 
-- (!\adcDacControllerStartDelay|Add0~15\ & VCC))
-- \adcDacControllerStartDelay|Add0~17\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(8) & !\adcDacControllerStartDelay|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(8),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~15\,
	combout => \adcDacControllerStartDelay|Add0~16_combout\,
	cout => \adcDacControllerStartDelay|Add0~17\);

-- Location: LCCOMB_X10_Y3_N6
\adcDacControllerStartDelay|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~76_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~16_combout\,
	combout => \adcDacControllerStartDelay|Add0~76_combout\);

-- Location: FF_X10_Y3_N7
\adcDacControllerStartDelay|delayCounterInternalCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~76_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(8));

-- Location: LCCOMB_X11_Y3_N18
\adcDacControllerStartDelay|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~18_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(9) & (!\adcDacControllerStartDelay|Add0~17\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(9) & ((\adcDacControllerStartDelay|Add0~17\) # 
-- (GND)))
-- \adcDacControllerStartDelay|Add0~19\ = CARRY((!\adcDacControllerStartDelay|Add0~17\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(9),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~17\,
	combout => \adcDacControllerStartDelay|Add0~18_combout\,
	cout => \adcDacControllerStartDelay|Add0~19\);

-- Location: LCCOMB_X10_Y3_N24
\adcDacControllerStartDelay|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~75_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~18_combout\,
	combout => \adcDacControllerStartDelay|Add0~75_combout\);

-- Location: FF_X10_Y3_N25
\adcDacControllerStartDelay|delayCounterInternalCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~75_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(9));

-- Location: LCCOMB_X11_Y3_N20
\adcDacControllerStartDelay|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~20_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(10) & (\adcDacControllerStartDelay|Add0~19\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(10) & 
-- (!\adcDacControllerStartDelay|Add0~19\ & VCC))
-- \adcDacControllerStartDelay|Add0~21\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(10) & !\adcDacControllerStartDelay|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(10),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~19\,
	combout => \adcDacControllerStartDelay|Add0~20_combout\,
	cout => \adcDacControllerStartDelay|Add0~21\);

-- Location: LCCOMB_X10_Y3_N22
\adcDacControllerStartDelay|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~78_combout\ = (\adcDacControllerStartDelay|Add0~20_combout\) # (\adcDacControllerStartDelay|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|Add0~20_combout\,
	datad => \adcDacControllerStartDelay|LessThan0~7_combout\,
	combout => \adcDacControllerStartDelay|Add0~78_combout\);

-- Location: FF_X10_Y3_N23
\adcDacControllerStartDelay|delayCounterInternalCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~78_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(10));

-- Location: LCCOMB_X11_Y3_N22
\adcDacControllerStartDelay|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~22_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(11) & (!\adcDacControllerStartDelay|Add0~21\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(11) & ((\adcDacControllerStartDelay|Add0~21\) 
-- # (GND)))
-- \adcDacControllerStartDelay|Add0~23\ = CARRY((!\adcDacControllerStartDelay|Add0~21\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(11),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~21\,
	combout => \adcDacControllerStartDelay|Add0~22_combout\,
	cout => \adcDacControllerStartDelay|Add0~23\);

-- Location: LCCOMB_X10_Y3_N4
\adcDacControllerStartDelay|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~82_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~22_combout\,
	combout => \adcDacControllerStartDelay|Add0~82_combout\);

-- Location: FF_X10_Y3_N5
\adcDacControllerStartDelay|delayCounterInternalCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~82_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(11));

-- Location: LCCOMB_X11_Y3_N24
\adcDacControllerStartDelay|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~24_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(12) & (\adcDacControllerStartDelay|Add0~23\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(12) & 
-- (!\adcDacControllerStartDelay|Add0~23\ & VCC))
-- \adcDacControllerStartDelay|Add0~25\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(12) & !\adcDacControllerStartDelay|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(12),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~23\,
	combout => \adcDacControllerStartDelay|Add0~24_combout\,
	cout => \adcDacControllerStartDelay|Add0~25\);

-- Location: LCCOMB_X10_Y3_N18
\adcDacControllerStartDelay|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~81_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~24_combout\,
	combout => \adcDacControllerStartDelay|Add0~81_combout\);

-- Location: FF_X10_Y3_N19
\adcDacControllerStartDelay|delayCounterInternalCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~81_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(12));

-- Location: LCCOMB_X11_Y3_N26
\adcDacControllerStartDelay|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~26_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(13) & (!\adcDacControllerStartDelay|Add0~25\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(13) & ((\adcDacControllerStartDelay|Add0~25\) 
-- # (GND)))
-- \adcDacControllerStartDelay|Add0~27\ = CARRY((!\adcDacControllerStartDelay|Add0~25\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(13),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~25\,
	combout => \adcDacControllerStartDelay|Add0~26_combout\,
	cout => \adcDacControllerStartDelay|Add0~27\);

-- Location: LCCOMB_X10_Y3_N8
\adcDacControllerStartDelay|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~80_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~26_combout\,
	combout => \adcDacControllerStartDelay|Add0~80_combout\);

-- Location: FF_X10_Y3_N9
\adcDacControllerStartDelay|delayCounterInternalCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~80_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(13));

-- Location: LCCOMB_X11_Y3_N28
\adcDacControllerStartDelay|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~28_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(14) & (\adcDacControllerStartDelay|Add0~27\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(14) & 
-- (!\adcDacControllerStartDelay|Add0~27\ & VCC))
-- \adcDacControllerStartDelay|Add0~29\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(14) & !\adcDacControllerStartDelay|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(14),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~27\,
	combout => \adcDacControllerStartDelay|Add0~28_combout\,
	cout => \adcDacControllerStartDelay|Add0~29\);

-- Location: LCCOMB_X10_Y3_N10
\adcDacControllerStartDelay|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~79_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~28_combout\,
	combout => \adcDacControllerStartDelay|Add0~79_combout\);

-- Location: FF_X10_Y3_N11
\adcDacControllerStartDelay|delayCounterInternalCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~79_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(14));

-- Location: LCCOMB_X11_Y3_N30
\adcDacControllerStartDelay|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~30_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(15) & (!\adcDacControllerStartDelay|Add0~29\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(15) & ((\adcDacControllerStartDelay|Add0~29\) 
-- # (GND)))
-- \adcDacControllerStartDelay|Add0~31\ = CARRY((!\adcDacControllerStartDelay|Add0~29\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(15),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~29\,
	combout => \adcDacControllerStartDelay|Add0~30_combout\,
	cout => \adcDacControllerStartDelay|Add0~31\);

-- Location: LCCOMB_X10_Y3_N12
\adcDacControllerStartDelay|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~83_combout\ = (\adcDacControllerStartDelay|Add0~30_combout\) # (\adcDacControllerStartDelay|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|Add0~30_combout\,
	datad => \adcDacControllerStartDelay|LessThan0~7_combout\,
	combout => \adcDacControllerStartDelay|Add0~83_combout\);

-- Location: FF_X10_Y3_N13
\adcDacControllerStartDelay|delayCounterInternalCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~83_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(15));

-- Location: LCCOMB_X11_Y2_N0
\adcDacControllerStartDelay|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~32_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(16) & (\adcDacControllerStartDelay|Add0~31\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(16) & 
-- (!\adcDacControllerStartDelay|Add0~31\ & VCC))
-- \adcDacControllerStartDelay|Add0~33\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(16) & !\adcDacControllerStartDelay|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(16),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~31\,
	combout => \adcDacControllerStartDelay|Add0~32_combout\,
	cout => \adcDacControllerStartDelay|Add0~33\);

-- Location: LCCOMB_X10_Y2_N2
\adcDacControllerStartDelay|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~84_combout\ = (\adcDacControllerStartDelay|Add0~32_combout\ & !\adcDacControllerStartDelay|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|Add0~32_combout\,
	datad => \adcDacControllerStartDelay|LessThan0~7_combout\,
	combout => \adcDacControllerStartDelay|Add0~84_combout\);

-- Location: FF_X10_Y2_N3
\adcDacControllerStartDelay|delayCounterInternalCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~84_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(16));

-- Location: LCCOMB_X10_Y3_N20
\adcDacControllerStartDelay|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|LessThan0~3_combout\ = ((!\adcDacControllerStartDelay|delayCounterInternalCount\(8) & (!\adcDacControllerStartDelay|delayCounterInternalCount\(9) & !\adcDacControllerStartDelay|delayCounterInternalCount\(7)))) # 
-- (!\adcDacControllerStartDelay|delayCounterInternalCount\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(8),
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(9),
	datac => \adcDacControllerStartDelay|delayCounterInternalCount\(10),
	datad => \adcDacControllerStartDelay|delayCounterInternalCount\(7),
	combout => \adcDacControllerStartDelay|LessThan0~3_combout\);

-- Location: LCCOMB_X10_Y3_N26
\adcDacControllerStartDelay|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|LessThan0~4_combout\ = (!\adcDacControllerStartDelay|delayCounterInternalCount\(14) & (!\adcDacControllerStartDelay|delayCounterInternalCount\(12) & (!\adcDacControllerStartDelay|delayCounterInternalCount\(13) & 
-- !\adcDacControllerStartDelay|delayCounterInternalCount\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(14),
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(12),
	datac => \adcDacControllerStartDelay|delayCounterInternalCount\(13),
	datad => \adcDacControllerStartDelay|delayCounterInternalCount\(11),
	combout => \adcDacControllerStartDelay|LessThan0~4_combout\);

-- Location: LCCOMB_X10_Y3_N30
\adcDacControllerStartDelay|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|LessThan0~5_combout\ = (!\adcDacControllerStartDelay|delayCounterInternalCount\(16) & (((\adcDacControllerStartDelay|LessThan0~3_combout\ & \adcDacControllerStartDelay|LessThan0~4_combout\)) # 
-- (!\adcDacControllerStartDelay|delayCounterInternalCount\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(16),
	datab => \adcDacControllerStartDelay|LessThan0~3_combout\,
	datac => \adcDacControllerStartDelay|LessThan0~4_combout\,
	datad => \adcDacControllerStartDelay|delayCounterInternalCount\(15),
	combout => \adcDacControllerStartDelay|LessThan0~5_combout\);

-- Location: LCCOMB_X11_Y2_N2
\adcDacControllerStartDelay|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~34_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(17) & (!\adcDacControllerStartDelay|Add0~33\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(17) & ((\adcDacControllerStartDelay|Add0~33\) 
-- # (GND)))
-- \adcDacControllerStartDelay|Add0~35\ = CARRY((!\adcDacControllerStartDelay|Add0~33\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(17),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~33\,
	combout => \adcDacControllerStartDelay|Add0~34_combout\,
	cout => \adcDacControllerStartDelay|Add0~35\);

-- Location: LCCOMB_X10_Y2_N6
\adcDacControllerStartDelay|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~88_combout\ = (\adcDacControllerStartDelay|LessThan0~7_combout\) # (\adcDacControllerStartDelay|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~34_combout\,
	combout => \adcDacControllerStartDelay|Add0~88_combout\);

-- Location: FF_X10_Y2_N7
\adcDacControllerStartDelay|delayCounterInternalCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~88_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(17));

-- Location: LCCOMB_X11_Y2_N4
\adcDacControllerStartDelay|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~36_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(18) & (\adcDacControllerStartDelay|Add0~35\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(18) & 
-- (!\adcDacControllerStartDelay|Add0~35\ & VCC))
-- \adcDacControllerStartDelay|Add0~37\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(18) & !\adcDacControllerStartDelay|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(18),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~35\,
	combout => \adcDacControllerStartDelay|Add0~36_combout\,
	cout => \adcDacControllerStartDelay|Add0~37\);

-- Location: LCCOMB_X10_Y2_N16
\adcDacControllerStartDelay|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~87_combout\ = (\adcDacControllerStartDelay|LessThan0~7_combout\) # (\adcDacControllerStartDelay|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~36_combout\,
	combout => \adcDacControllerStartDelay|Add0~87_combout\);

-- Location: FF_X10_Y2_N17
\adcDacControllerStartDelay|delayCounterInternalCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~87_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(18));

-- Location: LCCOMB_X11_Y2_N6
\adcDacControllerStartDelay|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~38_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(19) & (!\adcDacControllerStartDelay|Add0~37\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(19) & ((\adcDacControllerStartDelay|Add0~37\) 
-- # (GND)))
-- \adcDacControllerStartDelay|Add0~39\ = CARRY((!\adcDacControllerStartDelay|Add0~37\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(19),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~37\,
	combout => \adcDacControllerStartDelay|Add0~38_combout\,
	cout => \adcDacControllerStartDelay|Add0~39\);

-- Location: LCCOMB_X10_Y2_N14
\adcDacControllerStartDelay|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~86_combout\ = (\adcDacControllerStartDelay|LessThan0~7_combout\) # (\adcDacControllerStartDelay|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~38_combout\,
	combout => \adcDacControllerStartDelay|Add0~86_combout\);

-- Location: FF_X10_Y2_N15
\adcDacControllerStartDelay|delayCounterInternalCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~86_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(19));

-- Location: LCCOMB_X11_Y2_N8
\adcDacControllerStartDelay|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~40_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(20) & (\adcDacControllerStartDelay|Add0~39\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(20) & 
-- (!\adcDacControllerStartDelay|Add0~39\ & VCC))
-- \adcDacControllerStartDelay|Add0~41\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(20) & !\adcDacControllerStartDelay|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(20),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~39\,
	combout => \adcDacControllerStartDelay|Add0~40_combout\,
	cout => \adcDacControllerStartDelay|Add0~41\);

-- Location: LCCOMB_X10_Y2_N4
\adcDacControllerStartDelay|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~85_combout\ = (\adcDacControllerStartDelay|Add0~40_combout\) # (\adcDacControllerStartDelay|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|Add0~40_combout\,
	datad => \adcDacControllerStartDelay|LessThan0~7_combout\,
	combout => \adcDacControllerStartDelay|Add0~85_combout\);

-- Location: FF_X10_Y2_N5
\adcDacControllerStartDelay|delayCounterInternalCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~85_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(20));

-- Location: LCCOMB_X11_Y2_N10
\adcDacControllerStartDelay|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~42_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(21) & (!\adcDacControllerStartDelay|Add0~41\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(21) & ((\adcDacControllerStartDelay|Add0~41\) 
-- # (GND)))
-- \adcDacControllerStartDelay|Add0~43\ = CARRY((!\adcDacControllerStartDelay|Add0~41\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(21),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~41\,
	combout => \adcDacControllerStartDelay|Add0~42_combout\,
	cout => \adcDacControllerStartDelay|Add0~43\);

-- Location: LCCOMB_X12_Y2_N2
\adcDacControllerStartDelay|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~74_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~42_combout\,
	combout => \adcDacControllerStartDelay|Add0~74_combout\);

-- Location: FF_X12_Y2_N3
\adcDacControllerStartDelay|delayCounterInternalCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~74_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(21));

-- Location: LCCOMB_X11_Y2_N12
\adcDacControllerStartDelay|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~44_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(22) & (\adcDacControllerStartDelay|Add0~43\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(22) & 
-- (!\adcDacControllerStartDelay|Add0~43\ & VCC))
-- \adcDacControllerStartDelay|Add0~45\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(22) & !\adcDacControllerStartDelay|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(22),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~43\,
	combout => \adcDacControllerStartDelay|Add0~44_combout\,
	cout => \adcDacControllerStartDelay|Add0~45\);

-- Location: LCCOMB_X12_Y2_N4
\adcDacControllerStartDelay|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~73_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~44_combout\,
	combout => \adcDacControllerStartDelay|Add0~73_combout\);

-- Location: FF_X12_Y2_N5
\adcDacControllerStartDelay|delayCounterInternalCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~73_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(22));

-- Location: LCCOMB_X11_Y2_N14
\adcDacControllerStartDelay|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~46_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(23) & (!\adcDacControllerStartDelay|Add0~45\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(23) & ((\adcDacControllerStartDelay|Add0~45\) 
-- # (GND)))
-- \adcDacControllerStartDelay|Add0~47\ = CARRY((!\adcDacControllerStartDelay|Add0~45\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(23),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~45\,
	combout => \adcDacControllerStartDelay|Add0~46_combout\,
	cout => \adcDacControllerStartDelay|Add0~47\);

-- Location: LCCOMB_X12_Y2_N16
\adcDacControllerStartDelay|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~72_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~46_combout\,
	combout => \adcDacControllerStartDelay|Add0~72_combout\);

-- Location: FF_X12_Y2_N17
\adcDacControllerStartDelay|delayCounterInternalCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~72_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(23));

-- Location: LCCOMB_X11_Y2_N16
\adcDacControllerStartDelay|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~48_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(24) & (\adcDacControllerStartDelay|Add0~47\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(24) & 
-- (!\adcDacControllerStartDelay|Add0~47\ & VCC))
-- \adcDacControllerStartDelay|Add0~49\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(24) & !\adcDacControllerStartDelay|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(24),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~47\,
	combout => \adcDacControllerStartDelay|Add0~48_combout\,
	cout => \adcDacControllerStartDelay|Add0~49\);

-- Location: LCCOMB_X12_Y2_N18
\adcDacControllerStartDelay|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~71_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datac => \adcDacControllerStartDelay|Add0~48_combout\,
	combout => \adcDacControllerStartDelay|Add0~71_combout\);

-- Location: FF_X12_Y2_N19
\adcDacControllerStartDelay|delayCounterInternalCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~71_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(24));

-- Location: LCCOMB_X11_Y2_N18
\adcDacControllerStartDelay|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~50_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(25) & (!\adcDacControllerStartDelay|Add0~49\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(25) & ((\adcDacControllerStartDelay|Add0~49\) 
-- # (GND)))
-- \adcDacControllerStartDelay|Add0~51\ = CARRY((!\adcDacControllerStartDelay|Add0~49\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(25),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~49\,
	combout => \adcDacControllerStartDelay|Add0~50_combout\,
	cout => \adcDacControllerStartDelay|Add0~51\);

-- Location: LCCOMB_X12_Y2_N28
\adcDacControllerStartDelay|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~70_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~50_combout\,
	combout => \adcDacControllerStartDelay|Add0~70_combout\);

-- Location: FF_X12_Y2_N29
\adcDacControllerStartDelay|delayCounterInternalCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~70_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(25));

-- Location: LCCOMB_X11_Y2_N20
\adcDacControllerStartDelay|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~52_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(26) & (\adcDacControllerStartDelay|Add0~51\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(26) & 
-- (!\adcDacControllerStartDelay|Add0~51\ & VCC))
-- \adcDacControllerStartDelay|Add0~53\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(26) & !\adcDacControllerStartDelay|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(26),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~51\,
	combout => \adcDacControllerStartDelay|Add0~52_combout\,
	cout => \adcDacControllerStartDelay|Add0~53\);

-- Location: LCCOMB_X12_Y2_N30
\adcDacControllerStartDelay|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~69_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~52_combout\,
	combout => \adcDacControllerStartDelay|Add0~69_combout\);

-- Location: FF_X12_Y2_N31
\adcDacControllerStartDelay|delayCounterInternalCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~69_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(26));

-- Location: LCCOMB_X11_Y2_N22
\adcDacControllerStartDelay|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~54_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(27) & (!\adcDacControllerStartDelay|Add0~53\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(27) & ((\adcDacControllerStartDelay|Add0~53\) 
-- # (GND)))
-- \adcDacControllerStartDelay|Add0~55\ = CARRY((!\adcDacControllerStartDelay|Add0~53\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(27),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~53\,
	combout => \adcDacControllerStartDelay|Add0~54_combout\,
	cout => \adcDacControllerStartDelay|Add0~55\);

-- Location: LCCOMB_X12_Y2_N10
\adcDacControllerStartDelay|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~68_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~54_combout\,
	combout => \adcDacControllerStartDelay|Add0~68_combout\);

-- Location: FF_X12_Y2_N11
\adcDacControllerStartDelay|delayCounterInternalCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~68_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(27));

-- Location: LCCOMB_X11_Y2_N24
\adcDacControllerStartDelay|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~56_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(28) & (\adcDacControllerStartDelay|Add0~55\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(28) & 
-- (!\adcDacControllerStartDelay|Add0~55\ & VCC))
-- \adcDacControllerStartDelay|Add0~57\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(28) & !\adcDacControllerStartDelay|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(28),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~55\,
	combout => \adcDacControllerStartDelay|Add0~56_combout\,
	cout => \adcDacControllerStartDelay|Add0~57\);

-- Location: LCCOMB_X12_Y2_N20
\adcDacControllerStartDelay|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~67_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~56_combout\,
	combout => \adcDacControllerStartDelay|Add0~67_combout\);

-- Location: FF_X12_Y2_N21
\adcDacControllerStartDelay|delayCounterInternalCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~67_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(28));

-- Location: LCCOMB_X11_Y2_N26
\adcDacControllerStartDelay|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~58_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(29) & (!\adcDacControllerStartDelay|Add0~57\)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(29) & ((\adcDacControllerStartDelay|Add0~57\) 
-- # (GND)))
-- \adcDacControllerStartDelay|Add0~59\ = CARRY((!\adcDacControllerStartDelay|Add0~57\) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(29),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~57\,
	combout => \adcDacControllerStartDelay|Add0~58_combout\,
	cout => \adcDacControllerStartDelay|Add0~59\);

-- Location: LCCOMB_X12_Y2_N26
\adcDacControllerStartDelay|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~66_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datac => \adcDacControllerStartDelay|Add0~58_combout\,
	combout => \adcDacControllerStartDelay|Add0~66_combout\);

-- Location: FF_X12_Y2_N27
\adcDacControllerStartDelay|delayCounterInternalCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~66_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(29));

-- Location: LCCOMB_X11_Y2_N28
\adcDacControllerStartDelay|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~60_combout\ = (\adcDacControllerStartDelay|delayCounterInternalCount\(30) & (\adcDacControllerStartDelay|Add0~59\ $ (GND))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(30) & 
-- (!\adcDacControllerStartDelay|Add0~59\ & VCC))
-- \adcDacControllerStartDelay|Add0~61\ = CARRY((\adcDacControllerStartDelay|delayCounterInternalCount\(30) & !\adcDacControllerStartDelay|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(30),
	datad => VCC,
	cin => \adcDacControllerStartDelay|Add0~59\,
	combout => \adcDacControllerStartDelay|Add0~60_combout\,
	cout => \adcDacControllerStartDelay|Add0~61\);

-- Location: LCCOMB_X12_Y2_N24
\adcDacControllerStartDelay|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~65_combout\ = (!\adcDacControllerStartDelay|LessThan0~7_combout\ & \adcDacControllerStartDelay|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|LessThan0~7_combout\,
	datad => \adcDacControllerStartDelay|Add0~60_combout\,
	combout => \adcDacControllerStartDelay|Add0~65_combout\);

-- Location: FF_X12_Y2_N25
\adcDacControllerStartDelay|delayCounterInternalCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~65_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(30));

-- Location: LCCOMB_X11_Y2_N30
\adcDacControllerStartDelay|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~62_combout\ = \adcDacControllerStartDelay|Add0~61\ $ (\adcDacControllerStartDelay|delayCounterInternalCount\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adcDacControllerStartDelay|delayCounterInternalCount\(31),
	cin => \adcDacControllerStartDelay|Add0~61\,
	combout => \adcDacControllerStartDelay|Add0~62_combout\);

-- Location: LCCOMB_X10_Y2_N28
\adcDacControllerStartDelay|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|Add0~64_combout\ = (\adcDacControllerStartDelay|Add0~62_combout\ & !\adcDacControllerStartDelay|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacControllerStartDelay|Add0~62_combout\,
	datad => \adcDacControllerStartDelay|LessThan0~7_combout\,
	combout => \adcDacControllerStartDelay|Add0~64_combout\);

-- Location: FF_X10_Y2_N29
\adcDacControllerStartDelay|delayCounterInternalCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|Add0~64_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|delayCounterInternalCount\(31));

-- Location: LCCOMB_X12_Y2_N12
\adcDacControllerStartDelay|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|LessThan0~0_combout\ = (!\adcDacControllerStartDelay|delayCounterInternalCount\(27) & (!\adcDacControllerStartDelay|delayCounterInternalCount\(30) & (!\adcDacControllerStartDelay|delayCounterInternalCount\(29) & 
-- !\adcDacControllerStartDelay|delayCounterInternalCount\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(27),
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(30),
	datac => \adcDacControllerStartDelay|delayCounterInternalCount\(29),
	datad => \adcDacControllerStartDelay|delayCounterInternalCount\(28),
	combout => \adcDacControllerStartDelay|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y2_N22
\adcDacControllerStartDelay|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|LessThan0~1_combout\ = (!\adcDacControllerStartDelay|delayCounterInternalCount\(25) & (!\adcDacControllerStartDelay|delayCounterInternalCount\(24) & (!\adcDacControllerStartDelay|delayCounterInternalCount\(26) & 
-- !\adcDacControllerStartDelay|delayCounterInternalCount\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(25),
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(24),
	datac => \adcDacControllerStartDelay|delayCounterInternalCount\(26),
	datad => \adcDacControllerStartDelay|delayCounterInternalCount\(23),
	combout => \adcDacControllerStartDelay|LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y2_N0
\adcDacControllerStartDelay|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|LessThan0~2_combout\ = (\adcDacControllerStartDelay|LessThan0~0_combout\ & (!\adcDacControllerStartDelay|delayCounterInternalCount\(22) & (\adcDacControllerStartDelay|LessThan0~1_combout\ & 
-- !\adcDacControllerStartDelay|delayCounterInternalCount\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~0_combout\,
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(22),
	datac => \adcDacControllerStartDelay|LessThan0~1_combout\,
	datad => \adcDacControllerStartDelay|delayCounterInternalCount\(21),
	combout => \adcDacControllerStartDelay|LessThan0~2_combout\);

-- Location: LCCOMB_X10_Y2_N12
\adcDacControllerStartDelay|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|LessThan0~6_combout\ = (((!\adcDacControllerStartDelay|delayCounterInternalCount\(18)) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(19))) # (!\adcDacControllerStartDelay|delayCounterInternalCount\(20))) # 
-- (!\adcDacControllerStartDelay|delayCounterInternalCount\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|delayCounterInternalCount\(17),
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(20),
	datac => \adcDacControllerStartDelay|delayCounterInternalCount\(19),
	datad => \adcDacControllerStartDelay|delayCounterInternalCount\(18),
	combout => \adcDacControllerStartDelay|LessThan0~6_combout\);

-- Location: LCCOMB_X10_Y2_N10
\adcDacControllerStartDelay|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|LessThan0~7_combout\ = (!\adcDacControllerStartDelay|delayCounterInternalCount\(31) & (((!\adcDacControllerStartDelay|LessThan0~5_combout\ & !\adcDacControllerStartDelay|LessThan0~6_combout\)) # 
-- (!\adcDacControllerStartDelay|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacControllerStartDelay|LessThan0~5_combout\,
	datab => \adcDacControllerStartDelay|delayCounterInternalCount\(31),
	datac => \adcDacControllerStartDelay|LessThan0~2_combout\,
	datad => \adcDacControllerStartDelay|LessThan0~6_combout\,
	combout => \adcDacControllerStartDelay|LessThan0~7_combout\);

-- Location: LCCOMB_X6_Y4_N24
\adcDacControllerStartDelay|resetAdc~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacControllerStartDelay|resetAdc~feeder_combout\ = \adcDacControllerStartDelay|LessThan0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adcDacControllerStartDelay|LessThan0~7_combout\,
	combout => \adcDacControllerStartDelay|resetAdc~feeder_combout\);

-- Location: FF_X6_Y4_N25
\adcDacControllerStartDelay|resetAdc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \adcDacControllerStartDelay|resetAdc~feeder_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacControllerStartDelay|resetAdc~q\);

-- Location: IOIBUF_X0_Y36_N8
\CLOCK_27~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_27,
	o => \CLOCK_27~input_o\);

-- Location: PLL_1
\audioPllClockGen|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 16,
	c0_initial => 1,
	c0_low => 15,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 217,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 80,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 80,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 7101,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 218,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \adcDacControllerStartDelay|ALT_INV_resetAdc~q\,
	fbin => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \audioPllClockGen|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \audioPllClockGen|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y4_N0
\adcDacController|bitClockCounter[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|bitClockCounter[0]~9_combout\ = \adcDacController|bitClockCounter\(0) $ (VCC)
-- \adcDacController|bitClockCounter[0]~10\ = CARRY(\adcDacController|bitClockCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|bitClockCounter\(0),
	datad => VCC,
	combout => \adcDacController|bitClockCounter[0]~9_combout\,
	cout => \adcDacController|bitClockCounter[0]~10\);

-- Location: LCCOMB_X6_Y4_N22
\adcDacController|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan2~0_combout\ = ((!\adcDacController|bitClockCounter\(2) & ((!\adcDacController|bitClockCounter\(0)) # (!\adcDacController|bitClockCounter\(1))))) # (!\adcDacController|bitClockCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|bitClockCounter\(3),
	datab => \adcDacController|bitClockCounter\(1),
	datac => \adcDacController|bitClockCounter\(2),
	datad => \adcDacController|bitClockCounter\(0),
	combout => \adcDacController|LessThan2~0_combout\);

-- Location: LCCOMB_X6_Y4_N18
\adcDacController|bitClockCounter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|bitClockCounter~17_combout\ = (!\adcDacController|LessThan2~0_combout\) # (!\adcDacController|bitClockCounter~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|bitClockCounter~8_combout\,
	datac => \adcDacController|LessThan2~0_combout\,
	combout => \adcDacController|bitClockCounter~17_combout\);

-- Location: FF_X6_Y4_N1
\adcDacController|bitClockCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \adcDacController|bitClockCounter[0]~9_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|bitClockCounter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|bitClockCounter\(0));

-- Location: LCCOMB_X6_Y4_N2
\adcDacController|bitClockCounter[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|bitClockCounter[1]~11_combout\ = (\adcDacController|bitClockCounter\(1) & (!\adcDacController|bitClockCounter[0]~10\)) # (!\adcDacController|bitClockCounter\(1) & ((\adcDacController|bitClockCounter[0]~10\) # (GND)))
-- \adcDacController|bitClockCounter[1]~12\ = CARRY((!\adcDacController|bitClockCounter[0]~10\) # (!\adcDacController|bitClockCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|bitClockCounter\(1),
	datad => VCC,
	cin => \adcDacController|bitClockCounter[0]~10\,
	combout => \adcDacController|bitClockCounter[1]~11_combout\,
	cout => \adcDacController|bitClockCounter[1]~12\);

-- Location: FF_X6_Y4_N3
\adcDacController|bitClockCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \adcDacController|bitClockCounter[1]~11_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|bitClockCounter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|bitClockCounter\(1));

-- Location: LCCOMB_X6_Y4_N4
\adcDacController|bitClockCounter[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|bitClockCounter[2]~13_combout\ = (\adcDacController|bitClockCounter\(2) & (\adcDacController|bitClockCounter[1]~12\ $ (GND))) # (!\adcDacController|bitClockCounter\(2) & (!\adcDacController|bitClockCounter[1]~12\ & VCC))
-- \adcDacController|bitClockCounter[2]~14\ = CARRY((\adcDacController|bitClockCounter\(2) & !\adcDacController|bitClockCounter[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|bitClockCounter\(2),
	datad => VCC,
	cin => \adcDacController|bitClockCounter[1]~12\,
	combout => \adcDacController|bitClockCounter[2]~13_combout\,
	cout => \adcDacController|bitClockCounter[2]~14\);

-- Location: FF_X6_Y4_N5
\adcDacController|bitClockCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \adcDacController|bitClockCounter[2]~13_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|bitClockCounter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|bitClockCounter\(2));

-- Location: LCCOMB_X6_Y4_N6
\adcDacController|bitClockCounter[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|bitClockCounter[3]~15_combout\ = (\adcDacController|bitClockCounter\(3) & (!\adcDacController|bitClockCounter[2]~14\)) # (!\adcDacController|bitClockCounter\(3) & ((\adcDacController|bitClockCounter[2]~14\) # (GND)))
-- \adcDacController|bitClockCounter[3]~16\ = CARRY((!\adcDacController|bitClockCounter[2]~14\) # (!\adcDacController|bitClockCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|bitClockCounter\(3),
	datad => VCC,
	cin => \adcDacController|bitClockCounter[2]~14\,
	combout => \adcDacController|bitClockCounter[3]~15_combout\,
	cout => \adcDacController|bitClockCounter[3]~16\);

-- Location: FF_X6_Y4_N7
\adcDacController|bitClockCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \adcDacController|bitClockCounter[3]~15_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|bitClockCounter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|bitClockCounter\(3));

-- Location: LCCOMB_X6_Y4_N8
\adcDacController|bitClockCounter[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|bitClockCounter[4]~18_combout\ = (\adcDacController|bitClockCounter\(4) & (\adcDacController|bitClockCounter[3]~16\ $ (GND))) # (!\adcDacController|bitClockCounter\(4) & (!\adcDacController|bitClockCounter[3]~16\ & VCC))
-- \adcDacController|bitClockCounter[4]~19\ = CARRY((\adcDacController|bitClockCounter\(4) & !\adcDacController|bitClockCounter[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|bitClockCounter\(4),
	datad => VCC,
	cin => \adcDacController|bitClockCounter[3]~16\,
	combout => \adcDacController|bitClockCounter[4]~18_combout\,
	cout => \adcDacController|bitClockCounter[4]~19\);

-- Location: FF_X6_Y4_N9
\adcDacController|bitClockCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \adcDacController|bitClockCounter[4]~18_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|bitClockCounter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|bitClockCounter\(4));

-- Location: LCCOMB_X6_Y4_N10
\adcDacController|bitClockCounter[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|bitClockCounter[5]~20_combout\ = (\adcDacController|bitClockCounter\(5) & (!\adcDacController|bitClockCounter[4]~19\)) # (!\adcDacController|bitClockCounter\(5) & ((\adcDacController|bitClockCounter[4]~19\) # (GND)))
-- \adcDacController|bitClockCounter[5]~21\ = CARRY((!\adcDacController|bitClockCounter[4]~19\) # (!\adcDacController|bitClockCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|bitClockCounter\(5),
	datad => VCC,
	cin => \adcDacController|bitClockCounter[4]~19\,
	combout => \adcDacController|bitClockCounter[5]~20_combout\,
	cout => \adcDacController|bitClockCounter[5]~21\);

-- Location: FF_X6_Y4_N11
\adcDacController|bitClockCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \adcDacController|bitClockCounter[5]~20_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|bitClockCounter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|bitClockCounter\(5));

-- Location: LCCOMB_X6_Y4_N12
\adcDacController|bitClockCounter[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|bitClockCounter[6]~22_combout\ = (\adcDacController|bitClockCounter\(6) & (\adcDacController|bitClockCounter[5]~21\ $ (GND))) # (!\adcDacController|bitClockCounter\(6) & (!\adcDacController|bitClockCounter[5]~21\ & VCC))
-- \adcDacController|bitClockCounter[6]~23\ = CARRY((\adcDacController|bitClockCounter\(6) & !\adcDacController|bitClockCounter[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|bitClockCounter\(6),
	datad => VCC,
	cin => \adcDacController|bitClockCounter[5]~21\,
	combout => \adcDacController|bitClockCounter[6]~22_combout\,
	cout => \adcDacController|bitClockCounter[6]~23\);

-- Location: FF_X6_Y4_N13
\adcDacController|bitClockCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \adcDacController|bitClockCounter[6]~22_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|bitClockCounter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|bitClockCounter\(6));

-- Location: LCCOMB_X6_Y4_N14
\adcDacController|bitClockCounter[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|bitClockCounter[7]~24_combout\ = \adcDacController|bitClockCounter\(7) $ (\adcDacController|bitClockCounter[6]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|bitClockCounter\(7),
	cin => \adcDacController|bitClockCounter[6]~23\,
	combout => \adcDacController|bitClockCounter[7]~24_combout\);

-- Location: FF_X6_Y4_N15
\adcDacController|bitClockCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \adcDacController|bitClockCounter[7]~24_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|bitClockCounter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|bitClockCounter\(7));

-- Location: LCCOMB_X6_Y4_N26
\adcDacController|bitClockCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|bitClockCounter~8_combout\ = (!\adcDacController|bitClockCounter\(6) & (!\adcDacController|bitClockCounter\(7) & (!\adcDacController|bitClockCounter\(4) & !\adcDacController|bitClockCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|bitClockCounter\(6),
	datab => \adcDacController|bitClockCounter\(7),
	datac => \adcDacController|bitClockCounter\(4),
	datad => \adcDacController|bitClockCounter\(5),
	combout => \adcDacController|bitClockCounter~8_combout\);

-- Location: LCCOMB_X6_Y4_N28
\adcDacController|internalBitClock~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|internalBitClock~0_combout\ = (\adcDacController|bitClockCounter\(3)) # ((\adcDacController|bitClockCounter\(2) & ((\adcDacController|bitClockCounter\(1)) # (\adcDacController|bitClockCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|bitClockCounter\(3),
	datab => \adcDacController|bitClockCounter\(1),
	datac => \adcDacController|bitClockCounter\(2),
	datad => \adcDacController|bitClockCounter\(0),
	combout => \adcDacController|internalBitClock~0_combout\);

-- Location: LCCOMB_X6_Y4_N20
\adcDacController|internalBitClock~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|internalBitClock~1_combout\ = (\adcDacController|bitClockCounter~8_combout\ & (\adcDacController|LessThan2~0_combout\ & \adcDacController|internalBitClock~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|bitClockCounter~8_combout\,
	datac => \adcDacController|LessThan2~0_combout\,
	datad => \adcDacController|internalBitClock~0_combout\,
	combout => \adcDacController|internalBitClock~1_combout\);

-- Location: FF_X6_Y4_N21
\adcDacController|internalBitClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \adcDacController|internalBitClock~1_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|internalBitClock~q\);

-- Location: CLKCTRL_G17
\adcDacController|internalBitClock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \adcDacController|internalBitClock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \adcDacController|internalBitClock~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y4_N8
\adcDacController|LRCounter[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LRCounter[0]~5_combout\ = \adcDacController|LRCounter\(0) $ (VCC)
-- \adcDacController|LRCounter[0]~6\ = CARRY(\adcDacController|LRCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LRCounter\(0),
	datad => VCC,
	combout => \adcDacController|LRCounter[0]~5_combout\,
	cout => \adcDacController|LRCounter[0]~6\);

-- Location: FF_X5_Y4_N9
\adcDacController|LRCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|LRCounter[0]~5_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|LRCounter\(0));

-- Location: LCCOMB_X5_Y4_N10
\adcDacController|LRCounter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LRCounter[1]~7_combout\ = (\adcDacController|LRCounter\(1) & (!\adcDacController|LRCounter[0]~6\)) # (!\adcDacController|LRCounter\(1) & ((\adcDacController|LRCounter[0]~6\) # (GND)))
-- \adcDacController|LRCounter[1]~8\ = CARRY((!\adcDacController|LRCounter[0]~6\) # (!\adcDacController|LRCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LRCounter\(1),
	datad => VCC,
	cin => \adcDacController|LRCounter[0]~6\,
	combout => \adcDacController|LRCounter[1]~7_combout\,
	cout => \adcDacController|LRCounter[1]~8\);

-- Location: FF_X5_Y4_N11
\adcDacController|LRCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|LRCounter[1]~7_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|LRCounter\(1));

-- Location: LCCOMB_X5_Y4_N12
\adcDacController|LRCounter[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LRCounter[2]~9_combout\ = (\adcDacController|LRCounter\(2) & (\adcDacController|LRCounter[1]~8\ $ (GND))) # (!\adcDacController|LRCounter\(2) & (!\adcDacController|LRCounter[1]~8\ & VCC))
-- \adcDacController|LRCounter[2]~10\ = CARRY((\adcDacController|LRCounter\(2) & !\adcDacController|LRCounter[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|LRCounter\(2),
	datad => VCC,
	cin => \adcDacController|LRCounter[1]~8\,
	combout => \adcDacController|LRCounter[2]~9_combout\,
	cout => \adcDacController|LRCounter[2]~10\);

-- Location: FF_X5_Y4_N13
\adcDacController|LRCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|LRCounter[2]~9_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|LRCounter\(2));

-- Location: LCCOMB_X5_Y4_N14
\adcDacController|LRCounter[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LRCounter[3]~11_combout\ = (\adcDacController|LRCounter\(3) & (!\adcDacController|LRCounter[2]~10\)) # (!\adcDacController|LRCounter\(3) & ((\adcDacController|LRCounter[2]~10\) # (GND)))
-- \adcDacController|LRCounter[3]~12\ = CARRY((!\adcDacController|LRCounter[2]~10\) # (!\adcDacController|LRCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LRCounter\(3),
	datad => VCC,
	cin => \adcDacController|LRCounter[2]~10\,
	combout => \adcDacController|LRCounter[3]~11_combout\,
	cout => \adcDacController|LRCounter[3]~12\);

-- Location: FF_X5_Y4_N15
\adcDacController|LRCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|LRCounter[3]~11_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|LRCounter\(3));

-- Location: LCCOMB_X5_Y4_N16
\adcDacController|LRCounter[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LRCounter[4]~13_combout\ = \adcDacController|LRCounter[3]~12\ $ (!\adcDacController|LRCounter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adcDacController|LRCounter\(4),
	cin => \adcDacController|LRCounter[3]~12\,
	combout => \adcDacController|LRCounter[4]~13_combout\);

-- Location: FF_X5_Y4_N17
\adcDacController|LRCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|LRCounter[4]~13_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|LRCounter\(4));

-- Location: LCCOMB_X9_Y3_N30
\adcDacController|internalLRSelect~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|internalLRSelect~0_combout\ = !\adcDacController|LRCounter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adcDacController|LRCounter\(4),
	combout => \adcDacController|internalLRSelect~0_combout\);

-- Location: FF_X9_Y3_N31
\adcDacController|internalLRSelect\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|internalLRSelect~0_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|internalLRSelect~q\);

-- Location: LCCOMB_X5_Y4_N0
\adcDacController|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Equal0~0_combout\ = (\adcDacController|LRCounter\(0) & (\adcDacController|LRCounter\(4) & (\adcDacController|LRCounter\(3) & \adcDacController|LRCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LRCounter\(0),
	datab => \adcDacController|LRCounter\(4),
	datac => \adcDacController|LRCounter\(3),
	datad => \adcDacController|LRCounter\(2),
	combout => \adcDacController|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y4_N30
\adcDacController|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Equal0~1_combout\ = (\adcDacController|LRCounter\(1) & \adcDacController|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LRCounter\(1),
	datac => \adcDacController|Equal0~0_combout\,
	combout => \adcDacController|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y4_N4
\adcDacController|dataCount~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|dataCount~feeder_combout\ = \adcDacController|Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adcDacController|Equal0~1_combout\,
	combout => \adcDacController|dataCount~feeder_combout\);

-- Location: FF_X4_Y4_N5
\adcDacController|dataCount\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|dataCount~feeder_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|dataCount~q\);

-- Location: CLKCTRL_G4
\adcDacController|dataCount~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \adcDacController|dataCount~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \adcDacController|dataCount~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y3_N20
\adcDacController|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Add4~0_combout\ = \adcDacController|noteNum\(0) $ (VCC)
-- \adcDacController|Add4~1\ = CARRY(\adcDacController|noteNum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|noteNum\(0),
	datad => VCC,
	combout => \adcDacController|Add4~0_combout\,
	cout => \adcDacController|Add4~1\);

-- Location: IOIBUF_X7_Y0_N22
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X7_Y3_N2
\adcDacController|beatCounter[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[0]~15_combout\ = \adcDacController|beatCounter\(0) $ (VCC)
-- \adcDacController|beatCounter[0]~16\ = CARRY(\adcDacController|beatCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|beatCounter\(0),
	datad => VCC,
	combout => \adcDacController|beatCounter[0]~15_combout\,
	cout => \adcDacController|beatCounter[0]~16\);

-- Location: FF_X7_Y3_N3
\adcDacController|beatCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[0]~15_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(0));

-- Location: LCCOMB_X7_Y3_N4
\adcDacController|beatCounter[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[1]~17_combout\ = (\adcDacController|beatCounter\(1) & (!\adcDacController|beatCounter[0]~16\)) # (!\adcDacController|beatCounter\(1) & ((\adcDacController|beatCounter[0]~16\) # (GND)))
-- \adcDacController|beatCounter[1]~18\ = CARRY((!\adcDacController|beatCounter[0]~16\) # (!\adcDacController|beatCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|beatCounter\(1),
	datad => VCC,
	cin => \adcDacController|beatCounter[0]~16\,
	combout => \adcDacController|beatCounter[1]~17_combout\,
	cout => \adcDacController|beatCounter[1]~18\);

-- Location: FF_X7_Y3_N5
\adcDacController|beatCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[1]~17_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(1));

-- Location: LCCOMB_X7_Y3_N6
\adcDacController|beatCounter[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[2]~19_combout\ = (\adcDacController|beatCounter\(2) & (\adcDacController|beatCounter[1]~18\ $ (GND))) # (!\adcDacController|beatCounter\(2) & (!\adcDacController|beatCounter[1]~18\ & VCC))
-- \adcDacController|beatCounter[2]~20\ = CARRY((\adcDacController|beatCounter\(2) & !\adcDacController|beatCounter[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|beatCounter\(2),
	datad => VCC,
	cin => \adcDacController|beatCounter[1]~18\,
	combout => \adcDacController|beatCounter[2]~19_combout\,
	cout => \adcDacController|beatCounter[2]~20\);

-- Location: FF_X7_Y3_N7
\adcDacController|beatCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[2]~19_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(2));

-- Location: LCCOMB_X7_Y3_N8
\adcDacController|beatCounter[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[3]~21_combout\ = (\adcDacController|beatCounter\(3) & (!\adcDacController|beatCounter[2]~20\)) # (!\adcDacController|beatCounter\(3) & ((\adcDacController|beatCounter[2]~20\) # (GND)))
-- \adcDacController|beatCounter[3]~22\ = CARRY((!\adcDacController|beatCounter[2]~20\) # (!\adcDacController|beatCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|beatCounter\(3),
	datad => VCC,
	cin => \adcDacController|beatCounter[2]~20\,
	combout => \adcDacController|beatCounter[3]~21_combout\,
	cout => \adcDacController|beatCounter[3]~22\);

-- Location: FF_X7_Y3_N9
\adcDacController|beatCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[3]~21_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(3));

-- Location: LCCOMB_X7_Y3_N10
\adcDacController|beatCounter[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[4]~23_combout\ = (\adcDacController|beatCounter\(4) & (\adcDacController|beatCounter[3]~22\ $ (GND))) # (!\adcDacController|beatCounter\(4) & (!\adcDacController|beatCounter[3]~22\ & VCC))
-- \adcDacController|beatCounter[4]~24\ = CARRY((\adcDacController|beatCounter\(4) & !\adcDacController|beatCounter[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|beatCounter\(4),
	datad => VCC,
	cin => \adcDacController|beatCounter[3]~22\,
	combout => \adcDacController|beatCounter[4]~23_combout\,
	cout => \adcDacController|beatCounter[4]~24\);

-- Location: FF_X7_Y3_N11
\adcDacController|beatCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[4]~23_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(4));

-- Location: LCCOMB_X7_Y3_N12
\adcDacController|beatCounter[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[5]~25_combout\ = (\adcDacController|beatCounter\(5) & (!\adcDacController|beatCounter[4]~24\)) # (!\adcDacController|beatCounter\(5) & ((\adcDacController|beatCounter[4]~24\) # (GND)))
-- \adcDacController|beatCounter[5]~26\ = CARRY((!\adcDacController|beatCounter[4]~24\) # (!\adcDacController|beatCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|beatCounter\(5),
	datad => VCC,
	cin => \adcDacController|beatCounter[4]~24\,
	combout => \adcDacController|beatCounter[5]~25_combout\,
	cout => \adcDacController|beatCounter[5]~26\);

-- Location: FF_X7_Y3_N13
\adcDacController|beatCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[5]~25_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(5));

-- Location: LCCOMB_X7_Y3_N14
\adcDacController|beatCounter[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[6]~27_combout\ = (\adcDacController|beatCounter\(6) & (\adcDacController|beatCounter[5]~26\ $ (GND))) # (!\adcDacController|beatCounter\(6) & (!\adcDacController|beatCounter[5]~26\ & VCC))
-- \adcDacController|beatCounter[6]~28\ = CARRY((\adcDacController|beatCounter\(6) & !\adcDacController|beatCounter[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|beatCounter\(6),
	datad => VCC,
	cin => \adcDacController|beatCounter[5]~26\,
	combout => \adcDacController|beatCounter[6]~27_combout\,
	cout => \adcDacController|beatCounter[6]~28\);

-- Location: FF_X7_Y3_N15
\adcDacController|beatCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[6]~27_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(6));

-- Location: LCCOMB_X7_Y3_N16
\adcDacController|beatCounter[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[7]~29_combout\ = (\adcDacController|beatCounter\(7) & (!\adcDacController|beatCounter[6]~28\)) # (!\adcDacController|beatCounter\(7) & ((\adcDacController|beatCounter[6]~28\) # (GND)))
-- \adcDacController|beatCounter[7]~30\ = CARRY((!\adcDacController|beatCounter[6]~28\) # (!\adcDacController|beatCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|beatCounter\(7),
	datad => VCC,
	cin => \adcDacController|beatCounter[6]~28\,
	combout => \adcDacController|beatCounter[7]~29_combout\,
	cout => \adcDacController|beatCounter[7]~30\);

-- Location: FF_X7_Y3_N17
\adcDacController|beatCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[7]~29_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(7));

-- Location: LCCOMB_X7_Y3_N18
\adcDacController|beatCounter[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[8]~31_combout\ = (\adcDacController|beatCounter\(8) & (\adcDacController|beatCounter[7]~30\ $ (GND))) # (!\adcDacController|beatCounter\(8) & (!\adcDacController|beatCounter[7]~30\ & VCC))
-- \adcDacController|beatCounter[8]~32\ = CARRY((\adcDacController|beatCounter\(8) & !\adcDacController|beatCounter[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|beatCounter\(8),
	datad => VCC,
	cin => \adcDacController|beatCounter[7]~30\,
	combout => \adcDacController|beatCounter[8]~31_combout\,
	cout => \adcDacController|beatCounter[8]~32\);

-- Location: FF_X7_Y3_N19
\adcDacController|beatCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[8]~31_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(8));

-- Location: LCCOMB_X7_Y3_N20
\adcDacController|beatCounter[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[9]~33_combout\ = (\adcDacController|beatCounter\(9) & (!\adcDacController|beatCounter[8]~32\)) # (!\adcDacController|beatCounter\(9) & ((\adcDacController|beatCounter[8]~32\) # (GND)))
-- \adcDacController|beatCounter[9]~34\ = CARRY((!\adcDacController|beatCounter[8]~32\) # (!\adcDacController|beatCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|beatCounter\(9),
	datad => VCC,
	cin => \adcDacController|beatCounter[8]~32\,
	combout => \adcDacController|beatCounter[9]~33_combout\,
	cout => \adcDacController|beatCounter[9]~34\);

-- Location: FF_X7_Y3_N21
\adcDacController|beatCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[9]~33_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(9));

-- Location: LCCOMB_X6_Y3_N20
\adcDacController|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~3_combout\ = (!\adcDacController|beatCounter\(9) & ((\SW[7]~input_o\) # (!\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \adcDacController|beatCounter\(9),
	combout => \adcDacController|LessThan5~3_combout\);

-- Location: LCCOMB_X7_Y3_N22
\adcDacController|beatCounter[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[10]~35_combout\ = (\adcDacController|beatCounter\(10) & (\adcDacController|beatCounter[9]~34\ $ (GND))) # (!\adcDacController|beatCounter\(10) & (!\adcDacController|beatCounter[9]~34\ & VCC))
-- \adcDacController|beatCounter[10]~36\ = CARRY((\adcDacController|beatCounter\(10) & !\adcDacController|beatCounter[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|beatCounter\(10),
	datad => VCC,
	cin => \adcDacController|beatCounter[9]~34\,
	combout => \adcDacController|beatCounter[10]~35_combout\,
	cout => \adcDacController|beatCounter[10]~36\);

-- Location: FF_X7_Y3_N23
\adcDacController|beatCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[10]~35_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(10));

-- Location: LCCOMB_X7_Y3_N24
\adcDacController|beatCounter[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[11]~37_combout\ = (\adcDacController|beatCounter\(11) & (!\adcDacController|beatCounter[10]~36\)) # (!\adcDacController|beatCounter\(11) & ((\adcDacController|beatCounter[10]~36\) # (GND)))
-- \adcDacController|beatCounter[11]~38\ = CARRY((!\adcDacController|beatCounter[10]~36\) # (!\adcDacController|beatCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|beatCounter\(11),
	datad => VCC,
	cin => \adcDacController|beatCounter[10]~36\,
	combout => \adcDacController|beatCounter[11]~37_combout\,
	cout => \adcDacController|beatCounter[11]~38\);

-- Location: FF_X7_Y3_N25
\adcDacController|beatCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[11]~37_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(11));

-- Location: LCCOMB_X7_Y3_N26
\adcDacController|beatCounter[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[12]~39_combout\ = (\adcDacController|beatCounter\(12) & (\adcDacController|beatCounter[11]~38\ $ (GND))) # (!\adcDacController|beatCounter\(12) & (!\adcDacController|beatCounter[11]~38\ & VCC))
-- \adcDacController|beatCounter[12]~40\ = CARRY((\adcDacController|beatCounter\(12) & !\adcDacController|beatCounter[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|beatCounter\(12),
	datad => VCC,
	cin => \adcDacController|beatCounter[11]~38\,
	combout => \adcDacController|beatCounter[12]~39_combout\,
	cout => \adcDacController|beatCounter[12]~40\);

-- Location: FF_X7_Y3_N27
\adcDacController|beatCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[12]~39_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(12));

-- Location: LCCOMB_X7_Y3_N28
\adcDacController|beatCounter[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[13]~41_combout\ = (\adcDacController|beatCounter\(13) & (!\adcDacController|beatCounter[12]~40\)) # (!\adcDacController|beatCounter\(13) & ((\adcDacController|beatCounter[12]~40\) # (GND)))
-- \adcDacController|beatCounter[13]~42\ = CARRY((!\adcDacController|beatCounter[12]~40\) # (!\adcDacController|beatCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|beatCounter\(13),
	datad => VCC,
	cin => \adcDacController|beatCounter[12]~40\,
	combout => \adcDacController|beatCounter[13]~41_combout\,
	cout => \adcDacController|beatCounter[13]~42\);

-- Location: FF_X7_Y3_N29
\adcDacController|beatCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[13]~41_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(13));

-- Location: LCCOMB_X7_Y3_N30
\adcDacController|beatCounter[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatCounter[14]~43_combout\ = \adcDacController|beatCounter\(14) $ (!\adcDacController|beatCounter[13]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|beatCounter\(14),
	cin => \adcDacController|beatCounter[13]~42\,
	combout => \adcDacController|beatCounter[14]~43_combout\);

-- Location: FF_X7_Y3_N31
\adcDacController|beatCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|beatCounter[14]~43_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|beatCounter\(14));

-- Location: LCCOMB_X6_Y3_N18
\adcDacController|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~0_combout\ = (\SW[6]~input_o\ & ((\SW[7]~input_o\ & (!\adcDacController|beatCounter\(14) & \adcDacController|beatCounter\(13))) # (!\SW[7]~input_o\ & (\adcDacController|beatCounter\(14) & !\adcDacController|beatCounter\(13))))) 
-- # (!\SW[6]~input_o\ & (!\adcDacController|beatCounter\(14) & (\SW[7]~input_o\ $ (\adcDacController|beatCounter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \adcDacController|beatCounter\(14),
	datad => \adcDacController|beatCounter\(13),
	combout => \adcDacController|LessThan5~0_combout\);

-- Location: LCCOMB_X6_Y3_N16
\adcDacController|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~1_combout\ = (\adcDacController|LessThan5~0_combout\ & (\SW[6]~input_o\ $ (\SW[7]~input_o\ $ (!\adcDacController|beatCounter\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \adcDacController|beatCounter\(12),
	datad => \adcDacController|LessThan5~0_combout\,
	combout => \adcDacController|LessThan5~1_combout\);

-- Location: LCCOMB_X6_Y3_N6
\adcDacController|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~2_combout\ = (\adcDacController|LessThan5~1_combout\ & (\adcDacController|beatCounter\(11) $ (((!\SW[6]~input_o\ & \SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \adcDacController|beatCounter\(11),
	datac => \SW[7]~input_o\,
	datad => \adcDacController|LessThan5~1_combout\,
	combout => \adcDacController|LessThan5~2_combout\);

-- Location: LCCOMB_X8_Y3_N28
\adcDacController|LessThan5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~10_combout\ = (\SW[7]~input_o\ & (\adcDacController|beatCounter\(9) & (\SW[6]~input_o\ $ (\adcDacController|beatCounter\(8))))) # (!\SW[7]~input_o\ & ((\adcDacController|beatCounter\(9) & (!\SW[6]~input_o\ & 
-- !\adcDacController|beatCounter\(8))) # (!\adcDacController|beatCounter\(9) & (\SW[6]~input_o\ & \adcDacController|beatCounter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \adcDacController|beatCounter\(9),
	datac => \SW[6]~input_o\,
	datad => \adcDacController|beatCounter\(8),
	combout => \adcDacController|LessThan5~10_combout\);

-- Location: LCCOMB_X8_Y3_N4
\adcDacController|LessThan5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~16_combout\ = (\adcDacController|beatCounter\(7) & (!\adcDacController|beatCounter\(6) & (\SW[7]~input_o\ $ (!\SW[6]~input_o\)))) # (!\adcDacController|beatCounter\(7) & (((\SW[6]~input_o\) # 
-- (!\adcDacController|beatCounter\(6))) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \adcDacController|beatCounter\(7),
	datad => \adcDacController|beatCounter\(6),
	combout => \adcDacController|LessThan5~16_combout\);

-- Location: LCCOMB_X8_Y3_N26
\adcDacController|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~11_combout\ = (\SW[7]~input_o\ & (\adcDacController|beatCounter\(6) & (\SW[6]~input_o\ $ (!\adcDacController|beatCounter\(7))))) # (!\SW[7]~input_o\ & (\adcDacController|beatCounter\(7) & (\SW[6]~input_o\ $ 
-- (\adcDacController|beatCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \adcDacController|beatCounter\(7),
	datad => \adcDacController|beatCounter\(6),
	combout => \adcDacController|LessThan5~11_combout\);

-- Location: LCCOMB_X8_Y3_N8
\adcDacController|LessThan5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~12_combout\ = (\adcDacController|beatCounter\(7) & (((!\adcDacController|beatCounter\(4)) # (!\adcDacController|beatCounter\(1))) # (!\adcDacController|beatCounter\(3)))) # (!\adcDacController|beatCounter\(7) & 
-- (!\adcDacController|beatCounter\(4) & ((!\adcDacController|beatCounter\(1)) # (!\adcDacController|beatCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|beatCounter\(3),
	datab => \adcDacController|beatCounter\(1),
	datac => \adcDacController|beatCounter\(7),
	datad => \adcDacController|beatCounter\(4),
	combout => \adcDacController|LessThan5~12_combout\);

-- Location: LCCOMB_X6_Y3_N22
\adcDacController|beatLimit[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|beatLimit[12]~0_combout\ = \SW[6]~input_o\ $ (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	combout => \adcDacController|beatLimit[12]~0_combout\);

-- Location: LCCOMB_X8_Y3_N14
\adcDacController|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~13_combout\ = (\adcDacController|beatLimit[12]~0_combout\ & (((\adcDacController|beatCounter\(7)) # (!\adcDacController|beatCounter\(5))) # (!\adcDacController|beatCounter\(4)))) # (!\adcDacController|beatLimit[12]~0_combout\ & 
-- (!\adcDacController|beatCounter\(5) & ((\adcDacController|beatCounter\(7)) # (!\adcDacController|beatCounter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|beatCounter\(4),
	datab => \adcDacController|beatLimit[12]~0_combout\,
	datac => \adcDacController|beatCounter\(7),
	datad => \adcDacController|beatCounter\(5),
	combout => \adcDacController|LessThan5~13_combout\);

-- Location: LCCOMB_X8_Y3_N20
\adcDacController|LessThan5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~14_combout\ = (((\adcDacController|beatLimit[12]~0_combout\ & !\adcDacController|beatCounter\(5))) # (!\adcDacController|beatCounter\(2))) # (!\adcDacController|beatCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|beatCounter\(0),
	datab => \adcDacController|beatLimit[12]~0_combout\,
	datac => \adcDacController|beatCounter\(2),
	datad => \adcDacController|beatCounter\(5),
	combout => \adcDacController|LessThan5~14_combout\);

-- Location: LCCOMB_X8_Y3_N18
\adcDacController|LessThan5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~15_combout\ = (\adcDacController|LessThan5~11_combout\ & (\adcDacController|LessThan5~13_combout\ & ((\adcDacController|LessThan5~12_combout\) # (\adcDacController|LessThan5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LessThan5~11_combout\,
	datab => \adcDacController|LessThan5~12_combout\,
	datac => \adcDacController|LessThan5~13_combout\,
	datad => \adcDacController|LessThan5~14_combout\,
	combout => \adcDacController|LessThan5~15_combout\);

-- Location: LCCOMB_X8_Y3_N10
\adcDacController|LessThan5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~17_combout\ = (\adcDacController|beatCounter\(10) & (((!\adcDacController|LessThan5~16_combout\ & !\adcDacController|LessThan5~15_combout\)) # (!\adcDacController|LessThan5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|beatCounter\(10),
	datab => \adcDacController|LessThan5~10_combout\,
	datac => \adcDacController|LessThan5~16_combout\,
	datad => \adcDacController|LessThan5~15_combout\,
	combout => \adcDacController|LessThan5~17_combout\);

-- Location: LCCOMB_X6_Y3_N28
\adcDacController|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~5_combout\ = (!\adcDacController|beatCounter\(14) & ((\SW[6]~input_o\ & ((!\adcDacController|beatCounter\(13)) # (!\SW[7]~input_o\))) # (!\SW[6]~input_o\ & (!\SW[7]~input_o\ & !\adcDacController|beatCounter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \adcDacController|beatCounter\(14),
	datad => \adcDacController|beatCounter\(13),
	combout => \adcDacController|LessThan5~5_combout\);

-- Location: LCCOMB_X6_Y3_N4
\adcDacController|LessThan5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~8_combout\ = (!\adcDacController|beatCounter\(13) & ((\SW[6]~input_o\ & (!\SW[7]~input_o\ & \adcDacController|beatCounter\(14))) # (!\SW[6]~input_o\ & (\SW[7]~input_o\ & !\adcDacController|beatCounter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \adcDacController|beatCounter\(14),
	datad => \adcDacController|beatCounter\(13),
	combout => \adcDacController|LessThan5~8_combout\);

-- Location: LCCOMB_X6_Y3_N12
\adcDacController|LessThan5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~6_combout\ = (\SW[6]~input_o\ & (\adcDacController|beatCounter\(11) & (\SW[7]~input_o\ $ (!\adcDacController|beatCounter\(9))))) # (!\SW[6]~input_o\ & (\adcDacController|beatCounter\(9) & (\SW[7]~input_o\ $ 
-- (\adcDacController|beatCounter\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \adcDacController|beatCounter\(9),
	datad => \adcDacController|beatCounter\(11),
	combout => \adcDacController|LessThan5~6_combout\);

-- Location: LCCOMB_X6_Y3_N26
\adcDacController|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~7_combout\ = ((\adcDacController|beatLimit[12]~0_combout\ & (!\adcDacController|beatCounter\(8) & \adcDacController|LessThan5~6_combout\))) # (!\adcDacController|beatCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|beatLimit[12]~0_combout\,
	datab => \adcDacController|beatCounter\(8),
	datac => \adcDacController|beatCounter\(12),
	datad => \adcDacController|LessThan5~6_combout\,
	combout => \adcDacController|LessThan5~7_combout\);

-- Location: LCCOMB_X6_Y3_N10
\adcDacController|LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~4_combout\ = (!\adcDacController|beatCounter\(11) & (\adcDacController|LessThan5~1_combout\ & ((\SW[6]~input_o\) # (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \adcDacController|beatCounter\(11),
	datac => \SW[7]~input_o\,
	datad => \adcDacController|LessThan5~1_combout\,
	combout => \adcDacController|LessThan5~4_combout\);

-- Location: LCCOMB_X6_Y3_N14
\adcDacController|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~9_combout\ = (\adcDacController|LessThan5~5_combout\) # ((\adcDacController|LessThan5~4_combout\) # ((\adcDacController|LessThan5~8_combout\ & \adcDacController|LessThan5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LessThan5~5_combout\,
	datab => \adcDacController|LessThan5~8_combout\,
	datac => \adcDacController|LessThan5~7_combout\,
	datad => \adcDacController|LessThan5~4_combout\,
	combout => \adcDacController|LessThan5~9_combout\);

-- Location: LCCOMB_X7_Y3_N0
\adcDacController|LessThan5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan5~18_combout\ = (!\adcDacController|LessThan5~9_combout\ & (((!\adcDacController|LessThan5~3_combout\ & \adcDacController|LessThan5~17_combout\)) # (!\adcDacController|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LessThan5~3_combout\,
	datab => \adcDacController|LessThan5~2_combout\,
	datac => \adcDacController|LessThan5~17_combout\,
	datad => \adcDacController|LessThan5~9_combout\,
	combout => \adcDacController|LessThan5~18_combout\);

-- Location: LCCOMB_X6_Y3_N24
\adcDacController|noteNum[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|noteNum[0]~3_combout\ = (\adcDacController|LessThan5~18_combout\ & ((\adcDacController|Equal0~1_combout\ & (\adcDacController|Add4~0_combout\)) # (!\adcDacController|Equal0~1_combout\ & ((\adcDacController|noteNum\(0)))))) # 
-- (!\adcDacController|LessThan5~18_combout\ & (((\adcDacController|noteNum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Add4~0_combout\,
	datab => \adcDacController|LessThan5~18_combout\,
	datac => \adcDacController|noteNum\(0),
	datad => \adcDacController|Equal0~1_combout\,
	combout => \adcDacController|noteNum[0]~3_combout\);

-- Location: FF_X6_Y3_N25
\adcDacController|noteNum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|noteNum[0]~3_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|noteNum\(0));

-- Location: LCCOMB_X5_Y3_N22
\adcDacController|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Add4~2_combout\ = (\adcDacController|noteNum\(1) & (!\adcDacController|Add4~1\)) # (!\adcDacController|noteNum\(1) & ((\adcDacController|Add4~1\) # (GND)))
-- \adcDacController|Add4~3\ = CARRY((!\adcDacController|Add4~1\) # (!\adcDacController|noteNum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|noteNum\(1),
	datad => VCC,
	cin => \adcDacController|Add4~1\,
	combout => \adcDacController|Add4~2_combout\,
	cout => \adcDacController|Add4~3\);

-- Location: LCCOMB_X6_Y3_N30
\adcDacController|noteNum[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|noteNum[4]~0_combout\ = (\adcDacController|LRCounter\(1) & (!\adcDacController|LessThan5~5_combout\ & ((!\adcDacController|LessThan5~8_combout\) # (!\adcDacController|LessThan5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LessThan5~7_combout\,
	datab => \adcDacController|LessThan5~8_combout\,
	datac => \adcDacController|LRCounter\(1),
	datad => \adcDacController|LessThan5~5_combout\,
	combout => \adcDacController|noteNum[4]~0_combout\);

-- Location: LCCOMB_X5_Y3_N10
\adcDacController|noteNum[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|noteNum[4]~1_combout\ = ((!\adcDacController|LessThan5~3_combout\ & \adcDacController|LessThan5~17_combout\)) # (!\adcDacController|LessThan5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LessThan5~3_combout\,
	datac => \adcDacController|LessThan5~17_combout\,
	datad => \adcDacController|LessThan5~2_combout\,
	combout => \adcDacController|noteNum[4]~1_combout\);

-- Location: LCCOMB_X5_Y3_N14
\adcDacController|noteNum[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|noteNum[4]~2_combout\ = (\adcDacController|Equal0~0_combout\ & (!\adcDacController|LessThan5~4_combout\ & (\adcDacController|noteNum[4]~0_combout\ & \adcDacController|noteNum[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Equal0~0_combout\,
	datab => \adcDacController|LessThan5~4_combout\,
	datac => \adcDacController|noteNum[4]~0_combout\,
	datad => \adcDacController|noteNum[4]~1_combout\,
	combout => \adcDacController|noteNum[4]~2_combout\);

-- Location: FF_X5_Y3_N23
\adcDacController|noteNum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|Add4~2_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	ena => \adcDacController|noteNum[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|noteNum\(1));

-- Location: LCCOMB_X5_Y3_N24
\adcDacController|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Add4~4_combout\ = (\adcDacController|noteNum\(2) & (\adcDacController|Add4~3\ $ (GND))) # (!\adcDacController|noteNum\(2) & (!\adcDacController|Add4~3\ & VCC))
-- \adcDacController|Add4~5\ = CARRY((\adcDacController|noteNum\(2) & !\adcDacController|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|noteNum\(2),
	datad => VCC,
	cin => \adcDacController|Add4~3\,
	combout => \adcDacController|Add4~4_combout\,
	cout => \adcDacController|Add4~5\);

-- Location: FF_X5_Y3_N25
\adcDacController|noteNum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|Add4~4_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	ena => \adcDacController|noteNum[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|noteNum\(2));

-- Location: LCCOMB_X5_Y3_N26
\adcDacController|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Add4~6_combout\ = (\adcDacController|noteNum\(3) & (!\adcDacController|Add4~5\)) # (!\adcDacController|noteNum\(3) & ((\adcDacController|Add4~5\) # (GND)))
-- \adcDacController|Add4~7\ = CARRY((!\adcDacController|Add4~5\) # (!\adcDacController|noteNum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|noteNum\(3),
	datad => VCC,
	cin => \adcDacController|Add4~5\,
	combout => \adcDacController|Add4~6_combout\,
	cout => \adcDacController|Add4~7\);

-- Location: FF_X5_Y3_N27
\adcDacController|noteNum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|Add4~6_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	ena => \adcDacController|noteNum[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|noteNum\(3));

-- Location: LCCOMB_X5_Y3_N28
\adcDacController|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Add4~8_combout\ = \adcDacController|noteNum\(4) $ (!\adcDacController|Add4~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|noteNum\(4),
	cin => \adcDacController|Add4~7\,
	combout => \adcDacController|Add4~8_combout\);

-- Location: LCCOMB_X5_Y3_N4
\adcDacController|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector13~0_combout\ = (\adcDacController|Add4~8_combout\ & ((\adcDacController|Equal8~0_combout\) # (!\adcDacController|shaveAndAHaircut.Rest~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Equal8~0_combout\,
	datac => \adcDacController|shaveAndAHaircut.Rest~q\,
	datad => \adcDacController|Add4~8_combout\,
	combout => \adcDacController|Selector13~0_combout\);

-- Location: FF_X5_Y3_N5
\adcDacController|noteNum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|Selector13~0_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	ena => \adcDacController|noteNum[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|noteNum\(4));

-- Location: LCCOMB_X5_Y3_N0
\adcDacController|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Equal1~1_combout\ = (!\adcDacController|noteNum\(3) & !\adcDacController|noteNum\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacController|noteNum\(3),
	datad => \adcDacController|noteNum\(2),
	combout => \adcDacController|Equal1~1_combout\);

-- Location: LCCOMB_X5_Y3_N6
\adcDacController|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Equal8~0_combout\ = (\adcDacController|noteNum\(1)) # ((\adcDacController|noteNum\(0)) # ((!\adcDacController|Equal1~1_combout\) # (!\adcDacController|noteNum\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|noteNum\(1),
	datab => \adcDacController|noteNum\(0),
	datac => \adcDacController|noteNum\(4),
	datad => \adcDacController|Equal1~1_combout\,
	combout => \adcDacController|Equal8~0_combout\);

-- Location: LCCOMB_X4_Y3_N10
\adcDacController|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector18~1_combout\ = (!\adcDacController|Equal8~0_combout\ & (\adcDacController|shaveAndAHaircut.Rest~q\ & \adcDacController|LessThan5~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Equal8~0_combout\,
	datac => \adcDacController|shaveAndAHaircut.Rest~q\,
	datad => \adcDacController|LessThan5~18_combout\,
	combout => \adcDacController|Selector18~1_combout\);

-- Location: LCCOMB_X5_Y3_N2
\adcDacController|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Equal4~0_combout\ = (!\adcDacController|noteNum\(1) & (!\adcDacController|noteNum\(4) & !\adcDacController|noteNum\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|noteNum\(1),
	datac => \adcDacController|noteNum\(4),
	datad => \adcDacController|noteNum\(0),
	combout => \adcDacController|Equal4~0_combout\);

-- Location: LCCOMB_X4_Y3_N4
\adcDacController|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Equal2~0_combout\ = (\adcDacController|noteNum\(2) & \adcDacController|noteNum\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacController|noteNum\(2),
	datad => \adcDacController|noteNum\(3),
	combout => \adcDacController|Equal2~0_combout\);

-- Location: LCCOMB_X4_Y3_N24
\adcDacController|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector18~0_combout\ = (\adcDacController|Equal4~0_combout\ & (\adcDacController|shaveAndAHaircut.B~q\ & (\adcDacController|Equal2~0_combout\ & \adcDacController|LessThan5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Equal4~0_combout\,
	datab => \adcDacController|shaveAndAHaircut.B~q\,
	datac => \adcDacController|Equal2~0_combout\,
	datad => \adcDacController|LessThan5~18_combout\,
	combout => \adcDacController|Selector18~0_combout\);

-- Location: LCCOMB_X5_Y3_N8
\adcDacController|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Equal1~0_combout\ = (\adcDacController|noteNum\(1) & (!\adcDacController|noteNum\(4) & !\adcDacController|noteNum\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|noteNum\(1),
	datac => \adcDacController|noteNum\(4),
	datad => \adcDacController|noteNum\(0),
	combout => \adcDacController|Equal1~0_combout\);

-- Location: LCCOMB_X4_Y3_N12
\adcDacController|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Equal2~1_combout\ = (\adcDacController|noteNum\(2) & (\adcDacController|Equal1~0_combout\ & \adcDacController|noteNum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|noteNum\(2),
	datac => \adcDacController|Equal1~0_combout\,
	datad => \adcDacController|noteNum\(3),
	combout => \adcDacController|Equal2~1_combout\);

-- Location: LCCOMB_X4_Y3_N18
\adcDacController|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector18~2_combout\ = ((!\adcDacController|Equal2~1_combout\ & ((!\adcDacController|Equal1~1_combout\) # (!\adcDacController|Equal1~0_combout\)))) # (!\adcDacController|LessThan5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Equal2~1_combout\,
	datab => \adcDacController|Equal1~0_combout\,
	datac => \adcDacController|Equal1~1_combout\,
	datad => \adcDacController|LessThan5~18_combout\,
	combout => \adcDacController|Selector18~2_combout\);

-- Location: LCCOMB_X4_Y3_N22
\adcDacController|Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector18~3_combout\ = (!\adcDacController|Selector18~1_combout\ & (!\adcDacController|Selector18~0_combout\ & ((\adcDacController|shaveAndAHaircut.C~q\) # (!\adcDacController|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Selector18~1_combout\,
	datab => \adcDacController|Selector18~0_combout\,
	datac => \adcDacController|shaveAndAHaircut.C~q\,
	datad => \adcDacController|Selector18~2_combout\,
	combout => \adcDacController|Selector18~3_combout\);

-- Location: LCCOMB_X4_Y3_N8
\adcDacController|shaveAndAHaircut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|shaveAndAHaircut~9_combout\ = (\adcDacController|LRCounter\(4) & (\adcDacController|LRCounter\(1) & \adcDacController|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LRCounter\(4),
	datac => \adcDacController|LRCounter\(1),
	datad => \adcDacController|Equal0~0_combout\,
	combout => \adcDacController|shaveAndAHaircut~9_combout\);

-- Location: FF_X4_Y3_N23
\adcDacController|shaveAndAHaircut.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|Selector18~3_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	ena => \adcDacController|shaveAndAHaircut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|shaveAndAHaircut.C~q\);

-- Location: LCCOMB_X4_Y3_N26
\adcDacController|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector19~0_combout\ = (!\adcDacController|shaveAndAHaircut.C~q\ & (\adcDacController|Equal1~0_combout\ & (\adcDacController|Equal1~1_combout\ & \adcDacController|LessThan5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|shaveAndAHaircut.C~q\,
	datab => \adcDacController|Equal1~0_combout\,
	datac => \adcDacController|Equal1~1_combout\,
	datad => \adcDacController|LessThan5~18_combout\,
	combout => \adcDacController|Selector19~0_combout\);

-- Location: LCCOMB_X5_Y3_N12
\adcDacController|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Equal4~1_combout\ = (!\adcDacController|noteNum\(3) & \adcDacController|noteNum\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacController|noteNum\(3),
	datad => \adcDacController|noteNum\(2),
	combout => \adcDacController|Equal4~1_combout\);

-- Location: LCCOMB_X5_Y3_N30
\adcDacController|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector20~0_combout\ = (\adcDacController|shaveAndAHaircut.GSharp~q\ & (\adcDacController|Equal1~0_combout\ & ((!\adcDacController|Equal4~0_combout\) # (!\adcDacController|shaveAndAHaircut.G~q\)))) # 
-- (!\adcDacController|shaveAndAHaircut.GSharp~q\ & (\adcDacController|shaveAndAHaircut.G~q\ & ((\adcDacController|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|shaveAndAHaircut.G~q\,
	datab => \adcDacController|shaveAndAHaircut.GSharp~q\,
	datac => \adcDacController|Equal1~0_combout\,
	datad => \adcDacController|Equal4~0_combout\,
	combout => \adcDacController|Selector20~0_combout\);

-- Location: LCCOMB_X6_Y3_N0
\adcDacController|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector20~1_combout\ = \adcDacController|shaveAndAHaircut.GSharp~q\ $ (((\adcDacController|Equal4~1_combout\ & (\adcDacController|LessThan5~18_combout\ & \adcDacController|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Equal4~1_combout\,
	datab => \adcDacController|LessThan5~18_combout\,
	datac => \adcDacController|shaveAndAHaircut.GSharp~q\,
	datad => \adcDacController|Selector20~0_combout\,
	combout => \adcDacController|Selector20~1_combout\);

-- Location: FF_X6_Y3_N1
\adcDacController|shaveAndAHaircut.GSharp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|Selector20~1_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	ena => \adcDacController|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|shaveAndAHaircut.GSharp~q\);

-- Location: LCCOMB_X4_Y3_N16
\adcDacController|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector19~1_combout\ = (\adcDacController|shaveAndAHaircut.GSharp~q\ & (\adcDacController|Equal1~0_combout\ & (\adcDacController|Equal4~1_combout\ & \adcDacController|LessThan5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|shaveAndAHaircut.GSharp~q\,
	datab => \adcDacController|Equal1~0_combout\,
	datac => \adcDacController|Equal4~1_combout\,
	datad => \adcDacController|LessThan5~18_combout\,
	combout => \adcDacController|Selector19~1_combout\);

-- Location: LCCOMB_X4_Y3_N14
\adcDacController|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Equal5~0_combout\ = (\adcDacController|noteNum\(3) & (!\adcDacController|noteNum\(2) & \adcDacController|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|noteNum\(3),
	datac => \adcDacController|noteNum\(2),
	datad => \adcDacController|Equal4~0_combout\,
	combout => \adcDacController|Equal5~0_combout\);

-- Location: LCCOMB_X4_Y3_N28
\adcDacController|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector19~2_combout\ = ((!\adcDacController|Equal5~0_combout\ & ((!\adcDacController|Equal4~1_combout\) # (!\adcDacController|Equal4~0_combout\)))) # (!\adcDacController|LessThan5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Equal4~0_combout\,
	datab => \adcDacController|Equal4~1_combout\,
	datac => \adcDacController|Equal5~0_combout\,
	datad => \adcDacController|LessThan5~18_combout\,
	combout => \adcDacController|Selector19~2_combout\);

-- Location: LCCOMB_X4_Y3_N20
\adcDacController|Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector19~3_combout\ = (\adcDacController|Selector19~0_combout\) # ((\adcDacController|Selector19~1_combout\) # ((\adcDacController|shaveAndAHaircut.G~q\ & \adcDacController|Selector19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Selector19~0_combout\,
	datab => \adcDacController|Selector19~1_combout\,
	datac => \adcDacController|shaveAndAHaircut.G~q\,
	datad => \adcDacController|Selector19~2_combout\,
	combout => \adcDacController|Selector19~3_combout\);

-- Location: FF_X4_Y3_N21
\adcDacController|shaveAndAHaircut.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|Selector19~3_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	ena => \adcDacController|shaveAndAHaircut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|shaveAndAHaircut.G~q\);

-- Location: LCCOMB_X4_Y3_N6
\adcDacController|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector21~0_combout\ = (\adcDacController|shaveAndAHaircut.C~q\ & (\adcDacController|shaveAndAHaircut.G~q\ & (\adcDacController|Equal5~0_combout\))) # (!\adcDacController|shaveAndAHaircut.C~q\ & ((\adcDacController|Equal2~1_combout\) # 
-- ((\adcDacController|shaveAndAHaircut.G~q\ & \adcDacController|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|shaveAndAHaircut.C~q\,
	datab => \adcDacController|shaveAndAHaircut.G~q\,
	datac => \adcDacController|Equal5~0_combout\,
	datad => \adcDacController|Equal2~1_combout\,
	combout => \adcDacController|Selector21~0_combout\);

-- Location: LCCOMB_X5_Y3_N16
\adcDacController|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector21~1_combout\ = (\adcDacController|Equal8~0_combout\ & (((\adcDacController|noteNum\(2)) # (!\adcDacController|Equal1~0_combout\)) # (!\adcDacController|noteNum\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|noteNum\(3),
	datab => \adcDacController|noteNum\(2),
	datac => \adcDacController|Equal1~0_combout\,
	datad => \adcDacController|Equal8~0_combout\,
	combout => \adcDacController|Selector21~1_combout\);

-- Location: LCCOMB_X4_Y3_N2
\adcDacController|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector21~2_combout\ = (\adcDacController|LessThan5~18_combout\ & ((\adcDacController|Selector21~0_combout\) # ((\adcDacController|Selector21~1_combout\ & \adcDacController|shaveAndAHaircut.Rest~q\)))) # 
-- (!\adcDacController|LessThan5~18_combout\ & (((\adcDacController|shaveAndAHaircut.Rest~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Selector21~0_combout\,
	datab => \adcDacController|Selector21~1_combout\,
	datac => \adcDacController|shaveAndAHaircut.Rest~q\,
	datad => \adcDacController|LessThan5~18_combout\,
	combout => \adcDacController|Selector21~2_combout\);

-- Location: FF_X4_Y3_N3
\adcDacController|shaveAndAHaircut.Rest\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|Selector21~2_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	ena => \adcDacController|shaveAndAHaircut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|shaveAndAHaircut.Rest~q\);

-- Location: LCCOMB_X5_Y3_N18
\adcDacController|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Equal7~0_combout\ = (\adcDacController|noteNum\(3) & (!\adcDacController|noteNum\(2) & \adcDacController|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|noteNum\(3),
	datab => \adcDacController|noteNum\(2),
	datac => \adcDacController|Equal1~0_combout\,
	combout => \adcDacController|Equal7~0_combout\);

-- Location: LCCOMB_X4_Y3_N30
\adcDacController|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector22~0_combout\ = (\adcDacController|shaveAndAHaircut.B~q\ & (((!\adcDacController|LessThan5~18_combout\) # (!\adcDacController|Equal2~0_combout\)) # (!\adcDacController|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Equal4~0_combout\,
	datab => \adcDacController|shaveAndAHaircut.B~q\,
	datac => \adcDacController|Equal2~0_combout\,
	datad => \adcDacController|LessThan5~18_combout\,
	combout => \adcDacController|Selector22~0_combout\);

-- Location: LCCOMB_X4_Y3_N0
\adcDacController|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector22~1_combout\ = (\adcDacController|Selector22~0_combout\) # ((\adcDacController|shaveAndAHaircut.Rest~q\ & (\adcDacController|Equal7~0_combout\ & \adcDacController|LessThan5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|shaveAndAHaircut.Rest~q\,
	datab => \adcDacController|Equal7~0_combout\,
	datac => \adcDacController|Selector22~0_combout\,
	datad => \adcDacController|LessThan5~18_combout\,
	combout => \adcDacController|Selector22~1_combout\);

-- Location: FF_X4_Y3_N1
\adcDacController|shaveAndAHaircut.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|Selector22~1_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	ena => \adcDacController|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|shaveAndAHaircut.B~q\);

-- Location: LCCOMB_X5_Y4_N18
\adcDacController|B4Counter[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|B4Counter[0]~7_combout\ = \adcDacController|B4Counter\(0) $ (VCC)
-- \adcDacController|B4Counter[0]~8\ = CARRY(\adcDacController|B4Counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|B4Counter\(0),
	datad => VCC,
	combout => \adcDacController|B4Counter[0]~7_combout\,
	cout => \adcDacController|B4Counter[0]~8\);

-- Location: LCCOMB_X5_Y4_N26
\adcDacController|B4Counter[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|B4Counter[4]~15_combout\ = (\adcDacController|B4Counter\(4) & (\adcDacController|B4Counter[3]~14\ $ (GND))) # (!\adcDacController|B4Counter\(4) & (!\adcDacController|B4Counter[3]~14\ & VCC))
-- \adcDacController|B4Counter[4]~16\ = CARRY((\adcDacController|B4Counter\(4) & !\adcDacController|B4Counter[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|B4Counter\(4),
	datad => VCC,
	cin => \adcDacController|B4Counter[3]~14\,
	combout => \adcDacController|B4Counter[4]~15_combout\,
	cout => \adcDacController|B4Counter[4]~16\);

-- Location: LCCOMB_X5_Y4_N28
\adcDacController|B4Counter[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|B4Counter[5]~17_combout\ = (\adcDacController|B4Counter\(5) & (!\adcDacController|B4Counter[4]~16\)) # (!\adcDacController|B4Counter\(5) & ((\adcDacController|B4Counter[4]~16\) # (GND)))
-- \adcDacController|B4Counter[5]~18\ = CARRY((!\adcDacController|B4Counter[4]~16\) # (!\adcDacController|B4Counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|B4Counter\(5),
	datad => VCC,
	cin => \adcDacController|B4Counter[4]~16\,
	combout => \adcDacController|B4Counter[5]~17_combout\,
	cout => \adcDacController|B4Counter[5]~18\);

-- Location: FF_X5_Y4_N29
\adcDacController|B4Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|B4Counter[5]~17_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|B4Counter\(5));

-- Location: LCCOMB_X5_Y4_N30
\adcDacController|B4Counter[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|B4Counter[6]~19_combout\ = \adcDacController|B4Counter\(6) $ (!\adcDacController|B4Counter[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|B4Counter\(6),
	cin => \adcDacController|B4Counter[5]~18\,
	combout => \adcDacController|B4Counter[6]~19_combout\);

-- Location: FF_X5_Y4_N31
\adcDacController|B4Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|B4Counter[6]~19_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|B4Counter\(6));

-- Location: LCCOMB_X5_Y4_N6
\adcDacController|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan7~0_combout\ = (\adcDacController|B4Counter\(6) & \adcDacController|B4Counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacController|B4Counter\(6),
	datad => \adcDacController|B4Counter\(5),
	combout => \adcDacController|LessThan7~0_combout\);

-- Location: FF_X5_Y4_N19
\adcDacController|B4Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|B4Counter[0]~7_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|B4Counter\(0));

-- Location: LCCOMB_X5_Y4_N20
\adcDacController|B4Counter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|B4Counter[1]~9_combout\ = (\adcDacController|B4Counter\(1) & (!\adcDacController|B4Counter[0]~8\)) # (!\adcDacController|B4Counter\(1) & ((\adcDacController|B4Counter[0]~8\) # (GND)))
-- \adcDacController|B4Counter[1]~10\ = CARRY((!\adcDacController|B4Counter[0]~8\) # (!\adcDacController|B4Counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|B4Counter\(1),
	datad => VCC,
	cin => \adcDacController|B4Counter[0]~8\,
	combout => \adcDacController|B4Counter[1]~9_combout\,
	cout => \adcDacController|B4Counter[1]~10\);

-- Location: FF_X5_Y4_N21
\adcDacController|B4Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|B4Counter[1]~9_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|B4Counter\(1));

-- Location: LCCOMB_X5_Y4_N22
\adcDacController|B4Counter[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|B4Counter[2]~11_combout\ = (\adcDacController|B4Counter\(2) & (\adcDacController|B4Counter[1]~10\ $ (GND))) # (!\adcDacController|B4Counter\(2) & (!\adcDacController|B4Counter[1]~10\ & VCC))
-- \adcDacController|B4Counter[2]~12\ = CARRY((\adcDacController|B4Counter\(2) & !\adcDacController|B4Counter[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|B4Counter\(2),
	datad => VCC,
	cin => \adcDacController|B4Counter[1]~10\,
	combout => \adcDacController|B4Counter[2]~11_combout\,
	cout => \adcDacController|B4Counter[2]~12\);

-- Location: FF_X5_Y4_N23
\adcDacController|B4Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|B4Counter[2]~11_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|B4Counter\(2));

-- Location: LCCOMB_X5_Y4_N24
\adcDacController|B4Counter[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|B4Counter[3]~13_combout\ = (\adcDacController|B4Counter\(3) & (!\adcDacController|B4Counter[2]~12\)) # (!\adcDacController|B4Counter\(3) & ((\adcDacController|B4Counter[2]~12\) # (GND)))
-- \adcDacController|B4Counter[3]~14\ = CARRY((!\adcDacController|B4Counter[2]~12\) # (!\adcDacController|B4Counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|B4Counter\(3),
	datad => VCC,
	cin => \adcDacController|B4Counter[2]~12\,
	combout => \adcDacController|B4Counter[3]~13_combout\,
	cout => \adcDacController|B4Counter[3]~14\);

-- Location: FF_X5_Y4_N25
\adcDacController|B4Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|B4Counter[3]~13_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|B4Counter\(3));

-- Location: FF_X5_Y4_N27
\adcDacController|B4Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|B4Counter[4]~15_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|B4Counter\(4));

-- Location: LCCOMB_X5_Y4_N2
\adcDacController|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux14~0_combout\ = (\adcDacController|B4Counter\(1)) # ((\adcDacController|B4Counter\(0)) # ((\adcDacController|B4Counter\(2)) # (\adcDacController|B4Counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|B4Counter\(1),
	datab => \adcDacController|B4Counter\(0),
	datac => \adcDacController|B4Counter\(2),
	datad => \adcDacController|B4Counter\(3),
	combout => \adcDacController|Mux14~0_combout\);

-- Location: LCCOMB_X5_Y4_N4
\adcDacController|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux14~1_combout\ = (\adcDacController|B4Counter\(6)) # ((\adcDacController|B4Counter\(4) & (\adcDacController|B4Counter\(5) & \adcDacController|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|B4Counter\(4),
	datab => \adcDacController|B4Counter\(5),
	datac => \adcDacController|B4Counter\(6),
	datad => \adcDacController|Mux14~0_combout\,
	combout => \adcDacController|Mux14~1_combout\);

-- Location: LCCOMB_X4_Y4_N18
\adcDacController|C5Counter[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|C5Counter[0]~7_combout\ = \adcDacController|C5Counter\(0) $ (VCC)
-- \adcDacController|C5Counter[0]~8\ = CARRY(\adcDacController|C5Counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|C5Counter\(0),
	datad => VCC,
	combout => \adcDacController|C5Counter[0]~7_combout\,
	cout => \adcDacController|C5Counter[0]~8\);

-- Location: LCCOMB_X4_Y4_N22
\adcDacController|C5Counter[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|C5Counter[2]~11_combout\ = (\adcDacController|C5Counter\(2) & (\adcDacController|C5Counter[1]~10\ $ (GND))) # (!\adcDacController|C5Counter\(2) & (!\adcDacController|C5Counter[1]~10\ & VCC))
-- \adcDacController|C5Counter[2]~12\ = CARRY((\adcDacController|C5Counter\(2) & !\adcDacController|C5Counter[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|C5Counter\(2),
	datad => VCC,
	cin => \adcDacController|C5Counter[1]~10\,
	combout => \adcDacController|C5Counter[2]~11_combout\,
	cout => \adcDacController|C5Counter[2]~12\);

-- Location: LCCOMB_X4_Y4_N24
\adcDacController|C5Counter[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|C5Counter[3]~13_combout\ = (\adcDacController|C5Counter\(3) & (!\adcDacController|C5Counter[2]~12\)) # (!\adcDacController|C5Counter\(3) & ((\adcDacController|C5Counter[2]~12\) # (GND)))
-- \adcDacController|C5Counter[3]~14\ = CARRY((!\adcDacController|C5Counter[2]~12\) # (!\adcDacController|C5Counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|C5Counter\(3),
	datad => VCC,
	cin => \adcDacController|C5Counter[2]~12\,
	combout => \adcDacController|C5Counter[3]~13_combout\,
	cout => \adcDacController|C5Counter[3]~14\);

-- Location: FF_X4_Y4_N25
\adcDacController|C5Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|C5Counter[3]~13_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|C5Counter\(3));

-- Location: LCCOMB_X4_Y4_N26
\adcDacController|C5Counter[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|C5Counter[4]~15_combout\ = (\adcDacController|C5Counter\(4) & (\adcDacController|C5Counter[3]~14\ $ (GND))) # (!\adcDacController|C5Counter\(4) & (!\adcDacController|C5Counter[3]~14\ & VCC))
-- \adcDacController|C5Counter[4]~16\ = CARRY((\adcDacController|C5Counter\(4) & !\adcDacController|C5Counter[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|C5Counter\(4),
	datad => VCC,
	cin => \adcDacController|C5Counter[3]~14\,
	combout => \adcDacController|C5Counter[4]~15_combout\,
	cout => \adcDacController|C5Counter[4]~16\);

-- Location: FF_X4_Y4_N27
\adcDacController|C5Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|C5Counter[4]~15_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|C5Counter\(4));

-- Location: LCCOMB_X4_Y4_N28
\adcDacController|C5Counter[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|C5Counter[5]~17_combout\ = (\adcDacController|C5Counter\(5) & (!\adcDacController|C5Counter[4]~16\)) # (!\adcDacController|C5Counter\(5) & ((\adcDacController|C5Counter[4]~16\) # (GND)))
-- \adcDacController|C5Counter[5]~18\ = CARRY((!\adcDacController|C5Counter[4]~16\) # (!\adcDacController|C5Counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|C5Counter\(5),
	datad => VCC,
	cin => \adcDacController|C5Counter[4]~16\,
	combout => \adcDacController|C5Counter[5]~17_combout\,
	cout => \adcDacController|C5Counter[5]~18\);

-- Location: FF_X4_Y4_N29
\adcDacController|C5Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|C5Counter[5]~17_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|C5Counter\(5));

-- Location: LCCOMB_X4_Y4_N30
\adcDacController|C5Counter[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|C5Counter[6]~19_combout\ = \adcDacController|C5Counter\(6) $ (!\adcDacController|C5Counter[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|C5Counter\(6),
	cin => \adcDacController|C5Counter[5]~18\,
	combout => \adcDacController|C5Counter[6]~19_combout\);

-- Location: FF_X4_Y4_N31
\adcDacController|C5Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|C5Counter[6]~19_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|C5Counter\(6));

-- Location: LCCOMB_X4_Y4_N16
\adcDacController|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan6~0_combout\ = ((!\adcDacController|C5Counter\(2) & ((!\adcDacController|C5Counter\(0)) # (!\adcDacController|C5Counter\(1))))) # (!\adcDacController|C5Counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|C5Counter\(1),
	datab => \adcDacController|C5Counter\(0),
	datac => \adcDacController|C5Counter\(2),
	datad => \adcDacController|C5Counter\(3),
	combout => \adcDacController|LessThan6~0_combout\);

-- Location: LCCOMB_X4_Y4_N0
\adcDacController|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan6~1_combout\ = (\adcDacController|C5Counter\(6) & ((\adcDacController|C5Counter\(5)) # ((\adcDacController|C5Counter\(4) & !\adcDacController|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|C5Counter\(4),
	datab => \adcDacController|C5Counter\(5),
	datac => \adcDacController|C5Counter\(6),
	datad => \adcDacController|LessThan6~0_combout\,
	combout => \adcDacController|LessThan6~1_combout\);

-- Location: FF_X4_Y4_N19
\adcDacController|C5Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|C5Counter[0]~7_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|C5Counter\(0));

-- Location: LCCOMB_X4_Y4_N20
\adcDacController|C5Counter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|C5Counter[1]~9_combout\ = (\adcDacController|C5Counter\(1) & (!\adcDacController|C5Counter[0]~8\)) # (!\adcDacController|C5Counter\(1) & ((\adcDacController|C5Counter[0]~8\) # (GND)))
-- \adcDacController|C5Counter[1]~10\ = CARRY((!\adcDacController|C5Counter[0]~8\) # (!\adcDacController|C5Counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|C5Counter\(1),
	datad => VCC,
	cin => \adcDacController|C5Counter[0]~8\,
	combout => \adcDacController|C5Counter[1]~9_combout\,
	cout => \adcDacController|C5Counter[1]~10\);

-- Location: FF_X4_Y4_N21
\adcDacController|C5Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|C5Counter[1]~9_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|C5Counter\(1));

-- Location: FF_X4_Y4_N23
\adcDacController|C5Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|C5Counter[2]~11_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|C5Counter\(2));

-- Location: LCCOMB_X4_Y4_N10
\adcDacController|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux2~0_combout\ = (\adcDacController|C5Counter\(4)) # ((\adcDacController|C5Counter\(2) & (\adcDacController|C5Counter\(1) & \adcDacController|C5Counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|C5Counter\(2),
	datab => \adcDacController|C5Counter\(1),
	datac => \adcDacController|C5Counter\(4),
	datad => \adcDacController|C5Counter\(3),
	combout => \adcDacController|Mux2~0_combout\);

-- Location: LCCOMB_X4_Y4_N14
\adcDacController|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector0~0_combout\ = (!\adcDacController|shaveAndAHaircut.C~q\ & ((\adcDacController|C5Counter\(6)) # ((\adcDacController|Mux2~0_combout\ & \adcDacController|C5Counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Mux2~0_combout\,
	datab => \adcDacController|C5Counter\(5),
	datac => \adcDacController|C5Counter\(6),
	datad => \adcDacController|shaveAndAHaircut.C~q\,
	combout => \adcDacController|Selector0~0_combout\);

-- Location: LCCOMB_X7_Y4_N4
\adcDacController|G4Counter[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|G4Counter[0]~7_combout\ = \adcDacController|G4Counter\(0) $ (VCC)
-- \adcDacController|G4Counter[0]~8\ = CARRY(\adcDacController|G4Counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|G4Counter\(0),
	datad => VCC,
	combout => \adcDacController|G4Counter[0]~7_combout\,
	cout => \adcDacController|G4Counter[0]~8\);

-- Location: LCCOMB_X7_Y4_N12
\adcDacController|G4Counter[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|G4Counter[4]~15_combout\ = (\adcDacController|G4Counter\(4) & (\adcDacController|G4Counter[3]~14\ $ (GND))) # (!\adcDacController|G4Counter\(4) & (!\adcDacController|G4Counter[3]~14\ & VCC))
-- \adcDacController|G4Counter[4]~16\ = CARRY((\adcDacController|G4Counter\(4) & !\adcDacController|G4Counter[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|G4Counter\(4),
	datad => VCC,
	cin => \adcDacController|G4Counter[3]~14\,
	combout => \adcDacController|G4Counter[4]~15_combout\,
	cout => \adcDacController|G4Counter[4]~16\);

-- Location: LCCOMB_X7_Y4_N14
\adcDacController|G4Counter[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|G4Counter[5]~17_combout\ = (\adcDacController|G4Counter\(5) & (!\adcDacController|G4Counter[4]~16\)) # (!\adcDacController|G4Counter\(5) & ((\adcDacController|G4Counter[4]~16\) # (GND)))
-- \adcDacController|G4Counter[5]~18\ = CARRY((!\adcDacController|G4Counter[4]~16\) # (!\adcDacController|G4Counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|G4Counter\(5),
	datad => VCC,
	cin => \adcDacController|G4Counter[4]~16\,
	combout => \adcDacController|G4Counter[5]~17_combout\,
	cout => \adcDacController|G4Counter[5]~18\);

-- Location: FF_X7_Y4_N15
\adcDacController|G4Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|G4Counter[5]~17_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|G4Counter\(5));

-- Location: LCCOMB_X7_Y4_N16
\adcDacController|G4Counter[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|G4Counter[6]~19_combout\ = \adcDacController|G4Counter[5]~18\ $ (!\adcDacController|G4Counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adcDacController|G4Counter\(6),
	cin => \adcDacController|G4Counter[5]~18\,
	combout => \adcDacController|G4Counter[6]~19_combout\);

-- Location: FF_X7_Y4_N17
\adcDacController|G4Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|G4Counter[6]~19_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|G4Counter\(6));

-- Location: LCCOMB_X7_Y4_N24
\adcDacController|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan9~0_combout\ = ((!\adcDacController|G4Counter\(1) & (!\adcDacController|G4Counter\(0) & !\adcDacController|G4Counter\(2)))) # (!\adcDacController|G4Counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|G4Counter\(1),
	datab => \adcDacController|G4Counter\(0),
	datac => \adcDacController|G4Counter\(2),
	datad => \adcDacController|G4Counter\(3),
	combout => \adcDacController|LessThan9~0_combout\);

-- Location: LCCOMB_X7_Y4_N22
\adcDacController|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan9~1_combout\ = (\adcDacController|G4Counter\(4) & (\adcDacController|G4Counter\(6) & (\adcDacController|G4Counter\(5) & !\adcDacController|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|G4Counter\(4),
	datab => \adcDacController|G4Counter\(6),
	datac => \adcDacController|G4Counter\(5),
	datad => \adcDacController|LessThan9~0_combout\,
	combout => \adcDacController|LessThan9~1_combout\);

-- Location: FF_X7_Y4_N5
\adcDacController|G4Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|G4Counter[0]~7_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|G4Counter\(0));

-- Location: LCCOMB_X7_Y4_N6
\adcDacController|G4Counter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|G4Counter[1]~9_combout\ = (\adcDacController|G4Counter\(1) & (!\adcDacController|G4Counter[0]~8\)) # (!\adcDacController|G4Counter\(1) & ((\adcDacController|G4Counter[0]~8\) # (GND)))
-- \adcDacController|G4Counter[1]~10\ = CARRY((!\adcDacController|G4Counter[0]~8\) # (!\adcDacController|G4Counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|G4Counter\(1),
	datad => VCC,
	cin => \adcDacController|G4Counter[0]~8\,
	combout => \adcDacController|G4Counter[1]~9_combout\,
	cout => \adcDacController|G4Counter[1]~10\);

-- Location: FF_X7_Y4_N7
\adcDacController|G4Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|G4Counter[1]~9_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|G4Counter\(1));

-- Location: LCCOMB_X7_Y4_N8
\adcDacController|G4Counter[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|G4Counter[2]~11_combout\ = (\adcDacController|G4Counter\(2) & (\adcDacController|G4Counter[1]~10\ $ (GND))) # (!\adcDacController|G4Counter\(2) & (!\adcDacController|G4Counter[1]~10\ & VCC))
-- \adcDacController|G4Counter[2]~12\ = CARRY((\adcDacController|G4Counter\(2) & !\adcDacController|G4Counter[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|G4Counter\(2),
	datad => VCC,
	cin => \adcDacController|G4Counter[1]~10\,
	combout => \adcDacController|G4Counter[2]~11_combout\,
	cout => \adcDacController|G4Counter[2]~12\);

-- Location: FF_X7_Y4_N9
\adcDacController|G4Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|G4Counter[2]~11_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|G4Counter\(2));

-- Location: LCCOMB_X7_Y4_N10
\adcDacController|G4Counter[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|G4Counter[3]~13_combout\ = (\adcDacController|G4Counter\(3) & (!\adcDacController|G4Counter[2]~12\)) # (!\adcDacController|G4Counter\(3) & ((\adcDacController|G4Counter[2]~12\) # (GND)))
-- \adcDacController|G4Counter[3]~14\ = CARRY((!\adcDacController|G4Counter[2]~12\) # (!\adcDacController|G4Counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|G4Counter\(3),
	datad => VCC,
	cin => \adcDacController|G4Counter[2]~12\,
	combout => \adcDacController|G4Counter[3]~13_combout\,
	cout => \adcDacController|G4Counter[3]~14\);

-- Location: FF_X7_Y4_N11
\adcDacController|G4Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|G4Counter[3]~13_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|G4Counter\(3));

-- Location: FF_X7_Y4_N13
\adcDacController|G4Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|G4Counter[4]~15_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|G4Counter\(4));

-- Location: LCCOMB_X7_Y4_N20
\adcDacController|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux38~0_combout\ = (\adcDacController|G4Counter\(2) & (\adcDacController|G4Counter\(3) & ((\adcDacController|G4Counter\(1)) # (\adcDacController|G4Counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|G4Counter\(1),
	datab => \adcDacController|G4Counter\(0),
	datac => \adcDacController|G4Counter\(2),
	datad => \adcDacController|G4Counter\(3),
	combout => \adcDacController|Mux38~0_combout\);

-- Location: LCCOMB_X7_Y4_N2
\adcDacController|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux38~1_combout\ = (\adcDacController|G4Counter\(6)) # ((\adcDacController|G4Counter\(4) & (\adcDacController|G4Counter\(5) & \adcDacController|Mux38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|G4Counter\(4),
	datab => \adcDacController|G4Counter\(6),
	datac => \adcDacController|G4Counter\(5),
	datad => \adcDacController|Mux38~0_combout\,
	combout => \adcDacController|Mux38~1_combout\);

-- Location: LCCOMB_X3_Y4_N8
\adcDacController|GSharp4Counter[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|GSharp4Counter[0]~7_combout\ = \adcDacController|GSharp4Counter\(0) $ (VCC)
-- \adcDacController|GSharp4Counter[0]~8\ = CARRY(\adcDacController|GSharp4Counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|GSharp4Counter\(0),
	datad => VCC,
	combout => \adcDacController|GSharp4Counter[0]~7_combout\,
	cout => \adcDacController|GSharp4Counter[0]~8\);

-- Location: LCCOMB_X3_Y4_N2
\adcDacController|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan8~0_combout\ = (!\adcDacController|GSharp4Counter\(2) & (!\adcDacController|GSharp4Counter\(3) & ((!\adcDacController|GSharp4Counter\(1)) # (!\adcDacController|GSharp4Counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|GSharp4Counter\(2),
	datab => \adcDacController|GSharp4Counter\(3),
	datac => \adcDacController|GSharp4Counter\(0),
	datad => \adcDacController|GSharp4Counter\(1),
	combout => \adcDacController|LessThan8~0_combout\);

-- Location: LCCOMB_X3_Y4_N26
\adcDacController|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|LessThan8~1_combout\ = (\adcDacController|GSharp4Counter\(4) & (\adcDacController|GSharp4Counter\(6) & (\adcDacController|GSharp4Counter\(5) & !\adcDacController|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|GSharp4Counter\(4),
	datab => \adcDacController|GSharp4Counter\(6),
	datac => \adcDacController|GSharp4Counter\(5),
	datad => \adcDacController|LessThan8~0_combout\,
	combout => \adcDacController|LessThan8~1_combout\);

-- Location: FF_X3_Y4_N9
\adcDacController|GSharp4Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|GSharp4Counter[0]~7_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|GSharp4Counter\(0));

-- Location: LCCOMB_X3_Y4_N10
\adcDacController|GSharp4Counter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|GSharp4Counter[1]~9_combout\ = (\adcDacController|GSharp4Counter\(1) & (!\adcDacController|GSharp4Counter[0]~8\)) # (!\adcDacController|GSharp4Counter\(1) & ((\adcDacController|GSharp4Counter[0]~8\) # (GND)))
-- \adcDacController|GSharp4Counter[1]~10\ = CARRY((!\adcDacController|GSharp4Counter[0]~8\) # (!\adcDacController|GSharp4Counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|GSharp4Counter\(1),
	datad => VCC,
	cin => \adcDacController|GSharp4Counter[0]~8\,
	combout => \adcDacController|GSharp4Counter[1]~9_combout\,
	cout => \adcDacController|GSharp4Counter[1]~10\);

-- Location: FF_X3_Y4_N11
\adcDacController|GSharp4Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|GSharp4Counter[1]~9_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|GSharp4Counter\(1));

-- Location: LCCOMB_X3_Y4_N12
\adcDacController|GSharp4Counter[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|GSharp4Counter[2]~11_combout\ = (\adcDacController|GSharp4Counter\(2) & (\adcDacController|GSharp4Counter[1]~10\ $ (GND))) # (!\adcDacController|GSharp4Counter\(2) & (!\adcDacController|GSharp4Counter[1]~10\ & VCC))
-- \adcDacController|GSharp4Counter[2]~12\ = CARRY((\adcDacController|GSharp4Counter\(2) & !\adcDacController|GSharp4Counter[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|GSharp4Counter\(2),
	datad => VCC,
	cin => \adcDacController|GSharp4Counter[1]~10\,
	combout => \adcDacController|GSharp4Counter[2]~11_combout\,
	cout => \adcDacController|GSharp4Counter[2]~12\);

-- Location: FF_X3_Y4_N13
\adcDacController|GSharp4Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|GSharp4Counter[2]~11_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|GSharp4Counter\(2));

-- Location: LCCOMB_X3_Y4_N14
\adcDacController|GSharp4Counter[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|GSharp4Counter[3]~13_combout\ = (\adcDacController|GSharp4Counter\(3) & (!\adcDacController|GSharp4Counter[2]~12\)) # (!\adcDacController|GSharp4Counter\(3) & ((\adcDacController|GSharp4Counter[2]~12\) # (GND)))
-- \adcDacController|GSharp4Counter[3]~14\ = CARRY((!\adcDacController|GSharp4Counter[2]~12\) # (!\adcDacController|GSharp4Counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|GSharp4Counter\(3),
	datad => VCC,
	cin => \adcDacController|GSharp4Counter[2]~12\,
	combout => \adcDacController|GSharp4Counter[3]~13_combout\,
	cout => \adcDacController|GSharp4Counter[3]~14\);

-- Location: FF_X3_Y4_N15
\adcDacController|GSharp4Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|GSharp4Counter[3]~13_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|GSharp4Counter\(3));

-- Location: LCCOMB_X3_Y4_N16
\adcDacController|GSharp4Counter[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|GSharp4Counter[4]~15_combout\ = (\adcDacController|GSharp4Counter\(4) & (\adcDacController|GSharp4Counter[3]~14\ $ (GND))) # (!\adcDacController|GSharp4Counter\(4) & (!\adcDacController|GSharp4Counter[3]~14\ & VCC))
-- \adcDacController|GSharp4Counter[4]~16\ = CARRY((\adcDacController|GSharp4Counter\(4) & !\adcDacController|GSharp4Counter[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|GSharp4Counter\(4),
	datad => VCC,
	cin => \adcDacController|GSharp4Counter[3]~14\,
	combout => \adcDacController|GSharp4Counter[4]~15_combout\,
	cout => \adcDacController|GSharp4Counter[4]~16\);

-- Location: FF_X3_Y4_N17
\adcDacController|GSharp4Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|GSharp4Counter[4]~15_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|GSharp4Counter\(4));

-- Location: LCCOMB_X3_Y4_N18
\adcDacController|GSharp4Counter[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|GSharp4Counter[5]~17_combout\ = (\adcDacController|GSharp4Counter\(5) & (!\adcDacController|GSharp4Counter[4]~16\)) # (!\adcDacController|GSharp4Counter\(5) & ((\adcDacController|GSharp4Counter[4]~16\) # (GND)))
-- \adcDacController|GSharp4Counter[5]~18\ = CARRY((!\adcDacController|GSharp4Counter[4]~16\) # (!\adcDacController|GSharp4Counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|GSharp4Counter\(5),
	datad => VCC,
	cin => \adcDacController|GSharp4Counter[4]~16\,
	combout => \adcDacController|GSharp4Counter[5]~17_combout\,
	cout => \adcDacController|GSharp4Counter[5]~18\);

-- Location: FF_X3_Y4_N19
\adcDacController|GSharp4Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|GSharp4Counter[5]~17_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|GSharp4Counter\(5));

-- Location: LCCOMB_X3_Y4_N20
\adcDacController|GSharp4Counter[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|GSharp4Counter[6]~19_combout\ = \adcDacController|GSharp4Counter[5]~18\ $ (!\adcDacController|GSharp4Counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adcDacController|GSharp4Counter\(6),
	cin => \adcDacController|GSharp4Counter[5]~18\,
	combout => \adcDacController|GSharp4Counter[6]~19_combout\);

-- Location: FF_X3_Y4_N21
\adcDacController|GSharp4Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|GSharp4Counter[6]~19_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	sclr => \adcDacController|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|GSharp4Counter\(6));

-- Location: LCCOMB_X3_Y4_N28
\adcDacController|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux26~0_combout\ = (\adcDacController|GSharp4Counter\(4) & (\adcDacController|GSharp4Counter\(3) & ((\adcDacController|GSharp4Counter\(2)) # (\adcDacController|GSharp4Counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|GSharp4Counter\(2),
	datab => \adcDacController|GSharp4Counter\(4),
	datac => \adcDacController|GSharp4Counter\(3),
	datad => \adcDacController|GSharp4Counter\(1),
	combout => \adcDacController|Mux26~0_combout\);

-- Location: LCCOMB_X3_Y4_N24
\adcDacController|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector0~1_combout\ = (\adcDacController|GSharp4Counter\(6)) # ((\adcDacController|GSharp4Counter\(5) & \adcDacController|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|GSharp4Counter\(6),
	datac => \adcDacController|GSharp4Counter\(5),
	datad => \adcDacController|Mux26~0_combout\,
	combout => \adcDacController|Selector0~1_combout\);

-- Location: LCCOMB_X7_Y4_N28
\adcDacController|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector0~2_combout\ = (\adcDacController|shaveAndAHaircut.GSharp~q\ & ((\adcDacController|Selector0~1_combout\) # ((\adcDacController|Mux38~1_combout\ & \adcDacController|shaveAndAHaircut.G~q\)))) # 
-- (!\adcDacController|shaveAndAHaircut.GSharp~q\ & (\adcDacController|Mux38~1_combout\ & (\adcDacController|shaveAndAHaircut.G~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|shaveAndAHaircut.GSharp~q\,
	datab => \adcDacController|Mux38~1_combout\,
	datac => \adcDacController|shaveAndAHaircut.G~q\,
	datad => \adcDacController|Selector0~1_combout\,
	combout => \adcDacController|Selector0~2_combout\);

-- Location: LCCOMB_X7_Y4_N30
\adcDacController|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector0~3_combout\ = (\adcDacController|Selector0~0_combout\) # ((\adcDacController|Selector0~2_combout\) # ((\adcDacController|shaveAndAHaircut.B~q\ & \adcDacController|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|shaveAndAHaircut.B~q\,
	datab => \adcDacController|Mux14~1_combout\,
	datac => \adcDacController|Selector0~0_combout\,
	datad => \adcDacController|Selector0~2_combout\,
	combout => \adcDacController|Selector0~3_combout\);

-- Location: LCCOMB_X8_Y3_N24
\adcDacController|signalValue[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|signalValue[12]~0_combout\ = (\adcDacController|LRCounter\(1) & (\adcDacControllerStartDelay|resetAdc~q\ & \adcDacController|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LRCounter\(1),
	datab => \adcDacControllerStartDelay|resetAdc~q\,
	datad => \adcDacController|Equal0~0_combout\,
	combout => \adcDacController|signalValue[12]~0_combout\);

-- Location: FF_X8_Y3_N25
\adcDacController|signalValue[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	asdata => \adcDacController|Selector0~3_combout\,
	sload => VCC,
	ena => \adcDacController|signalValue[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|signalValue\(10));

-- Location: IOIBUF_X9_Y0_N1
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X8_Y1_N24
\adcDacController|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|process_2~0_combout\ = (!\SW[9]~input_o\ & \SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \adcDacController|process_2~0_combout\);

-- Location: LCCOMB_X8_Y3_N30
\adcDacController|signalValue[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|signalValue[15]~1_combout\ = !\adcDacController|Selector0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adcDacController|Selector0~3_combout\,
	combout => \adcDacController|signalValue[15]~1_combout\);

-- Location: FF_X8_Y3_N31
\adcDacController|signalValue[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|signalValue[15]~1_combout\,
	ena => \adcDacController|signalValue[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|signalValue\(15));

-- Location: LCCOMB_X4_Y4_N8
\adcDacController|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector1~0_combout\ = (\adcDacController|shaveAndAHaircut.B~q\ & !\adcDacController|Mux14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|shaveAndAHaircut.B~q\,
	datad => \adcDacController|Mux14~1_combout\,
	combout => \adcDacController|Selector1~0_combout\);

-- Location: LCCOMB_X4_Y4_N12
\adcDacController|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector1~2_combout\ = (!\adcDacController|C5Counter\(6) & ((!\adcDacController|Mux2~0_combout\) # (!\adcDacController|C5Counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|C5Counter\(5),
	datac => \adcDacController|C5Counter\(6),
	datad => \adcDacController|Mux2~0_combout\,
	combout => \adcDacController|Selector1~2_combout\);

-- Location: LCCOMB_X3_Y4_N6
\adcDacController|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector1~1_combout\ = (!\adcDacController|GSharp4Counter\(6) & ((!\adcDacController|Mux26~0_combout\) # (!\adcDacController|GSharp4Counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|GSharp4Counter\(6),
	datac => \adcDacController|GSharp4Counter\(5),
	datad => \adcDacController|Mux26~0_combout\,
	combout => \adcDacController|Selector1~1_combout\);

-- Location: LCCOMB_X4_Y4_N2
\adcDacController|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector1~3_combout\ = (\adcDacController|Selector1~2_combout\ & (((\adcDacController|Selector1~1_combout\ & \adcDacController|shaveAndAHaircut.GSharp~q\)) # (!\adcDacController|shaveAndAHaircut.C~q\))) # 
-- (!\adcDacController|Selector1~2_combout\ & (((\adcDacController|Selector1~1_combout\ & \adcDacController|shaveAndAHaircut.GSharp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Selector1~2_combout\,
	datab => \adcDacController|shaveAndAHaircut.C~q\,
	datac => \adcDacController|Selector1~1_combout\,
	datad => \adcDacController|shaveAndAHaircut.GSharp~q\,
	combout => \adcDacController|Selector1~3_combout\);

-- Location: LCCOMB_X4_Y4_N6
\adcDacController|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Selector1~4_combout\ = (\adcDacController|Selector1~0_combout\) # ((\adcDacController|Selector1~3_combout\) # ((\adcDacController|shaveAndAHaircut.G~q\ & !\adcDacController|Mux38~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|shaveAndAHaircut.G~q\,
	datab => \adcDacController|Mux38~1_combout\,
	datac => \adcDacController|Selector1~0_combout\,
	datad => \adcDacController|Selector1~3_combout\,
	combout => \adcDacController|Selector1~4_combout\);

-- Location: FF_X8_Y3_N17
\adcDacController|signalValue[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	asdata => \adcDacController|Selector1~4_combout\,
	sload => VCC,
	ena => \adcDacController|signalValue[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|signalValue\(11));

-- Location: LCCOMB_X8_Y3_N6
\adcDacController|signalValue[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|signalValue[0]~2_combout\ = !\adcDacController|shaveAndAHaircut.Rest~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacController|shaveAndAHaircut.Rest~q\,
	combout => \adcDacController|signalValue[0]~2_combout\);

-- Location: FF_X8_Y3_N7
\adcDacController|signalValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|signalValue[0]~2_combout\,
	ena => \adcDacController|signalValue[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|signalValue\(0));

-- Location: LCCOMB_X8_Y3_N16
\adcDacController|Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Add5~1_combout\ = (!\adcDacController|signalValue\(15) & (((!\adcDacController|signalValue\(0)) # (!\adcDacController|signalValue\(11))) # (!\adcDacController|signalValue\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(15),
	datab => \adcDacController|signalValue\(10),
	datac => \adcDacController|signalValue\(11),
	datad => \adcDacController|signalValue\(0),
	combout => \adcDacController|Add5~1_combout\);

-- Location: LCCOMB_X9_Y3_N0
\adcDacController|leftChannelOut[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[14]~3_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~1_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(10),
	datab => \adcDacController|process_2~0_combout\,
	datad => \adcDacController|Add5~1_combout\,
	combout => \adcDacController|leftChannelOut[14]~3_combout\);

-- Location: LCCOMB_X10_Y4_N24
\adcDacController|leftChannel[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannel[10]~feeder_combout\ = \adcDacController|Selector0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adcDacController|Selector0~3_combout\,
	combout => \adcDacController|leftChannel[10]~feeder_combout\);

-- Location: FF_X10_Y4_N25
\adcDacController|leftChannel[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|leftChannel[10]~feeder_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	ena => \adcDacController|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannel\(10));

-- Location: LCCOMB_X8_Y1_N10
\adcDacController|leftChannelOut~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut~15_combout\ = \SW[9]~input_o\ $ (!\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \adcDacController|leftChannelOut~15_combout\);

-- Location: FF_X9_Y3_N1
\adcDacController|leftChannelOut[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[14]~3_combout\,
	asdata => \adcDacController|leftChannel\(10),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(14));

-- Location: LCCOMB_X9_Y3_N18
\adcDacController|rightOutCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|rightOutCounter~3_combout\ = (!\adcDacController|rightOutCounter\(0) & \adcDacController|LRCounter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacController|rightOutCounter\(0),
	datad => \adcDacController|LRCounter\(4),
	combout => \adcDacController|rightOutCounter~3_combout\);

-- Location: FF_X9_Y3_N19
\adcDacController|rightOutCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|rightOutCounter~3_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|rightOutCounter\(0));

-- Location: LCCOMB_X9_Y3_N8
\adcDacController|rightOutCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|rightOutCounter~2_combout\ = (\adcDacController|LRCounter\(4) & (\adcDacController|rightOutCounter\(0) $ (\adcDacController|rightOutCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|rightOutCounter\(0),
	datac => \adcDacController|rightOutCounter\(1),
	datad => \adcDacController|LRCounter\(4),
	combout => \adcDacController|rightOutCounter~2_combout\);

-- Location: FF_X9_Y3_N9
\adcDacController|rightOutCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|rightOutCounter~2_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|rightOutCounter\(1));

-- Location: LCCOMB_X8_Y4_N30
\adcDacController|rightOutCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|rightOutCounter~1_combout\ = (\adcDacController|LRCounter\(4) & (\adcDacController|rightOutCounter\(2) $ (((\adcDacController|rightOutCounter\(1) & \adcDacController|rightOutCounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|LRCounter\(4),
	datab => \adcDacController|rightOutCounter\(1),
	datac => \adcDacController|rightOutCounter\(2),
	datad => \adcDacController|rightOutCounter\(0),
	combout => \adcDacController|rightOutCounter~1_combout\);

-- Location: FF_X8_Y4_N31
\adcDacController|rightOutCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|rightOutCounter~1_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|rightOutCounter\(2));

-- Location: LCCOMB_X8_Y3_N12
\adcDacController|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Add5~0_combout\ = (\adcDacController|signalValue\(11) & (((\adcDacController|signalValue\(15)) # (!\adcDacController|signalValue\(10))) # (!\adcDacController|signalValue\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(0),
	datab => \adcDacController|signalValue\(10),
	datac => \adcDacController|signalValue\(15),
	datad => \adcDacController|signalValue\(11),
	combout => \adcDacController|Add5~0_combout\);

-- Location: LCCOMB_X8_Y4_N18
\adcDacController|leftChannelOut[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[2]~2_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~0_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(11),
	datab => \adcDacController|process_2~0_combout\,
	datad => \adcDacController|Add5~0_combout\,
	combout => \adcDacController|leftChannelOut[2]~2_combout\);

-- Location: FF_X8_Y4_N19
\adcDacController|leftChannelOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[2]~2_combout\,
	asdata => \adcDacController|leftChannel\(10),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(2));

-- Location: LCCOMB_X9_Y3_N24
\adcDacController|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Add3~0_combout\ = \adcDacController|rightOutCounter\(3) $ (((\adcDacController|rightOutCounter\(1) & (\adcDacController|rightOutCounter\(0) & \adcDacController|rightOutCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|rightOutCounter\(1),
	datab => \adcDacController|rightOutCounter\(0),
	datac => \adcDacController|rightOutCounter\(2),
	datad => \adcDacController|rightOutCounter\(3),
	combout => \adcDacController|Add3~0_combout\);

-- Location: LCCOMB_X8_Y4_N8
\adcDacController|rightOutCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|rightOutCounter~0_combout\ = (\adcDacController|LRCounter\(4) & \adcDacController|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacController|LRCounter\(4),
	datad => \adcDacController|Add3~0_combout\,
	combout => \adcDacController|rightOutCounter~0_combout\);

-- Location: FF_X8_Y4_N9
\adcDacController|rightOutCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|rightOutCounter~0_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|rightOutCounter\(3));

-- Location: LCCOMB_X9_Y4_N16
\adcDacController|leftChannelOut[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[6]~1_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~0_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|process_2~0_combout\,
	datab => \adcDacController|signalValue\(11),
	datad => \adcDacController|Add5~0_combout\,
	combout => \adcDacController|leftChannelOut[6]~1_combout\);

-- Location: FF_X9_Y4_N17
\adcDacController|leftChannelOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[6]~1_combout\,
	asdata => \adcDacController|leftChannel\(10),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(6));

-- Location: LCCOMB_X8_Y4_N0
\adcDacController|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux1~0_combout\ = (\adcDacController|rightOutCounter\(2) & (\adcDacController|leftChannelOut\(2) & (\adcDacController|rightOutCounter\(3)))) # (!\adcDacController|rightOutCounter\(2) & (((\adcDacController|leftChannelOut\(6)) # 
-- (!\adcDacController|rightOutCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|rightOutCounter\(2),
	datab => \adcDacController|leftChannelOut\(2),
	datac => \adcDacController|rightOutCounter\(3),
	datad => \adcDacController|leftChannelOut\(6),
	combout => \adcDacController|Mux1~0_combout\);

-- Location: LCCOMB_X8_Y4_N24
\adcDacController|leftChannelOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[10]~0_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~0_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(11),
	datab => \adcDacController|process_2~0_combout\,
	datad => \adcDacController|Add5~0_combout\,
	combout => \adcDacController|leftChannelOut[10]~0_combout\);

-- Location: FF_X8_Y4_N25
\adcDacController|leftChannelOut[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[10]~0_combout\,
	asdata => \adcDacController|leftChannel\(10),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(10));

-- Location: LCCOMB_X8_Y4_N26
\adcDacController|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux1~1_combout\ = (\adcDacController|Mux1~0_combout\ & ((\adcDacController|leftChannelOut\(14)) # ((\adcDacController|rightOutCounter\(3))))) # (!\adcDacController|Mux1~0_combout\ & (((!\adcDacController|rightOutCounter\(3) & 
-- \adcDacController|leftChannelOut\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftChannelOut\(14),
	datab => \adcDacController|Mux1~0_combout\,
	datac => \adcDacController|rightOutCounter\(3),
	datad => \adcDacController|leftChannelOut\(10),
	combout => \adcDacController|Mux1~1_combout\);

-- Location: LCCOMB_X8_Y3_N2
\adcDacController|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Add5~2_combout\ = (\adcDacController|signalValue\(10) & (((\adcDacController|signalValue\(15)) # (!\adcDacController|signalValue\(11))) # (!\adcDacController|signalValue\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(0),
	datab => \adcDacController|signalValue\(11),
	datac => \adcDacController|signalValue\(15),
	datad => \adcDacController|signalValue\(10),
	combout => \adcDacController|Add5~2_combout\);

-- Location: LCCOMB_X9_Y4_N14
\adcDacController|leftChannelOut[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[5]~4_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~2_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|process_2~0_combout\,
	datab => \adcDacController|signalValue\(10),
	datad => \adcDacController|Add5~2_combout\,
	combout => \adcDacController|leftChannelOut[5]~4_combout\);

-- Location: LCCOMB_X10_Y4_N30
\adcDacController|leftChannel[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannel[11]~feeder_combout\ = \adcDacController|Selector1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adcDacController|Selector1~4_combout\,
	combout => \adcDacController|leftChannel[11]~feeder_combout\);

-- Location: FF_X10_Y4_N31
\adcDacController|leftChannel[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|leftChannel[11]~feeder_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	ena => \adcDacController|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannel\(11));

-- Location: FF_X9_Y4_N15
\adcDacController|leftChannelOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[5]~4_combout\,
	asdata => \adcDacController|leftChannel\(11),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(5));

-- Location: LCCOMB_X9_Y4_N10
\adcDacController|leftChannelOut[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[13]~7_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~2_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|process_2~0_combout\,
	datab => \adcDacController|signalValue\(10),
	datad => \adcDacController|Add5~2_combout\,
	combout => \adcDacController|leftChannelOut[13]~7_combout\);

-- Location: FF_X9_Y4_N11
\adcDacController|leftChannelOut[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[13]~7_combout\,
	asdata => \adcDacController|leftChannel\(10),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(13));

-- Location: LCCOMB_X8_Y3_N0
\adcDacController|Add5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Add5~3_combout\ = \adcDacController|signalValue\(10) $ (((!\adcDacController|signalValue\(15) & (\adcDacController|signalValue\(0) & \adcDacController|signalValue\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(15),
	datab => \adcDacController|signalValue\(10),
	datac => \adcDacController|signalValue\(0),
	datad => \adcDacController|signalValue\(11),
	combout => \adcDacController|Add5~3_combout\);

-- Location: LCCOMB_X8_Y4_N20
\adcDacController|leftChannelOut[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[1]~6_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~3_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|process_2~0_combout\,
	datab => \adcDacController|signalValue\(0),
	datad => \adcDacController|Add5~3_combout\,
	combout => \adcDacController|leftChannelOut[1]~6_combout\);

-- Location: FF_X8_Y4_N21
\adcDacController|leftChannelOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[1]~6_combout\,
	asdata => \adcDacController|leftChannel\(11),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(1));

-- Location: LCCOMB_X9_Y4_N4
\adcDacController|leftChannelOut[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[9]~5_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~2_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|process_2~0_combout\,
	datab => \adcDacController|signalValue\(10),
	datad => \adcDacController|Add5~2_combout\,
	combout => \adcDacController|leftChannelOut[9]~5_combout\);

-- Location: FF_X9_Y4_N5
\adcDacController|leftChannelOut[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[9]~5_combout\,
	asdata => \adcDacController|leftChannel\(11),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(9));

-- Location: LCCOMB_X8_Y4_N28
\adcDacController|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux1~2_combout\ = (\adcDacController|rightOutCounter\(2) & ((\adcDacController|rightOutCounter\(3) & (\adcDacController|leftChannelOut\(1))) # (!\adcDacController|rightOutCounter\(3) & ((\adcDacController|leftChannelOut\(9)))))) # 
-- (!\adcDacController|rightOutCounter\(2) & (((!\adcDacController|rightOutCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|rightOutCounter\(2),
	datab => \adcDacController|leftChannelOut\(1),
	datac => \adcDacController|rightOutCounter\(3),
	datad => \adcDacController|leftChannelOut\(9),
	combout => \adcDacController|Mux1~2_combout\);

-- Location: LCCOMB_X8_Y4_N14
\adcDacController|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux1~3_combout\ = (\adcDacController|rightOutCounter\(2) & (((\adcDacController|Mux1~2_combout\)))) # (!\adcDacController|rightOutCounter\(2) & ((\adcDacController|Mux1~2_combout\ & ((\adcDacController|leftChannelOut\(13)))) # 
-- (!\adcDacController|Mux1~2_combout\ & (\adcDacController|leftChannelOut\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|rightOutCounter\(2),
	datab => \adcDacController|leftChannelOut\(5),
	datac => \adcDacController|leftChannelOut\(13),
	datad => \adcDacController|Mux1~2_combout\,
	combout => \adcDacController|Mux1~3_combout\);

-- Location: LCCOMB_X8_Y4_N6
\adcDacController|leftChannelOut[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[8]~8_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~0_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(11),
	datab => \adcDacController|process_2~0_combout\,
	datad => \adcDacController|Add5~0_combout\,
	combout => \adcDacController|leftChannelOut[8]~8_combout\);

-- Location: FF_X8_Y4_N7
\adcDacController|leftChannelOut[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[8]~8_combout\,
	asdata => \adcDacController|leftChannel\(10),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(8));

-- Location: LCCOMB_X8_Y4_N16
\adcDacController|leftChannelOut[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[12]~10_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~2_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(11),
	datab => \adcDacController|process_2~0_combout\,
	datad => \adcDacController|Add5~2_combout\,
	combout => \adcDacController|leftChannelOut[12]~10_combout\);

-- Location: FF_X8_Y4_N17
\adcDacController|leftChannelOut[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[12]~10_combout\,
	asdata => \adcDacController|leftChannel\(10),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(12));

-- Location: LCCOMB_X10_Y4_N20
\adcDacController|leftChannel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannel[0]~0_combout\ = !\adcDacController|shaveAndAHaircut.Rest~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adcDacController|shaveAndAHaircut.Rest~q\,
	combout => \adcDacController|leftChannel[0]~0_combout\);

-- Location: FF_X10_Y4_N21
\adcDacController|leftChannel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|leftChannel[0]~0_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	ena => \adcDacController|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannel\(0));

-- Location: LCCOMB_X8_Y3_N22
\adcDacController|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Add5~4_combout\ = \adcDacController|signalValue\(11) $ (((!\adcDacController|signalValue\(15) & \adcDacController|signalValue\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|signalValue\(11),
	datac => \adcDacController|signalValue\(15),
	datad => \adcDacController|signalValue\(0),
	combout => \adcDacController|Add5~4_combout\);

-- Location: LCCOMB_X9_Y4_N6
\adcDacController|leftChannelOut~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut~16_combout\ = (\SW[9]~input_o\ & (\SW[8]~input_o\ & (\adcDacController|leftChannel\(0)))) # (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\adcDacController|Add5~4_combout\))) # (!\SW[8]~input_o\ & 
-- (\adcDacController|leftChannel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \adcDacController|leftChannel\(0),
	datad => \adcDacController|Add5~4_combout\,
	combout => \adcDacController|leftChannelOut~16_combout\);

-- Location: FF_X9_Y4_N7
\adcDacController|leftChannelOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(0));

-- Location: LCCOMB_X9_Y4_N28
\adcDacController|leftChannelOut[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[4]~9_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~0_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|process_2~0_combout\,
	datab => \adcDacController|signalValue\(11),
	datad => \adcDacController|Add5~0_combout\,
	combout => \adcDacController|leftChannelOut[4]~9_combout\);

-- Location: FF_X9_Y4_N29
\adcDacController|leftChannelOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[4]~9_combout\,
	asdata => \adcDacController|leftChannel\(10),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(4));

-- Location: LCCOMB_X8_Y4_N12
\adcDacController|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux1~4_combout\ = (\adcDacController|rightOutCounter\(2) & (\adcDacController|leftChannelOut\(0) & (\adcDacController|rightOutCounter\(3)))) # (!\adcDacController|rightOutCounter\(2) & (((\adcDacController|leftChannelOut\(4)) # 
-- (!\adcDacController|rightOutCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|rightOutCounter\(2),
	datab => \adcDacController|leftChannelOut\(0),
	datac => \adcDacController|rightOutCounter\(3),
	datad => \adcDacController|leftChannelOut\(4),
	combout => \adcDacController|Mux1~4_combout\);

-- Location: LCCOMB_X8_Y4_N2
\adcDacController|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux1~5_combout\ = (\adcDacController|rightOutCounter\(3) & (((\adcDacController|Mux1~4_combout\)))) # (!\adcDacController|rightOutCounter\(3) & ((\adcDacController|Mux1~4_combout\ & ((\adcDacController|leftChannelOut\(12)))) # 
-- (!\adcDacController|Mux1~4_combout\ & (\adcDacController|leftChannelOut\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftChannelOut\(8),
	datab => \adcDacController|leftChannelOut\(12),
	datac => \adcDacController|rightOutCounter\(3),
	datad => \adcDacController|Mux1~4_combout\,
	combout => \adcDacController|Mux1~5_combout\);

-- Location: LCCOMB_X8_Y4_N4
\adcDacController|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux1~6_combout\ = (\adcDacController|rightOutCounter\(0) & (\adcDacController|rightOutCounter\(1) & ((\adcDacController|Mux1~5_combout\)))) # (!\adcDacController|rightOutCounter\(0) & (((\adcDacController|Mux1~3_combout\)) # 
-- (!\adcDacController|rightOutCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|rightOutCounter\(0),
	datab => \adcDacController|rightOutCounter\(1),
	datac => \adcDacController|Mux1~3_combout\,
	datad => \adcDacController|Mux1~5_combout\,
	combout => \adcDacController|Mux1~6_combout\);

-- Location: LCCOMB_X9_Y3_N4
\adcDacController|leftChannelOut[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[15]~14_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~1_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(10),
	datab => \adcDacController|process_2~0_combout\,
	datad => \adcDacController|Add5~1_combout\,
	combout => \adcDacController|leftChannelOut[15]~14_combout\);

-- Location: FF_X9_Y3_N5
\adcDacController|leftChannelOut[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[15]~14_combout\,
	asdata => \adcDacController|leftChannel\(10),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(15));

-- Location: LCCOMB_X9_Y3_N26
\adcDacController|leftChannelOut[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[11]~11_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~2_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(10),
	datab => \adcDacController|process_2~0_combout\,
	datad => \adcDacController|Add5~2_combout\,
	combout => \adcDacController|leftChannelOut[11]~11_combout\);

-- Location: FF_X9_Y3_N27
\adcDacController|leftChannelOut[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[11]~11_combout\,
	asdata => \adcDacController|leftChannel\(11),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(11));

-- Location: LCCOMB_X9_Y3_N22
\adcDacController|leftChannelOut[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[3]~13_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~2_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(10),
	datab => \adcDacController|process_2~0_combout\,
	datad => \adcDacController|Add5~2_combout\,
	combout => \adcDacController|leftChannelOut[3]~13_combout\);

-- Location: FF_X9_Y3_N23
\adcDacController|leftChannelOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[3]~13_combout\,
	asdata => \adcDacController|leftChannel\(11),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(3));

-- Location: LCCOMB_X9_Y3_N16
\adcDacController|leftChannelOut[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftChannelOut[7]~12_combout\ = (\adcDacController|process_2~0_combout\ & ((\adcDacController|Add5~2_combout\))) # (!\adcDacController|process_2~0_combout\ & (\adcDacController|signalValue\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|signalValue\(10),
	datab => \adcDacController|process_2~0_combout\,
	datad => \adcDacController|Add5~2_combout\,
	combout => \adcDacController|leftChannelOut[7]~12_combout\);

-- Location: FF_X9_Y3_N17
\adcDacController|leftChannelOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|dataCount~clkctrl_outclk\,
	d => \adcDacController|leftChannelOut[7]~12_combout\,
	asdata => \adcDacController|leftChannel\(11),
	sload => \adcDacController|leftChannelOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftChannelOut\(7));

-- Location: LCCOMB_X9_Y3_N20
\adcDacController|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux1~7_combout\ = (\adcDacController|rightOutCounter\(2) & (\adcDacController|leftChannelOut\(3) & ((\adcDacController|rightOutCounter\(3))))) # (!\adcDacController|rightOutCounter\(2) & (((\adcDacController|leftChannelOut\(7)) # 
-- (!\adcDacController|rightOutCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftChannelOut\(3),
	datab => \adcDacController|leftChannelOut\(7),
	datac => \adcDacController|rightOutCounter\(2),
	datad => \adcDacController|rightOutCounter\(3),
	combout => \adcDacController|Mux1~7_combout\);

-- Location: LCCOMB_X9_Y3_N6
\adcDacController|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux1~8_combout\ = (\adcDacController|rightOutCounter\(3) & (((\adcDacController|Mux1~7_combout\)))) # (!\adcDacController|rightOutCounter\(3) & ((\adcDacController|Mux1~7_combout\ & (\adcDacController|leftChannelOut\(15))) # 
-- (!\adcDacController|Mux1~7_combout\ & ((\adcDacController|leftChannelOut\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|rightOutCounter\(3),
	datab => \adcDacController|leftChannelOut\(15),
	datac => \adcDacController|leftChannelOut\(11),
	datad => \adcDacController|Mux1~7_combout\,
	combout => \adcDacController|Mux1~8_combout\);

-- Location: LCCOMB_X8_Y4_N22
\adcDacController|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux1~9_combout\ = (\adcDacController|rightOutCounter\(1) & (((\adcDacController|Mux1~6_combout\)))) # (!\adcDacController|rightOutCounter\(1) & ((\adcDacController|Mux1~6_combout\ & ((\adcDacController|Mux1~8_combout\))) # 
-- (!\adcDacController|Mux1~6_combout\ & (\adcDacController|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Mux1~1_combout\,
	datab => \adcDacController|rightOutCounter\(1),
	datac => \adcDacController|Mux1~6_combout\,
	datad => \adcDacController|Mux1~8_combout\,
	combout => \adcDacController|Mux1~9_combout\);

-- Location: LCCOMB_X7_Y4_N26
\adcDacController|leftOutCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftOutCounter~3_combout\ = (!\adcDacController|LRCounter\(4) & !\adcDacController|leftOutCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adcDacController|LRCounter\(4),
	datac => \adcDacController|leftOutCounter\(0),
	combout => \adcDacController|leftOutCounter~3_combout\);

-- Location: FF_X7_Y4_N27
\adcDacController|leftOutCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|leftOutCounter~3_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftOutCounter\(0));

-- Location: LCCOMB_X7_Y4_N0
\adcDacController|leftOutCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftOutCounter~2_combout\ = (!\adcDacController|LRCounter\(4) & (\adcDacController|leftOutCounter\(0) $ (\adcDacController|leftOutCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftOutCounter\(0),
	datab => \adcDacController|LRCounter\(4),
	datac => \adcDacController|leftOutCounter\(1),
	combout => \adcDacController|leftOutCounter~2_combout\);

-- Location: FF_X7_Y4_N1
\adcDacController|leftOutCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|leftOutCounter~2_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftOutCounter\(1));

-- Location: LCCOMB_X9_Y4_N0
\adcDacController|leftOutCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftOutCounter~1_combout\ = (!\adcDacController|LRCounter\(4) & (\adcDacController|leftOutCounter\(2) $ (((\adcDacController|leftOutCounter\(0) & \adcDacController|leftOutCounter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftOutCounter\(0),
	datab => \adcDacController|LRCounter\(4),
	datac => \adcDacController|leftOutCounter\(2),
	datad => \adcDacController|leftOutCounter\(1),
	combout => \adcDacController|leftOutCounter~1_combout\);

-- Location: FF_X9_Y4_N1
\adcDacController|leftOutCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|leftOutCounter~1_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftOutCounter\(2));

-- Location: LCCOMB_X7_Y4_N18
\adcDacController|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Add1~0_combout\ = \adcDacController|leftOutCounter\(3) $ (((\adcDacController|leftOutCounter\(0) & (\adcDacController|leftOutCounter\(2) & \adcDacController|leftOutCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftOutCounter\(0),
	datab => \adcDacController|leftOutCounter\(3),
	datac => \adcDacController|leftOutCounter\(2),
	datad => \adcDacController|leftOutCounter\(1),
	combout => \adcDacController|Add1~0_combout\);

-- Location: LCCOMB_X9_Y4_N30
\adcDacController|leftOutCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|leftOutCounter~0_combout\ = (!\adcDacController|LRCounter\(4) & \adcDacController|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adcDacController|LRCounter\(4),
	datad => \adcDacController|Add1~0_combout\,
	combout => \adcDacController|leftOutCounter~0_combout\);

-- Location: FF_X9_Y4_N31
\adcDacController|leftOutCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|leftOutCounter~0_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|leftOutCounter\(3));

-- Location: LCCOMB_X9_Y3_N28
\adcDacController|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux0~7_combout\ = (\adcDacController|leftOutCounter\(3) & ((\adcDacController|leftOutCounter\(2) & (\adcDacController|leftChannelOut\(3))) # (!\adcDacController|leftOutCounter\(2) & ((\adcDacController|leftChannelOut\(7)))))) # 
-- (!\adcDacController|leftOutCounter\(3) & (((!\adcDacController|leftOutCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftChannelOut\(3),
	datab => \adcDacController|leftChannelOut\(7),
	datac => \adcDacController|leftOutCounter\(3),
	datad => \adcDacController|leftOutCounter\(2),
	combout => \adcDacController|Mux0~7_combout\);

-- Location: LCCOMB_X9_Y3_N2
\adcDacController|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux0~8_combout\ = (\adcDacController|leftOutCounter\(3) & (((\adcDacController|Mux0~7_combout\)))) # (!\adcDacController|leftOutCounter\(3) & ((\adcDacController|Mux0~7_combout\ & (\adcDacController|leftChannelOut\(15))) # 
-- (!\adcDacController|Mux0~7_combout\ & ((\adcDacController|leftChannelOut\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftOutCounter\(3),
	datab => \adcDacController|leftChannelOut\(15),
	datac => \adcDacController|leftChannelOut\(11),
	datad => \adcDacController|Mux0~7_combout\,
	combout => \adcDacController|Mux0~8_combout\);

-- Location: LCCOMB_X9_Y4_N22
\adcDacController|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux0~0_combout\ = (\adcDacController|leftOutCounter\(2) & (\adcDacController|leftChannelOut\(2) & (\adcDacController|leftOutCounter\(3)))) # (!\adcDacController|leftOutCounter\(2) & (((\adcDacController|leftChannelOut\(6)) # 
-- (!\adcDacController|leftOutCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftChannelOut\(2),
	datab => \adcDacController|leftOutCounter\(2),
	datac => \adcDacController|leftOutCounter\(3),
	datad => \adcDacController|leftChannelOut\(6),
	combout => \adcDacController|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y4_N8
\adcDacController|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux0~1_combout\ = (\adcDacController|Mux0~0_combout\ & ((\adcDacController|leftChannelOut\(14)) # ((\adcDacController|leftOutCounter\(3))))) # (!\adcDacController|Mux0~0_combout\ & (((!\adcDacController|leftOutCounter\(3) & 
-- \adcDacController|leftChannelOut\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Mux0~0_combout\,
	datab => \adcDacController|leftChannelOut\(14),
	datac => \adcDacController|leftOutCounter\(3),
	datad => \adcDacController|leftChannelOut\(10),
	combout => \adcDacController|Mux0~1_combout\);

-- Location: LCCOMB_X9_Y4_N12
\adcDacController|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux0~4_combout\ = (\adcDacController|leftOutCounter\(2) & (((\adcDacController|leftOutCounter\(3) & \adcDacController|leftChannelOut\(0))))) # (!\adcDacController|leftOutCounter\(2) & ((\adcDacController|leftChannelOut\(4)) # 
-- ((!\adcDacController|leftOutCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftChannelOut\(4),
	datab => \adcDacController|leftOutCounter\(2),
	datac => \adcDacController|leftOutCounter\(3),
	datad => \adcDacController|leftChannelOut\(0),
	combout => \adcDacController|Mux0~4_combout\);

-- Location: LCCOMB_X9_Y4_N26
\adcDacController|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux0~5_combout\ = (\adcDacController|leftOutCounter\(3) & (((\adcDacController|Mux0~4_combout\)))) # (!\adcDacController|leftOutCounter\(3) & ((\adcDacController|Mux0~4_combout\ & ((\adcDacController|leftChannelOut\(12)))) # 
-- (!\adcDacController|Mux0~4_combout\ & (\adcDacController|leftChannelOut\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftOutCounter\(3),
	datab => \adcDacController|leftChannelOut\(8),
	datac => \adcDacController|leftChannelOut\(12),
	datad => \adcDacController|Mux0~4_combout\,
	combout => \adcDacController|Mux0~5_combout\);

-- Location: LCCOMB_X9_Y4_N2
\adcDacController|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux0~2_combout\ = (\adcDacController|leftOutCounter\(3) & (\adcDacController|leftOutCounter\(2) & ((\adcDacController|leftChannelOut\(1))))) # (!\adcDacController|leftOutCounter\(3) & (((\adcDacController|leftChannelOut\(9))) # 
-- (!\adcDacController|leftOutCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftOutCounter\(3),
	datab => \adcDacController|leftOutCounter\(2),
	datac => \adcDacController|leftChannelOut\(9),
	datad => \adcDacController|leftChannelOut\(1),
	combout => \adcDacController|Mux0~2_combout\);

-- Location: LCCOMB_X9_Y4_N24
\adcDacController|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux0~3_combout\ = (\adcDacController|leftOutCounter\(2) & (((\adcDacController|Mux0~2_combout\)))) # (!\adcDacController|leftOutCounter\(2) & ((\adcDacController|Mux0~2_combout\ & (\adcDacController|leftChannelOut\(13))) # 
-- (!\adcDacController|Mux0~2_combout\ & ((\adcDacController|leftChannelOut\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftChannelOut\(13),
	datab => \adcDacController|leftOutCounter\(2),
	datac => \adcDacController|leftChannelOut\(5),
	datad => \adcDacController|Mux0~2_combout\,
	combout => \adcDacController|Mux0~3_combout\);

-- Location: LCCOMB_X9_Y4_N20
\adcDacController|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux0~6_combout\ = (\adcDacController|leftOutCounter\(1) & ((\adcDacController|leftOutCounter\(0) & (\adcDacController|Mux0~5_combout\)) # (!\adcDacController|leftOutCounter\(0) & ((\adcDacController|Mux0~3_combout\))))) # 
-- (!\adcDacController|leftOutCounter\(1) & (!\adcDacController|leftOutCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|leftOutCounter\(1),
	datab => \adcDacController|leftOutCounter\(0),
	datac => \adcDacController|Mux0~5_combout\,
	datad => \adcDacController|Mux0~3_combout\,
	combout => \adcDacController|Mux0~6_combout\);

-- Location: LCCOMB_X9_Y4_N18
\adcDacController|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|Mux0~9_combout\ = (\adcDacController|leftOutCounter\(1) & (((\adcDacController|Mux0~6_combout\)))) # (!\adcDacController|leftOutCounter\(1) & ((\adcDacController|Mux0~6_combout\ & (\adcDacController|Mux0~8_combout\)) # 
-- (!\adcDacController|Mux0~6_combout\ & ((\adcDacController|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|Mux0~8_combout\,
	datab => \adcDacController|leftOutCounter\(1),
	datac => \adcDacController|Mux0~1_combout\,
	datad => \adcDacController|Mux0~6_combout\,
	combout => \adcDacController|Mux0~9_combout\);

-- Location: LCCOMB_X8_Y4_N10
\adcDacController|dacData~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adcDacController|dacData~0_combout\ = (\adcDacController|internalLRSelect~q\ & ((\adcDacController|Mux0~9_combout\))) # (!\adcDacController|internalLRSelect~q\ & (\adcDacController|Mux1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adcDacController|internalLRSelect~q\,
	datac => \adcDacController|Mux1~9_combout\,
	datad => \adcDacController|Mux0~9_combout\,
	combout => \adcDacController|dacData~0_combout\);

-- Location: FF_X8_Y4_N11
\adcDacController|dacData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adcDacController|ALT_INV_internalBitClock~clkctrl_outclk\,
	d => \adcDacController|dacData~0_combout\,
	clrn => \adcDacControllerStartDelay|resetAdc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adcDacController|dacData~q\);

-- Location: CLKCTRL_PLL1E0
\audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_AUD_XCK\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_AUD_XCK_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \audioPllClockGen|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_AUD_XCK_outclk\);

-- Location: LCCOMB_X114_Y38_N14
\audio_Codec_Controller|clock50KHzInstance|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|Add0~0_combout\ = \audio_Codec_Controller|clock50KHzInstance|count\(0) $ (VCC)
-- \audio_Codec_Controller|clock50KHzInstance|Add0~1\ = CARRY(\audio_Codec_Controller|clock50KHzInstance|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio_Codec_Controller|clock50KHzInstance|count\(0),
	datad => VCC,
	combout => \audio_Codec_Controller|clock50KHzInstance|Add0~0_combout\,
	cout => \audio_Codec_Controller|clock50KHzInstance|Add0~1\);

-- Location: FF_X114_Y38_N15
\audio_Codec_Controller|clock50KHzInstance|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \audio_Codec_Controller|clock50KHzInstance|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|clock50KHzInstance|count\(0));

-- Location: LCCOMB_X114_Y38_N20
\audio_Codec_Controller|clock50KHzInstance|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|Add0~6_combout\ = (\audio_Codec_Controller|clock50KHzInstance|count\(3) & (!\audio_Codec_Controller|clock50KHzInstance|Add0~5\)) # (!\audio_Codec_Controller|clock50KHzInstance|count\(3) & 
-- ((\audio_Codec_Controller|clock50KHzInstance|Add0~5\) # (GND)))
-- \audio_Codec_Controller|clock50KHzInstance|Add0~7\ = CARRY((!\audio_Codec_Controller|clock50KHzInstance|Add0~5\) # (!\audio_Codec_Controller|clock50KHzInstance|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio_Codec_Controller|clock50KHzInstance|count\(3),
	datad => VCC,
	cin => \audio_Codec_Controller|clock50KHzInstance|Add0~5\,
	combout => \audio_Codec_Controller|clock50KHzInstance|Add0~6_combout\,
	cout => \audio_Codec_Controller|clock50KHzInstance|Add0~7\);

-- Location: LCCOMB_X114_Y38_N22
\audio_Codec_Controller|clock50KHzInstance|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|Add0~8_combout\ = (\audio_Codec_Controller|clock50KHzInstance|count\(4) & (\audio_Codec_Controller|clock50KHzInstance|Add0~7\ $ (GND))) # (!\audio_Codec_Controller|clock50KHzInstance|count\(4) & 
-- (!\audio_Codec_Controller|clock50KHzInstance|Add0~7\ & VCC))
-- \audio_Codec_Controller|clock50KHzInstance|Add0~9\ = CARRY((\audio_Codec_Controller|clock50KHzInstance|count\(4) & !\audio_Codec_Controller|clock50KHzInstance|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|clock50KHzInstance|count\(4),
	datad => VCC,
	cin => \audio_Codec_Controller|clock50KHzInstance|Add0~7\,
	combout => \audio_Codec_Controller|clock50KHzInstance|Add0~8_combout\,
	cout => \audio_Codec_Controller|clock50KHzInstance|Add0~9\);

-- Location: LCCOMB_X114_Y38_N6
\audio_Codec_Controller|clock50KHzInstance|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|count~4_combout\ = (\audio_Codec_Controller|clock50KHzInstance|Add0~8_combout\ & (((!\audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\) # (!\audio_Codec_Controller|clock50KHzInstance|count\(0))) # 
-- (!\audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|clock50KHzInstance|Add0~8_combout\,
	datab => \audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\,
	datac => \audio_Codec_Controller|clock50KHzInstance|count\(0),
	datad => \audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\,
	combout => \audio_Codec_Controller|clock50KHzInstance|count~4_combout\);

-- Location: FF_X114_Y38_N7
\audio_Codec_Controller|clock50KHzInstance|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \audio_Codec_Controller|clock50KHzInstance|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|clock50KHzInstance|count\(4));

-- Location: LCCOMB_X114_Y38_N24
\audio_Codec_Controller|clock50KHzInstance|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|Add0~10_combout\ = (\audio_Codec_Controller|clock50KHzInstance|count\(5) & (!\audio_Codec_Controller|clock50KHzInstance|Add0~9\)) # (!\audio_Codec_Controller|clock50KHzInstance|count\(5) & 
-- ((\audio_Codec_Controller|clock50KHzInstance|Add0~9\) # (GND)))
-- \audio_Codec_Controller|clock50KHzInstance|Add0~11\ = CARRY((!\audio_Codec_Controller|clock50KHzInstance|Add0~9\) # (!\audio_Codec_Controller|clock50KHzInstance|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio_Codec_Controller|clock50KHzInstance|count\(5),
	datad => VCC,
	cin => \audio_Codec_Controller|clock50KHzInstance|Add0~9\,
	combout => \audio_Codec_Controller|clock50KHzInstance|Add0~10_combout\,
	cout => \audio_Codec_Controller|clock50KHzInstance|Add0~11\);

-- Location: LCCOMB_X114_Y38_N2
\audio_Codec_Controller|clock50KHzInstance|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|count~3_combout\ = (\audio_Codec_Controller|clock50KHzInstance|Add0~10_combout\ & (((!\audio_Codec_Controller|clock50KHzInstance|count\(0)) # (!\audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\)) # 
-- (!\audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\,
	datab => \audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\,
	datac => \audio_Codec_Controller|clock50KHzInstance|count\(0),
	datad => \audio_Codec_Controller|clock50KHzInstance|Add0~10_combout\,
	combout => \audio_Codec_Controller|clock50KHzInstance|count~3_combout\);

-- Location: FF_X114_Y38_N3
\audio_Codec_Controller|clock50KHzInstance|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \audio_Codec_Controller|clock50KHzInstance|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|clock50KHzInstance|count\(5));

-- Location: LCCOMB_X114_Y38_N26
\audio_Codec_Controller|clock50KHzInstance|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|Add0~12_combout\ = (\audio_Codec_Controller|clock50KHzInstance|count\(6) & (\audio_Codec_Controller|clock50KHzInstance|Add0~11\ $ (GND))) # (!\audio_Codec_Controller|clock50KHzInstance|count\(6) & 
-- (!\audio_Codec_Controller|clock50KHzInstance|Add0~11\ & VCC))
-- \audio_Codec_Controller|clock50KHzInstance|Add0~13\ = CARRY((\audio_Codec_Controller|clock50KHzInstance|count\(6) & !\audio_Codec_Controller|clock50KHzInstance|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio_Codec_Controller|clock50KHzInstance|count\(6),
	datad => VCC,
	cin => \audio_Codec_Controller|clock50KHzInstance|Add0~11\,
	combout => \audio_Codec_Controller|clock50KHzInstance|Add0~12_combout\,
	cout => \audio_Codec_Controller|clock50KHzInstance|Add0~13\);

-- Location: LCCOMB_X114_Y38_N4
\audio_Codec_Controller|clock50KHzInstance|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|count~2_combout\ = (\audio_Codec_Controller|clock50KHzInstance|Add0~12_combout\ & (((!\audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\) # (!\audio_Codec_Controller|clock50KHzInstance|count\(0))) # 
-- (!\audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|clock50KHzInstance|Add0~12_combout\,
	datab => \audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\,
	datac => \audio_Codec_Controller|clock50KHzInstance|count\(0),
	datad => \audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\,
	combout => \audio_Codec_Controller|clock50KHzInstance|count~2_combout\);

-- Location: FF_X114_Y38_N5
\audio_Codec_Controller|clock50KHzInstance|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \audio_Codec_Controller|clock50KHzInstance|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|clock50KHzInstance|count\(6));

-- Location: LCCOMB_X114_Y38_N28
\audio_Codec_Controller|clock50KHzInstance|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|Add0~14_combout\ = (\audio_Codec_Controller|clock50KHzInstance|count\(7) & (!\audio_Codec_Controller|clock50KHzInstance|Add0~13\)) # (!\audio_Codec_Controller|clock50KHzInstance|count\(7) & 
-- ((\audio_Codec_Controller|clock50KHzInstance|Add0~13\) # (GND)))
-- \audio_Codec_Controller|clock50KHzInstance|Add0~15\ = CARRY((!\audio_Codec_Controller|clock50KHzInstance|Add0~13\) # (!\audio_Codec_Controller|clock50KHzInstance|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|clock50KHzInstance|count\(7),
	datad => VCC,
	cin => \audio_Codec_Controller|clock50KHzInstance|Add0~13\,
	combout => \audio_Codec_Controller|clock50KHzInstance|Add0~14_combout\,
	cout => \audio_Codec_Controller|clock50KHzInstance|Add0~15\);

-- Location: LCCOMB_X114_Y38_N10
\audio_Codec_Controller|clock50KHzInstance|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|count~1_combout\ = (\audio_Codec_Controller|clock50KHzInstance|Add0~14_combout\ & (((!\audio_Codec_Controller|clock50KHzInstance|count\(0)) # (!\audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\)) # 
-- (!\audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\,
	datab => \audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\,
	datac => \audio_Codec_Controller|clock50KHzInstance|count\(0),
	datad => \audio_Codec_Controller|clock50KHzInstance|Add0~14_combout\,
	combout => \audio_Codec_Controller|clock50KHzInstance|count~1_combout\);

-- Location: FF_X114_Y38_N11
\audio_Codec_Controller|clock50KHzInstance|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \audio_Codec_Controller|clock50KHzInstance|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|clock50KHzInstance|count\(7));

-- Location: LCCOMB_X114_Y38_N30
\audio_Codec_Controller|clock50KHzInstance|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|Add0~16_combout\ = \audio_Codec_Controller|clock50KHzInstance|Add0~15\ $ (!\audio_Codec_Controller|clock50KHzInstance|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \audio_Codec_Controller|clock50KHzInstance|count\(8),
	cin => \audio_Codec_Controller|clock50KHzInstance|Add0~15\,
	combout => \audio_Codec_Controller|clock50KHzInstance|Add0~16_combout\);

-- Location: LCCOMB_X114_Y38_N0
\audio_Codec_Controller|clock50KHzInstance|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|count~0_combout\ = (\audio_Codec_Controller|clock50KHzInstance|Add0~16_combout\ & (((!\audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\) # (!\audio_Codec_Controller|clock50KHzInstance|count\(0))) # 
-- (!\audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|clock50KHzInstance|Add0~16_combout\,
	datab => \audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\,
	datac => \audio_Codec_Controller|clock50KHzInstance|count\(0),
	datad => \audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\,
	combout => \audio_Codec_Controller|clock50KHzInstance|count~0_combout\);

-- Location: FF_X114_Y38_N1
\audio_Codec_Controller|clock50KHzInstance|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \audio_Codec_Controller|clock50KHzInstance|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|clock50KHzInstance|count\(8));

-- Location: LCCOMB_X114_Y38_N8
\audio_Codec_Controller|clock50KHzInstance|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\ = (\audio_Codec_Controller|clock50KHzInstance|count\(7) & (\audio_Codec_Controller|clock50KHzInstance|count\(5) & (\audio_Codec_Controller|clock50KHzInstance|count\(6) & 
-- \audio_Codec_Controller|clock50KHzInstance|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|clock50KHzInstance|count\(7),
	datab => \audio_Codec_Controller|clock50KHzInstance|count\(5),
	datac => \audio_Codec_Controller|clock50KHzInstance|count\(6),
	datad => \audio_Codec_Controller|clock50KHzInstance|count\(8),
	combout => \audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y38_N16
\audio_Codec_Controller|clock50KHzInstance|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|Add0~2_combout\ = (\audio_Codec_Controller|clock50KHzInstance|count\(1) & (!\audio_Codec_Controller|clock50KHzInstance|Add0~1\)) # (!\audio_Codec_Controller|clock50KHzInstance|count\(1) & 
-- ((\audio_Codec_Controller|clock50KHzInstance|Add0~1\) # (GND)))
-- \audio_Codec_Controller|clock50KHzInstance|Add0~3\ = CARRY((!\audio_Codec_Controller|clock50KHzInstance|Add0~1\) # (!\audio_Codec_Controller|clock50KHzInstance|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio_Codec_Controller|clock50KHzInstance|count\(1),
	datad => VCC,
	cin => \audio_Codec_Controller|clock50KHzInstance|Add0~1\,
	combout => \audio_Codec_Controller|clock50KHzInstance|Add0~2_combout\,
	cout => \audio_Codec_Controller|clock50KHzInstance|Add0~3\);

-- Location: FF_X114_Y38_N17
\audio_Codec_Controller|clock50KHzInstance|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \audio_Codec_Controller|clock50KHzInstance|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|clock50KHzInstance|count\(1));

-- Location: LCCOMB_X114_Y38_N18
\audio_Codec_Controller|clock50KHzInstance|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|Add0~4_combout\ = (\audio_Codec_Controller|clock50KHzInstance|count\(2) & (\audio_Codec_Controller|clock50KHzInstance|Add0~3\ $ (GND))) # (!\audio_Codec_Controller|clock50KHzInstance|count\(2) & 
-- (!\audio_Codec_Controller|clock50KHzInstance|Add0~3\ & VCC))
-- \audio_Codec_Controller|clock50KHzInstance|Add0~5\ = CARRY((\audio_Codec_Controller|clock50KHzInstance|count\(2) & !\audio_Codec_Controller|clock50KHzInstance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|clock50KHzInstance|count\(2),
	datad => VCC,
	cin => \audio_Codec_Controller|clock50KHzInstance|Add0~3\,
	combout => \audio_Codec_Controller|clock50KHzInstance|Add0~4_combout\,
	cout => \audio_Codec_Controller|clock50KHzInstance|Add0~5\);

-- Location: LCCOMB_X114_Y38_N12
\audio_Codec_Controller|clock50KHzInstance|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|count~5_combout\ = (\audio_Codec_Controller|clock50KHzInstance|Add0~4_combout\ & (((!\audio_Codec_Controller|clock50KHzInstance|count\(0)) # (!\audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\)) # 
-- (!\audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\,
	datab => \audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\,
	datac => \audio_Codec_Controller|clock50KHzInstance|count\(0),
	datad => \audio_Codec_Controller|clock50KHzInstance|Add0~4_combout\,
	combout => \audio_Codec_Controller|clock50KHzInstance|count~5_combout\);

-- Location: FF_X114_Y38_N13
\audio_Codec_Controller|clock50KHzInstance|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \audio_Codec_Controller|clock50KHzInstance|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|clock50KHzInstance|count\(2));

-- Location: FF_X114_Y38_N21
\audio_Codec_Controller|clock50KHzInstance|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \audio_Codec_Controller|clock50KHzInstance|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|clock50KHzInstance|count\(3));

-- Location: LCCOMB_X113_Y38_N8
\audio_Codec_Controller|clock50KHzInstance|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\ = (!\audio_Codec_Controller|clock50KHzInstance|count\(3) & (\audio_Codec_Controller|clock50KHzInstance|count\(1) & (!\audio_Codec_Controller|clock50KHzInstance|count\(2) & 
-- \audio_Codec_Controller|clock50KHzInstance|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|clock50KHzInstance|count\(3),
	datab => \audio_Codec_Controller|clock50KHzInstance|count\(1),
	datac => \audio_Codec_Controller|clock50KHzInstance|count\(2),
	datad => \audio_Codec_Controller|clock50KHzInstance|count\(4),
	combout => \audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\);

-- Location: LCCOMB_X114_Y37_N4
\audio_Codec_Controller|clock50KHzInstance|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|clock50KHzInstance|output~0_combout\ = \audio_Codec_Controller|clock50KHzInstance|output~q\ $ (((\audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\ & (\audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\ & 
-- \audio_Codec_Controller|clock50KHzInstance|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|clock50KHzInstance|Equal0~1_combout\,
	datab => \audio_Codec_Controller|clock50KHzInstance|Equal0~0_combout\,
	datac => \audio_Codec_Controller|clock50KHzInstance|output~q\,
	datad => \audio_Codec_Controller|clock50KHzInstance|count\(0),
	combout => \audio_Codec_Controller|clock50KHzInstance|output~0_combout\);

-- Location: FF_X114_Y37_N5
\audio_Codec_Controller|clock50KHzInstance|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockBuffer50MHz|altpll_component|_clk0~clkctrl_outclk\,
	d => \audio_Codec_Controller|clock50KHzInstance|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|clock50KHzInstance|output~q\);

-- Location: CLKCTRL_G7
\audio_Codec_Controller|clock50KHzInstance|output~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\);

-- Location: LCCOMB_X113_Y52_N14
\audio_Codec_Controller|dataBitCounterInstance|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|Add0~0_combout\ = \audio_Codec_Controller|dataBitCounterInstance|countBit\(0) $ (GND)
-- \audio_Codec_Controller|dataBitCounterInstance|Add0~1\ = CARRY(!\audio_Codec_Controller|dataBitCounterInstance|countBit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio_Codec_Controller|dataBitCounterInstance|countBit\(0),
	datad => VCC,
	combout => \audio_Codec_Controller|dataBitCounterInstance|Add0~0_combout\,
	cout => \audio_Codec_Controller|dataBitCounterInstance|Add0~1\);

-- Location: LCCOMB_X113_Y52_N0
\audio_Codec_Controller|dataBitCounterInstance|countBit[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|countBit[0]~3_combout\ = !\audio_Codec_Controller|dataBitCounterInstance|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio_Codec_Controller|dataBitCounterInstance|Add0~0_combout\,
	combout => \audio_Codec_Controller|dataBitCounterInstance|countBit[0]~3_combout\);

-- Location: LCCOMB_X114_Y52_N2
\audio_Codec_Controller|dataBitCounterInstance|countWord~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|countWord~4_combout\ = (!\audio_Codec_Controller|dataBitCounterInstance|countWord\(0) & (((!\audio_Codec_Controller|dataBitCounterInstance|countWord\(1) & 
-- !\audio_Codec_Controller|dataBitCounterInstance|countWord\(2))) # (!\audio_Codec_Controller|dataBitCounterInstance|countWord\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|dataBitCounterInstance|countWord\(3),
	datab => \audio_Codec_Controller|dataBitCounterInstance|countWord\(1),
	datac => \audio_Codec_Controller|dataBitCounterInstance|countWord\(0),
	datad => \audio_Codec_Controller|dataBitCounterInstance|countWord\(2),
	combout => \audio_Codec_Controller|dataBitCounterInstance|countWord~4_combout\);

-- Location: LCCOMB_X113_Y52_N18
\audio_Codec_Controller|dataBitCounterInstance|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|Add0~4_combout\ = (\audio_Codec_Controller|dataBitCounterInstance|countBit\(2) & (\audio_Codec_Controller|dataBitCounterInstance|Add0~3\ $ (GND))) # 
-- (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(2) & ((GND) # (!\audio_Codec_Controller|dataBitCounterInstance|Add0~3\)))
-- \audio_Codec_Controller|dataBitCounterInstance|Add0~5\ = CARRY((!\audio_Codec_Controller|dataBitCounterInstance|Add0~3\) # (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|dataBitCounterInstance|countBit\(2),
	datad => VCC,
	cin => \audio_Codec_Controller|dataBitCounterInstance|Add0~3\,
	combout => \audio_Codec_Controller|dataBitCounterInstance|Add0~4_combout\,
	cout => \audio_Codec_Controller|dataBitCounterInstance|Add0~5\);

-- Location: LCCOMB_X113_Y52_N20
\audio_Codec_Controller|dataBitCounterInstance|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|Add0~6_combout\ = (\audio_Codec_Controller|dataBitCounterInstance|countBit\(3) & (\audio_Codec_Controller|dataBitCounterInstance|Add0~5\ & VCC)) # (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(3) 
-- & (!\audio_Codec_Controller|dataBitCounterInstance|Add0~5\))
-- \audio_Codec_Controller|dataBitCounterInstance|Add0~7\ = CARRY((!\audio_Codec_Controller|dataBitCounterInstance|countBit\(3) & !\audio_Codec_Controller|dataBitCounterInstance|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio_Codec_Controller|dataBitCounterInstance|countBit\(3),
	datad => VCC,
	cin => \audio_Codec_Controller|dataBitCounterInstance|Add0~5\,
	combout => \audio_Codec_Controller|dataBitCounterInstance|Add0~6_combout\,
	cout => \audio_Codec_Controller|dataBitCounterInstance|Add0~7\);

-- Location: LCCOMB_X113_Y52_N22
\audio_Codec_Controller|dataBitCounterInstance|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|Add0~8_combout\ = \audio_Codec_Controller|dataBitCounterInstance|Add0~7\ $ (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \audio_Codec_Controller|dataBitCounterInstance|countBit\(4),
	cin => \audio_Codec_Controller|dataBitCounterInstance|Add0~7\,
	combout => \audio_Codec_Controller|dataBitCounterInstance|Add0~8_combout\);

-- Location: LCCOMB_X113_Y52_N24
\audio_Codec_Controller|dataBitCounterInstance|countBit[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|countBit[4]~4_combout\ = !\audio_Codec_Controller|dataBitCounterInstance|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio_Codec_Controller|dataBitCounterInstance|Add0~8_combout\,
	combout => \audio_Codec_Controller|dataBitCounterInstance|countBit[4]~4_combout\);

-- Location: FF_X113_Y52_N25
\audio_Codec_Controller|dataBitCounterInstance|countBit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|dataBitCounterInstance|countBit[4]~4_combout\,
	ena => \audio_Codec_Controller|bitCountEnable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|dataBitCounterInstance|countBit\(4));

-- Location: LCCOMB_X114_Y52_N16
\audio_Codec_Controller|dataBitCounterInstance|countWord[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|countWord[3]~1_combout\ = (\audio_Codec_Controller|bitCountEnable~q\ & (\audio_Codec_Controller|dataBitCounterInstance|countBit\(4) & (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(3) & 
-- \audio_Codec_Controller|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|bitCountEnable~q\,
	datab => \audio_Codec_Controller|dataBitCounterInstance|countBit\(4),
	datac => \audio_Codec_Controller|dataBitCounterInstance|countBit\(3),
	datad => \audio_Codec_Controller|process_0~0_combout\,
	combout => \audio_Codec_Controller|dataBitCounterInstance|countWord[3]~1_combout\);

-- Location: FF_X114_Y52_N3
\audio_Codec_Controller|dataBitCounterInstance|countWord[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|dataBitCounterInstance|countWord~4_combout\,
	ena => \audio_Codec_Controller|dataBitCounterInstance|countWord[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|dataBitCounterInstance|countWord\(0));

-- Location: LCCOMB_X114_Y52_N14
\audio_Codec_Controller|dataBitCounterInstance|countWord~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|countWord~3_combout\ = (\audio_Codec_Controller|dataBitCounterInstance|countWord\(3) & (!\audio_Codec_Controller|dataBitCounterInstance|countWord\(2) & 
-- (!\audio_Codec_Controller|dataBitCounterInstance|countWord\(1) & \audio_Codec_Controller|dataBitCounterInstance|countWord\(0)))) # (!\audio_Codec_Controller|dataBitCounterInstance|countWord\(3) & 
-- ((\audio_Codec_Controller|dataBitCounterInstance|countWord\(1) $ (\audio_Codec_Controller|dataBitCounterInstance|countWord\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|dataBitCounterInstance|countWord\(3),
	datab => \audio_Codec_Controller|dataBitCounterInstance|countWord\(2),
	datac => \audio_Codec_Controller|dataBitCounterInstance|countWord\(1),
	datad => \audio_Codec_Controller|dataBitCounterInstance|countWord\(0),
	combout => \audio_Codec_Controller|dataBitCounterInstance|countWord~3_combout\);

-- Location: FF_X114_Y52_N15
\audio_Codec_Controller|dataBitCounterInstance|countWord[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|dataBitCounterInstance|countWord~3_combout\,
	ena => \audio_Codec_Controller|dataBitCounterInstance|countWord[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|dataBitCounterInstance|countWord\(1));

-- Location: LCCOMB_X114_Y52_N4
\audio_Codec_Controller|dataBitCounterInstance|countWord~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|countWord~2_combout\ = (!\audio_Codec_Controller|dataBitCounterInstance|countWord\(3) & (\audio_Codec_Controller|dataBitCounterInstance|countWord\(2) $ 
-- (((\audio_Codec_Controller|dataBitCounterInstance|countWord\(1) & \audio_Codec_Controller|dataBitCounterInstance|countWord\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|dataBitCounterInstance|countWord\(3),
	datab => \audio_Codec_Controller|dataBitCounterInstance|countWord\(1),
	datac => \audio_Codec_Controller|dataBitCounterInstance|countWord\(2),
	datad => \audio_Codec_Controller|dataBitCounterInstance|countWord\(0),
	combout => \audio_Codec_Controller|dataBitCounterInstance|countWord~2_combout\);

-- Location: FF_X114_Y52_N5
\audio_Codec_Controller|dataBitCounterInstance|countWord[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|dataBitCounterInstance|countWord~2_combout\,
	ena => \audio_Codec_Controller|dataBitCounterInstance|countWord[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|dataBitCounterInstance|countWord\(2));

-- Location: LCCOMB_X114_Y52_N30
\audio_Codec_Controller|dataBitCounterInstance|countWord~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|countWord~0_combout\ = (\audio_Codec_Controller|dataBitCounterInstance|countWord\(2) & (\audio_Codec_Controller|dataBitCounterInstance|countWord\(1) & 
-- (!\audio_Codec_Controller|dataBitCounterInstance|countWord\(3) & \audio_Codec_Controller|dataBitCounterInstance|countWord\(0)))) # (!\audio_Codec_Controller|dataBitCounterInstance|countWord\(2) & 
-- (!\audio_Codec_Controller|dataBitCounterInstance|countWord\(1) & (\audio_Codec_Controller|dataBitCounterInstance|countWord\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|dataBitCounterInstance|countWord\(2),
	datab => \audio_Codec_Controller|dataBitCounterInstance|countWord\(1),
	datac => \audio_Codec_Controller|dataBitCounterInstance|countWord\(3),
	datad => \audio_Codec_Controller|dataBitCounterInstance|countWord\(0),
	combout => \audio_Codec_Controller|dataBitCounterInstance|countWord~0_combout\);

-- Location: FF_X114_Y52_N31
\audio_Codec_Controller|dataBitCounterInstance|countWord[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|dataBitCounterInstance|countWord~0_combout\,
	ena => \audio_Codec_Controller|dataBitCounterInstance|countWord[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|dataBitCounterInstance|countWord\(3));

-- Location: LCCOMB_X114_Y52_N0
\audio_Codec_Controller|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|Selector6~0_combout\ = (\audio_Codec_Controller|dataBitCounterInstance|countWord\(3) & (\audio_Codec_Controller|I2C_state.stopCondition~q\ & ((\audio_Codec_Controller|dataBitCounterInstance|countWord\(1)) # 
-- (\audio_Codec_Controller|dataBitCounterInstance|countWord\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|dataBitCounterInstance|countWord\(3),
	datab => \audio_Codec_Controller|dataBitCounterInstance|countWord\(1),
	datac => \audio_Codec_Controller|I2C_state.stopCondition~q\,
	datad => \audio_Codec_Controller|dataBitCounterInstance|countWord\(2),
	combout => \audio_Codec_Controller|Selector6~0_combout\);

-- Location: LCCOMB_X114_Y52_N22
\audio_Codec_Controller|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|Selector6~1_combout\ = (\audio_Codec_Controller|I2C_state.prepForStop~q\) # (\audio_Codec_Controller|Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|I2C_state.prepForStop~q\,
	datad => \audio_Codec_Controller|Selector6~0_combout\,
	combout => \audio_Codec_Controller|Selector6~1_combout\);

-- Location: FF_X114_Y52_N23
\audio_Codec_Controller|I2C_state.stopCondition\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|I2C_state.stopCondition~q\);

-- Location: LCCOMB_X114_Y52_N18
\audio_Codec_Controller|I2C_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|I2C_state~16_combout\ = ((\audio_Codec_Controller|dataBitCounterInstance|countWord\(3) & ((\audio_Codec_Controller|dataBitCounterInstance|countWord\(1)) # (\audio_Codec_Controller|dataBitCounterInstance|countWord\(2))))) # 
-- (!\audio_Codec_Controller|I2C_state.stopCondition~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|dataBitCounterInstance|countWord\(3),
	datab => \audio_Codec_Controller|dataBitCounterInstance|countWord\(1),
	datac => \audio_Codec_Controller|dataBitCounterInstance|countWord\(2),
	datad => \audio_Codec_Controller|I2C_state.stopCondition~q\,
	combout => \audio_Codec_Controller|I2C_state~16_combout\);

-- Location: FF_X114_Y52_N19
\audio_Codec_Controller|I2C_state.resetState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|I2C_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|I2C_state.resetState~q\);

-- Location: LCCOMB_X113_Y52_N30
\audio_Codec_Controller|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|process_0~1_combout\ = (\audio_Codec_Controller|dataBitCounterInstance|countBit\(4)) # (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio_Codec_Controller|dataBitCounterInstance|countBit\(4),
	datad => \audio_Codec_Controller|dataBitCounterInstance|countBit\(3),
	combout => \audio_Codec_Controller|process_0~1_combout\);

-- Location: LCCOMB_X114_Y52_N12
\audio_Codec_Controller|I2C_state.startCondition~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|I2C_state.startCondition~0_combout\ = !\audio_Codec_Controller|I2C_state.resetState~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio_Codec_Controller|I2C_state.resetState~q\,
	combout => \audio_Codec_Controller|I2C_state.startCondition~0_combout\);

-- Location: FF_X114_Y52_N13
\audio_Codec_Controller|I2C_state.startCondition\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|I2C_state.startCondition~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|I2C_state.startCondition~q\);

-- Location: LCCOMB_X113_Y52_N28
\audio_Codec_Controller|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|Equal3~0_combout\ = (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(2) & (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(3) & (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(1) & 
-- !\audio_Codec_Controller|dataBitCounterInstance|countBit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|dataBitCounterInstance|countBit\(2),
	datab => \audio_Codec_Controller|dataBitCounterInstance|countBit\(3),
	datac => \audio_Codec_Controller|dataBitCounterInstance|countBit\(1),
	datad => \audio_Codec_Controller|dataBitCounterInstance|countBit\(4),
	combout => \audio_Codec_Controller|Equal3~0_combout\);

-- Location: LCCOMB_X114_Y52_N6
\audio_Codec_Controller|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|Selector3~0_combout\ = (\audio_Codec_Controller|I2C_state.startCondition~q\) # ((\audio_Codec_Controller|I2C_state.acknowledge~q\ & ((\audio_Codec_Controller|dataBitCounterInstance|countBit\(0)) # 
-- (!\audio_Codec_Controller|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|I2C_state.startCondition~q\,
	datab => \audio_Codec_Controller|I2C_state.acknowledge~q\,
	datac => \audio_Codec_Controller|dataBitCounterInstance|countBit\(0),
	datad => \audio_Codec_Controller|Equal3~0_combout\,
	combout => \audio_Codec_Controller|Selector3~0_combout\);

-- Location: LCCOMB_X114_Y52_N28
\audio_Codec_Controller|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|Selector3~1_combout\ = (\audio_Codec_Controller|Selector3~0_combout\) # ((\audio_Codec_Controller|I2C_state.sendData~q\ & ((!\audio_Codec_Controller|process_0~1_combout\) # (!\audio_Codec_Controller|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|process_0~0_combout\,
	datab => \audio_Codec_Controller|process_0~1_combout\,
	datac => \audio_Codec_Controller|I2C_state.sendData~q\,
	datad => \audio_Codec_Controller|Selector3~0_combout\,
	combout => \audio_Codec_Controller|Selector3~1_combout\);

-- Location: FF_X114_Y52_N29
\audio_Codec_Controller|I2C_state.sendData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|I2C_state.sendData~q\);

-- Location: LCCOMB_X114_Y52_N10
\audio_Codec_Controller|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|Selector8~0_combout\ = (!\audio_Codec_Controller|I2C_state.prepForStop~q\ & (\audio_Codec_Controller|I2C_state.resetState~q\ & (!\audio_Codec_Controller|I2C_state.stopCondition~q\ & !\audio_Codec_Controller|I2C_state.sendData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|I2C_state.prepForStop~q\,
	datab => \audio_Codec_Controller|I2C_state.resetState~q\,
	datac => \audio_Codec_Controller|I2C_state.stopCondition~q\,
	datad => \audio_Codec_Controller|I2C_state.sendData~q\,
	combout => \audio_Codec_Controller|Selector8~0_combout\);

-- Location: LCCOMB_X114_Y52_N24
\audio_Codec_Controller|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|Selector8~1_combout\ = (\audio_Codec_Controller|Selector8~0_combout\ & (((\audio_Codec_Controller|bitCountEnable~q\ & !\audio_Codec_Controller|Selector4~0_combout\)) # (!\audio_Codec_Controller|Selector5~0_combout\))) # 
-- (!\audio_Codec_Controller|Selector8~0_combout\ & (((\audio_Codec_Controller|bitCountEnable~q\ & !\audio_Codec_Controller|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|Selector8~0_combout\,
	datab => \audio_Codec_Controller|Selector5~0_combout\,
	datac => \audio_Codec_Controller|bitCountEnable~q\,
	datad => \audio_Codec_Controller|Selector4~0_combout\,
	combout => \audio_Codec_Controller|Selector8~1_combout\);

-- Location: FF_X114_Y52_N25
\audio_Codec_Controller|bitCountEnable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|bitCountEnable~q\);

-- Location: FF_X113_Y52_N1
\audio_Codec_Controller|dataBitCounterInstance|countBit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|dataBitCounterInstance|countBit[0]~3_combout\,
	ena => \audio_Codec_Controller|bitCountEnable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|dataBitCounterInstance|countBit\(0));

-- Location: LCCOMB_X113_Y52_N16
\audio_Codec_Controller|dataBitCounterInstance|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|Add0~2_combout\ = (\audio_Codec_Controller|dataBitCounterInstance|countBit\(1) & (!\audio_Codec_Controller|dataBitCounterInstance|Add0~1\)) # (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(1) & 
-- (\audio_Codec_Controller|dataBitCounterInstance|Add0~1\ & VCC))
-- \audio_Codec_Controller|dataBitCounterInstance|Add0~3\ = CARRY((\audio_Codec_Controller|dataBitCounterInstance|countBit\(1) & !\audio_Codec_Controller|dataBitCounterInstance|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|dataBitCounterInstance|countBit\(1),
	datad => VCC,
	cin => \audio_Codec_Controller|dataBitCounterInstance|Add0~1\,
	combout => \audio_Codec_Controller|dataBitCounterInstance|Add0~2_combout\,
	cout => \audio_Codec_Controller|dataBitCounterInstance|Add0~3\);

-- Location: LCCOMB_X113_Y52_N26
\audio_Codec_Controller|dataBitCounterInstance|countBit[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|countBit[1]~2_combout\ = !\audio_Codec_Controller|dataBitCounterInstance|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio_Codec_Controller|dataBitCounterInstance|Add0~2_combout\,
	combout => \audio_Codec_Controller|dataBitCounterInstance|countBit[1]~2_combout\);

-- Location: FF_X113_Y52_N27
\audio_Codec_Controller|dataBitCounterInstance|countBit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|dataBitCounterInstance|countBit[1]~2_combout\,
	ena => \audio_Codec_Controller|bitCountEnable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|dataBitCounterInstance|countBit\(1));

-- Location: LCCOMB_X113_Y52_N12
\audio_Codec_Controller|dataBitCounterInstance|countBit[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|countBit[2]~1_combout\ = !\audio_Codec_Controller|dataBitCounterInstance|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio_Codec_Controller|dataBitCounterInstance|Add0~4_combout\,
	combout => \audio_Codec_Controller|dataBitCounterInstance|countBit[2]~1_combout\);

-- Location: FF_X113_Y52_N13
\audio_Codec_Controller|dataBitCounterInstance|countBit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|dataBitCounterInstance|countBit[2]~1_combout\,
	ena => \audio_Codec_Controller|bitCountEnable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|dataBitCounterInstance|countBit\(2));

-- Location: LCCOMB_X113_Y52_N10
\audio_Codec_Controller|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|process_0~0_combout\ = (\audio_Codec_Controller|dataBitCounterInstance|countBit\(2) & (\audio_Codec_Controller|dataBitCounterInstance|countBit\(1) & \audio_Codec_Controller|dataBitCounterInstance|countBit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|dataBitCounterInstance|countBit\(2),
	datac => \audio_Codec_Controller|dataBitCounterInstance|countBit\(1),
	datad => \audio_Codec_Controller|dataBitCounterInstance|countBit\(0),
	combout => \audio_Codec_Controller|process_0~0_combout\);

-- Location: LCCOMB_X113_Y52_N8
\audio_Codec_Controller|dataBitCounterInstance|countBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|dataBitCounterInstance|countBit~0_combout\ = (\audio_Codec_Controller|dataBitCounterInstance|Add0~6_combout\ & (((\audio_Codec_Controller|dataBitCounterInstance|countBit\(3)) # 
-- (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(4))) # (!\audio_Codec_Controller|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|process_0~0_combout\,
	datab => \audio_Codec_Controller|dataBitCounterInstance|countBit\(4),
	datac => \audio_Codec_Controller|dataBitCounterInstance|countBit\(3),
	datad => \audio_Codec_Controller|dataBitCounterInstance|Add0~6_combout\,
	combout => \audio_Codec_Controller|dataBitCounterInstance|countBit~0_combout\);

-- Location: FF_X113_Y52_N9
\audio_Codec_Controller|dataBitCounterInstance|countBit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|dataBitCounterInstance|countBit~0_combout\,
	ena => \audio_Codec_Controller|bitCountEnable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|dataBitCounterInstance|countBit\(3));

-- Location: LCCOMB_X113_Y52_N2
\audio_Codec_Controller|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|Selector4~0_combout\ = (\audio_Codec_Controller|I2C_state.sendData~q\ & (\audio_Codec_Controller|process_0~0_combout\ & ((\audio_Codec_Controller|dataBitCounterInstance|countBit\(4)) # 
-- (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|dataBitCounterInstance|countBit\(3),
	datab => \audio_Codec_Controller|dataBitCounterInstance|countBit\(4),
	datac => \audio_Codec_Controller|I2C_state.sendData~q\,
	datad => \audio_Codec_Controller|process_0~0_combout\,
	combout => \audio_Codec_Controller|Selector4~0_combout\);

-- Location: LCCOMB_X113_Y52_N4
\audio_Codec_Controller|I2C_state.acknowledge~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|I2C_state.acknowledge~feeder_combout\ = \audio_Codec_Controller|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio_Codec_Controller|Selector4~0_combout\,
	combout => \audio_Codec_Controller|I2C_state.acknowledge~feeder_combout\);

-- Location: FF_X113_Y52_N5
\audio_Codec_Controller|I2C_state.acknowledge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|I2C_state.acknowledge~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|I2C_state.acknowledge~q\);

-- Location: LCCOMB_X113_Y52_N6
\audio_Codec_Controller|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|Selector5~0_combout\ = (\audio_Codec_Controller|I2C_state.acknowledge~q\ & (!\audio_Codec_Controller|dataBitCounterInstance|countBit\(0) & \audio_Codec_Controller|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio_Codec_Controller|I2C_state.acknowledge~q\,
	datac => \audio_Codec_Controller|dataBitCounterInstance|countBit\(0),
	datad => \audio_Codec_Controller|Equal3~0_combout\,
	combout => \audio_Codec_Controller|Selector5~0_combout\);

-- Location: FF_X113_Y52_N7
\audio_Codec_Controller|I2C_state.prepForStop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|I2C_state.prepForStop~q\);

-- Location: LCCOMB_X114_Y52_N20
\audio_Codec_Controller|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|Selector1~0_combout\ = (!\audio_Codec_Controller|SCLK_Temp~q\ & ((\audio_Codec_Controller|I2C_state.stopCondition~q\) # ((\audio_Codec_Controller|I2C_state.acknowledge~q\) # (\audio_Codec_Controller|I2C_state.startCondition~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|I2C_state.stopCondition~q\,
	datab => \audio_Codec_Controller|I2C_state.acknowledge~q\,
	datac => \audio_Codec_Controller|SCLK_Temp~q\,
	datad => \audio_Codec_Controller|I2C_state.startCondition~q\,
	combout => \audio_Codec_Controller|Selector1~0_combout\);

-- Location: LCCOMB_X114_Y52_N8
\audio_Codec_Controller|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|Selector1~1_combout\ = (!\audio_Codec_Controller|I2C_state.prepForStop~q\ & (\audio_Codec_Controller|I2C_state.resetState~q\ & !\audio_Codec_Controller|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_Codec_Controller|I2C_state.prepForStop~q\,
	datab => \audio_Codec_Controller|I2C_state.resetState~q\,
	datad => \audio_Codec_Controller|Selector1~0_combout\,
	combout => \audio_Codec_Controller|Selector1~1_combout\);

-- Location: FF_X114_Y52_N9
\audio_Codec_Controller|SCLK_Temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio_Codec_Controller|clock50KHzInstance|output~clkctrl_outclk\,
	d => \audio_Codec_Controller|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_Codec_Controller|SCLK_Temp~q\);

-- Location: LCCOMB_X114_Y52_N26
\audio_Codec_Controller|I2C_SCLK_Internal\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio_Codec_Controller|I2C_SCLK_Internal~combout\ = (!\audio_Codec_Controller|clock50KHzInstance|output~q\) # (!\audio_Codec_Controller|SCLK_Temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio_Codec_Controller|SCLK_Temp~q\,
	datac => \audio_Codec_Controller|clock50KHzInstance|output~q\,
	combout => \audio_Codec_Controller|I2C_SCLK_Internal~combout\);

-- Location: IOIBUF_X79_Y73_N8
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\I2C_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2C_SDAT,
	o => \I2C_SDAT~input_o\);
END structure;


