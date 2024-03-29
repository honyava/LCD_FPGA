-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/08/2023 19:31:26"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lcd_test IS
    PORT (
	clk : IN std_logic;
	lcd_data_in : IN std_logic_vector(31 DOWNTO 0);
	e : OUT std_logic;
	rs : OUT std_logic;
	rw : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	lcd_on : OUT std_logic;
	lcd_blon : OUT std_logic
	);
END lcd_test;

-- Design Ports Information
-- e	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rs	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rw	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_on	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_blon	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[0]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[2]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[6]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[7]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[8]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[9]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[10]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[11]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[12]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[13]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[14]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[15]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[16]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[17]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[18]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[19]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[20]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[21]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[22]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[23]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[24]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[25]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[26]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[27]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[28]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[30]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[31]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcd_data_in[29]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lcd_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_lcd_data_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_e : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd_on : std_logic;
SIGNAL ww_lcd_blon : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD_contr|Add0~20_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~56_combout\ : std_logic;
SIGNAL \LCD_user|char[1]~7_combout\ : std_logic;
SIGNAL \LCD_user|j[11]~54_combout\ : std_logic;
SIGNAL \LCD_user|j[12]~56_combout\ : std_logic;
SIGNAL \LCD_user|j[13]~58_combout\ : std_logic;
SIGNAL \LCD_user|j[14]~60_combout\ : std_logic;
SIGNAL \LCD_user|j[17]~66_combout\ : std_logic;
SIGNAL \LCD_user|j[22]~76_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[3]~37_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[5]~41_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[12]~55_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[13]~57_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[19]~69_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[24]~79_combout\ : std_logic;
SIGNAL \LCD_user|Add11~10_combout\ : std_logic;
SIGNAL \LCD_user|Add11~12_combout\ : std_logic;
SIGNAL \LCD_user|Add11~38_combout\ : std_logic;
SIGNAL \LCD_user|Add11~42_combout\ : std_logic;
SIGNAL \LCD_user|Add11~44_combout\ : std_logic;
SIGNAL \LCD_user|Add11~61\ : std_logic;
SIGNAL \LCD_user|Add11~62_combout\ : std_logic;
SIGNAL \LCD_user|Add9~8_combout\ : std_logic;
SIGNAL \LCD_user|Add9~12_combout\ : std_logic;
SIGNAL \LCD_user|Add9~20_combout\ : std_logic;
SIGNAL \LCD_user|Add9~38_combout\ : std_logic;
SIGNAL \LCD_user|Add9~44_combout\ : std_logic;
SIGNAL \LCD_user|Add9~55\ : std_logic;
SIGNAL \LCD_user|Add9~56_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan5~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan3~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan3~1_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan3~2_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan6~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan5~5_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan5~6_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan4~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan4~1_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan4~2_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan2~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan2~1_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan2~2_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan1~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan7~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan1~1_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan6~1_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan6~2_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan6~3_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan8~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan7~1_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan12~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan10~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan9~4_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan10~1_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan11~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan11~1_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan12~5_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan10~2_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan10~3_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan10~4_combout\ : std_logic;
SIGNAL \LCD_contr|Selector46~6_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan9~5_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan12~6_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan12~7_combout\ : std_logic;
SIGNAL \LCD_contr|Selector46~7_combout\ : std_logic;
SIGNAL \LCD_contr|Selector46~8_combout\ : std_logic;
SIGNAL \LCD_contr|Selector36~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan0~1_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan0~2_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan0~3_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan0~4_combout\ : std_logic;
SIGNAL \LCD_contr|Selector45~0_combout\ : std_logic;
SIGNAL \LCD_contr|Selector35~2_combout\ : std_logic;
SIGNAL \LCD_contr|Selector17~0_combout\ : std_logic;
SIGNAL \LCD_contr|Selector22~0_combout\ : std_logic;
SIGNAL \LCD_contr|Selector8~0_combout\ : std_logic;
SIGNAL \LCD_contr|Selector7~0_combout\ : std_logic;
SIGNAL \LCD_contr|Selector4~0_combout\ : std_logic;
SIGNAL \LCD_contr|Selector34~1_combout\ : std_logic;
SIGNAL \LCD_user|Mux9~0_combout\ : std_logic;
SIGNAL \LCD_user|Mux5~0_combout\ : std_logic;
SIGNAL \LCD_user|Equal5~2_combout\ : std_logic;
SIGNAL \LCD_user|Equal5~7_combout\ : std_logic;
SIGNAL \LCD_user|LessThan8~0_combout\ : std_logic;
SIGNAL \LCD_user|LessThan8~1_combout\ : std_logic;
SIGNAL \LCD_user|LessThan8~4_combout\ : std_logic;
SIGNAL \LCD_user|global_flag_start~0_combout\ : std_logic;
SIGNAL \LCD_user|change~0_combout\ : std_logic;
SIGNAL \LCD_user|change~1_combout\ : std_logic;
SIGNAL \LCD_user|change~2_combout\ : std_logic;
SIGNAL \LCD_user|change~3_combout\ : std_logic;
SIGNAL \LCD_user|change~4_combout\ : std_logic;
SIGNAL \LCD_user|change~6_combout\ : std_logic;
SIGNAL \LCD_user|change~10_combout\ : std_logic;
SIGNAL \LCD_user|Equal1~0_combout\ : std_logic;
SIGNAL \LCD_user|change~17_combout\ : std_logic;
SIGNAL \LCD_user|change~18_combout\ : std_logic;
SIGNAL \LCD_user|Mux14~0_combout\ : std_logic;
SIGNAL \LCD_user|z~1_combout\ : std_logic;
SIGNAL \LCD_user|Add7~0_combout\ : std_logic;
SIGNAL \LCD_user|bindec~11_combout\ : std_logic;
SIGNAL \LCD_user|Equal12~1_combout\ : std_logic;
SIGNAL \LCD_user|Equal12~5_combout\ : std_logic;
SIGNAL \LCD_user|Equal12~6_combout\ : std_logic;
SIGNAL \LCD_user|Equal12~7_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd[3]~15_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd~16_combout\ : std_logic;
SIGNAL \LCD_user|LessThan6~1_combout\ : std_logic;
SIGNAL \LCD_user|bindec~20_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd~17_combout\ : std_logic;
SIGNAL \LCD_user|Mux18~0_combout\ : std_logic;
SIGNAL \LCD_user|Mux18~1_combout\ : std_logic;
SIGNAL \LCD_user|bindec~21_combout\ : std_logic;
SIGNAL \LCD_user|global_flag_finish[0]~0_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd~31_combout\ : std_logic;
SIGNAL \LCD_user|Equal3~1_combout\ : std_logic;
SIGNAL \LCD_contr|busy~5_combout\ : std_logic;
SIGNAL \LCD_user|bindec~27_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd~23_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[0]~93_combout\ : std_logic;
SIGNAL \LCD_user|massive_lcd[0]~feeder_combout\ : std_logic;
SIGNAL \LCD_user|massive_lcd[6]~feeder_combout\ : std_logic;
SIGNAL \LCD_user|massive_lcd[8]~feeder_combout\ : std_logic;
SIGNAL \LCD_user|massive_lcd[10]~feeder_combout\ : std_logic;
SIGNAL \LCD_user|massive_lcd[12]~feeder_combout\ : std_logic;
SIGNAL \LCD_user|massive_lcd[14]~feeder_combout\ : std_logic;
SIGNAL \LCD_user|massive_lcd[30]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \LCD_contr|rs~1_combout\ : std_logic;
SIGNAL \LCD_contr|state.power_up~regout\ : std_logic;
SIGNAL \LCD_contr|Selector33~0_combout\ : std_logic;
SIGNAL \LCD_contr|clk_count[30]~4_combout\ : std_logic;
SIGNAL \LCD_contr|Selector9~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~47\ : std_logic;
SIGNAL \LCD_contr|Add0~49\ : std_logic;
SIGNAL \LCD_contr|Add0~51\ : std_logic;
SIGNAL \LCD_contr|Add0~52_combout\ : std_logic;
SIGNAL \LCD_contr|Selector6~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan12~1_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~53\ : std_logic;
SIGNAL \LCD_contr|Add0~55\ : std_logic;
SIGNAL \LCD_contr|Add0~57\ : std_logic;
SIGNAL \LCD_contr|Add0~58_combout\ : std_logic;
SIGNAL \LCD_contr|Selector3~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~59\ : std_logic;
SIGNAL \LCD_contr|Add0~60_combout\ : std_logic;
SIGNAL \LCD_contr|Selector2~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~54_combout\ : std_logic;
SIGNAL \LCD_contr|Selector5~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan9~3_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~38_combout\ : std_logic;
SIGNAL \LCD_contr|Selector13~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan0~5_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan0~6_combout\ : std_logic;
SIGNAL \LCD_contr|Selector1~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~61\ : std_logic;
SIGNAL \LCD_contr|Add0~62_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~32_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~30_combout\ : std_logic;
SIGNAL \LCD_contr|clk_count[30]~7_combout\ : std_logic;
SIGNAL \LCD_contr|clk_count[30]~5_combout\ : std_logic;
SIGNAL \LCD_contr|clk_count[30]~6_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~0_combout\ : std_logic;
SIGNAL \LCD_contr|Selector32~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~1\ : std_logic;
SIGNAL \LCD_contr|Add0~2_combout\ : std_logic;
SIGNAL \LCD_contr|Selector31~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~3\ : std_logic;
SIGNAL \LCD_contr|Add0~4_combout\ : std_logic;
SIGNAL \LCD_contr|Selector30~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~5\ : std_logic;
SIGNAL \LCD_contr|Add0~6_combout\ : std_logic;
SIGNAL \LCD_contr|Selector29~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~7\ : std_logic;
SIGNAL \LCD_contr|Add0~8_combout\ : std_logic;
SIGNAL \LCD_contr|Selector28~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~9\ : std_logic;
SIGNAL \LCD_contr|Add0~10_combout\ : std_logic;
SIGNAL \LCD_contr|Selector27~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~11\ : std_logic;
SIGNAL \LCD_contr|Add0~12_combout\ : std_logic;
SIGNAL \LCD_contr|Selector26~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~13\ : std_logic;
SIGNAL \LCD_contr|Add0~15\ : std_logic;
SIGNAL \LCD_contr|Add0~16_combout\ : std_logic;
SIGNAL \LCD_contr|Selector24~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~17\ : std_logic;
SIGNAL \LCD_contr|Add0~19\ : std_logic;
SIGNAL \LCD_contr|Add0~21\ : std_logic;
SIGNAL \LCD_contr|Add0~22_combout\ : std_logic;
SIGNAL \LCD_contr|Selector21~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~23\ : std_logic;
SIGNAL \LCD_contr|Add0~24_combout\ : std_logic;
SIGNAL \LCD_contr|Selector20~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~25\ : std_logic;
SIGNAL \LCD_contr|Add0~26_combout\ : std_logic;
SIGNAL \LCD_contr|Selector19~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~27\ : std_logic;
SIGNAL \LCD_contr|Add0~28_combout\ : std_logic;
SIGNAL \LCD_contr|Selector18~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~29\ : std_logic;
SIGNAL \LCD_contr|Add0~31\ : std_logic;
SIGNAL \LCD_contr|Add0~33\ : std_logic;
SIGNAL \LCD_contr|Add0~34_combout\ : std_logic;
SIGNAL \LCD_contr|Selector15~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~35\ : std_logic;
SIGNAL \LCD_contr|Add0~36_combout\ : std_logic;
SIGNAL \LCD_contr|Selector14~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~37\ : std_logic;
SIGNAL \LCD_contr|Add0~39\ : std_logic;
SIGNAL \LCD_contr|Add0~40_combout\ : std_logic;
SIGNAL \LCD_contr|Selector12~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~41\ : std_logic;
SIGNAL \LCD_contr|Add0~42_combout\ : std_logic;
SIGNAL \LCD_contr|Selector11~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~43\ : std_logic;
SIGNAL \LCD_contr|Add0~44_combout\ : std_logic;
SIGNAL \LCD_contr|Selector10~0_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~45\ : std_logic;
SIGNAL \LCD_contr|Add0~46_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~48_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan5~1_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~50_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan5~2_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan5~3_combout\ : std_logic;
SIGNAL \LCD_contr|clk_count[30]~2_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~18_combout\ : std_logic;
SIGNAL \LCD_contr|Add0~14_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan2~4_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan8~1_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan8~2_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan8~3_combout\ : std_logic;
SIGNAL \LCD_contr|clk_count[30]~3_combout\ : std_logic;
SIGNAL \LCD_contr|Selector33~1_combout\ : std_logic;
SIGNAL \LCD_contr|state.initialize~regout\ : std_logic;
SIGNAL \LCD_contr|LessThan7~2_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan5~4_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan3~3_combout\ : std_logic;
SIGNAL \LCD_contr|busy~4_combout\ : std_logic;
SIGNAL \LCD_contr|Selector34~2_combout\ : std_logic;
SIGNAL \LCD_contr|Selector23~0_combout\ : std_logic;
SIGNAL \LCD_contr|Selector25~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan9~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan9~1_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan9~2_combout\ : std_logic;
SIGNAL \LCD_contr|Selector16~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan0~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan12~2_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan12~3_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan12~4_combout\ : std_logic;
SIGNAL \LCD_contr|Selector34~0_combout\ : std_logic;
SIGNAL \LCD_contr|Selector34~3_combout\ : std_logic;
SIGNAL \LCD_contr|state.ready~regout\ : std_logic;
SIGNAL \LCD_contr|Selector35~3_combout\ : std_logic;
SIGNAL \LCD_contr|state.send~regout\ : std_logic;
SIGNAL \LCD_contr|Selector46~3_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan2~3_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan4~3_combout\ : std_logic;
SIGNAL \LCD_contr|Selector46~2_combout\ : std_logic;
SIGNAL \LCD_contr|Selector46~4_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan5~7_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan5~8_combout\ : std_logic;
SIGNAL \LCD_contr|Selector46~0_combout\ : std_logic;
SIGNAL \LCD_contr|LessThan1~2_combout\ : std_logic;
SIGNAL \LCD_contr|Selector46~1_combout\ : std_logic;
SIGNAL \LCD_contr|Selector46~5_combout\ : std_logic;
SIGNAL \LCD_contr|Selector46~9_combout\ : std_logic;
SIGNAL \LCD_contr|e~regout\ : std_logic;
SIGNAL \LCD_contr|lcd_data[0]~0_combout\ : std_logic;
SIGNAL \LCD_contr|rs~0_combout\ : std_logic;
SIGNAL \LCD_contr|rs~regout\ : std_logic;
SIGNAL \LCD_user|char[0]~5_combout\ : std_logic;
SIGNAL \LCD_contr|busy~regout\ : std_logic;
SIGNAL \LCD_user|process_0~0_combout\ : std_logic;
SIGNAL \LCD_user|char[0]~6\ : std_logic;
SIGNAL \LCD_user|char[1]~8\ : std_logic;
SIGNAL \LCD_user|char[2]~9_combout\ : std_logic;
SIGNAL \LCD_user|char[2]~10\ : std_logic;
SIGNAL \LCD_user|char[3]~11_combout\ : std_logic;
SIGNAL \LCD_user|char[3]~12\ : std_logic;
SIGNAL \LCD_user|char[4]~13_combout\ : std_logic;
SIGNAL \LCD_user|j[0]~32_combout\ : std_logic;
SIGNAL \LCD_user|change~15_combout\ : std_logic;
SIGNAL \LCD_user|massive_lcd[26]~feeder_combout\ : std_logic;
SIGNAL \LCD_user|change~16_combout\ : std_logic;
SIGNAL \LCD_user|change~12_combout\ : std_logic;
SIGNAL \LCD_user|massive_lcd[18]~feeder_combout\ : std_logic;
SIGNAL \LCD_user|change~11_combout\ : std_logic;
SIGNAL \LCD_user|massive_lcd[22]~feeder_combout\ : std_logic;
SIGNAL \LCD_user|change~13_combout\ : std_logic;
SIGNAL \LCD_user|change~14_combout\ : std_logic;
SIGNAL \LCD_user|change~19_combout\ : std_logic;
SIGNAL \LCD_user|change~7_combout\ : std_logic;
SIGNAL \LCD_user|change~8_combout\ : std_logic;
SIGNAL \LCD_user|change~5_combout\ : std_logic;
SIGNAL \LCD_user|change~9_combout\ : std_logic;
SIGNAL \LCD_user|Add9~0_combout\ : std_logic;
SIGNAL \LCD_user|send_flag~0_combout\ : std_logic;
SIGNAL \LCD_user|process_1~3_combout\ : std_logic;
SIGNAL \LCD_user|Add9~1\ : std_logic;
SIGNAL \LCD_user|Add9~3\ : std_logic;
SIGNAL \LCD_user|Add9~5\ : std_logic;
SIGNAL \LCD_user|Add9~7\ : std_logic;
SIGNAL \LCD_user|Add9~9\ : std_logic;
SIGNAL \LCD_user|Add9~10_combout\ : std_logic;
SIGNAL \LCD_user|Add9~11\ : std_logic;
SIGNAL \LCD_user|Add9~13\ : std_logic;
SIGNAL \LCD_user|Add9~14_combout\ : std_logic;
SIGNAL \LCD_user|Add9~15\ : std_logic;
SIGNAL \LCD_user|Add9~17\ : std_logic;
SIGNAL \LCD_user|Add9~18_combout\ : std_logic;
SIGNAL \LCD_user|Add9~19\ : std_logic;
SIGNAL \LCD_user|Add9~21\ : std_logic;
SIGNAL \LCD_user|Add9~22_combout\ : std_logic;
SIGNAL \LCD_user|Add9~23\ : std_logic;
SIGNAL \LCD_user|Add9~24_combout\ : std_logic;
SIGNAL \LCD_user|Add9~25\ : std_logic;
SIGNAL \LCD_user|Add9~26_combout\ : std_logic;
SIGNAL \LCD_user|Add9~27\ : std_logic;
SIGNAL \LCD_user|Add9~28_combout\ : std_logic;
SIGNAL \LCD_user|Add9~29\ : std_logic;
SIGNAL \LCD_user|Add9~30_combout\ : std_logic;
SIGNAL \LCD_user|Add9~31\ : std_logic;
SIGNAL \LCD_user|Add9~32_combout\ : std_logic;
SIGNAL \LCD_user|Add9~33\ : std_logic;
SIGNAL \LCD_user|Add9~35\ : std_logic;
SIGNAL \LCD_user|Add9~36_combout\ : std_logic;
SIGNAL \LCD_user|Add9~37\ : std_logic;
SIGNAL \LCD_user|Add9~39\ : std_logic;
SIGNAL \LCD_user|Add9~41\ : std_logic;
SIGNAL \LCD_user|Add9~42_combout\ : std_logic;
SIGNAL \LCD_user|Add9~43\ : std_logic;
SIGNAL \LCD_user|Add9~45\ : std_logic;
SIGNAL \LCD_user|Add9~46_combout\ : std_logic;
SIGNAL \LCD_user|Add9~40_combout\ : std_logic;
SIGNAL \LCD_user|Equal3~6_combout\ : std_logic;
SIGNAL \LCD_user|Add9~34_combout\ : std_logic;
SIGNAL \LCD_user|Equal3~5_combout\ : std_logic;
SIGNAL \LCD_user|Equal3~7_combout\ : std_logic;
SIGNAL \LCD_user|Add9~16_combout\ : std_logic;
SIGNAL \LCD_user|Equal3~2_combout\ : std_logic;
SIGNAL \LCD_user|Add9~6_combout\ : std_logic;
SIGNAL \LCD_user|Add9~4_combout\ : std_logic;
SIGNAL \LCD_user|cnt~0_combout\ : std_logic;
SIGNAL \LCD_user|Equal3~0_combout\ : std_logic;
SIGNAL \LCD_user|Equal3~3_combout\ : std_logic;
SIGNAL \LCD_user|Equal3~4_combout\ : std_logic;
SIGNAL \LCD_user|Add9~47\ : std_logic;
SIGNAL \LCD_user|Add9~49\ : std_logic;
SIGNAL \LCD_user|Add9~50_combout\ : std_logic;
SIGNAL \LCD_user|Add9~51\ : std_logic;
SIGNAL \LCD_user|Add9~52_combout\ : std_logic;
SIGNAL \LCD_user|Add9~48_combout\ : std_logic;
SIGNAL \LCD_user|Add9~53\ : std_logic;
SIGNAL \LCD_user|Add9~54_combout\ : std_logic;
SIGNAL \LCD_user|Equal3~8_combout\ : std_logic;
SIGNAL \LCD_user|Equal3~9_combout\ : std_logic;
SIGNAL \LCD_user|change~21_combout\ : std_logic;
SIGNAL \LCD_user|change~regout\ : std_logic;
SIGNAL \LCD_user|change~20_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[1]~33_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd~32_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[1]~34\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[2]~35_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[2]~36\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[3]~38\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[4]~39_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[4]~40\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[5]~42\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[6]~43_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[6]~44\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[7]~45_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[7]~46\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[8]~47_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[8]~48\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[9]~50\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[10]~52\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[11]~54\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[12]~56\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[13]~58\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[14]~59_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[14]~60\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[15]~61_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[15]~62\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[16]~63_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[16]~64\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[17]~65_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[17]~66\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[18]~67_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[18]~68\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[19]~70\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[20]~71_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[20]~72\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[21]~73_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[21]~74\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[22]~75_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[22]~76\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[23]~77_combout\ : std_logic;
SIGNAL \LCD_user|LessThan8~6_combout\ : std_logic;
SIGNAL \LCD_user|LessThan8~5_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[23]~78\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[24]~80\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[25]~82\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[26]~83_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[25]~81_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[26]~84\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[27]~85_combout\ : std_logic;
SIGNAL \LCD_user|LessThan8~7_combout\ : std_logic;
SIGNAL \LCD_user|LessThan8~8_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[11]~53_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[10]~51_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[9]~49_combout\ : std_logic;
SIGNAL \LCD_user|LessThan8~2_combout\ : std_logic;
SIGNAL \LCD_user|LessThan8~9_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd~30_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[27]~86\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[28]~88\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[29]~90\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[30]~91_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[29]~89_combout\ : std_logic;
SIGNAL \LCD_user|div_freq_lcd[28]~87_combout\ : std_logic;
SIGNAL \LCD_user|LessThan8~3_combout\ : std_logic;
SIGNAL \LCD_user|process_1~5_combout\ : std_logic;
SIGNAL \LCD_user|j[0]~33\ : std_logic;
SIGNAL \LCD_user|j[1]~34_combout\ : std_logic;
SIGNAL \LCD_user|j[1]~35\ : std_logic;
SIGNAL \LCD_user|j[2]~36_combout\ : std_logic;
SIGNAL \LCD_user|j[2]~37\ : std_logic;
SIGNAL \LCD_user|j[3]~38_combout\ : std_logic;
SIGNAL \LCD_user|j[3]~39\ : std_logic;
SIGNAL \LCD_user|j[4]~40_combout\ : std_logic;
SIGNAL \LCD_user|j[4]~41\ : std_logic;
SIGNAL \LCD_user|j[5]~42_combout\ : std_logic;
SIGNAL \LCD_user|j[5]~43\ : std_logic;
SIGNAL \LCD_user|j[6]~44_combout\ : std_logic;
SIGNAL \LCD_user|j[6]~45\ : std_logic;
SIGNAL \LCD_user|j[7]~46_combout\ : std_logic;
SIGNAL \LCD_user|j[7]~47\ : std_logic;
SIGNAL \LCD_user|j[8]~49\ : std_logic;
SIGNAL \LCD_user|j[9]~51\ : std_logic;
SIGNAL \LCD_user|j[10]~53\ : std_logic;
SIGNAL \LCD_user|j[11]~55\ : std_logic;
SIGNAL \LCD_user|j[12]~57\ : std_logic;
SIGNAL \LCD_user|j[13]~59\ : std_logic;
SIGNAL \LCD_user|j[14]~61\ : std_logic;
SIGNAL \LCD_user|j[15]~63\ : std_logic;
SIGNAL \LCD_user|j[16]~65\ : std_logic;
SIGNAL \LCD_user|j[17]~67\ : std_logic;
SIGNAL \LCD_user|j[18]~69\ : std_logic;
SIGNAL \LCD_user|j[19]~71\ : std_logic;
SIGNAL \LCD_user|j[20]~73\ : std_logic;
SIGNAL \LCD_user|j[21]~75\ : std_logic;
SIGNAL \LCD_user|j[22]~77\ : std_logic;
SIGNAL \LCD_user|j[23]~78_combout\ : std_logic;
SIGNAL \LCD_user|j[23]~79\ : std_logic;
SIGNAL \LCD_user|j[24]~80_combout\ : std_logic;
SIGNAL \LCD_user|j[24]~81\ : std_logic;
SIGNAL \LCD_user|j[25]~82_combout\ : std_logic;
SIGNAL \LCD_user|Equal5~6_combout\ : std_logic;
SIGNAL \LCD_user|Equal5~0_combout\ : std_logic;
SIGNAL \LCD_user|j[9]~50_combout\ : std_logic;
SIGNAL \LCD_user|j[10]~52_combout\ : std_logic;
SIGNAL \LCD_user|j[8]~48_combout\ : std_logic;
SIGNAL \LCD_user|Equal5~1_combout\ : std_logic;
SIGNAL \LCD_user|j[16]~64_combout\ : std_logic;
SIGNAL \LCD_user|j[15]~62_combout\ : std_logic;
SIGNAL \LCD_user|j[18]~68_combout\ : std_logic;
SIGNAL \LCD_user|Equal5~3_combout\ : std_logic;
SIGNAL \LCD_user|Equal5~4_combout\ : std_logic;
SIGNAL \LCD_user|j[20]~72_combout\ : std_logic;
SIGNAL \LCD_user|j[19]~70_combout\ : std_logic;
SIGNAL \LCD_user|j[21]~74_combout\ : std_logic;
SIGNAL \LCD_user|Equal5~5_combout\ : std_logic;
SIGNAL \LCD_user|Equal5~8_combout\ : std_logic;
SIGNAL \LCD_user|Equal5~9_combout\ : std_logic;
SIGNAL \LCD_user|Mux13~0_combout\ : std_logic;
SIGNAL \LCD_user|Mux13~1_combout\ : std_logic;
SIGNAL \LCD_user|Mux14~1_combout\ : std_logic;
SIGNAL \LCD_user|Mux11~0_combout\ : std_logic;
SIGNAL \LCD_user|Add9~2_combout\ : std_logic;
SIGNAL \LCD_user|Mux11~1_combout\ : std_logic;
SIGNAL \LCD_user|z~11_combout\ : std_logic;
SIGNAL \LCD_user|Mux12~0_combout\ : std_logic;
SIGNAL \LCD_user|Mux12~1_combout\ : std_logic;
SIGNAL \LCD_user|z~9_combout\ : std_logic;
SIGNAL \LCD_user|LessThan5~0_combout\ : std_logic;
SIGNAL \LCD_user|bindec~26_combout\ : std_logic;
SIGNAL \LCD_user|z~2_combout\ : std_logic;
SIGNAL \LCD_user|Mux15~0_combout\ : std_logic;
SIGNAL \LCD_user|Mux15~1_combout\ : std_logic;
SIGNAL \LCD_user|z~0_combout\ : std_logic;
SIGNAL \LCD_user|z~3_combout\ : std_logic;
SIGNAL \LCD_user|Mux16~0_combout\ : std_logic;
SIGNAL \LCD_user|Mux16~1_combout\ : std_logic;
SIGNAL \LCD_user|z~8_combout\ : std_logic;
SIGNAL \LCD_user|Add5~0_combout\ : std_logic;
SIGNAL \LCD_user|z~12_combout\ : std_logic;
SIGNAL \LCD_user|LessThan7~0_combout\ : std_logic;
SIGNAL \LCD_user|bindec~19_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd[3]~12_combout\ : std_logic;
SIGNAL \LCD_user|Add8~0_combout\ : std_logic;
SIGNAL \LCD_user|z~10_combout\ : std_logic;
SIGNAL \LCD_user|bindec~12_combout\ : std_logic;
SIGNAL \LCD_user|bindec~13_combout\ : std_logic;
SIGNAL \LCD_user|bindec~14_combout\ : std_logic;
SIGNAL \LCD_user|bindec~24_combout\ : std_logic;
SIGNAL \LCD_user|z~4_combout\ : std_logic;
SIGNAL \LCD_user|z~5_combout\ : std_logic;
SIGNAL \LCD_user|z~6_combout\ : std_logic;
SIGNAL \LCD_user|z~14_combout\ : std_logic;
SIGNAL \LCD_user|Mux17~0_combout\ : std_logic;
SIGNAL \LCD_user|Mux17~1_combout\ : std_logic;
SIGNAL \LCD_user|z~7_combout\ : std_logic;
SIGNAL \LCD_user|LessThan6~0_combout\ : std_logic;
SIGNAL \LCD_user|bindec~15_combout\ : std_logic;
SIGNAL \LCD_user|process_1~4_combout\ : std_logic;
SIGNAL \LCD_user|flag_point[0]~0_combout\ : std_logic;
SIGNAL \LCD_user|flag_point[0]~1_combout\ : std_logic;
SIGNAL \LCD_user|flag_point[0]~2_combout\ : std_logic;
SIGNAL \LCD_user|process_1~2_combout\ : std_logic;
SIGNAL \LCD_user|j[25]~83\ : std_logic;
SIGNAL \LCD_user|j[26]~84_combout\ : std_logic;
SIGNAL \LCD_user|j[26]~85\ : std_logic;
SIGNAL \LCD_user|j[27]~86_combout\ : std_logic;
SIGNAL \LCD_user|j[27]~87\ : std_logic;
SIGNAL \LCD_user|j[28]~88_combout\ : std_logic;
SIGNAL \LCD_user|j[28]~89\ : std_logic;
SIGNAL \LCD_user|j[29]~90_combout\ : std_logic;
SIGNAL \LCD_user|j[29]~91\ : std_logic;
SIGNAL \LCD_user|j[30]~92_combout\ : std_logic;
SIGNAL \LCD_user|j[30]~93\ : std_logic;
SIGNAL \LCD_user|j[31]~94_combout\ : std_logic;
SIGNAL \LCD_user|Equal11~0_combout\ : std_logic;
SIGNAL \LCD_user|j[5]~96_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd[3]~6_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd~22_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd[3]~7_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd~8_combout\ : std_logic;
SIGNAL \LCD_user|bindec~10_combout\ : std_logic;
SIGNAL \LCD_user|bindec~23_combout\ : std_logic;
SIGNAL \LCD_user|Add8~1_combout\ : std_logic;
SIGNAL \LCD_user|z~13_combout\ : std_logic;
SIGNAL \LCD_user|bindec~18_combout\ : std_logic;
SIGNAL \LCD_user|bindec~25_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd~9_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd~10_combout\ : std_logic;
SIGNAL \LCD_user|LessThan9~0_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd[3]~13_combout\ : std_logic;
SIGNAL \LCD_user|Add11~0_combout\ : std_logic;
SIGNAL \LCD_user|send_flag[0]~1_combout\ : std_logic;
SIGNAL \LCD_user|Add11~1\ : std_logic;
SIGNAL \LCD_user|Add11~2_combout\ : std_logic;
SIGNAL \LCD_user|Add11~3\ : std_logic;
SIGNAL \LCD_user|Add11~4_combout\ : std_logic;
SIGNAL \LCD_user|k~0_combout\ : std_logic;
SIGNAL \LCD_user|Add11~5\ : std_logic;
SIGNAL \LCD_user|Add11~6_combout\ : std_logic;
SIGNAL \LCD_user|Equal12~0_combout\ : std_logic;
SIGNAL \LCD_user|Add11~7\ : std_logic;
SIGNAL \LCD_user|Add11~8_combout\ : std_logic;
SIGNAL \LCD_user|Add11~9\ : std_logic;
SIGNAL \LCD_user|Add11~11\ : std_logic;
SIGNAL \LCD_user|Add11~13\ : std_logic;
SIGNAL \LCD_user|Add11~14_combout\ : std_logic;
SIGNAL \LCD_user|Add11~15\ : std_logic;
SIGNAL \LCD_user|Add11~17\ : std_logic;
SIGNAL \LCD_user|Add11~18_combout\ : std_logic;
SIGNAL \LCD_user|Add11~19\ : std_logic;
SIGNAL \LCD_user|Add11~21\ : std_logic;
SIGNAL \LCD_user|Add11~22_combout\ : std_logic;
SIGNAL \LCD_user|Add11~23\ : std_logic;
SIGNAL \LCD_user|Add11~24_combout\ : std_logic;
SIGNAL \LCD_user|Add11~25\ : std_logic;
SIGNAL \LCD_user|Add11~26_combout\ : std_logic;
SIGNAL \LCD_user|Add11~27\ : std_logic;
SIGNAL \LCD_user|Add11~28_combout\ : std_logic;
SIGNAL \LCD_user|Add11~29\ : std_logic;
SIGNAL \LCD_user|Add11~30_combout\ : std_logic;
SIGNAL \LCD_user|Equal12~3_combout\ : std_logic;
SIGNAL \LCD_user|Add11~20_combout\ : std_logic;
SIGNAL \LCD_user|Add11~16_combout\ : std_logic;
SIGNAL \LCD_user|Equal12~2_combout\ : std_logic;
SIGNAL \LCD_user|Equal12~4_combout\ : std_logic;
SIGNAL \LCD_user|Add11~31\ : std_logic;
SIGNAL \LCD_user|Add11~32_combout\ : std_logic;
SIGNAL \LCD_user|Add11~33\ : std_logic;
SIGNAL \LCD_user|Add11~34_combout\ : std_logic;
SIGNAL \LCD_user|Add11~35\ : std_logic;
SIGNAL \LCD_user|Add11~36_combout\ : std_logic;
SIGNAL \LCD_user|Add11~37\ : std_logic;
SIGNAL \LCD_user|Add11~39\ : std_logic;
SIGNAL \LCD_user|Add11~40_combout\ : std_logic;
SIGNAL \LCD_user|Add11~41\ : std_logic;
SIGNAL \LCD_user|Add11~43\ : std_logic;
SIGNAL \LCD_user|Add11~45\ : std_logic;
SIGNAL \LCD_user|Add11~46_combout\ : std_logic;
SIGNAL \LCD_user|Add11~47\ : std_logic;
SIGNAL \LCD_user|Add11~48_combout\ : std_logic;
SIGNAL \LCD_user|Add11~49\ : std_logic;
SIGNAL \LCD_user|Add11~50_combout\ : std_logic;
SIGNAL \LCD_user|Add11~51\ : std_logic;
SIGNAL \LCD_user|Add11~52_combout\ : std_logic;
SIGNAL \LCD_user|Add11~53\ : std_logic;
SIGNAL \LCD_user|Add11~54_combout\ : std_logic;
SIGNAL \LCD_user|Equal12~8_combout\ : std_logic;
SIGNAL \LCD_user|Add11~55\ : std_logic;
SIGNAL \LCD_user|Add11~57\ : std_logic;
SIGNAL \LCD_user|Add11~58_combout\ : std_logic;
SIGNAL \LCD_user|Add11~59\ : std_logic;
SIGNAL \LCD_user|Add11~60_combout\ : std_logic;
SIGNAL \LCD_user|Add11~56_combout\ : std_logic;
SIGNAL \LCD_user|Equal12~9_combout\ : std_logic;
SIGNAL \LCD_user|Equal12~10_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd[3]~11_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd[3]~14_combout\ : std_logic;
SIGNAL \LCD_user|lcd_enable~0_combout\ : std_logic;
SIGNAL \LCD_user|lcd_enable~regout\ : std_logic;
SIGNAL \LCD_contr|Selector44~4_combout\ : std_logic;
SIGNAL \LCD_contr|Selector42~2_combout\ : std_logic;
SIGNAL \LCD_contr|Selector45~1_combout\ : std_logic;
SIGNAL \LCD_contr|Selector45~2_combout\ : std_logic;
SIGNAL \LCD_contr|lcd_data[0]~1_combout\ : std_logic;
SIGNAL \LCD_contr|Selector44~5_combout\ : std_logic;
SIGNAL \LCD_contr|Selector44~7_combout\ : std_logic;
SIGNAL \LCD_contr|Selector44~6_combout\ : std_logic;
SIGNAL \LCD_user|bindec~22_combout\ : std_logic;
SIGNAL \LCD_user|bindec~16_combout\ : std_logic;
SIGNAL \LCD_user|bindec~17_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd~20_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd~21_combout\ : std_logic;
SIGNAL \LCD_user|lcd_bus[1]~0_combout\ : std_logic;
SIGNAL \LCD_contr|Selector44~8_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd~18_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd~24_combout\ : std_logic;
SIGNAL \LCD_user|to_lcd~19_combout\ : std_logic;
SIGNAL \LCD_user|Mux7~0_combout\ : std_logic;
SIGNAL \LCD_contr|Selector43~0_combout\ : std_logic;
SIGNAL \LCD_contr|Selector43~1_combout\ : std_logic;
SIGNAL \LCD_contr|Selector43~2_combout\ : std_logic;
SIGNAL \LCD_user|lcd_bus[3]~feeder_combout\ : std_logic;
SIGNAL \LCD_contr|Selector42~3_combout\ : std_logic;
SIGNAL \LCD_contr|Selector42~4_combout\ : std_logic;
SIGNAL \LCD_contr|Selector41~2_combout\ : std_logic;
SIGNAL \LCD_contr|Selector41~3_combout\ : std_logic;
SIGNAL \LCD_contr|lcd_data[5]~feeder_combout\ : std_logic;
SIGNAL \LCD_contr|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD_contr|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd_data_in~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LCD_user|global_flag_start\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LCD_user|bindec\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \LCD_user|global_flag_finish\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LCD_user|massive_lcd\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LCD_user|k\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LCD_user|send_flag\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LCD_user|flag_point\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LCD_user|div_freq_lcd\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \LCD_user|char\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \LCD_user|to_lcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD_user|j\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LCD_user|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LCD_user|lcd_bus\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_lcd_data_in <= lcd_data_in;
e <= ww_e;
rs <= ww_rs;
rw <= ww_rw;
lcd_data <= ww_lcd_data;
lcd_on <= ww_lcd_on;
lcd_blon <= ww_lcd_blon;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X48_Y30_N20
\LCD_contr|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~20_combout\ = (\LCD_contr|clk_count\(10) & (\LCD_contr|Add0~19\ $ (GND))) # (!\LCD_contr|clk_count\(10) & (!\LCD_contr|Add0~19\ & VCC))
-- \LCD_contr|Add0~21\ = CARRY((\LCD_contr|clk_count\(10) & !\LCD_contr|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(10),
	datad => VCC,
	cin => \LCD_contr|Add0~19\,
	combout => \LCD_contr|Add0~20_combout\,
	cout => \LCD_contr|Add0~21\);

-- Location: LCCOMB_X48_Y29_N24
\LCD_contr|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~56_combout\ = (\LCD_contr|clk_count\(28) & (\LCD_contr|Add0~55\ $ (GND))) # (!\LCD_contr|clk_count\(28) & (!\LCD_contr|Add0~55\ & VCC))
-- \LCD_contr|Add0~57\ = CARRY((\LCD_contr|clk_count\(28) & !\LCD_contr|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(28),
	datad => VCC,
	cin => \LCD_contr|Add0~55\,
	combout => \LCD_contr|Add0~56_combout\,
	cout => \LCD_contr|Add0~57\);

-- Location: LCFF_X40_Y32_N23
\LCD_user|j[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[11]~54_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(11));

-- Location: LCFF_X40_Y32_N25
\LCD_user|j[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[12]~56_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(12));

-- Location: LCFF_X40_Y32_N27
\LCD_user|j[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[13]~58_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(13));

-- Location: LCFF_X40_Y32_N29
\LCD_user|j[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[14]~60_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(14));

-- Location: LCFF_X40_Y31_N3
\LCD_user|j[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[17]~66_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(17));

-- Location: LCFF_X40_Y31_N13
\LCD_user|j[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[22]~76_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(22));

-- Location: LCFF_X45_Y30_N7
\LCD_user|div_freq_lcd[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(3));

-- Location: LCFF_X45_Y30_N11
\LCD_user|div_freq_lcd[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[5]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(5));

-- Location: LCFF_X45_Y30_N25
\LCD_user|div_freq_lcd[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[12]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(12));

-- Location: LCFF_X45_Y30_N27
\LCD_user|div_freq_lcd[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[13]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(13));

-- Location: LCFF_X45_Y29_N7
\LCD_user|div_freq_lcd[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[19]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(19));

-- Location: LCFF_X45_Y29_N17
\LCD_user|div_freq_lcd[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[24]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(24));

-- Location: LCFF_X43_Y29_N25
\LCD_user|char[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|char[1]~7_combout\,
	sclr => \LCD_user|char\(4),
	ena => \LCD_user|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|char\(1));

-- Location: LCCOMB_X43_Y29_N24
\LCD_user|char[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|char[1]~7_combout\ = (\LCD_user|char\(1) & (!\LCD_user|char[0]~6\)) # (!\LCD_user|char\(1) & ((\LCD_user|char[0]~6\) # (GND)))
-- \LCD_user|char[1]~8\ = CARRY((!\LCD_user|char[0]~6\) # (!\LCD_user|char\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|char\(1),
	datad => VCC,
	cin => \LCD_user|char[0]~6\,
	combout => \LCD_user|char[1]~7_combout\,
	cout => \LCD_user|char[1]~8\);

-- Location: LCCOMB_X40_Y32_N22
\LCD_user|j[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[11]~54_combout\ = (\LCD_user|j[10]~53\ & (((\LCD_user|process_1~2_combout\)) # (!\LCD_user|j\(11)))) # (!\LCD_user|j[10]~53\ & (((\LCD_user|j\(11) & !\LCD_user|process_1~2_combout\)) # (GND)))
-- \LCD_user|j[11]~55\ = CARRY(((\LCD_user|process_1~2_combout\) # (!\LCD_user|j[10]~53\)) # (!\LCD_user|j\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(11),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[10]~53\,
	combout => \LCD_user|j[11]~54_combout\,
	cout => \LCD_user|j[11]~55\);

-- Location: LCCOMB_X40_Y32_N24
\LCD_user|j[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[12]~56_combout\ = (\LCD_user|j[11]~55\ & (\LCD_user|j\(12) & (!\LCD_user|process_1~2_combout\ & VCC))) # (!\LCD_user|j[11]~55\ & ((((\LCD_user|j\(12) & !\LCD_user|process_1~2_combout\)))))
-- \LCD_user|j[12]~57\ = CARRY((\LCD_user|j\(12) & (!\LCD_user|process_1~2_combout\ & !\LCD_user|j[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(12),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[11]~55\,
	combout => \LCD_user|j[12]~56_combout\,
	cout => \LCD_user|j[12]~57\);

-- Location: LCCOMB_X40_Y32_N26
\LCD_user|j[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[13]~58_combout\ = (\LCD_user|j[12]~57\ & (((\LCD_user|process_1~2_combout\)) # (!\LCD_user|j\(13)))) # (!\LCD_user|j[12]~57\ & (((\LCD_user|j\(13) & !\LCD_user|process_1~2_combout\)) # (GND)))
-- \LCD_user|j[13]~59\ = CARRY(((\LCD_user|process_1~2_combout\) # (!\LCD_user|j[12]~57\)) # (!\LCD_user|j\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(13),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[12]~57\,
	combout => \LCD_user|j[13]~58_combout\,
	cout => \LCD_user|j[13]~59\);

-- Location: LCCOMB_X40_Y32_N28
\LCD_user|j[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[14]~60_combout\ = (\LCD_user|j[13]~59\ & (\LCD_user|j\(14) & (!\LCD_user|process_1~2_combout\ & VCC))) # (!\LCD_user|j[13]~59\ & ((((\LCD_user|j\(14) & !\LCD_user|process_1~2_combout\)))))
-- \LCD_user|j[14]~61\ = CARRY((\LCD_user|j\(14) & (!\LCD_user|process_1~2_combout\ & !\LCD_user|j[13]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(14),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[13]~59\,
	combout => \LCD_user|j[14]~60_combout\,
	cout => \LCD_user|j[14]~61\);

-- Location: LCCOMB_X40_Y31_N2
\LCD_user|j[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[17]~66_combout\ = (\LCD_user|j[16]~65\ & (((\LCD_user|process_1~2_combout\)) # (!\LCD_user|j\(17)))) # (!\LCD_user|j[16]~65\ & (((\LCD_user|j\(17) & !\LCD_user|process_1~2_combout\)) # (GND)))
-- \LCD_user|j[17]~67\ = CARRY(((\LCD_user|process_1~2_combout\) # (!\LCD_user|j[16]~65\)) # (!\LCD_user|j\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(17),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[16]~65\,
	combout => \LCD_user|j[17]~66_combout\,
	cout => \LCD_user|j[17]~67\);

-- Location: LCCOMB_X40_Y31_N12
\LCD_user|j[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[22]~76_combout\ = (\LCD_user|j[21]~75\ & (\LCD_user|j\(22) & (!\LCD_user|process_1~2_combout\ & VCC))) # (!\LCD_user|j[21]~75\ & ((((\LCD_user|j\(22) & !\LCD_user|process_1~2_combout\)))))
-- \LCD_user|j[22]~77\ = CARRY((\LCD_user|j\(22) & (!\LCD_user|process_1~2_combout\ & !\LCD_user|j[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(22),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[21]~75\,
	combout => \LCD_user|j[22]~76_combout\,
	cout => \LCD_user|j[22]~77\);

-- Location: LCCOMB_X45_Y30_N6
\LCD_user|div_freq_lcd[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[3]~37_combout\ = (\LCD_user|div_freq_lcd[2]~36\ & (\LCD_user|div_freq_lcd\(3) & (!\LCD_user|div_freq_lcd~30_combout\ & VCC))) # (!\LCD_user|div_freq_lcd[2]~36\ & ((((\LCD_user|div_freq_lcd\(3) & 
-- !\LCD_user|div_freq_lcd~30_combout\)))))
-- \LCD_user|div_freq_lcd[3]~38\ = CARRY((\LCD_user|div_freq_lcd\(3) & (!\LCD_user|div_freq_lcd~30_combout\ & !\LCD_user|div_freq_lcd[2]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(3),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[2]~36\,
	combout => \LCD_user|div_freq_lcd[3]~37_combout\,
	cout => \LCD_user|div_freq_lcd[3]~38\);

-- Location: LCCOMB_X45_Y30_N10
\LCD_user|div_freq_lcd[5]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[5]~41_combout\ = (\LCD_user|div_freq_lcd[4]~40\ & (\LCD_user|div_freq_lcd\(5) & (!\LCD_user|div_freq_lcd~30_combout\ & VCC))) # (!\LCD_user|div_freq_lcd[4]~40\ & ((((\LCD_user|div_freq_lcd\(5) & 
-- !\LCD_user|div_freq_lcd~30_combout\)))))
-- \LCD_user|div_freq_lcd[5]~42\ = CARRY((\LCD_user|div_freq_lcd\(5) & (!\LCD_user|div_freq_lcd~30_combout\ & !\LCD_user|div_freq_lcd[4]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(5),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[4]~40\,
	combout => \LCD_user|div_freq_lcd[5]~41_combout\,
	cout => \LCD_user|div_freq_lcd[5]~42\);

-- Location: LCCOMB_X45_Y30_N24
\LCD_user|div_freq_lcd[12]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[12]~55_combout\ = (\LCD_user|div_freq_lcd[11]~54\ & (((\LCD_user|div_freq_lcd~30_combout\)) # (!\LCD_user|div_freq_lcd\(12)))) # (!\LCD_user|div_freq_lcd[11]~54\ & (((\LCD_user|div_freq_lcd\(12) & 
-- !\LCD_user|div_freq_lcd~30_combout\)) # (GND)))
-- \LCD_user|div_freq_lcd[12]~56\ = CARRY(((\LCD_user|div_freq_lcd~30_combout\) # (!\LCD_user|div_freq_lcd[11]~54\)) # (!\LCD_user|div_freq_lcd\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(12),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[11]~54\,
	combout => \LCD_user|div_freq_lcd[12]~55_combout\,
	cout => \LCD_user|div_freq_lcd[12]~56\);

-- Location: LCCOMB_X45_Y30_N26
\LCD_user|div_freq_lcd[13]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[13]~57_combout\ = (\LCD_user|div_freq_lcd[12]~56\ & (\LCD_user|div_freq_lcd\(13) & (!\LCD_user|div_freq_lcd~30_combout\ & VCC))) # (!\LCD_user|div_freq_lcd[12]~56\ & ((((\LCD_user|div_freq_lcd\(13) & 
-- !\LCD_user|div_freq_lcd~30_combout\)))))
-- \LCD_user|div_freq_lcd[13]~58\ = CARRY((\LCD_user|div_freq_lcd\(13) & (!\LCD_user|div_freq_lcd~30_combout\ & !\LCD_user|div_freq_lcd[12]~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(13),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[12]~56\,
	combout => \LCD_user|div_freq_lcd[13]~57_combout\,
	cout => \LCD_user|div_freq_lcd[13]~58\);

-- Location: LCCOMB_X45_Y29_N6
\LCD_user|div_freq_lcd[19]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[19]~69_combout\ = (\LCD_user|div_freq_lcd[18]~68\ & (\LCD_user|div_freq_lcd\(19) & (!\LCD_user|div_freq_lcd~30_combout\ & VCC))) # (!\LCD_user|div_freq_lcd[18]~68\ & ((((\LCD_user|div_freq_lcd\(19) & 
-- !\LCD_user|div_freq_lcd~30_combout\)))))
-- \LCD_user|div_freq_lcd[19]~70\ = CARRY((\LCD_user|div_freq_lcd\(19) & (!\LCD_user|div_freq_lcd~30_combout\ & !\LCD_user|div_freq_lcd[18]~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(19),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[18]~68\,
	combout => \LCD_user|div_freq_lcd[19]~69_combout\,
	cout => \LCD_user|div_freq_lcd[19]~70\);

-- Location: LCCOMB_X45_Y29_N16
\LCD_user|div_freq_lcd[24]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[24]~79_combout\ = (\LCD_user|div_freq_lcd[23]~78\ & (((\LCD_user|div_freq_lcd~30_combout\)) # (!\LCD_user|div_freq_lcd\(24)))) # (!\LCD_user|div_freq_lcd[23]~78\ & (((\LCD_user|div_freq_lcd\(24) & 
-- !\LCD_user|div_freq_lcd~30_combout\)) # (GND)))
-- \LCD_user|div_freq_lcd[24]~80\ = CARRY(((\LCD_user|div_freq_lcd~30_combout\) # (!\LCD_user|div_freq_lcd[23]~78\)) # (!\LCD_user|div_freq_lcd\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(24),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[23]~78\,
	combout => \LCD_user|div_freq_lcd[24]~79_combout\,
	cout => \LCD_user|div_freq_lcd[24]~80\);

-- Location: LCCOMB_X31_Y27_N10
\LCD_user|Add11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~10_combout\ = (\LCD_user|k\(5) & (!\LCD_user|Add11~9\)) # (!\LCD_user|k\(5) & ((\LCD_user|Add11~9\) # (GND)))
-- \LCD_user|Add11~11\ = CARRY((!\LCD_user|Add11~9\) # (!\LCD_user|k\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(5),
	datad => VCC,
	cin => \LCD_user|Add11~9\,
	combout => \LCD_user|Add11~10_combout\,
	cout => \LCD_user|Add11~11\);

-- Location: LCCOMB_X31_Y27_N12
\LCD_user|Add11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~12_combout\ = (\LCD_user|k\(6) & (\LCD_user|Add11~11\ $ (GND))) # (!\LCD_user|k\(6) & (!\LCD_user|Add11~11\ & VCC))
-- \LCD_user|Add11~13\ = CARRY((\LCD_user|k\(6) & !\LCD_user|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(6),
	datad => VCC,
	cin => \LCD_user|Add11~11\,
	combout => \LCD_user|Add11~12_combout\,
	cout => \LCD_user|Add11~13\);

-- Location: LCCOMB_X31_Y26_N6
\LCD_user|Add11~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~38_combout\ = (\LCD_user|k\(19) & (!\LCD_user|Add11~37\)) # (!\LCD_user|k\(19) & ((\LCD_user|Add11~37\) # (GND)))
-- \LCD_user|Add11~39\ = CARRY((!\LCD_user|Add11~37\) # (!\LCD_user|k\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(19),
	datad => VCC,
	cin => \LCD_user|Add11~37\,
	combout => \LCD_user|Add11~38_combout\,
	cout => \LCD_user|Add11~39\);

-- Location: LCCOMB_X31_Y26_N10
\LCD_user|Add11~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~42_combout\ = (\LCD_user|k\(21) & (!\LCD_user|Add11~41\)) # (!\LCD_user|k\(21) & ((\LCD_user|Add11~41\) # (GND)))
-- \LCD_user|Add11~43\ = CARRY((!\LCD_user|Add11~41\) # (!\LCD_user|k\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(21),
	datad => VCC,
	cin => \LCD_user|Add11~41\,
	combout => \LCD_user|Add11~42_combout\,
	cout => \LCD_user|Add11~43\);

-- Location: LCCOMB_X31_Y26_N12
\LCD_user|Add11~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~44_combout\ = (\LCD_user|k\(22) & (\LCD_user|Add11~43\ $ (GND))) # (!\LCD_user|k\(22) & (!\LCD_user|Add11~43\ & VCC))
-- \LCD_user|Add11~45\ = CARRY((\LCD_user|k\(22) & !\LCD_user|Add11~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(22),
	datad => VCC,
	cin => \LCD_user|Add11~43\,
	combout => \LCD_user|Add11~44_combout\,
	cout => \LCD_user|Add11~45\);

-- Location: LCCOMB_X31_Y26_N28
\LCD_user|Add11~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~60_combout\ = (\LCD_user|k\(30) & (\LCD_user|Add11~59\ $ (GND))) # (!\LCD_user|k\(30) & (!\LCD_user|Add11~59\ & VCC))
-- \LCD_user|Add11~61\ = CARRY((\LCD_user|k\(30) & !\LCD_user|Add11~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(30),
	datad => VCC,
	cin => \LCD_user|Add11~59\,
	combout => \LCD_user|Add11~60_combout\,
	cout => \LCD_user|Add11~61\);

-- Location: LCCOMB_X31_Y26_N30
\LCD_user|Add11~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~62_combout\ = \LCD_user|Add11~61\ $ (\LCD_user|k\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD_user|k\(31),
	cin => \LCD_user|Add11~61\,
	combout => \LCD_user|Add11~62_combout\);

-- Location: LCCOMB_X37_Y29_N12
\LCD_user|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~8_combout\ = (\LCD_user|cnt\(7) & (\LCD_user|Add9~7\ $ (GND))) # (!\LCD_user|cnt\(7) & (!\LCD_user|Add9~7\ & VCC))
-- \LCD_user|Add9~9\ = CARRY((\LCD_user|cnt\(7) & !\LCD_user|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(7),
	datad => VCC,
	cin => \LCD_user|Add9~7\,
	combout => \LCD_user|Add9~8_combout\,
	cout => \LCD_user|Add9~9\);

-- Location: LCCOMB_X37_Y29_N16
\LCD_user|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~12_combout\ = (\LCD_user|cnt\(9) & (\LCD_user|Add9~11\ $ (GND))) # (!\LCD_user|cnt\(9) & (!\LCD_user|Add9~11\ & VCC))
-- \LCD_user|Add9~13\ = CARRY((\LCD_user|cnt\(9) & !\LCD_user|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(9),
	datad => VCC,
	cin => \LCD_user|Add9~11\,
	combout => \LCD_user|Add9~12_combout\,
	cout => \LCD_user|Add9~13\);

-- Location: LCCOMB_X37_Y29_N24
\LCD_user|Add9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~20_combout\ = (\LCD_user|cnt\(13) & (\LCD_user|Add9~19\ $ (GND))) # (!\LCD_user|cnt\(13) & (!\LCD_user|Add9~19\ & VCC))
-- \LCD_user|Add9~21\ = CARRY((\LCD_user|cnt\(13) & !\LCD_user|Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(13),
	datad => VCC,
	cin => \LCD_user|Add9~19\,
	combout => \LCD_user|Add9~20_combout\,
	cout => \LCD_user|Add9~21\);

-- Location: LCCOMB_X37_Y28_N10
\LCD_user|Add9~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~38_combout\ = (\LCD_user|cnt\(22) & (!\LCD_user|Add9~37\)) # (!\LCD_user|cnt\(22) & ((\LCD_user|Add9~37\) # (GND)))
-- \LCD_user|Add9~39\ = CARRY((!\LCD_user|Add9~37\) # (!\LCD_user|cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(22),
	datad => VCC,
	cin => \LCD_user|Add9~37\,
	combout => \LCD_user|Add9~38_combout\,
	cout => \LCD_user|Add9~39\);

-- Location: LCCOMB_X37_Y28_N16
\LCD_user|Add9~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~44_combout\ = (\LCD_user|cnt\(25) & (\LCD_user|Add9~43\ $ (GND))) # (!\LCD_user|cnt\(25) & (!\LCD_user|Add9~43\ & VCC))
-- \LCD_user|Add9~45\ = CARRY((\LCD_user|cnt\(25) & !\LCD_user|Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(25),
	datad => VCC,
	cin => \LCD_user|Add9~43\,
	combout => \LCD_user|Add9~44_combout\,
	cout => \LCD_user|Add9~45\);

-- Location: LCCOMB_X37_Y28_N26
\LCD_user|Add9~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~54_combout\ = (\LCD_user|cnt\(30) & (!\LCD_user|Add9~53\)) # (!\LCD_user|cnt\(30) & ((\LCD_user|Add9~53\) # (GND)))
-- \LCD_user|Add9~55\ = CARRY((!\LCD_user|Add9~53\) # (!\LCD_user|cnt\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(30),
	datad => VCC,
	cin => \LCD_user|Add9~53\,
	combout => \LCD_user|Add9~54_combout\,
	cout => \LCD_user|Add9~55\);

-- Location: LCCOMB_X37_Y28_N28
\LCD_user|Add9~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~56_combout\ = \LCD_user|Add9~55\ $ (!\LCD_user|cnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD_user|cnt\(31),
	cin => \LCD_user|Add9~55\,
	combout => \LCD_user|Add9~56_combout\);

-- Location: LCFF_X46_Y30_N21
\LCD_contr|clk_count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(15));

-- Location: LCFF_X47_Y29_N3
\LCD_contr|clk_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(10));

-- Location: LCCOMB_X46_Y29_N16
\LCD_contr|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan5~0_combout\ = (!\LCD_contr|Add0~40_combout\ & (!\LCD_contr|Add0~38_combout\ & (!\LCD_contr|Add0~34_combout\ & !\LCD_contr|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~40_combout\,
	datab => \LCD_contr|Add0~38_combout\,
	datac => \LCD_contr|Add0~34_combout\,
	datad => \LCD_contr|Add0~36_combout\,
	combout => \LCD_contr|LessThan5~0_combout\);

-- Location: LCFF_X47_Y29_N15
\LCD_contr|clk_count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(24));

-- Location: LCFF_X47_Y29_N9
\LCD_contr|clk_count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(25));

-- Location: LCFF_X47_Y29_N31
\LCD_contr|clk_count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(28));

-- Location: LCCOMB_X49_Y31_N0
\LCD_contr|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan3~0_combout\ = ((!\LCD_contr|Add0~8_combout\ & ((!\LCD_contr|Add0~4_combout\) # (!\LCD_contr|Add0~6_combout\)))) # (!\LCD_contr|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~10_combout\,
	datab => \LCD_contr|Add0~8_combout\,
	datac => \LCD_contr|Add0~6_combout\,
	datad => \LCD_contr|Add0~4_combout\,
	combout => \LCD_contr|LessThan3~0_combout\);

-- Location: LCCOMB_X49_Y31_N18
\LCD_contr|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan3~1_combout\ = (((\LCD_contr|LessThan3~0_combout\ & !\LCD_contr|Add0~12_combout\)) # (!\LCD_contr|Add0~16_combout\)) # (!\LCD_contr|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~14_combout\,
	datab => \LCD_contr|LessThan3~0_combout\,
	datac => \LCD_contr|Add0~16_combout\,
	datad => \LCD_contr|Add0~12_combout\,
	combout => \LCD_contr|LessThan3~1_combout\);

-- Location: LCCOMB_X49_Y31_N12
\LCD_contr|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan3~2_combout\ = (((!\LCD_contr|Add0~18_combout\ & \LCD_contr|LessThan3~1_combout\)) # (!\LCD_contr|Add0~22_combout\)) # (!\LCD_contr|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~18_combout\,
	datab => \LCD_contr|Add0~20_combout\,
	datac => \LCD_contr|Add0~22_combout\,
	datad => \LCD_contr|LessThan3~1_combout\,
	combout => \LCD_contr|LessThan3~2_combout\);

-- Location: LCCOMB_X49_Y31_N22
\LCD_contr|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan6~0_combout\ = (!\LCD_contr|Add0~8_combout\ & (!\LCD_contr|Add0~6_combout\ & !\LCD_contr|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|Add0~8_combout\,
	datac => \LCD_contr|Add0~6_combout\,
	datad => \LCD_contr|Add0~4_combout\,
	combout => \LCD_contr|LessThan6~0_combout\);

-- Location: LCCOMB_X49_Y31_N24
\LCD_contr|LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan5~5_combout\ = (!\LCD_contr|Add0~14_combout\ & ((\LCD_contr|LessThan6~0_combout\) # ((!\LCD_contr|Add0~10_combout\) # (!\LCD_contr|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~14_combout\,
	datab => \LCD_contr|LessThan6~0_combout\,
	datac => \LCD_contr|Add0~12_combout\,
	datad => \LCD_contr|Add0~10_combout\,
	combout => \LCD_contr|LessThan5~5_combout\);

-- Location: LCCOMB_X48_Y31_N10
\LCD_contr|LessThan5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan5~6_combout\ = (!\LCD_contr|Add0~20_combout\ & (!\LCD_contr|Add0~18_combout\ & ((\LCD_contr|LessThan5~5_combout\) # (!\LCD_contr|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~20_combout\,
	datab => \LCD_contr|Add0~18_combout\,
	datac => \LCD_contr|Add0~16_combout\,
	datad => \LCD_contr|LessThan5~5_combout\,
	combout => \LCD_contr|LessThan5~6_combout\);

-- Location: LCCOMB_X49_Y31_N10
\LCD_contr|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan4~0_combout\ = ((!\LCD_contr|Add0~18_combout\) # (!\LCD_contr|Add0~16_combout\)) # (!\LCD_contr|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|Add0~20_combout\,
	datac => \LCD_contr|Add0~16_combout\,
	datad => \LCD_contr|Add0~18_combout\,
	combout => \LCD_contr|LessThan4~0_combout\);

-- Location: LCCOMB_X49_Y31_N28
\LCD_contr|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan4~1_combout\ = (\LCD_contr|Add0~12_combout\ & (\LCD_contr|Add0~8_combout\ & \LCD_contr|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~12_combout\,
	datab => \LCD_contr|Add0~8_combout\,
	datad => \LCD_contr|Add0~10_combout\,
	combout => \LCD_contr|LessThan4~1_combout\);

-- Location: LCCOMB_X49_Y31_N6
\LCD_contr|LessThan4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan4~2_combout\ = (!\LCD_contr|Add0~22_combout\ & ((\LCD_contr|LessThan4~0_combout\) # ((!\LCD_contr|Add0~14_combout\ & !\LCD_contr|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~14_combout\,
	datab => \LCD_contr|LessThan4~1_combout\,
	datac => \LCD_contr|Add0~22_combout\,
	datad => \LCD_contr|LessThan4~0_combout\,
	combout => \LCD_contr|LessThan4~2_combout\);

-- Location: LCCOMB_X49_Y31_N8
\LCD_contr|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan2~0_combout\ = (!\LCD_contr|Add0~12_combout\ & (((!\LCD_contr|Add0~10_combout\) # (!\LCD_contr|Add0~6_combout\)) # (!\LCD_contr|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~12_combout\,
	datab => \LCD_contr|Add0~8_combout\,
	datac => \LCD_contr|Add0~6_combout\,
	datad => \LCD_contr|Add0~10_combout\,
	combout => \LCD_contr|LessThan2~0_combout\);

-- Location: LCCOMB_X49_Y31_N2
\LCD_contr|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan2~1_combout\ = ((!\LCD_contr|Add0~14_combout\) # (!\LCD_contr|Add0~16_combout\)) # (!\LCD_contr|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~18_combout\,
	datac => \LCD_contr|Add0~16_combout\,
	datad => \LCD_contr|Add0~14_combout\,
	combout => \LCD_contr|LessThan2~1_combout\);

-- Location: LCCOMB_X49_Y31_N20
\LCD_contr|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan2~2_combout\ = ((!\LCD_contr|Add0~20_combout\ & ((\LCD_contr|LessThan2~0_combout\) # (\LCD_contr|LessThan2~1_combout\)))) # (!\LCD_contr|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan2~0_combout\,
	datab => \LCD_contr|Add0~20_combout\,
	datac => \LCD_contr|Add0~22_combout\,
	datad => \LCD_contr|LessThan2~1_combout\,
	combout => \LCD_contr|LessThan2~2_combout\);

-- Location: LCCOMB_X48_Y31_N8
\LCD_contr|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan1~0_combout\ = (!\LCD_contr|Add0~20_combout\ & (!\LCD_contr|Add0~24_combout\ & (!\LCD_contr|Add0~22_combout\ & !\LCD_contr|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~20_combout\,
	datab => \LCD_contr|Add0~24_combout\,
	datac => \LCD_contr|Add0~22_combout\,
	datad => \LCD_contr|Add0~18_combout\,
	combout => \LCD_contr|LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y31_N16
\LCD_contr|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan7~0_combout\ = (\LCD_contr|Add0~12_combout\ & (\LCD_contr|Add0~8_combout\ & (\LCD_contr|LessThan2~4_combout\ & \LCD_contr|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~12_combout\,
	datab => \LCD_contr|Add0~8_combout\,
	datac => \LCD_contr|LessThan2~4_combout\,
	datad => \LCD_contr|Add0~10_combout\,
	combout => \LCD_contr|LessThan7~0_combout\);

-- Location: LCCOMB_X48_Y31_N2
\LCD_contr|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan1~1_combout\ = (\LCD_contr|LessThan1~0_combout\ & (((!\LCD_contr|Add0~4_combout\ & !\LCD_contr|Add0~6_combout\)) # (!\LCD_contr|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~4_combout\,
	datab => \LCD_contr|LessThan1~0_combout\,
	datac => \LCD_contr|LessThan7~0_combout\,
	datad => \LCD_contr|Add0~6_combout\,
	combout => \LCD_contr|LessThan1~1_combout\);

-- Location: LCCOMB_X49_Y31_N26
\LCD_contr|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan6~1_combout\ = (!\LCD_contr|Add0~10_combout\ & (!\LCD_contr|Add0~8_combout\ & (!\LCD_contr|Add0~6_combout\ & !\LCD_contr|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~10_combout\,
	datab => \LCD_contr|Add0~8_combout\,
	datac => \LCD_contr|Add0~6_combout\,
	datad => \LCD_contr|Add0~4_combout\,
	combout => \LCD_contr|LessThan6~1_combout\);

-- Location: LCCOMB_X49_Y31_N4
\LCD_contr|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan6~2_combout\ = (!\LCD_contr|Add0~14_combout\ & (\LCD_contr|LessThan6~1_combout\ & (!\LCD_contr|Add0~16_combout\ & !\LCD_contr|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~14_combout\,
	datab => \LCD_contr|LessThan6~1_combout\,
	datac => \LCD_contr|Add0~16_combout\,
	datad => \LCD_contr|Add0~12_combout\,
	combout => \LCD_contr|LessThan6~2_combout\);

-- Location: LCCOMB_X48_Y31_N12
\LCD_contr|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan6~3_combout\ = (!\LCD_contr|Add0~28_combout\ & (((\LCD_contr|LessThan1~0_combout\ & \LCD_contr|LessThan6~2_combout\)) # (!\LCD_contr|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~26_combout\,
	datab => \LCD_contr|LessThan1~0_combout\,
	datac => \LCD_contr|Add0~28_combout\,
	datad => \LCD_contr|LessThan6~2_combout\,
	combout => \LCD_contr|LessThan6~3_combout\);

-- Location: LCCOMB_X48_Y31_N6
\LCD_contr|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan8~0_combout\ = (\LCD_contr|Add0~32_combout\ & \LCD_contr|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|Add0~32_combout\,
	datac => \LCD_contr|Add0~30_combout\,
	combout => \LCD_contr|LessThan8~0_combout\);

-- Location: LCCOMB_X48_Y31_N16
\LCD_contr|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan7~1_combout\ = ((\LCD_contr|LessThan1~0_combout\ & ((!\LCD_contr|Add0~6_combout\) # (!\LCD_contr|LessThan7~0_combout\)))) # (!\LCD_contr|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan7~0_combout\,
	datab => \LCD_contr|Add0~6_combout\,
	datac => \LCD_contr|LessThan1~0_combout\,
	datad => \LCD_contr|Add0~26_combout\,
	combout => \LCD_contr|LessThan7~1_combout\);

-- Location: LCCOMB_X47_Y29_N20
\LCD_contr|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan12~0_combout\ = (!\LCD_contr|clk_count\(23) & (!\LCD_contr|clk_count\(24) & (!\LCD_contr|clk_count\(25) & !\LCD_contr|clk_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(23),
	datab => \LCD_contr|clk_count\(24),
	datac => \LCD_contr|clk_count\(25),
	datad => \LCD_contr|clk_count\(22),
	combout => \LCD_contr|LessThan12~0_combout\);

-- Location: LCCOMB_X47_Y30_N28
\LCD_contr|LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan10~0_combout\ = (!\LCD_contr|clk_count\(10) & (\LCD_contr|LessThan12~4_combout\ & !\LCD_contr|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(10),
	datac => \LCD_contr|LessThan12~4_combout\,
	datad => \LCD_contr|clk_count\(11),
	combout => \LCD_contr|LessThan10~0_combout\);

-- Location: LCCOMB_X47_Y30_N26
\LCD_contr|LessThan9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan9~4_combout\ = (\LCD_contr|LessThan12~4_combout\ & (\LCD_contr|LessThan9~2_combout\ & \LCD_contr|LessThan9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|LessThan12~4_combout\,
	datac => \LCD_contr|LessThan9~2_combout\,
	datad => \LCD_contr|LessThan9~3_combout\,
	combout => \LCD_contr|LessThan9~4_combout\);

-- Location: LCCOMB_X49_Y30_N2
\LCD_contr|LessThan10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan10~1_combout\ = (\LCD_contr|clk_count\(4) & \LCD_contr|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(4),
	datac => \LCD_contr|clk_count\(5),
	combout => \LCD_contr|LessThan10~1_combout\);

-- Location: LCCOMB_X49_Y30_N4
\LCD_contr|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan11~0_combout\ = (!\LCD_contr|clk_count\(6) & (((!\LCD_contr|clk_count\(3)) # (!\LCD_contr|clk_count\(2))) # (!\LCD_contr|LessThan10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan10~1_combout\,
	datab => \LCD_contr|clk_count\(6),
	datac => \LCD_contr|clk_count\(2),
	datad => \LCD_contr|clk_count\(3),
	combout => \LCD_contr|LessThan11~0_combout\);

-- Location: LCCOMB_X47_Y30_N12
\LCD_contr|LessThan11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan11~1_combout\ = ((!\LCD_contr|clk_count\(8) & ((\LCD_contr|LessThan11~0_combout\) # (!\LCD_contr|clk_count\(7))))) # (!\LCD_contr|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan11~0_combout\,
	datab => \LCD_contr|clk_count\(8),
	datac => \LCD_contr|clk_count\(9),
	datad => \LCD_contr|clk_count\(7),
	combout => \LCD_contr|LessThan11~1_combout\);

-- Location: LCCOMB_X47_Y30_N14
\LCD_contr|LessThan12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan12~5_combout\ = (!\LCD_contr|clk_count\(18) & (!\LCD_contr|clk_count\(11) & (!\LCD_contr|clk_count\(21) & \LCD_contr|LessThan12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(18),
	datab => \LCD_contr|clk_count\(11),
	datac => \LCD_contr|clk_count\(21),
	datad => \LCD_contr|LessThan12~3_combout\,
	combout => \LCD_contr|LessThan12~5_combout\);

-- Location: LCCOMB_X49_Y30_N6
\LCD_contr|LessThan10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan10~2_combout\ = ((!\LCD_contr|clk_count\(1) & (!\LCD_contr|clk_count\(2) & !\LCD_contr|clk_count\(3)))) # (!\LCD_contr|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan10~1_combout\,
	datab => \LCD_contr|clk_count\(1),
	datac => \LCD_contr|clk_count\(2),
	datad => \LCD_contr|clk_count\(3),
	combout => \LCD_contr|LessThan10~2_combout\);

-- Location: LCCOMB_X47_Y30_N24
\LCD_contr|LessThan10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan10~3_combout\ = (!\LCD_contr|clk_count\(6) & (!\LCD_contr|clk_count\(8) & (!\LCD_contr|clk_count\(9) & !\LCD_contr|clk_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(6),
	datab => \LCD_contr|clk_count\(8),
	datac => \LCD_contr|clk_count\(9),
	datad => \LCD_contr|clk_count\(7),
	combout => \LCD_contr|LessThan10~3_combout\);

-- Location: LCCOMB_X47_Y30_N2
\LCD_contr|LessThan10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan10~4_combout\ = (\LCD_contr|LessThan10~3_combout\ & (!\LCD_contr|clk_count\(10) & (\LCD_contr|LessThan12~5_combout\ & \LCD_contr|LessThan10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan10~3_combout\,
	datab => \LCD_contr|clk_count\(10),
	datac => \LCD_contr|LessThan12~5_combout\,
	datad => \LCD_contr|LessThan10~2_combout\,
	combout => \LCD_contr|LessThan10~4_combout\);

-- Location: LCCOMB_X47_Y30_N20
\LCD_contr|Selector46~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector46~6_combout\ = (\LCD_contr|LessThan11~1_combout\ & (\LCD_contr|LessThan9~4_combout\ & (\LCD_contr|LessThan10~0_combout\ & !\LCD_contr|LessThan10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan11~1_combout\,
	datab => \LCD_contr|LessThan9~4_combout\,
	datac => \LCD_contr|LessThan10~0_combout\,
	datad => \LCD_contr|LessThan10~4_combout\,
	combout => \LCD_contr|Selector46~6_combout\);

-- Location: LCCOMB_X49_Y30_N16
\LCD_contr|LessThan9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan9~5_combout\ = (!\LCD_contr|clk_count\(4) & (!\LCD_contr|clk_count\(5) & !\LCD_contr|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(4),
	datac => \LCD_contr|clk_count\(5),
	datad => \LCD_contr|clk_count\(3),
	combout => \LCD_contr|LessThan9~5_combout\);

-- Location: LCCOMB_X49_Y30_N10
\LCD_contr|LessThan12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan12~6_combout\ = ((\LCD_contr|LessThan9~5_combout\ & ((!\LCD_contr|clk_count\(1)) # (!\LCD_contr|clk_count\(2))))) # (!\LCD_contr|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(2),
	datab => \LCD_contr|clk_count\(1),
	datac => \LCD_contr|LessThan9~5_combout\,
	datad => \LCD_contr|clk_count\(6),
	combout => \LCD_contr|LessThan12~6_combout\);

-- Location: LCCOMB_X47_Y30_N6
\LCD_contr|LessThan12~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan12~7_combout\ = (!\LCD_contr|clk_count\(9) & (((\LCD_contr|LessThan12~6_combout\ & !\LCD_contr|clk_count\(7))) # (!\LCD_contr|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan12~6_combout\,
	datab => \LCD_contr|clk_count\(8),
	datac => \LCD_contr|clk_count\(9),
	datad => \LCD_contr|clk_count\(7),
	combout => \LCD_contr|LessThan12~7_combout\);

-- Location: LCCOMB_X47_Y30_N16
\LCD_contr|Selector46~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector46~7_combout\ = (!\LCD_contr|LessThan10~4_combout\ & (((!\LCD_contr|LessThan12~7_combout\ & \LCD_contr|clk_count\(10))) # (!\LCD_contr|LessThan12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan12~7_combout\,
	datab => \LCD_contr|LessThan10~4_combout\,
	datac => \LCD_contr|LessThan12~5_combout\,
	datad => \LCD_contr|clk_count\(10),
	combout => \LCD_contr|Selector46~7_combout\);

-- Location: LCCOMB_X47_Y30_N10
\LCD_contr|Selector46~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector46~8_combout\ = (\LCD_contr|Selector46~6_combout\) # ((\LCD_contr|e~regout\ & ((\LCD_contr|Selector46~7_combout\) # (!\LCD_contr|LessThan9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Selector46~6_combout\,
	datab => \LCD_contr|LessThan9~4_combout\,
	datac => \LCD_contr|Selector46~7_combout\,
	datad => \LCD_contr|e~regout\,
	combout => \LCD_contr|Selector46~8_combout\);

-- Location: LCCOMB_X46_Y31_N6
\LCD_contr|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector36~0_combout\ = (\LCD_user|lcd_enable~regout\ & \LCD_contr|state.ready~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|lcd_enable~regout\,
	datac => \LCD_contr|state.ready~regout\,
	combout => \LCD_contr|Selector36~0_combout\);

-- Location: LCCOMB_X49_Y30_N12
\LCD_contr|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan0~1_combout\ = (((!\LCD_contr|clk_count\(6) & !\LCD_contr|clk_count\(5))) # (!\LCD_contr|clk_count\(8))) # (!\LCD_contr|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(7),
	datab => \LCD_contr|clk_count\(6),
	datac => \LCD_contr|clk_count\(5),
	datad => \LCD_contr|clk_count\(8),
	combout => \LCD_contr|LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y29_N20
\LCD_contr|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan0~2_combout\ = ((!\LCD_contr|clk_count\(9) & \LCD_contr|LessThan0~1_combout\)) # (!\LCD_contr|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(9),
	datac => \LCD_contr|clk_count\(10),
	datad => \LCD_contr|LessThan0~1_combout\,
	combout => \LCD_contr|LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y29_N22
\LCD_contr|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan0~3_combout\ = ((!\LCD_contr|clk_count\(11) & (\LCD_contr|LessThan0~2_combout\ & !\LCD_contr|clk_count\(12)))) # (!\LCD_contr|clk_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(13),
	datab => \LCD_contr|clk_count\(11),
	datac => \LCD_contr|LessThan0~2_combout\,
	datad => \LCD_contr|clk_count\(12),
	combout => \LCD_contr|LessThan0~3_combout\);

-- Location: LCCOMB_X49_Y29_N16
\LCD_contr|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan0~4_combout\ = (((\LCD_contr|LessThan0~3_combout\ & \LCD_contr|LessThan0~0_combout\)) # (!\LCD_contr|clk_count\(18))) # (!\LCD_contr|clk_count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(17),
	datab => \LCD_contr|LessThan0~3_combout\,
	datac => \LCD_contr|clk_count\(18),
	datad => \LCD_contr|LessThan0~0_combout\,
	combout => \LCD_contr|LessThan0~4_combout\);

-- Location: LCFF_X46_Y29_N19
\LCD_user|lcd_bus[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Mux9~0_combout\,
	ena => \LCD_user|lcd_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|lcd_bus\(0));

-- Location: LCCOMB_X46_Y31_N24
\LCD_contr|Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector45~0_combout\ = (\LCD_user|lcd_bus\(0) & (\LCD_user|lcd_enable~regout\ & \LCD_contr|state.ready~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|lcd_bus\(0),
	datab => \LCD_user|lcd_enable~regout\,
	datac => \LCD_contr|state.ready~regout\,
	combout => \LCD_contr|Selector45~0_combout\);

-- Location: LCFF_X46_Y29_N11
\LCD_user|lcd_bus[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Mux5~0_combout\,
	ena => \LCD_user|lcd_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|lcd_bus\(4));

-- Location: LCCOMB_X47_Y30_N4
\LCD_contr|Selector35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector35~2_combout\ = (\LCD_contr|state.send~regout\ & ((\LCD_contr|clk_count\(31)) # (\LCD_contr|LessThan9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|state.send~regout\,
	datac => \LCD_contr|clk_count\(31),
	datad => \LCD_contr|LessThan9~4_combout\,
	combout => \LCD_contr|Selector35~2_combout\);

-- Location: LCCOMB_X46_Y30_N20
\LCD_contr|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector17~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~30_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|state.ready~regout\,
	datac => \LCD_contr|clk_count[30]~4_combout\,
	datad => \LCD_contr|Add0~30_combout\,
	combout => \LCD_contr|Selector17~0_combout\);

-- Location: LCCOMB_X47_Y29_N2
\LCD_contr|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector22~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~20_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~20_combout\,
	combout => \LCD_contr|Selector22~0_combout\);

-- Location: LCCOMB_X47_Y29_N14
\LCD_contr|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector8~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~48_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|state.ready~regout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|Add0~48_combout\,
	datad => \LCD_contr|clk_count[30]~6_combout\,
	combout => \LCD_contr|Selector8~0_combout\);

-- Location: LCCOMB_X47_Y29_N8
\LCD_contr|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector7~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~50_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~50_combout\,
	combout => \LCD_contr|Selector7~0_combout\);

-- Location: LCCOMB_X47_Y29_N30
\LCD_contr|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector4~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~56_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~56_combout\,
	combout => \LCD_contr|Selector4~0_combout\);

-- Location: LCFF_X46_Y29_N13
\LCD_user|global_flag_start[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|global_flag_start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|global_flag_start\(0));

-- Location: LCFF_X42_Y31_N19
\LCD_user|to_lcd[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|to_lcd~17_combout\,
	ena => \LCD_user|to_lcd[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|to_lcd\(2));

-- Location: LCCOMB_X46_Y30_N10
\LCD_contr|Selector34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector34~1_combout\ = (!\LCD_user|lcd_enable~regout\ & \LCD_contr|state.ready~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_user|lcd_enable~regout\,
	datad => \LCD_contr|state.ready~regout\,
	combout => \LCD_contr|Selector34~1_combout\);

-- Location: LCCOMB_X46_Y29_N18
\LCD_user|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux9~0_combout\ = (\LCD_user|to_lcd\(0) & ((\LCD_user|to_lcd\(2)) # ((!\LCD_user|to_lcd\(3)) # (!\LCD_user|to_lcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|to_lcd\(2),
	datab => \LCD_user|to_lcd\(1),
	datac => \LCD_user|to_lcd\(0),
	datad => \LCD_user|to_lcd\(3),
	combout => \LCD_user|Mux9~0_combout\);

-- Location: LCCOMB_X46_Y29_N10
\LCD_user|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux5~0_combout\ = (\LCD_user|to_lcd\(2)) # (((\LCD_user|to_lcd\(0)) # (!\LCD_user|to_lcd\(3))) # (!\LCD_user|to_lcd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|to_lcd\(2),
	datab => \LCD_user|to_lcd\(1),
	datac => \LCD_user|to_lcd\(0),
	datad => \LCD_user|to_lcd\(3),
	combout => \LCD_user|Mux5~0_combout\);

-- Location: LCCOMB_X41_Y32_N12
\LCD_user|Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal5~2_combout\ = (!\LCD_user|j\(11) & (!\LCD_user|j\(12) & (!\LCD_user|j\(13) & !\LCD_user|j\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(11),
	datab => \LCD_user|j\(12),
	datac => \LCD_user|j\(13),
	datad => \LCD_user|j\(14),
	combout => \LCD_user|Equal5~2_combout\);

-- Location: LCCOMB_X41_Y31_N20
\LCD_user|Equal5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal5~7_combout\ = (!\LCD_user|j\(30) & (!\LCD_user|j\(29) & (!\LCD_user|j\(28) & !\LCD_user|j\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(30),
	datab => \LCD_user|j\(29),
	datac => \LCD_user|j\(28),
	datad => \LCD_user|j\(27),
	combout => \LCD_user|Equal5~7_combout\);

-- Location: LCFF_X46_Y29_N1
\LCD_user|global_flag_finish[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|global_flag_finish[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|global_flag_finish\(0));

-- Location: LCCOMB_X45_Y30_N0
\LCD_user|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan8~0_combout\ = (\LCD_user|div_freq_lcd\(5)) # ((\LCD_user|div_freq_lcd\(4)) # ((\LCD_user|div_freq_lcd\(2)) # (\LCD_user|div_freq_lcd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(5),
	datab => \LCD_user|div_freq_lcd\(4),
	datac => \LCD_user|div_freq_lcd\(2),
	datad => \LCD_user|div_freq_lcd\(3),
	combout => \LCD_user|LessThan8~0_combout\);

-- Location: LCCOMB_X46_Y30_N12
\LCD_user|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan8~1_combout\ = (\LCD_user|div_freq_lcd\(7) & (\LCD_user|div_freq_lcd\(8) & (\LCD_user|LessThan8~0_combout\ & \LCD_user|div_freq_lcd\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(7),
	datab => \LCD_user|div_freq_lcd\(8),
	datac => \LCD_user|LessThan8~0_combout\,
	datad => \LCD_user|div_freq_lcd\(6),
	combout => \LCD_user|LessThan8~1_combout\);

-- Location: LCCOMB_X44_Y30_N20
\LCD_user|LessThan8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan8~4_combout\ = (\LCD_user|div_freq_lcd\(15)) # ((\LCD_user|div_freq_lcd\(14)) # ((\LCD_user|div_freq_lcd\(13)) # (\LCD_user|div_freq_lcd\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(15),
	datab => \LCD_user|div_freq_lcd\(14),
	datac => \LCD_user|div_freq_lcd\(13),
	datad => \LCD_user|div_freq_lcd\(12),
	combout => \LCD_user|LessThan8~4_combout\);

-- Location: LCCOMB_X46_Y29_N12
\LCD_user|global_flag_start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|global_flag_start~0_combout\ = ((\LCD_user|global_flag_start\(0) & ((!\LCD_user|global_flag_finish\(0)) # (!\LCD_user|Equal11~0_combout\)))) # (!\LCD_user|process_1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Equal11~0_combout\,
	datab => \LCD_user|process_1~5_combout\,
	datac => \LCD_user|global_flag_start\(0),
	datad => \LCD_user|global_flag_finish\(0),
	combout => \LCD_user|global_flag_start~0_combout\);

-- Location: LCFF_X41_Y35_N1
\LCD_user|massive_lcd[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|massive_lcd[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(0));

-- Location: LCFF_X41_Y35_N11
\LCD_user|massive_lcd[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(1));

-- Location: LCCOMB_X41_Y35_N10
\LCD_user|change~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~0_combout\ = (\lcd_data_in~combout\(1) & ((\LCD_user|massive_lcd\(0) $ (\lcd_data_in~combout\(0))) # (!\LCD_user|massive_lcd\(1)))) # (!\lcd_data_in~combout\(1) & ((\LCD_user|massive_lcd\(1)) # (\LCD_user|massive_lcd\(0) $ 
-- (\lcd_data_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(1),
	datab => \LCD_user|massive_lcd\(0),
	datac => \LCD_user|massive_lcd\(1),
	datad => \lcd_data_in~combout\(0),
	combout => \LCD_user|change~0_combout\);

-- Location: LCFF_X36_Y35_N17
\LCD_user|massive_lcd[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(2));

-- Location: LCFF_X37_Y35_N17
\LCD_user|massive_lcd[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(3));

-- Location: LCCOMB_X37_Y35_N16
\LCD_user|change~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~1_combout\ = (\lcd_data_in~combout\(2) & ((\lcd_data_in~combout\(3) $ (\LCD_user|massive_lcd\(3))) # (!\LCD_user|massive_lcd\(2)))) # (!\lcd_data_in~combout\(2) & ((\LCD_user|massive_lcd\(2)) # (\lcd_data_in~combout\(3) $ 
-- (\LCD_user|massive_lcd\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(2),
	datab => \lcd_data_in~combout\(3),
	datac => \LCD_user|massive_lcd\(3),
	datad => \LCD_user|massive_lcd\(2),
	combout => \LCD_user|change~1_combout\);

-- Location: LCFF_X37_Y35_N3
\LCD_user|massive_lcd[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(4));

-- Location: LCFF_X37_Y35_N13
\LCD_user|massive_lcd[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(5));

-- Location: LCCOMB_X37_Y35_N12
\LCD_user|change~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~2_combout\ = (\lcd_data_in~combout\(4) & ((\lcd_data_in~combout\(5) $ (\LCD_user|massive_lcd\(5))) # (!\LCD_user|massive_lcd\(4)))) # (!\lcd_data_in~combout\(4) & ((\LCD_user|massive_lcd\(4)) # (\lcd_data_in~combout\(5) $ 
-- (\LCD_user|massive_lcd\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(4),
	datab => \lcd_data_in~combout\(5),
	datac => \LCD_user|massive_lcd\(5),
	datad => \LCD_user|massive_lcd\(4),
	combout => \LCD_user|change~2_combout\);

-- Location: LCFF_X41_Y35_N13
\LCD_user|massive_lcd[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|massive_lcd[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(6));

-- Location: LCFF_X41_Y35_N31
\LCD_user|massive_lcd[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(7));

-- Location: LCCOMB_X41_Y35_N30
\LCD_user|change~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~3_combout\ = (\lcd_data_in~combout\(7) & ((\lcd_data_in~combout\(6) $ (\LCD_user|massive_lcd\(6))) # (!\LCD_user|massive_lcd\(7)))) # (!\lcd_data_in~combout\(7) & ((\LCD_user|massive_lcd\(7)) # (\lcd_data_in~combout\(6) $ 
-- (\LCD_user|massive_lcd\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(7),
	datab => \lcd_data_in~combout\(6),
	datac => \LCD_user|massive_lcd\(7),
	datad => \LCD_user|massive_lcd\(6),
	combout => \LCD_user|change~3_combout\);

-- Location: LCCOMB_X41_Y35_N24
\LCD_user|change~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~4_combout\ = (\LCD_user|change~0_combout\) # ((\LCD_user|change~2_combout\) # ((\LCD_user|change~1_combout\) # (\LCD_user|change~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|change~0_combout\,
	datab => \LCD_user|change~2_combout\,
	datac => \LCD_user|change~1_combout\,
	datad => \LCD_user|change~3_combout\,
	combout => \LCD_user|change~4_combout\);

-- Location: LCFF_X40_Y35_N1
\LCD_user|massive_lcd[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|massive_lcd[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(8));

-- Location: LCFF_X40_Y35_N29
\LCD_user|massive_lcd[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|massive_lcd[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(10));

-- Location: LCFF_X40_Y35_N7
\LCD_user|massive_lcd[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(11));

-- Location: LCCOMB_X40_Y35_N6
\LCD_user|change~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~6_combout\ = (\lcd_data_in~combout\(11) & ((\lcd_data_in~combout\(10) $ (\LCD_user|massive_lcd\(10))) # (!\LCD_user|massive_lcd\(11)))) # (!\lcd_data_in~combout\(11) & ((\LCD_user|massive_lcd\(11)) # (\lcd_data_in~combout\(10) $ 
-- (\LCD_user|massive_lcd\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(11),
	datab => \lcd_data_in~combout\(10),
	datac => \LCD_user|massive_lcd\(11),
	datad => \LCD_user|massive_lcd\(10),
	combout => \LCD_user|change~6_combout\);

-- Location: LCFF_X40_Y35_N25
\LCD_user|massive_lcd[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|massive_lcd[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(12));

-- Location: LCFF_X38_Y28_N9
\LCD_user|massive_lcd[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|massive_lcd[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(14));

-- Location: LCFF_X41_Y35_N27
\LCD_user|massive_lcd[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(16));

-- Location: LCFF_X41_Y35_N21
\LCD_user|massive_lcd[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(17));

-- Location: LCCOMB_X41_Y35_N20
\LCD_user|change~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~10_combout\ = (\lcd_data_in~combout\(16) & ((\lcd_data_in~combout\(17) $ (\LCD_user|massive_lcd\(17))) # (!\LCD_user|massive_lcd\(16)))) # (!\lcd_data_in~combout\(16) & ((\LCD_user|massive_lcd\(16)) # (\lcd_data_in~combout\(17) $ 
-- (\LCD_user|massive_lcd\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(16),
	datab => \lcd_data_in~combout\(17),
	datac => \LCD_user|massive_lcd\(17),
	datad => \LCD_user|massive_lcd\(16),
	combout => \LCD_user|change~10_combout\);

-- Location: LCFF_X40_Y35_N23
\LCD_user|massive_lcd[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(28));

-- Location: LCCOMB_X40_Y35_N22
\LCD_user|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal1~0_combout\ = \lcd_data_in~combout\(28) $ (\LCD_user|massive_lcd\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(28),
	datac => \LCD_user|massive_lcd\(28),
	combout => \LCD_user|Equal1~0_combout\);

-- Location: LCFF_X40_Y35_N17
\LCD_user|massive_lcd[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|massive_lcd[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(30));

-- Location: LCFF_X40_Y35_N11
\LCD_user|massive_lcd[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(31));

-- Location: LCCOMB_X40_Y35_N10
\LCD_user|change~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~17_combout\ = (\LCD_user|massive_lcd\(30) & ((\lcd_data_in~combout\(31) $ (\LCD_user|massive_lcd\(31))) # (!\lcd_data_in~combout\(30)))) # (!\LCD_user|massive_lcd\(30) & ((\lcd_data_in~combout\(30)) # (\lcd_data_in~combout\(31) $ 
-- (\LCD_user|massive_lcd\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|massive_lcd\(30),
	datab => \lcd_data_in~combout\(31),
	datac => \LCD_user|massive_lcd\(31),
	datad => \lcd_data_in~combout\(30),
	combout => \LCD_user|change~17_combout\);

-- Location: LCFF_X40_Y35_N13
\LCD_user|massive_lcd[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(29));

-- Location: LCCOMB_X40_Y35_N12
\LCD_user|change~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~18_combout\ = (\LCD_user|Equal1~0_combout\) # ((\LCD_user|change~17_combout\) # (\lcd_data_in~combout\(29) $ (\LCD_user|massive_lcd\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(29),
	datab => \LCD_user|Equal1~0_combout\,
	datac => \LCD_user|massive_lcd\(29),
	datad => \LCD_user|change~17_combout\,
	combout => \LCD_user|change~18_combout\);

-- Location: LCCOMB_X37_Y35_N20
\LCD_user|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux14~0_combout\ = (\LCD_user|cnt\(3) & (((\LCD_user|cnt\(4))))) # (!\LCD_user|cnt\(3) & ((\LCD_user|cnt\(4) & ((\lcd_data_in~combout\(20)))) # (!\LCD_user|cnt\(4) & (\lcd_data_in~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(4),
	datab => \LCD_user|cnt\(3),
	datac => \lcd_data_in~combout\(20),
	datad => \LCD_user|cnt\(4),
	combout => \LCD_user|Mux14~0_combout\);

-- Location: LCCOMB_X42_Y35_N24
\LCD_user|z~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~1_combout\ = (\LCD_user|Mux12~1_combout\ & ((\LCD_user|Mux13~1_combout\ & (!\LCD_user|Mux14~1_combout\ & \LCD_user|Mux11~1_combout\)) # (!\LCD_user|Mux13~1_combout\ & (\LCD_user|Mux14~1_combout\ & !\LCD_user|Mux11~1_combout\)))) # 
-- (!\LCD_user|Mux12~1_combout\ & (\LCD_user|Mux14~1_combout\ $ (((!\LCD_user|Mux13~1_combout\ & !\LCD_user|Mux11~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Mux12~1_combout\,
	datab => \LCD_user|Mux13~1_combout\,
	datac => \LCD_user|Mux14~1_combout\,
	datad => \LCD_user|Mux11~1_combout\,
	combout => \LCD_user|z~1_combout\);

-- Location: LCCOMB_X42_Y32_N12
\LCD_user|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add7~0_combout\ = (\LCD_user|Mux17~1_combout\) # (\LCD_user|Mux16~1_combout\ $ (((\LCD_user|z~3_combout\) # (\LCD_user|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Mux17~1_combout\,
	datab => \LCD_user|Mux16~1_combout\,
	datac => \LCD_user|z~3_combout\,
	datad => \LCD_user|Add5~0_combout\,
	combout => \LCD_user|Add7~0_combout\);

-- Location: LCCOMB_X43_Y31_N10
\LCD_user|bindec~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~11_combout\ = (!\LCD_user|z~11_combout\ & (((\LCD_user|Mux11~1_combout\) # (!\LCD_user|z~9_combout\)) # (!\LCD_user|z~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~10_combout\,
	datab => \LCD_user|z~11_combout\,
	datac => \LCD_user|z~9_combout\,
	datad => \LCD_user|Mux11~1_combout\,
	combout => \LCD_user|bindec~11_combout\);

-- Location: LCFF_X43_Y31_N7
\LCD_user|bindec[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|bindec~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|bindec\(5));

-- Location: LCFF_X31_Y27_N11
\LCD_user|k[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~10_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(5));

-- Location: LCFF_X31_Y27_N13
\LCD_user|k[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~12_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(6));

-- Location: LCCOMB_X32_Y27_N12
\LCD_user|Equal12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal12~1_combout\ = (\LCD_user|k\(7)) # ((\LCD_user|k\(6)) # ((\LCD_user|k\(5)) # (\LCD_user|k\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(7),
	datab => \LCD_user|k\(6),
	datac => \LCD_user|k\(5),
	datad => \LCD_user|k\(4),
	combout => \LCD_user|Equal12~1_combout\);

-- Location: LCFF_X31_Y26_N7
\LCD_user|k[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~38_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(19));

-- Location: LCCOMB_X32_Y26_N0
\LCD_user|Equal12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal12~5_combout\ = (\LCD_user|k\(16)) # ((\LCD_user|k\(19)) # ((\LCD_user|k\(18)) # (\LCD_user|k\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(16),
	datab => \LCD_user|k\(19),
	datac => \LCD_user|k\(18),
	datad => \LCD_user|k\(17),
	combout => \LCD_user|Equal12~5_combout\);

-- Location: LCFF_X31_Y26_N11
\LCD_user|k[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~42_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(21));

-- Location: LCFF_X31_Y26_N13
\LCD_user|k[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~44_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(22));

-- Location: LCCOMB_X32_Y27_N28
\LCD_user|Equal12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal12~6_combout\ = (\LCD_user|k\(23)) # (\LCD_user|k\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_user|k\(23),
	datad => \LCD_user|k\(22),
	combout => \LCD_user|Equal12~6_combout\);

-- Location: LCCOMB_X32_Y27_N6
\LCD_user|Equal12~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal12~7_combout\ = (\LCD_user|Equal12~5_combout\) # ((\LCD_user|k\(20)) # ((\LCD_user|k\(21)) # (\LCD_user|Equal12~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Equal12~5_combout\,
	datab => \LCD_user|k\(20),
	datac => \LCD_user|k\(21),
	datad => \LCD_user|Equal12~6_combout\,
	combout => \LCD_user|Equal12~7_combout\);

-- Location: LCFF_X31_Y26_N31
\LCD_user|k[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~62_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(31));

-- Location: LCCOMB_X42_Y31_N16
\LCD_user|to_lcd[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd[3]~15_combout\ = (\LCD_user|to_lcd[3]~6_combout\) # ((!\LCD_user|process_1~4_combout\ & (\LCD_user|to_lcd[3]~7_combout\ & !\LCD_user|bindec~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~4_combout\,
	datab => \LCD_user|to_lcd[3]~6_combout\,
	datac => \LCD_user|to_lcd[3]~7_combout\,
	datad => \LCD_user|bindec~25_combout\,
	combout => \LCD_user|to_lcd[3]~15_combout\);

-- Location: LCCOMB_X42_Y31_N10
\LCD_user|to_lcd~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd~16_combout\ = (\LCD_user|process_1~5_combout\) # ((!\LCD_user|j\(1) & (\LCD_user|bindec~24_combout\ & !\LCD_user|flag_point\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(1),
	datab => \LCD_user|bindec~24_combout\,
	datac => \LCD_user|process_1~5_combout\,
	datad => \LCD_user|flag_point\(0),
	combout => \LCD_user|to_lcd~16_combout\);

-- Location: LCCOMB_X42_Y32_N24
\LCD_user|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan6~1_combout\ = (\LCD_user|z~6_combout\) # ((\LCD_user|z~7_combout\ & ((\LCD_user|z~14_combout\) # (\LCD_user|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~6_combout\,
	datab => \LCD_user|z~14_combout\,
	datac => \LCD_user|Mux17~1_combout\,
	datad => \LCD_user|z~7_combout\,
	combout => \LCD_user|LessThan6~1_combout\);

-- Location: LCCOMB_X42_Y32_N2
\LCD_user|bindec~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~20_combout\ = (\LCD_user|process_1~3_combout\ & (\LCD_user|z~14_combout\ $ (((\LCD_user|LessThan6~1_combout\ & !\LCD_user|Mux17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|LessThan6~1_combout\,
	datab => \LCD_user|z~14_combout\,
	datac => \LCD_user|process_1~3_combout\,
	datad => \LCD_user|Mux17~1_combout\,
	combout => \LCD_user|bindec~20_combout\);

-- Location: LCFF_X42_Y32_N21
\LCD_user|bindec[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|bindec~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|bindec\(2));

-- Location: LCCOMB_X42_Y31_N18
\LCD_user|to_lcd~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd~17_combout\ = (\LCD_user|to_lcd[3]~15_combout\ & ((\LCD_user|to_lcd~23_combout\) # ((\LCD_user|process_1~5_combout\)))) # (!\LCD_user|to_lcd[3]~15_combout\ & (((\LCD_user|to_lcd~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|to_lcd[3]~15_combout\,
	datab => \LCD_user|to_lcd~23_combout\,
	datac => \LCD_user|process_1~5_combout\,
	datad => \LCD_user|to_lcd~16_combout\,
	combout => \LCD_user|to_lcd~17_combout\);

-- Location: LCFF_X44_Y30_N15
\LCD_user|bindec[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|bindec~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|bindec\(0));

-- Location: LCCOMB_X41_Y35_N22
\LCD_user|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux18~0_combout\ = (\LCD_user|cnt\(4) & ((\lcd_data_in~combout\(16)) # ((\LCD_user|cnt\(3))))) # (!\LCD_user|cnt\(4) & (((!\LCD_user|cnt\(3) & \lcd_data_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(16),
	datab => \LCD_user|cnt\(4),
	datac => \LCD_user|cnt\(3),
	datad => \lcd_data_in~combout\(0),
	combout => \LCD_user|Mux18~0_combout\);

-- Location: LCCOMB_X44_Y30_N0
\LCD_user|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux18~1_combout\ = (\LCD_user|Mux18~0_combout\ & (((\lcd_data_in~combout\(24)) # (!\LCD_user|cnt\(3))))) # (!\LCD_user|Mux18~0_combout\ & (\lcd_data_in~combout\(8) & (\LCD_user|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(8),
	datab => \LCD_user|Mux18~0_combout\,
	datac => \LCD_user|cnt\(3),
	datad => \lcd_data_in~combout\(24),
	combout => \LCD_user|Mux18~1_combout\);

-- Location: LCCOMB_X44_Y30_N14
\LCD_user|bindec~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~21_combout\ = (\LCD_user|send_flag\(0) & (((\LCD_user|bindec\(0))))) # (!\LCD_user|send_flag\(0) & ((\LCD_user|change~20_combout\ & ((\LCD_user|Mux18~1_combout\))) # (!\LCD_user|change~20_combout\ & (\LCD_user|bindec\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|send_flag\(0),
	datab => \LCD_user|change~20_combout\,
	datac => \LCD_user|bindec\(0),
	datad => \LCD_user|Mux18~1_combout\,
	combout => \LCD_user|bindec~21_combout\);

-- Location: LCCOMB_X46_Y29_N0
\LCD_user|global_flag_finish[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|global_flag_finish[0]~0_combout\ = (\LCD_user|process_0~0_combout\ & (\LCD_user|char\(4))) # (!\LCD_user|process_0~0_combout\ & ((\LCD_user|global_flag_finish\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|char\(4),
	datac => \LCD_user|global_flag_finish\(0),
	datad => \LCD_user|process_0~0_combout\,
	combout => \LCD_user|global_flag_finish[0]~0_combout\);

-- Location: LCFF_X44_Y30_N31
\LCD_user|div_freq_lcd[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(0));

-- Location: LCCOMB_X44_Y30_N8
\LCD_user|div_freq_lcd~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd~31_combout\ = (\LCD_user|div_freq_lcd\(0) & ((\LCD_user|send_flag\(0) & (!\LCD_user|LessThan8~9_combout\)) # (!\LCD_user|send_flag\(0) & ((!\LCD_user|change~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|send_flag\(0),
	datab => \LCD_user|LessThan8~9_combout\,
	datac => \LCD_user|change~20_combout\,
	datad => \LCD_user|div_freq_lcd\(0),
	combout => \LCD_user|div_freq_lcd~31_combout\);

-- Location: LCFF_X37_Y29_N13
\LCD_user|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~8_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(7));

-- Location: LCFF_X37_Y29_N17
\LCD_user|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~12_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(9));

-- Location: LCCOMB_X37_Y29_N0
\LCD_user|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal3~1_combout\ = (\LCD_user|cnt\(7)) # ((\LCD_user|cnt\(8)) # ((\LCD_user|cnt\(9)) # (\LCD_user|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(7),
	datab => \LCD_user|cnt\(8),
	datac => \LCD_user|cnt\(9),
	datad => \LCD_user|cnt\(10),
	combout => \LCD_user|Equal3~1_combout\);

-- Location: LCFF_X37_Y29_N25
\LCD_user|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~20_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(13));

-- Location: LCFF_X37_Y28_N11
\LCD_user|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~38_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(22));

-- Location: LCFF_X37_Y28_N17
\LCD_user|cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~44_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(25));

-- Location: LCFF_X37_Y28_N29
\LCD_user|cnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~56_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(31));

-- Location: LCCOMB_X47_Y31_N20
\LCD_contr|busy~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|busy~5_combout\ = (\LCD_contr|LessThan5~3_combout\ & (((\LCD_contr|LessThan6~3_combout\) # (!\LCD_contr|Add0~30_combout\)) # (!\LCD_contr|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~32_combout\,
	datab => \LCD_contr|LessThan5~3_combout\,
	datac => \LCD_contr|LessThan6~3_combout\,
	datad => \LCD_contr|Add0~30_combout\,
	combout => \LCD_contr|busy~5_combout\);

-- Location: LCCOMB_X42_Y32_N20
\LCD_user|bindec~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~27_combout\ = (\LCD_user|bindec~20_combout\) # ((\LCD_user|bindec\(2) & ((\LCD_user|send_flag\(0)) # (!\LCD_user|change~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|change~20_combout\,
	datab => \LCD_user|send_flag\(0),
	datac => \LCD_user|bindec\(2),
	datad => \LCD_user|bindec~20_combout\,
	combout => \LCD_user|bindec~27_combout\);

-- Location: LCCOMB_X41_Y31_N8
\LCD_user|to_lcd~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd~23_combout\ = (!\LCD_user|flag_point\(0) & (\LCD_user|bindec~27_combout\ & ((!\LCD_user|Equal5~9_combout\) # (!\LCD_user|j\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(1),
	datab => \LCD_user|Equal5~9_combout\,
	datac => \LCD_user|flag_point\(0),
	datad => \LCD_user|bindec~27_combout\,
	combout => \LCD_user|to_lcd~23_combout\);

-- Location: LCCOMB_X44_Y30_N30
\LCD_user|div_freq_lcd[0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[0]~93_combout\ = !\LCD_user|div_freq_lcd~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_user|div_freq_lcd~31_combout\,
	combout => \LCD_user|div_freq_lcd[0]~93_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(0),
	combout => \lcd_data_in~combout\(0));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(2),
	combout => \lcd_data_in~combout\(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(4),
	combout => \lcd_data_in~combout\(4));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(11),
	combout => \lcd_data_in~combout\(11));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(16),
	combout => \lcd_data_in~combout\(16));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(29),
	combout => \lcd_data_in~combout\(29));

-- Location: LCCOMB_X41_Y35_N0
\LCD_user|massive_lcd[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|massive_lcd[0]~feeder_combout\ = \lcd_data_in~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_data_in~combout\(0),
	combout => \LCD_user|massive_lcd[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y35_N12
\LCD_user|massive_lcd[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|massive_lcd[6]~feeder_combout\ = \lcd_data_in~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_data_in~combout\(6),
	combout => \LCD_user|massive_lcd[6]~feeder_combout\);

-- Location: LCCOMB_X40_Y35_N0
\LCD_user|massive_lcd[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|massive_lcd[8]~feeder_combout\ = \lcd_data_in~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_data_in~combout\(8),
	combout => \LCD_user|massive_lcd[8]~feeder_combout\);

-- Location: LCCOMB_X40_Y35_N28
\LCD_user|massive_lcd[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|massive_lcd[10]~feeder_combout\ = \lcd_data_in~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_data_in~combout\(10),
	combout => \LCD_user|massive_lcd[10]~feeder_combout\);

-- Location: LCCOMB_X40_Y35_N24
\LCD_user|massive_lcd[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|massive_lcd[12]~feeder_combout\ = \lcd_data_in~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_data_in~combout\(12),
	combout => \LCD_user|massive_lcd[12]~feeder_combout\);

-- Location: LCCOMB_X38_Y28_N8
\LCD_user|massive_lcd[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|massive_lcd[14]~feeder_combout\ = \lcd_data_in~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_data_in~combout\(14),
	combout => \LCD_user|massive_lcd[14]~feeder_combout\);

-- Location: LCCOMB_X40_Y35_N16
\LCD_user|massive_lcd[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|massive_lcd[30]~feeder_combout\ = \lcd_data_in~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_data_in~combout\(30),
	combout => \LCD_user|massive_lcd[30]~feeder_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y30_N8
\LCD_contr|rs~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|rs~1_combout\ = (\LCD_contr|state.power_up~regout\) # (!\LCD_contr|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan0~6_combout\,
	datac => \LCD_contr|state.power_up~regout\,
	combout => \LCD_contr|rs~1_combout\);

-- Location: LCFF_X46_Y30_N9
\LCD_contr|state.power_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|rs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|state.power_up~regout\);

-- Location: LCCOMB_X46_Y30_N4
\LCD_contr|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector33~0_combout\ = (!\LCD_contr|LessThan0~6_combout\ & !\LCD_contr|state.power_up~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan0~6_combout\,
	datac => \LCD_contr|state.power_up~regout\,
	combout => \LCD_contr|Selector33~0_combout\);

-- Location: LCCOMB_X46_Y30_N14
\LCD_contr|clk_count[30]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|clk_count[30]~4_combout\ = (\LCD_contr|state.power_up~regout\ & ((\LCD_contr|Selector35~2_combout\) # ((!\LCD_contr|state.send~regout\ & !\LCD_contr|clk_count[30]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Selector35~2_combout\,
	datab => \LCD_contr|state.send~regout\,
	datac => \LCD_contr|state.power_up~regout\,
	datad => \LCD_contr|clk_count[30]~3_combout\,
	combout => \LCD_contr|clk_count[30]~4_combout\);

-- Location: LCCOMB_X47_Y29_N4
\LCD_contr|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector9~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~46_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~46_combout\,
	combout => \LCD_contr|Selector9~0_combout\);

-- Location: LCFF_X47_Y29_N5
\LCD_contr|clk_count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(23));

-- Location: LCCOMB_X48_Y29_N14
\LCD_contr|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~46_combout\ = (\LCD_contr|clk_count\(23) & (!\LCD_contr|Add0~45\)) # (!\LCD_contr|clk_count\(23) & ((\LCD_contr|Add0~45\) # (GND)))
-- \LCD_contr|Add0~47\ = CARRY((!\LCD_contr|Add0~45\) # (!\LCD_contr|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(23),
	datad => VCC,
	cin => \LCD_contr|Add0~45\,
	combout => \LCD_contr|Add0~46_combout\,
	cout => \LCD_contr|Add0~47\);

-- Location: LCCOMB_X48_Y29_N16
\LCD_contr|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~48_combout\ = (\LCD_contr|clk_count\(24) & (\LCD_contr|Add0~47\ $ (GND))) # (!\LCD_contr|clk_count\(24) & (!\LCD_contr|Add0~47\ & VCC))
-- \LCD_contr|Add0~49\ = CARRY((\LCD_contr|clk_count\(24) & !\LCD_contr|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(24),
	datad => VCC,
	cin => \LCD_contr|Add0~47\,
	combout => \LCD_contr|Add0~48_combout\,
	cout => \LCD_contr|Add0~49\);

-- Location: LCCOMB_X48_Y29_N18
\LCD_contr|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~50_combout\ = (\LCD_contr|clk_count\(25) & (!\LCD_contr|Add0~49\)) # (!\LCD_contr|clk_count\(25) & ((\LCD_contr|Add0~49\) # (GND)))
-- \LCD_contr|Add0~51\ = CARRY((!\LCD_contr|Add0~49\) # (!\LCD_contr|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(25),
	datad => VCC,
	cin => \LCD_contr|Add0~49\,
	combout => \LCD_contr|Add0~50_combout\,
	cout => \LCD_contr|Add0~51\);

-- Location: LCCOMB_X48_Y29_N20
\LCD_contr|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~52_combout\ = (\LCD_contr|clk_count\(26) & (\LCD_contr|Add0~51\ $ (GND))) # (!\LCD_contr|clk_count\(26) & (!\LCD_contr|Add0~51\ & VCC))
-- \LCD_contr|Add0~53\ = CARRY((\LCD_contr|clk_count\(26) & !\LCD_contr|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(26),
	datad => VCC,
	cin => \LCD_contr|Add0~51\,
	combout => \LCD_contr|Add0~52_combout\,
	cout => \LCD_contr|Add0~53\);

-- Location: LCCOMB_X47_Y29_N10
\LCD_contr|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector6~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~52_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~52_combout\,
	combout => \LCD_contr|Selector6~0_combout\);

-- Location: LCFF_X47_Y29_N11
\LCD_contr|clk_count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(26));

-- Location: LCCOMB_X49_Y29_N26
\LCD_contr|LessThan12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan12~1_combout\ = (\LCD_contr|LessThan12~0_combout\ & !\LCD_contr|clk_count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan12~0_combout\,
	datac => \LCD_contr|clk_count\(26),
	combout => \LCD_contr|LessThan12~1_combout\);

-- Location: LCCOMB_X48_Y29_N22
\LCD_contr|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~54_combout\ = (\LCD_contr|clk_count\(27) & (!\LCD_contr|Add0~53\)) # (!\LCD_contr|clk_count\(27) & ((\LCD_contr|Add0~53\) # (GND)))
-- \LCD_contr|Add0~55\ = CARRY((!\LCD_contr|Add0~53\) # (!\LCD_contr|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(27),
	datad => VCC,
	cin => \LCD_contr|Add0~53\,
	combout => \LCD_contr|Add0~54_combout\,
	cout => \LCD_contr|Add0~55\);

-- Location: LCCOMB_X48_Y29_N26
\LCD_contr|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~58_combout\ = (\LCD_contr|clk_count\(29) & (!\LCD_contr|Add0~57\)) # (!\LCD_contr|clk_count\(29) & ((\LCD_contr|Add0~57\) # (GND)))
-- \LCD_contr|Add0~59\ = CARRY((!\LCD_contr|Add0~57\) # (!\LCD_contr|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(29),
	datad => VCC,
	cin => \LCD_contr|Add0~57\,
	combout => \LCD_contr|Add0~58_combout\,
	cout => \LCD_contr|Add0~59\);

-- Location: LCCOMB_X47_Y29_N24
\LCD_contr|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector3~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~58_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|state.ready~regout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|Add0~58_combout\,
	datad => \LCD_contr|clk_count[30]~6_combout\,
	combout => \LCD_contr|Selector3~0_combout\);

-- Location: LCFF_X47_Y29_N25
\LCD_contr|clk_count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(29));

-- Location: LCCOMB_X48_Y29_N28
\LCD_contr|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~60_combout\ = (\LCD_contr|clk_count\(30) & (\LCD_contr|Add0~59\ $ (GND))) # (!\LCD_contr|clk_count\(30) & (!\LCD_contr|Add0~59\ & VCC))
-- \LCD_contr|Add0~61\ = CARRY((\LCD_contr|clk_count\(30) & !\LCD_contr|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(30),
	datad => VCC,
	cin => \LCD_contr|Add0~59\,
	combout => \LCD_contr|Add0~60_combout\,
	cout => \LCD_contr|Add0~61\);

-- Location: LCCOMB_X47_Y29_N26
\LCD_contr|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector2~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~60_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~60_combout\,
	combout => \LCD_contr|Selector2~0_combout\);

-- Location: LCFF_X47_Y29_N27
\LCD_contr|clk_count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(30));

-- Location: LCCOMB_X47_Y29_N12
\LCD_contr|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector5~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~54_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~54_combout\,
	combout => \LCD_contr|Selector5~0_combout\);

-- Location: LCFF_X47_Y29_N13
\LCD_contr|clk_count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(27));

-- Location: LCCOMB_X49_Y29_N2
\LCD_contr|LessThan9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan9~3_combout\ = (!\LCD_contr|clk_count\(28) & (!\LCD_contr|clk_count\(29) & (!\LCD_contr|clk_count\(30) & !\LCD_contr|clk_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(28),
	datab => \LCD_contr|clk_count\(29),
	datac => \LCD_contr|clk_count\(30),
	datad => \LCD_contr|clk_count\(27),
	combout => \LCD_contr|LessThan9~3_combout\);

-- Location: LCCOMB_X48_Y29_N6
\LCD_contr|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~38_combout\ = (\LCD_contr|clk_count\(19) & (!\LCD_contr|Add0~37\)) # (!\LCD_contr|clk_count\(19) & ((\LCD_contr|Add0~37\) # (GND)))
-- \LCD_contr|Add0~39\ = CARRY((!\LCD_contr|Add0~37\) # (!\LCD_contr|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(19),
	datad => VCC,
	cin => \LCD_contr|Add0~37\,
	combout => \LCD_contr|Add0~38_combout\,
	cout => \LCD_contr|Add0~39\);

-- Location: LCCOMB_X46_Y30_N16
\LCD_contr|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector13~0_combout\ = (\LCD_contr|Add0~38_combout\ & (!\LCD_contr|state.ready~regout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|Add0~38_combout\,
	datad => \LCD_contr|state.ready~regout\,
	combout => \LCD_contr|Selector13~0_combout\);

-- Location: LCFF_X46_Y30_N17
\LCD_contr|clk_count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(19));

-- Location: LCCOMB_X49_Y29_N18
\LCD_contr|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan0~5_combout\ = ((\LCD_contr|LessThan0~4_combout\ & (!\LCD_contr|clk_count\(19) & !\LCD_contr|clk_count\(20)))) # (!\LCD_contr|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan0~4_combout\,
	datab => \LCD_contr|clk_count\(19),
	datac => \LCD_contr|clk_count\(20),
	datad => \LCD_contr|clk_count\(21),
	combout => \LCD_contr|LessThan0~5_combout\);

-- Location: LCCOMB_X49_Y29_N4
\LCD_contr|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan0~6_combout\ = (\LCD_contr|clk_count\(31)) # ((\LCD_contr|LessThan12~1_combout\ & (\LCD_contr|LessThan9~3_combout\ & \LCD_contr|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(31),
	datab => \LCD_contr|LessThan12~1_combout\,
	datac => \LCD_contr|LessThan9~3_combout\,
	datad => \LCD_contr|LessThan0~5_combout\,
	combout => \LCD_contr|LessThan0~6_combout\);

-- Location: LCCOMB_X46_Y30_N26
\LCD_contr|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector1~0_combout\ = (\LCD_contr|Add0~62_combout\ & ((\LCD_contr|Selector35~2_combout\) # ((\LCD_contr|state.initialize~regout\) # (!\LCD_contr|rs~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Selector35~2_combout\,
	datab => \LCD_contr|state.initialize~regout\,
	datac => \LCD_contr|rs~1_combout\,
	datad => \LCD_contr|Add0~62_combout\,
	combout => \LCD_contr|Selector1~0_combout\);

-- Location: LCFF_X46_Y30_N27
\LCD_contr|clk_count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(31));

-- Location: LCCOMB_X48_Y29_N30
\LCD_contr|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~62_combout\ = \LCD_contr|Add0~61\ $ (\LCD_contr|clk_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD_contr|clk_count\(31),
	cin => \LCD_contr|Add0~61\,
	combout => \LCD_contr|Add0~62_combout\);

-- Location: LCCOMB_X48_Y29_N0
\LCD_contr|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~32_combout\ = (\LCD_contr|clk_count\(16) & (\LCD_contr|Add0~31\ $ (GND))) # (!\LCD_contr|clk_count\(16) & (!\LCD_contr|Add0~31\ & VCC))
-- \LCD_contr|Add0~33\ = CARRY((\LCD_contr|clk_count\(16) & !\LCD_contr|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(16),
	datad => VCC,
	cin => \LCD_contr|Add0~31\,
	combout => \LCD_contr|Add0~32_combout\,
	cout => \LCD_contr|Add0~33\);

-- Location: LCCOMB_X48_Y30_N30
\LCD_contr|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~30_combout\ = (\LCD_contr|clk_count\(15) & (!\LCD_contr|Add0~29\)) # (!\LCD_contr|clk_count\(15) & ((\LCD_contr|Add0~29\) # (GND)))
-- \LCD_contr|Add0~31\ = CARRY((!\LCD_contr|Add0~29\) # (!\LCD_contr|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(15),
	datad => VCC,
	cin => \LCD_contr|Add0~29\,
	combout => \LCD_contr|Add0~30_combout\,
	cout => \LCD_contr|Add0~31\);

-- Location: LCCOMB_X48_Y31_N30
\LCD_contr|clk_count[30]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|clk_count[30]~7_combout\ = (\LCD_contr|Add0~32_combout\ & (\LCD_contr|Add0~30_combout\ & ((\LCD_contr|Add0~28_combout\) # (!\LCD_contr|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan7~1_combout\,
	datab => \LCD_contr|Add0~32_combout\,
	datac => \LCD_contr|Add0~28_combout\,
	datad => \LCD_contr|Add0~30_combout\,
	combout => \LCD_contr|clk_count[30]~7_combout\);

-- Location: LCCOMB_X48_Y31_N20
\LCD_contr|clk_count[30]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|clk_count[30]~5_combout\ = (\LCD_contr|Add0~62_combout\) # ((\LCD_contr|clk_count[30]~2_combout\ & ((\LCD_contr|LessThan6~3_combout\) # (!\LCD_contr|clk_count[30]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan6~3_combout\,
	datab => \LCD_contr|clk_count[30]~2_combout\,
	datac => \LCD_contr|Add0~62_combout\,
	datad => \LCD_contr|clk_count[30]~7_combout\,
	combout => \LCD_contr|clk_count[30]~5_combout\);

-- Location: LCCOMB_X47_Y29_N6
\LCD_contr|clk_count[30]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|clk_count[30]~6_combout\ = (\LCD_contr|state.power_up~regout\ & (\LCD_contr|state.initialize~regout\ & ((\LCD_contr|clk_count[30]~5_combout\)))) # (!\LCD_contr|state.power_up~regout\ & ((\LCD_contr|LessThan0~6_combout\) # 
-- ((\LCD_contr|state.initialize~regout\ & \LCD_contr|clk_count[30]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|state.power_up~regout\,
	datab => \LCD_contr|state.initialize~regout\,
	datac => \LCD_contr|LessThan0~6_combout\,
	datad => \LCD_contr|clk_count[30]~5_combout\,
	combout => \LCD_contr|clk_count[30]~6_combout\);

-- Location: LCCOMB_X48_Y30_N0
\LCD_contr|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~0_combout\ = \LCD_contr|clk_count\(0) $ (VCC)
-- \LCD_contr|Add0~1\ = CARRY(\LCD_contr|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(0),
	datad => VCC,
	combout => \LCD_contr|Add0~0_combout\,
	cout => \LCD_contr|Add0~1\);

-- Location: LCCOMB_X47_Y29_N28
\LCD_contr|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector32~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~0_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~0_combout\,
	combout => \LCD_contr|Selector32~0_combout\);

-- Location: LCFF_X47_Y29_N29
\LCD_contr|clk_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(0));

-- Location: LCCOMB_X48_Y30_N2
\LCD_contr|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~2_combout\ = (\LCD_contr|clk_count\(1) & (!\LCD_contr|Add0~1\)) # (!\LCD_contr|clk_count\(1) & ((\LCD_contr|Add0~1\) # (GND)))
-- \LCD_contr|Add0~3\ = CARRY((!\LCD_contr|Add0~1\) # (!\LCD_contr|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(1),
	datad => VCC,
	cin => \LCD_contr|Add0~1\,
	combout => \LCD_contr|Add0~2_combout\,
	cout => \LCD_contr|Add0~3\);

-- Location: LCCOMB_X49_Y30_N30
\LCD_contr|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector31~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~2_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~4_combout\,
	datab => \LCD_contr|clk_count[30]~6_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~2_combout\,
	combout => \LCD_contr|Selector31~0_combout\);

-- Location: LCFF_X49_Y30_N31
\LCD_contr|clk_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(1));

-- Location: LCCOMB_X48_Y30_N4
\LCD_contr|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~4_combout\ = (\LCD_contr|clk_count\(2) & (\LCD_contr|Add0~3\ $ (GND))) # (!\LCD_contr|clk_count\(2) & (!\LCD_contr|Add0~3\ & VCC))
-- \LCD_contr|Add0~5\ = CARRY((\LCD_contr|clk_count\(2) & !\LCD_contr|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(2),
	datad => VCC,
	cin => \LCD_contr|Add0~3\,
	combout => \LCD_contr|Add0~4_combout\,
	cout => \LCD_contr|Add0~5\);

-- Location: LCCOMB_X49_Y30_N20
\LCD_contr|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector30~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~4_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~4_combout\,
	datab => \LCD_contr|state.ready~regout\,
	datac => \LCD_contr|Add0~4_combout\,
	datad => \LCD_contr|clk_count[30]~6_combout\,
	combout => \LCD_contr|Selector30~0_combout\);

-- Location: LCFF_X49_Y30_N21
\LCD_contr|clk_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(2));

-- Location: LCCOMB_X48_Y30_N6
\LCD_contr|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~6_combout\ = (\LCD_contr|clk_count\(3) & (!\LCD_contr|Add0~5\)) # (!\LCD_contr|clk_count\(3) & ((\LCD_contr|Add0~5\) # (GND)))
-- \LCD_contr|Add0~7\ = CARRY((!\LCD_contr|Add0~5\) # (!\LCD_contr|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(3),
	datad => VCC,
	cin => \LCD_contr|Add0~5\,
	combout => \LCD_contr|Add0~6_combout\,
	cout => \LCD_contr|Add0~7\);

-- Location: LCCOMB_X49_Y30_N18
\LCD_contr|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector29~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~6_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~4_combout\,
	datab => \LCD_contr|state.ready~regout\,
	datac => \LCD_contr|Add0~6_combout\,
	datad => \LCD_contr|clk_count[30]~6_combout\,
	combout => \LCD_contr|Selector29~0_combout\);

-- Location: LCFF_X49_Y30_N19
\LCD_contr|clk_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(3));

-- Location: LCCOMB_X48_Y30_N8
\LCD_contr|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~8_combout\ = (\LCD_contr|clk_count\(4) & (\LCD_contr|Add0~7\ $ (GND))) # (!\LCD_contr|clk_count\(4) & (!\LCD_contr|Add0~7\ & VCC))
-- \LCD_contr|Add0~9\ = CARRY((\LCD_contr|clk_count\(4) & !\LCD_contr|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(4),
	datad => VCC,
	cin => \LCD_contr|Add0~7\,
	combout => \LCD_contr|Add0~8_combout\,
	cout => \LCD_contr|Add0~9\);

-- Location: LCCOMB_X49_Y30_N24
\LCD_contr|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector28~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~8_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~4_combout\,
	datab => \LCD_contr|state.ready~regout\,
	datac => \LCD_contr|Add0~8_combout\,
	datad => \LCD_contr|clk_count[30]~6_combout\,
	combout => \LCD_contr|Selector28~0_combout\);

-- Location: LCFF_X49_Y30_N25
\LCD_contr|clk_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(4));

-- Location: LCCOMB_X48_Y30_N10
\LCD_contr|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~10_combout\ = (\LCD_contr|clk_count\(5) & (!\LCD_contr|Add0~9\)) # (!\LCD_contr|clk_count\(5) & ((\LCD_contr|Add0~9\) # (GND)))
-- \LCD_contr|Add0~11\ = CARRY((!\LCD_contr|Add0~9\) # (!\LCD_contr|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(5),
	datad => VCC,
	cin => \LCD_contr|Add0~9\,
	combout => \LCD_contr|Add0~10_combout\,
	cout => \LCD_contr|Add0~11\);

-- Location: LCCOMB_X49_Y30_N14
\LCD_contr|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector27~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~10_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~4_combout\,
	datab => \LCD_contr|clk_count[30]~6_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~10_combout\,
	combout => \LCD_contr|Selector27~0_combout\);

-- Location: LCFF_X49_Y30_N15
\LCD_contr|clk_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(5));

-- Location: LCCOMB_X48_Y30_N12
\LCD_contr|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~12_combout\ = (\LCD_contr|clk_count\(6) & (\LCD_contr|Add0~11\ $ (GND))) # (!\LCD_contr|clk_count\(6) & (!\LCD_contr|Add0~11\ & VCC))
-- \LCD_contr|Add0~13\ = CARRY((\LCD_contr|clk_count\(6) & !\LCD_contr|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(6),
	datad => VCC,
	cin => \LCD_contr|Add0~11\,
	combout => \LCD_contr|Add0~12_combout\,
	cout => \LCD_contr|Add0~13\);

-- Location: LCCOMB_X49_Y30_N28
\LCD_contr|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector26~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~12_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~4_combout\,
	datab => \LCD_contr|clk_count[30]~6_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~12_combout\,
	combout => \LCD_contr|Selector26~0_combout\);

-- Location: LCFF_X49_Y30_N29
\LCD_contr|clk_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(6));

-- Location: LCCOMB_X48_Y30_N14
\LCD_contr|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~14_combout\ = (\LCD_contr|clk_count\(7) & (!\LCD_contr|Add0~13\)) # (!\LCD_contr|clk_count\(7) & ((\LCD_contr|Add0~13\) # (GND)))
-- \LCD_contr|Add0~15\ = CARRY((!\LCD_contr|Add0~13\) # (!\LCD_contr|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(7),
	datad => VCC,
	cin => \LCD_contr|Add0~13\,
	combout => \LCD_contr|Add0~14_combout\,
	cout => \LCD_contr|Add0~15\);

-- Location: LCCOMB_X48_Y30_N16
\LCD_contr|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~16_combout\ = (\LCD_contr|clk_count\(8) & (\LCD_contr|Add0~15\ $ (GND))) # (!\LCD_contr|clk_count\(8) & (!\LCD_contr|Add0~15\ & VCC))
-- \LCD_contr|Add0~17\ = CARRY((\LCD_contr|clk_count\(8) & !\LCD_contr|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(8),
	datad => VCC,
	cin => \LCD_contr|Add0~15\,
	combout => \LCD_contr|Add0~16_combout\,
	cout => \LCD_contr|Add0~17\);

-- Location: LCCOMB_X49_Y30_N0
\LCD_contr|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector24~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~16_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~4_combout\,
	datab => \LCD_contr|clk_count[30]~6_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~16_combout\,
	combout => \LCD_contr|Selector24~0_combout\);

-- Location: LCFF_X49_Y30_N1
\LCD_contr|clk_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(8));

-- Location: LCCOMB_X48_Y30_N18
\LCD_contr|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~18_combout\ = (\LCD_contr|clk_count\(9) & (!\LCD_contr|Add0~17\)) # (!\LCD_contr|clk_count\(9) & ((\LCD_contr|Add0~17\) # (GND)))
-- \LCD_contr|Add0~19\ = CARRY((!\LCD_contr|Add0~17\) # (!\LCD_contr|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(9),
	datad => VCC,
	cin => \LCD_contr|Add0~17\,
	combout => \LCD_contr|Add0~18_combout\,
	cout => \LCD_contr|Add0~19\);

-- Location: LCCOMB_X48_Y30_N22
\LCD_contr|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~22_combout\ = (\LCD_contr|clk_count\(11) & (!\LCD_contr|Add0~21\)) # (!\LCD_contr|clk_count\(11) & ((\LCD_contr|Add0~21\) # (GND)))
-- \LCD_contr|Add0~23\ = CARRY((!\LCD_contr|Add0~21\) # (!\LCD_contr|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(11),
	datad => VCC,
	cin => \LCD_contr|Add0~21\,
	combout => \LCD_contr|Add0~22_combout\,
	cout => \LCD_contr|Add0~23\);

-- Location: LCCOMB_X47_Y29_N0
\LCD_contr|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector21~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~22_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~22_combout\,
	combout => \LCD_contr|Selector21~0_combout\);

-- Location: LCFF_X47_Y29_N1
\LCD_contr|clk_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(11));

-- Location: LCCOMB_X48_Y30_N24
\LCD_contr|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~24_combout\ = (\LCD_contr|clk_count\(12) & (\LCD_contr|Add0~23\ $ (GND))) # (!\LCD_contr|clk_count\(12) & (!\LCD_contr|Add0~23\ & VCC))
-- \LCD_contr|Add0~25\ = CARRY((\LCD_contr|clk_count\(12) & !\LCD_contr|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(12),
	datad => VCC,
	cin => \LCD_contr|Add0~23\,
	combout => \LCD_contr|Add0~24_combout\,
	cout => \LCD_contr|Add0~25\);

-- Location: LCCOMB_X49_Y29_N12
\LCD_contr|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector20~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~24_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|state.ready~regout\,
	datac => \LCD_contr|clk_count[30]~4_combout\,
	datad => \LCD_contr|Add0~24_combout\,
	combout => \LCD_contr|Selector20~0_combout\);

-- Location: LCFF_X49_Y29_N13
\LCD_contr|clk_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(12));

-- Location: LCCOMB_X48_Y30_N26
\LCD_contr|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~26_combout\ = (\LCD_contr|clk_count\(13) & (!\LCD_contr|Add0~25\)) # (!\LCD_contr|clk_count\(13) & ((\LCD_contr|Add0~25\) # (GND)))
-- \LCD_contr|Add0~27\ = CARRY((!\LCD_contr|Add0~25\) # (!\LCD_contr|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(13),
	datad => VCC,
	cin => \LCD_contr|Add0~25\,
	combout => \LCD_contr|Add0~26_combout\,
	cout => \LCD_contr|Add0~27\);

-- Location: LCCOMB_X49_Y29_N10
\LCD_contr|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector19~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~26_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|state.ready~regout\,
	datac => \LCD_contr|clk_count[30]~4_combout\,
	datad => \LCD_contr|Add0~26_combout\,
	combout => \LCD_contr|Selector19~0_combout\);

-- Location: LCFF_X49_Y29_N11
\LCD_contr|clk_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(13));

-- Location: LCCOMB_X48_Y30_N28
\LCD_contr|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~28_combout\ = (\LCD_contr|clk_count\(14) & (\LCD_contr|Add0~27\ $ (GND))) # (!\LCD_contr|clk_count\(14) & (!\LCD_contr|Add0~27\ & VCC))
-- \LCD_contr|Add0~29\ = CARRY((\LCD_contr|clk_count\(14) & !\LCD_contr|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(14),
	datad => VCC,
	cin => \LCD_contr|Add0~27\,
	combout => \LCD_contr|Add0~28_combout\,
	cout => \LCD_contr|Add0~29\);

-- Location: LCCOMB_X46_Y30_N6
\LCD_contr|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector18~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~28_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|state.ready~regout\,
	datac => \LCD_contr|clk_count[30]~4_combout\,
	datad => \LCD_contr|Add0~28_combout\,
	combout => \LCD_contr|Selector18~0_combout\);

-- Location: LCFF_X46_Y30_N7
\LCD_contr|clk_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(14));

-- Location: LCCOMB_X48_Y29_N2
\LCD_contr|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~34_combout\ = (\LCD_contr|clk_count\(17) & (!\LCD_contr|Add0~33\)) # (!\LCD_contr|clk_count\(17) & ((\LCD_contr|Add0~33\) # (GND)))
-- \LCD_contr|Add0~35\ = CARRY((!\LCD_contr|Add0~33\) # (!\LCD_contr|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(17),
	datad => VCC,
	cin => \LCD_contr|Add0~33\,
	combout => \LCD_contr|Add0~34_combout\,
	cout => \LCD_contr|Add0~35\);

-- Location: LCCOMB_X49_Y29_N24
\LCD_contr|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector15~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~34_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|state.ready~regout\,
	datac => \LCD_contr|clk_count[30]~4_combout\,
	datad => \LCD_contr|Add0~34_combout\,
	combout => \LCD_contr|Selector15~0_combout\);

-- Location: LCFF_X49_Y29_N25
\LCD_contr|clk_count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(17));

-- Location: LCCOMB_X48_Y29_N4
\LCD_contr|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~36_combout\ = (\LCD_contr|clk_count\(18) & (\LCD_contr|Add0~35\ $ (GND))) # (!\LCD_contr|clk_count\(18) & (!\LCD_contr|Add0~35\ & VCC))
-- \LCD_contr|Add0~37\ = CARRY((\LCD_contr|clk_count\(18) & !\LCD_contr|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(18),
	datad => VCC,
	cin => \LCD_contr|Add0~35\,
	combout => \LCD_contr|Add0~36_combout\,
	cout => \LCD_contr|Add0~37\);

-- Location: LCCOMB_X47_Y29_N22
\LCD_contr|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector14~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~36_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|state.ready~regout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|Add0~36_combout\,
	datad => \LCD_contr|clk_count[30]~6_combout\,
	combout => \LCD_contr|Selector14~0_combout\);

-- Location: LCFF_X47_Y29_N23
\LCD_contr|clk_count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(18));

-- Location: LCCOMB_X48_Y29_N8
\LCD_contr|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~40_combout\ = (\LCD_contr|clk_count\(20) & (\LCD_contr|Add0~39\ $ (GND))) # (!\LCD_contr|clk_count\(20) & (!\LCD_contr|Add0~39\ & VCC))
-- \LCD_contr|Add0~41\ = CARRY((\LCD_contr|clk_count\(20) & !\LCD_contr|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(20),
	datad => VCC,
	cin => \LCD_contr|Add0~39\,
	combout => \LCD_contr|Add0~40_combout\,
	cout => \LCD_contr|Add0~41\);

-- Location: LCCOMB_X49_Y29_N8
\LCD_contr|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector12~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~40_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|state.ready~regout\,
	datac => \LCD_contr|clk_count[30]~4_combout\,
	datad => \LCD_contr|Add0~40_combout\,
	combout => \LCD_contr|Selector12~0_combout\);

-- Location: LCFF_X49_Y29_N9
\LCD_contr|clk_count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(20));

-- Location: LCCOMB_X48_Y29_N10
\LCD_contr|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~42_combout\ = (\LCD_contr|clk_count\(21) & (!\LCD_contr|Add0~41\)) # (!\LCD_contr|clk_count\(21) & ((\LCD_contr|Add0~41\) # (GND)))
-- \LCD_contr|Add0~43\ = CARRY((!\LCD_contr|Add0~41\) # (!\LCD_contr|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(21),
	datad => VCC,
	cin => \LCD_contr|Add0~41\,
	combout => \LCD_contr|Add0~42_combout\,
	cout => \LCD_contr|Add0~43\);

-- Location: LCCOMB_X47_Y29_N16
\LCD_contr|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector11~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~42_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|state.ready~regout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|Add0~42_combout\,
	datad => \LCD_contr|clk_count[30]~6_combout\,
	combout => \LCD_contr|Selector11~0_combout\);

-- Location: LCFF_X47_Y29_N17
\LCD_contr|clk_count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(21));

-- Location: LCCOMB_X48_Y29_N12
\LCD_contr|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Add0~44_combout\ = (\LCD_contr|clk_count\(22) & (\LCD_contr|Add0~43\ $ (GND))) # (!\LCD_contr|clk_count\(22) & (!\LCD_contr|Add0~43\ & VCC))
-- \LCD_contr|Add0~45\ = CARRY((\LCD_contr|clk_count\(22) & !\LCD_contr|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|clk_count\(22),
	datad => VCC,
	cin => \LCD_contr|Add0~43\,
	combout => \LCD_contr|Add0~44_combout\,
	cout => \LCD_contr|Add0~45\);

-- Location: LCCOMB_X47_Y29_N18
\LCD_contr|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector10~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~44_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|state.ready~regout\,
	datab => \LCD_contr|clk_count[30]~4_combout\,
	datac => \LCD_contr|Add0~44_combout\,
	datad => \LCD_contr|clk_count[30]~6_combout\,
	combout => \LCD_contr|Selector10~0_combout\);

-- Location: LCFF_X47_Y29_N19
\LCD_contr|clk_count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(22));

-- Location: LCCOMB_X46_Y29_N26
\LCD_contr|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan5~1_combout\ = (!\LCD_contr|Add0~42_combout\ & (!\LCD_contr|Add0~46_combout\ & (!\LCD_contr|Add0~44_combout\ & !\LCD_contr|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~42_combout\,
	datab => \LCD_contr|Add0~46_combout\,
	datac => \LCD_contr|Add0~44_combout\,
	datad => \LCD_contr|Add0~48_combout\,
	combout => \LCD_contr|LessThan5~1_combout\);

-- Location: LCCOMB_X46_Y29_N20
\LCD_contr|LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan5~2_combout\ = (!\LCD_contr|Add0~56_combout\ & (!\LCD_contr|Add0~52_combout\ & (!\LCD_contr|Add0~54_combout\ & !\LCD_contr|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~56_combout\,
	datab => \LCD_contr|Add0~52_combout\,
	datac => \LCD_contr|Add0~54_combout\,
	datad => \LCD_contr|Add0~50_combout\,
	combout => \LCD_contr|LessThan5~2_combout\);

-- Location: LCCOMB_X46_Y29_N22
\LCD_contr|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan5~3_combout\ = (\LCD_contr|LessThan5~0_combout\ & (\LCD_contr|LessThan5~1_combout\ & (\LCD_contr|LessThan5~2_combout\ & !\LCD_contr|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan5~0_combout\,
	datab => \LCD_contr|LessThan5~1_combout\,
	datac => \LCD_contr|LessThan5~2_combout\,
	datad => \LCD_contr|Add0~58_combout\,
	combout => \LCD_contr|LessThan5~3_combout\);

-- Location: LCCOMB_X48_Y31_N14
\LCD_contr|clk_count[30]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|clk_count[30]~2_combout\ = (\LCD_contr|LessThan5~3_combout\ & !\LCD_contr|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_contr|LessThan5~3_combout\,
	datad => \LCD_contr|Add0~60_combout\,
	combout => \LCD_contr|clk_count[30]~2_combout\);

-- Location: LCCOMB_X49_Y31_N14
\LCD_contr|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan2~4_combout\ = (\LCD_contr|Add0~16_combout\ & \LCD_contr|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_contr|Add0~16_combout\,
	datad => \LCD_contr|Add0~14_combout\,
	combout => \LCD_contr|LessThan2~4_combout\);

-- Location: LCCOMB_X49_Y31_N30
\LCD_contr|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan8~1_combout\ = ((!\LCD_contr|Add0~12_combout\ & ((!\LCD_contr|Add0~10_combout\) # (!\LCD_contr|Add0~8_combout\)))) # (!\LCD_contr|LessThan2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~12_combout\,
	datab => \LCD_contr|Add0~8_combout\,
	datac => \LCD_contr|LessThan2~4_combout\,
	datad => \LCD_contr|Add0~10_combout\,
	combout => \LCD_contr|LessThan8~1_combout\);

-- Location: LCCOMB_X48_Y31_N26
\LCD_contr|LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan8~2_combout\ = (((!\LCD_contr|Add0~18_combout\ & \LCD_contr|LessThan8~1_combout\)) # (!\LCD_contr|Add0~22_combout\)) # (!\LCD_contr|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~20_combout\,
	datab => \LCD_contr|Add0~22_combout\,
	datac => \LCD_contr|Add0~18_combout\,
	datad => \LCD_contr|LessThan8~1_combout\,
	combout => \LCD_contr|LessThan8~2_combout\);

-- Location: LCCOMB_X48_Y31_N28
\LCD_contr|LessThan8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan8~3_combout\ = (!\LCD_contr|Add0~28_combout\ & (((!\LCD_contr|Add0~24_combout\ & \LCD_contr|LessThan8~2_combout\)) # (!\LCD_contr|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~26_combout\,
	datab => \LCD_contr|Add0~28_combout\,
	datac => \LCD_contr|Add0~24_combout\,
	datad => \LCD_contr|LessThan8~2_combout\,
	combout => \LCD_contr|LessThan8~3_combout\);

-- Location: LCCOMB_X48_Y31_N18
\LCD_contr|clk_count[30]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|clk_count[30]~3_combout\ = (!\LCD_contr|Add0~62_combout\ & (((\LCD_contr|LessThan8~0_combout\ & !\LCD_contr|LessThan8~3_combout\)) # (!\LCD_contr|clk_count[30]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan8~0_combout\,
	datab => \LCD_contr|clk_count[30]~2_combout\,
	datac => \LCD_contr|Add0~62_combout\,
	datad => \LCD_contr|LessThan8~3_combout\,
	combout => \LCD_contr|clk_count[30]~3_combout\);

-- Location: LCCOMB_X46_Y30_N0
\LCD_contr|Selector33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector33~1_combout\ = (\LCD_contr|Selector33~0_combout\) # ((\LCD_contr|state.initialize~regout\ & ((!\LCD_contr|clk_count[30]~3_combout\) # (!\LCD_contr|busy~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|busy~4_combout\,
	datab => \LCD_contr|Selector33~0_combout\,
	datac => \LCD_contr|state.initialize~regout\,
	datad => \LCD_contr|clk_count[30]~3_combout\,
	combout => \LCD_contr|Selector33~1_combout\);

-- Location: LCFF_X46_Y30_N1
\LCD_contr|state.initialize\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|state.initialize~regout\);

-- Location: LCCOMB_X47_Y31_N22
\LCD_contr|LessThan7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan7~2_combout\ = (\LCD_contr|LessThan5~3_combout\ & (!\LCD_contr|Add0~60_combout\ & !\LCD_contr|clk_count[30]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|LessThan5~3_combout\,
	datac => \LCD_contr|Add0~60_combout\,
	datad => \LCD_contr|clk_count[30]~7_combout\,
	combout => \LCD_contr|LessThan7~2_combout\);

-- Location: LCCOMB_X48_Y31_N24
\LCD_contr|LessThan5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan5~4_combout\ = (!\LCD_contr|Add0~26_combout\ & (!\LCD_contr|Add0~32_combout\ & (!\LCD_contr|Add0~28_combout\ & !\LCD_contr|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~26_combout\,
	datab => \LCD_contr|Add0~32_combout\,
	datac => \LCD_contr|Add0~28_combout\,
	datad => \LCD_contr|Add0~30_combout\,
	combout => \LCD_contr|LessThan5~4_combout\);

-- Location: LCCOMB_X47_Y31_N0
\LCD_contr|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan3~3_combout\ = (\LCD_contr|LessThan3~2_combout\ & (\LCD_contr|LessThan5~3_combout\ & (!\LCD_contr|Add0~24_combout\ & \LCD_contr|LessThan5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan3~2_combout\,
	datab => \LCD_contr|LessThan5~3_combout\,
	datac => \LCD_contr|Add0~24_combout\,
	datad => \LCD_contr|LessThan5~4_combout\,
	combout => \LCD_contr|LessThan3~3_combout\);

-- Location: LCCOMB_X47_Y31_N6
\LCD_contr|busy~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|busy~4_combout\ = (!\LCD_contr|LessThan7~2_combout\ & ((\LCD_contr|Add0~60_combout\) # ((!\LCD_contr|busy~5_combout\ & !\LCD_contr|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|busy~5_combout\,
	datab => \LCD_contr|LessThan7~2_combout\,
	datac => \LCD_contr|Add0~60_combout\,
	datad => \LCD_contr|LessThan3~3_combout\,
	combout => \LCD_contr|busy~4_combout\);

-- Location: LCCOMB_X46_Y30_N24
\LCD_contr|Selector34~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector34~2_combout\ = (\LCD_contr|Selector34~1_combout\) # ((\LCD_contr|state.initialize~regout\ & (\LCD_contr|busy~4_combout\ & \LCD_contr|clk_count[30]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Selector34~1_combout\,
	datab => \LCD_contr|state.initialize~regout\,
	datac => \LCD_contr|busy~4_combout\,
	datad => \LCD_contr|clk_count[30]~3_combout\,
	combout => \LCD_contr|Selector34~2_combout\);

-- Location: LCCOMB_X49_Y29_N6
\LCD_contr|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector23~0_combout\ = (\LCD_contr|Add0~18_combout\ & (!\LCD_contr|state.ready~regout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~18_combout\,
	datab => \LCD_contr|state.ready~regout\,
	datac => \LCD_contr|clk_count[30]~4_combout\,
	datad => \LCD_contr|clk_count[30]~6_combout\,
	combout => \LCD_contr|Selector23~0_combout\);

-- Location: LCFF_X49_Y29_N7
\LCD_contr|clk_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(9));

-- Location: LCCOMB_X49_Y30_N26
\LCD_contr|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector25~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~14_combout\ & ((\LCD_contr|clk_count[30]~4_combout\) # (\LCD_contr|clk_count[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~4_combout\,
	datab => \LCD_contr|clk_count[30]~6_combout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Add0~14_combout\,
	combout => \LCD_contr|Selector25~0_combout\);

-- Location: LCFF_X49_Y30_N27
\LCD_contr|clk_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(7));

-- Location: LCCOMB_X49_Y30_N8
\LCD_contr|LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan9~0_combout\ = (!\LCD_contr|clk_count\(4) & (!\LCD_contr|clk_count\(5) & (!\LCD_contr|clk_count\(2) & !\LCD_contr|clk_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(4),
	datab => \LCD_contr|clk_count\(5),
	datac => \LCD_contr|clk_count\(2),
	datad => \LCD_contr|clk_count\(3),
	combout => \LCD_contr|LessThan9~0_combout\);

-- Location: LCCOMB_X47_Y30_N22
\LCD_contr|LessThan9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan9~1_combout\ = (((\LCD_contr|LessThan9~0_combout\) # (!\LCD_contr|clk_count\(8))) # (!\LCD_contr|clk_count\(7))) # (!\LCD_contr|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(6),
	datab => \LCD_contr|clk_count\(7),
	datac => \LCD_contr|clk_count\(8),
	datad => \LCD_contr|LessThan9~0_combout\,
	combout => \LCD_contr|LessThan9~1_combout\);

-- Location: LCCOMB_X47_Y30_N8
\LCD_contr|LessThan9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan9~2_combout\ = ((!\LCD_contr|clk_count\(10) & (!\LCD_contr|clk_count\(9) & \LCD_contr|LessThan9~1_combout\))) # (!\LCD_contr|clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(10),
	datab => \LCD_contr|clk_count\(11),
	datac => \LCD_contr|clk_count\(9),
	datad => \LCD_contr|LessThan9~1_combout\,
	combout => \LCD_contr|LessThan9~2_combout\);

-- Location: LCCOMB_X46_Y30_N18
\LCD_contr|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector16~0_combout\ = (!\LCD_contr|state.ready~regout\ & (\LCD_contr|Add0~32_combout\ & ((\LCD_contr|clk_count[30]~6_combout\) # (\LCD_contr|clk_count[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count[30]~6_combout\,
	datab => \LCD_contr|state.ready~regout\,
	datac => \LCD_contr|clk_count[30]~4_combout\,
	datad => \LCD_contr|Add0~32_combout\,
	combout => \LCD_contr|Selector16~0_combout\);

-- Location: LCFF_X46_Y30_N19
\LCD_contr|clk_count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|clk_count\(16));

-- Location: LCCOMB_X49_Y29_N28
\LCD_contr|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan0~0_combout\ = (!\LCD_contr|clk_count\(15) & (!\LCD_contr|clk_count\(16) & !\LCD_contr|clk_count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(15),
	datab => \LCD_contr|clk_count\(16),
	datad => \LCD_contr|clk_count\(14),
	combout => \LCD_contr|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y29_N14
\LCD_contr|LessThan12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan12~2_combout\ = (!\LCD_contr|clk_count\(17) & (!\LCD_contr|clk_count\(20) & (!\LCD_contr|clk_count\(19) & !\LCD_contr|clk_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(17),
	datab => \LCD_contr|clk_count\(20),
	datac => \LCD_contr|clk_count\(19),
	datad => \LCD_contr|clk_count\(13),
	combout => \LCD_contr|LessThan12~2_combout\);

-- Location: LCCOMB_X49_Y29_N0
\LCD_contr|LessThan12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan12~3_combout\ = (!\LCD_contr|clk_count\(12) & (\LCD_contr|LessThan0~0_combout\ & (\LCD_contr|LessThan12~2_combout\ & \LCD_contr|LessThan12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(12),
	datab => \LCD_contr|LessThan0~0_combout\,
	datac => \LCD_contr|LessThan12~2_combout\,
	datad => \LCD_contr|LessThan12~1_combout\,
	combout => \LCD_contr|LessThan12~3_combout\);

-- Location: LCCOMB_X47_Y30_N18
\LCD_contr|LessThan12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan12~4_combout\ = (!\LCD_contr|clk_count\(18) & (!\LCD_contr|clk_count\(21) & \LCD_contr|LessThan12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|clk_count\(18),
	datac => \LCD_contr|clk_count\(21),
	datad => \LCD_contr|LessThan12~3_combout\,
	combout => \LCD_contr|LessThan12~4_combout\);

-- Location: LCCOMB_X47_Y30_N30
\LCD_contr|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector34~0_combout\ = (!\LCD_contr|clk_count\(31) & (((!\LCD_contr|LessThan12~4_combout\) # (!\LCD_contr|LessThan9~2_combout\)) # (!\LCD_contr|LessThan9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan9~3_combout\,
	datab => \LCD_contr|clk_count\(31),
	datac => \LCD_contr|LessThan9~2_combout\,
	datad => \LCD_contr|LessThan12~4_combout\,
	combout => \LCD_contr|Selector34~0_combout\);

-- Location: LCCOMB_X46_Y30_N30
\LCD_contr|Selector34~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector34~3_combout\ = (\LCD_contr|Selector34~2_combout\) # ((\LCD_contr|state.send~regout\ & \LCD_contr|Selector34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|state.send~regout\,
	datac => \LCD_contr|Selector34~2_combout\,
	datad => \LCD_contr|Selector34~0_combout\,
	combout => \LCD_contr|Selector34~3_combout\);

-- Location: LCFF_X46_Y30_N31
\LCD_contr|state.ready\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector34~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|state.ready~regout\);

-- Location: LCCOMB_X46_Y30_N28
\LCD_contr|Selector35~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector35~3_combout\ = (\LCD_user|lcd_enable~regout\ & ((\LCD_contr|state.ready~regout\) # ((\LCD_contr|state.send~regout\ & !\LCD_contr|Selector34~0_combout\)))) # (!\LCD_user|lcd_enable~regout\ & (((\LCD_contr|state.send~regout\ & 
-- !\LCD_contr|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|lcd_enable~regout\,
	datab => \LCD_contr|state.ready~regout\,
	datac => \LCD_contr|state.send~regout\,
	datad => \LCD_contr|Selector34~0_combout\,
	combout => \LCD_contr|Selector35~3_combout\);

-- Location: LCFF_X46_Y30_N29
\LCD_contr|state.send\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector35~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|state.send~regout\);

-- Location: LCCOMB_X48_Y31_N0
\LCD_contr|Selector46~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector46~3_combout\ = (\LCD_contr|e~regout\ & (((\LCD_contr|LessThan8~0_combout\ & !\LCD_contr|LessThan8~3_combout\)) # (!\LCD_contr|clk_count[30]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan8~0_combout\,
	datab => \LCD_contr|clk_count[30]~2_combout\,
	datac => \LCD_contr|e~regout\,
	datad => \LCD_contr|LessThan8~3_combout\,
	combout => \LCD_contr|Selector46~3_combout\);

-- Location: LCCOMB_X47_Y31_N4
\LCD_contr|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan2~3_combout\ = (\LCD_contr|LessThan2~2_combout\ & (\LCD_contr|LessThan5~3_combout\ & (!\LCD_contr|Add0~24_combout\ & \LCD_contr|LessThan5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan2~2_combout\,
	datab => \LCD_contr|LessThan5~3_combout\,
	datac => \LCD_contr|Add0~24_combout\,
	datad => \LCD_contr|LessThan5~4_combout\,
	combout => \LCD_contr|LessThan2~3_combout\);

-- Location: LCCOMB_X47_Y31_N26
\LCD_contr|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan4~3_combout\ = (\LCD_contr|LessThan5~3_combout\ & (\LCD_contr|LessThan5~4_combout\ & ((\LCD_contr|LessThan4~2_combout\) # (!\LCD_contr|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan4~2_combout\,
	datab => \LCD_contr|LessThan5~3_combout\,
	datac => \LCD_contr|Add0~24_combout\,
	datad => \LCD_contr|LessThan5~4_combout\,
	combout => \LCD_contr|LessThan4~3_combout\);

-- Location: LCCOMB_X47_Y31_N12
\LCD_contr|Selector46~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector46~2_combout\ = (\LCD_contr|Add0~60_combout\) # ((!\LCD_contr|busy~5_combout\ & (!\LCD_contr|LessThan2~3_combout\ & !\LCD_contr|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|busy~5_combout\,
	datab => \LCD_contr|LessThan2~3_combout\,
	datac => \LCD_contr|Add0~60_combout\,
	datad => \LCD_contr|LessThan4~3_combout\,
	combout => \LCD_contr|Selector46~2_combout\);

-- Location: LCCOMB_X47_Y31_N16
\LCD_contr|Selector46~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector46~4_combout\ = (\LCD_contr|Add0~62_combout\) # ((\LCD_contr|Selector46~2_combout\ & ((\LCD_contr|LessThan7~2_combout\) # (\LCD_contr|Selector46~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~62_combout\,
	datab => \LCD_contr|LessThan7~2_combout\,
	datac => \LCD_contr|Selector46~3_combout\,
	datad => \LCD_contr|Selector46~2_combout\,
	combout => \LCD_contr|Selector46~4_combout\);

-- Location: LCCOMB_X48_Y31_N4
\LCD_contr|LessThan5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan5~7_combout\ = (!\LCD_contr|Add0~22_combout\) # (!\LCD_contr|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_contr|Add0~24_combout\,
	datad => \LCD_contr|Add0~22_combout\,
	combout => \LCD_contr|LessThan5~7_combout\);

-- Location: LCCOMB_X48_Y31_N22
\LCD_contr|LessThan5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan5~8_combout\ = (\LCD_contr|LessThan5~3_combout\ & (\LCD_contr|LessThan5~4_combout\ & ((\LCD_contr|LessThan5~6_combout\) # (\LCD_contr|LessThan5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan5~6_combout\,
	datab => \LCD_contr|LessThan5~7_combout\,
	datac => \LCD_contr|LessThan5~3_combout\,
	datad => \LCD_contr|LessThan5~4_combout\,
	combout => \LCD_contr|LessThan5~8_combout\);

-- Location: LCCOMB_X47_Y31_N14
\LCD_contr|Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector46~0_combout\ = (!\LCD_contr|LessThan2~3_combout\ & ((\LCD_contr|LessThan3~3_combout\) # ((!\LCD_contr|LessThan4~3_combout\ & \LCD_contr|LessThan5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan3~3_combout\,
	datab => \LCD_contr|LessThan4~3_combout\,
	datac => \LCD_contr|LessThan2~3_combout\,
	datad => \LCD_contr|LessThan5~8_combout\,
	combout => \LCD_contr|Selector46~0_combout\);

-- Location: LCCOMB_X47_Y31_N8
\LCD_contr|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|LessThan1~2_combout\ = (\LCD_contr|LessThan1~1_combout\ & (\LCD_contr|LessThan5~3_combout\ & \LCD_contr|LessThan5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan1~1_combout\,
	datab => \LCD_contr|LessThan5~3_combout\,
	datad => \LCD_contr|LessThan5~4_combout\,
	combout => \LCD_contr|LessThan1~2_combout\);

-- Location: LCCOMB_X47_Y31_N18
\LCD_contr|Selector46~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector46~1_combout\ = (!\LCD_contr|Add0~60_combout\ & ((\LCD_contr|Selector46~0_combout\) # (\LCD_contr|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_contr|Selector46~0_combout\,
	datac => \LCD_contr|Add0~60_combout\,
	datad => \LCD_contr|LessThan1~2_combout\,
	combout => \LCD_contr|Selector46~1_combout\);

-- Location: LCCOMB_X47_Y31_N10
\LCD_contr|Selector46~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector46~5_combout\ = (\LCD_contr|state.initialize~regout\ & (((\LCD_contr|Selector46~4_combout\) # (\LCD_contr|Selector46~1_combout\)))) # (!\LCD_contr|state.initialize~regout\ & (\LCD_contr|e~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|state.initialize~regout\,
	datab => \LCD_contr|e~regout\,
	datac => \LCD_contr|Selector46~4_combout\,
	datad => \LCD_contr|Selector46~1_combout\,
	combout => \LCD_contr|Selector46~5_combout\);

-- Location: LCCOMB_X47_Y30_N0
\LCD_contr|Selector46~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector46~9_combout\ = (\LCD_contr|state.send~regout\ & (\LCD_contr|Selector46~8_combout\ & (!\LCD_contr|clk_count\(31)))) # (!\LCD_contr|state.send~regout\ & (((\LCD_contr|Selector46~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Selector46~8_combout\,
	datab => \LCD_contr|state.send~regout\,
	datac => \LCD_contr|clk_count\(31),
	datad => \LCD_contr|Selector46~5_combout\,
	combout => \LCD_contr|Selector46~9_combout\);

-- Location: LCFF_X47_Y30_N1
\LCD_contr|e\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector46~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|e~regout\);

-- Location: LCCOMB_X46_Y30_N2
\LCD_contr|lcd_data[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|lcd_data[0]~0_combout\ = (!\LCD_contr|state.send~regout\ & ((\LCD_contr|state.power_up~regout\) # (!\LCD_contr|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan0~6_combout\,
	datab => \LCD_contr|state.send~regout\,
	datac => \LCD_contr|state.power_up~regout\,
	combout => \LCD_contr|lcd_data[0]~0_combout\);

-- Location: LCCOMB_X46_Y31_N18
\LCD_contr|rs~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|rs~0_combout\ = (\LCD_contr|lcd_data[0]~0_combout\ & ((\LCD_contr|state.initialize~regout\ & ((\LCD_contr|rs~regout\))) # (!\LCD_contr|state.initialize~regout\ & (\LCD_contr|Selector36~0_combout\)))) # (!\LCD_contr|lcd_data[0]~0_combout\ & 
-- (((\LCD_contr|rs~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Selector36~0_combout\,
	datab => \LCD_contr|lcd_data[0]~0_combout\,
	datac => \LCD_contr|rs~regout\,
	datad => \LCD_contr|state.initialize~regout\,
	combout => \LCD_contr|rs~0_combout\);

-- Location: LCFF_X46_Y31_N19
\LCD_contr|rs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|rs~regout\);

-- Location: LCCOMB_X43_Y29_N22
\LCD_user|char[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|char[0]~5_combout\ = \LCD_user|char\(0) $ (VCC)
-- \LCD_user|char[0]~6\ = CARRY(\LCD_user|char\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|char\(0),
	datad => VCC,
	combout => \LCD_user|char[0]~5_combout\,
	cout => \LCD_user|char[0]~6\);

-- Location: LCFF_X46_Y30_N25
\LCD_contr|busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|busy~regout\);

-- Location: LCCOMB_X46_Y29_N6
\LCD_user|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|process_0~0_combout\ = (\LCD_user|global_flag_start\(0) & (!\LCD_user|lcd_enable~regout\ & \LCD_contr|busy~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|global_flag_start\(0),
	datab => \LCD_user|lcd_enable~regout\,
	datad => \LCD_contr|busy~regout\,
	combout => \LCD_user|process_0~0_combout\);

-- Location: LCFF_X43_Y29_N23
\LCD_user|char[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|char[0]~5_combout\,
	sclr => \LCD_user|char\(4),
	ena => \LCD_user|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|char\(0));

-- Location: LCCOMB_X43_Y29_N26
\LCD_user|char[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|char[2]~9_combout\ = (\LCD_user|char\(2) & (\LCD_user|char[1]~8\ $ (GND))) # (!\LCD_user|char\(2) & (!\LCD_user|char[1]~8\ & VCC))
-- \LCD_user|char[2]~10\ = CARRY((\LCD_user|char\(2) & !\LCD_user|char[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|char\(2),
	datad => VCC,
	cin => \LCD_user|char[1]~8\,
	combout => \LCD_user|char[2]~9_combout\,
	cout => \LCD_user|char[2]~10\);

-- Location: LCFF_X43_Y29_N27
\LCD_user|char[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|char[2]~9_combout\,
	sclr => \LCD_user|char\(4),
	ena => \LCD_user|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|char\(2));

-- Location: LCCOMB_X43_Y29_N28
\LCD_user|char[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|char[3]~11_combout\ = (\LCD_user|char\(3) & (!\LCD_user|char[2]~10\)) # (!\LCD_user|char\(3) & ((\LCD_user|char[2]~10\) # (GND)))
-- \LCD_user|char[3]~12\ = CARRY((!\LCD_user|char[2]~10\) # (!\LCD_user|char\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|char\(3),
	datad => VCC,
	cin => \LCD_user|char[2]~10\,
	combout => \LCD_user|char[3]~11_combout\,
	cout => \LCD_user|char[3]~12\);

-- Location: LCFF_X43_Y29_N29
\LCD_user|char[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|char[3]~11_combout\,
	sclr => \LCD_user|char\(4),
	ena => \LCD_user|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|char\(3));

-- Location: LCCOMB_X43_Y29_N30
\LCD_user|char[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|char[4]~13_combout\ = \LCD_user|char[3]~12\ $ (!\LCD_user|char\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD_user|char\(4),
	cin => \LCD_user|char[3]~12\,
	combout => \LCD_user|char[4]~13_combout\);

-- Location: LCFF_X43_Y29_N31
\LCD_user|char[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|char[4]~13_combout\,
	sclr => \LCD_user|char\(4),
	ena => \LCD_user|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|char\(4));

-- Location: LCCOMB_X40_Y32_N0
\LCD_user|j[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[0]~32_combout\ = (((\LCD_user|process_1~2_combout\) # (\LCD_user|j\(0))))
-- \LCD_user|j[0]~33\ = CARRY((\LCD_user|process_1~2_combout\) # (\LCD_user|j\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(0),
	datad => VCC,
	combout => \LCD_user|j[0]~32_combout\,
	cout => \LCD_user|j[0]~33\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(24),
	combout => \lcd_data_in~combout\(24));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(25),
	combout => \lcd_data_in~combout\(25));

-- Location: LCFF_X41_Y35_N19
\LCD_user|massive_lcd[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(25));

-- Location: LCFF_X41_Y35_N9
\LCD_user|massive_lcd[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(24));

-- Location: LCCOMB_X41_Y35_N18
\LCD_user|change~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~15_combout\ = (\lcd_data_in~combout\(25) & ((\lcd_data_in~combout\(24) $ (\LCD_user|massive_lcd\(24))) # (!\LCD_user|massive_lcd\(25)))) # (!\lcd_data_in~combout\(25) & ((\LCD_user|massive_lcd\(25)) # (\lcd_data_in~combout\(24) $ 
-- (\LCD_user|massive_lcd\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(25),
	datab => \lcd_data_in~combout\(24),
	datac => \LCD_user|massive_lcd\(25),
	datad => \LCD_user|massive_lcd\(24),
	combout => \LCD_user|change~15_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(26),
	combout => \lcd_data_in~combout\(26));

-- Location: LCCOMB_X37_Y35_N14
\LCD_user|massive_lcd[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|massive_lcd[26]~feeder_combout\ = \lcd_data_in~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_data_in~combout\(26),
	combout => \LCD_user|massive_lcd[26]~feeder_combout\);

-- Location: LCFF_X37_Y35_N15
\LCD_user|massive_lcd[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|massive_lcd[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(26));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(27),
	combout => \lcd_data_in~combout\(27));

-- Location: LCFF_X37_Y35_N25
\LCD_user|massive_lcd[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(27));

-- Location: LCCOMB_X37_Y35_N24
\LCD_user|change~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~16_combout\ = (\lcd_data_in~combout\(27) & ((\LCD_user|massive_lcd\(26) $ (\lcd_data_in~combout\(26))) # (!\LCD_user|massive_lcd\(27)))) # (!\lcd_data_in~combout\(27) & ((\LCD_user|massive_lcd\(27)) # (\LCD_user|massive_lcd\(26) $ 
-- (\lcd_data_in~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(27),
	datab => \LCD_user|massive_lcd\(26),
	datac => \LCD_user|massive_lcd\(27),
	datad => \lcd_data_in~combout\(26),
	combout => \LCD_user|change~16_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(20),
	combout => \lcd_data_in~combout\(20));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(21),
	combout => \lcd_data_in~combout\(21));

-- Location: LCFF_X37_Y35_N5
\LCD_user|massive_lcd[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(21));

-- Location: LCFF_X37_Y35_N11
\LCD_user|massive_lcd[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(20));

-- Location: LCCOMB_X37_Y35_N4
\LCD_user|change~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~12_combout\ = (\lcd_data_in~combout\(21) & ((\lcd_data_in~combout\(20) $ (\LCD_user|massive_lcd\(20))) # (!\LCD_user|massive_lcd\(21)))) # (!\lcd_data_in~combout\(21) & ((\LCD_user|massive_lcd\(21)) # (\lcd_data_in~combout\(20) $ 
-- (\LCD_user|massive_lcd\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(21),
	datab => \lcd_data_in~combout\(20),
	datac => \LCD_user|massive_lcd\(21),
	datad => \LCD_user|massive_lcd\(20),
	combout => \LCD_user|change~12_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(18),
	combout => \lcd_data_in~combout\(18));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(19),
	combout => \lcd_data_in~combout\(19));

-- Location: LCFF_X37_Y35_N9
\LCD_user|massive_lcd[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(19));

-- Location: LCCOMB_X37_Y35_N6
\LCD_user|massive_lcd[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|massive_lcd[18]~feeder_combout\ = \lcd_data_in~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_data_in~combout\(18),
	combout => \LCD_user|massive_lcd[18]~feeder_combout\);

-- Location: LCFF_X37_Y35_N7
\LCD_user|massive_lcd[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|massive_lcd[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(18));

-- Location: LCCOMB_X37_Y35_N8
\LCD_user|change~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~11_combout\ = (\lcd_data_in~combout\(19) & ((\lcd_data_in~combout\(18) $ (\LCD_user|massive_lcd\(18))) # (!\LCD_user|massive_lcd\(19)))) # (!\lcd_data_in~combout\(19) & ((\LCD_user|massive_lcd\(19)) # (\lcd_data_in~combout\(18) $ 
-- (\LCD_user|massive_lcd\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(19),
	datab => \lcd_data_in~combout\(18),
	datac => \LCD_user|massive_lcd\(19),
	datad => \LCD_user|massive_lcd\(18),
	combout => \LCD_user|change~11_combout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(22),
	combout => \lcd_data_in~combout\(22));

-- Location: LCCOMB_X43_Y35_N0
\LCD_user|massive_lcd[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|massive_lcd[22]~feeder_combout\ = \lcd_data_in~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_data_in~combout\(22),
	combout => \LCD_user|massive_lcd[22]~feeder_combout\);

-- Location: LCFF_X43_Y35_N1
\LCD_user|massive_lcd[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|massive_lcd[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(22));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(23),
	combout => \lcd_data_in~combout\(23));

-- Location: LCFF_X43_Y35_N19
\LCD_user|massive_lcd[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(23));

-- Location: LCCOMB_X43_Y35_N18
\LCD_user|change~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~13_combout\ = (\lcd_data_in~combout\(23) & ((\LCD_user|massive_lcd\(22) $ (\lcd_data_in~combout\(22))) # (!\LCD_user|massive_lcd\(23)))) # (!\lcd_data_in~combout\(23) & ((\LCD_user|massive_lcd\(23)) # (\LCD_user|massive_lcd\(22) $ 
-- (\lcd_data_in~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(23),
	datab => \LCD_user|massive_lcd\(22),
	datac => \LCD_user|massive_lcd\(23),
	datad => \lcd_data_in~combout\(22),
	combout => \LCD_user|change~13_combout\);

-- Location: LCCOMB_X41_Y35_N6
\LCD_user|change~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~14_combout\ = (\LCD_user|change~10_combout\) # ((\LCD_user|change~12_combout\) # ((\LCD_user|change~11_combout\) # (\LCD_user|change~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|change~10_combout\,
	datab => \LCD_user|change~12_combout\,
	datac => \LCD_user|change~11_combout\,
	datad => \LCD_user|change~13_combout\,
	combout => \LCD_user|change~14_combout\);

-- Location: LCCOMB_X41_Y35_N4
\LCD_user|change~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~19_combout\ = (\LCD_user|change~18_combout\) # ((\LCD_user|change~15_combout\) # ((\LCD_user|change~16_combout\) # (\LCD_user|change~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|change~18_combout\,
	datab => \LCD_user|change~15_combout\,
	datac => \LCD_user|change~16_combout\,
	datad => \LCD_user|change~14_combout\,
	combout => \LCD_user|change~19_combout\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(13),
	combout => \lcd_data_in~combout\(13));

-- Location: LCFF_X40_Y35_N3
\LCD_user|massive_lcd[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(13));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(12),
	combout => \lcd_data_in~combout\(12));

-- Location: LCCOMB_X40_Y35_N2
\LCD_user|change~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~7_combout\ = (\LCD_user|massive_lcd\(12) & ((\lcd_data_in~combout\(13) $ (\LCD_user|massive_lcd\(13))) # (!\lcd_data_in~combout\(12)))) # (!\LCD_user|massive_lcd\(12) & ((\lcd_data_in~combout\(12)) # (\lcd_data_in~combout\(13) $ 
-- (\LCD_user|massive_lcd\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|massive_lcd\(12),
	datab => \lcd_data_in~combout\(13),
	datac => \LCD_user|massive_lcd\(13),
	datad => \lcd_data_in~combout\(12),
	combout => \LCD_user|change~7_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(15),
	combout => \lcd_data_in~combout\(15));

-- Location: LCFF_X38_Y28_N11
\LCD_user|massive_lcd[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(15));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(14),
	combout => \lcd_data_in~combout\(14));

-- Location: LCCOMB_X38_Y28_N10
\LCD_user|change~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~8_combout\ = (\LCD_user|massive_lcd\(14) & ((\lcd_data_in~combout\(15) $ (\LCD_user|massive_lcd\(15))) # (!\lcd_data_in~combout\(14)))) # (!\LCD_user|massive_lcd\(14) & ((\lcd_data_in~combout\(14)) # (\lcd_data_in~combout\(15) $ 
-- (\LCD_user|massive_lcd\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|massive_lcd\(14),
	datab => \lcd_data_in~combout\(15),
	datac => \LCD_user|massive_lcd\(15),
	datad => \lcd_data_in~combout\(14),
	combout => \LCD_user|change~8_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(9),
	combout => \lcd_data_in~combout\(9));

-- Location: LCFF_X40_Y35_N27
\LCD_user|massive_lcd[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \lcd_data_in~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|massive_lcd\(9));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(8),
	combout => \lcd_data_in~combout\(8));

-- Location: LCCOMB_X40_Y35_N26
\LCD_user|change~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~5_combout\ = (\LCD_user|massive_lcd\(8) & ((\lcd_data_in~combout\(9) $ (\LCD_user|massive_lcd\(9))) # (!\lcd_data_in~combout\(8)))) # (!\LCD_user|massive_lcd\(8) & ((\lcd_data_in~combout\(8)) # (\lcd_data_in~combout\(9) $ 
-- (\LCD_user|massive_lcd\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|massive_lcd\(8),
	datab => \lcd_data_in~combout\(9),
	datac => \LCD_user|massive_lcd\(9),
	datad => \lcd_data_in~combout\(8),
	combout => \LCD_user|change~5_combout\);

-- Location: LCCOMB_X40_Y35_N20
\LCD_user|change~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~9_combout\ = (\LCD_user|change~6_combout\) # ((\LCD_user|change~7_combout\) # ((\LCD_user|change~8_combout\) # (\LCD_user|change~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|change~6_combout\,
	datab => \LCD_user|change~7_combout\,
	datac => \LCD_user|change~8_combout\,
	datad => \LCD_user|change~5_combout\,
	combout => \LCD_user|change~9_combout\);

-- Location: LCCOMB_X37_Y29_N4
\LCD_user|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~0_combout\ = \LCD_user|cnt\(3) $ (VCC)
-- \LCD_user|Add9~1\ = CARRY(\LCD_user|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(3),
	datad => VCC,
	combout => \LCD_user|Add9~0_combout\,
	cout => \LCD_user|Add9~1\);

-- Location: LCCOMB_X44_Y30_N16
\LCD_user|send_flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|send_flag~0_combout\ = (\LCD_user|Equal11~0_combout\ & ((\LCD_user|change~20_combout\) # ((\LCD_user|send_flag\(0))))) # (!\LCD_user|Equal11~0_combout\ & (((\LCD_user|send_flag\(0) & \LCD_user|LessThan8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Equal11~0_combout\,
	datab => \LCD_user|change~20_combout\,
	datac => \LCD_user|send_flag\(0),
	datad => \LCD_user|LessThan8~9_combout\,
	combout => \LCD_user|send_flag~0_combout\);

-- Location: LCFF_X44_Y30_N17
\LCD_user|send_flag[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|send_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|send_flag\(0));

-- Location: LCCOMB_X43_Y31_N0
\LCD_user|process_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|process_1~3_combout\ = (!\LCD_user|send_flag\(0) & \LCD_user|change~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|send_flag\(0),
	datac => \LCD_user|change~20_combout\,
	combout => \LCD_user|process_1~3_combout\);

-- Location: LCFF_X37_Y29_N5
\LCD_user|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~0_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(3));

-- Location: LCCOMB_X37_Y29_N6
\LCD_user|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~2_combout\ = (\LCD_user|cnt\(4) & (!\LCD_user|Add9~1\)) # (!\LCD_user|cnt\(4) & ((\LCD_user|Add9~1\) # (GND)))
-- \LCD_user|Add9~3\ = CARRY((!\LCD_user|Add9~1\) # (!\LCD_user|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(4),
	datad => VCC,
	cin => \LCD_user|Add9~1\,
	combout => \LCD_user|Add9~2_combout\,
	cout => \LCD_user|Add9~3\);

-- Location: LCCOMB_X37_Y29_N8
\LCD_user|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~4_combout\ = (\LCD_user|cnt\(5) & (\LCD_user|Add9~3\ $ (GND))) # (!\LCD_user|cnt\(5) & (!\LCD_user|Add9~3\ & VCC))
-- \LCD_user|Add9~5\ = CARRY((\LCD_user|cnt\(5) & !\LCD_user|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(5),
	datad => VCC,
	cin => \LCD_user|Add9~3\,
	combout => \LCD_user|Add9~4_combout\,
	cout => \LCD_user|Add9~5\);

-- Location: LCCOMB_X37_Y29_N10
\LCD_user|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~6_combout\ = (\LCD_user|cnt\(6) & (!\LCD_user|Add9~5\)) # (!\LCD_user|cnt\(6) & ((\LCD_user|Add9~5\) # (GND)))
-- \LCD_user|Add9~7\ = CARRY((!\LCD_user|Add9~5\) # (!\LCD_user|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(6),
	datad => VCC,
	cin => \LCD_user|Add9~5\,
	combout => \LCD_user|Add9~6_combout\,
	cout => \LCD_user|Add9~7\);

-- Location: LCCOMB_X37_Y29_N14
\LCD_user|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~10_combout\ = (\LCD_user|cnt\(8) & (!\LCD_user|Add9~9\)) # (!\LCD_user|cnt\(8) & ((\LCD_user|Add9~9\) # (GND)))
-- \LCD_user|Add9~11\ = CARRY((!\LCD_user|Add9~9\) # (!\LCD_user|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(8),
	datad => VCC,
	cin => \LCD_user|Add9~9\,
	combout => \LCD_user|Add9~10_combout\,
	cout => \LCD_user|Add9~11\);

-- Location: LCFF_X37_Y29_N15
\LCD_user|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~10_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(8));

-- Location: LCCOMB_X37_Y29_N18
\LCD_user|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~14_combout\ = (\LCD_user|cnt\(10) & (!\LCD_user|Add9~13\)) # (!\LCD_user|cnt\(10) & ((\LCD_user|Add9~13\) # (GND)))
-- \LCD_user|Add9~15\ = CARRY((!\LCD_user|Add9~13\) # (!\LCD_user|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(10),
	datad => VCC,
	cin => \LCD_user|Add9~13\,
	combout => \LCD_user|Add9~14_combout\,
	cout => \LCD_user|Add9~15\);

-- Location: LCFF_X37_Y29_N19
\LCD_user|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~14_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(10));

-- Location: LCCOMB_X37_Y29_N20
\LCD_user|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~16_combout\ = (\LCD_user|cnt\(11) & (\LCD_user|Add9~15\ $ (GND))) # (!\LCD_user|cnt\(11) & (!\LCD_user|Add9~15\ & VCC))
-- \LCD_user|Add9~17\ = CARRY((\LCD_user|cnt\(11) & !\LCD_user|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(11),
	datad => VCC,
	cin => \LCD_user|Add9~15\,
	combout => \LCD_user|Add9~16_combout\,
	cout => \LCD_user|Add9~17\);

-- Location: LCCOMB_X37_Y29_N22
\LCD_user|Add9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~18_combout\ = (\LCD_user|cnt\(12) & (!\LCD_user|Add9~17\)) # (!\LCD_user|cnt\(12) & ((\LCD_user|Add9~17\) # (GND)))
-- \LCD_user|Add9~19\ = CARRY((!\LCD_user|Add9~17\) # (!\LCD_user|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(12),
	datad => VCC,
	cin => \LCD_user|Add9~17\,
	combout => \LCD_user|Add9~18_combout\,
	cout => \LCD_user|Add9~19\);

-- Location: LCFF_X37_Y29_N23
\LCD_user|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~18_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(12));

-- Location: LCCOMB_X37_Y29_N26
\LCD_user|Add9~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~22_combout\ = (\LCD_user|cnt\(14) & (!\LCD_user|Add9~21\)) # (!\LCD_user|cnt\(14) & ((\LCD_user|Add9~21\) # (GND)))
-- \LCD_user|Add9~23\ = CARRY((!\LCD_user|Add9~21\) # (!\LCD_user|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(14),
	datad => VCC,
	cin => \LCD_user|Add9~21\,
	combout => \LCD_user|Add9~22_combout\,
	cout => \LCD_user|Add9~23\);

-- Location: LCFF_X37_Y29_N27
\LCD_user|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~22_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(14));

-- Location: LCCOMB_X37_Y29_N28
\LCD_user|Add9~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~24_combout\ = (\LCD_user|cnt\(15) & (\LCD_user|Add9~23\ $ (GND))) # (!\LCD_user|cnt\(15) & (!\LCD_user|Add9~23\ & VCC))
-- \LCD_user|Add9~25\ = CARRY((\LCD_user|cnt\(15) & !\LCD_user|Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(15),
	datad => VCC,
	cin => \LCD_user|Add9~23\,
	combout => \LCD_user|Add9~24_combout\,
	cout => \LCD_user|Add9~25\);

-- Location: LCFF_X37_Y29_N29
\LCD_user|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~24_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(15));

-- Location: LCCOMB_X37_Y29_N30
\LCD_user|Add9~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~26_combout\ = (\LCD_user|cnt\(16) & (!\LCD_user|Add9~25\)) # (!\LCD_user|cnt\(16) & ((\LCD_user|Add9~25\) # (GND)))
-- \LCD_user|Add9~27\ = CARRY((!\LCD_user|Add9~25\) # (!\LCD_user|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(16),
	datad => VCC,
	cin => \LCD_user|Add9~25\,
	combout => \LCD_user|Add9~26_combout\,
	cout => \LCD_user|Add9~27\);

-- Location: LCFF_X37_Y29_N31
\LCD_user|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~26_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(16));

-- Location: LCCOMB_X37_Y28_N0
\LCD_user|Add9~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~28_combout\ = (\LCD_user|cnt\(17) & (\LCD_user|Add9~27\ $ (GND))) # (!\LCD_user|cnt\(17) & (!\LCD_user|Add9~27\ & VCC))
-- \LCD_user|Add9~29\ = CARRY((\LCD_user|cnt\(17) & !\LCD_user|Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(17),
	datad => VCC,
	cin => \LCD_user|Add9~27\,
	combout => \LCD_user|Add9~28_combout\,
	cout => \LCD_user|Add9~29\);

-- Location: LCFF_X37_Y28_N1
\LCD_user|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~28_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(17));

-- Location: LCCOMB_X37_Y28_N2
\LCD_user|Add9~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~30_combout\ = (\LCD_user|cnt\(18) & (!\LCD_user|Add9~29\)) # (!\LCD_user|cnt\(18) & ((\LCD_user|Add9~29\) # (GND)))
-- \LCD_user|Add9~31\ = CARRY((!\LCD_user|Add9~29\) # (!\LCD_user|cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(18),
	datad => VCC,
	cin => \LCD_user|Add9~29\,
	combout => \LCD_user|Add9~30_combout\,
	cout => \LCD_user|Add9~31\);

-- Location: LCFF_X37_Y28_N3
\LCD_user|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~30_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(18));

-- Location: LCCOMB_X37_Y28_N4
\LCD_user|Add9~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~32_combout\ = (\LCD_user|cnt\(19) & (\LCD_user|Add9~31\ $ (GND))) # (!\LCD_user|cnt\(19) & (!\LCD_user|Add9~31\ & VCC))
-- \LCD_user|Add9~33\ = CARRY((\LCD_user|cnt\(19) & !\LCD_user|Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(19),
	datad => VCC,
	cin => \LCD_user|Add9~31\,
	combout => \LCD_user|Add9~32_combout\,
	cout => \LCD_user|Add9~33\);

-- Location: LCFF_X37_Y28_N5
\LCD_user|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~32_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(19));

-- Location: LCCOMB_X37_Y28_N6
\LCD_user|Add9~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~34_combout\ = (\LCD_user|cnt\(20) & (!\LCD_user|Add9~33\)) # (!\LCD_user|cnt\(20) & ((\LCD_user|Add9~33\) # (GND)))
-- \LCD_user|Add9~35\ = CARRY((!\LCD_user|Add9~33\) # (!\LCD_user|cnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(20),
	datad => VCC,
	cin => \LCD_user|Add9~33\,
	combout => \LCD_user|Add9~34_combout\,
	cout => \LCD_user|Add9~35\);

-- Location: LCCOMB_X37_Y28_N8
\LCD_user|Add9~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~36_combout\ = (\LCD_user|cnt\(21) & (\LCD_user|Add9~35\ $ (GND))) # (!\LCD_user|cnt\(21) & (!\LCD_user|Add9~35\ & VCC))
-- \LCD_user|Add9~37\ = CARRY((\LCD_user|cnt\(21) & !\LCD_user|Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(21),
	datad => VCC,
	cin => \LCD_user|Add9~35\,
	combout => \LCD_user|Add9~36_combout\,
	cout => \LCD_user|Add9~37\);

-- Location: LCFF_X37_Y28_N9
\LCD_user|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~36_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(21));

-- Location: LCCOMB_X37_Y28_N12
\LCD_user|Add9~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~40_combout\ = (\LCD_user|cnt\(23) & (\LCD_user|Add9~39\ $ (GND))) # (!\LCD_user|cnt\(23) & (!\LCD_user|Add9~39\ & VCC))
-- \LCD_user|Add9~41\ = CARRY((\LCD_user|cnt\(23) & !\LCD_user|Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(23),
	datad => VCC,
	cin => \LCD_user|Add9~39\,
	combout => \LCD_user|Add9~40_combout\,
	cout => \LCD_user|Add9~41\);

-- Location: LCCOMB_X37_Y28_N14
\LCD_user|Add9~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~42_combout\ = (\LCD_user|cnt\(24) & (!\LCD_user|Add9~41\)) # (!\LCD_user|cnt\(24) & ((\LCD_user|Add9~41\) # (GND)))
-- \LCD_user|Add9~43\ = CARRY((!\LCD_user|Add9~41\) # (!\LCD_user|cnt\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(24),
	datad => VCC,
	cin => \LCD_user|Add9~41\,
	combout => \LCD_user|Add9~42_combout\,
	cout => \LCD_user|Add9~43\);

-- Location: LCFF_X37_Y28_N15
\LCD_user|cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~42_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(24));

-- Location: LCCOMB_X37_Y28_N18
\LCD_user|Add9~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~46_combout\ = (\LCD_user|cnt\(26) & (!\LCD_user|Add9~45\)) # (!\LCD_user|cnt\(26) & ((\LCD_user|Add9~45\) # (GND)))
-- \LCD_user|Add9~47\ = CARRY((!\LCD_user|Add9~45\) # (!\LCD_user|cnt\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(26),
	datad => VCC,
	cin => \LCD_user|Add9~45\,
	combout => \LCD_user|Add9~46_combout\,
	cout => \LCD_user|Add9~47\);

-- Location: LCFF_X37_Y28_N19
\LCD_user|cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~46_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(26));

-- Location: LCFF_X37_Y28_N13
\LCD_user|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~40_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(23));

-- Location: LCCOMB_X37_Y28_N30
\LCD_user|Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal3~6_combout\ = (\LCD_user|cnt\(25)) # ((\LCD_user|cnt\(26)) # ((\LCD_user|cnt\(24)) # (\LCD_user|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(25),
	datab => \LCD_user|cnt\(26),
	datac => \LCD_user|cnt\(24),
	datad => \LCD_user|cnt\(23),
	combout => \LCD_user|Equal3~6_combout\);

-- Location: LCFF_X37_Y28_N7
\LCD_user|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~34_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(20));

-- Location: LCCOMB_X38_Y28_N6
\LCD_user|Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal3~5_combout\ = (\LCD_user|cnt\(22)) # (\LCD_user|cnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(22),
	datad => \LCD_user|cnt\(21),
	combout => \LCD_user|Equal3~5_combout\);

-- Location: LCCOMB_X38_Y28_N0
\LCD_user|Equal3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal3~7_combout\ = (\LCD_user|cnt\(19)) # ((\LCD_user|Equal3~6_combout\) # ((\LCD_user|cnt\(20)) # (\LCD_user|Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(19),
	datab => \LCD_user|Equal3~6_combout\,
	datac => \LCD_user|cnt\(20),
	datad => \LCD_user|Equal3~5_combout\,
	combout => \LCD_user|Equal3~7_combout\);

-- Location: LCFF_X37_Y29_N21
\LCD_user|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~16_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(11));

-- Location: LCCOMB_X37_Y29_N2
\LCD_user|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal3~2_combout\ = (\LCD_user|cnt\(13)) # ((\LCD_user|cnt\(14)) # ((\LCD_user|cnt\(11)) # (\LCD_user|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(13),
	datab => \LCD_user|cnt\(14),
	datac => \LCD_user|cnt\(11),
	datad => \LCD_user|cnt\(12),
	combout => \LCD_user|Equal3~2_combout\);

-- Location: LCFF_X37_Y29_N11
\LCD_user|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~6_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(6));

-- Location: LCCOMB_X38_Y28_N22
\LCD_user|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|cnt~0_combout\ = (\LCD_user|Add9~4_combout\ & \LCD_user|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_user|Add9~4_combout\,
	datad => \LCD_user|Equal3~9_combout\,
	combout => \LCD_user|cnt~0_combout\);

-- Location: LCFF_X38_Y28_N23
\LCD_user|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|cnt~0_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(5));

-- Location: LCCOMB_X38_Y28_N24
\LCD_user|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal3~0_combout\ = ((\LCD_user|cnt\(6)) # ((\LCD_user|cnt\(5)) # (!\LCD_user|cnt\(3)))) # (!\LCD_user|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(4),
	datab => \LCD_user|cnt\(6),
	datac => \LCD_user|cnt\(3),
	datad => \LCD_user|cnt\(5),
	combout => \LCD_user|Equal3~0_combout\);

-- Location: LCCOMB_X38_Y28_N26
\LCD_user|Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal3~3_combout\ = (\LCD_user|cnt\(17)) # ((\LCD_user|cnt\(18)) # ((\LCD_user|cnt\(16)) # (\LCD_user|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(17),
	datab => \LCD_user|cnt\(18),
	datac => \LCD_user|cnt\(16),
	datad => \LCD_user|cnt\(15),
	combout => \LCD_user|Equal3~3_combout\);

-- Location: LCCOMB_X38_Y28_N20
\LCD_user|Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal3~4_combout\ = (\LCD_user|Equal3~1_combout\) # ((\LCD_user|Equal3~2_combout\) # ((\LCD_user|Equal3~0_combout\) # (\LCD_user|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Equal3~1_combout\,
	datab => \LCD_user|Equal3~2_combout\,
	datac => \LCD_user|Equal3~0_combout\,
	datad => \LCD_user|Equal3~3_combout\,
	combout => \LCD_user|Equal3~4_combout\);

-- Location: LCCOMB_X37_Y28_N20
\LCD_user|Add9~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~48_combout\ = (\LCD_user|cnt\(27) & (\LCD_user|Add9~47\ $ (GND))) # (!\LCD_user|cnt\(27) & (!\LCD_user|Add9~47\ & VCC))
-- \LCD_user|Add9~49\ = CARRY((\LCD_user|cnt\(27) & !\LCD_user|Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(27),
	datad => VCC,
	cin => \LCD_user|Add9~47\,
	combout => \LCD_user|Add9~48_combout\,
	cout => \LCD_user|Add9~49\);

-- Location: LCCOMB_X37_Y28_N22
\LCD_user|Add9~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~50_combout\ = (\LCD_user|cnt\(28) & (!\LCD_user|Add9~49\)) # (!\LCD_user|cnt\(28) & ((\LCD_user|Add9~49\) # (GND)))
-- \LCD_user|Add9~51\ = CARRY((!\LCD_user|Add9~49\) # (!\LCD_user|cnt\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|cnt\(28),
	datad => VCC,
	cin => \LCD_user|Add9~49\,
	combout => \LCD_user|Add9~50_combout\,
	cout => \LCD_user|Add9~51\);

-- Location: LCFF_X37_Y28_N23
\LCD_user|cnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~50_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(28));

-- Location: LCCOMB_X37_Y28_N24
\LCD_user|Add9~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add9~52_combout\ = (\LCD_user|cnt\(29) & (\LCD_user|Add9~51\ $ (GND))) # (!\LCD_user|cnt\(29) & (!\LCD_user|Add9~51\ & VCC))
-- \LCD_user|Add9~53\ = CARRY((\LCD_user|cnt\(29) & !\LCD_user|Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(29),
	datad => VCC,
	cin => \LCD_user|Add9~51\,
	combout => \LCD_user|Add9~52_combout\,
	cout => \LCD_user|Add9~53\);

-- Location: LCFF_X37_Y28_N25
\LCD_user|cnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~52_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(29));

-- Location: LCFF_X37_Y28_N21
\LCD_user|cnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~48_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(27));

-- Location: LCFF_X37_Y28_N27
\LCD_user|cnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~54_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(30));

-- Location: LCCOMB_X38_Y28_N2
\LCD_user|Equal3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal3~8_combout\ = (\LCD_user|cnt\(28)) # ((\LCD_user|cnt\(29)) # ((\LCD_user|cnt\(27)) # (\LCD_user|cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(28),
	datab => \LCD_user|cnt\(29),
	datac => \LCD_user|cnt\(27),
	datad => \LCD_user|cnt\(30),
	combout => \LCD_user|Equal3~8_combout\);

-- Location: LCCOMB_X38_Y28_N12
\LCD_user|Equal3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal3~9_combout\ = (\LCD_user|cnt\(31)) # ((\LCD_user|Equal3~7_combout\) # ((\LCD_user|Equal3~4_combout\) # (\LCD_user|Equal3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(31),
	datab => \LCD_user|Equal3~7_combout\,
	datac => \LCD_user|Equal3~4_combout\,
	datad => \LCD_user|Equal3~8_combout\,
	combout => \LCD_user|Equal3~9_combout\);

-- Location: LCCOMB_X44_Y30_N4
\LCD_user|change~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~21_combout\ = (\LCD_user|change~20_combout\ & ((\LCD_user|send_flag\(0)) # (\LCD_user|Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|send_flag\(0),
	datab => \LCD_user|change~20_combout\,
	datac => \LCD_user|Equal3~9_combout\,
	combout => \LCD_user|change~21_combout\);

-- Location: LCFF_X44_Y30_N5
\LCD_user|change\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|change~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|change~regout\);

-- Location: LCCOMB_X41_Y35_N14
\LCD_user|change~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|change~20_combout\ = (\LCD_user|change~4_combout\) # ((\LCD_user|change~19_combout\) # ((\LCD_user|change~9_combout\) # (\LCD_user|change~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|change~4_combout\,
	datab => \LCD_user|change~19_combout\,
	datac => \LCD_user|change~9_combout\,
	datad => \LCD_user|change~regout\,
	combout => \LCD_user|change~20_combout\);

-- Location: LCCOMB_X45_Y30_N2
\LCD_user|div_freq_lcd[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[1]~33_combout\ = (\LCD_user|div_freq_lcd~31_combout\ & (\LCD_user|div_freq_lcd~32_combout\ $ (VCC))) # (!\LCD_user|div_freq_lcd~31_combout\ & (\LCD_user|div_freq_lcd~32_combout\ & VCC))
-- \LCD_user|div_freq_lcd[1]~34\ = CARRY((\LCD_user|div_freq_lcd~31_combout\ & \LCD_user|div_freq_lcd~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~31_combout\,
	datab => \LCD_user|div_freq_lcd~32_combout\,
	datad => VCC,
	combout => \LCD_user|div_freq_lcd[1]~33_combout\,
	cout => \LCD_user|div_freq_lcd[1]~34\);

-- Location: LCFF_X45_Y30_N3
\LCD_user|div_freq_lcd[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[1]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(1));

-- Location: LCCOMB_X44_Y30_N18
\LCD_user|div_freq_lcd~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd~32_combout\ = (\LCD_user|div_freq_lcd\(1) & ((\LCD_user|send_flag\(0) & (!\LCD_user|LessThan8~9_combout\)) # (!\LCD_user|send_flag\(0) & ((!\LCD_user|change~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|send_flag\(0),
	datab => \LCD_user|LessThan8~9_combout\,
	datac => \LCD_user|change~20_combout\,
	datad => \LCD_user|div_freq_lcd\(1),
	combout => \LCD_user|div_freq_lcd~32_combout\);

-- Location: LCCOMB_X45_Y30_N4
\LCD_user|div_freq_lcd[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[2]~35_combout\ = (\LCD_user|div_freq_lcd[1]~34\ & ((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd\(2))))) # (!\LCD_user|div_freq_lcd[1]~34\ & (((!\LCD_user|div_freq_lcd~30_combout\ & \LCD_user|div_freq_lcd\(2))) # 
-- (GND)))
-- \LCD_user|div_freq_lcd[2]~36\ = CARRY((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd[1]~34\) # (!\LCD_user|div_freq_lcd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(2),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[1]~34\,
	combout => \LCD_user|div_freq_lcd[2]~35_combout\,
	cout => \LCD_user|div_freq_lcd[2]~36\);

-- Location: LCFF_X45_Y30_N5
\LCD_user|div_freq_lcd[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(2));

-- Location: LCCOMB_X45_Y30_N8
\LCD_user|div_freq_lcd[4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[4]~39_combout\ = (\LCD_user|div_freq_lcd[3]~38\ & ((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd\(4))))) # (!\LCD_user|div_freq_lcd[3]~38\ & (((!\LCD_user|div_freq_lcd~30_combout\ & \LCD_user|div_freq_lcd\(4))) # 
-- (GND)))
-- \LCD_user|div_freq_lcd[4]~40\ = CARRY((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd[3]~38\) # (!\LCD_user|div_freq_lcd\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(4),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[3]~38\,
	combout => \LCD_user|div_freq_lcd[4]~39_combout\,
	cout => \LCD_user|div_freq_lcd[4]~40\);

-- Location: LCFF_X45_Y30_N9
\LCD_user|div_freq_lcd[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(4));

-- Location: LCCOMB_X45_Y30_N12
\LCD_user|div_freq_lcd[6]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[6]~43_combout\ = (\LCD_user|div_freq_lcd[5]~42\ & ((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd\(6))))) # (!\LCD_user|div_freq_lcd[5]~42\ & (((!\LCD_user|div_freq_lcd~30_combout\ & \LCD_user|div_freq_lcd\(6))) # 
-- (GND)))
-- \LCD_user|div_freq_lcd[6]~44\ = CARRY((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd[5]~42\) # (!\LCD_user|div_freq_lcd\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(6),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[5]~42\,
	combout => \LCD_user|div_freq_lcd[6]~43_combout\,
	cout => \LCD_user|div_freq_lcd[6]~44\);

-- Location: LCFF_X45_Y30_N13
\LCD_user|div_freq_lcd[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[6]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(6));

-- Location: LCCOMB_X45_Y30_N14
\LCD_user|div_freq_lcd[7]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[7]~45_combout\ = (\LCD_user|div_freq_lcd[6]~44\ & (!\LCD_user|div_freq_lcd~30_combout\ & (\LCD_user|div_freq_lcd\(7) & VCC))) # (!\LCD_user|div_freq_lcd[6]~44\ & ((((!\LCD_user|div_freq_lcd~30_combout\ & 
-- \LCD_user|div_freq_lcd\(7))))))
-- \LCD_user|div_freq_lcd[7]~46\ = CARRY((!\LCD_user|div_freq_lcd~30_combout\ & (\LCD_user|div_freq_lcd\(7) & !\LCD_user|div_freq_lcd[6]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(7),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[6]~44\,
	combout => \LCD_user|div_freq_lcd[7]~45_combout\,
	cout => \LCD_user|div_freq_lcd[7]~46\);

-- Location: LCFF_X45_Y30_N15
\LCD_user|div_freq_lcd[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(7));

-- Location: LCCOMB_X45_Y30_N16
\LCD_user|div_freq_lcd[8]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[8]~47_combout\ = (\LCD_user|div_freq_lcd[7]~46\ & ((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd\(8))))) # (!\LCD_user|div_freq_lcd[7]~46\ & (((!\LCD_user|div_freq_lcd~30_combout\ & \LCD_user|div_freq_lcd\(8))) # 
-- (GND)))
-- \LCD_user|div_freq_lcd[8]~48\ = CARRY((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd[7]~46\) # (!\LCD_user|div_freq_lcd\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(8),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[7]~46\,
	combout => \LCD_user|div_freq_lcd[8]~47_combout\,
	cout => \LCD_user|div_freq_lcd[8]~48\);

-- Location: LCFF_X45_Y30_N17
\LCD_user|div_freq_lcd[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(8));

-- Location: LCCOMB_X45_Y30_N18
\LCD_user|div_freq_lcd[9]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[9]~49_combout\ = (\LCD_user|div_freq_lcd[8]~48\ & (\LCD_user|div_freq_lcd\(9) & (!\LCD_user|div_freq_lcd~30_combout\ & VCC))) # (!\LCD_user|div_freq_lcd[8]~48\ & ((((\LCD_user|div_freq_lcd\(9) & 
-- !\LCD_user|div_freq_lcd~30_combout\)))))
-- \LCD_user|div_freq_lcd[9]~50\ = CARRY((\LCD_user|div_freq_lcd\(9) & (!\LCD_user|div_freq_lcd~30_combout\ & !\LCD_user|div_freq_lcd[8]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(9),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[8]~48\,
	combout => \LCD_user|div_freq_lcd[9]~49_combout\,
	cout => \LCD_user|div_freq_lcd[9]~50\);

-- Location: LCCOMB_X45_Y30_N20
\LCD_user|div_freq_lcd[10]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[10]~51_combout\ = (\LCD_user|div_freq_lcd[9]~50\ & (((\LCD_user|div_freq_lcd~30_combout\)) # (!\LCD_user|div_freq_lcd\(10)))) # (!\LCD_user|div_freq_lcd[9]~50\ & (((\LCD_user|div_freq_lcd\(10) & !\LCD_user|div_freq_lcd~30_combout\)) 
-- # (GND)))
-- \LCD_user|div_freq_lcd[10]~52\ = CARRY(((\LCD_user|div_freq_lcd~30_combout\) # (!\LCD_user|div_freq_lcd[9]~50\)) # (!\LCD_user|div_freq_lcd\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(10),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[9]~50\,
	combout => \LCD_user|div_freq_lcd[10]~51_combout\,
	cout => \LCD_user|div_freq_lcd[10]~52\);

-- Location: LCCOMB_X45_Y30_N22
\LCD_user|div_freq_lcd[11]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[11]~53_combout\ = (\LCD_user|div_freq_lcd[10]~52\ & (\LCD_user|div_freq_lcd\(11) & (!\LCD_user|div_freq_lcd~30_combout\ & VCC))) # (!\LCD_user|div_freq_lcd[10]~52\ & ((((\LCD_user|div_freq_lcd\(11) & 
-- !\LCD_user|div_freq_lcd~30_combout\)))))
-- \LCD_user|div_freq_lcd[11]~54\ = CARRY((\LCD_user|div_freq_lcd\(11) & (!\LCD_user|div_freq_lcd~30_combout\ & !\LCD_user|div_freq_lcd[10]~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(11),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[10]~52\,
	combout => \LCD_user|div_freq_lcd[11]~53_combout\,
	cout => \LCD_user|div_freq_lcd[11]~54\);

-- Location: LCCOMB_X45_Y30_N28
\LCD_user|div_freq_lcd[14]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[14]~59_combout\ = (\LCD_user|div_freq_lcd[13]~58\ & ((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd\(14))))) # (!\LCD_user|div_freq_lcd[13]~58\ & (((!\LCD_user|div_freq_lcd~30_combout\ & 
-- \LCD_user|div_freq_lcd\(14))) # (GND)))
-- \LCD_user|div_freq_lcd[14]~60\ = CARRY((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd[13]~58\) # (!\LCD_user|div_freq_lcd\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(14),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[13]~58\,
	combout => \LCD_user|div_freq_lcd[14]~59_combout\,
	cout => \LCD_user|div_freq_lcd[14]~60\);

-- Location: LCFF_X45_Y30_N29
\LCD_user|div_freq_lcd[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[14]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(14));

-- Location: LCCOMB_X45_Y30_N30
\LCD_user|div_freq_lcd[15]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[15]~61_combout\ = (\LCD_user|div_freq_lcd[14]~60\ & (!\LCD_user|div_freq_lcd~30_combout\ & (\LCD_user|div_freq_lcd\(15) & VCC))) # (!\LCD_user|div_freq_lcd[14]~60\ & ((((!\LCD_user|div_freq_lcd~30_combout\ & 
-- \LCD_user|div_freq_lcd\(15))))))
-- \LCD_user|div_freq_lcd[15]~62\ = CARRY((!\LCD_user|div_freq_lcd~30_combout\ & (\LCD_user|div_freq_lcd\(15) & !\LCD_user|div_freq_lcd[14]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(15),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[14]~60\,
	combout => \LCD_user|div_freq_lcd[15]~61_combout\,
	cout => \LCD_user|div_freq_lcd[15]~62\);

-- Location: LCFF_X45_Y30_N31
\LCD_user|div_freq_lcd[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[15]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(15));

-- Location: LCCOMB_X45_Y29_N0
\LCD_user|div_freq_lcd[16]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[16]~63_combout\ = (\LCD_user|div_freq_lcd[15]~62\ & ((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd\(16))))) # (!\LCD_user|div_freq_lcd[15]~62\ & (((!\LCD_user|div_freq_lcd~30_combout\ & 
-- \LCD_user|div_freq_lcd\(16))) # (GND)))
-- \LCD_user|div_freq_lcd[16]~64\ = CARRY((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd[15]~62\) # (!\LCD_user|div_freq_lcd\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(16),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[15]~62\,
	combout => \LCD_user|div_freq_lcd[16]~63_combout\,
	cout => \LCD_user|div_freq_lcd[16]~64\);

-- Location: LCFF_X45_Y29_N1
\LCD_user|div_freq_lcd[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[16]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(16));

-- Location: LCCOMB_X45_Y29_N2
\LCD_user|div_freq_lcd[17]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[17]~65_combout\ = (\LCD_user|div_freq_lcd[16]~64\ & (!\LCD_user|div_freq_lcd~30_combout\ & (\LCD_user|div_freq_lcd\(17) & VCC))) # (!\LCD_user|div_freq_lcd[16]~64\ & ((((!\LCD_user|div_freq_lcd~30_combout\ & 
-- \LCD_user|div_freq_lcd\(17))))))
-- \LCD_user|div_freq_lcd[17]~66\ = CARRY((!\LCD_user|div_freq_lcd~30_combout\ & (\LCD_user|div_freq_lcd\(17) & !\LCD_user|div_freq_lcd[16]~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(17),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[16]~64\,
	combout => \LCD_user|div_freq_lcd[17]~65_combout\,
	cout => \LCD_user|div_freq_lcd[17]~66\);

-- Location: LCFF_X45_Y29_N3
\LCD_user|div_freq_lcd[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[17]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(17));

-- Location: LCCOMB_X45_Y29_N4
\LCD_user|div_freq_lcd[18]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[18]~67_combout\ = (\LCD_user|div_freq_lcd[17]~66\ & ((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd\(18))))) # (!\LCD_user|div_freq_lcd[17]~66\ & (((!\LCD_user|div_freq_lcd~30_combout\ & 
-- \LCD_user|div_freq_lcd\(18))) # (GND)))
-- \LCD_user|div_freq_lcd[18]~68\ = CARRY((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd[17]~66\) # (!\LCD_user|div_freq_lcd\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(18),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[17]~66\,
	combout => \LCD_user|div_freq_lcd[18]~67_combout\,
	cout => \LCD_user|div_freq_lcd[18]~68\);

-- Location: LCFF_X45_Y29_N5
\LCD_user|div_freq_lcd[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[18]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(18));

-- Location: LCCOMB_X45_Y29_N8
\LCD_user|div_freq_lcd[20]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[20]~71_combout\ = (\LCD_user|div_freq_lcd[19]~70\ & ((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd\(20))))) # (!\LCD_user|div_freq_lcd[19]~70\ & (((!\LCD_user|div_freq_lcd~30_combout\ & 
-- \LCD_user|div_freq_lcd\(20))) # (GND)))
-- \LCD_user|div_freq_lcd[20]~72\ = CARRY((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd[19]~70\) # (!\LCD_user|div_freq_lcd\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(20),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[19]~70\,
	combout => \LCD_user|div_freq_lcd[20]~71_combout\,
	cout => \LCD_user|div_freq_lcd[20]~72\);

-- Location: LCFF_X45_Y29_N9
\LCD_user|div_freq_lcd[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[20]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(20));

-- Location: LCCOMB_X45_Y29_N10
\LCD_user|div_freq_lcd[21]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[21]~73_combout\ = (\LCD_user|div_freq_lcd[20]~72\ & (!\LCD_user|div_freq_lcd~30_combout\ & (\LCD_user|div_freq_lcd\(21) & VCC))) # (!\LCD_user|div_freq_lcd[20]~72\ & ((((!\LCD_user|div_freq_lcd~30_combout\ & 
-- \LCD_user|div_freq_lcd\(21))))))
-- \LCD_user|div_freq_lcd[21]~74\ = CARRY((!\LCD_user|div_freq_lcd~30_combout\ & (\LCD_user|div_freq_lcd\(21) & !\LCD_user|div_freq_lcd[20]~72\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(21),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[20]~72\,
	combout => \LCD_user|div_freq_lcd[21]~73_combout\,
	cout => \LCD_user|div_freq_lcd[21]~74\);

-- Location: LCFF_X45_Y29_N11
\LCD_user|div_freq_lcd[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[21]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(21));

-- Location: LCCOMB_X45_Y29_N12
\LCD_user|div_freq_lcd[22]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[22]~75_combout\ = (\LCD_user|div_freq_lcd[21]~74\ & ((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd\(22))))) # (!\LCD_user|div_freq_lcd[21]~74\ & (((!\LCD_user|div_freq_lcd~30_combout\ & 
-- \LCD_user|div_freq_lcd\(22))) # (GND)))
-- \LCD_user|div_freq_lcd[22]~76\ = CARRY((\LCD_user|div_freq_lcd~30_combout\) # ((!\LCD_user|div_freq_lcd[21]~74\) # (!\LCD_user|div_freq_lcd\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(22),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[21]~74\,
	combout => \LCD_user|div_freq_lcd[22]~75_combout\,
	cout => \LCD_user|div_freq_lcd[22]~76\);

-- Location: LCFF_X45_Y29_N13
\LCD_user|div_freq_lcd[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[22]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(22));

-- Location: LCCOMB_X45_Y29_N14
\LCD_user|div_freq_lcd[23]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[23]~77_combout\ = (\LCD_user|div_freq_lcd[22]~76\ & (\LCD_user|div_freq_lcd\(23) & (!\LCD_user|div_freq_lcd~30_combout\ & VCC))) # (!\LCD_user|div_freq_lcd[22]~76\ & ((((\LCD_user|div_freq_lcd\(23) & 
-- !\LCD_user|div_freq_lcd~30_combout\)))))
-- \LCD_user|div_freq_lcd[23]~78\ = CARRY((\LCD_user|div_freq_lcd\(23) & (!\LCD_user|div_freq_lcd~30_combout\ & !\LCD_user|div_freq_lcd[22]~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(23),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[22]~76\,
	combout => \LCD_user|div_freq_lcd[23]~77_combout\,
	cout => \LCD_user|div_freq_lcd[23]~78\);

-- Location: LCFF_X45_Y29_N15
\LCD_user|div_freq_lcd[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[23]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(23));

-- Location: LCCOMB_X44_Y29_N0
\LCD_user|LessThan8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan8~6_combout\ = (\LCD_user|div_freq_lcd\(21)) # ((\LCD_user|div_freq_lcd\(22)) # ((\LCD_user|div_freq_lcd\(20)) # (\LCD_user|div_freq_lcd\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(21),
	datab => \LCD_user|div_freq_lcd\(22),
	datac => \LCD_user|div_freq_lcd\(20),
	datad => \LCD_user|div_freq_lcd\(23),
	combout => \LCD_user|LessThan8~6_combout\);

-- Location: LCCOMB_X45_Y29_N30
\LCD_user|LessThan8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan8~5_combout\ = (\LCD_user|div_freq_lcd\(19)) # ((\LCD_user|div_freq_lcd\(17)) # ((\LCD_user|div_freq_lcd\(18)) # (\LCD_user|div_freq_lcd\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(19),
	datab => \LCD_user|div_freq_lcd\(17),
	datac => \LCD_user|div_freq_lcd\(18),
	datad => \LCD_user|div_freq_lcd\(16),
	combout => \LCD_user|LessThan8~5_combout\);

-- Location: LCCOMB_X45_Y29_N18
\LCD_user|div_freq_lcd[25]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[25]~81_combout\ = (\LCD_user|div_freq_lcd[24]~80\ & (\LCD_user|div_freq_lcd\(25) & (!\LCD_user|div_freq_lcd~30_combout\ & VCC))) # (!\LCD_user|div_freq_lcd[24]~80\ & ((((\LCD_user|div_freq_lcd\(25) & 
-- !\LCD_user|div_freq_lcd~30_combout\)))))
-- \LCD_user|div_freq_lcd[25]~82\ = CARRY((\LCD_user|div_freq_lcd\(25) & (!\LCD_user|div_freq_lcd~30_combout\ & !\LCD_user|div_freq_lcd[24]~80\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(25),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[24]~80\,
	combout => \LCD_user|div_freq_lcd[25]~81_combout\,
	cout => \LCD_user|div_freq_lcd[25]~82\);

-- Location: LCCOMB_X45_Y29_N20
\LCD_user|div_freq_lcd[26]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[26]~83_combout\ = (\LCD_user|div_freq_lcd[25]~82\ & (((\LCD_user|div_freq_lcd~30_combout\)) # (!\LCD_user|div_freq_lcd\(26)))) # (!\LCD_user|div_freq_lcd[25]~82\ & (((\LCD_user|div_freq_lcd\(26) & 
-- !\LCD_user|div_freq_lcd~30_combout\)) # (GND)))
-- \LCD_user|div_freq_lcd[26]~84\ = CARRY(((\LCD_user|div_freq_lcd~30_combout\) # (!\LCD_user|div_freq_lcd[25]~82\)) # (!\LCD_user|div_freq_lcd\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(26),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[25]~82\,
	combout => \LCD_user|div_freq_lcd[26]~83_combout\,
	cout => \LCD_user|div_freq_lcd[26]~84\);

-- Location: LCFF_X45_Y29_N21
\LCD_user|div_freq_lcd[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[26]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(26));

-- Location: LCFF_X45_Y29_N19
\LCD_user|div_freq_lcd[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(25));

-- Location: LCCOMB_X45_Y29_N22
\LCD_user|div_freq_lcd[27]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[27]~85_combout\ = (\LCD_user|div_freq_lcd[26]~84\ & (!\LCD_user|div_freq_lcd~30_combout\ & (\LCD_user|div_freq_lcd\(27) & VCC))) # (!\LCD_user|div_freq_lcd[26]~84\ & ((((!\LCD_user|div_freq_lcd~30_combout\ & 
-- \LCD_user|div_freq_lcd\(27))))))
-- \LCD_user|div_freq_lcd[27]~86\ = CARRY((!\LCD_user|div_freq_lcd~30_combout\ & (\LCD_user|div_freq_lcd\(27) & !\LCD_user|div_freq_lcd[26]~84\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datab => \LCD_user|div_freq_lcd\(27),
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[26]~84\,
	combout => \LCD_user|div_freq_lcd[27]~85_combout\,
	cout => \LCD_user|div_freq_lcd[27]~86\);

-- Location: LCFF_X45_Y29_N23
\LCD_user|div_freq_lcd[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[27]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(27));

-- Location: LCCOMB_X44_Y30_N6
\LCD_user|LessThan8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan8~7_combout\ = (\LCD_user|div_freq_lcd\(24)) # ((\LCD_user|div_freq_lcd\(26)) # ((\LCD_user|div_freq_lcd\(25)) # (\LCD_user|div_freq_lcd\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(24),
	datab => \LCD_user|div_freq_lcd\(26),
	datac => \LCD_user|div_freq_lcd\(25),
	datad => \LCD_user|div_freq_lcd\(27),
	combout => \LCD_user|LessThan8~7_combout\);

-- Location: LCCOMB_X44_Y30_N24
\LCD_user|LessThan8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan8~8_combout\ = (\LCD_user|LessThan8~4_combout\) # ((\LCD_user|LessThan8~6_combout\) # ((\LCD_user|LessThan8~5_combout\) # (\LCD_user|LessThan8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|LessThan8~4_combout\,
	datab => \LCD_user|LessThan8~6_combout\,
	datac => \LCD_user|LessThan8~5_combout\,
	datad => \LCD_user|LessThan8~7_combout\,
	combout => \LCD_user|LessThan8~8_combout\);

-- Location: LCFF_X45_Y30_N23
\LCD_user|div_freq_lcd[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[11]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(11));

-- Location: LCFF_X45_Y30_N21
\LCD_user|div_freq_lcd[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[10]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(10));

-- Location: LCFF_X45_Y30_N19
\LCD_user|div_freq_lcd[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[9]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(9));

-- Location: LCCOMB_X46_Y30_N22
\LCD_user|LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan8~2_combout\ = (\LCD_user|div_freq_lcd\(11) & ((\LCD_user|LessThan8~1_combout\) # ((\LCD_user|div_freq_lcd\(10)) # (\LCD_user|div_freq_lcd\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|LessThan8~1_combout\,
	datab => \LCD_user|div_freq_lcd\(11),
	datac => \LCD_user|div_freq_lcd\(10),
	datad => \LCD_user|div_freq_lcd\(9),
	combout => \LCD_user|LessThan8~2_combout\);

-- Location: LCCOMB_X44_Y30_N26
\LCD_user|LessThan8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan8~9_combout\ = (\LCD_user|LessThan8~3_combout\) # ((\LCD_user|LessThan8~8_combout\) # (\LCD_user|LessThan8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|LessThan8~3_combout\,
	datac => \LCD_user|LessThan8~8_combout\,
	datad => \LCD_user|LessThan8~2_combout\,
	combout => \LCD_user|LessThan8~9_combout\);

-- Location: LCCOMB_X44_Y30_N12
\LCD_user|div_freq_lcd~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd~30_combout\ = (\LCD_user|send_flag\(0) & (\LCD_user|LessThan8~9_combout\)) # (!\LCD_user|send_flag\(0) & ((\LCD_user|change~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|send_flag\(0),
	datab => \LCD_user|LessThan8~9_combout\,
	datac => \LCD_user|change~20_combout\,
	combout => \LCD_user|div_freq_lcd~30_combout\);

-- Location: LCCOMB_X45_Y29_N24
\LCD_user|div_freq_lcd[28]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[28]~87_combout\ = (\LCD_user|div_freq_lcd[27]~86\ & (((\LCD_user|div_freq_lcd~30_combout\)) # (!\LCD_user|div_freq_lcd\(28)))) # (!\LCD_user|div_freq_lcd[27]~86\ & (((\LCD_user|div_freq_lcd\(28) & 
-- !\LCD_user|div_freq_lcd~30_combout\)) # (GND)))
-- \LCD_user|div_freq_lcd[28]~88\ = CARRY(((\LCD_user|div_freq_lcd~30_combout\) # (!\LCD_user|div_freq_lcd[27]~86\)) # (!\LCD_user|div_freq_lcd\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(28),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[27]~86\,
	combout => \LCD_user|div_freq_lcd[28]~87_combout\,
	cout => \LCD_user|div_freq_lcd[28]~88\);

-- Location: LCCOMB_X45_Y29_N26
\LCD_user|div_freq_lcd[29]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[29]~89_combout\ = (\LCD_user|div_freq_lcd[28]~88\ & (\LCD_user|div_freq_lcd\(29) & (!\LCD_user|div_freq_lcd~30_combout\ & VCC))) # (!\LCD_user|div_freq_lcd[28]~88\ & ((((\LCD_user|div_freq_lcd\(29) & 
-- !\LCD_user|div_freq_lcd~30_combout\)))))
-- \LCD_user|div_freq_lcd[29]~90\ = CARRY((\LCD_user|div_freq_lcd\(29) & (!\LCD_user|div_freq_lcd~30_combout\ & !\LCD_user|div_freq_lcd[28]~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd\(29),
	datab => \LCD_user|div_freq_lcd~30_combout\,
	datad => VCC,
	cin => \LCD_user|div_freq_lcd[28]~88\,
	combout => \LCD_user|div_freq_lcd[29]~89_combout\,
	cout => \LCD_user|div_freq_lcd[29]~90\);

-- Location: LCCOMB_X45_Y29_N28
\LCD_user|div_freq_lcd[30]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|div_freq_lcd[30]~91_combout\ = \LCD_user|div_freq_lcd[29]~90\ $ (((!\LCD_user|div_freq_lcd~30_combout\ & \LCD_user|div_freq_lcd\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|div_freq_lcd~30_combout\,
	datad => \LCD_user|div_freq_lcd\(30),
	cin => \LCD_user|div_freq_lcd[29]~90\,
	combout => \LCD_user|div_freq_lcd[30]~91_combout\);

-- Location: LCFF_X45_Y29_N29
\LCD_user|div_freq_lcd[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[30]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(30));

-- Location: LCFF_X45_Y29_N27
\LCD_user|div_freq_lcd[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[29]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(29));

-- Location: LCFF_X45_Y29_N25
\LCD_user|div_freq_lcd[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|div_freq_lcd[28]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|div_freq_lcd\(28));

-- Location: LCCOMB_X44_Y30_N2
\LCD_user|LessThan8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan8~3_combout\ = (\LCD_user|div_freq_lcd\(30)) # ((\LCD_user|div_freq_lcd\(29)) # (\LCD_user|div_freq_lcd\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|div_freq_lcd\(30),
	datac => \LCD_user|div_freq_lcd\(29),
	datad => \LCD_user|div_freq_lcd\(28),
	combout => \LCD_user|LessThan8~3_combout\);

-- Location: LCCOMB_X44_Y30_N22
\LCD_user|process_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|process_1~5_combout\ = ((!\LCD_user|LessThan8~3_combout\ & (!\LCD_user|LessThan8~8_combout\ & !\LCD_user|LessThan8~2_combout\))) # (!\LCD_user|send_flag\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|send_flag\(0),
	datab => \LCD_user|LessThan8~3_combout\,
	datac => \LCD_user|LessThan8~8_combout\,
	datad => \LCD_user|LessThan8~2_combout\,
	combout => \LCD_user|process_1~5_combout\);

-- Location: LCCOMB_X40_Y32_N2
\LCD_user|j[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[1]~34_combout\ = (\LCD_user|process_1~2_combout\ & (((!\LCD_user|j[0]~33\)))) # (!\LCD_user|process_1~2_combout\ & ((\LCD_user|j\(1) & (!\LCD_user|j[0]~33\)) # (!\LCD_user|j\(1) & ((\LCD_user|j[0]~33\) # (GND)))))
-- \LCD_user|j[1]~35\ = CARRY(((!\LCD_user|process_1~2_combout\ & !\LCD_user|j\(1))) # (!\LCD_user|j[0]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(1),
	datad => VCC,
	cin => \LCD_user|j[0]~33\,
	combout => \LCD_user|j[1]~34_combout\,
	cout => \LCD_user|j[1]~35\);

-- Location: LCFF_X40_Y32_N3
\LCD_user|j[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[1]~34_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(1));

-- Location: LCCOMB_X40_Y32_N4
\LCD_user|j[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[2]~36_combout\ = (\LCD_user|j[1]~35\ & (!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(2) & VCC))) # (!\LCD_user|j[1]~35\ & ((((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(2))))))
-- \LCD_user|j[2]~37\ = CARRY((!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(2) & !\LCD_user|j[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(2),
	datad => VCC,
	cin => \LCD_user|j[1]~35\,
	combout => \LCD_user|j[2]~36_combout\,
	cout => \LCD_user|j[2]~37\);

-- Location: LCFF_X40_Y32_N5
\LCD_user|j[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[2]~36_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(2));

-- Location: LCCOMB_X40_Y32_N6
\LCD_user|j[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[3]~38_combout\ = (\LCD_user|j[2]~37\ & ((\LCD_user|process_1~2_combout\) # ((!\LCD_user|j\(3))))) # (!\LCD_user|j[2]~37\ & (((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(3))) # (GND)))
-- \LCD_user|j[3]~39\ = CARRY((\LCD_user|process_1~2_combout\) # ((!\LCD_user|j[2]~37\) # (!\LCD_user|j\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(3),
	datad => VCC,
	cin => \LCD_user|j[2]~37\,
	combout => \LCD_user|j[3]~38_combout\,
	cout => \LCD_user|j[3]~39\);

-- Location: LCFF_X40_Y32_N7
\LCD_user|j[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[3]~38_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(3));

-- Location: LCCOMB_X40_Y32_N8
\LCD_user|j[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[4]~40_combout\ = (\LCD_user|j[3]~39\ & (!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(4) & VCC))) # (!\LCD_user|j[3]~39\ & ((((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(4))))))
-- \LCD_user|j[4]~41\ = CARRY((!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(4) & !\LCD_user|j[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(4),
	datad => VCC,
	cin => \LCD_user|j[3]~39\,
	combout => \LCD_user|j[4]~40_combout\,
	cout => \LCD_user|j[4]~41\);

-- Location: LCFF_X40_Y32_N9
\LCD_user|j[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[4]~40_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(4));

-- Location: LCCOMB_X40_Y32_N10
\LCD_user|j[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[5]~42_combout\ = (\LCD_user|j[4]~41\ & ((\LCD_user|process_1~2_combout\) # ((!\LCD_user|j\(5))))) # (!\LCD_user|j[4]~41\ & (((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(5))) # (GND)))
-- \LCD_user|j[5]~43\ = CARRY((\LCD_user|process_1~2_combout\) # ((!\LCD_user|j[4]~41\) # (!\LCD_user|j\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(5),
	datad => VCC,
	cin => \LCD_user|j[4]~41\,
	combout => \LCD_user|j[5]~42_combout\,
	cout => \LCD_user|j[5]~43\);

-- Location: LCFF_X40_Y32_N11
\LCD_user|j[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[5]~42_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(5));

-- Location: LCCOMB_X40_Y32_N12
\LCD_user|j[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[6]~44_combout\ = (\LCD_user|j[5]~43\ & (!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(6) & VCC))) # (!\LCD_user|j[5]~43\ & ((((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(6))))))
-- \LCD_user|j[6]~45\ = CARRY((!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(6) & !\LCD_user|j[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(6),
	datad => VCC,
	cin => \LCD_user|j[5]~43\,
	combout => \LCD_user|j[6]~44_combout\,
	cout => \LCD_user|j[6]~45\);

-- Location: LCFF_X40_Y32_N13
\LCD_user|j[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[6]~44_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(6));

-- Location: LCCOMB_X40_Y32_N14
\LCD_user|j[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[7]~46_combout\ = (\LCD_user|j[6]~45\ & ((\LCD_user|process_1~2_combout\) # ((!\LCD_user|j\(7))))) # (!\LCD_user|j[6]~45\ & (((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(7))) # (GND)))
-- \LCD_user|j[7]~47\ = CARRY((\LCD_user|process_1~2_combout\) # ((!\LCD_user|j[6]~45\) # (!\LCD_user|j\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(7),
	datad => VCC,
	cin => \LCD_user|j[6]~45\,
	combout => \LCD_user|j[7]~46_combout\,
	cout => \LCD_user|j[7]~47\);

-- Location: LCFF_X40_Y32_N15
\LCD_user|j[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[7]~46_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(7));

-- Location: LCCOMB_X40_Y32_N16
\LCD_user|j[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[8]~48_combout\ = (\LCD_user|j[7]~47\ & (\LCD_user|j\(8) & (!\LCD_user|process_1~2_combout\ & VCC))) # (!\LCD_user|j[7]~47\ & ((((\LCD_user|j\(8) & !\LCD_user|process_1~2_combout\)))))
-- \LCD_user|j[8]~49\ = CARRY((\LCD_user|j\(8) & (!\LCD_user|process_1~2_combout\ & !\LCD_user|j[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(8),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[7]~47\,
	combout => \LCD_user|j[8]~48_combout\,
	cout => \LCD_user|j[8]~49\);

-- Location: LCCOMB_X40_Y32_N18
\LCD_user|j[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[9]~50_combout\ = (\LCD_user|j[8]~49\ & (((\LCD_user|process_1~2_combout\)) # (!\LCD_user|j\(9)))) # (!\LCD_user|j[8]~49\ & (((\LCD_user|j\(9) & !\LCD_user|process_1~2_combout\)) # (GND)))
-- \LCD_user|j[9]~51\ = CARRY(((\LCD_user|process_1~2_combout\) # (!\LCD_user|j[8]~49\)) # (!\LCD_user|j\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(9),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[8]~49\,
	combout => \LCD_user|j[9]~50_combout\,
	cout => \LCD_user|j[9]~51\);

-- Location: LCCOMB_X40_Y32_N20
\LCD_user|j[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[10]~52_combout\ = (\LCD_user|j[9]~51\ & (\LCD_user|j\(10) & (!\LCD_user|process_1~2_combout\ & VCC))) # (!\LCD_user|j[9]~51\ & ((((\LCD_user|j\(10) & !\LCD_user|process_1~2_combout\)))))
-- \LCD_user|j[10]~53\ = CARRY((\LCD_user|j\(10) & (!\LCD_user|process_1~2_combout\ & !\LCD_user|j[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(10),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[9]~51\,
	combout => \LCD_user|j[10]~52_combout\,
	cout => \LCD_user|j[10]~53\);

-- Location: LCCOMB_X40_Y32_N30
\LCD_user|j[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[15]~62_combout\ = (\LCD_user|j[14]~61\ & (((\LCD_user|process_1~2_combout\)) # (!\LCD_user|j\(15)))) # (!\LCD_user|j[14]~61\ & (((\LCD_user|j\(15) & !\LCD_user|process_1~2_combout\)) # (GND)))
-- \LCD_user|j[15]~63\ = CARRY(((\LCD_user|process_1~2_combout\) # (!\LCD_user|j[14]~61\)) # (!\LCD_user|j\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(15),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[14]~61\,
	combout => \LCD_user|j[15]~62_combout\,
	cout => \LCD_user|j[15]~63\);

-- Location: LCCOMB_X40_Y31_N0
\LCD_user|j[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[16]~64_combout\ = (\LCD_user|j[15]~63\ & (\LCD_user|j\(16) & (!\LCD_user|process_1~2_combout\ & VCC))) # (!\LCD_user|j[15]~63\ & ((((\LCD_user|j\(16) & !\LCD_user|process_1~2_combout\)))))
-- \LCD_user|j[16]~65\ = CARRY((\LCD_user|j\(16) & (!\LCD_user|process_1~2_combout\ & !\LCD_user|j[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(16),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[15]~63\,
	combout => \LCD_user|j[16]~64_combout\,
	cout => \LCD_user|j[16]~65\);

-- Location: LCCOMB_X40_Y31_N4
\LCD_user|j[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[18]~68_combout\ = (\LCD_user|j[17]~67\ & (\LCD_user|j\(18) & (!\LCD_user|process_1~2_combout\ & VCC))) # (!\LCD_user|j[17]~67\ & ((((\LCD_user|j\(18) & !\LCD_user|process_1~2_combout\)))))
-- \LCD_user|j[18]~69\ = CARRY((\LCD_user|j\(18) & (!\LCD_user|process_1~2_combout\ & !\LCD_user|j[17]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(18),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[17]~67\,
	combout => \LCD_user|j[18]~68_combout\,
	cout => \LCD_user|j[18]~69\);

-- Location: LCCOMB_X40_Y31_N6
\LCD_user|j[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[19]~70_combout\ = (\LCD_user|j[18]~69\ & (((\LCD_user|process_1~2_combout\)) # (!\LCD_user|j\(19)))) # (!\LCD_user|j[18]~69\ & (((\LCD_user|j\(19) & !\LCD_user|process_1~2_combout\)) # (GND)))
-- \LCD_user|j[19]~71\ = CARRY(((\LCD_user|process_1~2_combout\) # (!\LCD_user|j[18]~69\)) # (!\LCD_user|j\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(19),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[18]~69\,
	combout => \LCD_user|j[19]~70_combout\,
	cout => \LCD_user|j[19]~71\);

-- Location: LCCOMB_X40_Y31_N8
\LCD_user|j[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[20]~72_combout\ = (\LCD_user|j[19]~71\ & (\LCD_user|j\(20) & (!\LCD_user|process_1~2_combout\ & VCC))) # (!\LCD_user|j[19]~71\ & ((((\LCD_user|j\(20) & !\LCD_user|process_1~2_combout\)))))
-- \LCD_user|j[20]~73\ = CARRY((\LCD_user|j\(20) & (!\LCD_user|process_1~2_combout\ & !\LCD_user|j[19]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(20),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[19]~71\,
	combout => \LCD_user|j[20]~72_combout\,
	cout => \LCD_user|j[20]~73\);

-- Location: LCCOMB_X40_Y31_N10
\LCD_user|j[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[21]~74_combout\ = (\LCD_user|j[20]~73\ & (((\LCD_user|process_1~2_combout\)) # (!\LCD_user|j\(21)))) # (!\LCD_user|j[20]~73\ & (((\LCD_user|j\(21) & !\LCD_user|process_1~2_combout\)) # (GND)))
-- \LCD_user|j[21]~75\ = CARRY(((\LCD_user|process_1~2_combout\) # (!\LCD_user|j[20]~73\)) # (!\LCD_user|j\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(21),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[20]~73\,
	combout => \LCD_user|j[21]~74_combout\,
	cout => \LCD_user|j[21]~75\);

-- Location: LCCOMB_X40_Y31_N14
\LCD_user|j[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[23]~78_combout\ = (\LCD_user|j[22]~77\ & (((\LCD_user|process_1~2_combout\)) # (!\LCD_user|j\(23)))) # (!\LCD_user|j[22]~77\ & (((\LCD_user|j\(23) & !\LCD_user|process_1~2_combout\)) # (GND)))
-- \LCD_user|j[23]~79\ = CARRY(((\LCD_user|process_1~2_combout\) # (!\LCD_user|j[22]~77\)) # (!\LCD_user|j\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(23),
	datab => \LCD_user|process_1~2_combout\,
	datad => VCC,
	cin => \LCD_user|j[22]~77\,
	combout => \LCD_user|j[23]~78_combout\,
	cout => \LCD_user|j[23]~79\);

-- Location: LCFF_X40_Y31_N15
\LCD_user|j[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[23]~78_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(23));

-- Location: LCCOMB_X40_Y31_N16
\LCD_user|j[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[24]~80_combout\ = (\LCD_user|j[23]~79\ & (!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(24) & VCC))) # (!\LCD_user|j[23]~79\ & ((((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(24))))))
-- \LCD_user|j[24]~81\ = CARRY((!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(24) & !\LCD_user|j[23]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(24),
	datad => VCC,
	cin => \LCD_user|j[23]~79\,
	combout => \LCD_user|j[24]~80_combout\,
	cout => \LCD_user|j[24]~81\);

-- Location: LCFF_X40_Y31_N17
\LCD_user|j[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[24]~80_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(24));

-- Location: LCCOMB_X40_Y31_N18
\LCD_user|j[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[25]~82_combout\ = (\LCD_user|j[24]~81\ & ((\LCD_user|process_1~2_combout\) # ((!\LCD_user|j\(25))))) # (!\LCD_user|j[24]~81\ & (((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(25))) # (GND)))
-- \LCD_user|j[25]~83\ = CARRY((\LCD_user|process_1~2_combout\) # ((!\LCD_user|j[24]~81\) # (!\LCD_user|j\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(25),
	datad => VCC,
	cin => \LCD_user|j[24]~81\,
	combout => \LCD_user|j[25]~82_combout\,
	cout => \LCD_user|j[25]~83\);

-- Location: LCFF_X40_Y31_N19
\LCD_user|j[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[25]~82_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(25));

-- Location: LCCOMB_X41_Y31_N26
\LCD_user|Equal5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal5~6_combout\ = (!\LCD_user|j\(26) & (!\LCD_user|j\(23) & (!\LCD_user|j\(25) & !\LCD_user|j\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(26),
	datab => \LCD_user|j\(23),
	datac => \LCD_user|j\(25),
	datad => \LCD_user|j\(24),
	combout => \LCD_user|Equal5~6_combout\);

-- Location: LCCOMB_X41_Y32_N0
\LCD_user|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal5~0_combout\ = (!\LCD_user|j\(5) & (!\LCD_user|j\(4) & (!\LCD_user|j\(3) & !\LCD_user|j\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(5),
	datab => \LCD_user|j\(4),
	datac => \LCD_user|j\(3),
	datad => \LCD_user|j\(6),
	combout => \LCD_user|Equal5~0_combout\);

-- Location: LCFF_X40_Y32_N19
\LCD_user|j[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[9]~50_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(9));

-- Location: LCFF_X40_Y32_N21
\LCD_user|j[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[10]~52_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(10));

-- Location: LCFF_X40_Y32_N17
\LCD_user|j[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[8]~48_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(8));

-- Location: LCCOMB_X41_Y32_N2
\LCD_user|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal5~1_combout\ = (!\LCD_user|j\(7) & (!\LCD_user|j\(9) & (!\LCD_user|j\(10) & !\LCD_user|j\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(7),
	datab => \LCD_user|j\(9),
	datac => \LCD_user|j\(10),
	datad => \LCD_user|j\(8),
	combout => \LCD_user|Equal5~1_combout\);

-- Location: LCFF_X40_Y31_N1
\LCD_user|j[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[16]~64_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(16));

-- Location: LCFF_X40_Y32_N31
\LCD_user|j[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[15]~62_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(15));

-- Location: LCFF_X40_Y31_N5
\LCD_user|j[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[18]~68_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(18));

-- Location: LCCOMB_X41_Y32_N6
\LCD_user|Equal5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal5~3_combout\ = (!\LCD_user|j\(17) & (!\LCD_user|j\(16) & (!\LCD_user|j\(15) & !\LCD_user|j\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(17),
	datab => \LCD_user|j\(16),
	datac => \LCD_user|j\(15),
	datad => \LCD_user|j\(18),
	combout => \LCD_user|Equal5~3_combout\);

-- Location: LCCOMB_X41_Y32_N16
\LCD_user|Equal5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal5~4_combout\ = (\LCD_user|Equal5~2_combout\ & (\LCD_user|Equal5~0_combout\ & (\LCD_user|Equal5~1_combout\ & \LCD_user|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Equal5~2_combout\,
	datab => \LCD_user|Equal5~0_combout\,
	datac => \LCD_user|Equal5~1_combout\,
	datad => \LCD_user|Equal5~3_combout\,
	combout => \LCD_user|Equal5~4_combout\);

-- Location: LCFF_X40_Y31_N9
\LCD_user|j[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[20]~72_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(20));

-- Location: LCFF_X40_Y31_N7
\LCD_user|j[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[19]~70_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(19));

-- Location: LCFF_X40_Y31_N11
\LCD_user|j[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[21]~74_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(21));

-- Location: LCCOMB_X41_Y31_N0
\LCD_user|Equal5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal5~5_combout\ = (!\LCD_user|j\(22) & (!\LCD_user|j\(20) & (!\LCD_user|j\(19) & !\LCD_user|j\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(22),
	datab => \LCD_user|j\(20),
	datac => \LCD_user|j\(19),
	datad => \LCD_user|j\(21),
	combout => \LCD_user|Equal5~5_combout\);

-- Location: LCCOMB_X41_Y31_N30
\LCD_user|Equal5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal5~8_combout\ = (\LCD_user|Equal5~7_combout\ & (\LCD_user|Equal5~6_combout\ & (\LCD_user|Equal5~4_combout\ & \LCD_user|Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Equal5~7_combout\,
	datab => \LCD_user|Equal5~6_combout\,
	datac => \LCD_user|Equal5~4_combout\,
	datad => \LCD_user|Equal5~5_combout\,
	combout => \LCD_user|Equal5~8_combout\);

-- Location: LCCOMB_X41_Y31_N28
\LCD_user|Equal5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal5~9_combout\ = (!\LCD_user|j\(31) & (!\LCD_user|j\(2) & (\LCD_user|j\(0) & \LCD_user|Equal5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(31),
	datab => \LCD_user|j\(2),
	datac => \LCD_user|j\(0),
	datad => \LCD_user|Equal5~8_combout\,
	combout => \LCD_user|Equal5~9_combout\);

-- Location: LCFF_X43_Y31_N19
\LCD_user|bindec[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|bindec~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|bindec\(9));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(5),
	combout => \lcd_data_in~combout\(5));

-- Location: LCCOMB_X37_Y35_N18
\LCD_user|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux13~0_combout\ = (\LCD_user|cnt\(4) & ((\LCD_user|cnt\(3)) # ((\lcd_data_in~combout\(21))))) # (!\LCD_user|cnt\(4) & (!\LCD_user|cnt\(3) & ((\lcd_data_in~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(4),
	datab => \LCD_user|cnt\(3),
	datac => \lcd_data_in~combout\(21),
	datad => \lcd_data_in~combout\(5),
	combout => \LCD_user|Mux13~0_combout\);

-- Location: LCCOMB_X42_Y35_N2
\LCD_user|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux13~1_combout\ = (\LCD_user|Mux13~0_combout\ & ((\lcd_data_in~combout\(29)) # ((!\LCD_user|cnt\(3))))) # (!\LCD_user|Mux13~0_combout\ & (((\lcd_data_in~combout\(13) & \LCD_user|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(29),
	datab => \LCD_user|Mux13~0_combout\,
	datac => \lcd_data_in~combout\(13),
	datad => \LCD_user|cnt\(3),
	combout => \LCD_user|Mux13~1_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(28),
	combout => \lcd_data_in~combout\(28));

-- Location: LCCOMB_X37_Y35_N30
\LCD_user|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux14~1_combout\ = (\LCD_user|Mux14~0_combout\ & (((\lcd_data_in~combout\(28))) # (!\LCD_user|cnt\(3)))) # (!\LCD_user|Mux14~0_combout\ & (\LCD_user|cnt\(3) & ((\lcd_data_in~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Mux14~0_combout\,
	datab => \LCD_user|cnt\(3),
	datac => \lcd_data_in~combout\(28),
	datad => \lcd_data_in~combout\(12),
	combout => \LCD_user|Mux14~1_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(7),
	combout => \lcd_data_in~combout\(7));

-- Location: LCCOMB_X38_Y28_N4
\LCD_user|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux11~0_combout\ = (\LCD_user|cnt\(4) & (\LCD_user|cnt\(3))) # (!\LCD_user|cnt\(4) & ((\LCD_user|cnt\(3) & (!\lcd_data_in~combout\(15))) # (!\LCD_user|cnt\(3) & ((!\lcd_data_in~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|cnt\(4),
	datab => \LCD_user|cnt\(3),
	datac => \lcd_data_in~combout\(15),
	datad => \lcd_data_in~combout\(7),
	combout => \LCD_user|Mux11~0_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(31),
	combout => \lcd_data_in~combout\(31));

-- Location: LCFF_X37_Y29_N7
\LCD_user|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add9~2_combout\,
	ena => \LCD_user|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|cnt\(4));

-- Location: LCCOMB_X42_Y35_N12
\LCD_user|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux11~1_combout\ = (\LCD_user|Mux11~0_combout\ & (((!\LCD_user|cnt\(4)) # (!\lcd_data_in~combout\(31))))) # (!\LCD_user|Mux11~0_combout\ & (!\lcd_data_in~combout\(23) & ((\LCD_user|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(23),
	datab => \LCD_user|Mux11~0_combout\,
	datac => \lcd_data_in~combout\(31),
	datad => \LCD_user|cnt\(4),
	combout => \LCD_user|Mux11~1_combout\);

-- Location: LCCOMB_X42_Y35_N18
\LCD_user|z~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~11_combout\ = (\LCD_user|Mux12~1_combout\ & ((\LCD_user|Mux13~1_combout\ & (!\LCD_user|Mux14~1_combout\ & !\LCD_user|Mux11~1_combout\)) # (!\LCD_user|Mux13~1_combout\ & ((!\LCD_user|Mux11~1_combout\) # (!\LCD_user|Mux14~1_combout\))))) # 
-- (!\LCD_user|Mux12~1_combout\ & ((\LCD_user|Mux13~1_combout\) # ((\LCD_user|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Mux12~1_combout\,
	datab => \LCD_user|Mux13~1_combout\,
	datac => \LCD_user|Mux14~1_combout\,
	datad => \LCD_user|Mux11~1_combout\,
	combout => \LCD_user|z~11_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(6),
	combout => \lcd_data_in~combout\(6));

-- Location: LCCOMB_X41_Y35_N16
\LCD_user|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux12~0_combout\ = (\LCD_user|cnt\(4) & (((\LCD_user|cnt\(3))))) # (!\LCD_user|cnt\(4) & ((\LCD_user|cnt\(3) & (\lcd_data_in~combout\(14))) # (!\LCD_user|cnt\(3) & ((\lcd_data_in~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(14),
	datab => \LCD_user|cnt\(4),
	datac => \LCD_user|cnt\(3),
	datad => \lcd_data_in~combout\(6),
	combout => \LCD_user|Mux12~0_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(30),
	combout => \lcd_data_in~combout\(30));

-- Location: LCCOMB_X42_Y35_N16
\LCD_user|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux12~1_combout\ = (\LCD_user|Mux12~0_combout\ & (((\lcd_data_in~combout\(30)) # (!\LCD_user|cnt\(4))))) # (!\LCD_user|Mux12~0_combout\ & (\lcd_data_in~combout\(22) & ((\LCD_user|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(22),
	datab => \LCD_user|Mux12~0_combout\,
	datac => \lcd_data_in~combout\(30),
	datad => \LCD_user|cnt\(4),
	combout => \LCD_user|Mux12~1_combout\);

-- Location: LCCOMB_X42_Y35_N30
\LCD_user|z~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~9_combout\ = (\LCD_user|Mux13~1_combout\) # (\LCD_user|Mux12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|Mux13~1_combout\,
	datac => \LCD_user|Mux12~1_combout\,
	combout => \LCD_user|z~9_combout\);

-- Location: LCCOMB_X43_Y31_N24
\LCD_user|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan5~0_combout\ = (\LCD_user|z~9_combout\ & (!\LCD_user|Mux11~1_combout\ & ((!\LCD_user|z~11_combout\) # (!\LCD_user|z~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~10_combout\,
	datab => \LCD_user|z~11_combout\,
	datac => \LCD_user|z~9_combout\,
	datad => \LCD_user|Mux11~1_combout\,
	combout => \LCD_user|LessThan5~0_combout\);

-- Location: LCCOMB_X43_Y31_N18
\LCD_user|bindec~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~26_combout\ = (\LCD_user|change~20_combout\ & ((\LCD_user|send_flag\(0) & (\LCD_user|bindec\(9))) # (!\LCD_user|send_flag\(0) & ((\LCD_user|LessThan5~0_combout\))))) # (!\LCD_user|change~20_combout\ & (((\LCD_user|bindec\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|change~20_combout\,
	datab => \LCD_user|send_flag\(0),
	datac => \LCD_user|bindec\(9),
	datad => \LCD_user|LessThan5~0_combout\,
	combout => \LCD_user|bindec~26_combout\);

-- Location: LCCOMB_X42_Y35_N26
\LCD_user|z~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~2_combout\ = (\LCD_user|Mux13~1_combout\ & (\LCD_user|Mux11~1_combout\ & ((\LCD_user|Mux14~1_combout\) # (!\LCD_user|Mux12~1_combout\)))) # (!\LCD_user|Mux13~1_combout\ & (!\LCD_user|Mux11~1_combout\ & ((\LCD_user|Mux12~1_combout\) # 
-- (!\LCD_user|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Mux12~1_combout\,
	datab => \LCD_user|Mux13~1_combout\,
	datac => \LCD_user|Mux14~1_combout\,
	datad => \LCD_user|Mux11~1_combout\,
	combout => \LCD_user|z~2_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(3),
	combout => \lcd_data_in~combout\(3));

-- Location: LCCOMB_X37_Y35_N0
\LCD_user|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux15~0_combout\ = (\LCD_user|cnt\(3) & ((\lcd_data_in~combout\(11)) # ((\LCD_user|cnt\(4))))) # (!\LCD_user|cnt\(3) & (((\lcd_data_in~combout\(3) & !\LCD_user|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(11),
	datab => \lcd_data_in~combout\(3),
	datac => \LCD_user|cnt\(3),
	datad => \LCD_user|cnt\(4),
	combout => \LCD_user|Mux15~0_combout\);

-- Location: LCCOMB_X37_Y35_N26
\LCD_user|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux15~1_combout\ = (\LCD_user|Mux15~0_combout\ & ((\lcd_data_in~combout\(27)) # ((!\LCD_user|cnt\(4))))) # (!\LCD_user|Mux15~0_combout\ & (((\lcd_data_in~combout\(19) & \LCD_user|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(27),
	datab => \LCD_user|Mux15~0_combout\,
	datac => \lcd_data_in~combout\(19),
	datad => \LCD_user|cnt\(4),
	combout => \LCD_user|Mux15~1_combout\);

-- Location: LCCOMB_X42_Y35_N6
\LCD_user|z~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~0_combout\ = (\LCD_user|Mux12~1_combout\ & (!\LCD_user|Mux14~1_combout\ & (\LCD_user|Mux13~1_combout\ $ (\LCD_user|Mux11~1_combout\)))) # (!\LCD_user|Mux12~1_combout\ & (!\LCD_user|Mux13~1_combout\ & (\LCD_user|Mux14~1_combout\ & 
-- !\LCD_user|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Mux12~1_combout\,
	datab => \LCD_user|Mux13~1_combout\,
	datac => \LCD_user|Mux14~1_combout\,
	datad => \LCD_user|Mux11~1_combout\,
	combout => \LCD_user|z~0_combout\);

-- Location: LCCOMB_X42_Y35_N28
\LCD_user|z~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~3_combout\ = (\LCD_user|z~2_combout\ & (!\LCD_user|z~1_combout\ & (!\LCD_user|Mux15~1_combout\))) # (!\LCD_user|z~2_combout\ & (\LCD_user|z~0_combout\ & ((\LCD_user|z~1_combout\) # (\LCD_user|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~1_combout\,
	datab => \LCD_user|z~2_combout\,
	datac => \LCD_user|Mux15~1_combout\,
	datad => \LCD_user|z~0_combout\,
	combout => \LCD_user|z~3_combout\);

-- Location: LCCOMB_X37_Y35_N28
\LCD_user|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux16~0_combout\ = (\LCD_user|cnt\(3) & (((\LCD_user|cnt\(4))))) # (!\LCD_user|cnt\(3) & ((\LCD_user|cnt\(4) & ((\lcd_data_in~combout\(18)))) # (!\LCD_user|cnt\(4) & (\lcd_data_in~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(2),
	datab => \lcd_data_in~combout\(18),
	datac => \LCD_user|cnt\(3),
	datad => \LCD_user|cnt\(4),
	combout => \LCD_user|Mux16~0_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(10),
	combout => \lcd_data_in~combout\(10));

-- Location: LCCOMB_X37_Y35_N22
\LCD_user|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux16~1_combout\ = (\LCD_user|Mux16~0_combout\ & ((\lcd_data_in~combout\(26)) # ((!\LCD_user|cnt\(3))))) # (!\LCD_user|Mux16~0_combout\ & (((\LCD_user|cnt\(3) & \lcd_data_in~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(26),
	datab => \LCD_user|Mux16~0_combout\,
	datac => \LCD_user|cnt\(3),
	datad => \lcd_data_in~combout\(10),
	combout => \LCD_user|Mux16~1_combout\);

-- Location: LCCOMB_X42_Y35_N10
\LCD_user|z~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~8_combout\ = (!\LCD_user|z~0_combout\ & (((!\LCD_user|z~1_combout\ & !\LCD_user|Mux15~1_combout\)) # (!\LCD_user|z~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~1_combout\,
	datab => \LCD_user|z~2_combout\,
	datac => \LCD_user|Mux15~1_combout\,
	datad => \LCD_user|z~0_combout\,
	combout => \LCD_user|z~8_combout\);

-- Location: LCCOMB_X42_Y35_N4
\LCD_user|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add5~0_combout\ = (\LCD_user|z~1_combout\ & ((\LCD_user|Mux16~1_combout\ & ((\LCD_user|Mux15~1_combout\) # (\LCD_user|z~8_combout\))) # (!\LCD_user|Mux16~1_combout\ & (\LCD_user|Mux15~1_combout\ & \LCD_user|z~8_combout\)))) # 
-- (!\LCD_user|z~1_combout\ & (((!\LCD_user|Mux15~1_combout\ & !\LCD_user|z~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~1_combout\,
	datab => \LCD_user|Mux16~1_combout\,
	datac => \LCD_user|Mux15~1_combout\,
	datad => \LCD_user|z~8_combout\,
	combout => \LCD_user|Add5~0_combout\);

-- Location: LCCOMB_X43_Y31_N28
\LCD_user|z~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~12_combout\ = (\LCD_user|z~10_combout\ & ((\LCD_user|z~11_combout\) # ((\LCD_user|Mux11~1_combout\) # (!\LCD_user|z~9_combout\)))) # (!\LCD_user|z~10_combout\ & (((\LCD_user|z~9_combout\ & !\LCD_user|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~10_combout\,
	datab => \LCD_user|z~11_combout\,
	datac => \LCD_user|z~9_combout\,
	datad => \LCD_user|Mux11~1_combout\,
	combout => \LCD_user|z~12_combout\);

-- Location: LCCOMB_X43_Y31_N22
\LCD_user|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan7~0_combout\ = (\LCD_user|bindec~11_combout\ & ((\LCD_user|z~3_combout\ $ (\LCD_user|Add5~0_combout\)) # (!\LCD_user|z~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|bindec~11_combout\,
	datab => \LCD_user|z~3_combout\,
	datac => \LCD_user|Add5~0_combout\,
	datad => \LCD_user|z~12_combout\,
	combout => \LCD_user|LessThan7~0_combout\);

-- Location: LCFF_X43_Y31_N31
\LCD_user|bindec[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|bindec~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|bindec\(8));

-- Location: LCCOMB_X43_Y31_N30
\LCD_user|bindec~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~19_combout\ = (\LCD_user|process_1~3_combout\ & (\LCD_user|z~13_combout\ $ ((\LCD_user|LessThan7~0_combout\)))) # (!\LCD_user|process_1~3_combout\ & (((\LCD_user|bindec\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~13_combout\,
	datab => \LCD_user|LessThan7~0_combout\,
	datac => \LCD_user|bindec\(8),
	datad => \LCD_user|process_1~3_combout\,
	combout => \LCD_user|bindec~19_combout\);

-- Location: LCCOMB_X43_Y31_N14
\LCD_user|to_lcd[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd[3]~12_combout\ = (!\LCD_user|process_1~5_combout\ & (!\LCD_user|bindec~26_combout\ & (!\LCD_user|flag_point\(0) & !\LCD_user|bindec~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~5_combout\,
	datab => \LCD_user|bindec~26_combout\,
	datac => \LCD_user|flag_point\(0),
	datad => \LCD_user|bindec~19_combout\,
	combout => \LCD_user|to_lcd[3]~12_combout\);

-- Location: LCFF_X42_Y31_N27
\LCD_user|bindec[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|bindec~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|bindec\(6));

-- Location: LCCOMB_X43_Y31_N26
\LCD_user|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add8~0_combout\ = \LCD_user|z~3_combout\ $ (\LCD_user|Add5~0_combout\ $ (!\LCD_user|z~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|z~3_combout\,
	datac => \LCD_user|Add5~0_combout\,
	datad => \LCD_user|z~12_combout\,
	combout => \LCD_user|Add8~0_combout\);

-- Location: LCCOMB_X42_Y35_N0
\LCD_user|z~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~10_combout\ = \LCD_user|z~0_combout\ $ ((((!\LCD_user|z~1_combout\ & !\LCD_user|Mux15~1_combout\)) # (!\LCD_user|z~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~1_combout\,
	datab => \LCD_user|z~2_combout\,
	datac => \LCD_user|Mux15~1_combout\,
	datad => \LCD_user|z~0_combout\,
	combout => \LCD_user|z~10_combout\);

-- Location: LCCOMB_X42_Y35_N20
\LCD_user|bindec~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~12_combout\ = (\LCD_user|Mux12~1_combout\ & (\LCD_user|Mux13~1_combout\ & (\LCD_user|Mux14~1_combout\ & !\LCD_user|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Mux12~1_combout\,
	datab => \LCD_user|Mux13~1_combout\,
	datac => \LCD_user|Mux14~1_combout\,
	datad => \LCD_user|Mux11~1_combout\,
	combout => \LCD_user|bindec~12_combout\);

-- Location: LCCOMB_X42_Y35_N22
\LCD_user|bindec~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~13_combout\ = (!\LCD_user|bindec~12_combout\ & ((\LCD_user|z~10_combout\) # ((!\LCD_user|Mux11~1_combout\ & \LCD_user|z~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Mux11~1_combout\,
	datab => \LCD_user|z~10_combout\,
	datac => \LCD_user|bindec~12_combout\,
	datad => \LCD_user|z~9_combout\,
	combout => \LCD_user|bindec~13_combout\);

-- Location: LCCOMB_X43_Y31_N4
\LCD_user|bindec~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~14_combout\ = (\LCD_user|z~13_combout\ & (\LCD_user|Add8~0_combout\)) # (!\LCD_user|z~13_combout\ & ((\LCD_user|LessThan7~0_combout\ & (\LCD_user|Add8~0_combout\)) # (!\LCD_user|LessThan7~0_combout\ & ((\LCD_user|bindec~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~13_combout\,
	datab => \LCD_user|Add8~0_combout\,
	datac => \LCD_user|bindec~13_combout\,
	datad => \LCD_user|LessThan7~0_combout\,
	combout => \LCD_user|bindec~14_combout\);

-- Location: LCCOMB_X42_Y31_N26
\LCD_user|bindec~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~24_combout\ = (\LCD_user|change~20_combout\ & ((\LCD_user|send_flag\(0) & (\LCD_user|bindec\(6))) # (!\LCD_user|send_flag\(0) & ((!\LCD_user|bindec~14_combout\))))) # (!\LCD_user|change~20_combout\ & (((\LCD_user|bindec\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|change~20_combout\,
	datab => \LCD_user|send_flag\(0),
	datac => \LCD_user|bindec\(6),
	datad => \LCD_user|bindec~14_combout\,
	combout => \LCD_user|bindec~24_combout\);

-- Location: LCCOMB_X42_Y35_N14
\LCD_user|z~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~4_combout\ = (\LCD_user|z~2_combout\ & (!\LCD_user|Mux15~1_combout\ & ((\LCD_user|z~1_combout\) # (\LCD_user|z~0_combout\)))) # (!\LCD_user|z~2_combout\ & ((\LCD_user|Mux15~1_combout\ $ (\LCD_user|z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~1_combout\,
	datab => \LCD_user|z~2_combout\,
	datac => \LCD_user|Mux15~1_combout\,
	datad => \LCD_user|z~0_combout\,
	combout => \LCD_user|z~4_combout\);

-- Location: LCCOMB_X42_Y35_N8
\LCD_user|z~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~5_combout\ = (\LCD_user|z~1_combout\ & ((\LCD_user|Mux15~1_combout\) # ((!\LCD_user|z~2_combout\ & !\LCD_user|z~0_combout\)))) # (!\LCD_user|z~1_combout\ & (((!\LCD_user|Mux15~1_combout\ & \LCD_user|z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~1_combout\,
	datab => \LCD_user|z~2_combout\,
	datac => \LCD_user|Mux15~1_combout\,
	datad => \LCD_user|z~0_combout\,
	combout => \LCD_user|z~5_combout\);

-- Location: LCCOMB_X42_Y32_N0
\LCD_user|z~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~6_combout\ = (\LCD_user|z~5_combout\ & (((!\LCD_user|Mux16~1_combout\ & !\LCD_user|z~4_combout\)))) # (!\LCD_user|z~5_combout\ & (\LCD_user|z~3_combout\ & ((\LCD_user|Mux16~1_combout\) # (\LCD_user|z~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~3_combout\,
	datab => \LCD_user|Mux16~1_combout\,
	datac => \LCD_user|z~4_combout\,
	datad => \LCD_user|z~5_combout\,
	combout => \LCD_user|z~6_combout\);

-- Location: LCFF_X42_Y32_N11
\LCD_user|bindec[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|bindec~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|bindec\(4));

-- Location: LCCOMB_X42_Y32_N28
\LCD_user|z~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~14_combout\ = (\LCD_user|z~3_combout\ & (!\LCD_user|Mux16~1_combout\)) # (!\LCD_user|z~3_combout\ & ((\LCD_user|Mux16~1_combout\ & ((!\LCD_user|z~5_combout\))) # (!\LCD_user|Mux16~1_combout\ & (\LCD_user|z~4_combout\ & 
-- \LCD_user|z~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~3_combout\,
	datab => \LCD_user|Mux16~1_combout\,
	datac => \LCD_user|z~4_combout\,
	datad => \LCD_user|z~5_combout\,
	combout => \LCD_user|z~14_combout\);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(17),
	combout => \lcd_data_in~combout\(17));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcd_data_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcd_data_in(1),
	combout => \lcd_data_in~combout\(1));

-- Location: LCCOMB_X41_Y35_N2
\LCD_user|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux17~0_combout\ = (\LCD_user|cnt\(4) & (((\LCD_user|cnt\(3))))) # (!\LCD_user|cnt\(4) & ((\LCD_user|cnt\(3) & (\lcd_data_in~combout\(9))) # (!\LCD_user|cnt\(3) & ((\lcd_data_in~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(9),
	datab => \LCD_user|cnt\(4),
	datac => \lcd_data_in~combout\(1),
	datad => \LCD_user|cnt\(3),
	combout => \LCD_user|Mux17~0_combout\);

-- Location: LCCOMB_X41_Y35_N28
\LCD_user|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux17~1_combout\ = (\LCD_user|cnt\(4) & ((\LCD_user|Mux17~0_combout\ & (\lcd_data_in~combout\(25))) # (!\LCD_user|Mux17~0_combout\ & ((\lcd_data_in~combout\(17)))))) # (!\LCD_user|cnt\(4) & (((\LCD_user|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data_in~combout\(25),
	datab => \LCD_user|cnt\(4),
	datac => \lcd_data_in~combout\(17),
	datad => \LCD_user|Mux17~0_combout\,
	combout => \LCD_user|Mux17~1_combout\);

-- Location: LCCOMB_X42_Y32_N26
\LCD_user|z~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~7_combout\ = (\LCD_user|z~3_combout\ & (\LCD_user|Mux16~1_combout\ $ ((!\LCD_user|z~4_combout\)))) # (!\LCD_user|z~3_combout\ & (\LCD_user|z~4_combout\ & ((\LCD_user|Mux16~1_combout\) # (!\LCD_user|z~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~3_combout\,
	datab => \LCD_user|Mux16~1_combout\,
	datac => \LCD_user|z~4_combout\,
	datad => \LCD_user|z~5_combout\,
	combout => \LCD_user|z~7_combout\);

-- Location: LCCOMB_X42_Y32_N30
\LCD_user|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan6~0_combout\ = (\LCD_user|z~7_combout\ & ((\LCD_user|z~14_combout\) # (\LCD_user|Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|z~14_combout\,
	datac => \LCD_user|Mux17~1_combout\,
	datad => \LCD_user|z~7_combout\,
	combout => \LCD_user|LessThan6~0_combout\);

-- Location: LCCOMB_X42_Y32_N10
\LCD_user|bindec~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~15_combout\ = (\LCD_user|process_1~3_combout\ & (\LCD_user|z~6_combout\ $ (((\LCD_user|LessThan6~0_combout\))))) # (!\LCD_user|process_1~3_combout\ & (((\LCD_user|bindec\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~3_combout\,
	datab => \LCD_user|z~6_combout\,
	datac => \LCD_user|bindec\(4),
	datad => \LCD_user|LessThan6~0_combout\,
	combout => \LCD_user|bindec~15_combout\);

-- Location: LCCOMB_X42_Y31_N20
\LCD_user|process_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|process_1~4_combout\ = (\LCD_user|bindec~17_combout\) # ((\LCD_user|flag_point\(0)) # ((\LCD_user|bindec~24_combout\) # (\LCD_user|bindec~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|bindec~17_combout\,
	datab => \LCD_user|flag_point\(0),
	datac => \LCD_user|bindec~24_combout\,
	datad => \LCD_user|bindec~15_combout\,
	combout => \LCD_user|process_1~4_combout\);

-- Location: LCCOMB_X41_Y31_N12
\LCD_user|flag_point[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|flag_point[0]~0_combout\ = (\LCD_user|Equal5~9_combout\ & ((\LCD_user|j\(1)) # (!\LCD_user|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|LessThan9~0_combout\,
	datab => \LCD_user|Equal5~9_combout\,
	datac => \LCD_user|j\(1),
	combout => \LCD_user|flag_point[0]~0_combout\);

-- Location: LCCOMB_X42_Y31_N30
\LCD_user|flag_point[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|flag_point[0]~1_combout\ = (\LCD_user|flag_point[0]~0_combout\ & (((\LCD_user|j\(1))))) # (!\LCD_user|flag_point[0]~0_combout\ & ((\LCD_user|bindec~25_combout\) # ((\LCD_user|process_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|bindec~25_combout\,
	datab => \LCD_user|j\(1),
	datac => \LCD_user|process_1~4_combout\,
	datad => \LCD_user|flag_point[0]~0_combout\,
	combout => \LCD_user|flag_point[0]~1_combout\);

-- Location: LCCOMB_X42_Y31_N0
\LCD_user|flag_point[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|flag_point[0]~2_combout\ = (\LCD_user|process_1~5_combout\ & ((\LCD_user|flag_point\(0)) # ((\LCD_user|to_lcd[3]~12_combout\ & !\LCD_user|flag_point[0]~1_combout\)))) # (!\LCD_user|process_1~5_combout\ & (\LCD_user|to_lcd[3]~12_combout\ & 
-- ((!\LCD_user|flag_point[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~5_combout\,
	datab => \LCD_user|to_lcd[3]~12_combout\,
	datac => \LCD_user|flag_point\(0),
	datad => \LCD_user|flag_point[0]~1_combout\,
	combout => \LCD_user|flag_point[0]~2_combout\);

-- Location: LCFF_X42_Y31_N1
\LCD_user|flag_point[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|flag_point[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|flag_point\(0));

-- Location: LCCOMB_X41_Y31_N22
\LCD_user|process_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|process_1~2_combout\ = (\LCD_user|flag_point\(0)) # ((\LCD_user|j\(1) & \LCD_user|Equal5~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(1),
	datab => \LCD_user|Equal5~9_combout\,
	datac => \LCD_user|flag_point\(0),
	combout => \LCD_user|process_1~2_combout\);

-- Location: LCCOMB_X40_Y31_N20
\LCD_user|j[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[26]~84_combout\ = (\LCD_user|j[25]~83\ & (!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(26) & VCC))) # (!\LCD_user|j[25]~83\ & ((((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(26))))))
-- \LCD_user|j[26]~85\ = CARRY((!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(26) & !\LCD_user|j[25]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(26),
	datad => VCC,
	cin => \LCD_user|j[25]~83\,
	combout => \LCD_user|j[26]~84_combout\,
	cout => \LCD_user|j[26]~85\);

-- Location: LCFF_X40_Y31_N21
\LCD_user|j[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[26]~84_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(26));

-- Location: LCCOMB_X40_Y31_N22
\LCD_user|j[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[27]~86_combout\ = (\LCD_user|j[26]~85\ & ((\LCD_user|process_1~2_combout\) # ((!\LCD_user|j\(27))))) # (!\LCD_user|j[26]~85\ & (((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(27))) # (GND)))
-- \LCD_user|j[27]~87\ = CARRY((\LCD_user|process_1~2_combout\) # ((!\LCD_user|j[26]~85\) # (!\LCD_user|j\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(27),
	datad => VCC,
	cin => \LCD_user|j[26]~85\,
	combout => \LCD_user|j[27]~86_combout\,
	cout => \LCD_user|j[27]~87\);

-- Location: LCFF_X40_Y31_N23
\LCD_user|j[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[27]~86_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(27));

-- Location: LCCOMB_X40_Y31_N24
\LCD_user|j[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[28]~88_combout\ = (\LCD_user|j[27]~87\ & (!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(28) & VCC))) # (!\LCD_user|j[27]~87\ & ((((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(28))))))
-- \LCD_user|j[28]~89\ = CARRY((!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(28) & !\LCD_user|j[27]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(28),
	datad => VCC,
	cin => \LCD_user|j[27]~87\,
	combout => \LCD_user|j[28]~88_combout\,
	cout => \LCD_user|j[28]~89\);

-- Location: LCFF_X40_Y31_N25
\LCD_user|j[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[28]~88_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(28));

-- Location: LCCOMB_X40_Y31_N26
\LCD_user|j[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[29]~90_combout\ = (\LCD_user|j[28]~89\ & ((\LCD_user|process_1~2_combout\) # ((!\LCD_user|j\(29))))) # (!\LCD_user|j[28]~89\ & (((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(29))) # (GND)))
-- \LCD_user|j[29]~91\ = CARRY((\LCD_user|process_1~2_combout\) # ((!\LCD_user|j[28]~89\) # (!\LCD_user|j\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(29),
	datad => VCC,
	cin => \LCD_user|j[28]~89\,
	combout => \LCD_user|j[29]~90_combout\,
	cout => \LCD_user|j[29]~91\);

-- Location: LCFF_X40_Y31_N27
\LCD_user|j[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[29]~90_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(29));

-- Location: LCCOMB_X40_Y31_N28
\LCD_user|j[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[30]~92_combout\ = (\LCD_user|j[29]~91\ & (!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(30) & VCC))) # (!\LCD_user|j[29]~91\ & ((((!\LCD_user|process_1~2_combout\ & \LCD_user|j\(30))))))
-- \LCD_user|j[30]~93\ = CARRY((!\LCD_user|process_1~2_combout\ & (\LCD_user|j\(30) & !\LCD_user|j[29]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|j\(30),
	datad => VCC,
	cin => \LCD_user|j[29]~91\,
	combout => \LCD_user|j[30]~92_combout\,
	cout => \LCD_user|j[30]~93\);

-- Location: LCFF_X40_Y31_N29
\LCD_user|j[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[30]~92_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(30));

-- Location: LCCOMB_X40_Y31_N30
\LCD_user|j[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[31]~94_combout\ = \LCD_user|j[30]~93\ $ (((\LCD_user|j\(31) & !\LCD_user|process_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|j\(31),
	datad => \LCD_user|process_1~2_combout\,
	cin => \LCD_user|j[30]~93\,
	combout => \LCD_user|j[31]~94_combout\);

-- Location: LCFF_X40_Y31_N31
\LCD_user|j[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[31]~94_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(31));

-- Location: LCCOMB_X41_Y31_N10
\LCD_user|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal11~0_combout\ = (((\LCD_user|j\(31)) # (!\LCD_user|Equal5~8_combout\)) # (!\LCD_user|j\(2))) # (!\LCD_user|to_lcd[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|to_lcd[3]~6_combout\,
	datab => \LCD_user|j\(2),
	datac => \LCD_user|j\(31),
	datad => \LCD_user|Equal5~8_combout\,
	combout => \LCD_user|Equal11~0_combout\);

-- Location: LCCOMB_X44_Y30_N10
\LCD_user|j[5]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|j[5]~96_combout\ = ((\LCD_user|send_flag\(0) & \LCD_user|LessThan8~9_combout\)) # (!\LCD_user|Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|send_flag\(0),
	datab => \LCD_user|LessThan8~9_combout\,
	datac => \LCD_user|Equal11~0_combout\,
	combout => \LCD_user|j[5]~96_combout\);

-- Location: LCFF_X40_Y32_N1
\LCD_user|j[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|j[0]~32_combout\,
	sclr => \LCD_user|process_1~5_combout\,
	ena => \LCD_user|j[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|j\(0));

-- Location: LCCOMB_X41_Y31_N16
\LCD_user|to_lcd[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd[3]~6_combout\ = (!\LCD_user|j\(1) & !\LCD_user|j\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(1),
	datac => \LCD_user|j\(0),
	combout => \LCD_user|to_lcd[3]~6_combout\);

-- Location: LCCOMB_X41_Y31_N6
\LCD_user|to_lcd~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd~22_combout\ = (!\LCD_user|flag_point\(0) & (!\LCD_user|process_1~5_combout\ & ((!\LCD_user|Equal5~9_combout\) # (!\LCD_user|j\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(1),
	datab => \LCD_user|Equal5~9_combout\,
	datac => \LCD_user|flag_point\(0),
	datad => \LCD_user|process_1~5_combout\,
	combout => \LCD_user|to_lcd~22_combout\);

-- Location: LCCOMB_X43_Y31_N12
\LCD_user|to_lcd[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd[3]~7_combout\ = (!\LCD_user|bindec~26_combout\ & (!\LCD_user|flag_point\(0) & !\LCD_user|bindec~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|bindec~26_combout\,
	datac => \LCD_user|flag_point\(0),
	datad => \LCD_user|bindec~19_combout\,
	combout => \LCD_user|to_lcd[3]~7_combout\);

-- Location: LCCOMB_X42_Y31_N8
\LCD_user|to_lcd~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd~8_combout\ = (\LCD_user|bindec~25_combout\ & (\LCD_user|j\(1))) # (!\LCD_user|bindec~25_combout\ & ((\LCD_user|to_lcd[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|bindec~25_combout\,
	datab => \LCD_user|j\(1),
	datac => \LCD_user|to_lcd[3]~7_combout\,
	combout => \LCD_user|to_lcd~8_combout\);

-- Location: LCFF_X42_Y32_N17
\LCD_user|bindec[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|bindec~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|bindec\(3));

-- Location: LCCOMB_X42_Y32_N6
\LCD_user|bindec~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~10_combout\ = (\LCD_user|process_1~3_combout\ & ((\LCD_user|Add7~0_combout\ & (\LCD_user|z~6_combout\ & !\LCD_user|z~7_combout\)) # (!\LCD_user|Add7~0_combout\ & ((\LCD_user|z~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Add7~0_combout\,
	datab => \LCD_user|z~6_combout\,
	datac => \LCD_user|process_1~3_combout\,
	datad => \LCD_user|z~7_combout\,
	combout => \LCD_user|bindec~10_combout\);

-- Location: LCCOMB_X42_Y32_N16
\LCD_user|bindec~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~23_combout\ = (\LCD_user|bindec~10_combout\) # ((\LCD_user|bindec\(3) & ((\LCD_user|send_flag\(0)) # (!\LCD_user|change~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|change~20_combout\,
	datab => \LCD_user|send_flag\(0),
	datac => \LCD_user|bindec\(3),
	datad => \LCD_user|bindec~10_combout\,
	combout => \LCD_user|bindec~23_combout\);

-- Location: LCCOMB_X43_Y31_N2
\LCD_user|Add8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add8~1_combout\ = (\LCD_user|z~3_combout\ $ (\LCD_user|Add5~0_combout\)) # (!\LCD_user|z~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|z~3_combout\,
	datac => \LCD_user|Add5~0_combout\,
	datad => \LCD_user|z~12_combout\,
	combout => \LCD_user|Add8~1_combout\);

-- Location: LCCOMB_X43_Y31_N16
\LCD_user|z~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|z~13_combout\ = (\LCD_user|z~10_combout\ & (\LCD_user|z~11_combout\ & (\LCD_user|z~9_combout\ & !\LCD_user|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~10_combout\,
	datab => \LCD_user|z~11_combout\,
	datac => \LCD_user|z~9_combout\,
	datad => \LCD_user|Mux11~1_combout\,
	combout => \LCD_user|z~13_combout\);

-- Location: LCCOMB_X43_Y31_N20
\LCD_user|bindec~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~18_combout\ = (\LCD_user|process_1~3_combout\ & ((\LCD_user|bindec~11_combout\ & (!\LCD_user|Add8~1_combout\)) # (!\LCD_user|bindec~11_combout\ & (\LCD_user|Add8~1_combout\ & \LCD_user|z~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|bindec~11_combout\,
	datab => \LCD_user|Add8~1_combout\,
	datac => \LCD_user|z~13_combout\,
	datad => \LCD_user|process_1~3_combout\,
	combout => \LCD_user|bindec~18_combout\);

-- Location: LCFF_X42_Y31_N7
\LCD_user|bindec[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|bindec~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|bindec\(7));

-- Location: LCCOMB_X42_Y31_N6
\LCD_user|bindec~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~25_combout\ = (\LCD_user|bindec~18_combout\) # ((\LCD_user|bindec\(7) & ((\LCD_user|send_flag\(0)) # (!\LCD_user|change~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|change~20_combout\,
	datab => \LCD_user|bindec~18_combout\,
	datac => \LCD_user|bindec\(7),
	datad => \LCD_user|send_flag\(0),
	combout => \LCD_user|bindec~25_combout\);

-- Location: LCCOMB_X42_Y31_N2
\LCD_user|to_lcd~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd~9_combout\ = (\LCD_user|to_lcd~8_combout\ & (!\LCD_user|process_1~4_combout\ & (\LCD_user|bindec~23_combout\ & !\LCD_user|bindec~25_combout\))) # (!\LCD_user|to_lcd~8_combout\ & (((\LCD_user|bindec~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~4_combout\,
	datab => \LCD_user|to_lcd~8_combout\,
	datac => \LCD_user|bindec~23_combout\,
	datad => \LCD_user|bindec~25_combout\,
	combout => \LCD_user|to_lcd~9_combout\);

-- Location: LCCOMB_X42_Y31_N24
\LCD_user|to_lcd~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd~10_combout\ = ((\LCD_user|to_lcd[3]~6_combout\ & (\LCD_user|bindec~23_combout\)) # (!\LCD_user|to_lcd[3]~6_combout\ & ((\LCD_user|to_lcd~9_combout\)))) # (!\LCD_user|to_lcd~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|bindec~23_combout\,
	datab => \LCD_user|to_lcd[3]~6_combout\,
	datac => \LCD_user|to_lcd~22_combout\,
	datad => \LCD_user|to_lcd~9_combout\,
	combout => \LCD_user|to_lcd~10_combout\);

-- Location: LCCOMB_X41_Y31_N24
\LCD_user|LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|LessThan9~0_combout\ = (!\LCD_user|j\(31) & ((\LCD_user|j\(2)) # ((\LCD_user|j\(1)) # (!\LCD_user|Equal5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(31),
	datab => \LCD_user|j\(2),
	datac => \LCD_user|j\(1),
	datad => \LCD_user|Equal5~8_combout\,
	combout => \LCD_user|LessThan9~0_combout\);

-- Location: LCCOMB_X42_Y31_N4
\LCD_user|to_lcd[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd[3]~13_combout\ = (!\LCD_user|process_1~2_combout\ & (\LCD_user|LessThan9~0_combout\ & \LCD_user|to_lcd[3]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|process_1~2_combout\,
	datab => \LCD_user|LessThan9~0_combout\,
	datac => \LCD_user|to_lcd[3]~12_combout\,
	combout => \LCD_user|to_lcd[3]~13_combout\);

-- Location: LCCOMB_X31_Y27_N0
\LCD_user|Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~0_combout\ = \LCD_user|k\(0) $ (VCC)
-- \LCD_user|Add11~1\ = CARRY(\LCD_user|k\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(0),
	datad => VCC,
	combout => \LCD_user|Add11~0_combout\,
	cout => \LCD_user|Add11~1\);

-- Location: LCCOMB_X44_Y30_N28
\LCD_user|send_flag[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|send_flag[0]~1_combout\ = (!\LCD_user|Equal11~0_combout\ & ((!\LCD_user|LessThan8~9_combout\) # (!\LCD_user|send_flag\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|send_flag\(0),
	datab => \LCD_user|LessThan8~9_combout\,
	datac => \LCD_user|Equal11~0_combout\,
	combout => \LCD_user|send_flag[0]~1_combout\);

-- Location: LCFF_X31_Y27_N1
\LCD_user|k[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~0_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(0));

-- Location: LCCOMB_X31_Y27_N2
\LCD_user|Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~2_combout\ = (\LCD_user|k\(1) & (!\LCD_user|Add11~1\)) # (!\LCD_user|k\(1) & ((\LCD_user|Add11~1\) # (GND)))
-- \LCD_user|Add11~3\ = CARRY((!\LCD_user|Add11~1\) # (!\LCD_user|k\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(1),
	datad => VCC,
	cin => \LCD_user|Add11~1\,
	combout => \LCD_user|Add11~2_combout\,
	cout => \LCD_user|Add11~3\);

-- Location: LCFF_X31_Y27_N3
\LCD_user|k[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~2_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(1));

-- Location: LCCOMB_X31_Y27_N4
\LCD_user|Add11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~4_combout\ = (\LCD_user|k\(2) & (\LCD_user|Add11~3\ $ (GND))) # (!\LCD_user|k\(2) & (!\LCD_user|Add11~3\ & VCC))
-- \LCD_user|Add11~5\ = CARRY((\LCD_user|k\(2) & !\LCD_user|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(2),
	datad => VCC,
	cin => \LCD_user|Add11~3\,
	combout => \LCD_user|Add11~4_combout\,
	cout => \LCD_user|Add11~5\);

-- Location: LCCOMB_X32_Y27_N0
\LCD_user|k~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|k~0_combout\ = (\LCD_user|Equal12~10_combout\ & \LCD_user|Add11~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|Equal12~10_combout\,
	datac => \LCD_user|Add11~4_combout\,
	combout => \LCD_user|k~0_combout\);

-- Location: LCFF_X32_Y27_N1
\LCD_user|k[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|k~0_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(2));

-- Location: LCCOMB_X31_Y27_N6
\LCD_user|Add11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~6_combout\ = (\LCD_user|k\(3) & (!\LCD_user|Add11~5\)) # (!\LCD_user|k\(3) & ((\LCD_user|Add11~5\) # (GND)))
-- \LCD_user|Add11~7\ = CARRY((!\LCD_user|Add11~5\) # (!\LCD_user|k\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(3),
	datad => VCC,
	cin => \LCD_user|Add11~5\,
	combout => \LCD_user|Add11~6_combout\,
	cout => \LCD_user|Add11~7\);

-- Location: LCFF_X31_Y27_N7
\LCD_user|k[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~6_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(3));

-- Location: LCCOMB_X32_Y27_N2
\LCD_user|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal12~0_combout\ = ((\LCD_user|k\(3)) # ((\LCD_user|k\(2)) # (!\LCD_user|k\(0)))) # (!\LCD_user|k\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(1),
	datab => \LCD_user|k\(3),
	datac => \LCD_user|k\(0),
	datad => \LCD_user|k\(2),
	combout => \LCD_user|Equal12~0_combout\);

-- Location: LCCOMB_X31_Y27_N8
\LCD_user|Add11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~8_combout\ = (\LCD_user|k\(4) & (\LCD_user|Add11~7\ $ (GND))) # (!\LCD_user|k\(4) & (!\LCD_user|Add11~7\ & VCC))
-- \LCD_user|Add11~9\ = CARRY((\LCD_user|k\(4) & !\LCD_user|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(4),
	datad => VCC,
	cin => \LCD_user|Add11~7\,
	combout => \LCD_user|Add11~8_combout\,
	cout => \LCD_user|Add11~9\);

-- Location: LCFF_X31_Y27_N9
\LCD_user|k[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~8_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(4));

-- Location: LCCOMB_X31_Y27_N14
\LCD_user|Add11~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~14_combout\ = (\LCD_user|k\(7) & (!\LCD_user|Add11~13\)) # (!\LCD_user|k\(7) & ((\LCD_user|Add11~13\) # (GND)))
-- \LCD_user|Add11~15\ = CARRY((!\LCD_user|Add11~13\) # (!\LCD_user|k\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(7),
	datad => VCC,
	cin => \LCD_user|Add11~13\,
	combout => \LCD_user|Add11~14_combout\,
	cout => \LCD_user|Add11~15\);

-- Location: LCFF_X31_Y27_N15
\LCD_user|k[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~14_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(7));

-- Location: LCCOMB_X31_Y27_N16
\LCD_user|Add11~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~16_combout\ = (\LCD_user|k\(8) & (\LCD_user|Add11~15\ $ (GND))) # (!\LCD_user|k\(8) & (!\LCD_user|Add11~15\ & VCC))
-- \LCD_user|Add11~17\ = CARRY((\LCD_user|k\(8) & !\LCD_user|Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(8),
	datad => VCC,
	cin => \LCD_user|Add11~15\,
	combout => \LCD_user|Add11~16_combout\,
	cout => \LCD_user|Add11~17\);

-- Location: LCCOMB_X31_Y27_N18
\LCD_user|Add11~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~18_combout\ = (\LCD_user|k\(9) & (!\LCD_user|Add11~17\)) # (!\LCD_user|k\(9) & ((\LCD_user|Add11~17\) # (GND)))
-- \LCD_user|Add11~19\ = CARRY((!\LCD_user|Add11~17\) # (!\LCD_user|k\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(9),
	datad => VCC,
	cin => \LCD_user|Add11~17\,
	combout => \LCD_user|Add11~18_combout\,
	cout => \LCD_user|Add11~19\);

-- Location: LCFF_X31_Y27_N19
\LCD_user|k[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~18_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(9));

-- Location: LCCOMB_X31_Y27_N20
\LCD_user|Add11~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~20_combout\ = (\LCD_user|k\(10) & (\LCD_user|Add11~19\ $ (GND))) # (!\LCD_user|k\(10) & (!\LCD_user|Add11~19\ & VCC))
-- \LCD_user|Add11~21\ = CARRY((\LCD_user|k\(10) & !\LCD_user|Add11~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(10),
	datad => VCC,
	cin => \LCD_user|Add11~19\,
	combout => \LCD_user|Add11~20_combout\,
	cout => \LCD_user|Add11~21\);

-- Location: LCCOMB_X31_Y27_N22
\LCD_user|Add11~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~22_combout\ = (\LCD_user|k\(11) & (!\LCD_user|Add11~21\)) # (!\LCD_user|k\(11) & ((\LCD_user|Add11~21\) # (GND)))
-- \LCD_user|Add11~23\ = CARRY((!\LCD_user|Add11~21\) # (!\LCD_user|k\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(11),
	datad => VCC,
	cin => \LCD_user|Add11~21\,
	combout => \LCD_user|Add11~22_combout\,
	cout => \LCD_user|Add11~23\);

-- Location: LCFF_X31_Y27_N23
\LCD_user|k[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~22_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(11));

-- Location: LCCOMB_X31_Y27_N24
\LCD_user|Add11~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~24_combout\ = (\LCD_user|k\(12) & (\LCD_user|Add11~23\ $ (GND))) # (!\LCD_user|k\(12) & (!\LCD_user|Add11~23\ & VCC))
-- \LCD_user|Add11~25\ = CARRY((\LCD_user|k\(12) & !\LCD_user|Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(12),
	datad => VCC,
	cin => \LCD_user|Add11~23\,
	combout => \LCD_user|Add11~24_combout\,
	cout => \LCD_user|Add11~25\);

-- Location: LCFF_X31_Y27_N25
\LCD_user|k[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~24_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(12));

-- Location: LCCOMB_X31_Y27_N26
\LCD_user|Add11~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~26_combout\ = (\LCD_user|k\(13) & (!\LCD_user|Add11~25\)) # (!\LCD_user|k\(13) & ((\LCD_user|Add11~25\) # (GND)))
-- \LCD_user|Add11~27\ = CARRY((!\LCD_user|Add11~25\) # (!\LCD_user|k\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(13),
	datad => VCC,
	cin => \LCD_user|Add11~25\,
	combout => \LCD_user|Add11~26_combout\,
	cout => \LCD_user|Add11~27\);

-- Location: LCFF_X31_Y27_N27
\LCD_user|k[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~26_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(13));

-- Location: LCCOMB_X31_Y27_N28
\LCD_user|Add11~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~28_combout\ = (\LCD_user|k\(14) & (\LCD_user|Add11~27\ $ (GND))) # (!\LCD_user|k\(14) & (!\LCD_user|Add11~27\ & VCC))
-- \LCD_user|Add11~29\ = CARRY((\LCD_user|k\(14) & !\LCD_user|Add11~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(14),
	datad => VCC,
	cin => \LCD_user|Add11~27\,
	combout => \LCD_user|Add11~28_combout\,
	cout => \LCD_user|Add11~29\);

-- Location: LCFF_X31_Y27_N29
\LCD_user|k[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~28_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(14));

-- Location: LCCOMB_X31_Y27_N30
\LCD_user|Add11~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~30_combout\ = (\LCD_user|k\(15) & (!\LCD_user|Add11~29\)) # (!\LCD_user|k\(15) & ((\LCD_user|Add11~29\) # (GND)))
-- \LCD_user|Add11~31\ = CARRY((!\LCD_user|Add11~29\) # (!\LCD_user|k\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(15),
	datad => VCC,
	cin => \LCD_user|Add11~29\,
	combout => \LCD_user|Add11~30_combout\,
	cout => \LCD_user|Add11~31\);

-- Location: LCFF_X31_Y27_N31
\LCD_user|k[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~30_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(15));

-- Location: LCCOMB_X32_Y27_N8
\LCD_user|Equal12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal12~3_combout\ = (\LCD_user|k\(13)) # ((\LCD_user|k\(12)) # ((\LCD_user|k\(15)) # (\LCD_user|k\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(13),
	datab => \LCD_user|k\(12),
	datac => \LCD_user|k\(15),
	datad => \LCD_user|k\(14),
	combout => \LCD_user|Equal12~3_combout\);

-- Location: LCFF_X31_Y27_N21
\LCD_user|k[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~20_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(10));

-- Location: LCFF_X31_Y27_N17
\LCD_user|k[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~16_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(8));

-- Location: LCCOMB_X32_Y27_N22
\LCD_user|Equal12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal12~2_combout\ = (\LCD_user|k\(9)) # ((\LCD_user|k\(11)) # ((\LCD_user|k\(10)) # (\LCD_user|k\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(9),
	datab => \LCD_user|k\(11),
	datac => \LCD_user|k\(10),
	datad => \LCD_user|k\(8),
	combout => \LCD_user|Equal12~2_combout\);

-- Location: LCCOMB_X32_Y27_N26
\LCD_user|Equal12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal12~4_combout\ = (\LCD_user|Equal12~1_combout\) # ((\LCD_user|Equal12~0_combout\) # ((\LCD_user|Equal12~3_combout\) # (\LCD_user|Equal12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Equal12~1_combout\,
	datab => \LCD_user|Equal12~0_combout\,
	datac => \LCD_user|Equal12~3_combout\,
	datad => \LCD_user|Equal12~2_combout\,
	combout => \LCD_user|Equal12~4_combout\);

-- Location: LCCOMB_X31_Y26_N0
\LCD_user|Add11~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~32_combout\ = (\LCD_user|k\(16) & (\LCD_user|Add11~31\ $ (GND))) # (!\LCD_user|k\(16) & (!\LCD_user|Add11~31\ & VCC))
-- \LCD_user|Add11~33\ = CARRY((\LCD_user|k\(16) & !\LCD_user|Add11~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(16),
	datad => VCC,
	cin => \LCD_user|Add11~31\,
	combout => \LCD_user|Add11~32_combout\,
	cout => \LCD_user|Add11~33\);

-- Location: LCFF_X31_Y26_N1
\LCD_user|k[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~32_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(16));

-- Location: LCCOMB_X31_Y26_N2
\LCD_user|Add11~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~34_combout\ = (\LCD_user|k\(17) & (!\LCD_user|Add11~33\)) # (!\LCD_user|k\(17) & ((\LCD_user|Add11~33\) # (GND)))
-- \LCD_user|Add11~35\ = CARRY((!\LCD_user|Add11~33\) # (!\LCD_user|k\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(17),
	datad => VCC,
	cin => \LCD_user|Add11~33\,
	combout => \LCD_user|Add11~34_combout\,
	cout => \LCD_user|Add11~35\);

-- Location: LCFF_X31_Y26_N3
\LCD_user|k[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~34_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(17));

-- Location: LCCOMB_X31_Y26_N4
\LCD_user|Add11~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~36_combout\ = (\LCD_user|k\(18) & (\LCD_user|Add11~35\ $ (GND))) # (!\LCD_user|k\(18) & (!\LCD_user|Add11~35\ & VCC))
-- \LCD_user|Add11~37\ = CARRY((\LCD_user|k\(18) & !\LCD_user|Add11~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(18),
	datad => VCC,
	cin => \LCD_user|Add11~35\,
	combout => \LCD_user|Add11~36_combout\,
	cout => \LCD_user|Add11~37\);

-- Location: LCFF_X31_Y26_N5
\LCD_user|k[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~36_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(18));

-- Location: LCCOMB_X31_Y26_N8
\LCD_user|Add11~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~40_combout\ = (\LCD_user|k\(20) & (\LCD_user|Add11~39\ $ (GND))) # (!\LCD_user|k\(20) & (!\LCD_user|Add11~39\ & VCC))
-- \LCD_user|Add11~41\ = CARRY((\LCD_user|k\(20) & !\LCD_user|Add11~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(20),
	datad => VCC,
	cin => \LCD_user|Add11~39\,
	combout => \LCD_user|Add11~40_combout\,
	cout => \LCD_user|Add11~41\);

-- Location: LCFF_X31_Y26_N9
\LCD_user|k[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~40_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(20));

-- Location: LCCOMB_X31_Y26_N14
\LCD_user|Add11~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~46_combout\ = (\LCD_user|k\(23) & (!\LCD_user|Add11~45\)) # (!\LCD_user|k\(23) & ((\LCD_user|Add11~45\) # (GND)))
-- \LCD_user|Add11~47\ = CARRY((!\LCD_user|Add11~45\) # (!\LCD_user|k\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(23),
	datad => VCC,
	cin => \LCD_user|Add11~45\,
	combout => \LCD_user|Add11~46_combout\,
	cout => \LCD_user|Add11~47\);

-- Location: LCFF_X31_Y26_N15
\LCD_user|k[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~46_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(23));

-- Location: LCCOMB_X31_Y26_N16
\LCD_user|Add11~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~48_combout\ = (\LCD_user|k\(24) & (\LCD_user|Add11~47\ $ (GND))) # (!\LCD_user|k\(24) & (!\LCD_user|Add11~47\ & VCC))
-- \LCD_user|Add11~49\ = CARRY((\LCD_user|k\(24) & !\LCD_user|Add11~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(24),
	datad => VCC,
	cin => \LCD_user|Add11~47\,
	combout => \LCD_user|Add11~48_combout\,
	cout => \LCD_user|Add11~49\);

-- Location: LCFF_X31_Y26_N17
\LCD_user|k[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~48_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(24));

-- Location: LCCOMB_X31_Y26_N18
\LCD_user|Add11~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~50_combout\ = (\LCD_user|k\(25) & (!\LCD_user|Add11~49\)) # (!\LCD_user|k\(25) & ((\LCD_user|Add11~49\) # (GND)))
-- \LCD_user|Add11~51\ = CARRY((!\LCD_user|Add11~49\) # (!\LCD_user|k\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(25),
	datad => VCC,
	cin => \LCD_user|Add11~49\,
	combout => \LCD_user|Add11~50_combout\,
	cout => \LCD_user|Add11~51\);

-- Location: LCFF_X31_Y26_N19
\LCD_user|k[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~50_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(25));

-- Location: LCCOMB_X31_Y26_N20
\LCD_user|Add11~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~52_combout\ = (\LCD_user|k\(26) & (\LCD_user|Add11~51\ $ (GND))) # (!\LCD_user|k\(26) & (!\LCD_user|Add11~51\ & VCC))
-- \LCD_user|Add11~53\ = CARRY((\LCD_user|k\(26) & !\LCD_user|Add11~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(26),
	datad => VCC,
	cin => \LCD_user|Add11~51\,
	combout => \LCD_user|Add11~52_combout\,
	cout => \LCD_user|Add11~53\);

-- Location: LCFF_X31_Y26_N21
\LCD_user|k[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~52_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(26));

-- Location: LCCOMB_X31_Y26_N22
\LCD_user|Add11~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~54_combout\ = (\LCD_user|k\(27) & (!\LCD_user|Add11~53\)) # (!\LCD_user|k\(27) & ((\LCD_user|Add11~53\) # (GND)))
-- \LCD_user|Add11~55\ = CARRY((!\LCD_user|Add11~53\) # (!\LCD_user|k\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(27),
	datad => VCC,
	cin => \LCD_user|Add11~53\,
	combout => \LCD_user|Add11~54_combout\,
	cout => \LCD_user|Add11~55\);

-- Location: LCFF_X31_Y26_N23
\LCD_user|k[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~54_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(27));

-- Location: LCCOMB_X32_Y27_N24
\LCD_user|Equal12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal12~8_combout\ = (\LCD_user|k\(25)) # ((\LCD_user|k\(24)) # ((\LCD_user|k\(26)) # (\LCD_user|k\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(25),
	datab => \LCD_user|k\(24),
	datac => \LCD_user|k\(26),
	datad => \LCD_user|k\(27),
	combout => \LCD_user|Equal12~8_combout\);

-- Location: LCCOMB_X31_Y26_N24
\LCD_user|Add11~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~56_combout\ = (\LCD_user|k\(28) & (\LCD_user|Add11~55\ $ (GND))) # (!\LCD_user|k\(28) & (!\LCD_user|Add11~55\ & VCC))
-- \LCD_user|Add11~57\ = CARRY((\LCD_user|k\(28) & !\LCD_user|Add11~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(28),
	datad => VCC,
	cin => \LCD_user|Add11~55\,
	combout => \LCD_user|Add11~56_combout\,
	cout => \LCD_user|Add11~57\);

-- Location: LCCOMB_X31_Y26_N26
\LCD_user|Add11~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Add11~58_combout\ = (\LCD_user|k\(29) & (!\LCD_user|Add11~57\)) # (!\LCD_user|k\(29) & ((\LCD_user|Add11~57\) # (GND)))
-- \LCD_user|Add11~59\ = CARRY((!\LCD_user|Add11~57\) # (!\LCD_user|k\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|k\(29),
	datad => VCC,
	cin => \LCD_user|Add11~57\,
	combout => \LCD_user|Add11~58_combout\,
	cout => \LCD_user|Add11~59\);

-- Location: LCFF_X31_Y26_N27
\LCD_user|k[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~58_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(29));

-- Location: LCFF_X31_Y26_N29
\LCD_user|k[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~60_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(30));

-- Location: LCFF_X31_Y26_N25
\LCD_user|k[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Add11~56_combout\,
	ena => \LCD_user|send_flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|k\(28));

-- Location: LCCOMB_X32_Y27_N10
\LCD_user|Equal12~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal12~9_combout\ = (\LCD_user|k\(31)) # ((\LCD_user|k\(30)) # ((\LCD_user|k\(29)) # (\LCD_user|k\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|k\(31),
	datab => \LCD_user|k\(30),
	datac => \LCD_user|k\(29),
	datad => \LCD_user|k\(28),
	combout => \LCD_user|Equal12~9_combout\);

-- Location: LCCOMB_X32_Y27_N4
\LCD_user|Equal12~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Equal12~10_combout\ = (\LCD_user|Equal12~7_combout\) # ((\LCD_user|Equal12~4_combout\) # ((\LCD_user|Equal12~8_combout\) # (\LCD_user|Equal12~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Equal12~7_combout\,
	datab => \LCD_user|Equal12~4_combout\,
	datac => \LCD_user|Equal12~8_combout\,
	datad => \LCD_user|Equal12~9_combout\,
	combout => \LCD_user|Equal12~10_combout\);

-- Location: LCCOMB_X46_Y29_N2
\LCD_user|to_lcd[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd[3]~11_combout\ = (\LCD_user|process_1~5_combout\ & ((\LCD_user|Equal11~0_combout\) # (\LCD_user|Equal12~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|Equal11~0_combout\,
	datac => \LCD_user|Equal12~10_combout\,
	datad => \LCD_user|process_1~5_combout\,
	combout => \LCD_user|to_lcd[3]~11_combout\);

-- Location: LCCOMB_X42_Y31_N14
\LCD_user|to_lcd[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd[3]~14_combout\ = (!\LCD_user|to_lcd[3]~11_combout\ & (((!\LCD_user|bindec~25_combout\ & !\LCD_user|process_1~4_combout\)) # (!\LCD_user|to_lcd[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|bindec~25_combout\,
	datab => \LCD_user|to_lcd[3]~13_combout\,
	datac => \LCD_user|process_1~4_combout\,
	datad => \LCD_user|to_lcd[3]~11_combout\,
	combout => \LCD_user|to_lcd[3]~14_combout\);

-- Location: LCFF_X42_Y31_N25
\LCD_user|to_lcd[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|to_lcd~10_combout\,
	ena => \LCD_user|to_lcd[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|to_lcd\(3));

-- Location: LCCOMB_X46_Y29_N24
\LCD_user|lcd_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|lcd_enable~0_combout\ = (!\LCD_user|char\(4) & (\LCD_user|process_0~0_combout\ & ((!\LCD_user|to_lcd\(3)) # (!\LCD_user|to_lcd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|to_lcd\(2),
	datab => \LCD_user|char\(4),
	datac => \LCD_user|process_0~0_combout\,
	datad => \LCD_user|to_lcd\(3),
	combout => \LCD_user|lcd_enable~0_combout\);

-- Location: LCFF_X46_Y29_N25
\LCD_user|lcd_enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|lcd_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|lcd_enable~regout\);

-- Location: LCCOMB_X46_Y31_N26
\LCD_contr|Selector44~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector44~4_combout\ = (\LCD_contr|state.initialize~regout\ & (!\LCD_contr|Add0~62_combout\ & ((!\LCD_user|lcd_enable~regout\) # (!\LCD_contr|state.ready~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|state.ready~regout\,
	datab => \LCD_contr|state.initialize~regout\,
	datac => \LCD_user|lcd_enable~regout\,
	datad => \LCD_contr|Add0~62_combout\,
	combout => \LCD_contr|Selector44~4_combout\);

-- Location: LCCOMB_X46_Y31_N4
\LCD_contr|Selector42~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector42~2_combout\ = (!\LCD_contr|Add0~60_combout\ & (\LCD_contr|Selector44~4_combout\ & !\LCD_contr|LessThan2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~60_combout\,
	datab => \LCD_contr|Selector44~4_combout\,
	datad => \LCD_contr|LessThan2~3_combout\,
	combout => \LCD_contr|Selector42~2_combout\);

-- Location: LCCOMB_X47_Y31_N28
\LCD_contr|Selector45~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector45~1_combout\ = (\LCD_contr|LessThan3~3_combout\) # ((\LCD_contr|LessThan5~8_combout\ & ((\LCD_contr|Add0~60_combout\) # (!\LCD_contr|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan3~3_combout\,
	datab => \LCD_contr|LessThan4~3_combout\,
	datac => \LCD_contr|Add0~60_combout\,
	datad => \LCD_contr|LessThan5~8_combout\,
	combout => \LCD_contr|Selector45~1_combout\);

-- Location: LCCOMB_X46_Y31_N20
\LCD_contr|Selector45~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector45~2_combout\ = (\LCD_contr|Selector45~0_combout\) # ((!\LCD_contr|LessThan1~2_combout\ & (\LCD_contr|Selector42~2_combout\ & \LCD_contr|Selector45~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Selector45~0_combout\,
	datab => \LCD_contr|LessThan1~2_combout\,
	datac => \LCD_contr|Selector42~2_combout\,
	datad => \LCD_contr|Selector45~1_combout\,
	combout => \LCD_contr|Selector45~2_combout\);

-- Location: LCCOMB_X46_Y31_N14
\LCD_contr|lcd_data[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|lcd_data[0]~1_combout\ = (\LCD_contr|lcd_data[0]~0_combout\ & (((!\LCD_contr|clk_count[30]~3_combout\) # (!\LCD_contr|state.initialize~regout\)) # (!\LCD_contr|busy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|busy~4_combout\,
	datab => \LCD_contr|state.initialize~regout\,
	datac => \LCD_contr|lcd_data[0]~0_combout\,
	datad => \LCD_contr|clk_count[30]~3_combout\,
	combout => \LCD_contr|lcd_data[0]~1_combout\);

-- Location: LCFF_X46_Y31_N21
\LCD_contr|lcd_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector45~2_combout\,
	ena => \LCD_contr|lcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|lcd_data\(0));

-- Location: LCCOMB_X47_Y31_N24
\LCD_contr|Selector44~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector44~5_combout\ = (!\LCD_contr|busy~5_combout\ & ((\LCD_contr|Add0~60_combout\) # (!\LCD_contr|LessThan5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|busy~5_combout\,
	datac => \LCD_contr|Add0~60_combout\,
	datad => \LCD_contr|LessThan5~8_combout\,
	combout => \LCD_contr|Selector44~5_combout\);

-- Location: LCCOMB_X47_Y31_N30
\LCD_contr|Selector44~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector44~7_combout\ = (\LCD_contr|LessThan5~3_combout\ & (!\LCD_contr|LessThan4~3_combout\ & (!\LCD_contr|Add0~60_combout\ & !\LCD_contr|clk_count[30]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|LessThan5~3_combout\,
	datab => \LCD_contr|LessThan4~3_combout\,
	datac => \LCD_contr|Add0~60_combout\,
	datad => \LCD_contr|clk_count[30]~7_combout\,
	combout => \LCD_contr|Selector44~7_combout\);

-- Location: LCCOMB_X46_Y31_N8
\LCD_contr|Selector44~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector44~6_combout\ = (\LCD_contr|Selector44~4_combout\ & (\LCD_contr|Selector44~5_combout\ & (!\LCD_contr|LessThan3~3_combout\ & \LCD_contr|Selector44~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Selector44~4_combout\,
	datab => \LCD_contr|Selector44~5_combout\,
	datac => \LCD_contr|LessThan3~3_combout\,
	datad => \LCD_contr|Selector44~7_combout\,
	combout => \LCD_contr|Selector44~6_combout\);

-- Location: LCFF_X42_Y32_N23
\LCD_user|bindec[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|bindec~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|bindec\(1));

-- Location: LCCOMB_X42_Y32_N22
\LCD_user|bindec~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~22_combout\ = (\LCD_user|process_1~3_combout\ & (\LCD_user|LessThan6~1_combout\ $ ((\LCD_user|Mux17~1_combout\)))) # (!\LCD_user|process_1~3_combout\ & (((\LCD_user|bindec\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|LessThan6~1_combout\,
	datab => \LCD_user|Mux17~1_combout\,
	datac => \LCD_user|bindec\(1),
	datad => \LCD_user|process_1~3_combout\,
	combout => \LCD_user|bindec~22_combout\);

-- Location: LCCOMB_X43_Y31_N8
\LCD_user|bindec~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~16_combout\ = (\LCD_user|process_1~3_combout\ & ((\LCD_user|z~3_combout\ $ (!\LCD_user|Add5~0_combout\)))) # (!\LCD_user|process_1~3_combout\ & (\LCD_user|bindec\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|bindec\(5),
	datab => \LCD_user|z~3_combout\,
	datac => \LCD_user|Add5~0_combout\,
	datad => \LCD_user|process_1~3_combout\,
	combout => \LCD_user|bindec~16_combout\);

-- Location: LCCOMB_X43_Y31_N6
\LCD_user|bindec~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|bindec~17_combout\ = \LCD_user|bindec~16_combout\ $ (((!\LCD_user|z~13_combout\ & (!\LCD_user|LessThan7~0_combout\ & \LCD_user|process_1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|z~13_combout\,
	datab => \LCD_user|LessThan7~0_combout\,
	datac => \LCD_user|bindec~16_combout\,
	datad => \LCD_user|process_1~3_combout\,
	combout => \LCD_user|bindec~17_combout\);

-- Location: LCCOMB_X41_Y31_N18
\LCD_user|to_lcd~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd~20_combout\ = (\LCD_user|j\(1) & (\LCD_user|bindec~26_combout\)) # (!\LCD_user|j\(1) & ((\LCD_user|bindec~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_user|bindec~26_combout\,
	datac => \LCD_user|j\(1),
	datad => \LCD_user|bindec~17_combout\,
	combout => \LCD_user|to_lcd~20_combout\);

-- Location: LCCOMB_X42_Y31_N22
\LCD_user|to_lcd~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd~21_combout\ = ((\LCD_user|to_lcd[3]~15_combout\ & (\LCD_user|bindec~22_combout\)) # (!\LCD_user|to_lcd[3]~15_combout\ & ((\LCD_user|to_lcd~20_combout\)))) # (!\LCD_user|to_lcd~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|to_lcd[3]~15_combout\,
	datab => \LCD_user|bindec~22_combout\,
	datac => \LCD_user|to_lcd~22_combout\,
	datad => \LCD_user|to_lcd~20_combout\,
	combout => \LCD_user|to_lcd~21_combout\);

-- Location: LCFF_X42_Y31_N23
\LCD_user|to_lcd[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|to_lcd~21_combout\,
	ena => \LCD_user|to_lcd[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|to_lcd\(1));

-- Location: LCCOMB_X46_Y29_N4
\LCD_user|lcd_bus[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|lcd_bus[1]~0_combout\ = (\LCD_user|lcd_enable~0_combout\ & ((\LCD_user|to_lcd\(1)))) # (!\LCD_user|lcd_enable~0_combout\ & (\LCD_user|lcd_bus\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|lcd_enable~0_combout\,
	datac => \LCD_user|lcd_bus\(1),
	datad => \LCD_user|to_lcd\(1),
	combout => \LCD_user|lcd_bus[1]~0_combout\);

-- Location: LCFF_X46_Y29_N5
\LCD_user|lcd_bus[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|lcd_bus[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|lcd_bus\(1));

-- Location: LCCOMB_X46_Y31_N22
\LCD_contr|Selector44~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector44~8_combout\ = (\LCD_contr|Selector44~6_combout\) # ((\LCD_contr|state.ready~regout\ & (\LCD_user|lcd_enable~regout\ & \LCD_user|lcd_bus\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|state.ready~regout\,
	datab => \LCD_contr|Selector44~6_combout\,
	datac => \LCD_user|lcd_enable~regout\,
	datad => \LCD_user|lcd_bus\(1),
	combout => \LCD_contr|Selector44~8_combout\);

-- Location: LCFF_X46_Y31_N23
\LCD_contr|lcd_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector44~8_combout\,
	ena => \LCD_contr|lcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|lcd_data\(1));

-- Location: LCCOMB_X42_Y31_N28
\LCD_user|to_lcd~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd~18_combout\ = (!\LCD_user|process_1~2_combout\ & ((\LCD_user|j\(1) & ((\LCD_user|bindec~19_combout\))) # (!\LCD_user|j\(1) & (\LCD_user|bindec~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|j\(1),
	datab => \LCD_user|bindec~15_combout\,
	datac => \LCD_user|process_1~2_combout\,
	datad => \LCD_user|bindec~19_combout\,
	combout => \LCD_user|to_lcd~18_combout\);

-- Location: LCCOMB_X41_Y31_N2
\LCD_user|to_lcd~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd~24_combout\ = (\LCD_user|bindec~21_combout\ & (!\LCD_user|flag_point\(0) & ((!\LCD_user|j\(1)) # (!\LCD_user|Equal5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|bindec~21_combout\,
	datab => \LCD_user|Equal5~9_combout\,
	datac => \LCD_user|flag_point\(0),
	datad => \LCD_user|j\(1),
	combout => \LCD_user|to_lcd~24_combout\);

-- Location: LCCOMB_X42_Y31_N12
\LCD_user|to_lcd~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|to_lcd~19_combout\ = (\LCD_user|process_1~5_combout\) # ((\LCD_user|to_lcd[3]~15_combout\ & ((\LCD_user|to_lcd~24_combout\))) # (!\LCD_user|to_lcd[3]~15_combout\ & (\LCD_user|to_lcd~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|to_lcd[3]~15_combout\,
	datab => \LCD_user|to_lcd~18_combout\,
	datac => \LCD_user|process_1~5_combout\,
	datad => \LCD_user|to_lcd~24_combout\,
	combout => \LCD_user|to_lcd~19_combout\);

-- Location: LCFF_X42_Y31_N13
\LCD_user|to_lcd[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|to_lcd~19_combout\,
	ena => \LCD_user|to_lcd[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|to_lcd\(0));

-- Location: LCCOMB_X46_Y29_N30
\LCD_user|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|Mux7~0_combout\ = (\LCD_user|to_lcd\(2)) # ((\LCD_user|to_lcd\(1) & (!\LCD_user|to_lcd\(0) & \LCD_user|to_lcd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|to_lcd\(2),
	datab => \LCD_user|to_lcd\(1),
	datac => \LCD_user|to_lcd\(0),
	datad => \LCD_user|to_lcd\(3),
	combout => \LCD_user|Mux7~0_combout\);

-- Location: LCFF_X46_Y29_N31
\LCD_user|lcd_bus[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|Mux7~0_combout\,
	ena => \LCD_user|lcd_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|lcd_bus\(2));

-- Location: LCCOMB_X47_Y31_N2
\LCD_contr|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector43~0_combout\ = (!\LCD_contr|LessThan2~3_combout\ & ((\LCD_contr|LessThan3~3_combout\) # ((\LCD_contr|Selector44~5_combout\ & \LCD_contr|Selector44~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Selector44~5_combout\,
	datab => \LCD_contr|LessThan3~3_combout\,
	datac => \LCD_contr|LessThan2~3_combout\,
	datad => \LCD_contr|Selector44~7_combout\,
	combout => \LCD_contr|Selector43~0_combout\);

-- Location: LCCOMB_X46_Y31_N2
\LCD_contr|Selector43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector43~1_combout\ = (\LCD_contr|Add0~62_combout\) # ((!\LCD_contr|Add0~60_combout\ & ((\LCD_contr|LessThan1~2_combout\) # (\LCD_contr|Selector43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~62_combout\,
	datab => \LCD_contr|LessThan1~2_combout\,
	datac => \LCD_contr|Add0~60_combout\,
	datad => \LCD_contr|Selector43~0_combout\,
	combout => \LCD_contr|Selector43~1_combout\);

-- Location: LCCOMB_X46_Y31_N16
\LCD_contr|Selector43~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector43~2_combout\ = (\LCD_contr|Selector36~0_combout\ & (((\LCD_user|lcd_bus\(2))))) # (!\LCD_contr|Selector36~0_combout\ & (\LCD_contr|state.initialize~regout\ & ((\LCD_contr|Selector43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Selector36~0_combout\,
	datab => \LCD_contr|state.initialize~regout\,
	datac => \LCD_user|lcd_bus\(2),
	datad => \LCD_contr|Selector43~1_combout\,
	combout => \LCD_contr|Selector43~2_combout\);

-- Location: LCFF_X46_Y31_N17
\LCD_contr|lcd_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector43~2_combout\,
	ena => \LCD_contr|lcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|lcd_data\(2));

-- Location: LCCOMB_X46_Y29_N8
\LCD_user|lcd_bus[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_user|lcd_bus[3]~feeder_combout\ = \LCD_user|to_lcd\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD_user|to_lcd\(3),
	combout => \LCD_user|lcd_bus[3]~feeder_combout\);

-- Location: LCFF_X46_Y29_N9
\LCD_user|lcd_bus[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_user|lcd_bus[3]~feeder_combout\,
	ena => \LCD_user|lcd_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_user|lcd_bus\(3));

-- Location: LCCOMB_X46_Y31_N12
\LCD_contr|Selector42~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector42~3_combout\ = (\LCD_contr|LessThan3~3_combout\ & (\LCD_contr|Selector42~2_combout\ & ((\LCD_contr|Add0~60_combout\) # (!\LCD_contr|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~60_combout\,
	datab => \LCD_contr|LessThan1~2_combout\,
	datac => \LCD_contr|LessThan3~3_combout\,
	datad => \LCD_contr|Selector42~2_combout\,
	combout => \LCD_contr|Selector42~3_combout\);

-- Location: LCCOMB_X46_Y31_N10
\LCD_contr|Selector42~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector42~4_combout\ = (\LCD_contr|Selector42~3_combout\) # ((\LCD_contr|state.ready~regout\ & (\LCD_user|lcd_bus\(3) & \LCD_user|lcd_enable~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|state.ready~regout\,
	datab => \LCD_user|lcd_bus\(3),
	datac => \LCD_user|lcd_enable~regout\,
	datad => \LCD_contr|Selector42~3_combout\,
	combout => \LCD_contr|Selector42~4_combout\);

-- Location: LCFF_X46_Y31_N11
\LCD_contr|lcd_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector42~4_combout\,
	ena => \LCD_contr|lcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|lcd_data\(3));

-- Location: LCCOMB_X46_Y31_N30
\LCD_contr|Selector41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector41~2_combout\ = (\LCD_contr|Add0~62_combout\) # (((\LCD_contr|LessThan1~2_combout\ & !\LCD_contr|Add0~60_combout\)) # (!\LCD_contr|state.initialize~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_contr|Add0~62_combout\,
	datab => \LCD_contr|LessThan1~2_combout\,
	datac => \LCD_contr|Add0~60_combout\,
	datad => \LCD_contr|state.initialize~regout\,
	combout => \LCD_contr|Selector41~2_combout\);

-- Location: LCCOMB_X46_Y31_N28
\LCD_contr|Selector41~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|Selector41~3_combout\ = (\LCD_contr|state.ready~regout\ & (\LCD_user|lcd_bus\(4) & (\LCD_user|lcd_enable~regout\))) # (!\LCD_contr|state.ready~regout\ & (((\LCD_contr|Selector41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_user|lcd_bus\(4),
	datab => \LCD_user|lcd_enable~regout\,
	datac => \LCD_contr|state.ready~regout\,
	datad => \LCD_contr|Selector41~2_combout\,
	combout => \LCD_contr|Selector41~3_combout\);

-- Location: LCFF_X46_Y31_N29
\LCD_contr|lcd_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|Selector41~3_combout\,
	ena => \LCD_contr|lcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|lcd_data\(4));

-- Location: LCCOMB_X46_Y31_N0
\LCD_contr|lcd_data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_contr|lcd_data[5]~feeder_combout\ = \LCD_contr|Selector41~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD_contr|Selector41~2_combout\,
	combout => \LCD_contr|lcd_data[5]~feeder_combout\);

-- Location: LCFF_X46_Y31_N1
\LCD_contr|lcd_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LCD_contr|lcd_data[5]~feeder_combout\,
	sdata => \LCD_user|lcd_enable~regout\,
	sload => \LCD_contr|state.ready~regout\,
	ena => \LCD_contr|lcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_contr|lcd_data\(5));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\e~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_contr|e~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_e);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rs~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_contr|rs~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rs);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rw~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rw);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_contr|lcd_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(0));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_contr|lcd_data\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(1));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_contr|lcd_data\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(2));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_contr|lcd_data\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_contr|lcd_data\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(4));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_contr|lcd_data\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(5));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(6));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(7));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_on~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_on);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_blon~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_blon);
END structure;


