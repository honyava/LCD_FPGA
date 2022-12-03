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

-- DATE "12/03/2022 12:06:45"

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

ENTITY 	lcd_controller IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	rw : OUT std_logic;
	rs : OUT std_logic;
	e : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	line1_buffer : IN std_logic_vector(127 DOWNTO 0);
	line2_buffer : IN std_logic_vector(127 DOWNTO 0)
	);
END lcd_controller;

-- Design Ports Information
-- rw	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rs	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- e	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[0]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[1]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[3]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[4]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[5]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[6]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[7]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[48]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[80]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[16]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[112]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[72]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[40]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[8]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[104]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[32]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[64]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[0]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[96]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[88]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[56]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[24]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[120]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[80]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[72]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[64]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[88]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[40]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[48]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[32]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[56]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[16]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[8]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[0]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[24]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[104]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[112]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[96]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[120]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[41]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[73]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[9]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[105]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[81]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[49]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[17]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[113]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[65]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[33]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[1]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[97]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[57]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[89]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[25]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[121]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[49]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[41]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[33]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[57]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[73]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[81]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[65]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[89]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[9]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[17]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[25]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[113]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[105]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[97]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[121]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[74]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[42]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[10]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[106]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[34]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[66]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[98]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[90]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[58]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[26]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[122]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[50]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[82]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[18]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[114]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[82]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[74]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[66]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[90]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[42]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[50]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[34]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[58]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[18]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[10]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[26]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[106]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[114]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[98]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[122]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[43]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[75]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[11]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[107]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[83]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[51]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[19]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[115]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[67]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[35]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[3]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[99]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[59]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[91]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[27]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[123]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[51]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[43]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[35]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[59]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[75]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[83]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[67]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[91]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[11]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[19]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[3]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[27]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[115]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[107]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[99]	=>  Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[123]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[52]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[84]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[20]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[116]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[76]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[44]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[12]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[108]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[36]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[68]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[4]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[100]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[92]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[60]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[28]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[124]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[84]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[76]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[68]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[92]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[44]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[52]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[36]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[60]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[20]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[12]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[4]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[28]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[108]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[116]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[100]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[124]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[45]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[77]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[13]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[109]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[85]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[53]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[21]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[117]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[69]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[37]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[5]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[101]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[61]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[93]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[29]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[125]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[53]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[45]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[37]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[61]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[77]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[85]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[69]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[93]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[13]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[21]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[29]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[117]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[109]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[101]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[125]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[86]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[78]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[70]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[94]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[46]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[54]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[38]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[62]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[22]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[14]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[6]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[30]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[110]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[118]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[102]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[126]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[54]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[86]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[22]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[118]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[78]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[46]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[14]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[110]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[38]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[70]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[6]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[102]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[94]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[62]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[30]	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[126]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[47]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[79]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[15]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[111]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[87]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[55]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[23]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[119]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[71]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[39]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[7]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[103]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[63]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[95]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[31]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line1_buffer[127]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[55]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[47]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[39]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[63]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[79]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[87]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[71]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[95]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[15]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[23]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[7]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[31]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[119]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[111]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[103]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- line2_buffer[127]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lcd_controller IS
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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_line1_buffer : std_logic_vector(127 DOWNTO 0);
SIGNAL ww_line2_buffer : std_logic_vector(127 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan10~2_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \Selector45~5_combout\ : std_logic;
SIGNAL \Selector45~8_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \Selector45~9_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \Selector44~4_combout\ : std_logic;
SIGNAL \Selector44~5_combout\ : std_logic;
SIGNAL \Selector44~6_combout\ : std_logic;
SIGNAL \Selector44~7_combout\ : std_logic;
SIGNAL \Selector44~8_combout\ : std_logic;
SIGNAL \Selector44~9_combout\ : std_logic;
SIGNAL \Selector44~10_combout\ : std_logic;
SIGNAL \Selector44~11_combout\ : std_logic;
SIGNAL \Selector44~12_combout\ : std_logic;
SIGNAL \Selector44~13_combout\ : std_logic;
SIGNAL \Selector44~14_combout\ : std_logic;
SIGNAL \Selector44~15_combout\ : std_logic;
SIGNAL \Selector44~18_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector43~18_combout\ : std_logic;
SIGNAL \Selector42~5_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \Selector41~2_combout\ : std_logic;
SIGNAL \Selector41~3_combout\ : std_logic;
SIGNAL \Selector41~4_combout\ : std_logic;
SIGNAL \Selector41~5_combout\ : std_logic;
SIGNAL \Selector41~6_combout\ : std_logic;
SIGNAL \Selector41~7_combout\ : std_logic;
SIGNAL \Selector41~8_combout\ : std_logic;
SIGNAL \Selector41~9_combout\ : std_logic;
SIGNAL \Selector40~14_combout\ : std_logic;
SIGNAL \Selector40~15_combout\ : std_logic;
SIGNAL \Selector40~16_combout\ : std_logic;
SIGNAL \Selector40~17_combout\ : std_logic;
SIGNAL \Selector40~18_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \Selector39~2_combout\ : std_logic;
SIGNAL \Selector39~3_combout\ : std_logic;
SIGNAL \Selector39~4_combout\ : std_logic;
SIGNAL \Selector39~5_combout\ : std_logic;
SIGNAL \Selector39~6_combout\ : std_logic;
SIGNAL \Selector39~7_combout\ : std_logic;
SIGNAL \Selector39~8_combout\ : std_logic;
SIGNAL \Selector39~9_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Selector37~4_combout\ : std_logic;
SIGNAL \Selector37~5_combout\ : std_logic;
SIGNAL \Selector37~14_combout\ : std_logic;
SIGNAL \Selector37~15_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector51~1_combout\ : std_logic;
SIGNAL \state~28_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \clk_count[17]~0_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.power_up~regout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \LessThan4~4_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \LessThan8~2_combout\ : std_logic;
SIGNAL \LessThan8~3_combout\ : std_logic;
SIGNAL \LessThan8~4_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \LessThan8~5_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.initialize~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \clk_count[17]~2_combout\ : std_logic;
SIGNAL \clk_count[17]~3_combout\ : std_logic;
SIGNAL \clk_count[17]~1_combout\ : std_logic;
SIGNAL \clk_count[17]~5_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \LessThan9~3_combout\ : std_logic;
SIGNAL \LessThan9~4_combout\ : std_logic;
SIGNAL \LessThan9~5_combout\ : std_logic;
SIGNAL \LessThan9~7_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Selector46~3_combout\ : std_logic;
SIGNAL \Selector46~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state~26_combout\ : std_logic;
SIGNAL \state~27_combout\ : std_logic;
SIGNAL \state.RESETLINE~regout\ : std_logic;
SIGNAL \Selector51~2_combout\ : std_logic;
SIGNAL \Selector51~3_combout\ : std_logic;
SIGNAL \line~regout\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.line1~regout\ : std_logic;
SIGNAL \clk_count[17]~4_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state.send~regout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \state.line2~regout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \rs~reg0_regout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan9~6_combout\ : std_logic;
SIGNAL \LessThan10~3_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \LessThan10~4_combout\ : std_logic;
SIGNAL \Selector45~3_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \LessThan9~2_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \LessThan12~1_combout\ : std_logic;
SIGNAL \LessThan12~2_combout\ : std_logic;
SIGNAL \Selector45~2_combout\ : std_logic;
SIGNAL \Selector45~4_combout\ : std_logic;
SIGNAL \Selector45~6_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \Selector45~7_combout\ : std_logic;
SIGNAL \Selector45~10_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan5~4_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \Selector45~13_combout\ : std_logic;
SIGNAL \Selector45~11_combout\ : std_logic;
SIGNAL \Selector45~12_combout\ : std_logic;
SIGNAL \e~reg0_regout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector44~2_combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \Selector44~3_combout\ : std_logic;
SIGNAL \lcd_data[0]~0_combout\ : std_logic;
SIGNAL \Selector44~21_combout\ : std_logic;
SIGNAL \Selector44~22_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector44~19_combout\ : std_logic;
SIGNAL \Selector44~16_combout\ : std_logic;
SIGNAL \Selector44~17_combout\ : std_logic;
SIGNAL \Selector44~20_combout\ : std_logic;
SIGNAL \Selector44~23_combout\ : std_logic;
SIGNAL \lcd_data[2]~7_combout\ : std_logic;
SIGNAL \LessThan6~4_combout\ : std_logic;
SIGNAL \lcd_data[2]~8_combout\ : std_logic;
SIGNAL \lcd_data[2]~9_combout\ : std_logic;
SIGNAL \lcd_data[0]~reg0_regout\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \Selector43~2_combout\ : std_logic;
SIGNAL \Selector43~3_combout\ : std_logic;
SIGNAL \Selector43~4_combout\ : std_logic;
SIGNAL \Selector43~5_combout\ : std_logic;
SIGNAL \Selector43~6_combout\ : std_logic;
SIGNAL \Selector43~7_combout\ : std_logic;
SIGNAL \Selector43~8_combout\ : std_logic;
SIGNAL \Selector43~9_combout\ : std_logic;
SIGNAL \Selector43~10_combout\ : std_logic;
SIGNAL \lcd_data[1]~1_combout\ : std_logic;
SIGNAL \Selector43~19_combout\ : std_logic;
SIGNAL \Selector43~13_combout\ : std_logic;
SIGNAL \Selector43~14_combout\ : std_logic;
SIGNAL \Selector43~15_combout\ : std_logic;
SIGNAL \Selector43~16_combout\ : std_logic;
SIGNAL \Selector43~17_combout\ : std_logic;
SIGNAL \Selector43~11_combout\ : std_logic;
SIGNAL \Selector43~12_combout\ : std_logic;
SIGNAL \Selector43~20_combout\ : std_logic;
SIGNAL \lcd_data[1]~reg0_regout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \Selector42~2_combout\ : std_logic;
SIGNAL \Selector42~6_combout\ : std_logic;
SIGNAL \Selector42~9_combout\ : std_logic;
SIGNAL \lcd_data[2]~10_combout\ : std_logic;
SIGNAL \Selector42~7_combout\ : std_logic;
SIGNAL \Selector42~8_combout\ : std_logic;
SIGNAL \lcd_data[2]~11_combout\ : std_logic;
SIGNAL \Selector42~3_combout\ : std_logic;
SIGNAL \Selector42~4_combout\ : std_logic;
SIGNAL \lcd_data[2]~12_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \lcd_data[2]~13_combout\ : std_logic;
SIGNAL \lcd_data[2]~2_combout\ : std_logic;
SIGNAL \lcd_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Selector42~17_combout\ : std_logic;
SIGNAL \Selector42~18_combout\ : std_logic;
SIGNAL \Selector42~14_combout\ : std_logic;
SIGNAL \Selector42~15_combout\ : std_logic;
SIGNAL \Selector42~12_combout\ : std_logic;
SIGNAL \Selector42~13_combout\ : std_logic;
SIGNAL \Selector42~16_combout\ : std_logic;
SIGNAL \Selector42~10_combout\ : std_logic;
SIGNAL \Selector42~11_combout\ : std_logic;
SIGNAL \Selector42~19_combout\ : std_logic;
SIGNAL \lcd_data[2]~reg0_regout\ : std_logic;
SIGNAL \lcd_data[3]~3_combout\ : std_logic;
SIGNAL \Selector41~10_combout\ : std_logic;
SIGNAL \Selector41~11_combout\ : std_logic;
SIGNAL \Selector41~17_combout\ : std_logic;
SIGNAL \Selector41~18_combout\ : std_logic;
SIGNAL \Selector41~12_combout\ : std_logic;
SIGNAL \Selector41~13_combout\ : std_logic;
SIGNAL \Selector41~14_combout\ : std_logic;
SIGNAL \Selector41~15_combout\ : std_logic;
SIGNAL \Selector41~16_combout\ : std_logic;
SIGNAL \Selector41~19_combout\ : std_logic;
SIGNAL \lcd_data[3]~reg0_regout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector40~1_combout\ : std_logic;
SIGNAL \Selector40~9_combout\ : std_logic;
SIGNAL \Selector40~10_combout\ : std_logic;
SIGNAL \Selector40~4_combout\ : std_logic;
SIGNAL \Selector40~5_combout\ : std_logic;
SIGNAL \Selector40~6_combout\ : std_logic;
SIGNAL \Selector40~7_combout\ : std_logic;
SIGNAL \Selector40~8_combout\ : std_logic;
SIGNAL \Selector40~2_combout\ : std_logic;
SIGNAL \Selector40~3_combout\ : std_logic;
SIGNAL \Selector40~11_combout\ : std_logic;
SIGNAL \lcd_data[4]~4_combout\ : std_logic;
SIGNAL \Selector40~19_combout\ : std_logic;
SIGNAL \Selector40~20_combout\ : std_logic;
SIGNAL \Selector40~12_combout\ : std_logic;
SIGNAL \Selector40~13_combout\ : std_logic;
SIGNAL \Selector40~21_combout\ : std_logic;
SIGNAL \lcd_data[4]~reg0_regout\ : std_logic;
SIGNAL \lcd_data[5]~5_combout\ : std_logic;
SIGNAL \Selector39~10_combout\ : std_logic;
SIGNAL \Selector39~11_combout\ : std_logic;
SIGNAL \Selector39~17_combout\ : std_logic;
SIGNAL \Selector39~18_combout\ : std_logic;
SIGNAL \Selector39~14_combout\ : std_logic;
SIGNAL \Selector39~15_combout\ : std_logic;
SIGNAL \Selector39~12_combout\ : std_logic;
SIGNAL \Selector39~13_combout\ : std_logic;
SIGNAL \Selector39~16_combout\ : std_logic;
SIGNAL \Selector39~19_combout\ : std_logic;
SIGNAL \lcd_data[5]~reg0_regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Selector38~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \Selector38~3_combout\ : std_logic;
SIGNAL \Selector38~4_combout\ : std_logic;
SIGNAL \lcd_data[6]~reg0_regout\ : std_logic;
SIGNAL \Selector37~7_combout\ : std_logic;
SIGNAL \Selector37~8_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \Selector37~3_combout\ : std_logic;
SIGNAL \Selector37~6_combout\ : std_logic;
SIGNAL \Selector37~9_combout\ : std_logic;
SIGNAL \lcd_data[7]~6_combout\ : std_logic;
SIGNAL \Selector37~10_combout\ : std_logic;
SIGNAL \Selector37~11_combout\ : std_logic;
SIGNAL \Selector37~12_combout\ : std_logic;
SIGNAL \Selector37~13_combout\ : std_logic;
SIGNAL \Selector37~16_combout\ : std_logic;
SIGNAL \Selector37~17_combout\ : std_logic;
SIGNAL \Selector37~18_combout\ : std_logic;
SIGNAL \Selector37~19_combout\ : std_logic;
SIGNAL \lcd_data[7]~reg0_regout\ : std_logic;
SIGNAL ptr : std_logic_vector(4 DOWNTO 0);
SIGNAL clk_count : std_logic_vector(31 DOWNTO 0);
SIGNAL \line2_buffer~combout\ : std_logic_vector(127 DOWNTO 0);
SIGNAL \line1_buffer~combout\ : std_logic_vector(127 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
rw <= ww_rw;
rs <= ww_rs;
e <= ww_e;
lcd_data <= ww_lcd_data;
ww_line1_buffer <= line1_buffer;
ww_line2_buffer <= line2_buffer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X60_Y32_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_count(1) & (!\Add0~1\)) # (!clk_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X60_Y32_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_count(3) & (!\Add0~5\)) # (!clk_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X60_Y31_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clk_count(18) & (\Add0~35\ $ (GND))) # (!clk_count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clk_count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCFF_X61_Y31_N25
\clk_count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(18));

-- Location: LCCOMB_X61_Y31_N16
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!clk_count(21) & (!clk_count(20) & ((!clk_count(19)) # (!clk_count(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(21),
	datab => clk_count(20),
	datac => clk_count(18),
	datad => clk_count(19),
	combout => \LessThan0~0_combout\);

-- Location: LCFF_X61_Y33_N15
\clk_count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(23));

-- Location: LCCOMB_X61_Y33_N10
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!clk_count(26) & (!clk_count(25) & (!clk_count(23) & !clk_count(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(26),
	datab => clk_count(25),
	datac => clk_count(23),
	datad => clk_count(24),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X61_Y32_N10
\LessThan10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan10~2_combout\ = (!clk_count(4) & (!clk_count(2) & !clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(4),
	datab => clk_count(2),
	datac => clk_count(3),
	combout => \LessThan10~2_combout\);

-- Location: LCCOMB_X61_Y32_N12
\LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (!clk_count(7) & (((!\LessThan10~3_combout\) # (!clk_count(4))) # (!clk_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datab => clk_count(7),
	datac => clk_count(4),
	datad => \LessThan10~3_combout\,
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X61_Y32_N14
\LessThan11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = ((!clk_count(9) & ((\LessThan11~0_combout\) # (!clk_count(8))))) # (!clk_count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(10),
	datab => clk_count(8),
	datac => clk_count(9),
	datad => \LessThan11~0_combout\,
	combout => \LessThan11~1_combout\);

-- Location: LCFF_X59_Y33_N11
\clk_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(1));

-- Location: LCCOMB_X59_Y32_N28
\LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\Add0~16_combout\ & (((!\Add0~14_combout\) # (!\Add0~12_combout\)) # (!\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~16_combout\,
	datad => \Add0~14_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X59_Y32_N14
\LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ((!\Add0~22_combout\) # (!\Add0~20_combout\)) # (!\Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~22_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X59_Y32_N16
\LessThan4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = ((!\Add0~24_combout\ & ((\LessThan4~1_combout\) # (\LessThan4~0_combout\)))) # (!\Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~24_combout\,
	datac => \LessThan4~1_combout\,
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X58_Y31_N28
\LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = (\LessThan4~2_combout\ & (\state~10_combout\ & (\state~14_combout\ & \LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \state~10_combout\,
	datac => \state~14_combout\,
	datad => \LessThan3~0_combout\,
	combout => \LessThan4~3_combout\);

-- Location: LCCOMB_X58_Y32_N16
\LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (!\Add0~6_combout\ & (!\Add0~12_combout\ & (!\Add0~10_combout\ & !\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~8_combout\,
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X58_Y32_N10
\LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = (\LessThan6~2_combout\ & (!\Add0~16_combout\ & (!\Add0~18_combout\ & !\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~2_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~14_combout\,
	combout => \LessThan6~3_combout\);

-- Location: LCCOMB_X58_Y31_N6
\Selector45~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~5_combout\ = (!\LessThan2~4_combout\ & (!\LessThan4~3_combout\ & ((\state~15_combout\) # (!\state~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~4_combout\,
	datab => \state~16_combout\,
	datac => \state~15_combout\,
	datad => \LessThan4~3_combout\,
	combout => \Selector45~5_combout\);

-- Location: LCCOMB_X59_Y33_N22
\Selector45~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~8_combout\ = (!\state.send~regout\ & (\state.initialize~regout\ & !\Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.send~regout\,
	datab => \state.initialize~regout\,
	datad => \Add0~60_combout\,
	combout => \Selector45~8_combout\);

-- Location: LCCOMB_X58_Y32_N0
\LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = ((!\Add0~10_combout\ & ((!\Add0~8_combout\) # (!\Add0~6_combout\)))) # (!\Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~8_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X58_Y32_N2
\LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (\Add0~16_combout\ & (\Add0~18_combout\ & ((\Add0~14_combout\) # (!\LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~18_combout\,
	datad => \LessThan3~1_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X58_Y32_N12
\LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (((!\Add0~20_combout\ & !\LessThan3~2_combout\)) # (!\Add0~22_combout\)) # (!\Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~22_combout\,
	datad => \LessThan3~2_combout\,
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X59_Y31_N18
\LessThan3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (\state~12_combout\ & (!\Add0~26_combout\ & (\LessThan3~0_combout\ & \state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~12_combout\,
	datab => \Add0~26_combout\,
	datac => \LessThan3~0_combout\,
	datad => \state~13_combout\,
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X59_Y31_N4
\LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (\state~11_combout\ & (\LessThan3~3_combout\ & (\state~10_combout\ & \LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~11_combout\,
	datab => \LessThan3~3_combout\,
	datac => \state~10_combout\,
	datad => \LessThan3~4_combout\,
	combout => \LessThan3~5_combout\);

-- Location: LCCOMB_X58_Y31_N24
\Selector45~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~9_combout\ = (\Selector45~8_combout\ & ((\LessThan1~2_combout\) # ((\LessThan3~5_combout\ & !\LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~5_combout\,
	datab => \LessThan2~4_combout\,
	datac => \LessThan1~2_combout\,
	datad => \Selector45~8_combout\,
	combout => \Selector45~9_combout\);

-- Location: LCCOMB_X59_Y32_N10
\LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!\Add0~20_combout\ & !\Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \Add0~22_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X58_Y32_N22
\LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = ((!\Add0~6_combout\ & (!\Add0~10_combout\ & !\Add0~8_combout\))) # (!\Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~8_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X59_Y32_N20
\LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = ((!\Add0~16_combout\ & ((\LessThan5~1_combout\) # (!\Add0~14_combout\)))) # (!\Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~16_combout\,
	datad => \LessThan5~1_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X59_Y32_N22
\LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (((\LessThan5~2_combout\ & \LessThan5~0_combout\)) # (!\Add0~24_combout\)) # (!\Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~24_combout\,
	datac => \LessThan5~2_combout\,
	datad => \LessThan5~0_combout\,
	combout => \LessThan5~3_combout\);

-- Location: LCCOMB_X58_Y33_N16
\Selector44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = ((\Add0~60_combout\) # (!\LessThan3~0_combout\)) # (!\LessThan4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~2_combout\,
	datac => \LessThan3~0_combout\,
	datad => \Add0~60_combout\,
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X64_Y25_N8
\Selector44~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~4_combout\ = (ptr(3) & (\line1_buffer~combout\(16) & ((ptr(2))))) # (!ptr(3) & (((\line1_buffer~combout\(80)) # (!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(16),
	datab => \line1_buffer~combout\(80),
	datac => ptr(3),
	datad => ptr(2),
	combout => \Selector44~4_combout\);

-- Location: LCCOMB_X64_Y25_N18
\Selector44~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~5_combout\ = (\Selector44~4_combout\ & (((\line1_buffer~combout\(112)) # (ptr(2))))) # (!\Selector44~4_combout\ & (\line1_buffer~combout\(48) & ((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(48),
	datab => \Selector44~4_combout\,
	datac => \line1_buffer~combout\(112),
	datad => ptr(2),
	combout => \Selector44~5_combout\);

-- Location: LCCOMB_X64_Y25_N12
\Selector44~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~6_combout\ = (ptr(3) & ((ptr(2) & ((\line1_buffer~combout\(8)))) # (!ptr(2) & (\line1_buffer~combout\(40))))) # (!ptr(3) & (((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(40),
	datab => \line1_buffer~combout\(8),
	datac => ptr(3),
	datad => ptr(2),
	combout => \Selector44~6_combout\);

-- Location: LCCOMB_X64_Y25_N6
\Selector44~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~7_combout\ = (\Selector44~6_combout\ & ((\line1_buffer~combout\(104)) # ((ptr(3))))) # (!\Selector44~6_combout\ & (((!ptr(3) & \line1_buffer~combout\(72)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~6_combout\,
	datab => \line1_buffer~combout\(104),
	datac => ptr(3),
	datad => \line1_buffer~combout\(72),
	combout => \Selector44~7_combout\);

-- Location: LCCOMB_X64_Y25_N16
\Selector44~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~8_combout\ = (ptr(3) & (((\line1_buffer~combout\(0) & ptr(2))))) # (!ptr(3) & ((\line1_buffer~combout\(64)) # ((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(64),
	datab => \line1_buffer~combout\(0),
	datac => ptr(3),
	datad => ptr(2),
	combout => \Selector44~8_combout\);

-- Location: LCCOMB_X64_Y25_N2
\Selector44~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~9_combout\ = (\Selector44~8_combout\ & (((\line1_buffer~combout\(96)) # (ptr(2))))) # (!\Selector44~8_combout\ & (\line1_buffer~combout\(32) & ((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~8_combout\,
	datab => \line1_buffer~combout\(32),
	datac => \line1_buffer~combout\(96),
	datad => ptr(2),
	combout => \Selector44~9_combout\);

-- Location: LCCOMB_X64_Y25_N4
\Selector44~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~10_combout\ = (ptr(0) & (ptr(1) & (\Selector44~9_combout\))) # (!ptr(0) & (((\Selector44~7_combout\)) # (!ptr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => ptr(1),
	datac => \Selector44~9_combout\,
	datad => \Selector44~7_combout\,
	combout => \Selector44~10_combout\);

-- Location: LCCOMB_X64_Y25_N14
\Selector44~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~11_combout\ = (ptr(3) & ((ptr(2) & ((\line1_buffer~combout\(24)))) # (!ptr(2) & (\line1_buffer~combout\(56))))) # (!ptr(3) & (((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(56),
	datab => \line1_buffer~combout\(24),
	datac => ptr(3),
	datad => ptr(2),
	combout => \Selector44~11_combout\);

-- Location: LCCOMB_X64_Y25_N0
\Selector44~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~12_combout\ = (ptr(3) & (\Selector44~11_combout\)) # (!ptr(3) & ((\Selector44~11_combout\ & (\line1_buffer~combout\(120))) # (!\Selector44~11_combout\ & ((\line1_buffer~combout\(88))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \Selector44~11_combout\,
	datac => \line1_buffer~combout\(120),
	datad => \line1_buffer~combout\(88),
	combout => \Selector44~12_combout\);

-- Location: LCCOMB_X64_Y25_N26
\Selector44~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~13_combout\ = (ptr(1) & (((\Selector44~10_combout\)))) # (!ptr(1) & ((\Selector44~10_combout\ & ((\Selector44~12_combout\))) # (!\Selector44~10_combout\ & (\Selector44~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \Selector44~5_combout\,
	datac => \Selector44~10_combout\,
	datad => \Selector44~12_combout\,
	combout => \Selector44~13_combout\);

-- Location: LCCOMB_X64_Y34_N0
\Selector44~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~14_combout\ = (ptr(0) & (\line2_buffer~combout\(64) & (ptr(1)))) # (!ptr(0) & (((\line2_buffer~combout\(72)) # (!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => \line2_buffer~combout\(64),
	datac => ptr(1),
	datad => \line2_buffer~combout\(72),
	combout => \Selector44~14_combout\);

-- Location: LCCOMB_X64_Y34_N10
\Selector44~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~15_combout\ = (ptr(1) & (((\Selector44~14_combout\)))) # (!ptr(1) & ((\Selector44~14_combout\ & ((\line2_buffer~combout\(88)))) # (!\Selector44~14_combout\ & (\line2_buffer~combout\(80)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(80),
	datab => ptr(1),
	datac => \line2_buffer~combout\(88),
	datad => \Selector44~14_combout\,
	combout => \Selector44~15_combout\);

-- Location: LCCOMB_X64_Y34_N16
\Selector44~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~18_combout\ = (ptr(0) & (((ptr(1) & \line2_buffer~combout\(0))))) # (!ptr(0) & ((\line2_buffer~combout\(8)) # ((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => \line2_buffer~combout\(8),
	datac => ptr(1),
	datad => \line2_buffer~combout\(0),
	combout => \Selector44~18_combout\);

-- Location: LCCOMB_X58_Y33_N24
\Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\Add0~62_combout\) # (((\state~28_combout\) # (!\Selector42~0_combout\)) # (!\LessThan7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \LessThan7~2_combout\,
	datac => \Selector42~0_combout\,
	datad => \state~28_combout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X64_Y22_N6
\Selector43~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~18_combout\ = (ptr(1) & ((ptr(0) & (\line2_buffer~combout\(97))) # (!ptr(0) & ((\line2_buffer~combout\(105)))))) # (!ptr(1) & (((!ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(97),
	datab => ptr(1),
	datac => ptr(0),
	datad => \line2_buffer~combout\(105),
	combout => \Selector43~18_combout\);

-- Location: LCCOMB_X64_Y13_N20
\Selector42~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~5_combout\ = (ptr(2) & ((ptr(3) & (\line1_buffer~combout\(2))) # (!ptr(3) & ((\line1_buffer~combout\(66)))))) # (!ptr(2) & (((!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(2),
	datab => \line1_buffer~combout\(66),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector42~5_combout\);

-- Location: LCCOMB_X64_Y11_N24
\Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (ptr(3) & (\line1_buffer~combout\(11) & ((ptr(2))))) # (!ptr(3) & (((\line1_buffer~combout\(75)) # (!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \line1_buffer~combout\(11),
	datac => \line1_buffer~combout\(75),
	datad => ptr(2),
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X64_Y11_N10
\Selector41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = (\Selector41~0_combout\ & (((\line1_buffer~combout\(107)) # (ptr(2))))) # (!\Selector41~0_combout\ & (\line1_buffer~combout\(43) & ((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(43),
	datab => \line1_buffer~combout\(107),
	datac => \Selector41~0_combout\,
	datad => ptr(2),
	combout => \Selector41~1_combout\);

-- Location: LCCOMB_X64_Y11_N28
\Selector41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~2_combout\ = (ptr(2) & (\line1_buffer~combout\(19) & (ptr(3)))) # (!ptr(2) & (((\line1_buffer~combout\(51)) # (!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(19),
	datab => ptr(2),
	datac => ptr(3),
	datad => \line1_buffer~combout\(51),
	combout => \Selector41~2_combout\);

-- Location: LCCOMB_X64_Y11_N30
\Selector41~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~3_combout\ = (ptr(3) & (((\Selector41~2_combout\)))) # (!ptr(3) & ((\Selector41~2_combout\ & (\line1_buffer~combout\(115))) # (!\Selector41~2_combout\ & ((\line1_buffer~combout\(83))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(115),
	datab => \line1_buffer~combout\(83),
	datac => ptr(3),
	datad => \Selector41~2_combout\,
	combout => \Selector41~3_combout\);

-- Location: LCCOMB_X64_Y11_N16
\Selector41~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~4_combout\ = (ptr(3) & ((ptr(2) & (\line1_buffer~combout\(3))) # (!ptr(2) & ((\line1_buffer~combout\(35)))))) # (!ptr(3) & (((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(3),
	datab => \line1_buffer~combout\(35),
	datac => ptr(3),
	datad => ptr(2),
	combout => \Selector41~4_combout\);

-- Location: LCCOMB_X64_Y11_N2
\Selector41~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~5_combout\ = (ptr(3) & (((\Selector41~4_combout\)))) # (!ptr(3) & ((\Selector41~4_combout\ & (\line1_buffer~combout\(99))) # (!\Selector41~4_combout\ & ((\line1_buffer~combout\(67))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \line1_buffer~combout\(99),
	datac => \Selector41~4_combout\,
	datad => \line1_buffer~combout\(67),
	combout => \Selector41~5_combout\);

-- Location: LCCOMB_X64_Y11_N12
\Selector41~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~6_combout\ = (ptr(0) & ((ptr(1) & (\Selector41~5_combout\)) # (!ptr(1) & ((\Selector41~3_combout\))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => \Selector41~5_combout\,
	datac => ptr(1),
	datad => \Selector41~3_combout\,
	combout => \Selector41~6_combout\);

-- Location: LCCOMB_X64_Y11_N6
\Selector41~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~7_combout\ = (ptr(3) & (\line1_buffer~combout\(27) & ((ptr(2))))) # (!ptr(3) & (((\line1_buffer~combout\(91)) # (!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(27),
	datab => \line1_buffer~combout\(91),
	datac => ptr(3),
	datad => ptr(2),
	combout => \Selector41~7_combout\);

-- Location: LCCOMB_X64_Y11_N8
\Selector41~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~8_combout\ = (\Selector41~7_combout\ & (((\line1_buffer~combout\(123)) # (ptr(2))))) # (!\Selector41~7_combout\ & (\line1_buffer~combout\(59) & ((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~7_combout\,
	datab => \line1_buffer~combout\(59),
	datac => \line1_buffer~combout\(123),
	datad => ptr(2),
	combout => \Selector41~8_combout\);

-- Location: LCCOMB_X64_Y11_N18
\Selector41~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~9_combout\ = (ptr(0) & (((\Selector41~6_combout\)))) # (!ptr(0) & ((\Selector41~6_combout\ & ((\Selector41~8_combout\))) # (!\Selector41~6_combout\ & (\Selector41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~1_combout\,
	datab => ptr(0),
	datac => \Selector41~8_combout\,
	datad => \Selector41~6_combout\,
	combout => \Selector41~9_combout\);

-- Location: LCCOMB_X23_Y35_N24
\Selector40~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~14_combout\ = (ptr(1) & (\line2_buffer~combout\(36) & (ptr(0)))) # (!ptr(1) & (((\line2_buffer~combout\(52)) # (!ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \line2_buffer~combout\(36),
	datac => ptr(0),
	datad => \line2_buffer~combout\(52),
	combout => \Selector40~14_combout\);

-- Location: LCCOMB_X23_Y35_N18
\Selector40~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~15_combout\ = (ptr(0) & (((\Selector40~14_combout\)))) # (!ptr(0) & ((\Selector40~14_combout\ & (\line2_buffer~combout\(60))) # (!\Selector40~14_combout\ & ((\line2_buffer~combout\(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(60),
	datab => ptr(0),
	datac => \Selector40~14_combout\,
	datad => \line2_buffer~combout\(44),
	combout => \Selector40~15_combout\);

-- Location: LCCOMB_X23_Y35_N28
\Selector40~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~16_combout\ = (ptr(0) & (\line2_buffer~combout\(4) & ((ptr(1))))) # (!ptr(0) & (((\line2_buffer~combout\(12)) # (!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(4),
	datab => ptr(0),
	datac => \line2_buffer~combout\(12),
	datad => ptr(1),
	combout => \Selector40~16_combout\);

-- Location: LCCOMB_X23_Y35_N14
\Selector40~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~17_combout\ = (ptr(1) & (((\Selector40~16_combout\)))) # (!ptr(1) & ((\Selector40~16_combout\ & (\line2_buffer~combout\(28))) # (!\Selector40~16_combout\ & ((\line2_buffer~combout\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(28),
	datab => \line2_buffer~combout\(20),
	datac => ptr(1),
	datad => \Selector40~16_combout\,
	combout => \Selector40~17_combout\);

-- Location: LCCOMB_X23_Y35_N16
\Selector40~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~18_combout\ = (ptr(2) & (ptr(3) & (\Selector40~17_combout\))) # (!ptr(2) & (((\Selector40~15_combout\)) # (!ptr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => ptr(3),
	datac => \Selector40~17_combout\,
	datad => \Selector40~15_combout\,
	combout => \Selector40~18_combout\);

-- Location: LCCOMB_X64_Y22_N12
\Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (ptr(3) & (\line1_buffer~combout\(13) & ((ptr(2))))) # (!ptr(3) & (((\line1_buffer~combout\(77)) # (!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \line1_buffer~combout\(13),
	datac => \line1_buffer~combout\(77),
	datad => ptr(2),
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X64_Y22_N30
\Selector39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (ptr(2) & (((\Selector39~0_combout\)))) # (!ptr(2) & ((\Selector39~0_combout\ & (\line1_buffer~combout\(109))) # (!\Selector39~0_combout\ & ((\line1_buffer~combout\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => \line1_buffer~combout\(109),
	datac => \line1_buffer~combout\(45),
	datad => \Selector39~0_combout\,
	combout => \Selector39~1_combout\);

-- Location: LCCOMB_X64_Y22_N16
\Selector39~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~2_combout\ = (ptr(3) & ((ptr(2) & ((\line1_buffer~combout\(21)))) # (!ptr(2) & (\line1_buffer~combout\(53))))) # (!ptr(3) & (((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \line1_buffer~combout\(53),
	datac => \line1_buffer~combout\(21),
	datad => ptr(2),
	combout => \Selector39~2_combout\);

-- Location: LCCOMB_X64_Y22_N26
\Selector39~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~3_combout\ = (ptr(3) & (((\Selector39~2_combout\)))) # (!ptr(3) & ((\Selector39~2_combout\ & ((\line1_buffer~combout\(117)))) # (!\Selector39~2_combout\ & (\line1_buffer~combout\(85)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \line1_buffer~combout\(85),
	datac => \Selector39~2_combout\,
	datad => \line1_buffer~combout\(117),
	combout => \Selector39~3_combout\);

-- Location: LCCOMB_X64_Y22_N28
\Selector39~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~4_combout\ = (ptr(3) & ((ptr(2) & (\line1_buffer~combout\(5))) # (!ptr(2) & ((\line1_buffer~combout\(37)))))) # (!ptr(3) & (((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(5),
	datab => \line1_buffer~combout\(37),
	datac => ptr(3),
	datad => ptr(2),
	combout => \Selector39~4_combout\);

-- Location: LCCOMB_X64_Y22_N14
\Selector39~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~5_combout\ = (\Selector39~4_combout\ & ((\line1_buffer~combout\(101)) # ((ptr(3))))) # (!\Selector39~4_combout\ & (((!ptr(3) & \line1_buffer~combout\(69)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(101),
	datab => \Selector39~4_combout\,
	datac => ptr(3),
	datad => \line1_buffer~combout\(69),
	combout => \Selector39~5_combout\);

-- Location: LCCOMB_X64_Y22_N24
\Selector39~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~6_combout\ = (ptr(0) & ((ptr(1) & (\Selector39~5_combout\)) # (!ptr(1) & ((\Selector39~3_combout\))))) # (!ptr(0) & (!ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => ptr(1),
	datac => \Selector39~5_combout\,
	datad => \Selector39~3_combout\,
	combout => \Selector39~6_combout\);

-- Location: LCCOMB_X64_Y22_N2
\Selector39~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~7_combout\ = (ptr(3) & (((\line1_buffer~combout\(29) & ptr(2))))) # (!ptr(3) & ((\line1_buffer~combout\(93)) # ((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(93),
	datab => \line1_buffer~combout\(29),
	datac => ptr(3),
	datad => ptr(2),
	combout => \Selector39~7_combout\);

-- Location: LCCOMB_X64_Y22_N20
\Selector39~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~8_combout\ = (ptr(2) & (\Selector39~7_combout\)) # (!ptr(2) & ((\Selector39~7_combout\ & (\line1_buffer~combout\(125))) # (!\Selector39~7_combout\ & ((\line1_buffer~combout\(61))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => \Selector39~7_combout\,
	datac => \line1_buffer~combout\(125),
	datad => \line1_buffer~combout\(61),
	combout => \Selector39~8_combout\);

-- Location: LCCOMB_X64_Y22_N22
\Selector39~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~9_combout\ = (ptr(0) & (((\Selector39~6_combout\)))) # (!ptr(0) & ((\Selector39~6_combout\ & (\Selector39~8_combout\)) # (!\Selector39~6_combout\ & ((\Selector39~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~8_combout\,
	datab => ptr(0),
	datac => \Selector39~6_combout\,
	datad => \Selector39~1_combout\,
	combout => \Selector39~9_combout\);

-- Location: LCCOMB_X64_Y25_N24
\Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (ptr(3) & ((ptr(2) & (\line1_buffer~combout\(30))) # (!ptr(2) & ((\line1_buffer~combout\(62)))))) # (!ptr(3) & (((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(30),
	datab => \line1_buffer~combout\(62),
	datac => ptr(3),
	datad => ptr(2),
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X64_Y25_N10
\Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (ptr(3) & (((\Mux1~7_combout\)))) # (!ptr(3) & ((\Mux1~7_combout\ & ((\line1_buffer~combout\(126)))) # (!\Mux1~7_combout\ & (\line1_buffer~combout\(94)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \line1_buffer~combout\(94),
	datac => \Mux1~7_combout\,
	datad => \line1_buffer~combout\(126),
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X8_Y33_N18
\Selector37~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~4_combout\ = (ptr(2) & (\line1_buffer~combout\(7) & ((ptr(3))))) # (!ptr(2) & (((\line1_buffer~combout\(39)) # (!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(7),
	datab => \line1_buffer~combout\(39),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector37~4_combout\);

-- Location: LCCOMB_X8_Y33_N12
\Selector37~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~5_combout\ = (ptr(3) & (((\Selector37~4_combout\)))) # (!ptr(3) & ((\Selector37~4_combout\ & (\line1_buffer~combout\(103))) # (!\Selector37~4_combout\ & ((\line1_buffer~combout\(71))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(103),
	datab => \line1_buffer~combout\(71),
	datac => ptr(3),
	datad => \Selector37~4_combout\,
	combout => \Selector37~5_combout\);

-- Location: LCCOMB_X11_Y35_N4
\Selector37~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~14_combout\ = (ptr(0) & ((ptr(1) & (\line2_buffer~combout\(7))) # (!ptr(1) & ((\line2_buffer~combout\(23)))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(7),
	datab => \line2_buffer~combout\(23),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector37~14_combout\);

-- Location: LCCOMB_X11_Y35_N6
\Selector37~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~15_combout\ = (ptr(0) & (((\Selector37~14_combout\)))) # (!ptr(0) & ((\Selector37~14_combout\ & (\line2_buffer~combout\(31))) # (!\Selector37~14_combout\ & ((\line2_buffer~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(31),
	datab => \line2_buffer~combout\(15),
	datac => ptr(0),
	datad => \Selector37~14_combout\,
	combout => \Selector37~15_combout\);

-- Location: LCCOMB_X61_Y31_N24
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Add0~36_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X61_Y33_N14
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add0~46_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~46_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X59_Y33_N10
\Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\Add0~2_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X60_Y33_N12
\Selector51~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector51~1_combout\ = (\state.line1~regout\) # ((\Selector51~0_combout\ & (\Equal0~1_combout\ $ (!\line~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.line1~regout\,
	datab => \Selector51~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \line~regout\,
	combout => \Selector51~1_combout\);

-- Location: LCCOMB_X58_Y33_N6
\state~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~28_combout\ = (!\Add0~56_combout\ & (!\Add0~58_combout\ & \state~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \Add0~58_combout\,
	datac => \state~18_combout\,
	combout => \state~28_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[48]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(48),
	combout => \line1_buffer~combout\(48));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[80]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(80),
	combout => \line1_buffer~combout\(80));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[16]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(16),
	combout => \line1_buffer~combout\(16));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[112]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(112),
	combout => \line1_buffer~combout\(112));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[72]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(72),
	combout => \line1_buffer~combout\(72));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[40]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(40),
	combout => \line1_buffer~combout\(40));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[8]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(8),
	combout => \line1_buffer~combout\(8));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[104]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(104),
	combout => \line1_buffer~combout\(104));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[32]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(32),
	combout => \line1_buffer~combout\(32));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[64]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(64),
	combout => \line1_buffer~combout\(64));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[0]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(0),
	combout => \line1_buffer~combout\(0));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[96]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(96),
	combout => \line1_buffer~combout\(96));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[88]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(88),
	combout => \line1_buffer~combout\(88));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[56]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(56),
	combout => \line1_buffer~combout\(56));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[24]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(24),
	combout => \line1_buffer~combout\(24));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[120]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(120),
	combout => \line1_buffer~combout\(120));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[80]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(80),
	combout => \line2_buffer~combout\(80));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[72]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(72),
	combout => \line2_buffer~combout\(72));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[64]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(64),
	combout => \line2_buffer~combout\(64));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[88]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(88),
	combout => \line2_buffer~combout\(88));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[8]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(8),
	combout => \line2_buffer~combout\(8));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[0]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(0),
	combout => \line2_buffer~combout\(0));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[9]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(9),
	combout => \line1_buffer~combout\(9));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[105]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(105),
	combout => \line1_buffer~combout\(105));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[17]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(17),
	combout => \line1_buffer~combout\(17));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[65]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(65),
	combout => \line1_buffer~combout\(65));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[33]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(33),
	combout => \line1_buffer~combout\(33));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[25]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(25),
	combout => \line1_buffer~combout\(25));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[121]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(121),
	combout => \line1_buffer~combout\(121));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[49]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(49),
	combout => \line2_buffer~combout\(49));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[33]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(33),
	combout => \line2_buffer~combout\(33));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[81]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(81),
	combout => \line2_buffer~combout\(81));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[89]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(89),
	combout => \line2_buffer~combout\(89));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[9]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(9),
	combout => \line2_buffer~combout\(9));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[1]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(1),
	combout => \line2_buffer~combout\(1));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[105]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(105),
	combout => \line2_buffer~combout\(105));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[97]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(97),
	combout => \line2_buffer~combout\(97));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[42]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(42),
	combout => \line1_buffer~combout\(42));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[66]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(66),
	combout => \line1_buffer~combout\(66));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[2]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(2),
	combout => \line1_buffer~combout\(2));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[26]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(26),
	combout => \line1_buffer~combout\(26));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[122]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(122),
	combout => \line1_buffer~combout\(122));

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[50]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(50),
	combout => \line1_buffer~combout\(50));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[82]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(82),
	combout => \line1_buffer~combout\(82));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[82]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(82),
	combout => \line2_buffer~combout\(82));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[50]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(50),
	combout => \line2_buffer~combout\(50));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[58]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(58),
	combout => \line2_buffer~combout\(58));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[18]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(18),
	combout => \line2_buffer~combout\(18));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[2]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(2),
	combout => \line2_buffer~combout\(2));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[106]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(106),
	combout => \line2_buffer~combout\(106));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[43]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(43),
	combout => \line1_buffer~combout\(43));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[75]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(75),
	combout => \line1_buffer~combout\(75));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[11]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(11),
	combout => \line1_buffer~combout\(11));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[107]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(107),
	combout => \line1_buffer~combout\(107));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[83]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(83),
	combout => \line1_buffer~combout\(83));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[51]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(51),
	combout => \line1_buffer~combout\(51));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[19]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(19),
	combout => \line1_buffer~combout\(19));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[115]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(115),
	combout => \line1_buffer~combout\(115));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[67]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(67),
	combout => \line1_buffer~combout\(67));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[35]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(35),
	combout => \line1_buffer~combout\(35));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[3]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(3),
	combout => \line1_buffer~combout\(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[99]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(99),
	combout => \line1_buffer~combout\(99));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[59]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(59),
	combout => \line1_buffer~combout\(59));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[91]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(91),
	combout => \line1_buffer~combout\(91));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[27]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(27),
	combout => \line1_buffer~combout\(27));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[123]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(123),
	combout => \line1_buffer~combout\(123));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[35]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(35),
	combout => \line2_buffer~combout\(35));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[75]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(75),
	combout => \line2_buffer~combout\(75));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[67]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(67),
	combout => \line2_buffer~combout\(67));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[19]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(19),
	combout => \line2_buffer~combout\(19));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[27]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(27),
	combout => \line2_buffer~combout\(27));

-- Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[99]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(99),
	combout => \line2_buffer~combout\(99));

-- Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[123]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(123),
	combout => \line2_buffer~combout\(123));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[84]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(84),
	combout => \line1_buffer~combout\(84));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[116]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(116),
	combout => \line1_buffer~combout\(116));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[44]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(44),
	combout => \line1_buffer~combout\(44));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[108]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(108),
	combout => \line1_buffer~combout\(108));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[4]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(4),
	combout => \line1_buffer~combout\(4));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[28]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(28),
	combout => \line1_buffer~combout\(28));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[124]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(124),
	combout => \line1_buffer~combout\(124));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[76]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(76),
	combout => \line2_buffer~combout\(76));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[92]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(92),
	combout => \line2_buffer~combout\(92));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[44]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(44),
	combout => \line2_buffer~combout\(44));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[52]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(52),
	combout => \line2_buffer~combout\(52));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[36]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(36),
	combout => \line2_buffer~combout\(36));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[60]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(60),
	combout => \line2_buffer~combout\(60));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[20]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(20),
	combout => \line2_buffer~combout\(20));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[12]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(12),
	combout => \line2_buffer~combout\(12));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[4]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(4),
	combout => \line2_buffer~combout\(4));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[28]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(28),
	combout => \line2_buffer~combout\(28));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[116]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(116),
	combout => \line2_buffer~combout\(116));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[124]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(124),
	combout => \line2_buffer~combout\(124));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[45]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(45),
	combout => \line1_buffer~combout\(45));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[77]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(77),
	combout => \line1_buffer~combout\(77));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[13]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(13),
	combout => \line1_buffer~combout\(13));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[109]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(109),
	combout => \line1_buffer~combout\(109));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[85]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(85),
	combout => \line1_buffer~combout\(85));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[53]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(53),
	combout => \line1_buffer~combout\(53));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[21]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(21),
	combout => \line1_buffer~combout\(21));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[117]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(117),
	combout => \line1_buffer~combout\(117));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[69]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(69),
	combout => \line1_buffer~combout\(69));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[37]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(37),
	combout => \line1_buffer~combout\(37));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[5]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(5),
	combout => \line1_buffer~combout\(5));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[101]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(101),
	combout => \line1_buffer~combout\(101));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[61]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(61),
	combout => \line1_buffer~combout\(61));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[93]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(93),
	combout => \line1_buffer~combout\(93));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[29]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(29),
	combout => \line1_buffer~combout\(29));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[125]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(125),
	combout => \line1_buffer~combout\(125));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[53]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(53),
	combout => \line2_buffer~combout\(53));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[45]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(45),
	combout => \line2_buffer~combout\(45));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[69]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(69),
	combout => \line2_buffer~combout\(69));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[93]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(93),
	combout => \line2_buffer~combout\(93));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[5]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(5),
	combout => \line2_buffer~combout\(5));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[29]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(29),
	combout => \line2_buffer~combout\(29));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[109]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(109),
	combout => \line2_buffer~combout\(109));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[125]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(125),
	combout => \line2_buffer~combout\(125));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[46]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(46),
	combout => \line2_buffer~combout\(46));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[110]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(110),
	combout => \line2_buffer~combout\(110));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[102]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(102),
	combout => \line2_buffer~combout\(102));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[54]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(54),
	combout => \line1_buffer~combout\(54));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[14]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(14),
	combout => \line1_buffer~combout\(14));

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[38]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(38),
	combout => \line1_buffer~combout\(38));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[6]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(6),
	combout => \line1_buffer~combout\(6));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[94]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(94),
	combout => \line1_buffer~combout\(94));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[62]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(62),
	combout => \line1_buffer~combout\(62));

-- Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[30]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(30),
	combout => \line1_buffer~combout\(30));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[126]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(126),
	combout => \line1_buffer~combout\(126));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[15]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(15),
	combout => \line1_buffer~combout\(15));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[87]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(87),
	combout => \line1_buffer~combout\(87));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[23]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(23),
	combout => \line1_buffer~combout\(23));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[71]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(71),
	combout => \line1_buffer~combout\(71));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[39]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(39),
	combout => \line1_buffer~combout\(39));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[7]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(7),
	combout => \line1_buffer~combout\(7));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[103]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(103),
	combout => \line1_buffer~combout\(103));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[63]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(63),
	combout => \line1_buffer~combout\(63));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[95]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(95),
	combout => \line1_buffer~combout\(95));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[47]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(47),
	combout => \line2_buffer~combout\(47));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[63]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(63),
	combout => \line2_buffer~combout\(63));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[79]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(79),
	combout => \line2_buffer~combout\(79));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[71]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(71),
	combout => \line2_buffer~combout\(71));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[15]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(15),
	combout => \line2_buffer~combout\(15));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[23]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(23),
	combout => \line2_buffer~combout\(23));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[7]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(7),
	combout => \line2_buffer~combout\(7));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[31]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(31),
	combout => \line2_buffer~combout\(31));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[111]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(111),
	combout => \line2_buffer~combout\(111));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[127]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(127),
	combout => \line2_buffer~combout\(127));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
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
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X57_Y33_N8
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ptr(0) $ (GND)
-- \Add1~1\ = CARRY(!ptr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ptr(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X56_Y33_N24
\Selector50~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (!\Add1~0_combout\) # (!\state.send~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.send~regout\,
	datac => \Add1~0_combout\,
	combout => \Selector50~1_combout\);

-- Location: LCCOMB_X60_Y33_N2
\clk_count[17]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_count[17]~0_combout\ = (\state.send~regout\ & \LessThan9~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.send~regout\,
	datad => \LessThan9~7_combout\,
	combout => \clk_count[17]~0_combout\);

-- Location: LCCOMB_X60_Y31_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clk_count(22) & (\Add0~43\ $ (GND))) # (!clk_count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clk_count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X60_Y31_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (clk_count(23) & (!\Add0~45\)) # (!clk_count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!clk_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X60_Y31_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (clk_count(24) & (\Add0~47\ $ (GND))) # (!clk_count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((clk_count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X61_Y31_N8
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Add0~48_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~48_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X61_Y31_N9
\clk_count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(24));

-- Location: LCCOMB_X60_Y31_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (clk_count(25) & (!\Add0~49\)) # (!clk_count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!clk_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X61_Y33_N8
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Add0~50_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~50_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X61_Y33_N9
\clk_count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(25));

-- Location: LCCOMB_X60_Y31_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (clk_count(26) & (\Add0~51\ $ (GND))) # (!clk_count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((clk_count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X61_Y31_N10
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Add0~52_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~52_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X61_Y31_N11
\clk_count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(26));

-- Location: LCCOMB_X60_Y31_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (clk_count(27) & (!\Add0~53\)) # (!clk_count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!clk_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X59_Y33_N18
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Add0~54_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~54_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X59_Y33_N19
\clk_count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(27));

-- Location: LCCOMB_X60_Y31_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (clk_count(28) & (\Add0~55\ $ (GND))) # (!clk_count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((clk_count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X59_Y33_N12
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Add0~56_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~56_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X59_Y33_N13
\clk_count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(28));

-- Location: LCCOMB_X60_Y31_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (clk_count(29) & (!\Add0~57\)) # (!clk_count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!clk_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X59_Y33_N30
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Add0~58_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~58_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X59_Y33_N31
\clk_count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(29));

-- Location: LCCOMB_X59_Y33_N24
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Add0~60_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X59_Y33_N25
\clk_count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(30));

-- Location: LCCOMB_X59_Y33_N2
\LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!clk_count(28) & (!clk_count(29) & (!clk_count(30) & !clk_count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(28),
	datab => clk_count(29),
	datac => clk_count(30),
	datad => clk_count(27),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X61_Y31_N26
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\Add0~26_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCFF_X61_Y31_N27
\clk_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(13));

-- Location: LCCOMB_X61_Y32_N8
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\Add0~14_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector24~0_combout\);

-- Location: LCFF_X61_Y32_N9
\clk_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(7));

-- Location: LCCOMB_X59_Y32_N26
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\Add0~6_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector28~0_combout\);

-- Location: LCFF_X59_Y32_N27
\clk_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(3));

-- Location: LCCOMB_X60_Y32_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_count(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X59_Y33_N4
\Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\Add0~0_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector31~0_combout\);

-- Location: LCFF_X59_Y33_N5
\clk_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(0));

-- Location: LCCOMB_X60_Y32_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_count(2) & (\Add0~3\ $ (GND))) # (!clk_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X60_Y32_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_count(4) & (\Add0~7\ $ (GND))) # (!clk_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X59_Y33_N6
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\Add0~8_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector27~0_combout\);

-- Location: LCFF_X59_Y33_N7
\clk_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(4));

-- Location: LCCOMB_X60_Y32_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_count(5) & (!\Add0~9\)) # (!clk_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X60_Y32_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_count(6) & (\Add0~11\ $ (GND))) # (!clk_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X59_Y32_N24
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\Add0~12_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector25~0_combout\);

-- Location: LCFF_X59_Y32_N25
\clk_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(6));

-- Location: LCCOMB_X60_Y32_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_count(7) & (!\Add0~13\)) # (!clk_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X60_Y32_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_count(8) & (\Add0~15\ $ (GND))) # (!clk_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X61_Y32_N18
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\Add0~16_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCFF_X61_Y32_N19
\clk_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(8));

-- Location: LCCOMB_X60_Y32_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_count(9) & (!\Add0~17\)) # (!clk_count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X61_Y32_N20
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\Add0~18_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector22~0_combout\);

-- Location: LCFF_X61_Y32_N21
\clk_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(9));

-- Location: LCCOMB_X60_Y32_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_count(10) & (\Add0~19\ $ (GND))) # (!clk_count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X59_Y32_N18
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\Add0~20_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector21~0_combout\);

-- Location: LCFF_X59_Y32_N19
\clk_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(10));

-- Location: LCCOMB_X60_Y32_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_count(11) & (!\Add0~21\)) # (!clk_count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X60_Y32_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clk_count(12) & (\Add0~23\ $ (GND))) # (!clk_count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clk_count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X59_Y32_N6
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\Add0~24_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector19~0_combout\);

-- Location: LCFF_X59_Y32_N7
\clk_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(12));

-- Location: LCCOMB_X60_Y32_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clk_count(13) & (!\Add0~25\)) # (!clk_count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clk_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X60_Y32_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_count(14) & (\Add0~27\ $ (GND))) # (!clk_count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X61_Y31_N4
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Add0~28_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCFF_X61_Y31_N5
\clk_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(14));

-- Location: LCCOMB_X59_Y32_N12
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Add0~22_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCFF_X59_Y32_N13
\clk_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(11));

-- Location: LCCOMB_X61_Y32_N30
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!clk_count(6) & !clk_count(7))) # (!clk_count(8))) # (!clk_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(9),
	datab => clk_count(6),
	datac => clk_count(7),
	datad => clk_count(8),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X61_Y32_N0
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!clk_count(10) & \LessThan0~1_combout\)) # (!clk_count(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(11),
	datac => clk_count(10),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X61_Y33_N16
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((!clk_count(12) & (!clk_count(13) & \LessThan0~2_combout\))) # (!clk_count(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(12),
	datab => clk_count(14),
	datac => clk_count(13),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X61_Y31_N28
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Add0~40_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X61_Y31_N29
\clk_count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(20));

-- Location: LCCOMB_X60_Y32_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_count(15) & (!\Add0~29\)) # (!clk_count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X61_Y31_N30
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\Add0~30_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCFF_X61_Y31_N31
\clk_count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(15));

-- Location: LCCOMB_X60_Y31_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_count(16) & (\Add0~31\ $ (GND))) # (!clk_count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X61_Y31_N0
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Add0~32_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCFF_X61_Y31_N1
\clk_count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(16));

-- Location: LCCOMB_X61_Y31_N2
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!clk_count(15) & (!clk_count(20) & (!clk_count(21) & !clk_count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(15),
	datab => clk_count(20),
	datac => clk_count(21),
	datad => clk_count(16),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X61_Y31_N12
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Add0~34_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCFF_X61_Y31_N13
\clk_count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(17));

-- Location: LCCOMB_X61_Y31_N22
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~4_combout\ & !clk_count(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~4_combout\,
	datad => clk_count(17),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X61_Y33_N4
\LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~0_combout\) # (((\LessThan0~3_combout\ & \LessThan0~5_combout\)) # (!clk_count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => clk_count(22),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X61_Y33_N12
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (clk_count(31)) # ((\LessThan0~7_combout\ & (\LessThan0~8_combout\ & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan0~8_combout\,
	datac => \LessThan0~6_combout\,
	datad => clk_count(31),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X60_Y33_N18
\state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (\reset_n~combout\ & ((\state.power_up~regout\) # (!\LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datab => \LessThan0~9_combout\,
	datac => \state.power_up~regout\,
	combout => \state~20_combout\);

-- Location: LCFF_X60_Y33_N19
\state.power_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.power_up~regout\);

-- Location: LCCOMB_X58_Y32_N14
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!\Add0~24_combout\ & (!\Add0~22_combout\ & (!\Add0~26_combout\ & !\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~22_combout\,
	datac => \Add0~26_combout\,
	datad => \Add0~20_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X58_Y32_N30
\LessThan4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~4_combout\ = (\Add0~10_combout\ & (\Add0~12_combout\ & \Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~14_combout\,
	combout => \LessThan4~4_combout\);

-- Location: LCCOMB_X58_Y32_N24
\LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (((!\LessThan4~4_combout\) # (!\Add0~16_combout\)) # (!\Add0~8_combout\)) # (!\Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~16_combout\,
	datad => \LessThan4~4_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X58_Y32_N26
\LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (!\Add0~30_combout\ & (((\LessThan1~0_combout\ & \LessThan7~0_combout\)) # (!\Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan7~0_combout\,
	datad => \Add0~28_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X59_Y31_N10
\LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (\Add0~34_combout\ & (\Add0~32_combout\ & ((\Add0~28_combout\) # (\Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~28_combout\,
	datac => \Add0~32_combout\,
	datad => \Add0~30_combout\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X58_Y32_N4
\state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (\LessThan8~0_combout\ & (((\Add0~30_combout\) # (!\LessThan1~0_combout\)) # (!\LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datab => \Add0~30_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan8~0_combout\,
	combout => \state~15_combout\);

-- Location: LCCOMB_X59_Y31_N30
\state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (!\Add0~48_combout\ & (!\Add0~44_combout\ & (!\Add0~46_combout\ & !\Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Add0~44_combout\,
	datac => \Add0~46_combout\,
	datad => \Add0~50_combout\,
	combout => \state~13_combout\);

-- Location: LCCOMB_X59_Y31_N8
\state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (!\Add0~58_combout\ & !\Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~58_combout\,
	datad => \Add0~56_combout\,
	combout => \state~10_combout\);

-- Location: LCCOMB_X59_Y31_N2
\state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (!\Add0~52_combout\ & !\Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~52_combout\,
	datad => \Add0~54_combout\,
	combout => \state~11_combout\);

-- Location: LCCOMB_X59_Y31_N28
\state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\state~12_combout\ & (\state~13_combout\ & (\state~10_combout\ & \state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~12_combout\,
	datab => \state~13_combout\,
	datac => \state~10_combout\,
	datad => \state~11_combout\,
	combout => \state~16_combout\);

-- Location: LCCOMB_X59_Y32_N0
\state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (!\Add0~60_combout\ & (\state~16_combout\ & ((\LessThan7~1_combout\) # (!\state~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \LessThan7~1_combout\,
	datac => \state~15_combout\,
	datad => \state~16_combout\,
	combout => \state~19_combout\);

-- Location: LCCOMB_X59_Y31_N24
\LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (\Add0~12_combout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \Add0~10_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X59_Y31_N26
\LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~2_combout\ = (((!\Add0~14_combout\ & !\LessThan8~1_combout\)) # (!\Add0~16_combout\)) # (!\Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~18_combout\,
	datac => \LessThan8~1_combout\,
	datad => \Add0~16_combout\,
	combout => \LessThan8~2_combout\);

-- Location: LCCOMB_X59_Y31_N12
\LessThan8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~3_combout\ = (((!\Add0~20_combout\ & \LessThan8~2_combout\)) # (!\Add0~24_combout\)) # (!\Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~24_combout\,
	datad => \LessThan8~2_combout\,
	combout => \LessThan8~3_combout\);

-- Location: LCCOMB_X59_Y31_N14
\LessThan8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~4_combout\ = ((!\Add0~30_combout\ & (!\Add0~26_combout\ & \LessThan8~3_combout\))) # (!\LessThan8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => \Add0~30_combout\,
	datac => \Add0~26_combout\,
	datad => \LessThan8~3_combout\,
	combout => \LessThan8~4_combout\);

-- Location: LCCOMB_X60_Y31_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (clk_count(30) & (\Add0~59\ $ (GND))) # (!clk_count(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((clk_count(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X59_Y31_N22
\LessThan8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~5_combout\ = (\state~14_combout\ & (\state~10_combout\ & (\LessThan8~4_combout\ & !\Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~14_combout\,
	datab => \state~10_combout\,
	datac => \LessThan8~4_combout\,
	datad => \Add0~60_combout\,
	combout => \LessThan8~5_combout\);

-- Location: LCCOMB_X60_Y33_N24
\state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (\state.initialize~regout\ & ((\Add0~62_combout\) # ((\state~19_combout\) # (\LessThan8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \state.initialize~regout\,
	datac => \state~19_combout\,
	datad => \LessThan8~5_combout\,
	combout => \state~21_combout\);

-- Location: LCCOMB_X60_Y33_N28
\state~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (\reset_n~combout\ & ((\state~21_combout\) # ((!\state.power_up~regout\ & !\LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datab => \state.power_up~regout\,
	datac => \LessThan0~9_combout\,
	datad => \state~21_combout\,
	combout => \state~22_combout\);

-- Location: LCFF_X60_Y33_N29
\state.initialize\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.initialize~regout\);

-- Location: LCCOMB_X60_Y33_N8
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Add0~62_combout\ & ((\Selector38~0_combout\) # ((\clk_count[17]~0_combout\) # (\state.initialize~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~0_combout\,
	datab => \clk_count[17]~0_combout\,
	datac => \Add0~62_combout\,
	datad => \state.initialize~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X60_Y33_N9
\clk_count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(31));

-- Location: LCCOMB_X60_Y31_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (clk_count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X60_Y33_N20
\clk_count[17]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_count[17]~2_combout\ = (\state.power_up~regout\ & !\state.send~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.power_up~regout\,
	datad => \state.send~regout\,
	combout => \clk_count[17]~2_combout\);

-- Location: LCCOMB_X59_Y32_N4
\clk_count[17]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_count[17]~3_combout\ = (\Add0~62_combout\ & ((\state.initialize~regout\) # ((\clk_count[17]~2_combout\)))) # (!\Add0~62_combout\ & (((\clk_count[17]~2_combout\ & \LessThan8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.initialize~regout\,
	datab => \Add0~62_combout\,
	datac => \clk_count[17]~2_combout\,
	datad => \LessThan8~5_combout\,
	combout => \clk_count[17]~3_combout\);

-- Location: LCCOMB_X59_Y32_N2
\clk_count[17]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_count[17]~1_combout\ = (\state.initialize~regout\ & ((\state~19_combout\) # ((\state.power_up~regout\ & \clk_count[17]~0_combout\)))) # (!\state.initialize~regout\ & (\state.power_up~regout\ & (\clk_count[17]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.initialize~regout\,
	datab => \state.power_up~regout\,
	datac => \clk_count[17]~0_combout\,
	datad => \state~19_combout\,
	combout => \clk_count[17]~1_combout\);

-- Location: LCCOMB_X59_Y32_N30
\clk_count[17]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_count[17]~5_combout\ = ((!\Selector38~0_combout\ & (!\clk_count[17]~3_combout\ & !\clk_count[17]~1_combout\))) # (!\clk_count[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~0_combout\,
	datab => \clk_count[17]~4_combout\,
	datac => \clk_count[17]~3_combout\,
	datad => \clk_count[17]~1_combout\,
	combout => \clk_count[17]~5_combout\);

-- Location: LCCOMB_X61_Y31_N14
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Add0~42_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCFF_X61_Y31_N15
\clk_count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(21));

-- Location: LCCOMB_X60_Y31_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clk_count(17) & (!\Add0~33\)) # (!clk_count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clk_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X60_Y31_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clk_count(19) & (!\Add0~37\)) # (!clk_count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clk_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X61_Y31_N18
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Add0~38_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCFF_X61_Y31_N19
\clk_count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(19));

-- Location: LCCOMB_X60_Y31_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clk_count(20) & (\Add0~39\ $ (GND))) # (!clk_count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clk_count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X60_Y31_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clk_count(21) & (!\Add0~41\)) # (!clk_count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clk_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X61_Y33_N26
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Add0~44_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~44_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X61_Y33_N27
\clk_count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(22));

-- Location: LCCOMB_X61_Y31_N20
\LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (!clk_count(18) & (!clk_count(13) & (!clk_count(14) & !clk_count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datab => clk_count(13),
	datac => clk_count(14),
	datad => clk_count(19),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X61_Y33_N0
\LessThan9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = (\LessThan0~7_combout\ & (!clk_count(22) & (\LessThan9~0_combout\ & \LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => clk_count(22),
	datac => \LessThan9~0_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan9~1_combout\);

-- Location: LCCOMB_X59_Y32_N8
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\Add0~10_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector26~0_combout\);

-- Location: LCFF_X59_Y32_N9
\clk_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(5));

-- Location: LCCOMB_X61_Y32_N16
\LessThan9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~3_combout\ = (!clk_count(4) & (!clk_count(5) & (!clk_count(3) & !clk_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(4),
	datab => clk_count(5),
	datac => clk_count(3),
	datad => clk_count(6),
	combout => \LessThan9~3_combout\);

-- Location: LCCOMB_X61_Y32_N2
\LessThan9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~4_combout\ = (((\LessThan9~3_combout\) # (!clk_count(7))) # (!clk_count(8))) # (!clk_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(9),
	datab => clk_count(8),
	datac => \LessThan9~3_combout\,
	datad => clk_count(7),
	combout => \LessThan9~4_combout\);

-- Location: LCCOMB_X61_Y33_N22
\LessThan9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~5_combout\ = ((!clk_count(11) & (!clk_count(10) & \LessThan9~4_combout\))) # (!clk_count(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(11),
	datab => clk_count(12),
	datac => clk_count(10),
	datad => \LessThan9~4_combout\,
	combout => \LessThan9~5_combout\);

-- Location: LCCOMB_X61_Y33_N30
\LessThan9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~7_combout\ = (clk_count(31)) # ((\LessThan9~1_combout\ & (\LessThan0~8_combout\ & \LessThan9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(31),
	datab => \LessThan9~1_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan9~5_combout\,
	combout => \LessThan9~7_combout\);

-- Location: LCCOMB_X56_Y33_N30
\Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\state.send~regout\ & (((!\Equal0~1_combout\ & !\LessThan9~7_combout\)))) # (!\state.send~regout\ & (\state.RESETLINE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESETLINE~regout\,
	datab => \Equal0~1_combout\,
	datac => \state.send~regout\,
	datad => \LessThan9~7_combout\,
	combout => \Selector50~0_combout\);

-- Location: LCFF_X56_Y33_N25
\ptr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector50~1_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ptr(0));

-- Location: LCCOMB_X57_Y33_N10
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (ptr(1) & (!\Add1~1\)) # (!ptr(1) & (\Add1~1\ & VCC))
-- \Add1~3\ = CARRY((ptr(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X57_Y33_N12
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (ptr(2) & (\Add1~3\ $ (GND))) # (!ptr(2) & ((GND) # (!\Add1~3\)))
-- \Add1~5\ = CARRY((!\Add1~3\) # (!ptr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ptr(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X56_Y33_N18
\Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (!\Add1~4_combout\) # (!\state.send~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.send~regout\,
	datac => \Add1~4_combout\,
	combout => \Selector48~0_combout\);

-- Location: LCFF_X56_Y33_N19
\ptr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector48~0_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ptr(2));

-- Location: LCCOMB_X56_Y33_N6
\Selector49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (!\Add1~2_combout\) # (!\state.send~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.send~regout\,
	datac => \Add1~2_combout\,
	combout => \Selector49~0_combout\);

-- Location: LCFF_X56_Y33_N7
\ptr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector49~0_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ptr(1));

-- Location: LCCOMB_X57_Y33_N24
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (ptr(3) & (ptr(2) & (ptr(1) & ptr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => ptr(2),
	datac => ptr(1),
	datad => ptr(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X57_Y33_N14
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (ptr(3) & (!\Add1~5\)) # (!ptr(3) & (\Add1~5\ & VCC))
-- \Add1~7\ = CARRY((ptr(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X57_Y33_N16
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = \Add1~7\ $ (ptr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ptr(4),
	cin => \Add1~7\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X57_Y33_N22
\Selector46~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~3_combout\ = (\LessThan9~7_combout\ & (((ptr(4))))) # (!\LessThan9~7_combout\ & (\Add1~8_combout\ & ((ptr(4)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => ptr(4),
	datac => \Add1~8_combout\,
	datad => \LessThan9~7_combout\,
	combout => \Selector46~3_combout\);

-- Location: LCCOMB_X57_Y33_N2
\Selector46~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~2_combout\ = (\state.send~regout\ & (\Selector46~3_combout\)) # (!\state.send~regout\ & (((ptr(4)) # (\state.RESETLINE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.send~regout\,
	datab => \Selector46~3_combout\,
	datac => ptr(4),
	datad => \state.RESETLINE~regout\,
	combout => \Selector46~2_combout\);

-- Location: LCFF_X57_Y33_N3
\ptr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector46~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ptr(4));

-- Location: LCCOMB_X57_Y33_N20
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & !ptr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~0_combout\,
	datad => ptr(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X59_Y31_N0
\state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (!\Add0~62_combout\ & ((\Add0~60_combout\) # ((!\state~16_combout\) # (!\LessThan8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Add0~62_combout\,
	datac => \LessThan8~4_combout\,
	datad => \state~16_combout\,
	combout => \state~17_combout\);

-- Location: LCCOMB_X60_Y33_N10
\state~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~26_combout\ = (\reset_n~combout\ & (\state.initialize~regout\ & (!\state~19_combout\ & \state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datab => \state.initialize~regout\,
	datac => \state~19_combout\,
	datad => \state~17_combout\,
	combout => \state~26_combout\);

-- Location: LCCOMB_X60_Y33_N4
\state~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~27_combout\ = (\state~26_combout\) # ((\reset_n~combout\ & (\Selector51~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datab => \Selector51~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \state~26_combout\,
	combout => \state~27_combout\);

-- Location: LCFF_X60_Y33_N5
\state.RESETLINE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.RESETLINE~regout\);

-- Location: LCCOMB_X60_Y33_N14
\Selector51~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector51~2_combout\ = ((\state.RESETLINE~regout\) # (\state.initialize~regout\)) # (!\state.power_up~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.power_up~regout\,
	datac => \state.RESETLINE~regout\,
	datad => \state.initialize~regout\,
	combout => \Selector51~2_combout\);

-- Location: LCCOMB_X60_Y33_N30
\Selector51~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector51~3_combout\ = (!\Selector51~1_combout\ & ((\line~regout\) # ((!\Selector51~2_combout\ & !\clk_count[17]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~1_combout\,
	datab => \Selector51~2_combout\,
	datac => \line~regout\,
	datad => \clk_count[17]~0_combout\,
	combout => \Selector51~3_combout\);

-- Location: LCFF_X60_Y33_N31
line : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector51~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line~regout\);

-- Location: LCCOMB_X60_Y33_N16
\state~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (\reset_n~combout\ & (\Selector51~0_combout\ & (!\Equal0~1_combout\ & !\line~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datab => \Selector51~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \line~regout\,
	combout => \state~24_combout\);

-- Location: LCFF_X60_Y33_N17
\state.line1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.line1~regout\);

-- Location: LCCOMB_X60_Y33_N22
\clk_count[17]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_count[17]~4_combout\ = (!\state.RESETLINE~regout\ & (!\state.line1~regout\ & !\state.line2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.RESETLINE~regout\,
	datac => \state.line1~regout\,
	datad => \state.line2~regout\,
	combout => \clk_count[17]~4_combout\);

-- Location: LCCOMB_X60_Y33_N6
\state~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (\reset_n~combout\ & (((\state.send~regout\ & \LessThan9~7_combout\)) # (!\clk_count[17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datab => \clk_count[17]~4_combout\,
	datac => \state.send~regout\,
	datad => \LessThan9~7_combout\,
	combout => \state~23_combout\);

-- Location: LCFF_X60_Y33_N7
\state.send\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.send~regout\);

-- Location: LCCOMB_X56_Y33_N4
\Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\state.send~regout\ & !\LessThan9~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.send~regout\,
	datad => \LessThan9~7_combout\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X60_Y33_N26
\state~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (\reset_n~combout\ & (\Selector51~0_combout\ & (!\Equal0~1_combout\ & \line~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datab => \Selector51~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \line~regout\,
	combout => \state~25_combout\);

-- Location: LCFF_X60_Y33_N27
\state.line2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.line2~regout\);

-- Location: LCCOMB_X61_Y33_N6
\Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (!\state.power_up~regout\ & \LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.power_up~regout\,
	datad => \LessThan0~9_combout\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X59_Y33_N20
\Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\rs~reg0_regout\ & ((\state.send~regout\) # ((\state.initialize~regout\) # (\Selector38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.send~regout\,
	datab => \state.initialize~regout\,
	datac => \Selector38~0_combout\,
	datad => \rs~reg0_regout\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X59_Y33_N0
\Selector35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\state.line1~regout\) # ((\state.line2~regout\) # (\Selector35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.line1~regout\,
	datac => \state.line2~regout\,
	datad => \Selector35~0_combout\,
	combout => \Selector35~1_combout\);

-- Location: LCFF_X59_Y33_N1
\rs~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rs~reg0_regout\);

-- Location: LCCOMB_X61_Y33_N28
\LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (!clk_count(11) & (!clk_count(12) & \LessThan9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(11),
	datab => clk_count(12),
	datad => \LessThan9~1_combout\,
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X61_Y33_N24
\LessThan9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~6_combout\ = (\LessThan9~1_combout\ & (\LessThan0~8_combout\ & \LessThan9~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan9~1_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan9~5_combout\,
	combout => \LessThan9~6_combout\);

-- Location: LCCOMB_X61_Y32_N28
\LessThan10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan10~3_combout\ = (clk_count(5) & clk_count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(5),
	datad => clk_count(6),
	combout => \LessThan10~3_combout\);

-- Location: LCCOMB_X61_Y32_N24
\LessThan10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = (!clk_count(9) & (!clk_count(8) & (!clk_count(10) & !clk_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(9),
	datab => clk_count(8),
	datac => clk_count(10),
	datad => clk_count(7),
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X61_Y32_N22
\LessThan10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan10~4_combout\ = (\LessThan10~1_combout\ & (\LessThan10~0_combout\ & ((\LessThan10~2_combout\) # (!\LessThan10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~2_combout\,
	datab => \LessThan10~3_combout\,
	datac => \LessThan10~1_combout\,
	datad => \LessThan10~0_combout\,
	combout => \LessThan10~4_combout\);

-- Location: LCCOMB_X61_Y33_N20
\Selector45~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~3_combout\ = (\LessThan11~1_combout\ & (\LessThan10~0_combout\ & (\LessThan9~6_combout\ & !\LessThan10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~1_combout\,
	datab => \LessThan10~0_combout\,
	datac => \LessThan9~6_combout\,
	datad => \LessThan10~4_combout\,
	combout => \Selector45~3_combout\);

-- Location: LCCOMB_X59_Y33_N16
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\Add0~4_combout\ & !\clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \clk_count[17]~5_combout\,
	combout => \Selector29~0_combout\);

-- Location: LCFF_X59_Y33_N17
\clk_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(2));

-- Location: LCCOMB_X61_Y32_N26
\LessThan9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~2_combout\ = (!clk_count(5) & (!clk_count(4) & !clk_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(5),
	datac => clk_count(4),
	datad => clk_count(6),
	combout => \LessThan9~2_combout\);

-- Location: LCCOMB_X61_Y32_N4
\LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = ((\LessThan9~2_combout\ & ((!clk_count(2)) # (!clk_count(3))))) # (!clk_count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datab => clk_count(7),
	datac => clk_count(2),
	datad => \LessThan9~2_combout\,
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X61_Y32_N6
\LessThan12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan12~1_combout\ = (!clk_count(10) & (((!clk_count(8) & \LessThan12~0_combout\)) # (!clk_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(10),
	datab => clk_count(8),
	datac => \LessThan12~0_combout\,
	datad => clk_count(9),
	combout => \LessThan12~1_combout\);

-- Location: LCCOMB_X61_Y33_N18
\LessThan12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan12~2_combout\ = (!clk_count(12) & (\LessThan9~1_combout\ & ((\LessThan12~1_combout\) # (!clk_count(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(11),
	datab => clk_count(12),
	datac => \LessThan12~1_combout\,
	datad => \LessThan9~1_combout\,
	combout => \LessThan12~2_combout\);

-- Location: LCCOMB_X61_Y33_N2
\Selector45~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~2_combout\ = (\e~reg0_regout\ & (((!\LessThan12~2_combout\ & !\LessThan10~4_combout\)) # (!\LessThan9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~reg0_regout\,
	datab => \LessThan12~2_combout\,
	datac => \LessThan9~6_combout\,
	datad => \LessThan10~4_combout\,
	combout => \Selector45~2_combout\);

-- Location: LCCOMB_X56_Y33_N16
\Selector45~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~4_combout\ = (!clk_count(31) & (\state.send~regout\ & ((\Selector45~3_combout\) # (\Selector45~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(31),
	datab => \state.send~regout\,
	datac => \Selector45~3_combout\,
	datad => \Selector45~2_combout\,
	combout => \Selector45~4_combout\);

-- Location: LCCOMB_X58_Y31_N8
\Selector45~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~6_combout\ = (!\state.send~regout\ & (\state.initialize~regout\ & ((\Selector45~5_combout\) # (\Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~5_combout\,
	datab => \state.send~regout\,
	datac => \Add0~60_combout\,
	datad => \state.initialize~regout\,
	combout => \Selector45~6_combout\);

-- Location: LCCOMB_X59_Y31_N6
\LessThan7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (\state~16_combout\ & (((\LessThan7~1_combout\) # (!\Add0~32_combout\)) # (!\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~32_combout\,
	datac => \LessThan7~1_combout\,
	datad => \state~16_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X58_Y31_N26
\LessThan7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = (\LessThan7~2_combout\ & !\Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan7~2_combout\,
	datac => \Add0~60_combout\,
	combout => \LessThan7~3_combout\);

-- Location: LCCOMB_X58_Y31_N20
\Selector45~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~7_combout\ = (\Selector45~6_combout\ & ((\LessThan7~3_combout\) # ((\e~reg0_regout\ & \state~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~reg0_regout\,
	datab => \state~17_combout\,
	datac => \Selector45~6_combout\,
	datad => \LessThan7~3_combout\,
	combout => \Selector45~7_combout\);

-- Location: LCCOMB_X57_Y33_N6
\Selector45~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~10_combout\ = (!\state.send~regout\ & ((\state.initialize~regout\ & ((\Add0~62_combout\))) # (!\state.initialize~regout\ & (\e~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.send~regout\,
	datab => \e~reg0_regout\,
	datac => \Add0~62_combout\,
	datad => \state.initialize~regout\,
	combout => \Selector45~10_combout\);

-- Location: LCCOMB_X59_Y31_N20
\state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (!\Add0~36_combout\ & (!\Add0~40_combout\ & (!\Add0~42_combout\ & !\Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Add0~40_combout\,
	datac => \Add0~42_combout\,
	datad => \Add0~38_combout\,
	combout => \state~12_combout\);

-- Location: LCCOMB_X59_Y31_N16
\state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (!\Add0~52_combout\ & (!\Add0~54_combout\ & (\state~12_combout\ & \state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Add0~54_combout\,
	datac => \state~12_combout\,
	datad => \state~13_combout\,
	combout => \state~14_combout\);

-- Location: LCCOMB_X61_Y31_N6
\LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!\Add0~30_combout\ & (!\Add0~32_combout\ & (!\Add0~28_combout\ & !\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~28_combout\,
	datad => \Add0~34_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X58_Y33_N14
\LessThan5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~4_combout\ = (\LessThan5~3_combout\ & (\state~10_combout\ & (\state~14_combout\ & \LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~3_combout\,
	datab => \state~10_combout\,
	datac => \state~14_combout\,
	datad => \LessThan3~0_combout\,
	combout => \LessThan5~4_combout\);

-- Location: LCCOMB_X58_Y32_N8
\LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\Add0~14_combout\ & (((!\Add0~12_combout\) # (!\Add0~8_combout\)) # (!\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~12_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X58_Y32_N18
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (((\LessThan2~0_combout\) # (!\Add0~20_combout\)) # (!\Add0~16_combout\)) # (!\Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~16_combout\,
	datac => \LessThan2~0_combout\,
	datad => \Add0~20_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X58_Y32_N20
\LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!\Add0~26_combout\ & (((!\Add0~22_combout\ & \LessThan2~1_combout\)) # (!\Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~22_combout\,
	datac => \Add0~24_combout\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X58_Y31_N0
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (\state~12_combout\ & (\LessThan3~0_combout\ & \state~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~12_combout\,
	datac => \LessThan3~0_combout\,
	datad => \state~13_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X58_Y31_N10
\LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\state~11_combout\ & (\state~10_combout\ & (\LessThan2~2_combout\ & \LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~11_combout\,
	datab => \state~10_combout\,
	datac => \LessThan2~2_combout\,
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X58_Y33_N26
\Selector45~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~13_combout\ = (\state.initialize~regout\ & (\LessThan5~4_combout\ & (!\LessThan2~4_combout\ & !\Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.initialize~regout\,
	datab => \LessThan5~4_combout\,
	datac => \LessThan2~4_combout\,
	datad => \Add0~60_combout\,
	combout => \Selector45~13_combout\);

-- Location: LCCOMB_X58_Y31_N2
\Selector45~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~11_combout\ = (\Selector45~10_combout\) # ((!\LessThan4~3_combout\ & (!\state.send~regout\ & \Selector45~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~3_combout\,
	datab => \state.send~regout\,
	datac => \Selector45~10_combout\,
	datad => \Selector45~13_combout\,
	combout => \Selector45~11_combout\);

-- Location: LCCOMB_X58_Y31_N22
\Selector45~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~12_combout\ = (\Selector45~9_combout\) # ((\Selector45~4_combout\) # ((\Selector45~7_combout\) # (\Selector45~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~9_combout\,
	datab => \Selector45~4_combout\,
	datac => \Selector45~7_combout\,
	datad => \Selector45~11_combout\,
	combout => \Selector45~12_combout\);

-- Location: LCFF_X58_Y31_N23
\e~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector45~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e~reg0_regout\);

-- Location: LCCOMB_X57_Y33_N18
\Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\state.initialize~regout\ & !\Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.initialize~regout\,
	datad => \Add0~60_combout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X58_Y33_N18
\Selector44~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~2_combout\ = (\Selector44~0_combout\ & ((\Selector44~1_combout\) # ((!\state~14_combout\) # (!\state~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~1_combout\,
	datab => \state~10_combout\,
	datac => \state~14_combout\,
	datad => \Selector44~0_combout\,
	combout => \Selector44~2_combout\);

-- Location: LCCOMB_X58_Y33_N4
\state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (\LessThan3~3_combout\ & (!\Add0~26_combout\ & (\state~14_combout\ & \LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~3_combout\,
	datab => \Add0~26_combout\,
	datac => \state~14_combout\,
	datad => \LessThan3~0_combout\,
	combout => \state~18_combout\);

-- Location: LCCOMB_X58_Y33_N30
\Selector44~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~3_combout\ = (!\Add0~62_combout\ & (\Selector44~2_combout\ & (\LessThan5~4_combout\ & !\state~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \Selector44~2_combout\,
	datac => \LessThan5~4_combout\,
	datad => \state~18_combout\,
	combout => \Selector44~3_combout\);

-- Location: LCCOMB_X57_Y33_N0
\lcd_data[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[0]~0_combout\ = (\state.line1~regout\ & (\Selector44~13_combout\)) # (!\state.line1~regout\ & ((\Selector44~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~13_combout\,
	datab => \state.line1~regout\,
	datad => \Selector44~3_combout\,
	combout => \lcd_data[0]~0_combout\);

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[104]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(104),
	combout => \line2_buffer~combout\(104));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[96]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(96),
	combout => \line2_buffer~combout\(96));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[112]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(112),
	combout => \line2_buffer~combout\(112));

-- Location: LCCOMB_X64_Y34_N14
\Selector44~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~21_combout\ = (ptr(0) & ((ptr(1) & (\line2_buffer~combout\(96))) # (!ptr(1) & ((\line2_buffer~combout\(112)))))) # (!ptr(0) & (!ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => ptr(1),
	datac => \line2_buffer~combout\(96),
	datad => \line2_buffer~combout\(112),
	combout => \Selector44~21_combout\);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[120]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(120),
	combout => \line2_buffer~combout\(120));

-- Location: LCCOMB_X64_Y34_N8
\Selector44~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~22_combout\ = (ptr(0) & (((\Selector44~21_combout\)))) # (!ptr(0) & ((\Selector44~21_combout\ & ((\line2_buffer~combout\(120)))) # (!\Selector44~21_combout\ & (\line2_buffer~combout\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => \line2_buffer~combout\(104),
	datac => \Selector44~21_combout\,
	datad => \line2_buffer~combout\(120),
	combout => \Selector44~22_combout\);

-- Location: LCCOMB_X56_Y33_N20
\Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (!\Add1~6_combout\) # (!\state.send~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.send~regout\,
	datac => \Add1~6_combout\,
	combout => \Selector47~0_combout\);

-- Location: LCFF_X56_Y33_N21
\ptr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector47~0_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ptr(3));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[24]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(24),
	combout => \line2_buffer~combout\(24));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[16]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(16),
	combout => \line2_buffer~combout\(16));

-- Location: LCCOMB_X64_Y34_N2
\Selector44~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~19_combout\ = (\Selector44~18_combout\ & ((\line2_buffer~combout\(24)) # ((ptr(1))))) # (!\Selector44~18_combout\ & (((!ptr(1) & \line2_buffer~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~18_combout\,
	datab => \line2_buffer~combout\(24),
	datac => ptr(1),
	datad => \line2_buffer~combout\(16),
	combout => \Selector44~19_combout\);

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[56]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(56),
	combout => \line2_buffer~combout\(56));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[40]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(40),
	combout => \line2_buffer~combout\(40));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[48]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(48),
	combout => \line2_buffer~combout\(48));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[32]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(32),
	combout => \line2_buffer~combout\(32));

-- Location: LCCOMB_X64_Y34_N12
\Selector44~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~16_combout\ = (ptr(0) & ((ptr(1) & ((\line2_buffer~combout\(32)))) # (!ptr(1) & (\line2_buffer~combout\(48))))) # (!ptr(0) & (!ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => ptr(1),
	datac => \line2_buffer~combout\(48),
	datad => \line2_buffer~combout\(32),
	combout => \Selector44~16_combout\);

-- Location: LCCOMB_X64_Y34_N30
\Selector44~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~17_combout\ = (ptr(0) & (((\Selector44~16_combout\)))) # (!ptr(0) & ((\Selector44~16_combout\ & (\line2_buffer~combout\(56))) # (!\Selector44~16_combout\ & ((\line2_buffer~combout\(40))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => \line2_buffer~combout\(56),
	datac => \line2_buffer~combout\(40),
	datad => \Selector44~16_combout\,
	combout => \Selector44~17_combout\);

-- Location: LCCOMB_X64_Y34_N28
\Selector44~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~20_combout\ = (ptr(2) & (\Selector44~19_combout\ & (ptr(3)))) # (!ptr(2) & (((\Selector44~17_combout\) # (!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => \Selector44~19_combout\,
	datac => ptr(3),
	datad => \Selector44~17_combout\,
	combout => \Selector44~20_combout\);

-- Location: LCCOMB_X64_Y34_N26
\Selector44~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~23_combout\ = (ptr(3) & (((\Selector44~20_combout\)))) # (!ptr(3) & ((\Selector44~20_combout\ & ((\Selector44~22_combout\))) # (!\Selector44~20_combout\ & (\Selector44~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~15_combout\,
	datab => \Selector44~22_combout\,
	datac => ptr(3),
	datad => \Selector44~20_combout\,
	combout => \Selector44~23_combout\);

-- Location: LCCOMB_X58_Y33_N0
\lcd_data[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[2]~7_combout\ = (\Add0~60_combout\) # ((!\LessThan7~2_combout\ & ((!\state~18_combout\) # (!\state~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \state~10_combout\,
	datac => \state~18_combout\,
	datad => \LessThan7~2_combout\,
	combout => \lcd_data[2]~7_combout\);

-- Location: LCCOMB_X58_Y33_N20
\LessThan6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~4_combout\ = (!\Add0~56_combout\ & (!\Add0~58_combout\ & (\state~14_combout\ & !\state~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \Add0~58_combout\,
	datac => \state~14_combout\,
	datad => \state~15_combout\,
	combout => \LessThan6~4_combout\);

-- Location: LCCOMB_X58_Y33_N2
\lcd_data[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[2]~8_combout\ = (\state.initialize~regout\ & (\state~17_combout\ & ((\Add0~60_combout\) # (!\LessThan6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.initialize~regout\,
	datab => \Add0~60_combout\,
	datac => \LessThan6~4_combout\,
	datad => \state~17_combout\,
	combout => \lcd_data[2]~8_combout\);

-- Location: LCCOMB_X58_Y33_N12
\lcd_data[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[2]~9_combout\ = (!\state.send~regout\ & (!\Selector38~0_combout\ & ((!\lcd_data[2]~8_combout\) # (!\lcd_data[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.send~regout\,
	datab => \lcd_data[2]~7_combout\,
	datac => \Selector38~0_combout\,
	datad => \lcd_data[2]~8_combout\,
	combout => \lcd_data[2]~9_combout\);

-- Location: LCFF_X57_Y33_N1
\lcd_data[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcd_data[0]~0_combout\,
	sdata => \Selector44~23_combout\,
	sload => \state.line2~regout\,
	ena => \lcd_data[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_data[0]~reg0_regout\);

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[41]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(41),
	combout => \line1_buffer~combout\(41));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[73]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(73),
	combout => \line1_buffer~combout\(73));

-- Location: LCCOMB_X4_Y33_N16
\Selector43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (ptr(2) & ((ptr(3) & (\line1_buffer~combout\(9))) # (!ptr(3) & ((\line1_buffer~combout\(73)))))) # (!ptr(2) & (((!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(9),
	datab => \line1_buffer~combout\(73),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector43~1_combout\);

-- Location: LCCOMB_X4_Y33_N26
\Selector43~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~2_combout\ = (\Selector43~1_combout\ & ((\line1_buffer~combout\(105)) # ((ptr(2))))) # (!\Selector43~1_combout\ & (((\line1_buffer~combout\(41) & !ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(105),
	datab => \line1_buffer~combout\(41),
	datac => \Selector43~1_combout\,
	datad => ptr(2),
	combout => \Selector43~2_combout\);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[113]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(113),
	combout => \line1_buffer~combout\(113));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[81]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(81),
	combout => \line1_buffer~combout\(81));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[49]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(49),
	combout => \line1_buffer~combout\(49));

-- Location: LCCOMB_X4_Y33_N12
\Selector43~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~3_combout\ = (ptr(2) & (\line1_buffer~combout\(17) & ((ptr(3))))) # (!ptr(2) & (((\line1_buffer~combout\(49)) # (!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(17),
	datab => \line1_buffer~combout\(49),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector43~3_combout\);

-- Location: LCCOMB_X4_Y33_N14
\Selector43~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~4_combout\ = (ptr(3) & (((\Selector43~3_combout\)))) # (!ptr(3) & ((\Selector43~3_combout\ & (\line1_buffer~combout\(113))) # (!\Selector43~3_combout\ & ((\line1_buffer~combout\(81))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \line1_buffer~combout\(113),
	datac => \line1_buffer~combout\(81),
	datad => \Selector43~3_combout\,
	combout => \Selector43~4_combout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[97]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(97),
	combout => \line1_buffer~combout\(97));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[1]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(1),
	combout => \line1_buffer~combout\(1));

-- Location: LCCOMB_X4_Y33_N8
\Selector43~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~5_combout\ = (ptr(2) & (((\line1_buffer~combout\(1) & ptr(3))))) # (!ptr(2) & ((\line1_buffer~combout\(33)) # ((!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(33),
	datab => \line1_buffer~combout\(1),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector43~5_combout\);

-- Location: LCCOMB_X4_Y33_N2
\Selector43~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~6_combout\ = (\Selector43~5_combout\ & (((\line1_buffer~combout\(97)) # (ptr(3))))) # (!\Selector43~5_combout\ & (\line1_buffer~combout\(65) & ((!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(65),
	datab => \line1_buffer~combout\(97),
	datac => \Selector43~5_combout\,
	datad => ptr(3),
	combout => \Selector43~6_combout\);

-- Location: LCCOMB_X4_Y33_N20
\Selector43~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~7_combout\ = (ptr(1) & (((ptr(0) & \Selector43~6_combout\)))) # (!ptr(1) & ((\Selector43~4_combout\) # ((!ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \Selector43~4_combout\,
	datac => ptr(0),
	datad => \Selector43~6_combout\,
	combout => \Selector43~7_combout\);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[57]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(57),
	combout => \line1_buffer~combout\(57));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[89]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(89),
	combout => \line1_buffer~combout\(89));

-- Location: LCCOMB_X8_Y33_N24
\Selector43~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~8_combout\ = (ptr(3) & (\line1_buffer~combout\(25) & ((ptr(2))))) # (!ptr(3) & (((\line1_buffer~combout\(89)) # (!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(25),
	datab => ptr(3),
	datac => \line1_buffer~combout\(89),
	datad => ptr(2),
	combout => \Selector43~8_combout\);

-- Location: LCCOMB_X8_Y33_N10
\Selector43~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~9_combout\ = (\Selector43~8_combout\ & ((\line1_buffer~combout\(121)) # ((ptr(2))))) # (!\Selector43~8_combout\ & (((\line1_buffer~combout\(57) & !ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(121),
	datab => \line1_buffer~combout\(57),
	datac => \Selector43~8_combout\,
	datad => ptr(2),
	combout => \Selector43~9_combout\);

-- Location: LCCOMB_X4_Y33_N6
\Selector43~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~10_combout\ = (ptr(0) & (((\Selector43~7_combout\)))) # (!ptr(0) & ((\Selector43~7_combout\ & ((\Selector43~9_combout\))) # (!\Selector43~7_combout\ & (\Selector43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => \Selector43~2_combout\,
	datac => \Selector43~7_combout\,
	datad => \Selector43~9_combout\,
	combout => \Selector43~10_combout\);

-- Location: LCCOMB_X58_Y33_N8
\lcd_data[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[1]~1_combout\ = (\state.line1~regout\ & ((\Selector43~10_combout\))) # (!\state.line1~regout\ & (!\Selector43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~0_combout\,
	datab => \state.line1~regout\,
	datad => \Selector43~10_combout\,
	combout => \lcd_data[1]~1_combout\);

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[121]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(121),
	combout => \line2_buffer~combout\(121));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[113]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(113),
	combout => \line2_buffer~combout\(113));

-- Location: LCCOMB_X64_Y22_N8
\Selector43~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~19_combout\ = (\Selector43~18_combout\ & ((ptr(1)) # ((\line2_buffer~combout\(121))))) # (!\Selector43~18_combout\ & (!ptr(1) & ((\line2_buffer~combout\(113)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~18_combout\,
	datab => ptr(1),
	datac => \line2_buffer~combout\(121),
	datad => \line2_buffer~combout\(113),
	combout => \Selector43~19_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[73]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(73),
	combout => \line2_buffer~combout\(73));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[65]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(65),
	combout => \line2_buffer~combout\(65));

-- Location: LCCOMB_X41_Y35_N8
\Selector43~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~13_combout\ = (ptr(0) & ((ptr(1) & ((\line2_buffer~combout\(65)))) # (!ptr(1) & (\line2_buffer~combout\(81))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(81),
	datab => \line2_buffer~combout\(65),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector43~13_combout\);

-- Location: LCCOMB_X41_Y35_N2
\Selector43~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~14_combout\ = (\Selector43~13_combout\ & ((\line2_buffer~combout\(89)) # ((ptr(0))))) # (!\Selector43~13_combout\ & (((\line2_buffer~combout\(73) & !ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(89),
	datab => \line2_buffer~combout\(73),
	datac => \Selector43~13_combout\,
	datad => ptr(0),
	combout => \Selector43~14_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[25]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(25),
	combout => \line2_buffer~combout\(25));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[17]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(17),
	combout => \line2_buffer~combout\(17));

-- Location: LCCOMB_X41_Y35_N28
\Selector43~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~15_combout\ = (ptr(0) & ((ptr(1) & (\line2_buffer~combout\(1))) # (!ptr(1) & ((\line2_buffer~combout\(17)))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(1),
	datab => \line2_buffer~combout\(17),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector43~15_combout\);

-- Location: LCCOMB_X41_Y35_N30
\Selector43~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~16_combout\ = (ptr(0) & (((\Selector43~15_combout\)))) # (!ptr(0) & ((\Selector43~15_combout\ & ((\line2_buffer~combout\(25)))) # (!\Selector43~15_combout\ & (\line2_buffer~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(9),
	datab => \line2_buffer~combout\(25),
	datac => ptr(0),
	datad => \Selector43~15_combout\,
	combout => \Selector43~16_combout\);

-- Location: LCCOMB_X64_Y22_N4
\Selector43~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~17_combout\ = (ptr(2) & ((ptr(3) & ((\Selector43~16_combout\))) # (!ptr(3) & (\Selector43~14_combout\)))) # (!ptr(2) & (!ptr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => ptr(3),
	datac => \Selector43~14_combout\,
	datad => \Selector43~16_combout\,
	combout => \Selector43~17_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[57]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(57),
	combout => \line2_buffer~combout\(57));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[41]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(41),
	combout => \line2_buffer~combout\(41));

-- Location: LCCOMB_X64_Y22_N0
\Selector43~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~11_combout\ = (ptr(1) & ((ptr(0) & (\line2_buffer~combout\(33))) # (!ptr(0) & ((\line2_buffer~combout\(41)))))) # (!ptr(1) & (((!ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(33),
	datab => ptr(1),
	datac => ptr(0),
	datad => \line2_buffer~combout\(41),
	combout => \Selector43~11_combout\);

-- Location: LCCOMB_X64_Y22_N10
\Selector43~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~12_combout\ = (ptr(1) & (((\Selector43~11_combout\)))) # (!ptr(1) & ((\Selector43~11_combout\ & ((\line2_buffer~combout\(57)))) # (!\Selector43~11_combout\ & (\line2_buffer~combout\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(49),
	datab => ptr(1),
	datac => \line2_buffer~combout\(57),
	datad => \Selector43~11_combout\,
	combout => \Selector43~12_combout\);

-- Location: LCCOMB_X64_Y22_N18
\Selector43~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~20_combout\ = (ptr(2) & (((\Selector43~17_combout\)))) # (!ptr(2) & ((\Selector43~17_combout\ & (\Selector43~19_combout\)) # (!\Selector43~17_combout\ & ((\Selector43~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => \Selector43~19_combout\,
	datac => \Selector43~17_combout\,
	datad => \Selector43~12_combout\,
	combout => \Selector43~20_combout\);

-- Location: LCFF_X58_Y33_N9
\lcd_data[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcd_data[1]~1_combout\,
	sdata => \Selector43~20_combout\,
	sload => \state.line2~regout\,
	ena => \lcd_data[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_data[1]~reg0_regout\);

-- Location: LCCOMB_X58_Y32_N28
\LessThan7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~4_combout\ = (\Add0~14_combout\ & (\Add0~16_combout\ & (\LessThan8~1_combout\ & \Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~16_combout\,
	datac => \LessThan8~1_combout\,
	datad => \Add0~18_combout\,
	combout => \LessThan7~4_combout\);

-- Location: LCCOMB_X58_Y32_N6
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan1~0_combout\ & (((!\Add0~6_combout\ & !\Add0~8_combout\)) # (!\LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~8_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan7~4_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X58_Y31_N14
\LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan3~0_combout\ & (\state~10_combout\ & (\state~14_combout\ & \LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \state~10_combout\,
	datac => \state~14_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X58_Y31_N4
\Selector42~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~1_combout\ = ((!\LessThan1~2_combout\ & ((\LessThan2~4_combout\) # (!\LessThan3~5_combout\)))) # (!\Selector44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~5_combout\,
	datab => \LessThan1~2_combout\,
	datac => \LessThan2~4_combout\,
	datad => \Selector44~0_combout\,
	combout => \Selector42~1_combout\);

-- Location: LCCOMB_X58_Y31_N30
\Selector42~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~2_combout\ = (\Selector42~1_combout\ & ((!\Add0~62_combout\) # (!\state.initialize~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.initialize~regout\,
	datac => \Selector42~1_combout\,
	datad => \Add0~62_combout\,
	combout => \Selector42~2_combout\);

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[98]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(98),
	combout => \line1_buffer~combout\(98));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[34]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(34),
	combout => \line1_buffer~combout\(34));

-- Location: LCCOMB_X64_Y13_N30
\Selector42~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~6_combout\ = (\Selector42~5_combout\ & ((\line1_buffer~combout\(98)) # ((ptr(2))))) # (!\Selector42~5_combout\ & (((!ptr(2) & \line1_buffer~combout\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~5_combout\,
	datab => \line1_buffer~combout\(98),
	datac => ptr(2),
	datad => \line1_buffer~combout\(34),
	combout => \Selector42~6_combout\);

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[114]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(114),
	combout => \line1_buffer~combout\(114));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[18]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(18),
	combout => \line1_buffer~combout\(18));

-- Location: LCCOMB_X64_Y13_N28
\Selector42~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~9_combout\ = (ptr(2) & ((ptr(3) & ((\line1_buffer~combout\(18)))) # (!ptr(3) & (\line1_buffer~combout\(82))))) # (!ptr(2) & (((!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(82),
	datab => \line1_buffer~combout\(18),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector42~9_combout\);

-- Location: LCCOMB_X64_Y13_N22
\lcd_data[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[2]~10_combout\ = (ptr(2) & (((\Selector42~9_combout\)))) # (!ptr(2) & ((\Selector42~9_combout\ & ((\line1_buffer~combout\(114)))) # (!\Selector42~9_combout\ & (\line1_buffer~combout\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(50),
	datab => \line1_buffer~combout\(114),
	datac => ptr(2),
	datad => \Selector42~9_combout\,
	combout => \lcd_data[2]~10_combout\);

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[90]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(90),
	combout => \line1_buffer~combout\(90));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[58]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(58),
	combout => \line1_buffer~combout\(58));

-- Location: LCCOMB_X64_Y13_N8
\Selector42~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~7_combout\ = (ptr(2) & (\line1_buffer~combout\(26) & ((ptr(3))))) # (!ptr(2) & (((\line1_buffer~combout\(58)) # (!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(26),
	datab => \line1_buffer~combout\(58),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector42~7_combout\);

-- Location: LCCOMB_X64_Y13_N26
\Selector42~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~8_combout\ = (\Selector42~7_combout\ & ((\line1_buffer~combout\(122)) # ((ptr(3))))) # (!\Selector42~7_combout\ & (((\line1_buffer~combout\(90) & !ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(122),
	datab => \line1_buffer~combout\(90),
	datac => \Selector42~7_combout\,
	datad => ptr(3),
	combout => \Selector42~8_combout\);

-- Location: LCCOMB_X64_Y13_N16
\lcd_data[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[2]~11_combout\ = (ptr(1) & (((ptr(0))))) # (!ptr(1) & ((ptr(0) & (\lcd_data[2]~10_combout\)) # (!ptr(0) & ((\Selector42~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \lcd_data[2]~10_combout\,
	datac => ptr(0),
	datad => \Selector42~8_combout\,
	combout => \lcd_data[2]~11_combout\);

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[106]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(106),
	combout => \line1_buffer~combout\(106));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[74]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(74),
	combout => \line1_buffer~combout\(74));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[10]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(10),
	combout => \line1_buffer~combout\(10));

-- Location: LCCOMB_X64_Y13_N24
\Selector42~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~3_combout\ = (ptr(2) & (((\line1_buffer~combout\(10) & ptr(3))))) # (!ptr(2) & ((\line1_buffer~combout\(42)) # ((!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(42),
	datab => \line1_buffer~combout\(10),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector42~3_combout\);

-- Location: LCCOMB_X64_Y13_N10
\Selector42~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~4_combout\ = (ptr(3) & (((\Selector42~3_combout\)))) # (!ptr(3) & ((\Selector42~3_combout\ & (\line1_buffer~combout\(106))) # (!\Selector42~3_combout\ & ((\line1_buffer~combout\(74))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \line1_buffer~combout\(106),
	datac => \line1_buffer~combout\(74),
	datad => \Selector42~3_combout\,
	combout => \Selector42~4_combout\);

-- Location: LCCOMB_X64_Y13_N2
\lcd_data[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[2]~12_combout\ = (ptr(1) & ((\lcd_data[2]~11_combout\ & (\Selector42~6_combout\)) # (!\lcd_data[2]~11_combout\ & ((\Selector42~4_combout\))))) # (!ptr(1) & (((\lcd_data[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \Selector42~6_combout\,
	datac => \lcd_data[2]~11_combout\,
	datad => \Selector42~4_combout\,
	combout => \lcd_data[2]~12_combout\);

-- Location: LCCOMB_X58_Y33_N22
\Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (!\LessThan6~4_combout\ & (\Selector44~2_combout\ & ((\Add0~60_combout\) # (!\LessThan5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \LessThan5~4_combout\,
	datac => \LessThan6~4_combout\,
	datad => \Selector44~2_combout\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X59_Y33_N8
\lcd_data[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[2]~13_combout\ = (\state.line1~regout\ & (\lcd_data[2]~12_combout\)) # (!\state.line1~regout\ & (((!\LessThan2~4_combout\ & \Selector42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.line1~regout\,
	datab => \lcd_data[2]~12_combout\,
	datac => \LessThan2~4_combout\,
	datad => \Selector42~0_combout\,
	combout => \lcd_data[2]~13_combout\);

-- Location: LCCOMB_X58_Y31_N12
\lcd_data[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[2]~2_combout\ = (\state.line1~regout\ & (((\lcd_data[2]~13_combout\)))) # (!\state.line1~regout\ & (((\LessThan7~3_combout\ & \lcd_data[2]~13_combout\)) # (!\Selector42~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.line1~regout\,
	datab => \LessThan7~3_combout\,
	datac => \Selector42~2_combout\,
	datad => \lcd_data[2]~13_combout\,
	combout => \lcd_data[2]~2_combout\);

-- Location: LCCOMB_X58_Y31_N16
\lcd_data[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[2]~reg0feeder_combout\ = \lcd_data[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_data[2]~2_combout\,
	combout => \lcd_data[2]~reg0feeder_combout\);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[98]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(98),
	combout => \line2_buffer~combout\(98));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[114]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(114),
	combout => \line2_buffer~combout\(114));

-- Location: LCCOMB_X64_Y34_N18
\Selector42~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~17_combout\ = (ptr(0) & ((ptr(1) & (\line2_buffer~combout\(98))) # (!ptr(1) & ((\line2_buffer~combout\(114)))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => \line2_buffer~combout\(98),
	datac => ptr(1),
	datad => \line2_buffer~combout\(114),
	combout => \Selector42~17_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[122]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(122),
	combout => \line2_buffer~combout\(122));

-- Location: LCCOMB_X64_Y34_N20
\Selector42~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~18_combout\ = (\Selector42~17_combout\ & (((\line2_buffer~combout\(122)) # (ptr(0))))) # (!\Selector42~17_combout\ & (\line2_buffer~combout\(106) & ((!ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(106),
	datab => \Selector42~17_combout\,
	datac => \line2_buffer~combout\(122),
	datad => ptr(0),
	combout => \Selector42~18_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[26]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(26),
	combout => \line2_buffer~combout\(26));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[10]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(10),
	combout => \line2_buffer~combout\(10));

-- Location: LCCOMB_X41_Y35_N20
\Selector42~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~14_combout\ = (ptr(0) & (\line2_buffer~combout\(2) & ((ptr(1))))) # (!ptr(0) & (((\line2_buffer~combout\(10)) # (!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(2),
	datab => \line2_buffer~combout\(10),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector42~14_combout\);

-- Location: LCCOMB_X41_Y35_N14
\Selector42~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~15_combout\ = (\Selector42~14_combout\ & (((\line2_buffer~combout\(26)) # (ptr(1))))) # (!\Selector42~14_combout\ & (\line2_buffer~combout\(18) & ((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(18),
	datab => \line2_buffer~combout\(26),
	datac => \Selector42~14_combout\,
	datad => ptr(1),
	combout => \Selector42~15_combout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[42]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(42),
	combout => \line2_buffer~combout\(42));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[34]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(34),
	combout => \line2_buffer~combout\(34));

-- Location: LCCOMB_X41_Y35_N24
\Selector42~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~12_combout\ = (ptr(0) & ((ptr(1) & ((\line2_buffer~combout\(34)))) # (!ptr(1) & (\line2_buffer~combout\(50))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(50),
	datab => \line2_buffer~combout\(34),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector42~12_combout\);

-- Location: LCCOMB_X41_Y35_N26
\Selector42~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~13_combout\ = (\Selector42~12_combout\ & ((\line2_buffer~combout\(58)) # ((ptr(0))))) # (!\Selector42~12_combout\ & (((\line2_buffer~combout\(42) & !ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(58),
	datab => \line2_buffer~combout\(42),
	datac => \Selector42~12_combout\,
	datad => ptr(0),
	combout => \Selector42~13_combout\);

-- Location: LCCOMB_X64_Y34_N24
\Selector42~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~16_combout\ = (ptr(2) & (\Selector42~15_combout\ & (ptr(3)))) # (!ptr(2) & (((\Selector42~13_combout\) # (!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => \Selector42~15_combout\,
	datac => ptr(3),
	datad => \Selector42~13_combout\,
	combout => \Selector42~16_combout\);

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[74]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(74),
	combout => \line2_buffer~combout\(74));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[66]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(66),
	combout => \line2_buffer~combout\(66));

-- Location: LCCOMB_X64_Y34_N4
\Selector42~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~10_combout\ = (ptr(0) & (((ptr(1) & \line2_buffer~combout\(66))))) # (!ptr(0) & ((\line2_buffer~combout\(74)) # ((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => \line2_buffer~combout\(74),
	datac => ptr(1),
	datad => \line2_buffer~combout\(66),
	combout => \Selector42~10_combout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[90]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(90),
	combout => \line2_buffer~combout\(90));

-- Location: LCCOMB_X64_Y34_N22
\Selector42~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~11_combout\ = (\Selector42~10_combout\ & (((ptr(1)) # (\line2_buffer~combout\(90))))) # (!\Selector42~10_combout\ & (\line2_buffer~combout\(82) & (!ptr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(82),
	datab => \Selector42~10_combout\,
	datac => ptr(1),
	datad => \line2_buffer~combout\(90),
	combout => \Selector42~11_combout\);

-- Location: LCCOMB_X64_Y34_N6
\Selector42~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~19_combout\ = (ptr(3) & (((\Selector42~16_combout\)))) # (!ptr(3) & ((\Selector42~16_combout\ & (\Selector42~18_combout\)) # (!\Selector42~16_combout\ & ((\Selector42~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \Selector42~18_combout\,
	datac => \Selector42~16_combout\,
	datad => \Selector42~11_combout\,
	combout => \Selector42~19_combout\);

-- Location: LCFF_X58_Y31_N17
\lcd_data[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcd_data[2]~reg0feeder_combout\,
	sdata => \Selector42~19_combout\,
	sload => \state.line2~regout\,
	ena => \lcd_data[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_data[2]~reg0_regout\);

-- Location: LCCOMB_X58_Y31_N18
\lcd_data[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[3]~3_combout\ = (\state.line1~regout\ & (\Selector41~9_combout\)) # (!\state.line1~regout\ & ((!\Selector42~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~9_combout\,
	datab => \state.line1~regout\,
	datad => \Selector42~2_combout\,
	combout => \lcd_data[3]~3_combout\);

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[59]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(59),
	combout => \line2_buffer~combout\(59));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[43]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(43),
	combout => \line2_buffer~combout\(43));

-- Location: LCCOMB_X64_Y11_N20
\Selector41~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~10_combout\ = (ptr(1) & ((ptr(0) & (\line2_buffer~combout\(35))) # (!ptr(0) & ((\line2_buffer~combout\(43)))))) # (!ptr(1) & (((!ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(35),
	datab => \line2_buffer~combout\(43),
	datac => ptr(1),
	datad => ptr(0),
	combout => \Selector41~10_combout\);

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[51]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(51),
	combout => \line2_buffer~combout\(51));

-- Location: LCCOMB_X64_Y11_N22
\Selector41~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~11_combout\ = (ptr(1) & (((\Selector41~10_combout\)))) # (!ptr(1) & ((\Selector41~10_combout\ & (\line2_buffer~combout\(59))) # (!\Selector41~10_combout\ & ((\line2_buffer~combout\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \line2_buffer~combout\(59),
	datac => \Selector41~10_combout\,
	datad => \line2_buffer~combout\(51),
	combout => \Selector41~11_combout\);

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[115]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(115),
	combout => \line2_buffer~combout\(115));

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[107]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(107),
	combout => \line2_buffer~combout\(107));

-- Location: LCCOMB_X64_Y11_N26
\Selector41~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~17_combout\ = (ptr(1) & ((ptr(0) & (\line2_buffer~combout\(99))) # (!ptr(0) & ((\line2_buffer~combout\(107)))))) # (!ptr(1) & (((!ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(99),
	datab => \line2_buffer~combout\(107),
	datac => ptr(1),
	datad => ptr(0),
	combout => \Selector41~17_combout\);

-- Location: LCCOMB_X64_Y11_N4
\Selector41~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~18_combout\ = (ptr(1) & (((\Selector41~17_combout\)))) # (!ptr(1) & ((\Selector41~17_combout\ & (\line2_buffer~combout\(123))) # (!\Selector41~17_combout\ & ((\line2_buffer~combout\(115))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(123),
	datab => \line2_buffer~combout\(115),
	datac => ptr(1),
	datad => \Selector41~17_combout\,
	combout => \Selector41~18_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[91]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(91),
	combout => \line2_buffer~combout\(91));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[83]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(83),
	combout => \line2_buffer~combout\(83));

-- Location: LCCOMB_X41_Y35_N0
\Selector41~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~12_combout\ = (ptr(0) & ((ptr(1) & (\line2_buffer~combout\(67))) # (!ptr(1) & ((\line2_buffer~combout\(83)))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(67),
	datab => \line2_buffer~combout\(83),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector41~12_combout\);

-- Location: LCCOMB_X41_Y35_N18
\Selector41~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~13_combout\ = (ptr(0) & (((\Selector41~12_combout\)))) # (!ptr(0) & ((\Selector41~12_combout\ & ((\line2_buffer~combout\(91)))) # (!\Selector41~12_combout\ & (\line2_buffer~combout\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(75),
	datab => \line2_buffer~combout\(91),
	datac => ptr(0),
	datad => \Selector41~12_combout\,
	combout => \Selector41~13_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[11]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(11),
	combout => \line2_buffer~combout\(11));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[3]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(3),
	combout => \line2_buffer~combout\(3));

-- Location: LCCOMB_X41_Y35_N12
\Selector41~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~14_combout\ = (ptr(0) & ((ptr(1) & ((\line2_buffer~combout\(3)))) # (!ptr(1) & (\line2_buffer~combout\(19))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(19),
	datab => \line2_buffer~combout\(3),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector41~14_combout\);

-- Location: LCCOMB_X41_Y35_N22
\Selector41~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~15_combout\ = (ptr(0) & (((\Selector41~14_combout\)))) # (!ptr(0) & ((\Selector41~14_combout\ & (\line2_buffer~combout\(27))) # (!\Selector41~14_combout\ & ((\line2_buffer~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(27),
	datab => \line2_buffer~combout\(11),
	datac => ptr(0),
	datad => \Selector41~14_combout\,
	combout => \Selector41~15_combout\);

-- Location: LCCOMB_X64_Y11_N0
\Selector41~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~16_combout\ = (ptr(3) & (ptr(2) & ((\Selector41~15_combout\)))) # (!ptr(3) & (((\Selector41~13_combout\)) # (!ptr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => ptr(2),
	datac => \Selector41~13_combout\,
	datad => \Selector41~15_combout\,
	combout => \Selector41~16_combout\);

-- Location: LCCOMB_X64_Y11_N14
\Selector41~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~19_combout\ = (ptr(2) & (((\Selector41~16_combout\)))) # (!ptr(2) & ((\Selector41~16_combout\ & ((\Selector41~18_combout\))) # (!\Selector41~16_combout\ & (\Selector41~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => \Selector41~11_combout\,
	datac => \Selector41~18_combout\,
	datad => \Selector41~16_combout\,
	combout => \Selector41~19_combout\);

-- Location: LCFF_X58_Y31_N19
\lcd_data[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcd_data[3]~3_combout\,
	sdata => \Selector41~19_combout\,
	sload => \state.line2~regout\,
	ena => \lcd_data[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_data[3]~reg0_regout\);

-- Location: LCCOMB_X57_Y33_N28
\Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (!\state.RESETLINE~regout\ & (\LessThan1~2_combout\ & !\Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESETLINE~regout\,
	datac => \LessThan1~2_combout\,
	datad => \Add0~60_combout\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X57_Y33_N30
\Selector40~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~1_combout\ = (\Selector40~0_combout\) # ((!\state.RESETLINE~regout\ & ((\Add0~62_combout\) # (!\state.initialize~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESETLINE~regout\,
	datab => \state.initialize~regout\,
	datac => \Add0~62_combout\,
	datad => \Selector40~0_combout\,
	combout => \Selector40~1_combout\);

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[92]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(92),
	combout => \line1_buffer~combout\(92));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[60]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(60),
	combout => \line1_buffer~combout\(60));

-- Location: LCCOMB_X8_Y33_N20
\Selector40~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~9_combout\ = (ptr(2) & (\line1_buffer~combout\(28) & ((ptr(3))))) # (!ptr(2) & (((\line1_buffer~combout\(60)) # (!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(28),
	datab => \line1_buffer~combout\(60),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector40~9_combout\);

-- Location: LCCOMB_X8_Y33_N14
\Selector40~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~10_combout\ = (\Selector40~9_combout\ & ((\line1_buffer~combout\(124)) # ((ptr(3))))) # (!\Selector40~9_combout\ & (((\line1_buffer~combout\(92) & !ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(124),
	datab => \line1_buffer~combout\(92),
	datac => \Selector40~9_combout\,
	datad => ptr(3),
	combout => \Selector40~10_combout\);

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[76]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(76),
	combout => \line1_buffer~combout\(76));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[12]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(12),
	combout => \line1_buffer~combout\(12));

-- Location: LCCOMB_X4_Y33_N28
\Selector40~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~4_combout\ = (ptr(2) & (((\line1_buffer~combout\(12) & ptr(3))))) # (!ptr(2) & ((\line1_buffer~combout\(44)) # ((!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(44),
	datab => \line1_buffer~combout\(12),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector40~4_combout\);

-- Location: LCCOMB_X4_Y33_N30
\Selector40~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~5_combout\ = (ptr(3) & (((\Selector40~4_combout\)))) # (!ptr(3) & ((\Selector40~4_combout\ & (\line1_buffer~combout\(108))) # (!\Selector40~4_combout\ & ((\line1_buffer~combout\(76))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(108),
	datab => \line1_buffer~combout\(76),
	datac => ptr(3),
	datad => \Selector40~4_combout\,
	combout => \Selector40~5_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[36]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(36),
	combout => \line1_buffer~combout\(36));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[68]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(68),
	combout => \line1_buffer~combout\(68));

-- Location: LCCOMB_X4_Y33_N24
\Selector40~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~6_combout\ = (ptr(2) & ((ptr(3) & (\line1_buffer~combout\(4))) # (!ptr(3) & ((\line1_buffer~combout\(68)))))) # (!ptr(2) & (((!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(4),
	datab => \line1_buffer~combout\(68),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector40~6_combout\);

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[100]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(100),
	combout => \line1_buffer~combout\(100));

-- Location: LCCOMB_X4_Y33_N10
\Selector40~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~7_combout\ = (ptr(2) & (((\Selector40~6_combout\)))) # (!ptr(2) & ((\Selector40~6_combout\ & ((\line1_buffer~combout\(100)))) # (!\Selector40~6_combout\ & (\line1_buffer~combout\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => \line1_buffer~combout\(36),
	datac => \Selector40~6_combout\,
	datad => \line1_buffer~combout\(100),
	combout => \Selector40~7_combout\);

-- Location: LCCOMB_X4_Y33_N4
\Selector40~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~8_combout\ = (ptr(1) & ((ptr(0) & ((\Selector40~7_combout\))) # (!ptr(0) & (\Selector40~5_combout\)))) # (!ptr(1) & (((!ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \Selector40~5_combout\,
	datac => ptr(0),
	datad => \Selector40~7_combout\,
	combout => \Selector40~8_combout\);

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[52]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(52),
	combout => \line1_buffer~combout\(52));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[20]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(20),
	combout => \line1_buffer~combout\(20));

-- Location: LCCOMB_X4_Y33_N0
\Selector40~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~2_combout\ = (ptr(2) & ((ptr(3) & ((\line1_buffer~combout\(20)))) # (!ptr(3) & (\line1_buffer~combout\(84))))) # (!ptr(2) & (((!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(84),
	datab => \line1_buffer~combout\(20),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector40~2_combout\);

-- Location: LCCOMB_X4_Y33_N18
\Selector40~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~3_combout\ = (ptr(2) & (((\Selector40~2_combout\)))) # (!ptr(2) & ((\Selector40~2_combout\ & (\line1_buffer~combout\(116))) # (!\Selector40~2_combout\ & ((\line1_buffer~combout\(52))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(116),
	datab => \line1_buffer~combout\(52),
	datac => ptr(2),
	datad => \Selector40~2_combout\,
	combout => \Selector40~3_combout\);

-- Location: LCCOMB_X4_Y33_N22
\Selector40~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~11_combout\ = (ptr(1) & (((\Selector40~8_combout\)))) # (!ptr(1) & ((\Selector40~8_combout\ & (\Selector40~10_combout\)) # (!\Selector40~8_combout\ & ((\Selector40~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \Selector40~10_combout\,
	datac => \Selector40~8_combout\,
	datad => \Selector40~3_combout\,
	combout => \Selector40~11_combout\);

-- Location: LCCOMB_X57_Y33_N26
\lcd_data[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[4]~4_combout\ = (\state.line1~regout\ & ((\Selector40~11_combout\))) # (!\state.line1~regout\ & (\Selector40~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.line1~regout\,
	datab => \Selector40~1_combout\,
	datad => \Selector40~11_combout\,
	combout => \lcd_data[4]~4_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[108]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(108),
	combout => \line2_buffer~combout\(108));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[100]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(100),
	combout => \line2_buffer~combout\(100));

-- Location: LCCOMB_X23_Y35_N2
\Selector40~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~19_combout\ = (ptr(0) & ((ptr(1) & ((\line2_buffer~combout\(100)))) # (!ptr(1) & (\line2_buffer~combout\(116))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(116),
	datab => \line2_buffer~combout\(100),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector40~19_combout\);

-- Location: LCCOMB_X23_Y35_N4
\Selector40~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~20_combout\ = (ptr(0) & (((\Selector40~19_combout\)))) # (!ptr(0) & ((\Selector40~19_combout\ & (\line2_buffer~combout\(124))) # (!\Selector40~19_combout\ & ((\line2_buffer~combout\(108))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(124),
	datab => \line2_buffer~combout\(108),
	datac => ptr(0),
	datad => \Selector40~19_combout\,
	combout => \Selector40~20_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[84]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(84),
	combout => \line2_buffer~combout\(84));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[68]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(68),
	combout => \line2_buffer~combout\(68));

-- Location: LCCOMB_X41_Y35_N16
\Selector40~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~12_combout\ = (ptr(0) & (((\line2_buffer~combout\(68) & ptr(1))))) # (!ptr(0) & ((\line2_buffer~combout\(76)) # ((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(76),
	datab => \line2_buffer~combout\(68),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector40~12_combout\);

-- Location: LCCOMB_X41_Y35_N10
\Selector40~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~13_combout\ = (\Selector40~12_combout\ & ((\line2_buffer~combout\(92)) # ((ptr(1))))) # (!\Selector40~12_combout\ & (((\line2_buffer~combout\(84) & !ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(92),
	datab => \line2_buffer~combout\(84),
	datac => \Selector40~12_combout\,
	datad => ptr(1),
	combout => \Selector40~13_combout\);

-- Location: LCCOMB_X23_Y35_N22
\Selector40~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~21_combout\ = (\Selector40~18_combout\ & ((ptr(3)) # ((\Selector40~20_combout\)))) # (!\Selector40~18_combout\ & (!ptr(3) & ((\Selector40~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~18_combout\,
	datab => ptr(3),
	datac => \Selector40~20_combout\,
	datad => \Selector40~13_combout\,
	combout => \Selector40~21_combout\);

-- Location: LCFF_X57_Y33_N27
\lcd_data[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcd_data[4]~4_combout\,
	sdata => \Selector40~21_combout\,
	sload => \state.line2~regout\,
	ena => \lcd_data[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_data[4]~reg0_regout\);

-- Location: LCCOMB_X57_Y33_N4
\lcd_data[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[5]~5_combout\ = (\state.line1~regout\ & (\Selector39~9_combout\)) # (!\state.line1~regout\ & ((\Selector40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~9_combout\,
	datab => \state.line1~regout\,
	datad => \Selector40~1_combout\,
	combout => \lcd_data[5]~5_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[61]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(61),
	combout => \line2_buffer~combout\(61));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[37]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(37),
	combout => \line2_buffer~combout\(37));

-- Location: LCCOMB_X23_Y35_N8
\Selector39~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~10_combout\ = (ptr(0) & (((\line2_buffer~combout\(37) & ptr(1))))) # (!ptr(0) & ((\line2_buffer~combout\(45)) # ((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(45),
	datab => ptr(0),
	datac => \line2_buffer~combout\(37),
	datad => ptr(1),
	combout => \Selector39~10_combout\);

-- Location: LCCOMB_X23_Y35_N26
\Selector39~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~11_combout\ = (\Selector39~10_combout\ & (((\line2_buffer~combout\(61)) # (ptr(1))))) # (!\Selector39~10_combout\ & (\line2_buffer~combout\(53) & ((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(53),
	datab => \line2_buffer~combout\(61),
	datac => \Selector39~10_combout\,
	datad => ptr(1),
	combout => \Selector39~11_combout\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[117]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(117),
	combout => \line2_buffer~combout\(117));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[101]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(101),
	combout => \line2_buffer~combout\(101));

-- Location: LCCOMB_X23_Y35_N10
\Selector39~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~17_combout\ = (ptr(0) & (((\line2_buffer~combout\(101) & ptr(1))))) # (!ptr(0) & ((\line2_buffer~combout\(109)) # ((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(109),
	datab => \line2_buffer~combout\(101),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector39~17_combout\);

-- Location: LCCOMB_X23_Y35_N20
\Selector39~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~18_combout\ = (ptr(1) & (((\Selector39~17_combout\)))) # (!ptr(1) & ((\Selector39~17_combout\ & (\line2_buffer~combout\(125))) # (!\Selector39~17_combout\ & ((\line2_buffer~combout\(117))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(125),
	datab => \line2_buffer~combout\(117),
	datac => ptr(1),
	datad => \Selector39~17_combout\,
	combout => \Selector39~18_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[13]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(13),
	combout => \line2_buffer~combout\(13));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[21]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(21),
	combout => \line2_buffer~combout\(21));

-- Location: LCCOMB_X23_Y35_N12
\Selector39~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~14_combout\ = (ptr(0) & ((ptr(1) & (\line2_buffer~combout\(5))) # (!ptr(1) & ((\line2_buffer~combout\(21)))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(5),
	datab => \line2_buffer~combout\(21),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector39~14_combout\);

-- Location: LCCOMB_X23_Y35_N30
\Selector39~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~15_combout\ = (ptr(0) & (((\Selector39~14_combout\)))) # (!ptr(0) & ((\Selector39~14_combout\ & (\line2_buffer~combout\(29))) # (!\Selector39~14_combout\ & ((\line2_buffer~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(29),
	datab => \line2_buffer~combout\(13),
	datac => ptr(0),
	datad => \Selector39~14_combout\,
	combout => \Selector39~15_combout\);

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[77]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(77),
	combout => \line2_buffer~combout\(77));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[85]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(85),
	combout => \line2_buffer~combout\(85));

-- Location: LCCOMB_X11_Y35_N0
\Selector39~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~12_combout\ = (ptr(0) & ((ptr(1) & (\line2_buffer~combout\(69))) # (!ptr(1) & ((\line2_buffer~combout\(85)))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(69),
	datab => \line2_buffer~combout\(85),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector39~12_combout\);

-- Location: LCCOMB_X11_Y35_N10
\Selector39~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~13_combout\ = (ptr(0) & (((\Selector39~12_combout\)))) # (!ptr(0) & ((\Selector39~12_combout\ & (\line2_buffer~combout\(93))) # (!\Selector39~12_combout\ & ((\line2_buffer~combout\(77))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(93),
	datab => \line2_buffer~combout\(77),
	datac => ptr(0),
	datad => \Selector39~12_combout\,
	combout => \Selector39~13_combout\);

-- Location: LCCOMB_X23_Y35_N0
\Selector39~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~16_combout\ = (ptr(2) & ((ptr(3) & (\Selector39~15_combout\)) # (!ptr(3) & ((\Selector39~13_combout\))))) # (!ptr(2) & (!ptr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => ptr(3),
	datac => \Selector39~15_combout\,
	datad => \Selector39~13_combout\,
	combout => \Selector39~16_combout\);

-- Location: LCCOMB_X23_Y35_N6
\Selector39~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~19_combout\ = (ptr(2) & (((\Selector39~16_combout\)))) # (!ptr(2) & ((\Selector39~16_combout\ & ((\Selector39~18_combout\))) # (!\Selector39~16_combout\ & (\Selector39~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => \Selector39~11_combout\,
	datac => \Selector39~18_combout\,
	datad => \Selector39~16_combout\,
	combout => \Selector39~19_combout\);

-- Location: LCFF_X57_Y33_N5
\lcd_data[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcd_data[5]~5_combout\,
	sdata => \Selector39~19_combout\,
	sload => \state.line2~regout\,
	ena => \lcd_data[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_data[5]~reg0_regout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[118]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(118),
	combout => \line1_buffer~combout\(118));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[86]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(86),
	combout => \line1_buffer~combout\(86));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[22]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(22),
	combout => \line1_buffer~combout\(22));

-- Location: LCCOMB_X64_Y25_N20
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (ptr(3) & (((\line1_buffer~combout\(22) & ptr(2))))) # (!ptr(3) & ((\line1_buffer~combout\(86)) # ((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \line1_buffer~combout\(86),
	datac => \line1_buffer~combout\(22),
	datad => ptr(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X64_Y25_N22
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\line1_buffer~combout\(118)) # (ptr(2))))) # (!\Mux1~0_combout\ & (\line1_buffer~combout\(54) & ((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(54),
	datab => \line1_buffer~combout\(118),
	datac => \Mux1~0_combout\,
	datad => ptr(2),
	combout => \Mux1~1_combout\);

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[78]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(78),
	combout => \line1_buffer~combout\(78));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[110]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(110),
	combout => \line1_buffer~combout\(110));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[46]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(46),
	combout => \line1_buffer~combout\(46));

-- Location: LCCOMB_X64_Y13_N12
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (ptr(2) & (\line1_buffer~combout\(14) & ((ptr(3))))) # (!ptr(2) & (((\line1_buffer~combout\(46)) # (!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(14),
	datab => \line1_buffer~combout\(46),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X64_Y13_N14
\Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (ptr(3) & (((\Mux1~2_combout\)))) # (!ptr(3) & ((\Mux1~2_combout\ & ((\line1_buffer~combout\(110)))) # (!\Mux1~2_combout\ & (\line1_buffer~combout\(78)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \line1_buffer~combout\(78),
	datac => \line1_buffer~combout\(110),
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[102]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(102),
	combout => \line1_buffer~combout\(102));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[70]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(70),
	combout => \line1_buffer~combout\(70));

-- Location: LCCOMB_X64_Y13_N0
\Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (ptr(2) & ((ptr(3) & (\line1_buffer~combout\(6))) # (!ptr(3) & ((\line1_buffer~combout\(70)))))) # (!ptr(2) & (((!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(6),
	datab => \line1_buffer~combout\(70),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X64_Y13_N18
\Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (ptr(2) & (((\Mux1~4_combout\)))) # (!ptr(2) & ((\Mux1~4_combout\ & ((\line1_buffer~combout\(102)))) # (!\Mux1~4_combout\ & (\line1_buffer~combout\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(38),
	datab => \line1_buffer~combout\(102),
	datac => ptr(2),
	datad => \Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X64_Y13_N4
\Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (ptr(1) & ((ptr(0) & ((\Mux1~5_combout\))) # (!ptr(0) & (\Mux1~3_combout\)))) # (!ptr(1) & (!ptr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => ptr(0),
	datac => \Mux1~3_combout\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X64_Y25_N28
\Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (ptr(1) & (((\Mux1~6_combout\)))) # (!ptr(1) & ((\Mux1~6_combout\ & (\Mux1~8_combout\)) # (!\Mux1~6_combout\ & ((\Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~8_combout\,
	datab => \Mux1~1_combout\,
	datac => ptr(1),
	datad => \Mux1~6_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X60_Y33_N0
\Selector38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector38~2_combout\ = (\state.line1~regout\ & ((\Mux1~9_combout\) # ((\line~regout\ & \state.RESETLINE~regout\)))) # (!\state.line1~regout\ & (\line~regout\ & (\state.RESETLINE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.line1~regout\,
	datab => \line~regout\,
	datac => \state.RESETLINE~regout\,
	datad => \Mux1~9_combout\,
	combout => \Selector38~2_combout\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[94]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(94),
	combout => \line2_buffer~combout\(94));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[86]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(86),
	combout => \line2_buffer~combout\(86));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[78]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(78),
	combout => \line2_buffer~combout\(78));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[70]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(70),
	combout => \line2_buffer~combout\(70));

-- Location: LCCOMB_X56_Y33_N2
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (ptr(1) & ((ptr(0) & ((\line2_buffer~combout\(70)))) # (!ptr(0) & (\line2_buffer~combout\(78))))) # (!ptr(1) & (((!ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \line2_buffer~combout\(78),
	datac => ptr(0),
	datad => \line2_buffer~combout\(70),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X56_Y33_N28
\Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (ptr(1) & (((\Mux9~0_combout\)))) # (!ptr(1) & ((\Mux9~0_combout\ & (\line2_buffer~combout\(94))) # (!\Mux9~0_combout\ & ((\line2_buffer~combout\(86))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \line2_buffer~combout\(94),
	datac => \line2_buffer~combout\(86),
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[38]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(38),
	combout => \line2_buffer~combout\(38));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[54]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(54),
	combout => \line2_buffer~combout\(54));

-- Location: LCCOMB_X56_Y33_N22
\Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (ptr(1) & (\line2_buffer~combout\(38) & (ptr(0)))) # (!ptr(1) & (((\line2_buffer~combout\(54)) # (!ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \line2_buffer~combout\(38),
	datac => ptr(0),
	datad => \line2_buffer~combout\(54),
	combout => \Mux9~2_combout\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[62]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(62),
	combout => \line2_buffer~combout\(62));

-- Location: LCCOMB_X56_Y33_N8
\Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & (((ptr(0)) # (\line2_buffer~combout\(62))))) # (!\Mux9~2_combout\ & (\line2_buffer~combout\(46) & (!ptr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(46),
	datab => \Mux9~2_combout\,
	datac => ptr(0),
	datad => \line2_buffer~combout\(62),
	combout => \Mux9~3_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[6]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(6),
	combout => \line2_buffer~combout\(6));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[14]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(14),
	combout => \line2_buffer~combout\(14));

-- Location: LCCOMB_X56_Y33_N26
\Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (ptr(1) & ((ptr(0) & (\line2_buffer~combout\(6))) # (!ptr(0) & ((\line2_buffer~combout\(14)))))) # (!ptr(1) & (((!ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \line2_buffer~combout\(6),
	datac => ptr(0),
	datad => \line2_buffer~combout\(14),
	combout => \Mux9~4_combout\);

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[30]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(30),
	combout => \line2_buffer~combout\(30));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[22]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(22),
	combout => \line2_buffer~combout\(22));

-- Location: LCCOMB_X56_Y33_N12
\Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (ptr(1) & (\Mux9~4_combout\)) # (!ptr(1) & ((\Mux9~4_combout\ & (\line2_buffer~combout\(30))) # (!\Mux9~4_combout\ & ((\line2_buffer~combout\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(1),
	datab => \Mux9~4_combout\,
	datac => \line2_buffer~combout\(30),
	datad => \line2_buffer~combout\(22),
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X56_Y33_N14
\Mux9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (ptr(3) & ((ptr(2) & ((\Mux9~5_combout\))) # (!ptr(2) & (\Mux9~3_combout\)))) # (!ptr(3) & (!ptr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => ptr(2),
	datac => \Mux9~3_combout\,
	datad => \Mux9~5_combout\,
	combout => \Mux9~6_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[126]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(126),
	combout => \line2_buffer~combout\(126));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[118]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(118),
	combout => \line2_buffer~combout\(118));

-- Location: LCCOMB_X8_Y33_N8
\Mux9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (ptr(0) & ((ptr(1) & (\line2_buffer~combout\(102))) # (!ptr(1) & ((\line2_buffer~combout\(118)))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(102),
	datab => \line2_buffer~combout\(118),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X56_Y33_N0
\Mux9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (ptr(0) & (((\Mux9~7_combout\)))) # (!ptr(0) & ((\Mux9~7_combout\ & ((\line2_buffer~combout\(126)))) # (!\Mux9~7_combout\ & (\line2_buffer~combout\(110)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(110),
	datab => \line2_buffer~combout\(126),
	datac => ptr(0),
	datad => \Mux9~7_combout\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X56_Y33_N10
\Mux9~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (ptr(3) & (((\Mux9~6_combout\)))) # (!ptr(3) & ((\Mux9~6_combout\ & ((\Mux9~8_combout\))) # (!\Mux9~6_combout\ & (\Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(3),
	datab => \Mux9~1_combout\,
	datac => \Mux9~6_combout\,
	datad => \Mux9~8_combout\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X59_Y33_N26
\Selector38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\state.send~regout\ & ((\lcd_data[6]~reg0_regout\) # ((\state.line2~regout\ & \Mux9~9_combout\)))) # (!\state.send~regout\ & (((\state.line2~regout\ & \Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.send~regout\,
	datab => \lcd_data[6]~reg0_regout\,
	datac => \state.line2~regout\,
	datad => \Mux9~9_combout\,
	combout => \Selector38~1_combout\);

-- Location: LCCOMB_X59_Y33_N28
\Selector38~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector38~3_combout\ = (\Selector38~2_combout\) # ((\Selector38~1_combout\) # ((\Selector38~0_combout\ & \lcd_data[6]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~0_combout\,
	datab => \lcd_data[6]~reg0_regout\,
	datac => \Selector38~2_combout\,
	datad => \Selector38~1_combout\,
	combout => \Selector38~3_combout\);

-- Location: LCCOMB_X58_Y33_N28
\Selector38~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector38~4_combout\ = (\Selector38~3_combout\) # ((\lcd_data[2]~7_combout\ & (\lcd_data[2]~8_combout\ & \lcd_data[6]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data[2]~7_combout\,
	datab => \lcd_data[2]~8_combout\,
	datac => \lcd_data[6]~reg0_regout\,
	datad => \Selector38~3_combout\,
	combout => \Selector38~4_combout\);

-- Location: LCFF_X58_Y33_N29
\lcd_data[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector38~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_data[6]~reg0_regout\);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[127]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(127),
	combout => \line1_buffer~combout\(127));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[31]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(31),
	combout => \line1_buffer~combout\(31));

-- Location: LCCOMB_X8_Y33_N16
\Selector37~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~7_combout\ = (ptr(2) & ((ptr(3) & ((\line1_buffer~combout\(31)))) # (!ptr(3) & (\line1_buffer~combout\(95))))) # (!ptr(2) & (((!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(95),
	datab => \line1_buffer~combout\(31),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector37~7_combout\);

-- Location: LCCOMB_X8_Y33_N2
\Selector37~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~8_combout\ = (\Selector37~7_combout\ & (((\line1_buffer~combout\(127)) # (ptr(2))))) # (!\Selector37~7_combout\ & (\line1_buffer~combout\(63) & ((!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(63),
	datab => \line1_buffer~combout\(127),
	datac => \Selector37~7_combout\,
	datad => ptr(2),
	combout => \Selector37~8_combout\);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[47]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(47),
	combout => \line1_buffer~combout\(47));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[111]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(111),
	combout => \line1_buffer~combout\(111));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[79]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(79),
	combout => \line1_buffer~combout\(79));

-- Location: LCCOMB_X8_Y33_N26
\Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (ptr(2) & ((ptr(3) & (\line1_buffer~combout\(15))) # (!ptr(3) & ((\line1_buffer~combout\(79)))))) # (!ptr(2) & (((!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(15),
	datab => \line1_buffer~combout\(79),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X8_Y33_N4
\Selector37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (ptr(2) & (((\Selector37~0_combout\)))) # (!ptr(2) & ((\Selector37~0_combout\ & ((\line1_buffer~combout\(111)))) # (!\Selector37~0_combout\ & (\line1_buffer~combout\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => \line1_buffer~combout\(47),
	datac => \line1_buffer~combout\(111),
	datad => \Selector37~0_combout\,
	combout => \Selector37~1_combout\);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[119]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(119),
	combout => \line1_buffer~combout\(119));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line1_buffer[55]~I\ : cycloneii_io
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
	padio => ww_line1_buffer(55),
	combout => \line1_buffer~combout\(55));

-- Location: LCCOMB_X8_Y33_N6
\Selector37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (ptr(2) & (\line1_buffer~combout\(23) & ((ptr(3))))) # (!ptr(2) & (((\line1_buffer~combout\(55)) # (!ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(23),
	datab => \line1_buffer~combout\(55),
	datac => ptr(2),
	datad => ptr(3),
	combout => \Selector37~2_combout\);

-- Location: LCCOMB_X8_Y33_N0
\Selector37~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~3_combout\ = (ptr(3) & (((\Selector37~2_combout\)))) # (!ptr(3) & ((\Selector37~2_combout\ & ((\line1_buffer~combout\(119)))) # (!\Selector37~2_combout\ & (\line1_buffer~combout\(87)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_buffer~combout\(87),
	datab => \line1_buffer~combout\(119),
	datac => ptr(3),
	datad => \Selector37~2_combout\,
	combout => \Selector37~3_combout\);

-- Location: LCCOMB_X8_Y33_N22
\Selector37~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~6_combout\ = (ptr(0) & ((ptr(1) & (\Selector37~5_combout\)) # (!ptr(1) & ((\Selector37~3_combout\))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~5_combout\,
	datab => ptr(0),
	datac => ptr(1),
	datad => \Selector37~3_combout\,
	combout => \Selector37~6_combout\);

-- Location: LCCOMB_X8_Y33_N28
\Selector37~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~9_combout\ = (ptr(0) & (((\Selector37~6_combout\)))) # (!ptr(0) & ((\Selector37~6_combout\ & (\Selector37~8_combout\)) # (!\Selector37~6_combout\ & ((\Selector37~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(0),
	datab => \Selector37~8_combout\,
	datac => \Selector37~1_combout\,
	datad => \Selector37~6_combout\,
	combout => \Selector37~9_combout\);

-- Location: LCCOMB_X58_Y33_N10
\lcd_data[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_data[7]~6_combout\ = (\state.line1~regout\ & ((\Selector37~9_combout\))) # (!\state.line1~regout\ & (\state.RESETLINE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESETLINE~regout\,
	datab => \state.line1~regout\,
	datad => \Selector37~9_combout\,
	combout => \lcd_data[7]~6_combout\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[55]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(55),
	combout => \line2_buffer~combout\(55));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[39]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(39),
	combout => \line2_buffer~combout\(39));

-- Location: LCCOMB_X11_Y35_N28
\Selector37~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~10_combout\ = (ptr(0) & (((\line2_buffer~combout\(39) & ptr(1))))) # (!ptr(0) & ((\line2_buffer~combout\(47)) # ((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(47),
	datab => ptr(0),
	datac => \line2_buffer~combout\(39),
	datad => ptr(1),
	combout => \Selector37~10_combout\);

-- Location: LCCOMB_X11_Y35_N30
\Selector37~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~11_combout\ = (ptr(1) & (((\Selector37~10_combout\)))) # (!ptr(1) & ((\Selector37~10_combout\ & (\line2_buffer~combout\(63))) # (!\Selector37~10_combout\ & ((\line2_buffer~combout\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(63),
	datab => \line2_buffer~combout\(55),
	datac => ptr(1),
	datad => \Selector37~10_combout\,
	combout => \Selector37~11_combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[87]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(87),
	combout => \line2_buffer~combout\(87));

-- Location: LCCOMB_X11_Y35_N24
\Selector37~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~12_combout\ = (ptr(0) & ((ptr(1) & (\line2_buffer~combout\(71))) # (!ptr(1) & ((\line2_buffer~combout\(87)))))) # (!ptr(0) & (((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(71),
	datab => \line2_buffer~combout\(87),
	datac => ptr(0),
	datad => ptr(1),
	combout => \Selector37~12_combout\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[95]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(95),
	combout => \line2_buffer~combout\(95));

-- Location: LCCOMB_X11_Y35_N2
\Selector37~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~13_combout\ = (ptr(0) & (((\Selector37~12_combout\)))) # (!ptr(0) & ((\Selector37~12_combout\ & ((\line2_buffer~combout\(95)))) # (!\Selector37~12_combout\ & (\line2_buffer~combout\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(79),
	datab => ptr(0),
	datac => \Selector37~12_combout\,
	datad => \line2_buffer~combout\(95),
	combout => \Selector37~13_combout\);

-- Location: LCCOMB_X11_Y35_N16
\Selector37~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~16_combout\ = (ptr(3) & (\Selector37~15_combout\ & (ptr(2)))) # (!ptr(3) & (((\Selector37~13_combout\) # (!ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~15_combout\,
	datab => ptr(3),
	datac => ptr(2),
	datad => \Selector37~13_combout\,
	combout => \Selector37~16_combout\);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[119]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(119),
	combout => \line2_buffer~combout\(119));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\line2_buffer[103]~I\ : cycloneii_io
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
	padio => ww_line2_buffer(103),
	combout => \line2_buffer~combout\(103));

-- Location: LCCOMB_X11_Y35_N18
\Selector37~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~17_combout\ = (ptr(0) & (((\line2_buffer~combout\(103) & ptr(1))))) # (!ptr(0) & ((\line2_buffer~combout\(111)) # ((!ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(111),
	datab => ptr(0),
	datac => \line2_buffer~combout\(103),
	datad => ptr(1),
	combout => \Selector37~17_combout\);

-- Location: LCCOMB_X11_Y35_N12
\Selector37~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~18_combout\ = (ptr(1) & (((\Selector37~17_combout\)))) # (!ptr(1) & ((\Selector37~17_combout\ & (\line2_buffer~combout\(127))) # (!\Selector37~17_combout\ & ((\line2_buffer~combout\(119))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2_buffer~combout\(127),
	datab => \line2_buffer~combout\(119),
	datac => ptr(1),
	datad => \Selector37~17_combout\,
	combout => \Selector37~18_combout\);

-- Location: LCCOMB_X11_Y35_N22
\Selector37~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~19_combout\ = (ptr(2) & (((\Selector37~16_combout\)))) # (!ptr(2) & ((\Selector37~16_combout\ & ((\Selector37~18_combout\))) # (!\Selector37~16_combout\ & (\Selector37~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ptr(2),
	datab => \Selector37~11_combout\,
	datac => \Selector37~16_combout\,
	datad => \Selector37~18_combout\,
	combout => \Selector37~19_combout\);

-- Location: LCFF_X58_Y33_N11
\lcd_data[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcd_data[7]~6_combout\,
	sdata => \Selector37~19_combout\,
	sload => \state.line2~regout\,
	ena => \lcd_data[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_data[7]~reg0_regout\);

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \rs~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rs);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \e~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_e);

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \lcd_data[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(0));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \lcd_data[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(1));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \lcd_data[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(2));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \lcd_data[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(3));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \lcd_data[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(4));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \lcd_data[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(5));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \lcd_data[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(6));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \lcd_data[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(7));
END structure;


