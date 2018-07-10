-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "07/10/2018 14:22:44"

-- 
-- Device: Altera EP4CGX150DF31I7AD Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	state : OUT std_logic_vector(1 DOWNTO 0);
	waiting : OUT std_logic;
	param_even : OUT std_logic;
	q_select : OUT std_logic;
	parameter_number : OUT std_logic_vector(4 DOWNTO 0);
	push_wide : OUT std_logic;
	is_wide : OUT std_logic;
	arm_inst : OUT std_logic_vector(31 DOWNTO 0);
	push_inst : OUT std_logic_vector(31 DOWNTO 0);
	instr : OUT std_logic_vector(31 DOWNTO 0);
	valid_write : OUT std_logic;
	link_list_ptr : OUT std_logic_vector(8 DOWNTO 0);
	oram_iter : OUT std_logic_vector(7 DOWNTO 0);
	jvm_opcode : OUT std_logic_vector(7 DOWNTO 0);
	byte_to_push : OUT std_logic_vector(7 DOWNTO 0);
	oram_ready : OUT std_logic;
	iram : IN std_logic_vector(7 DOWNTO 0);
	iram_ready : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic
	);
END top;

-- Design Ports Information
-- state[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- waiting	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- param_even	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_select	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parameter_number[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parameter_number[1]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parameter_number[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parameter_number[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parameter_number[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_wide	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_wide	=>  Location: PIN_D29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[1]	=>  Location: PIN_C28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[6]	=>  Location: PIN_A29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[7]	=>  Location: PIN_B30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[9]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[11]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[12]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[13]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[14]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[15]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[16]	=>  Location: PIN_B27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[17]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[18]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[19]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[20]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[21]	=>  Location: PIN_B28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[22]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[23]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[24]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[25]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[26]	=>  Location: PIN_H27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[27]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[28]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[29]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[30]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[31]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[0]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[3]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[4]	=>  Location: PIN_A28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[5]	=>  Location: PIN_A27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[6]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[7]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[8]	=>  Location: PIN_AJ30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[9]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[10]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[11]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[12]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[13]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[14]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[15]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[16]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[17]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[18]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[19]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[20]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[21]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[22]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[23]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[24]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[25]	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[26]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[27]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[28]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[29]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[30]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[31]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[1]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[2]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[4]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[5]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[6]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[7]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[8]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[9]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[10]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[11]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[12]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[13]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[14]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[15]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[16]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[17]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[18]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[19]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[20]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[21]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[22]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[23]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[24]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[25]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[26]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[27]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[28]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[29]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[30]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[31]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid_write	=>  Location: PIN_C29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[1]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[5]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[6]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[7]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[8]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[1]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[7]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[3]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[7]	=>  Location: PIN_D30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[0]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[1]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[2]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[3]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[4]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[5]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[6]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[7]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_ready	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram_ready	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[1]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[2]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[5]	=>  Location: PIN_F29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[7]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_state : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_waiting : std_logic;
SIGNAL ww_param_even : std_logic;
SIGNAL ww_q_select : std_logic;
SIGNAL ww_parameter_number : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_push_wide : std_logic;
SIGNAL ww_is_wide : std_logic;
SIGNAL ww_arm_inst : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_push_inst : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_valid_write : std_logic;
SIGNAL ww_link_list_ptr : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_oram_iter : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_jvm_opcode : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_byte_to_push : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_oram_ready : std_logic;
SIGNAL ww_iram : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_iram_ready : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \waiting~output_o\ : std_logic;
SIGNAL \param_even~output_o\ : std_logic;
SIGNAL \q_select~output_o\ : std_logic;
SIGNAL \parameter_number[0]~output_o\ : std_logic;
SIGNAL \parameter_number[1]~output_o\ : std_logic;
SIGNAL \parameter_number[2]~output_o\ : std_logic;
SIGNAL \parameter_number[3]~output_o\ : std_logic;
SIGNAL \parameter_number[4]~output_o\ : std_logic;
SIGNAL \push_wide~output_o\ : std_logic;
SIGNAL \is_wide~output_o\ : std_logic;
SIGNAL \arm_inst[0]~output_o\ : std_logic;
SIGNAL \arm_inst[1]~output_o\ : std_logic;
SIGNAL \arm_inst[2]~output_o\ : std_logic;
SIGNAL \arm_inst[3]~output_o\ : std_logic;
SIGNAL \arm_inst[4]~output_o\ : std_logic;
SIGNAL \arm_inst[5]~output_o\ : std_logic;
SIGNAL \arm_inst[6]~output_o\ : std_logic;
SIGNAL \arm_inst[7]~output_o\ : std_logic;
SIGNAL \arm_inst[8]~output_o\ : std_logic;
SIGNAL \arm_inst[9]~output_o\ : std_logic;
SIGNAL \arm_inst[10]~output_o\ : std_logic;
SIGNAL \arm_inst[11]~output_o\ : std_logic;
SIGNAL \arm_inst[12]~output_o\ : std_logic;
SIGNAL \arm_inst[13]~output_o\ : std_logic;
SIGNAL \arm_inst[14]~output_o\ : std_logic;
SIGNAL \arm_inst[15]~output_o\ : std_logic;
SIGNAL \arm_inst[16]~output_o\ : std_logic;
SIGNAL \arm_inst[17]~output_o\ : std_logic;
SIGNAL \arm_inst[18]~output_o\ : std_logic;
SIGNAL \arm_inst[19]~output_o\ : std_logic;
SIGNAL \arm_inst[20]~output_o\ : std_logic;
SIGNAL \arm_inst[21]~output_o\ : std_logic;
SIGNAL \arm_inst[22]~output_o\ : std_logic;
SIGNAL \arm_inst[23]~output_o\ : std_logic;
SIGNAL \arm_inst[24]~output_o\ : std_logic;
SIGNAL \arm_inst[25]~output_o\ : std_logic;
SIGNAL \arm_inst[26]~output_o\ : std_logic;
SIGNAL \arm_inst[27]~output_o\ : std_logic;
SIGNAL \arm_inst[28]~output_o\ : std_logic;
SIGNAL \arm_inst[29]~output_o\ : std_logic;
SIGNAL \arm_inst[30]~output_o\ : std_logic;
SIGNAL \arm_inst[31]~output_o\ : std_logic;
SIGNAL \push_inst[0]~output_o\ : std_logic;
SIGNAL \push_inst[1]~output_o\ : std_logic;
SIGNAL \push_inst[2]~output_o\ : std_logic;
SIGNAL \push_inst[3]~output_o\ : std_logic;
SIGNAL \push_inst[4]~output_o\ : std_logic;
SIGNAL \push_inst[5]~output_o\ : std_logic;
SIGNAL \push_inst[6]~output_o\ : std_logic;
SIGNAL \push_inst[7]~output_o\ : std_logic;
SIGNAL \push_inst[8]~output_o\ : std_logic;
SIGNAL \push_inst[9]~output_o\ : std_logic;
SIGNAL \push_inst[10]~output_o\ : std_logic;
SIGNAL \push_inst[11]~output_o\ : std_logic;
SIGNAL \push_inst[12]~output_o\ : std_logic;
SIGNAL \push_inst[13]~output_o\ : std_logic;
SIGNAL \push_inst[14]~output_o\ : std_logic;
SIGNAL \push_inst[15]~output_o\ : std_logic;
SIGNAL \push_inst[16]~output_o\ : std_logic;
SIGNAL \push_inst[17]~output_o\ : std_logic;
SIGNAL \push_inst[18]~output_o\ : std_logic;
SIGNAL \push_inst[19]~output_o\ : std_logic;
SIGNAL \push_inst[20]~output_o\ : std_logic;
SIGNAL \push_inst[21]~output_o\ : std_logic;
SIGNAL \push_inst[22]~output_o\ : std_logic;
SIGNAL \push_inst[23]~output_o\ : std_logic;
SIGNAL \push_inst[24]~output_o\ : std_logic;
SIGNAL \push_inst[25]~output_o\ : std_logic;
SIGNAL \push_inst[26]~output_o\ : std_logic;
SIGNAL \push_inst[27]~output_o\ : std_logic;
SIGNAL \push_inst[28]~output_o\ : std_logic;
SIGNAL \push_inst[29]~output_o\ : std_logic;
SIGNAL \push_inst[30]~output_o\ : std_logic;
SIGNAL \push_inst[31]~output_o\ : std_logic;
SIGNAL \instr[0]~output_o\ : std_logic;
SIGNAL \instr[1]~output_o\ : std_logic;
SIGNAL \instr[2]~output_o\ : std_logic;
SIGNAL \instr[3]~output_o\ : std_logic;
SIGNAL \instr[4]~output_o\ : std_logic;
SIGNAL \instr[5]~output_o\ : std_logic;
SIGNAL \instr[6]~output_o\ : std_logic;
SIGNAL \instr[7]~output_o\ : std_logic;
SIGNAL \instr[8]~output_o\ : std_logic;
SIGNAL \instr[9]~output_o\ : std_logic;
SIGNAL \instr[10]~output_o\ : std_logic;
SIGNAL \instr[11]~output_o\ : std_logic;
SIGNAL \instr[12]~output_o\ : std_logic;
SIGNAL \instr[13]~output_o\ : std_logic;
SIGNAL \instr[14]~output_o\ : std_logic;
SIGNAL \instr[15]~output_o\ : std_logic;
SIGNAL \instr[16]~output_o\ : std_logic;
SIGNAL \instr[17]~output_o\ : std_logic;
SIGNAL \instr[18]~output_o\ : std_logic;
SIGNAL \instr[19]~output_o\ : std_logic;
SIGNAL \instr[20]~output_o\ : std_logic;
SIGNAL \instr[21]~output_o\ : std_logic;
SIGNAL \instr[22]~output_o\ : std_logic;
SIGNAL \instr[23]~output_o\ : std_logic;
SIGNAL \instr[24]~output_o\ : std_logic;
SIGNAL \instr[25]~output_o\ : std_logic;
SIGNAL \instr[26]~output_o\ : std_logic;
SIGNAL \instr[27]~output_o\ : std_logic;
SIGNAL \instr[28]~output_o\ : std_logic;
SIGNAL \instr[29]~output_o\ : std_logic;
SIGNAL \instr[30]~output_o\ : std_logic;
SIGNAL \instr[31]~output_o\ : std_logic;
SIGNAL \valid_write~output_o\ : std_logic;
SIGNAL \link_list_ptr[0]~output_o\ : std_logic;
SIGNAL \link_list_ptr[1]~output_o\ : std_logic;
SIGNAL \link_list_ptr[2]~output_o\ : std_logic;
SIGNAL \link_list_ptr[3]~output_o\ : std_logic;
SIGNAL \link_list_ptr[4]~output_o\ : std_logic;
SIGNAL \link_list_ptr[5]~output_o\ : std_logic;
SIGNAL \link_list_ptr[6]~output_o\ : std_logic;
SIGNAL \link_list_ptr[7]~output_o\ : std_logic;
SIGNAL \link_list_ptr[8]~output_o\ : std_logic;
SIGNAL \oram_iter[0]~output_o\ : std_logic;
SIGNAL \oram_iter[1]~output_o\ : std_logic;
SIGNAL \oram_iter[2]~output_o\ : std_logic;
SIGNAL \oram_iter[3]~output_o\ : std_logic;
SIGNAL \oram_iter[4]~output_o\ : std_logic;
SIGNAL \oram_iter[5]~output_o\ : std_logic;
SIGNAL \oram_iter[6]~output_o\ : std_logic;
SIGNAL \oram_iter[7]~output_o\ : std_logic;
SIGNAL \jvm_opcode[0]~output_o\ : std_logic;
SIGNAL \jvm_opcode[1]~output_o\ : std_logic;
SIGNAL \jvm_opcode[2]~output_o\ : std_logic;
SIGNAL \jvm_opcode[3]~output_o\ : std_logic;
SIGNAL \jvm_opcode[4]~output_o\ : std_logic;
SIGNAL \jvm_opcode[5]~output_o\ : std_logic;
SIGNAL \jvm_opcode[6]~output_o\ : std_logic;
SIGNAL \jvm_opcode[7]~output_o\ : std_logic;
SIGNAL \byte_to_push[0]~output_o\ : std_logic;
SIGNAL \byte_to_push[1]~output_o\ : std_logic;
SIGNAL \byte_to_push[2]~output_o\ : std_logic;
SIGNAL \byte_to_push[3]~output_o\ : std_logic;
SIGNAL \byte_to_push[4]~output_o\ : std_logic;
SIGNAL \byte_to_push[5]~output_o\ : std_logic;
SIGNAL \byte_to_push[6]~output_o\ : std_logic;
SIGNAL \byte_to_push[7]~output_o\ : std_logic;
SIGNAL \oram_ready~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \iram_ready~input_o\ : std_logic;
SIGNAL \iram[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \sm|Decoder0~1_combout\ : std_logic;
SIGNAL \iram[2]~input_o\ : std_logic;
SIGNAL \iram[3]~input_o\ : std_logic;
SIGNAL \iram[6]~input_o\ : std_logic;
SIGNAL \iram[4]~input_o\ : std_logic;
SIGNAL \iram[7]~input_o\ : std_logic;
SIGNAL \c|WideOr0~1_combout\ : std_logic;
SIGNAL \iram[1]~input_o\ : std_logic;
SIGNAL \iram[5]~input_o\ : std_logic;
SIGNAL \c|WideOr0~0_combout\ : std_logic;
SIGNAL \c|WideOr0~2_combout\ : std_logic;
SIGNAL \sm|Equal0~2_combout\ : std_logic;
SIGNAL \sm|Equal0~0_combout\ : std_logic;
SIGNAL \sm|Equal0~1_combout\ : std_logic;
SIGNAL \c|Decoder0~0_combout\ : std_logic;
SIGNAL \c|Decoder0~1_combout\ : std_logic;
SIGNAL \c|WideOr2~4_combout\ : std_logic;
SIGNAL \c|WideOr2~5_combout\ : std_logic;
SIGNAL \c|WideOr2~1_combout\ : std_logic;
SIGNAL \c|WideOr2~0_combout\ : std_logic;
SIGNAL \c|WideOr2~2_combout\ : std_logic;
SIGNAL \c|WideOr2~3_combout\ : std_logic;
SIGNAL \c|WideOr2~6_combout\ : std_logic;
SIGNAL \valid_write~1_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \valid_write~0_combout\ : std_logic;
SIGNAL \c|WideOr1~2_combout\ : std_logic;
SIGNAL \c|WideOr1~0_combout\ : std_logic;
SIGNAL \c|WideOr1~1_combout\ : std_logic;
SIGNAL \c|WideOr1~3_combout\ : std_logic;
SIGNAL \c|WideOr1~4_combout\ : std_logic;
SIGNAL \c|WideOr1~5_combout\ : std_logic;
SIGNAL \c|WideOr1~6_combout\ : std_logic;
SIGNAL \c|WideOr1~7_combout\ : std_logic;
SIGNAL \c|WideOr1~8_combout\ : std_logic;
SIGNAL \c|WideOr1~9_combout\ : std_logic;
SIGNAL \c|WideOr1~10_combout\ : std_logic;
SIGNAL \valid_write~2_combout\ : std_logic;
SIGNAL \w|adr[0]~3_combout\ : std_logic;
SIGNAL \w|adr[1]~1_combout\ : std_logic;
SIGNAL \w|mem|always0~0_combout\ : std_logic;
SIGNAL \w|mem|counter[1]~0_combout\ : std_logic;
SIGNAL \w|mem|counter[1]~2_combout\ : std_logic;
SIGNAL \w|mem|state~2_combout\ : std_logic;
SIGNAL \w|mem|counter[1]~1_combout\ : std_logic;
SIGNAL \w|mem|counter[0]~3_combout\ : std_logic;
SIGNAL \w|mem|state~3_combout\ : std_logic;
SIGNAL \w|mem|state~q\ : std_logic;
SIGNAL \sm|state[1]~2_combout\ : std_logic;
SIGNAL \sm|is_wide~0_combout\ : std_logic;
SIGNAL \sm|Mux5~0_combout\ : std_logic;
SIGNAL \sm|com_adr[0]~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~2_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~2_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~3_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~3_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~5_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~13_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~16_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~14_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~5_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~7_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~10_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~10_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~15_combout\ : std_logic;
SIGNAL \sm|Mux8~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~14_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~24_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~7_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~10_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~25_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~26_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~15_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~16_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~20_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~18_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~17_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~19_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~21_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~22_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~23_combout\ : std_logic;
SIGNAL \sm|Mux10~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~22_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~14_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~15_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~5_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~16_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~17_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~18_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~19_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~20_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~10_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~21_combout\ : std_logic;
SIGNAL \sm|Mux7~0_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~1_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~3_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~5_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~7_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~1_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~2_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~10_combout\ : std_logic;
SIGNAL \sm|Mux11~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~2_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~7_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~1_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~3_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~5_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~7_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~10_combout\ : std_logic;
SIGNAL \sm|Mux6~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~21_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~5_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~7_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~10_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~17_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~15_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~14_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~16_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~18_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~19_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~20_combout\ : std_logic;
SIGNAL \sm|Mux9~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr2~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr2~1_combout\ : std_logic;
SIGNAL \sm|nar|WideOr2~2_combout\ : std_logic;
SIGNAL \sm|WideOr2~1_combout\ : std_logic;
SIGNAL \sm|WideOr2~0_combout\ : std_logic;
SIGNAL \sm|WideOr2~2_combout\ : std_logic;
SIGNAL \sm|com_adr[7]~2_combout\ : std_logic;
SIGNAL \sm|is_wide~1_combout\ : std_logic;
SIGNAL \sm|is_wide~q\ : std_logic;
SIGNAL \sm|ShiftLeft1~6_combout\ : std_logic;
SIGNAL \sm|param_counter[0]~11\ : std_logic;
SIGNAL \sm|param_counter[1]~12_combout\ : std_logic;
SIGNAL \sm|param_counter[3]~18\ : std_logic;
SIGNAL \sm|param_counter[4]~19_combout\ : std_logic;
SIGNAL \sm|param_counter[4]~20\ : std_logic;
SIGNAL \sm|param_counter[5]~21_combout\ : std_logic;
SIGNAL \sm|param_counter[5]~22\ : std_logic;
SIGNAL \sm|param_counter[6]~23_combout\ : std_logic;
SIGNAL \sm|param_counter[6]~24\ : std_logic;
SIGNAL \sm|param_counter[7]~25_combout\ : std_logic;
SIGNAL \sm|ShiftLeft1~0_combout\ : std_logic;
SIGNAL \sm|ShiftLeft1~3_combout\ : std_logic;
SIGNAL \sm|Equal1~1_combout\ : std_logic;
SIGNAL \sm|param_counter~8_combout\ : std_logic;
SIGNAL \sm|ShiftLeft1~1_combout\ : std_logic;
SIGNAL \sm|ShiftLeft1~2_combout\ : std_logic;
SIGNAL \sm|Add0~0_combout\ : std_logic;
SIGNAL \sm|Add0~1\ : std_logic;
SIGNAL \sm|Add0~2_combout\ : std_logic;
SIGNAL \sm|Equal2~0_combout\ : std_logic;
SIGNAL \c|Decoder0~3_combout\ : std_logic;
SIGNAL \sm|ShiftLeft1~4_combout\ : std_logic;
SIGNAL \sm|ShiftLeft1~5_combout\ : std_logic;
SIGNAL \sm|Add0~3\ : std_logic;
SIGNAL \sm|Add0~5\ : std_logic;
SIGNAL \sm|Add0~7\ : std_logic;
SIGNAL \sm|Add0~8_combout\ : std_logic;
SIGNAL \sm|Add0~9\ : std_logic;
SIGNAL \sm|Add0~10_combout\ : std_logic;
SIGNAL \sm|Equal2~2_combout\ : std_logic;
SIGNAL \sm|Add0~4_combout\ : std_logic;
SIGNAL \sm|Add0~6_combout\ : std_logic;
SIGNAL \sm|Equal2~1_combout\ : std_logic;
SIGNAL \sm|param_counter~9_combout\ : std_logic;
SIGNAL \sm|param_counter[7]~14_combout\ : std_logic;
SIGNAL \sm|param_counter[1]~13\ : std_logic;
SIGNAL \sm|param_counter[2]~15_combout\ : std_logic;
SIGNAL \sm|param_counter[2]~16\ : std_logic;
SIGNAL \sm|param_counter[3]~17_combout\ : std_logic;
SIGNAL \sm|Equal1~2_combout\ : std_logic;
SIGNAL \sm|Equal1~3_combout\ : std_logic;
SIGNAL \sm|Equal1~4_combout\ : std_logic;
SIGNAL \sm|Equal1~5_combout\ : std_logic;
SIGNAL \sm|Equal1~6_combout\ : std_logic;
SIGNAL \sm|Equal2~3_combout\ : std_logic;
SIGNAL \sm|param_even~0_combout\ : std_logic;
SIGNAL \sm|Decoder0~0_combout\ : std_logic;
SIGNAL \sm|param_even~q\ : std_logic;
SIGNAL \sm|param_counter[0]~10_combout\ : std_logic;
SIGNAL \sm|Equal1~0_combout\ : std_logic;
SIGNAL \sm|com_adr[0]~0_combout\ : std_logic;
SIGNAL \sm|com_adr[0]~1_combout\ : std_logic;
SIGNAL \sm|com_adr[8]~3_combout\ : std_logic;
SIGNAL \sm|com_adr[8]~4_combout\ : std_logic;
SIGNAL \sm|com_adr[8]~5_combout\ : std_logic;
SIGNAL \sm|Mux4~0_combout\ : std_logic;
SIGNAL \sm|com_adr[7]~feeder_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~16_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~15_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~18_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~17_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~19_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~20_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~10_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~3_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~17_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~1_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~2_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~14_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~21_combout\ : std_logic;
SIGNAL \sm|WideOr2~combout\ : std_logic;
SIGNAL \sm|q_select~0_combout\ : std_logic;
SIGNAL \sm|state[1]~3_combout\ : std_logic;
SIGNAL \waiting~0_combout\ : std_logic;
SIGNAL \sm|q_select~1_combout\ : std_logic;
SIGNAL \sm|state[0]~0_combout\ : std_logic;
SIGNAL \sm|state[0]~1_combout\ : std_logic;
SIGNAL \sm|q_select~2_combout\ : std_logic;
SIGNAL \sm|q_select~3_combout\ : std_logic;
SIGNAL \sm|q_select~4_combout\ : std_logic;
SIGNAL \sm|q_select~q\ : std_logic;
SIGNAL \c|Decoder0~2_combout\ : std_logic;
SIGNAL \sm|push_wide~0_combout\ : std_logic;
SIGNAL \sm|push_wide~q\ : std_logic;
SIGNAL \decoder|a|WideOr5~21_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~13_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~14_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~11_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~10_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~12_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~15_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~8_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~0_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~1_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~16_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~10_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~12_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~8_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~11_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~1_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~19_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~14_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~15_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~16_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~17_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~11_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~8_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~10_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~12_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~18_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~22_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~23_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~0_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~20_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~15_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~13_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~14_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~16_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~18_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~19_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~20_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~8_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~12_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~21_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~11_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~17_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~12_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~14_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~15_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~8_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~10_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~16_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~13_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~10_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~8_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~15_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~11_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~12_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~14_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~7_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~8_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr0~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr0~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr0~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~11_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~10_combout\ : std_logic;
SIGNAL \push_inst~0_combout\ : std_logic;
SIGNAL \arm_inst~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~6_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~7_combout\ : std_logic;
SIGNAL \push_inst~1_combout\ : std_logic;
SIGNAL \arm_inst~1_combout\ : std_logic;
SIGNAL \push_inst~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr21~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr29~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr29~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr29~2_combout\ : std_logic;
SIGNAL \arm_inst~2_combout\ : std_logic;
SIGNAL \push_inst~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr28~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr28~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr21~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr28~2_combout\ : std_logic;
SIGNAL \arm_inst~3_combout\ : std_logic;
SIGNAL \push_inst~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr27~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr27~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr16~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr27~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr27~3_combout\ : std_logic;
SIGNAL \arm_inst~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr3~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr21~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr21~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~4_combout\ : std_logic;
SIGNAL \push_inst~5_combout\ : std_logic;
SIGNAL \arm_inst~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~6_combout\ : std_logic;
SIGNAL \push_inst~6_combout\ : std_logic;
SIGNAL \arm_inst~6_combout\ : std_logic;
SIGNAL \push_inst~7_combout\ : std_logic;
SIGNAL \decoder|c|WideOr24~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr19~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr24~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr24~2_combout\ : std_logic;
SIGNAL \arm_inst~7_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~6_combout\ : std_logic;
SIGNAL \arm_inst~8_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~6_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~7_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~8_combout\ : std_logic;
SIGNAL \arm_inst~9_combout\ : std_logic;
SIGNAL \arm_inst~10_combout\ : std_logic;
SIGNAL \decoder|c|WideOr20~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr20~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr20~4_combout\ : std_logic;
SIGNAL \arm_inst~11_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~7_combout\ : std_logic;
SIGNAL \decoder|c|WideOr19~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr19~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr19~3_combout\ : std_logic;
SIGNAL \arm_inst~12_combout\ : std_logic;
SIGNAL \decoder|c|WideOr18~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr18~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr18~2_combout\ : std_logic;
SIGNAL \arm_inst~13_combout\ : std_logic;
SIGNAL \decoder|c|WideOr17~0_combout\ : std_logic;
SIGNAL \arm_inst~14_combout\ : std_logic;
SIGNAL \decoder|c|WideOr16~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr16~2_combout\ : std_logic;
SIGNAL \arm_inst~15_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~6_combout\ : std_logic;
SIGNAL \arm_inst~16_combout\ : std_logic;
SIGNAL \decoder|c|WideOr14~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr14~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr14~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr14~1_combout\ : std_logic;
SIGNAL \arm_inst~17_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~6_combout\ : std_logic;
SIGNAL \arm_inst~18_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~6_combout\ : std_logic;
SIGNAL \arm_inst~19_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~5_combout\ : std_logic;
SIGNAL \arm_inst~20_combout\ : std_logic;
SIGNAL \decoder|c|WideOr10~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr10~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr10~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr10~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr10~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr10~5_combout\ : std_logic;
SIGNAL \arm_inst~21_combout\ : std_logic;
SIGNAL \decoder|c|WideOr9~7_combout\ : std_logic;
SIGNAL \decoder|c|WideOr9~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr9~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr9~6_combout\ : std_logic;
SIGNAL \arm_inst~22_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~5_combout\ : std_logic;
SIGNAL \arm_inst~23_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~5_combout\ : std_logic;
SIGNAL \arm_inst~24_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~6_combout\ : std_logic;
SIGNAL \arm_inst~25_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~6_combout\ : std_logic;
SIGNAL \arm_inst~26_combout\ : std_logic;
SIGNAL \decoder|c|WideOr4~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr4~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr4~4_combout\ : std_logic;
SIGNAL \arm_inst~27_combout\ : std_logic;
SIGNAL \decoder|c|WideOr3~1_combout\ : std_logic;
SIGNAL \arm_inst~28_combout\ : std_logic;
SIGNAL \decoder|c|WideOr2~0_combout\ : std_logic;
SIGNAL \arm_inst~29_combout\ : std_logic;
SIGNAL \decoder|c|WideOr1~0_combout\ : std_logic;
SIGNAL \arm_inst~30_combout\ : std_logic;
SIGNAL \decoder|c|WideOr0~0_combout\ : std_logic;
SIGNAL \arm_inst~31_combout\ : std_logic;
SIGNAL \decoder|c|WideOr29~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~8_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~9_combout\ : std_logic;
SIGNAL \decoder|c|WideOr20~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr17~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~6_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~6_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~6_combout\ : std_logic;
SIGNAL \decoder|c|WideOr4~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr2~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr1~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr0~1_combout\ : std_logic;
SIGNAL \byte_to_push~0_combout\ : std_logic;
SIGNAL \byte_to_push~1_combout\ : std_logic;
SIGNAL \byte_to_push~2_combout\ : std_logic;
SIGNAL \byte_to_push~3_combout\ : std_logic;
SIGNAL \byte_to_push~4_combout\ : std_logic;
SIGNAL \byte_to_push~5_combout\ : std_logic;
SIGNAL \byte_to_push~6_combout\ : std_logic;
SIGNAL \byte_to_push~7_combout\ : std_logic;
SIGNAL \sm|com_adr\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sm|param_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sm|jvm_opcode\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \w|adr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sm|state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \w|mem|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \decoder|c|ALT_INV_WideOr21~3_combout\ : std_logic;
SIGNAL \sm|ALT_INV_param_even~q\ : std_logic;
SIGNAL \w|mem|ALT_INV_state~q\ : std_logic;
SIGNAL \sm|ALT_INV_state\ : std_logic_vector(1 DOWNTO 1);

BEGIN

state <= ww_state;
waiting <= ww_waiting;
param_even <= ww_param_even;
q_select <= ww_q_select;
parameter_number <= ww_parameter_number;
push_wide <= ww_push_wide;
is_wide <= ww_is_wide;
arm_inst <= ww_arm_inst;
push_inst <= ww_push_inst;
instr <= ww_instr;
valid_write <= ww_valid_write;
link_list_ptr <= ww_link_list_ptr;
oram_iter <= ww_oram_iter;
jvm_opcode <= ww_jvm_opcode;
byte_to_push <= ww_byte_to_push;
oram_ready <= ww_oram_ready;
ww_iram <= iram;
ww_iram_ready <= iram_ready;
ww_clk <= clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\decoder|c|ALT_INV_WideOr21~3_combout\ <= NOT \decoder|c|WideOr21~3_combout\;
\sm|ALT_INV_param_even~q\ <= NOT \sm|param_even~q\;
\w|mem|ALT_INV_state~q\ <= NOT \w|mem|state~q\;
\sm|ALT_INV_state\(1) <= NOT \sm|state\(1);

-- Location: IOOBUF_X70_Y91_N9
\state[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|state\(0),
	devoe => ww_devoe,
	o => \state[0]~output_o\);

-- Location: IOOBUF_X117_Y79_N9
\state[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|state\(1),
	devoe => ww_devoe,
	o => \state[1]~output_o\);

-- Location: IOOBUF_X117_Y78_N2
\waiting~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \waiting~0_combout\,
	devoe => ww_devoe,
	o => \waiting~output_o\);

-- Location: IOOBUF_X117_Y21_N2
\param_even~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|param_even~q\,
	devoe => ww_devoe,
	o => \param_even~output_o\);

-- Location: IOOBUF_X108_Y91_N2
\q_select~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|q_select~q\,
	devoe => ww_devoe,
	o => \q_select~output_o\);

-- Location: IOOBUF_X50_Y91_N9
\parameter_number[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|WideOr2~6_combout\,
	devoe => ww_devoe,
	o => \parameter_number[0]~output_o\);

-- Location: IOOBUF_X117_Y73_N2
\parameter_number[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|WideOr1~10_combout\,
	devoe => ww_devoe,
	o => \parameter_number[1]~output_o\);

-- Location: IOOBUF_X46_Y91_N9
\parameter_number[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|WideOr0~2_combout\,
	devoe => ww_devoe,
	o => \parameter_number[2]~output_o\);

-- Location: IOOBUF_X48_Y91_N16
\parameter_number[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \parameter_number[3]~output_o\);

-- Location: IOOBUF_X48_Y91_N9
\parameter_number[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|Decoder0~3_combout\,
	devoe => ww_devoe,
	o => \parameter_number[4]~output_o\);

-- Location: IOOBUF_X117_Y76_N2
\push_wide~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|push_wide~q\,
	devoe => ww_devoe,
	o => \push_wide~output_o\);

-- Location: IOOBUF_X117_Y74_N2
\is_wide~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|is_wide~q\,
	devoe => ww_devoe,
	o => \is_wide~output_o\);

-- Location: IOOBUF_X106_Y91_N2
\arm_inst[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~0_combout\,
	devoe => ww_devoe,
	o => \arm_inst[0]~output_o\);

-- Location: IOOBUF_X113_Y91_N16
\arm_inst[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~1_combout\,
	devoe => ww_devoe,
	o => \arm_inst[1]~output_o\);

-- Location: IOOBUF_X86_Y91_N16
\arm_inst[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~2_combout\,
	devoe => ww_devoe,
	o => \arm_inst[2]~output_o\);

-- Location: IOOBUF_X44_Y91_N16
\arm_inst[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~3_combout\,
	devoe => ww_devoe,
	o => \arm_inst[3]~output_o\);

-- Location: IOOBUF_X111_Y91_N16
\arm_inst[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~4_combout\,
	devoe => ww_devoe,
	o => \arm_inst[4]~output_o\);

-- Location: IOOBUF_X99_Y91_N9
\arm_inst[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~5_combout\,
	devoe => ww_devoe,
	o => \arm_inst[5]~output_o\);

-- Location: IOOBUF_X108_Y91_N16
\arm_inst[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~6_combout\,
	devoe => ww_devoe,
	o => \arm_inst[6]~output_o\);

-- Location: IOOBUF_X108_Y91_N23
\arm_inst[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~7_combout\,
	devoe => ww_devoe,
	o => \arm_inst[7]~output_o\);

-- Location: IOOBUF_X53_Y91_N16
\arm_inst[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~8_combout\,
	devoe => ww_devoe,
	o => \arm_inst[8]~output_o\);

-- Location: IOOBUF_X90_Y91_N9
\arm_inst[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~9_combout\,
	devoe => ww_devoe,
	o => \arm_inst[9]~output_o\);

-- Location: IOOBUF_X44_Y91_N23
\arm_inst[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~10_combout\,
	devoe => ww_devoe,
	o => \arm_inst[10]~output_o\);

-- Location: IOOBUF_X86_Y91_N9
\arm_inst[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~11_combout\,
	devoe => ww_devoe,
	o => \arm_inst[11]~output_o\);

-- Location: IOOBUF_X113_Y91_N23
\arm_inst[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~12_combout\,
	devoe => ww_devoe,
	o => \arm_inst[12]~output_o\);

-- Location: IOOBUF_X111_Y91_N23
\arm_inst[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~13_combout\,
	devoe => ww_devoe,
	o => \arm_inst[13]~output_o\);

-- Location: IOOBUF_X61_Y91_N2
\arm_inst[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~14_combout\,
	devoe => ww_devoe,
	o => \arm_inst[14]~output_o\);

-- Location: IOOBUF_X108_Y91_N9
\arm_inst[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~15_combout\,
	devoe => ww_devoe,
	o => \arm_inst[15]~output_o\);

-- Location: IOOBUF_X101_Y91_N9
\arm_inst[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~16_combout\,
	devoe => ww_devoe,
	o => \arm_inst[16]~output_o\);

-- Location: IOOBUF_X111_Y91_N9
\arm_inst[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~17_combout\,
	devoe => ww_devoe,
	o => \arm_inst[17]~output_o\);

-- Location: IOOBUF_X117_Y83_N9
\arm_inst[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~18_combout\,
	devoe => ww_devoe,
	o => \arm_inst[18]~output_o\);

-- Location: IOOBUF_X92_Y91_N2
\arm_inst[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~19_combout\,
	devoe => ww_devoe,
	o => \arm_inst[19]~output_o\);

-- Location: IOOBUF_X117_Y84_N9
\arm_inst[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~20_combout\,
	devoe => ww_devoe,
	o => \arm_inst[20]~output_o\);

-- Location: IOOBUF_X104_Y91_N9
\arm_inst[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~21_combout\,
	devoe => ww_devoe,
	o => \arm_inst[21]~output_o\);

-- Location: IOOBUF_X92_Y91_N16
\arm_inst[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~22_combout\,
	devoe => ww_devoe,
	o => \arm_inst[22]~output_o\);

-- Location: IOOBUF_X48_Y91_N2
\arm_inst[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~23_combout\,
	devoe => ww_devoe,
	o => \arm_inst[23]~output_o\);

-- Location: IOOBUF_X86_Y91_N2
\arm_inst[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~24_combout\,
	devoe => ww_devoe,
	o => \arm_inst[24]~output_o\);

-- Location: IOOBUF_X92_Y91_N9
\arm_inst[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~25_combout\,
	devoe => ww_devoe,
	o => \arm_inst[25]~output_o\);

-- Location: IOOBUF_X117_Y80_N9
\arm_inst[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~26_combout\,
	devoe => ww_devoe,
	o => \arm_inst[26]~output_o\);

-- Location: IOOBUF_X90_Y91_N23
\arm_inst[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~27_combout\,
	devoe => ww_devoe,
	o => \arm_inst[27]~output_o\);

-- Location: IOOBUF_X111_Y91_N2
\arm_inst[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~28_combout\,
	devoe => ww_devoe,
	o => \arm_inst[28]~output_o\);

-- Location: IOOBUF_X53_Y91_N23
\arm_inst[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~29_combout\,
	devoe => ww_devoe,
	o => \arm_inst[29]~output_o\);

-- Location: IOOBUF_X88_Y91_N9
\arm_inst[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~30_combout\,
	devoe => ww_devoe,
	o => \arm_inst[30]~output_o\);

-- Location: IOOBUF_X61_Y91_N16
\arm_inst[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arm_inst~31_combout\,
	devoe => ww_devoe,
	o => \arm_inst[31]~output_o\);

-- Location: IOOBUF_X95_Y91_N2
\push_inst[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \push_inst~0_combout\,
	devoe => ww_devoe,
	o => \push_inst[0]~output_o\);

-- Location: IOOBUF_X106_Y91_N16
\push_inst[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \push_inst~1_combout\,
	devoe => ww_devoe,
	o => \push_inst[1]~output_o\);

-- Location: IOOBUF_X46_Y91_N16
\push_inst[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \push_inst~2_combout\,
	devoe => ww_devoe,
	o => \push_inst[2]~output_o\);

-- Location: IOOBUF_X117_Y86_N2
\push_inst[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \push_inst~3_combout\,
	devoe => ww_devoe,
	o => \push_inst[3]~output_o\);

-- Location: IOOBUF_X104_Y91_N2
\push_inst[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \push_inst~4_combout\,
	devoe => ww_devoe,
	o => \push_inst[4]~output_o\);

-- Location: IOOBUF_X101_Y91_N2
\push_inst[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \push_inst~5_combout\,
	devoe => ww_devoe,
	o => \push_inst[5]~output_o\);

-- Location: IOOBUF_X117_Y73_N9
\push_inst[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \push_inst~6_combout\,
	devoe => ww_devoe,
	o => \push_inst[6]~output_o\);

-- Location: IOOBUF_X117_Y70_N2
\push_inst[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \push_inst~7_combout\,
	devoe => ww_devoe,
	o => \push_inst[7]~output_o\);

-- Location: IOOBUF_X117_Y11_N9
\push_inst[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[8]~output_o\);

-- Location: IOOBUF_X34_Y91_N23
\push_inst[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[9]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\push_inst[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[10]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\push_inst[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[11]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\push_inst[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[12]~output_o\);

-- Location: IOOBUF_X34_Y91_N2
\push_inst[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[13]~output_o\);

-- Location: IOOBUF_X53_Y0_N16
\push_inst[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[14]~output_o\);

-- Location: IOOBUF_X37_Y91_N9
\push_inst[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[15]~output_o\);

-- Location: IOOBUF_X117_Y26_N2
\push_inst[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|param_even~q\,
	devoe => ww_devoe,
	o => \push_inst[16]~output_o\);

-- Location: IOOBUF_X19_Y91_N23
\push_inst[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[17]~output_o\);

-- Location: IOOBUF_X117_Y50_N2
\push_inst[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|param_even~q\,
	devoe => ww_devoe,
	o => \push_inst[18]~output_o\);

-- Location: IOOBUF_X117_Y26_N9
\push_inst[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|param_even~q\,
	devoe => ww_devoe,
	o => \push_inst[19]~output_o\);

-- Location: IOOBUF_X10_Y91_N2
\push_inst[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[20]~output_o\);

-- Location: IOOBUF_X117_Y58_N2
\push_inst[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|param_even~q\,
	devoe => ww_devoe,
	o => \push_inst[21]~output_o\);

-- Location: IOOBUF_X117_Y21_N9
\push_inst[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|ALT_INV_param_even~q\,
	devoe => ww_devoe,
	o => \push_inst[22]~output_o\);

-- Location: IOOBUF_X5_Y91_N2
\push_inst[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[23]~output_o\);

-- Location: IOOBUF_X117_Y38_N9
\push_inst[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \push_inst[24]~output_o\);

-- Location: IOOBUF_X117_Y58_N9
\push_inst[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|ALT_INV_param_even~q\,
	devoe => ww_devoe,
	o => \push_inst[25]~output_o\);

-- Location: IOOBUF_X117_Y22_N2
\push_inst[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|param_even~q\,
	devoe => ww_devoe,
	o => \push_inst[26]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\push_inst[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[27]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\push_inst[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \push_inst[28]~output_o\);

-- Location: IOOBUF_X90_Y0_N9
\push_inst[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \push_inst[29]~output_o\);

-- Location: IOOBUF_X115_Y0_N9
\push_inst[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \push_inst[30]~output_o\);

-- Location: IOOBUF_X39_Y91_N2
\push_inst[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \push_inst[31]~output_o\);

-- Location: IOOBUF_X95_Y91_N16
\instr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr31~10_combout\,
	devoe => ww_devoe,
	o => \instr[0]~output_o\);

-- Location: IOOBUF_X117_Y81_N2
\instr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr30~7_combout\,
	devoe => ww_devoe,
	o => \instr[1]~output_o\);

-- Location: IOOBUF_X88_Y91_N2
\instr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr29~3_combout\,
	devoe => ww_devoe,
	o => \instr[2]~output_o\);

-- Location: IOOBUF_X61_Y91_N9
\instr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr28~2_combout\,
	devoe => ww_devoe,
	o => \instr[3]~output_o\);

-- Location: IOOBUF_X106_Y91_N9
\instr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr27~3_combout\,
	devoe => ww_devoe,
	o => \instr[4]~output_o\);

-- Location: IOOBUF_X117_Y86_N9
\instr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr26~4_combout\,
	devoe => ww_devoe,
	o => \instr[5]~output_o\);

-- Location: IOOBUF_X113_Y91_N9
\instr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr25~6_combout\,
	devoe => ww_devoe,
	o => \instr[6]~output_o\);

-- Location: IOOBUF_X115_Y91_N9
\instr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr24~2_combout\,
	devoe => ww_devoe,
	o => \instr[7]~output_o\);

-- Location: IOOBUF_X53_Y91_N2
\instr[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr23~8_combout\,
	devoe => ww_devoe,
	o => \instr[8]~output_o\);

-- Location: IOOBUF_X66_Y91_N2
\instr[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr22~9_combout\,
	devoe => ww_devoe,
	o => \instr[9]~output_o\);

-- Location: IOOBUF_X63_Y91_N16
\instr[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|ALT_INV_WideOr21~3_combout\,
	devoe => ww_devoe,
	o => \instr[10]~output_o\);

-- Location: IOOBUF_X90_Y91_N16
\instr[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr20~5_combout\,
	devoe => ww_devoe,
	o => \instr[11]~output_o\);

-- Location: IOOBUF_X115_Y91_N23
\instr[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr19~3_combout\,
	devoe => ww_devoe,
	o => \instr[12]~output_o\);

-- Location: IOOBUF_X115_Y91_N16
\instr[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr18~2_combout\,
	devoe => ww_devoe,
	o => \instr[13]~output_o\);

-- Location: IOOBUF_X46_Y91_N23
\instr[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr17~1_combout\,
	devoe => ww_devoe,
	o => \instr[14]~output_o\);

-- Location: IOOBUF_X115_Y91_N2
\instr[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr16~2_combout\,
	devoe => ww_devoe,
	o => \instr[15]~output_o\);

-- Location: IOOBUF_X95_Y91_N23
\instr[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr15~6_combout\,
	devoe => ww_devoe,
	o => \instr[16]~output_o\);

-- Location: IOOBUF_X92_Y91_N23
\instr[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr14~1_combout\,
	devoe => ww_devoe,
	o => \instr[17]~output_o\);

-- Location: IOOBUF_X117_Y83_N2
\instr[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr13~6_combout\,
	devoe => ww_devoe,
	o => \instr[18]~output_o\);

-- Location: IOOBUF_X117_Y84_N2
\instr[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr12~6_combout\,
	devoe => ww_devoe,
	o => \instr[19]~output_o\);

-- Location: IOOBUF_X63_Y91_N23
\instr[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr11~6_combout\,
	devoe => ww_devoe,
	o => \instr[20]~output_o\);

-- Location: IOOBUF_X97_Y91_N2
\instr[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr10~5_combout\,
	devoe => ww_devoe,
	o => \instr[21]~output_o\);

-- Location: IOOBUF_X63_Y91_N2
\instr[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr9~6_combout\,
	devoe => ww_devoe,
	o => \instr[22]~output_o\);

-- Location: IOOBUF_X53_Y91_N9
\instr[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr8~6_combout\,
	devoe => ww_devoe,
	o => \instr[23]~output_o\);

-- Location: IOOBUF_X75_Y91_N9
\instr[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr7~6_combout\,
	devoe => ww_devoe,
	o => \instr[24]~output_o\);

-- Location: IOOBUF_X66_Y91_N9
\instr[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr6~6_combout\,
	devoe => ww_devoe,
	o => \instr[25]~output_o\);

-- Location: IOOBUF_X63_Y91_N9
\instr[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr5~6_combout\,
	devoe => ww_devoe,
	o => \instr[26]~output_o\);

-- Location: IOOBUF_X90_Y91_N2
\instr[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr4~5_combout\,
	devoe => ww_devoe,
	o => \instr[27]~output_o\);

-- Location: IOOBUF_X113_Y91_N2
\instr[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr3~1_combout\,
	devoe => ww_devoe,
	o => \instr[28]~output_o\);

-- Location: IOOBUF_X84_Y91_N9
\instr[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr2~1_combout\,
	devoe => ww_devoe,
	o => \instr[29]~output_o\);

-- Location: IOOBUF_X84_Y91_N2
\instr[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr1~1_combout\,
	devoe => ww_devoe,
	o => \instr[30]~output_o\);

-- Location: IOOBUF_X82_Y91_N9
\instr[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr0~1_combout\,
	devoe => ww_devoe,
	o => \instr[31]~output_o\);

-- Location: IOOBUF_X117_Y77_N2
\valid_write~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valid_write~2_combout\,
	devoe => ww_devoe,
	o => \valid_write~output_o\);

-- Location: IOOBUF_X79_Y91_N23
\link_list_ptr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|com_adr\(0),
	devoe => ww_devoe,
	o => \link_list_ptr[0]~output_o\);

-- Location: IOOBUF_X79_Y91_N9
\link_list_ptr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|com_adr\(1),
	devoe => ww_devoe,
	o => \link_list_ptr[1]~output_o\);

-- Location: IOOBUF_X77_Y91_N2
\link_list_ptr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|com_adr\(2),
	devoe => ww_devoe,
	o => \link_list_ptr[2]~output_o\);

-- Location: IOOBUF_X79_Y91_N2
\link_list_ptr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|com_adr\(3),
	devoe => ww_devoe,
	o => \link_list_ptr[3]~output_o\);

-- Location: IOOBUF_X79_Y91_N16
\link_list_ptr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|com_adr\(4),
	devoe => ww_devoe,
	o => \link_list_ptr[4]~output_o\);

-- Location: IOOBUF_X77_Y91_N9
\link_list_ptr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|com_adr\(5),
	devoe => ww_devoe,
	o => \link_list_ptr[5]~output_o\);

-- Location: IOOBUF_X77_Y91_N23
\link_list_ptr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|com_adr\(6),
	devoe => ww_devoe,
	o => \link_list_ptr[6]~output_o\);

-- Location: IOOBUF_X75_Y91_N2
\link_list_ptr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|com_adr\(7),
	devoe => ww_devoe,
	o => \link_list_ptr[7]~output_o\);

-- Location: IOOBUF_X82_Y91_N2
\link_list_ptr[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|com_adr\(8),
	devoe => ww_devoe,
	o => \link_list_ptr[8]~output_o\);

-- Location: IOOBUF_X108_Y0_N2
\oram_iter[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \oram_iter[0]~output_o\);

-- Location: IOOBUF_X44_Y0_N23
\oram_iter[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \oram_iter[1]~output_o\);

-- Location: IOOBUF_X41_Y91_N2
\oram_iter[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \oram_iter[2]~output_o\);

-- Location: IOOBUF_X15_Y91_N9
\oram_iter[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \oram_iter[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\oram_iter[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \oram_iter[4]~output_o\);

-- Location: IOOBUF_X77_Y0_N9
\oram_iter[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \oram_iter[5]~output_o\);

-- Location: IOOBUF_X34_Y91_N9
\oram_iter[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \oram_iter[6]~output_o\);

-- Location: IOOBUF_X5_Y91_N16
\oram_iter[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \oram_iter[7]~output_o\);

-- Location: IOOBUF_X70_Y91_N2
\jvm_opcode[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|jvm_opcode\(0),
	devoe => ww_devoe,
	o => \jvm_opcode[0]~output_o\);

-- Location: IOOBUF_X50_Y91_N16
\jvm_opcode[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|jvm_opcode\(1),
	devoe => ww_devoe,
	o => \jvm_opcode[1]~output_o\);

-- Location: IOOBUF_X66_Y91_N16
\jvm_opcode[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|jvm_opcode\(2),
	devoe => ww_devoe,
	o => \jvm_opcode[2]~output_o\);

-- Location: IOOBUF_X117_Y79_N2
\jvm_opcode[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|jvm_opcode\(3),
	devoe => ww_devoe,
	o => \jvm_opcode[3]~output_o\);

-- Location: IOOBUF_X72_Y91_N2
\jvm_opcode[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|jvm_opcode\(4),
	devoe => ww_devoe,
	o => \jvm_opcode[4]~output_o\);

-- Location: IOOBUF_X50_Y91_N2
\jvm_opcode[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|jvm_opcode\(5),
	devoe => ww_devoe,
	o => \jvm_opcode[5]~output_o\);

-- Location: IOOBUF_X72_Y91_N9
\jvm_opcode[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|jvm_opcode\(6),
	devoe => ww_devoe,
	o => \jvm_opcode[6]~output_o\);

-- Location: IOOBUF_X117_Y74_N9
\jvm_opcode[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sm|jvm_opcode\(7),
	devoe => ww_devoe,
	o => \jvm_opcode[7]~output_o\);

-- Location: IOOBUF_X95_Y91_N9
\byte_to_push[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \byte_to_push~0_combout\,
	devoe => ww_devoe,
	o => \byte_to_push[0]~output_o\);

-- Location: IOOBUF_X99_Y91_N16
\byte_to_push[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \byte_to_push~1_combout\,
	devoe => ww_devoe,
	o => \byte_to_push[1]~output_o\);

-- Location: IOOBUF_X117_Y72_N9
\byte_to_push[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \byte_to_push~2_combout\,
	devoe => ww_devoe,
	o => \byte_to_push[2]~output_o\);

-- Location: IOOBUF_X99_Y91_N23
\byte_to_push[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \byte_to_push~3_combout\,
	devoe => ww_devoe,
	o => \byte_to_push[3]~output_o\);

-- Location: IOOBUF_X97_Y91_N9
\byte_to_push[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \byte_to_push~4_combout\,
	devoe => ww_devoe,
	o => \byte_to_push[4]~output_o\);

-- Location: IOOBUF_X99_Y91_N2
\byte_to_push[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \byte_to_push~5_combout\,
	devoe => ww_devoe,
	o => \byte_to_push[5]~output_o\);

-- Location: IOOBUF_X117_Y76_N9
\byte_to_push[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \byte_to_push~6_combout\,
	devoe => ww_devoe,
	o => \byte_to_push[6]~output_o\);

-- Location: IOOBUF_X117_Y72_N2
\byte_to_push[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \byte_to_push~7_combout\,
	devoe => ww_devoe,
	o => \byte_to_push[7]~output_o\);

-- Location: IOOBUF_X46_Y91_N2
\oram_ready~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w|mem|ALT_INV_state~q\,
	devoe => ww_devoe,
	o => \oram_ready~output_o\);

-- Location: IOIBUF_X57_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G29
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X50_Y91_N22
\iram_ready~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iram_ready,
	o => \iram_ready~input_o\);

-- Location: IOIBUF_X68_Y91_N1
\iram[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iram(0),
	o => \iram[0]~input_o\);

-- Location: IOIBUF_X57_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G28
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X86_Y80_N26
\sm|Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Decoder0~1_combout\ = (\sm|state\(0) & (\iram_ready~input_o\ & !\sm|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(0),
	datac => \iram_ready~input_o\,
	datad => \sm|state\(1),
	combout => \sm|Decoder0~1_combout\);

-- Location: FF_X84_Y76_N23
\sm|jvm_opcode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \iram[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(0));

-- Location: IOIBUF_X117_Y80_N1
\iram[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iram(2),
	o => \iram[2]~input_o\);

-- Location: FF_X84_Y76_N11
\sm|jvm_opcode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \iram[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(2));

-- Location: IOIBUF_X68_Y91_N8
\iram[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iram(3),
	o => \iram[3]~input_o\);

-- Location: FF_X84_Y76_N17
\sm|jvm_opcode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \iram[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(3));

-- Location: IOIBUF_X66_Y91_N22
\iram[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iram(6),
	o => \iram[6]~input_o\);

-- Location: FF_X84_Y76_N29
\sm|jvm_opcode[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \iram[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(6));

-- Location: IOIBUF_X68_Y91_N15
\iram[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iram(4),
	o => \iram[4]~input_o\);

-- Location: FF_X84_Y76_N5
\sm|jvm_opcode[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \iram[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(4));

-- Location: IOIBUF_X77_Y91_N15
\iram[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iram(7),
	o => \iram[7]~input_o\);

-- Location: FF_X84_Y76_N31
\sm|jvm_opcode[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \iram[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(7));

-- Location: LCCOMB_X85_Y76_N26
\c|WideOr0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr0~1_combout\ = (\sm|jvm_opcode\(7) & (\sm|jvm_opcode\(6) $ (\sm|jvm_opcode\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|jvm_opcode\(6),
	datac => \sm|jvm_opcode\(4),
	datad => \sm|jvm_opcode\(7),
	combout => \c|WideOr0~1_combout\);

-- Location: IOIBUF_X117_Y77_N8
\iram[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iram(1),
	o => \iram[1]~input_o\);

-- Location: FF_X84_Y76_N13
\sm|jvm_opcode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \iram[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(1));

-- Location: IOIBUF_X117_Y81_N8
\iram[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iram(5),
	o => \iram[5]~input_o\);

-- Location: FF_X84_Y76_N19
\sm|jvm_opcode[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \iram[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(5));

-- Location: LCCOMB_X85_Y76_N0
\c|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr0~0_combout\ = (\sm|jvm_opcode\(6) & (!\sm|jvm_opcode\(1) & ((!\sm|jvm_opcode\(5))))) # (!\sm|jvm_opcode\(6) & (\sm|jvm_opcode\(5) & (\sm|jvm_opcode\(1) $ (\sm|jvm_opcode\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(1),
	datab => \sm|jvm_opcode\(6),
	datac => \sm|jvm_opcode\(0),
	datad => \sm|jvm_opcode\(5),
	combout => \c|WideOr0~0_combout\);

-- Location: LCCOMB_X85_Y76_N28
\c|WideOr0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr0~2_combout\ = (!\sm|jvm_opcode\(2) & (\sm|jvm_opcode\(3) & (\c|WideOr0~1_combout\ & \c|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(2),
	datab => \sm|jvm_opcode\(3),
	datac => \c|WideOr0~1_combout\,
	datad => \c|WideOr0~0_combout\,
	combout => \c|WideOr0~2_combout\);

-- Location: LCCOMB_X86_Y80_N8
\sm|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal0~2_combout\ = (\iram[2]~input_o\ & (\iram[6]~input_o\ & \iram[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iram[2]~input_o\,
	datab => \iram[6]~input_o\,
	datad => \iram[7]~input_o\,
	combout => \sm|Equal0~2_combout\);

-- Location: LCCOMB_X95_Y87_N24
\sm|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal0~0_combout\ = (!\iram[4]~input_o\ & (!\iram[3]~input_o\ & (!\iram[0]~input_o\ & !\iram[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iram[4]~input_o\,
	datab => \iram[3]~input_o\,
	datac => \iram[0]~input_o\,
	datad => \iram[1]~input_o\,
	combout => \sm|Equal0~0_combout\);

-- Location: LCCOMB_X95_Y87_N2
\sm|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal0~1_combout\ = (!\iram[5]~input_o\ & \sm|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iram[5]~input_o\,
	datad => \sm|Equal0~0_combout\,
	combout => \sm|Equal0~1_combout\);

-- Location: LCCOMB_X85_Y76_N14
\c|Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|Decoder0~0_combout\ = (\sm|jvm_opcode\(3) & (!\sm|jvm_opcode\(6) & (!\sm|jvm_opcode\(4) & \sm|jvm_opcode\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(3),
	datab => \sm|jvm_opcode\(6),
	datac => \sm|jvm_opcode\(4),
	datad => \sm|jvm_opcode\(5),
	combout => \c|Decoder0~0_combout\);

-- Location: LCCOMB_X85_Y76_N12
\c|Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|Decoder0~1_combout\ = (!\sm|jvm_opcode\(2) & (\sm|jvm_opcode\(1) & (\c|Decoder0~0_combout\ & \sm|jvm_opcode\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(2),
	datab => \sm|jvm_opcode\(1),
	datac => \c|Decoder0~0_combout\,
	datad => \sm|jvm_opcode\(7),
	combout => \c|Decoder0~1_combout\);

-- Location: LCCOMB_X84_Y76_N22
\c|WideOr2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~4_combout\ = (\sm|jvm_opcode\(0) & (!\sm|jvm_opcode\(4) & (\sm|jvm_opcode\(2) $ (\sm|jvm_opcode\(3))))) # (!\sm|jvm_opcode\(0) & (\sm|jvm_opcode\(2) & (\sm|jvm_opcode\(3) $ (!\sm|jvm_opcode\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(2),
	datab => \sm|jvm_opcode\(3),
	datac => \sm|jvm_opcode\(0),
	datad => \sm|jvm_opcode\(4),
	combout => \c|WideOr2~4_combout\);

-- Location: LCCOMB_X85_Y76_N4
\c|WideOr2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~5_combout\ = (\c|WideOr2~4_combout\ & ((\sm|jvm_opcode\(5) & (!\sm|jvm_opcode\(6) & \sm|jvm_opcode\(3))) # (!\sm|jvm_opcode\(5) & (\sm|jvm_opcode\(6) & !\sm|jvm_opcode\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(5),
	datab => \sm|jvm_opcode\(6),
	datac => \sm|jvm_opcode\(3),
	datad => \c|WideOr2~4_combout\,
	combout => \c|WideOr2~5_combout\);

-- Location: LCCOMB_X84_Y76_N18
\c|WideOr2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~1_combout\ = (\sm|jvm_opcode\(2) & (!\sm|jvm_opcode\(3) & ((\sm|jvm_opcode\(1)) # (!\sm|jvm_opcode\(5))))) # (!\sm|jvm_opcode\(2) & (!\sm|jvm_opcode\(1) & ((\sm|jvm_opcode\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(2),
	datab => \sm|jvm_opcode\(1),
	datac => \sm|jvm_opcode\(5),
	datad => \sm|jvm_opcode\(3),
	combout => \c|WideOr2~1_combout\);

-- Location: LCCOMB_X84_Y76_N30
\c|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~0_combout\ = (!\sm|jvm_opcode\(6) & (!\sm|jvm_opcode\(7) & \sm|jvm_opcode\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|jvm_opcode\(6),
	datac => \sm|jvm_opcode\(7),
	datad => \sm|jvm_opcode\(4),
	combout => \c|WideOr2~0_combout\);

-- Location: LCCOMB_X84_Y76_N12
\c|WideOr2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~2_combout\ = (\sm|jvm_opcode\(2) & (((\sm|jvm_opcode\(3)) # (!\sm|jvm_opcode\(1))))) # (!\sm|jvm_opcode\(2) & ((\sm|jvm_opcode\(5) & ((!\sm|jvm_opcode\(3)))) # (!\sm|jvm_opcode\(5) & (\sm|jvm_opcode\(1) & \sm|jvm_opcode\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(2),
	datab => \sm|jvm_opcode\(5),
	datac => \sm|jvm_opcode\(1),
	datad => \sm|jvm_opcode\(3),
	combout => \c|WideOr2~2_combout\);

-- Location: LCCOMB_X84_Y76_N20
\c|WideOr2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~3_combout\ = (\c|WideOr2~0_combout\ & ((\sm|jvm_opcode\(0) & (\c|WideOr2~1_combout\)) # (!\sm|jvm_opcode\(0) & ((!\c|WideOr2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(0),
	datab => \c|WideOr2~1_combout\,
	datac => \c|WideOr2~0_combout\,
	datad => \c|WideOr2~2_combout\,
	combout => \c|WideOr2~3_combout\);

-- Location: LCCOMB_X85_Y76_N10
\c|WideOr2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~6_combout\ = (\c|WideOr2~3_combout\) # ((!\sm|jvm_opcode\(1) & (\sm|jvm_opcode\(7) & \c|WideOr2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(1),
	datab => \sm|jvm_opcode\(7),
	datac => \c|WideOr2~5_combout\,
	datad => \c|WideOr2~3_combout\,
	combout => \c|WideOr2~6_combout\);

-- Location: LCCOMB_X86_Y76_N14
\valid_write~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid_write~1_combout\ = (!\c|Decoder0~1_combout\ & (!\c|WideOr2~6_combout\ & !\c|WideOr0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|Decoder0~1_combout\,
	datac => \c|WideOr2~6_combout\,
	datad => \c|WideOr0~2_combout\,
	combout => \valid_write~1_combout\);

-- Location: LCCOMB_X84_Y76_N4
\WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\sm|jvm_opcode\(0) & (!\sm|jvm_opcode\(1) & (!\sm|jvm_opcode\(4) & !\sm|jvm_opcode\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(0),
	datab => \sm|jvm_opcode\(1),
	datac => \sm|jvm_opcode\(4),
	datad => \sm|jvm_opcode\(3),
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X85_Y76_N24
\WideOr1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (!\sm|jvm_opcode\(2) & (!\sm|jvm_opcode\(7) & (!\sm|jvm_opcode\(6) & !\sm|jvm_opcode\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(2),
	datab => \sm|jvm_opcode\(7),
	datac => \sm|jvm_opcode\(6),
	datad => \sm|jvm_opcode\(5),
	combout => \WideOr1~1_combout\);

-- Location: LCCOMB_X86_Y77_N26
\valid_write~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid_write~0_combout\ = ((\waiting~0_combout\) # ((\WideOr1~0_combout\ & \WideOr1~1_combout\))) # (!\sm|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => \sm|state\(1),
	datac => \WideOr1~1_combout\,
	datad => \waiting~0_combout\,
	combout => \valid_write~0_combout\);

-- Location: LCCOMB_X84_Y76_N0
\c|WideOr1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~2_combout\ = (!\sm|jvm_opcode\(3) & ((\sm|jvm_opcode\(2) & (!\sm|jvm_opcode\(1) & !\sm|jvm_opcode\(0))) # (!\sm|jvm_opcode\(2) & ((\sm|jvm_opcode\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(2),
	datab => \sm|jvm_opcode\(1),
	datac => \sm|jvm_opcode\(0),
	datad => \sm|jvm_opcode\(3),
	combout => \c|WideOr1~2_combout\);

-- Location: LCCOMB_X84_Y76_N10
\c|WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~0_combout\ = (\sm|jvm_opcode\(3)) # ((\sm|jvm_opcode\(4)) # ((\sm|jvm_opcode\(1) & !\sm|jvm_opcode\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(3),
	datab => \sm|jvm_opcode\(1),
	datac => \sm|jvm_opcode\(2),
	datad => \sm|jvm_opcode\(4),
	combout => \c|WideOr1~0_combout\);

-- Location: LCCOMB_X84_Y76_N2
\c|WideOr1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~1_combout\ = (\sm|jvm_opcode\(6) & (!\c|WideOr1~0_combout\ & \sm|jvm_opcode\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|jvm_opcode\(6),
	datac => \c|WideOr1~0_combout\,
	datad => \sm|jvm_opcode\(7),
	combout => \c|WideOr1~1_combout\);

-- Location: LCCOMB_X84_Y76_N6
\c|WideOr1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~3_combout\ = (!\sm|jvm_opcode\(5) & ((\c|WideOr1~1_combout\) # ((\c|WideOr2~0_combout\ & \c|WideOr1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|WideOr2~0_combout\,
	datab => \c|WideOr1~2_combout\,
	datac => \sm|jvm_opcode\(5),
	datad => \c|WideOr1~1_combout\,
	combout => \c|WideOr1~3_combout\);

-- Location: LCCOMB_X84_Y76_N28
\c|WideOr1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~4_combout\ = (!\sm|jvm_opcode\(6) & \sm|jvm_opcode\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|jvm_opcode\(6),
	datad => \sm|jvm_opcode\(7),
	combout => \c|WideOr1~4_combout\);

-- Location: LCCOMB_X84_Y76_N8
\c|WideOr1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~5_combout\ = (\sm|jvm_opcode\(1) & (((\sm|jvm_opcode\(0) & !\sm|jvm_opcode\(2))) # (!\sm|jvm_opcode\(3)))) # (!\sm|jvm_opcode\(1) & (\sm|jvm_opcode\(2) $ (((\sm|jvm_opcode\(3) & !\sm|jvm_opcode\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(3),
	datab => \sm|jvm_opcode\(1),
	datac => \sm|jvm_opcode\(0),
	datad => \sm|jvm_opcode\(2),
	combout => \c|WideOr1~5_combout\);

-- Location: LCCOMB_X84_Y76_N16
\c|WideOr1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~6_combout\ = (\sm|jvm_opcode\(3) & ((\sm|jvm_opcode\(0)) # ((\sm|jvm_opcode\(1)) # (\sm|jvm_opcode\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(0),
	datab => \sm|jvm_opcode\(1),
	datac => \sm|jvm_opcode\(3),
	datad => \sm|jvm_opcode\(2),
	combout => \c|WideOr1~6_combout\);

-- Location: LCCOMB_X84_Y76_N14
\c|WideOr1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~7_combout\ = (\sm|jvm_opcode\(5) & ((\sm|jvm_opcode\(4) & (\c|WideOr1~5_combout\)) # (!\sm|jvm_opcode\(4) & ((!\c|WideOr1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(4),
	datab => \c|WideOr1~5_combout\,
	datac => \sm|jvm_opcode\(5),
	datad => \c|WideOr1~6_combout\,
	combout => \c|WideOr1~7_combout\);

-- Location: LCCOMB_X84_Y76_N24
\c|WideOr1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~8_combout\ = (\sm|jvm_opcode\(2) & ((\WideOr1~0_combout\) # ((\sm|jvm_opcode\(4) & \c|WideOr1~6_combout\)))) # (!\sm|jvm_opcode\(2) & (\sm|jvm_opcode\(4) & ((\c|WideOr1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(2),
	datab => \sm|jvm_opcode\(4),
	datac => \WideOr1~0_combout\,
	datad => \c|WideOr1~6_combout\,
	combout => \c|WideOr1~8_combout\);

-- Location: LCCOMB_X84_Y76_N26
\c|WideOr1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~9_combout\ = (\c|WideOr1~4_combout\ & ((\c|WideOr1~7_combout\) # ((!\sm|jvm_opcode\(5) & \c|WideOr1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|WideOr1~4_combout\,
	datab => \sm|jvm_opcode\(5),
	datac => \c|WideOr1~7_combout\,
	datad => \c|WideOr1~8_combout\,
	combout => \c|WideOr1~9_combout\);

-- Location: LCCOMB_X87_Y76_N0
\c|WideOr1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~10_combout\ = (\c|WideOr1~3_combout\) # (\c|WideOr1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|WideOr1~3_combout\,
	datad => \c|WideOr1~9_combout\,
	combout => \c|WideOr1~10_combout\);

-- Location: LCCOMB_X86_Y77_N8
\valid_write~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid_write~2_combout\ = (!\valid_write~0_combout\ & (((\sm|state\(0)) # (\c|WideOr1~10_combout\)) # (!\valid_write~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valid_write~1_combout\,
	datab => \sm|state\(0),
	datac => \valid_write~0_combout\,
	datad => \c|WideOr1~10_combout\,
	combout => \valid_write~2_combout\);

-- Location: LCCOMB_X85_Y77_N8
\w|adr[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w|adr[0]~3_combout\ = \w|adr\(0) $ (\valid_write~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w|adr\(0),
	datad => \valid_write~2_combout\,
	combout => \w|adr[0]~3_combout\);

-- Location: FF_X85_Y77_N9
\w|adr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w|adr[0]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w|adr\(0));

-- Location: LCCOMB_X85_Y77_N4
\w|adr[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w|adr[1]~1_combout\ = \w|adr\(1) $ (\w|adr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w|adr\(1),
	datad => \w|adr\(0),
	combout => \w|adr[1]~1_combout\);

-- Location: FF_X85_Y77_N5
\w|adr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w|adr[1]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \valid_write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w|adr\(1));

-- Location: LCCOMB_X85_Y77_N18
\w|mem|always0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w|mem|always0~0_combout\ = (\valid_write~2_combout\ & !\w|mem|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \valid_write~2_combout\,
	datac => \w|mem|state~q\,
	combout => \w|mem|always0~0_combout\);

-- Location: LCCOMB_X85_Y77_N12
\w|mem|counter[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w|mem|counter[1]~0_combout\ = (\w|mem|always0~0_combout\ & (((\w|adr\(1))))) # (!\w|mem|always0~0_combout\ & (\w|mem|counter\(0) $ ((!\w|mem|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w|mem|counter\(0),
	datab => \w|mem|counter\(1),
	datac => \w|adr\(1),
	datad => \w|mem|always0~0_combout\,
	combout => \w|mem|counter[1]~0_combout\);

-- Location: LCCOMB_X85_Y77_N28
\w|mem|counter[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w|mem|counter[1]~2_combout\ = (\w|mem|counter[1]~1_combout\ & ((\w|mem|counter[1]~0_combout\))) # (!\w|mem|counter[1]~1_combout\ & (\w|mem|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w|mem|counter[1]~1_combout\,
	datac => \w|mem|counter\(1),
	datad => \w|mem|counter[1]~0_combout\,
	combout => \w|mem|counter[1]~2_combout\);

-- Location: FF_X85_Y77_N29
\w|mem|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w|mem|counter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w|mem|counter\(1));

-- Location: LCCOMB_X85_Y77_N20
\w|mem|state~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w|mem|state~2_combout\ = (!\w|mem|counter\(0) & !\w|mem|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w|mem|counter\(0),
	datad => \w|mem|counter\(1),
	combout => \w|mem|state~2_combout\);

-- Location: LCCOMB_X85_Y77_N2
\w|mem|counter[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w|mem|counter[1]~1_combout\ = (\reset~input_o\ & ((\w|mem|state~q\ & (!\w|mem|state~2_combout\)) # (!\w|mem|state~q\ & ((\valid_write~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w|mem|state~q\,
	datab => \w|mem|state~2_combout\,
	datac => \reset~input_o\,
	datad => \valid_write~2_combout\,
	combout => \w|mem|counter[1]~1_combout\);

-- Location: LCCOMB_X85_Y77_N10
\w|mem|counter[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w|mem|counter[0]~3_combout\ = (\w|mem|counter[1]~1_combout\ & ((\w|mem|always0~0_combout\ & (\w|adr\(0))) # (!\w|mem|always0~0_combout\ & ((!\w|mem|counter\(0)))))) # (!\w|mem|counter[1]~1_combout\ & (((\w|mem|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w|adr\(0),
	datab => \w|mem|counter[1]~1_combout\,
	datac => \w|mem|counter\(0),
	datad => \w|mem|always0~0_combout\,
	combout => \w|mem|counter[0]~3_combout\);

-- Location: FF_X85_Y77_N11
\w|mem|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w|mem|counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w|mem|counter\(0));

-- Location: LCCOMB_X85_Y77_N22
\w|mem|state~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w|mem|state~3_combout\ = (\w|mem|state~q\ & ((\w|mem|counter\(0)) # ((\w|mem|counter\(1))))) # (!\w|mem|state~q\ & (((\valid_write~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w|mem|counter\(0),
	datab => \w|mem|counter\(1),
	datac => \w|mem|state~q\,
	datad => \valid_write~2_combout\,
	combout => \w|mem|state~3_combout\);

-- Location: FF_X85_Y77_N23
\w|mem|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w|mem|state~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w|mem|state~q\);

-- Location: LCCOMB_X86_Y80_N28
\sm|state[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|state[1]~2_combout\ = (\iram_ready~input_o\ & (\sm|state\(0) & ((!\w|mem|state~q\) # (!\sm|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iram_ready~input_o\,
	datab => \sm|state\(1),
	datac => \w|mem|state~q\,
	datad => \sm|state\(0),
	combout => \sm|state[1]~2_combout\);

-- Location: LCCOMB_X86_Y80_N6
\sm|is_wide~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|is_wide~0_combout\ = (!\sm|state\(1) & (\sm|Equal0~2_combout\ & (\sm|Equal0~1_combout\ & \sm|state[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \sm|Equal0~2_combout\,
	datac => \sm|Equal0~1_combout\,
	datad => \sm|state[1]~2_combout\,
	combout => \sm|is_wide~0_combout\);

-- Location: LCCOMB_X85_Y80_N0
\sm|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux5~0_combout\ = (\sm|state\(0) & ((\sm|nar|WideOr2~2_combout\))) # (!\sm|state\(0) & (\sm|jvm_opcode\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(6),
	datab => \sm|nar|WideOr2~2_combout\,
	datad => \sm|state\(0),
	combout => \sm|Mux5~0_combout\);

-- Location: LCCOMB_X85_Y80_N22
\sm|com_adr[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[0]~6_combout\ = (!\waiting~0_combout\ & (!\sm|com_adr[7]~2_combout\ & ((\sm|state\(0)) # (!\sm|com_adr[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(0),
	datab => \waiting~0_combout\,
	datac => \sm|com_adr[0]~1_combout\,
	datad => \sm|com_adr[7]~2_combout\,
	combout => \sm|com_adr[0]~6_combout\);

-- Location: FF_X85_Y80_N1
\sm|com_adr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux5~0_combout\,
	asdata => \iram[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(6));

-- Location: LCCOMB_X85_Y80_N10
\sm|nar|WideOr4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~2_combout\ = (!\sm|com_adr\(5) & (\sm|com_adr\(7) & !\sm|com_adr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datac => \sm|com_adr\(7),
	datad => \sm|com_adr\(6),
	combout => \sm|nar|WideOr4~2_combout\);

-- Location: LCCOMB_X86_Y80_N14
\sm|nar|WideOr5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~2_combout\ = (!\sm|com_adr\(8) & !\sm|com_adr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(8),
	datad => \sm|com_adr\(7),
	combout => \sm|nar|WideOr5~2_combout\);

-- Location: LCCOMB_X87_Y80_N16
\sm|nar|WideOr5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~3_combout\ = (\sm|com_adr\(4) & (!\sm|com_adr\(0) & (!\sm|com_adr\(1) & !\sm|com_adr\(2)))) # (!\sm|com_adr\(4) & (\sm|com_adr\(2) $ (((\sm|com_adr\(0) & \sm|com_adr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr5~3_combout\);

-- Location: LCCOMB_X88_Y80_N4
\sm|nar|WideOr5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~4_combout\ = (\sm|nar|WideOr4~2_combout\ & ((\sm|com_adr\(3) & (\sm|nar|WideOr5~3_combout\)) # (!\sm|com_adr\(3) & ((\sm|nar|WideOr2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~2_combout\,
	datab => \sm|com_adr\(3),
	datac => \sm|nar|WideOr5~3_combout\,
	datad => \sm|nar|WideOr2~0_combout\,
	combout => \sm|nar|WideOr5~4_combout\);

-- Location: LCCOMB_X85_Y80_N12
\sm|nar|WideOr6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~2_combout\ = ((\sm|com_adr\(5) & (!\sm|com_adr\(1) & !\sm|com_adr\(3))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(3))))) # (!\sm|com_adr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(3),
	combout => \sm|nar|WideOr6~2_combout\);

-- Location: LCCOMB_X88_Y80_N22
\decoder|a|WideOr3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~13_combout\ = (\sm|com_adr\(1) & ((\sm|com_adr\(5) & ((!\sm|com_adr\(3)))) # (!\sm|com_adr\(5) & (\sm|com_adr\(0) & \sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr3~13_combout\);

-- Location: LCCOMB_X87_Y80_N18
\sm|nar|WideOr6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~3_combout\ = (!\sm|com_adr\(6) & !\sm|com_adr\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr6~3_combout\);

-- Location: LCCOMB_X88_Y80_N30
\sm|nar|WideOr6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~4_combout\ = (\sm|nar|WideOr6~2_combout\ & (\sm|nar|WideOr6~3_combout\ & ((\sm|com_adr\(2)) # (\decoder|a|WideOr3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr6~2_combout\,
	datab => \sm|com_adr\(2),
	datac => \decoder|a|WideOr3~13_combout\,
	datad => \sm|nar|WideOr6~3_combout\,
	combout => \sm|nar|WideOr6~4_combout\);

-- Location: LCCOMB_X88_Y80_N28
\sm|nar|WideOr5~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~11_combout\ = (\sm|com_adr\(5) & (!\sm|com_adr\(6) & (!\sm|com_adr\(2) & !\sm|com_adr\(3)))) # (!\sm|com_adr\(5) & (\sm|com_adr\(6) & (\sm|com_adr\(2) & \sm|com_adr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(3),
	combout => \sm|nar|WideOr5~11_combout\);

-- Location: LCCOMB_X88_Y80_N18
\sm|nar|WideOr5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~12_combout\ = (!\sm|com_adr\(1) & (\sm|com_adr\(4) & (\sm|com_adr\(0) & \sm|nar|WideOr5~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(0),
	datad => \sm|nar|WideOr5~11_combout\,
	combout => \sm|nar|WideOr5~12_combout\);

-- Location: LCCOMB_X83_Y80_N2
\sm|nar|WideOr7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~5_combout\ = (\sm|com_adr\(6) & \sm|com_adr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr7~5_combout\);

-- Location: LCCOMB_X88_Y80_N12
\sm|nar|WideOr5~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~13_combout\ = (!\sm|com_adr\(0) & ((\sm|com_adr\(5) & ((!\sm|com_adr\(4)))) # (!\sm|com_adr\(5) & (\sm|com_adr\(2) & \sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr5~13_combout\);

-- Location: LCCOMB_X82_Y80_N8
\decoder|a|WideOr6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~0_combout\ = (\sm|com_adr\(4) & (!\sm|com_adr\(2) & !\sm|com_adr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr6~0_combout\);

-- Location: LCCOMB_X88_Y80_N10
\sm|nar|WideOr5~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~16_combout\ = (\sm|com_adr\(3) & (\sm|nar|WideOr5~13_combout\)) # (!\sm|com_adr\(3) & (((!\sm|com_adr\(5) & \decoder|a|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr5~13_combout\,
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(3),
	datad => \decoder|a|WideOr6~0_combout\,
	combout => \sm|nar|WideOr5~16_combout\);

-- Location: LCCOMB_X88_Y80_N14
\sm|nar|WideOr5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~14_combout\ = (\sm|nar|WideOr6~4_combout\) # ((\sm|nar|WideOr5~12_combout\) # ((\sm|nar|WideOr7~5_combout\ & \sm|nar|WideOr5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr6~4_combout\,
	datab => \sm|nar|WideOr5~12_combout\,
	datac => \sm|nar|WideOr7~5_combout\,
	datad => \sm|nar|WideOr5~16_combout\,
	combout => \sm|nar|WideOr5~14_combout\);

-- Location: LCCOMB_X88_Y80_N26
\sm|nar|WideOr5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~5_combout\ = (\sm|com_adr\(5) & (\sm|com_adr\(3) $ (((\sm|com_adr\(1)) # (!\sm|com_adr\(4)))))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(1)) # ((!\sm|com_adr\(3) & \sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr5~5_combout\);

-- Location: LCCOMB_X88_Y80_N24
\sm|nar|WideOr5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~6_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(5) & ((\sm|com_adr\(1)) # (!\sm|com_adr\(4)))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(4)))))) # (!\sm|com_adr\(3) & (((\sm|com_adr\(5) & \sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr5~6_combout\);

-- Location: LCCOMB_X88_Y80_N8
\sm|nar|WideOr5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~8_combout\ = (\sm|nar|WideOr5~5_combout\ & ((\sm|nar|WideOr5~6_combout\) # ((!\sm|com_adr\(0) & \sm|com_adr\(3))))) # (!\sm|nar|WideOr5~5_combout\ & (\sm|nar|WideOr5~6_combout\ & ((\sm|com_adr\(0)) # (\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr5~5_combout\,
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(3),
	datad => \sm|nar|WideOr5~6_combout\,
	combout => \sm|nar|WideOr5~8_combout\);

-- Location: LCCOMB_X88_Y80_N2
\sm|nar|WideOr5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~7_combout\ = (\sm|com_adr\(0) & (\sm|nar|WideOr5~5_combout\ $ (\sm|nar|WideOr5~6_combout\))) # (!\sm|com_adr\(0) & (\sm|nar|WideOr5~5_combout\ & \sm|nar|WideOr5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(0),
	datac => \sm|nar|WideOr5~5_combout\,
	datad => \sm|nar|WideOr5~6_combout\,
	combout => \sm|nar|WideOr5~7_combout\);

-- Location: LCCOMB_X88_Y80_N6
\sm|nar|WideOr5~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~9_combout\ = \sm|nar|WideOr5~8_combout\ $ (((\sm|com_adr\(2) & \sm|nar|WideOr5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(2),
	datac => \sm|nar|WideOr5~8_combout\,
	datad => \sm|nar|WideOr5~7_combout\,
	combout => \sm|nar|WideOr5~9_combout\);

-- Location: LCCOMB_X85_Y82_N8
\decoder|a|WideOr6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~10_combout\ = (!\sm|com_adr\(5) & !\sm|com_adr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr6~10_combout\);

-- Location: LCCOMB_X85_Y82_N10
\sm|nar|WideOr4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~3_combout\ = (!\sm|com_adr\(2) & !\sm|com_adr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr4~3_combout\);

-- Location: LCCOMB_X85_Y82_N28
\decoder|a|WideOr6~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~11_combout\ = (!\sm|com_adr\(0) & (!\sm|com_adr\(4) & (\decoder|a|WideOr6~10_combout\ & \sm|nar|WideOr4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(4),
	datac => \decoder|a|WideOr6~10_combout\,
	datad => \sm|nar|WideOr4~3_combout\,
	combout => \decoder|a|WideOr6~11_combout\);

-- Location: LCCOMB_X84_Y80_N24
\sm|nar|WideOr4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~4_combout\ = (!\sm|com_adr\(7) & ((\decoder|a|WideOr6~11_combout\) # (!\sm|com_adr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(7),
	datad => \decoder|a|WideOr6~11_combout\,
	combout => \sm|nar|WideOr4~4_combout\);

-- Location: LCCOMB_X88_Y80_N20
\sm|nar|WideOr5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~10_combout\ = (\sm|com_adr\(8) & (((\sm|nar|WideOr5~9_combout\ & !\sm|com_adr\(6))) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr5~9_combout\,
	datab => \sm|com_adr\(8),
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr4~4_combout\,
	combout => \sm|nar|WideOr5~10_combout\);

-- Location: LCCOMB_X88_Y80_N16
\sm|nar|WideOr5~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~15_combout\ = (\sm|nar|WideOr5~4_combout\) # ((\sm|nar|WideOr5~10_combout\) # ((\sm|nar|WideOr5~2_combout\ & \sm|nar|WideOr5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr5~2_combout\,
	datab => \sm|nar|WideOr5~4_combout\,
	datac => \sm|nar|WideOr5~14_combout\,
	datad => \sm|nar|WideOr5~10_combout\,
	combout => \sm|nar|WideOr5~15_combout\);

-- Location: LCCOMB_X85_Y80_N18
\sm|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux8~0_combout\ = (\sm|state\(0) & ((\sm|nar|WideOr5~15_combout\))) # (!\sm|state\(0) & (\sm|jvm_opcode\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(0),
	datab => \sm|jvm_opcode\(3),
	datad => \sm|nar|WideOr5~15_combout\,
	combout => \sm|Mux8~0_combout\);

-- Location: FF_X85_Y80_N19
\sm|com_adr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux8~0_combout\,
	asdata => \iram[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(3));

-- Location: LCCOMB_X83_Y80_N22
\sm|nar|WideOr7~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~13_combout\ = (\sm|com_adr\(1) & (\sm|com_adr\(6) & (\sm|com_adr\(0) $ (\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(3),
	combout => \sm|nar|WideOr7~13_combout\);

-- Location: LCCOMB_X83_Y80_N16
\sm|nar|WideOr7~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~14_combout\ = (!\sm|com_adr\(7) & (\sm|nar|WideOr7~13_combout\ & !\sm|com_adr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datac => \sm|nar|WideOr7~13_combout\,
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr7~14_combout\);

-- Location: LCCOMB_X83_Y80_N26
\sm|nar|WideOr7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~6_combout\ = (\sm|com_adr\(1) & (\sm|com_adr\(6) & (\sm|com_adr\(0) $ (\sm|com_adr\(4))))) # (!\sm|com_adr\(1) & (\sm|com_adr\(0) & (!\sm|com_adr\(6) & \sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr7~6_combout\);

-- Location: LCCOMB_X83_Y80_N6
\sm|nar|WideOr7~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~24_combout\ = (!\sm|com_adr\(0) & (\sm|com_adr\(3) & (!\sm|com_adr\(4) & \sm|nar|WideOr7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(4),
	datad => \sm|nar|WideOr7~5_combout\,
	combout => \sm|nar|WideOr7~24_combout\);

-- Location: LCCOMB_X83_Y80_N4
\sm|nar|WideOr7~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~7_combout\ = (!\sm|com_adr\(7) & ((\sm|nar|WideOr7~24_combout\) # ((!\sm|com_adr\(3) & \sm|nar|WideOr7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|com_adr\(3),
	datac => \sm|nar|WideOr7~6_combout\,
	datad => \sm|nar|WideOr7~24_combout\,
	combout => \sm|nar|WideOr7~7_combout\);

-- Location: LCCOMB_X84_Y80_N2
\sm|nar|WideOr7~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~10_combout\ = (\sm|com_adr\(7) & (!\sm|com_adr\(6) & (!\sm|com_adr\(0) & \sm|com_adr\(3)))) # (!\sm|com_adr\(7) & (\sm|com_adr\(6) & (\sm|com_adr\(0) & !\sm|com_adr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(3),
	combout => \sm|nar|WideOr7~10_combout\);

-- Location: LCCOMB_X84_Y80_N8
\sm|nar|WideOr7~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~11_combout\ = (!\sm|com_adr\(1) & (\sm|nar|WideOr7~10_combout\ & \sm|com_adr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|nar|WideOr7~10_combout\,
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr7~11_combout\);

-- Location: LCCOMB_X85_Y80_N14
\sm|nar|WideOr7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~8_combout\ = (!\sm|com_adr\(7) & (\sm|com_adr\(3) & ((\sm|com_adr\(1)) # (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(3),
	combout => \sm|nar|WideOr7~8_combout\);

-- Location: LCCOMB_X85_Y80_N4
\sm|nar|WideOr7~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~25_combout\ = (\sm|com_adr\(0) & ((\sm|com_adr\(1) & ((!\sm|com_adr\(3)))) # (!\sm|com_adr\(1) & (\sm|com_adr\(7))))) # (!\sm|com_adr\(0) & (\sm|com_adr\(7) & ((\sm|com_adr\(3)) # (\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr7~25_combout\);

-- Location: LCCOMB_X85_Y80_N6
\sm|nar|WideOr7~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~26_combout\ = (\sm|nar|WideOr7~25_combout\ & (!\sm|com_adr\(6) & (\sm|com_adr\(4) $ (\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(3),
	datac => \sm|nar|WideOr7~25_combout\,
	datad => \sm|com_adr\(6),
	combout => \sm|nar|WideOr7~26_combout\);

-- Location: LCCOMB_X84_Y80_N16
\sm|nar|WideOr7~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~9_combout\ = (\sm|nar|WideOr7~26_combout\) # ((\sm|com_adr\(4) & (\sm|com_adr\(6) & \sm|nar|WideOr7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(6),
	datac => \sm|nar|WideOr7~8_combout\,
	datad => \sm|nar|WideOr7~26_combout\,
	combout => \sm|nar|WideOr7~9_combout\);

-- Location: LCCOMB_X84_Y80_N6
\sm|nar|WideOr7~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~12_combout\ = (\sm|com_adr\(2) & ((\sm|com_adr\(5)) # ((\sm|nar|WideOr7~9_combout\)))) # (!\sm|com_adr\(2) & (!\sm|com_adr\(5) & (\sm|nar|WideOr7~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(5),
	datac => \sm|nar|WideOr7~11_combout\,
	datad => \sm|nar|WideOr7~9_combout\,
	combout => \sm|nar|WideOr7~12_combout\);

-- Location: LCCOMB_X84_Y80_N12
\sm|nar|WideOr7~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~15_combout\ = (\sm|com_adr\(5) & ((\sm|nar|WideOr7~12_combout\ & (\sm|nar|WideOr7~14_combout\)) # (!\sm|nar|WideOr7~12_combout\ & ((\sm|nar|WideOr7~7_combout\))))) # (!\sm|com_adr\(5) & (((\sm|nar|WideOr7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr7~14_combout\,
	datab => \sm|com_adr\(5),
	datac => \sm|nar|WideOr7~7_combout\,
	datad => \sm|nar|WideOr7~12_combout\,
	combout => \sm|nar|WideOr7~15_combout\);

-- Location: LCCOMB_X84_Y80_N18
\sm|nar|WideOr7~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~16_combout\ = (\sm|com_adr\(1) & (((!\sm|com_adr\(4) & !\sm|com_adr\(5))))) # (!\sm|com_adr\(1) & ((\sm|com_adr\(3)) # ((\sm|com_adr\(4)) # (\sm|com_adr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr7~16_combout\);

-- Location: LCCOMB_X84_Y80_N26
\sm|nar|WideOr7~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~20_combout\ = (\sm|com_adr\(1)) # ((\sm|com_adr\(3) & ((!\sm|com_adr\(5)) # (!\sm|com_adr\(4)))) # (!\sm|com_adr\(3) & ((\sm|com_adr\(4)) # (\sm|com_adr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr7~20_combout\);

-- Location: LCCOMB_X84_Y80_N22
\sm|nar|WideOr7~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~18_combout\ = (\sm|com_adr\(1) & ((\sm|com_adr\(3) & ((\sm|com_adr\(4)) # (!\sm|com_adr\(5)))) # (!\sm|com_adr\(3) & (!\sm|com_adr\(4))))) # (!\sm|com_adr\(1) & (!\sm|com_adr\(3) & (\sm|com_adr\(4) & \sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr7~18_combout\);

-- Location: LCCOMB_X84_Y80_N0
\sm|nar|WideOr7~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~17_combout\ = (!\sm|com_adr\(1) & ((\sm|com_adr\(4) & ((!\sm|com_adr\(5)))) # (!\sm|com_adr\(4) & ((\sm|com_adr\(3)) # (\sm|com_adr\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr7~17_combout\);

-- Location: LCCOMB_X84_Y80_N20
\sm|nar|WideOr7~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~19_combout\ = (\sm|com_adr\(0) & ((\sm|com_adr\(2)) # ((\sm|nar|WideOr7~17_combout\)))) # (!\sm|com_adr\(0) & (!\sm|com_adr\(2) & (\sm|nar|WideOr7~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(2),
	datac => \sm|nar|WideOr7~18_combout\,
	datad => \sm|nar|WideOr7~17_combout\,
	combout => \sm|nar|WideOr7~19_combout\);

-- Location: LCCOMB_X84_Y80_N28
\sm|nar|WideOr7~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~21_combout\ = (\sm|com_adr\(2) & ((\sm|nar|WideOr7~19_combout\ & ((!\sm|nar|WideOr7~20_combout\))) # (!\sm|nar|WideOr7~19_combout\ & (!\sm|nar|WideOr7~16_combout\)))) # (!\sm|com_adr\(2) & (((\sm|nar|WideOr7~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|nar|WideOr7~16_combout\,
	datac => \sm|nar|WideOr7~20_combout\,
	datad => \sm|nar|WideOr7~19_combout\,
	combout => \sm|nar|WideOr7~21_combout\);

-- Location: LCCOMB_X84_Y80_N30
\sm|nar|WideOr7~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~22_combout\ = (!\sm|com_adr\(6) & \sm|nar|WideOr7~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr7~21_combout\,
	combout => \sm|nar|WideOr7~22_combout\);

-- Location: LCCOMB_X83_Y80_N12
\sm|nar|WideOr7~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~23_combout\ = (\sm|com_adr\(8) & (((\sm|nar|WideOr7~22_combout\) # (!\sm|nar|WideOr4~4_combout\)))) # (!\sm|com_adr\(8) & (\sm|nar|WideOr7~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr7~15_combout\,
	datab => \sm|com_adr\(8),
	datac => \sm|nar|WideOr7~22_combout\,
	datad => \sm|nar|WideOr4~4_combout\,
	combout => \sm|nar|WideOr7~23_combout\);

-- Location: LCCOMB_X85_Y80_N2
\sm|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux10~0_combout\ = (\sm|state\(0) & ((\sm|nar|WideOr7~23_combout\))) # (!\sm|state\(0) & (\sm|jvm_opcode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(0),
	datab => \sm|jvm_opcode\(1),
	datad => \sm|nar|WideOr7~23_combout\,
	combout => \sm|Mux10~0_combout\);

-- Location: FF_X85_Y80_N3
\sm|com_adr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux10~0_combout\,
	asdata => \iram[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(1));

-- Location: LCCOMB_X85_Y81_N26
\sm|nar|WideOr4~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~22_combout\ = (\sm|nar|WideOr4~2_combout\ & (!\sm|com_adr\(1) & (!\sm|com_adr\(0) & !\sm|com_adr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~2_combout\,
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr4~22_combout\);

-- Location: LCCOMB_X84_Y82_N8
\sm|nar|WideOr4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~6_combout\ = (\sm|com_adr\(5) & !\sm|com_adr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(6),
	combout => \sm|nar|WideOr4~6_combout\);

-- Location: LCCOMB_X85_Y81_N6
\sm|nar|WideOr4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~12_combout\ = (!\sm|com_adr\(7) & (!\sm|com_adr\(2) & (\sm|com_adr\(1) $ (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(7),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr4~12_combout\);

-- Location: LCCOMB_X85_Y81_N24
\sm|nar|WideOr4~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~13_combout\ = (\sm|com_adr\(1) & (\sm|com_adr\(2) & ((\sm|com_adr\(7)) # (\sm|com_adr\(0))))) # (!\sm|com_adr\(1) & (\sm|com_adr\(7) & (\sm|com_adr\(0) $ (!\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(7),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr4~13_combout\);

-- Location: LCCOMB_X85_Y81_N10
\sm|nar|WideOr4~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~14_combout\ = (!\sm|com_adr\(5) & ((\sm|com_adr\(6) & (\sm|nar|WideOr4~12_combout\)) # (!\sm|com_adr\(6) & ((\sm|nar|WideOr4~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~12_combout\,
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(5),
	datad => \sm|nar|WideOr4~13_combout\,
	combout => \sm|nar|WideOr4~14_combout\);

-- Location: LCCOMB_X85_Y81_N4
\sm|nar|WideOr4~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~15_combout\ = (\sm|nar|WideOr4~14_combout\) # ((\sm|nar|WideOr4~3_combout\ & (!\sm|com_adr\(7) & \sm|nar|WideOr4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~3_combout\,
	datab => \sm|com_adr\(7),
	datac => \sm|nar|WideOr4~6_combout\,
	datad => \sm|nar|WideOr4~14_combout\,
	combout => \sm|nar|WideOr4~15_combout\);

-- Location: LCCOMB_X85_Y81_N16
\sm|nar|WideOr4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~5_combout\ = (\sm|com_adr\(1) & (!\sm|com_adr\(0) & \sm|com_adr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr4~5_combout\);

-- Location: LCCOMB_X85_Y81_N14
\sm|nar|WideOr4~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~16_combout\ = (!\sm|com_adr\(5) & (!\sm|com_adr\(6) & (\sm|com_adr\(7) & \sm|nar|WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(7),
	datad => \sm|nar|WideOr4~5_combout\,
	combout => \sm|nar|WideOr4~16_combout\);

-- Location: LCCOMB_X86_Y81_N20
\sm|nar|WideOr4~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~17_combout\ = (!\sm|com_adr\(7) & (\sm|com_adr\(1) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(7),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr4~17_combout\);

-- Location: LCCOMB_X86_Y81_N26
\sm|nar|WideOr4~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~18_combout\ = (\sm|com_adr\(5) & (\sm|com_adr\(6) & \sm|nar|WideOr4~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr4~17_combout\,
	combout => \sm|nar|WideOr4~18_combout\);

-- Location: LCCOMB_X85_Y81_N0
\sm|nar|WideOr4~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~19_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(4)) # ((\sm|nar|WideOr4~16_combout\)))) # (!\sm|com_adr\(3) & (!\sm|com_adr\(4) & ((\sm|nar|WideOr4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(4),
	datac => \sm|nar|WideOr4~16_combout\,
	datad => \sm|nar|WideOr4~18_combout\,
	combout => \sm|nar|WideOr4~19_combout\);

-- Location: LCCOMB_X85_Y81_N22
\sm|nar|WideOr4~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~20_combout\ = (\sm|com_adr\(4) & ((\sm|nar|WideOr4~19_combout\ & (\sm|nar|WideOr4~22_combout\)) # (!\sm|nar|WideOr4~19_combout\ & ((\sm|nar|WideOr4~15_combout\))))) # (!\sm|com_adr\(4) & (((\sm|nar|WideOr4~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~22_combout\,
	datab => \sm|com_adr\(4),
	datac => \sm|nar|WideOr4~15_combout\,
	datad => \sm|nar|WideOr4~19_combout\,
	combout => \sm|nar|WideOr4~20_combout\);

-- Location: LCCOMB_X85_Y81_N18
\sm|nar|WideOr4~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~7_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(1) & ((!\sm|com_adr\(2)) # (!\sm|com_adr\(0)))) # (!\sm|com_adr\(1) & (\sm|com_adr\(0) $ (!\sm|com_adr\(2)))))) # (!\sm|com_adr\(3) & (((\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr4~7_combout\);

-- Location: LCCOMB_X85_Y81_N2
\decoder|a|WideOr5~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~13_combout\ = (\sm|com_adr\(2) & (!\sm|com_adr\(4) & (\sm|com_adr\(3) & \sm|com_adr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr5~13_combout\);

-- Location: LCCOMB_X85_Y81_N8
\sm|nar|WideOr4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~8_combout\ = (\sm|com_adr\(1) & ((\decoder|a|WideOr5~13_combout\) # ((\sm|nar|WideOr4~7_combout\ & \sm|com_adr\(4))))) # (!\sm|com_adr\(1) & (\sm|nar|WideOr4~7_combout\ & (\sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|nar|WideOr4~7_combout\,
	datac => \sm|com_adr\(4),
	datad => \decoder|a|WideOr5~13_combout\,
	combout => \sm|nar|WideOr4~8_combout\);

-- Location: LCCOMB_X86_Y81_N18
\sm|nar|WideOr4~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~9_combout\ = (\sm|com_adr\(0) & (\sm|com_adr\(2) & ((\sm|com_adr\(3)) # (!\sm|com_adr\(1))))) # (!\sm|com_adr\(0) & (!\sm|com_adr\(3) & (\sm|com_adr\(1) & !\sm|com_adr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr4~9_combout\);

-- Location: LCCOMB_X85_Y81_N30
\sm|nar|WideOr4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~10_combout\ = (\sm|com_adr\(5) & (((\sm|nar|WideOr4~8_combout\)))) # (!\sm|com_adr\(5) & (\sm|com_adr\(4) & ((!\sm|nar|WideOr4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(4),
	datac => \sm|nar|WideOr4~8_combout\,
	datad => \sm|nar|WideOr4~9_combout\,
	combout => \sm|nar|WideOr4~10_combout\);

-- Location: LCCOMB_X85_Y81_N12
\sm|nar|WideOr4~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~11_combout\ = (\sm|com_adr\(8) & (((\sm|nar|WideOr4~10_combout\ & !\sm|com_adr\(6))) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~10_combout\,
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(8),
	datad => \sm|nar|WideOr4~4_combout\,
	combout => \sm|nar|WideOr4~11_combout\);

-- Location: LCCOMB_X85_Y81_N28
\sm|nar|WideOr4~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~21_combout\ = (\sm|nar|WideOr4~11_combout\) # ((!\sm|com_adr\(8) & \sm|nar|WideOr4~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(8),
	datac => \sm|nar|WideOr4~20_combout\,
	datad => \sm|nar|WideOr4~11_combout\,
	combout => \sm|nar|WideOr4~21_combout\);

-- Location: LCCOMB_X85_Y80_N24
\sm|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux7~0_combout\ = (\sm|state\(0) & ((\sm|nar|WideOr4~21_combout\))) # (!\sm|state\(0) & (\sm|jvm_opcode\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(0),
	datab => \sm|jvm_opcode\(4),
	datad => \sm|nar|WideOr4~21_combout\,
	combout => \sm|Mux7~0_combout\);

-- Location: FF_X85_Y80_N25
\sm|com_adr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux7~0_combout\,
	asdata => \iram[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(4));

-- Location: LCCOMB_X82_Y80_N14
\decoder|a|WideOr6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~1_combout\ = (\decoder|a|WideOr6~0_combout\ & (!\sm|com_adr\(1) & !\sm|com_adr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr6~0_combout\,
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr6~1_combout\);

-- Location: LCCOMB_X82_Y80_N2
\sm|nar|WideOr8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~3_combout\ = (\sm|com_adr\(3) & (\sm|com_adr\(2) & (\sm|com_adr\(1) $ (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr8~3_combout\);

-- Location: LCCOMB_X82_Y80_N12
\sm|nar|WideOr8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~4_combout\ = (\sm|nar|WideOr4~2_combout\ & ((\decoder|a|WideOr6~1_combout\) # ((!\sm|com_adr\(4) & \sm|nar|WideOr8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~2_combout\,
	datab => \sm|com_adr\(4),
	datac => \decoder|a|WideOr6~1_combout\,
	datad => \sm|nar|WideOr8~3_combout\,
	combout => \sm|nar|WideOr8~4_combout\);

-- Location: LCCOMB_X82_Y80_N22
\sm|nar|WideOr8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~5_combout\ = (\sm|com_adr\(3) & (!\sm|com_adr\(4) & (!\sm|com_adr\(2) & !\sm|com_adr\(0)))) # (!\sm|com_adr\(3) & (\sm|com_adr\(2) & (\sm|com_adr\(4) $ (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr8~5_combout\);

-- Location: LCCOMB_X82_Y80_N6
\sm|nar|WideOr8~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~7_combout\ = (\sm|com_adr\(1) & ((\sm|com_adr\(3) & (!\sm|com_adr\(6) & \sm|com_adr\(2))) # (!\sm|com_adr\(3) & (\sm|com_adr\(6) & !\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr8~7_combout\);

-- Location: LCCOMB_X82_Y80_N4
\sm|nar|WideOr8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~6_combout\ = (\sm|com_adr\(6) & (\sm|com_adr\(3) & ((\sm|com_adr\(1)) # (\sm|com_adr\(2))))) # (!\sm|com_adr\(6) & (((\sm|com_adr\(1) & \sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr8~6_combout\);

-- Location: LCCOMB_X82_Y80_N28
\sm|nar|WideOr8~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~8_combout\ = (\sm|com_adr\(0) & (\sm|nar|WideOr8~6_combout\ & (\sm|nar|WideOr8~7_combout\ $ (\sm|com_adr\(4))))) # (!\sm|com_adr\(0) & (\sm|nar|WideOr8~7_combout\ & (\sm|nar|WideOr8~6_combout\ $ (\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr8~7_combout\,
	datab => \sm|nar|WideOr8~6_combout\,
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr8~8_combout\);

-- Location: LCCOMB_X82_Y80_N18
\sm|nar|WideOr8~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~9_combout\ = (\sm|com_adr\(5) & (\sm|nar|WideOr7~5_combout\ & (\sm|nar|WideOr8~5_combout\))) # (!\sm|com_adr\(5) & (((\sm|nar|WideOr8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr7~5_combout\,
	datab => \sm|com_adr\(5),
	datac => \sm|nar|WideOr8~5_combout\,
	datad => \sm|nar|WideOr8~8_combout\,
	combout => \sm|nar|WideOr8~9_combout\);

-- Location: LCCOMB_X82_Y80_N30
\sm|nar|WideOr8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~1_combout\ = (\sm|com_adr\(2) & (((!\sm|com_adr\(0))))) # (!\sm|com_adr\(2) & (\sm|com_adr\(3) & ((\sm|com_adr\(1)) # (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr8~1_combout\);

-- Location: LCCOMB_X82_Y80_N24
\sm|nar|WideOr8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~0_combout\ = (\sm|com_adr\(3) & (!\sm|com_adr\(0) & ((\sm|com_adr\(2)) # (!\sm|com_adr\(1))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(1) $ (((\sm|com_adr\(2) & \sm|com_adr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr8~0_combout\);

-- Location: LCCOMB_X82_Y80_N0
\sm|nar|WideOr8~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~11_combout\ = (\sm|nar|WideOr8~0_combout\ & (\sm|com_adr\(5) & ((!\sm|nar|WideOr8~1_combout\) # (!\sm|com_adr\(0))))) # (!\sm|nar|WideOr8~0_combout\ & (\sm|com_adr\(0) $ (((!\sm|nar|WideOr8~1_combout\) # (!\sm|com_adr\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(5),
	datac => \sm|nar|WideOr8~1_combout\,
	datad => \sm|nar|WideOr8~0_combout\,
	combout => \sm|nar|WideOr8~11_combout\);

-- Location: LCCOMB_X82_Y80_N10
\sm|nar|WideOr8~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~12_combout\ = (\sm|com_adr\(0) & (\sm|nar|WideOr8~11_combout\ & (\sm|com_adr\(4) $ (\sm|nar|WideOr8~1_combout\)))) # (!\sm|com_adr\(0) & ((\sm|nar|WideOr8~11_combout\) # (\sm|com_adr\(4) $ (!\sm|nar|WideOr8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(4),
	datac => \sm|nar|WideOr8~1_combout\,
	datad => \sm|nar|WideOr8~11_combout\,
	combout => \sm|nar|WideOr8~12_combout\);

-- Location: LCCOMB_X82_Y80_N16
\sm|nar|WideOr8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~2_combout\ = (\sm|com_adr\(8) & (((\sm|nar|WideOr8~12_combout\ & !\sm|com_adr\(6))) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr8~12_combout\,
	datab => \sm|com_adr\(8),
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr4~4_combout\,
	combout => \sm|nar|WideOr8~2_combout\);

-- Location: LCCOMB_X82_Y80_N20
\sm|nar|WideOr8~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~10_combout\ = (\sm|nar|WideOr8~4_combout\) # ((\sm|nar|WideOr8~2_combout\) # ((\sm|nar|WideOr8~9_combout\ & \sm|nar|WideOr5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr8~4_combout\,
	datab => \sm|nar|WideOr8~9_combout\,
	datac => \sm|nar|WideOr5~2_combout\,
	datad => \sm|nar|WideOr8~2_combout\,
	combout => \sm|nar|WideOr8~10_combout\);

-- Location: LCCOMB_X85_Y80_N8
\sm|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux11~0_combout\ = (\sm|state\(0) & ((\sm|nar|WideOr8~10_combout\))) # (!\sm|state\(0) & (\sm|jvm_opcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(0),
	datab => \sm|jvm_opcode\(0),
	datad => \sm|nar|WideOr8~10_combout\,
	combout => \sm|Mux11~0_combout\);

-- Location: FF_X85_Y80_N9
\sm|com_adr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux11~0_combout\,
	asdata => \iram[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(0));

-- Location: LCCOMB_X82_Y80_N26
\sm|nar|WideOr3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~8_combout\ = (!\sm|com_adr\(6) & ((\sm|com_adr\(1) & (\sm|com_adr\(0))) # (!\sm|com_adr\(1) & ((\sm|com_adr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr3~8_combout\);

-- Location: LCCOMB_X83_Y80_N24
\sm|nar|WideOr7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~4_combout\ = (!\sm|com_adr\(4) & \sm|com_adr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(3),
	combout => \sm|nar|WideOr7~4_combout\);

-- Location: LCCOMB_X83_Y80_N30
\sm|nar|WideOr3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~9_combout\ = (\sm|nar|WideOr3~8_combout\ & ((\sm|nar|WideOr7~4_combout\) # ((!\sm|com_adr\(6) & \decoder|a|WideOr6~1_combout\)))) # (!\sm|nar|WideOr3~8_combout\ & (((!\sm|com_adr\(6) & \decoder|a|WideOr6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr3~8_combout\,
	datab => \sm|nar|WideOr7~4_combout\,
	datac => \sm|com_adr\(6),
	datad => \decoder|a|WideOr6~1_combout\,
	combout => \sm|nar|WideOr3~9_combout\);

-- Location: LCCOMB_X83_Y80_N8
\sm|nar|WideOr3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~2_combout\ = (\sm|com_adr\(0) & (\sm|com_adr\(5) & (!\sm|com_adr\(4) & \sm|nar|WideOr7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(4),
	datad => \sm|nar|WideOr7~5_combout\,
	combout => \sm|nar|WideOr3~2_combout\);

-- Location: LCCOMB_X84_Y80_N14
\sm|nar|WideOr0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~7_combout\ = (\sm|com_adr\(1) & ((\sm|com_adr\(0)) # ((!\sm|com_adr\(6))))) # (!\sm|com_adr\(1) & (((\sm|com_adr\(6)) # (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr0~7_combout\);

-- Location: LCCOMB_X83_Y80_N0
\sm|nar|WideOr3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~0_combout\ = (!\sm|com_adr\(2) & (\sm|com_adr\(6) & (\sm|com_adr\(1) $ (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr3~0_combout\);

-- Location: LCCOMB_X83_Y80_N18
\sm|nar|WideOr3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~1_combout\ = (\sm|com_adr\(4) & ((\sm|com_adr\(5) & (!\sm|nar|WideOr0~7_combout\)) # (!\sm|com_adr\(5) & ((\sm|nar|WideOr3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(5),
	datac => \sm|nar|WideOr0~7_combout\,
	datad => \sm|nar|WideOr3~0_combout\,
	combout => \sm|nar|WideOr3~1_combout\);

-- Location: LCCOMB_X83_Y80_N10
\sm|nar|WideOr3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~3_combout\ = (\sm|nar|WideOr5~2_combout\ & (!\sm|com_adr\(3) & ((\sm|nar|WideOr3~2_combout\) # (\sm|nar|WideOr3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr5~2_combout\,
	datab => \sm|com_adr\(3),
	datac => \sm|nar|WideOr3~2_combout\,
	datad => \sm|nar|WideOr3~1_combout\,
	combout => \sm|nar|WideOr3~3_combout\);

-- Location: LCCOMB_X84_Y82_N4
\sm|nar|WideOr3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~5_combout\ = (\sm|com_adr\(2) & (!\sm|com_adr\(1) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(3))))) # (!\sm|com_adr\(2) & (\sm|com_adr\(3) & ((\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr3~5_combout\);

-- Location: LCCOMB_X84_Y82_N2
\sm|nar|WideOr3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~4_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(2) & (\sm|com_adr\(0) $ (\sm|com_adr\(1)))) # (!\sm|com_adr\(2) & ((\sm|com_adr\(1)) # (!\sm|com_adr\(0)))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(2) & ((\sm|com_adr\(1)) # 
-- (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr3~4_combout\);

-- Location: LCCOMB_X84_Y82_N30
\sm|nar|WideOr3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~6_combout\ = (\sm|nar|WideOr4~6_combout\ & ((\sm|com_adr\(4) & ((\sm|nar|WideOr3~4_combout\))) # (!\sm|com_adr\(4) & (!\sm|nar|WideOr3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|nar|WideOr3~5_combout\,
	datac => \sm|nar|WideOr4~6_combout\,
	datad => \sm|nar|WideOr3~4_combout\,
	combout => \sm|nar|WideOr3~6_combout\);

-- Location: LCCOMB_X83_Y80_N28
\sm|nar|WideOr3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~7_combout\ = (\sm|nar|WideOr3~3_combout\) # ((\sm|com_adr\(8) & ((\sm|nar|WideOr3~6_combout\) # (!\sm|nar|WideOr4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr3~3_combout\,
	datab => \sm|com_adr\(8),
	datac => \sm|nar|WideOr3~6_combout\,
	datad => \sm|nar|WideOr4~4_combout\,
	combout => \sm|nar|WideOr3~7_combout\);

-- Location: LCCOMB_X83_Y80_N20
\sm|nar|WideOr3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~10_combout\ = (\sm|nar|WideOr3~7_combout\) # ((\sm|com_adr\(7) & (!\sm|com_adr\(5) & \sm|nar|WideOr3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|com_adr\(5),
	datac => \sm|nar|WideOr3~9_combout\,
	datad => \sm|nar|WideOr3~7_combout\,
	combout => \sm|nar|WideOr3~10_combout\);

-- Location: LCCOMB_X85_Y80_N26
\sm|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux6~0_combout\ = (\sm|state\(0) & (\sm|nar|WideOr3~10_combout\)) # (!\sm|state\(0) & ((\sm|jvm_opcode\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr3~10_combout\,
	datab => \sm|jvm_opcode\(5),
	datad => \sm|state\(0),
	combout => \sm|Mux6~0_combout\);

-- Location: FF_X85_Y80_N27
\sm|com_adr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux6~0_combout\,
	asdata => \iram[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(5));

-- Location: LCCOMB_X87_Y80_N2
\sm|nar|WideOr6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~8_combout\ = (!\sm|com_adr\(3) & ((\sm|com_adr\(5) & (!\sm|com_adr\(0) & !\sm|com_adr\(6))) # (!\sm|com_adr\(5) & (\sm|com_adr\(0) & \sm|com_adr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(3),
	combout => \sm|nar|WideOr6~8_combout\);

-- Location: LCCOMB_X87_Y80_N30
\sm|nar|WideOr6~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~21_combout\ = (!\sm|com_adr\(2) & (\sm|nar|WideOr6~8_combout\ & (!\sm|com_adr\(1) & \sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|nar|WideOr6~8_combout\,
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr6~21_combout\);

-- Location: LCCOMB_X87_Y80_N0
\sm|nar|WideOr6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~5_combout\ = (\sm|com_adr\(5) & (!\sm|com_adr\(0) & (\sm|com_adr\(3) & !\sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr6~5_combout\);

-- Location: LCCOMB_X87_Y80_N22
\sm|nar|WideOr6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~6_combout\ = (\sm|com_adr\(5) & ((\sm|com_adr\(0)) # ((\sm|com_adr\(3))))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(0) & ((!\sm|com_adr\(3)))) # (!\sm|com_adr\(0) & (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(3),
	combout => \sm|nar|WideOr6~6_combout\);

-- Location: LCCOMB_X87_Y80_N28
\sm|nar|WideOr6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~7_combout\ = (\sm|nar|WideOr7~5_combout\ & ((\sm|nar|WideOr6~5_combout\) # ((\sm|com_adr\(4) & !\sm|nar|WideOr6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr6~5_combout\,
	datab => \sm|com_adr\(4),
	datac => \sm|nar|WideOr6~6_combout\,
	datad => \sm|nar|WideOr7~5_combout\,
	combout => \sm|nar|WideOr6~7_combout\);

-- Location: LCCOMB_X87_Y80_N8
\sm|nar|WideOr6~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~9_combout\ = (\sm|nar|WideOr5~2_combout\ & ((\sm|nar|WideOr6~21_combout\) # ((\sm|nar|WideOr6~4_combout\) # (\sm|nar|WideOr6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr6~21_combout\,
	datab => \sm|nar|WideOr5~2_combout\,
	datac => \sm|nar|WideOr6~4_combout\,
	datad => \sm|nar|WideOr6~7_combout\,
	combout => \sm|nar|WideOr6~9_combout\);

-- Location: LCCOMB_X86_Y81_N0
\sm|nar|WideOr6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~10_combout\ = (\sm|com_adr\(3) & (((!\sm|com_adr\(4) & !\sm|com_adr\(0))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(4) & ((\sm|com_adr\(1)) # (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr6~10_combout\);

-- Location: LCCOMB_X86_Y81_N22
\sm|nar|WideOr6~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~11_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(0) & (\sm|com_adr\(1) & !\sm|com_adr\(4))) # (!\sm|com_adr\(0) & (!\sm|com_adr\(1) & \sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr6~11_combout\);

-- Location: LCCOMB_X86_Y81_N24
\sm|nar|WideOr6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~12_combout\ = (\sm|nar|WideOr4~2_combout\ & ((\sm|com_adr\(2) & (\sm|nar|WideOr6~10_combout\)) # (!\sm|com_adr\(2) & ((\sm|nar|WideOr6~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|nar|WideOr6~10_combout\,
	datac => \sm|nar|WideOr6~11_combout\,
	datad => \sm|nar|WideOr4~2_combout\,
	combout => \sm|nar|WideOr6~12_combout\);

-- Location: LCCOMB_X87_Y80_N10
\sm|nar|WideOr6~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~17_combout\ = (\sm|com_adr\(0) & (\sm|com_adr\(1) $ (((!\sm|com_adr\(5) & \sm|com_adr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr6~17_combout\);

-- Location: LCCOMB_X87_Y80_N26
\sm|nar|WideOr6~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~13_combout\ = (\sm|com_adr\(1) & ((\sm|com_adr\(0)) # ((\sm|com_adr\(5) & !\sm|com_adr\(3))))) # (!\sm|com_adr\(1) & (\sm|com_adr\(5) & (!\sm|com_adr\(3) & \sm|com_adr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr6~13_combout\);

-- Location: LCCOMB_X87_Y80_N14
\sm|nar|WideOr6~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~15_combout\ = (\sm|com_adr\(5) & (\sm|com_adr\(1) & ((\sm|com_adr\(3)) # (\sm|com_adr\(0))))) # (!\sm|com_adr\(5) & (!\sm|com_adr\(1) & (\sm|com_adr\(3) & \sm|com_adr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr6~15_combout\);

-- Location: LCCOMB_X87_Y80_N24
\sm|nar|WideOr6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~14_combout\ = (\sm|com_adr\(5) & (\sm|com_adr\(0) $ (((\sm|com_adr\(1)) # (\sm|com_adr\(3)))))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(1) & (\sm|com_adr\(3))) # (!\sm|com_adr\(1) & (!\sm|com_adr\(3) & \sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr6~14_combout\);

-- Location: LCCOMB_X87_Y80_N12
\sm|nar|WideOr6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~16_combout\ = (\sm|com_adr\(2) & ((\sm|com_adr\(4)) # ((\sm|nar|WideOr6~14_combout\)))) # (!\sm|com_adr\(2) & (!\sm|com_adr\(4) & (\sm|nar|WideOr6~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(4),
	datac => \sm|nar|WideOr6~15_combout\,
	datad => \sm|nar|WideOr6~14_combout\,
	combout => \sm|nar|WideOr6~16_combout\);

-- Location: LCCOMB_X87_Y80_N4
\sm|nar|WideOr6~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~18_combout\ = (\sm|com_adr\(4) & ((\sm|nar|WideOr6~16_combout\ & (!\sm|nar|WideOr6~17_combout\)) # (!\sm|nar|WideOr6~16_combout\ & ((\sm|nar|WideOr6~13_combout\))))) # (!\sm|com_adr\(4) & (((\sm|nar|WideOr6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr6~17_combout\,
	datab => \sm|com_adr\(4),
	datac => \sm|nar|WideOr6~13_combout\,
	datad => \sm|nar|WideOr6~16_combout\,
	combout => \sm|nar|WideOr6~18_combout\);

-- Location: LCCOMB_X87_Y80_N6
\sm|nar|WideOr6~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~19_combout\ = (\sm|com_adr\(8) & (((!\sm|com_adr\(6) & \sm|nar|WideOr6~18_combout\)) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|com_adr\(6),
	datac => \sm|nar|WideOr6~18_combout\,
	datad => \sm|nar|WideOr4~4_combout\,
	combout => \sm|nar|WideOr6~19_combout\);

-- Location: LCCOMB_X87_Y80_N20
\sm|nar|WideOr6~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~20_combout\ = (\sm|nar|WideOr6~9_combout\) # ((\sm|nar|WideOr6~12_combout\) # (\sm|nar|WideOr6~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|nar|WideOr6~9_combout\,
	datac => \sm|nar|WideOr6~12_combout\,
	datad => \sm|nar|WideOr6~19_combout\,
	combout => \sm|nar|WideOr6~20_combout\);

-- Location: LCCOMB_X85_Y80_N16
\sm|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux9~0_combout\ = (\sm|state\(0) & ((\sm|nar|WideOr6~20_combout\))) # (!\sm|state\(0) & (\sm|jvm_opcode\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(0),
	datab => \sm|jvm_opcode\(2),
	datad => \sm|nar|WideOr6~20_combout\,
	combout => \sm|Mux9~0_combout\);

-- Location: FF_X85_Y80_N17
\sm|com_adr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux9~0_combout\,
	asdata => \iram[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(2));

-- Location: LCCOMB_X88_Y80_N0
\sm|nar|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr2~0_combout\ = (\sm|com_adr\(2) & (\sm|com_adr\(1) & (\sm|com_adr\(0) & \sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr2~0_combout\);

-- Location: LCCOMB_X83_Y80_N14
\sm|nar|WideOr2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr2~1_combout\ = (\sm|com_adr\(3) & (!\sm|com_adr\(6) & \sm|com_adr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr2~1_combout\);

-- Location: LCCOMB_X84_Y80_N10
\sm|nar|WideOr2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr2~2_combout\ = (\sm|com_adr\(8) & (((\sm|nar|WideOr2~0_combout\ & \sm|nar|WideOr2~1_combout\)) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|nar|WideOr2~0_combout\,
	datac => \sm|nar|WideOr2~1_combout\,
	datad => \sm|nar|WideOr4~4_combout\,
	combout => \sm|nar|WideOr2~2_combout\);

-- Location: LCCOMB_X84_Y80_N4
\sm|WideOr2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|WideOr2~1_combout\ = (\sm|com_adr\(8) & (\sm|nar|WideOr4~4_combout\ & (!\sm|nar|WideOr7~22_combout\))) # (!\sm|com_adr\(8) & (((!\sm|nar|WideOr7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|nar|WideOr4~4_combout\,
	datac => \sm|nar|WideOr7~22_combout\,
	datad => \sm|nar|WideOr7~15_combout\,
	combout => \sm|WideOr2~1_combout\);

-- Location: LCCOMB_X86_Y80_N18
\sm|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|WideOr2~0_combout\ = (!\sm|nar|WideOr6~20_combout\ & (!\sm|nar|WideOr3~10_combout\ & (!\sm|nar|WideOr5~15_combout\ & !\sm|nar|WideOr8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr6~20_combout\,
	datab => \sm|nar|WideOr3~10_combout\,
	datac => \sm|nar|WideOr5~15_combout\,
	datad => \sm|nar|WideOr8~10_combout\,
	combout => \sm|WideOr2~0_combout\);

-- Location: LCCOMB_X86_Y80_N16
\sm|WideOr2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|WideOr2~2_combout\ = (!\sm|nar|WideOr2~2_combout\ & (\sm|WideOr2~1_combout\ & (!\sm|nar|WideOr4~21_combout\ & \sm|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr2~2_combout\,
	datab => \sm|WideOr2~1_combout\,
	datac => \sm|nar|WideOr4~21_combout\,
	datad => \sm|WideOr2~0_combout\,
	combout => \sm|WideOr2~2_combout\);

-- Location: LCCOMB_X85_Y80_N28
\sm|com_adr[7]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[7]~2_combout\ = (\sm|state\(0) & (\sm|state\(1) & (\sm|nar|WideOr0~21_combout\ & \sm|WideOr2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(0),
	datab => \sm|state\(1),
	datac => \sm|nar|WideOr0~21_combout\,
	datad => \sm|WideOr2~2_combout\,
	combout => \sm|com_adr[7]~2_combout\);

-- Location: LCCOMB_X85_Y80_N20
\sm|is_wide~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|is_wide~1_combout\ = (\sm|is_wide~0_combout\) # ((\sm|is_wide~q\ & ((\waiting~0_combout\) # (!\sm|com_adr[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|is_wide~0_combout\,
	datab => \waiting~0_combout\,
	datac => \sm|is_wide~q\,
	datad => \sm|com_adr[7]~2_combout\,
	combout => \sm|is_wide~1_combout\);

-- Location: FF_X85_Y80_N21
\sm|is_wide\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|is_wide~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|is_wide~q\);

-- Location: LCCOMB_X86_Y76_N10
\sm|ShiftLeft1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|ShiftLeft1~6_combout\ = (\sm|is_wide~q\ & (((\c|WideOr0~2_combout\)))) # (!\sm|is_wide~q\ & (\sm|jvm_opcode\(0) & ((\c|Decoder0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(0),
	datab => \c|WideOr0~2_combout\,
	datac => \sm|is_wide~q\,
	datad => \c|Decoder0~1_combout\,
	combout => \sm|ShiftLeft1~6_combout\);

-- Location: LCCOMB_X86_Y77_N10
\sm|param_counter[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[0]~10_combout\ = (\sm|param_counter\(0) & (\sm|param_even~q\ $ (VCC))) # (!\sm|param_counter\(0) & (\sm|param_even~q\ & VCC))
-- \sm|param_counter[0]~11\ = CARRY((\sm|param_counter\(0) & \sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(0),
	datab => \sm|param_even~q\,
	datad => VCC,
	combout => \sm|param_counter[0]~10_combout\,
	cout => \sm|param_counter[0]~11\);

-- Location: LCCOMB_X86_Y77_N12
\sm|param_counter[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[1]~12_combout\ = (\sm|param_counter\(1) & (!\sm|param_counter[0]~11\)) # (!\sm|param_counter\(1) & ((\sm|param_counter[0]~11\) # (GND)))
-- \sm|param_counter[1]~13\ = CARRY((!\sm|param_counter[0]~11\) # (!\sm|param_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(1),
	datad => VCC,
	cin => \sm|param_counter[0]~11\,
	combout => \sm|param_counter[1]~12_combout\,
	cout => \sm|param_counter[1]~13\);

-- Location: LCCOMB_X86_Y77_N16
\sm|param_counter[3]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[3]~17_combout\ = (\sm|param_counter\(3) & (!\sm|param_counter[2]~16\)) # (!\sm|param_counter\(3) & ((\sm|param_counter[2]~16\) # (GND)))
-- \sm|param_counter[3]~18\ = CARRY((!\sm|param_counter[2]~16\) # (!\sm|param_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(3),
	datad => VCC,
	cin => \sm|param_counter[2]~16\,
	combout => \sm|param_counter[3]~17_combout\,
	cout => \sm|param_counter[3]~18\);

-- Location: LCCOMB_X86_Y77_N18
\sm|param_counter[4]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[4]~19_combout\ = (\sm|param_counter\(4) & (\sm|param_counter[3]~18\ $ (GND))) # (!\sm|param_counter\(4) & (!\sm|param_counter[3]~18\ & VCC))
-- \sm|param_counter[4]~20\ = CARRY((\sm|param_counter\(4) & !\sm|param_counter[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(4),
	datad => VCC,
	cin => \sm|param_counter[3]~18\,
	combout => \sm|param_counter[4]~19_combout\,
	cout => \sm|param_counter[4]~20\);

-- Location: FF_X86_Y77_N19
\sm|param_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[4]~19_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(4));

-- Location: LCCOMB_X86_Y77_N20
\sm|param_counter[5]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[5]~21_combout\ = (\sm|param_counter\(5) & (!\sm|param_counter[4]~20\)) # (!\sm|param_counter\(5) & ((\sm|param_counter[4]~20\) # (GND)))
-- \sm|param_counter[5]~22\ = CARRY((!\sm|param_counter[4]~20\) # (!\sm|param_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(5),
	datad => VCC,
	cin => \sm|param_counter[4]~20\,
	combout => \sm|param_counter[5]~21_combout\,
	cout => \sm|param_counter[5]~22\);

-- Location: FF_X86_Y77_N21
\sm|param_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[5]~21_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(5));

-- Location: LCCOMB_X86_Y77_N22
\sm|param_counter[6]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[6]~23_combout\ = (\sm|param_counter\(6) & (\sm|param_counter[5]~22\ $ (GND))) # (!\sm|param_counter\(6) & (!\sm|param_counter[5]~22\ & VCC))
-- \sm|param_counter[6]~24\ = CARRY((\sm|param_counter\(6) & !\sm|param_counter[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(6),
	datad => VCC,
	cin => \sm|param_counter[5]~22\,
	combout => \sm|param_counter[6]~23_combout\,
	cout => \sm|param_counter[6]~24\);

-- Location: FF_X86_Y77_N23
\sm|param_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[6]~23_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(6));

-- Location: LCCOMB_X86_Y77_N24
\sm|param_counter[7]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[7]~25_combout\ = \sm|param_counter[6]~24\ $ (\sm|param_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sm|param_counter\(7),
	cin => \sm|param_counter[6]~24\,
	combout => \sm|param_counter[7]~25_combout\);

-- Location: FF_X86_Y77_N25
\sm|param_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[7]~25_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(7));

-- Location: LCCOMB_X86_Y76_N12
\sm|ShiftLeft1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|ShiftLeft1~0_combout\ = (\sm|is_wide~q\ & (((\c|WideOr1~9_combout\) # (\c|WideOr1~3_combout\)))) # (!\sm|is_wide~q\ & (\c|WideOr0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|is_wide~q\,
	datab => \c|WideOr0~2_combout\,
	datac => \c|WideOr1~9_combout\,
	datad => \c|WideOr1~3_combout\,
	combout => \sm|ShiftLeft1~0_combout\);

-- Location: LCCOMB_X86_Y76_N6
\sm|ShiftLeft1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|ShiftLeft1~3_combout\ = (\sm|is_wide~q\ & (((\c|WideOr2~6_combout\)))) # (!\sm|is_wide~q\ & ((\c|WideOr1~3_combout\) # ((\c|WideOr1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|WideOr1~3_combout\,
	datab => \sm|is_wide~q\,
	datac => \c|WideOr1~9_combout\,
	datad => \c|WideOr2~6_combout\,
	combout => \sm|ShiftLeft1~3_combout\);

-- Location: LCCOMB_X87_Y76_N16
\sm|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal1~1_combout\ = (\sm|ShiftLeft1~0_combout\ & (\sm|param_counter\(2) & (\sm|param_counter\(1) $ (!\sm|ShiftLeft1~3_combout\)))) # (!\sm|ShiftLeft1~0_combout\ & (!\sm|param_counter\(2) & (\sm|param_counter\(1) $ (!\sm|ShiftLeft1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|ShiftLeft1~0_combout\,
	datab => \sm|param_counter\(1),
	datac => \sm|param_counter\(2),
	datad => \sm|ShiftLeft1~3_combout\,
	combout => \sm|Equal1~1_combout\);

-- Location: LCCOMB_X87_Y76_N18
\sm|param_counter~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter~8_combout\ = (!\sm|param_counter\(7) & (\sm|Equal1~0_combout\ & ((!\sm|Equal1~1_combout\) # (!\sm|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(7),
	datab => \sm|Equal1~0_combout\,
	datac => \sm|Equal1~5_combout\,
	datad => \sm|Equal1~1_combout\,
	combout => \sm|param_counter~8_combout\);

-- Location: LCCOMB_X85_Y76_N18
\sm|ShiftLeft1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|ShiftLeft1~1_combout\ = (!\sm|jvm_opcode\(1) & \sm|jvm_opcode\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(1),
	datad => \sm|jvm_opcode\(7),
	combout => \sm|ShiftLeft1~1_combout\);

-- Location: LCCOMB_X85_Y76_N20
\sm|ShiftLeft1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|ShiftLeft1~2_combout\ = (!\sm|is_wide~q\ & ((\c|WideOr2~3_combout\) # ((\sm|ShiftLeft1~1_combout\ & \c|WideOr2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|ShiftLeft1~1_combout\,
	datab => \c|WideOr2~3_combout\,
	datac => \sm|is_wide~q\,
	datad => \c|WideOr2~5_combout\,
	combout => \sm|ShiftLeft1~2_combout\);

-- Location: LCCOMB_X86_Y76_N18
\sm|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add0~0_combout\ = (\sm|ShiftLeft1~3_combout\ & (\sm|ShiftLeft1~2_combout\ $ (VCC))) # (!\sm|ShiftLeft1~3_combout\ & (\sm|ShiftLeft1~2_combout\ & VCC))
-- \sm|Add0~1\ = CARRY((\sm|ShiftLeft1~3_combout\ & \sm|ShiftLeft1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|ShiftLeft1~3_combout\,
	datab => \sm|ShiftLeft1~2_combout\,
	datad => VCC,
	combout => \sm|Add0~0_combout\,
	cout => \sm|Add0~1\);

-- Location: LCCOMB_X86_Y76_N20
\sm|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add0~2_combout\ = (\sm|ShiftLeft1~0_combout\ & (!\sm|Add0~1\)) # (!\sm|ShiftLeft1~0_combout\ & ((\sm|Add0~1\) # (GND)))
-- \sm|Add0~3\ = CARRY((!\sm|Add0~1\) # (!\sm|ShiftLeft1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sm|ShiftLeft1~0_combout\,
	datad => VCC,
	cin => \sm|Add0~1\,
	combout => \sm|Add0~2_combout\,
	cout => \sm|Add0~3\);

-- Location: LCCOMB_X86_Y76_N0
\sm|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal2~0_combout\ = (\sm|param_counter\(2) & (\sm|Add0~2_combout\ & (\sm|Add0~0_combout\ $ (!\sm|param_counter\(1))))) # (!\sm|param_counter\(2) & (!\sm|Add0~2_combout\ & (\sm|Add0~0_combout\ $ (!\sm|param_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(2),
	datab => \sm|Add0~0_combout\,
	datac => \sm|param_counter\(1),
	datad => \sm|Add0~2_combout\,
	combout => \sm|Equal2~0_combout\);

-- Location: LCCOMB_X86_Y76_N8
\c|Decoder0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|Decoder0~3_combout\ = (!\sm|jvm_opcode\(0) & \c|Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|jvm_opcode\(0),
	datad => \c|Decoder0~1_combout\,
	combout => \c|Decoder0~3_combout\);

-- Location: LCCOMB_X85_Y76_N2
\sm|ShiftLeft1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|ShiftLeft1~4_combout\ = (\sm|jvm_opcode\(7) & (\sm|jvm_opcode\(0) $ (!\sm|is_wide~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(0),
	datab => \sm|is_wide~q\,
	datad => \sm|jvm_opcode\(7),
	combout => \sm|ShiftLeft1~4_combout\);

-- Location: LCCOMB_X85_Y76_N16
\sm|ShiftLeft1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|ShiftLeft1~5_combout\ = (!\sm|jvm_opcode\(2) & (\sm|jvm_opcode\(1) & (\c|Decoder0~0_combout\ & \sm|ShiftLeft1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(2),
	datab => \sm|jvm_opcode\(1),
	datac => \c|Decoder0~0_combout\,
	datad => \sm|ShiftLeft1~4_combout\,
	combout => \sm|ShiftLeft1~5_combout\);

-- Location: LCCOMB_X86_Y76_N22
\sm|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add0~4_combout\ = (\sm|ShiftLeft1~6_combout\ & (\sm|Add0~3\ $ (GND))) # (!\sm|ShiftLeft1~6_combout\ & (!\sm|Add0~3\ & VCC))
-- \sm|Add0~5\ = CARRY((\sm|ShiftLeft1~6_combout\ & !\sm|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|ShiftLeft1~6_combout\,
	datad => VCC,
	cin => \sm|Add0~3\,
	combout => \sm|Add0~4_combout\,
	cout => \sm|Add0~5\);

-- Location: LCCOMB_X86_Y76_N24
\sm|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add0~6_combout\ = (\sm|ShiftLeft1~5_combout\ & (!\sm|Add0~5\)) # (!\sm|ShiftLeft1~5_combout\ & ((\sm|Add0~5\) # (GND)))
-- \sm|Add0~7\ = CARRY((!\sm|Add0~5\) # (!\sm|ShiftLeft1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sm|ShiftLeft1~5_combout\,
	datad => VCC,
	cin => \sm|Add0~5\,
	combout => \sm|Add0~6_combout\,
	cout => \sm|Add0~7\);

-- Location: LCCOMB_X86_Y76_N26
\sm|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add0~8_combout\ = (\sm|Add0~7\ & (\sm|is_wide~q\ & (\c|Decoder0~3_combout\ & VCC))) # (!\sm|Add0~7\ & ((((\sm|is_wide~q\ & \c|Decoder0~3_combout\)))))
-- \sm|Add0~9\ = CARRY((\sm|is_wide~q\ & (\c|Decoder0~3_combout\ & !\sm|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sm|is_wide~q\,
	datab => \c|Decoder0~3_combout\,
	datad => VCC,
	cin => \sm|Add0~7\,
	combout => \sm|Add0~8_combout\,
	cout => \sm|Add0~9\);

-- Location: LCCOMB_X86_Y76_N28
\sm|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add0~10_combout\ = \sm|Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sm|Add0~9\,
	combout => \sm|Add0~10_combout\);

-- Location: LCCOMB_X86_Y76_N2
\sm|Equal2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal2~2_combout\ = (\sm|param_counter\(5) & (\sm|Add0~8_combout\ & (\sm|param_counter\(6) $ (!\sm|Add0~10_combout\)))) # (!\sm|param_counter\(5) & (!\sm|Add0~8_combout\ & (\sm|param_counter\(6) $ (!\sm|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(5),
	datab => \sm|param_counter\(6),
	datac => \sm|Add0~8_combout\,
	datad => \sm|Add0~10_combout\,
	combout => \sm|Equal2~2_combout\);

-- Location: LCCOMB_X86_Y76_N4
\sm|Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal2~1_combout\ = (\sm|param_counter\(4) & (\sm|Add0~6_combout\ & (\sm|param_counter\(3) $ (!\sm|Add0~4_combout\)))) # (!\sm|param_counter\(4) & (!\sm|Add0~6_combout\ & (\sm|param_counter\(3) $ (!\sm|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(4),
	datab => \sm|param_counter\(3),
	datac => \sm|Add0~4_combout\,
	datad => \sm|Add0~6_combout\,
	combout => \sm|Equal2~1_combout\);

-- Location: LCCOMB_X86_Y77_N28
\sm|param_counter~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter~9_combout\ = (\sm|param_counter~8_combout\ & (\sm|Equal2~0_combout\ & (\sm|Equal2~2_combout\ & \sm|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter~8_combout\,
	datab => \sm|Equal2~0_combout\,
	datac => \sm|Equal2~2_combout\,
	datad => \sm|Equal2~1_combout\,
	combout => \sm|param_counter~9_combout\);

-- Location: LCCOMB_X86_Y77_N4
\sm|param_counter[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[7]~14_combout\ = (!\waiting~0_combout\ & ((\sm|state\(0) & (!\sm|state\(1))) # (!\sm|state\(0) & (\sm|state\(1) & !\sm|param_counter~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \waiting~0_combout\,
	datab => \sm|state\(0),
	datac => \sm|state\(1),
	datad => \sm|param_counter~9_combout\,
	combout => \sm|param_counter[7]~14_combout\);

-- Location: FF_X86_Y77_N13
\sm|param_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[1]~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(1));

-- Location: LCCOMB_X86_Y77_N14
\sm|param_counter[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[2]~15_combout\ = (\sm|param_counter\(2) & (\sm|param_counter[1]~13\ $ (GND))) # (!\sm|param_counter\(2) & (!\sm|param_counter[1]~13\ & VCC))
-- \sm|param_counter[2]~16\ = CARRY((\sm|param_counter\(2) & !\sm|param_counter[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(2),
	datad => VCC,
	cin => \sm|param_counter[1]~13\,
	combout => \sm|param_counter[2]~15_combout\,
	cout => \sm|param_counter[2]~16\);

-- Location: FF_X86_Y77_N15
\sm|param_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[2]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(2));

-- Location: FF_X86_Y77_N17
\sm|param_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[3]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(3));

-- Location: LCCOMB_X86_Y77_N30
\sm|Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal1~2_combout\ = (!\sm|param_counter\(6) & !\sm|param_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|param_counter\(6),
	datad => \sm|param_counter\(7),
	combout => \sm|Equal1~2_combout\);

-- Location: LCCOMB_X85_Y76_N8
\sm|Equal1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal1~3_combout\ = \sm|param_counter\(5) $ (((!\sm|jvm_opcode\(0) & (\sm|is_wide~q\ & \c|Decoder0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(0),
	datab => \sm|is_wide~q\,
	datac => \sm|param_counter\(5),
	datad => \c|Decoder0~1_combout\,
	combout => \sm|Equal1~3_combout\);

-- Location: LCCOMB_X85_Y76_N30
\sm|Equal1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal1~4_combout\ = (\sm|Equal1~2_combout\ & (!\sm|Equal1~3_combout\ & (\sm|param_counter\(4) $ (!\sm|ShiftLeft1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(4),
	datab => \sm|Equal1~2_combout\,
	datac => \sm|Equal1~3_combout\,
	datad => \sm|ShiftLeft1~5_combout\,
	combout => \sm|Equal1~4_combout\);

-- Location: LCCOMB_X86_Y76_N16
\sm|Equal1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal1~5_combout\ = (!\sm|Equal1~0_combout\ & (\sm|Equal1~4_combout\ & (\sm|ShiftLeft1~6_combout\ $ (!\sm|param_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|ShiftLeft1~6_combout\,
	datab => \sm|param_counter\(3),
	datac => \sm|Equal1~0_combout\,
	datad => \sm|Equal1~4_combout\,
	combout => \sm|Equal1~5_combout\);

-- Location: LCCOMB_X87_Y76_N2
\sm|Equal1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal1~6_combout\ = (\sm|Equal1~5_combout\ & \sm|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|Equal1~5_combout\,
	datad => \sm|Equal1~1_combout\,
	combout => \sm|Equal1~6_combout\);

-- Location: LCCOMB_X87_Y76_N20
\sm|Equal2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal2~3_combout\ = (!\sm|param_counter\(7) & (\sm|Equal2~1_combout\ & (\sm|Equal2~0_combout\ & \sm|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(7),
	datab => \sm|Equal2~1_combout\,
	datac => \sm|Equal2~0_combout\,
	datad => \sm|Equal2~2_combout\,
	combout => \sm|Equal2~3_combout\);

-- Location: LCCOMB_X87_Y76_N12
\sm|param_even~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_even~0_combout\ = (!\sm|param_even~q\ & (((\sm|Equal1~6_combout\) # (!\sm|Equal2~3_combout\)) # (!\sm|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Equal1~0_combout\,
	datab => \sm|Equal1~6_combout\,
	datac => \sm|param_even~q\,
	datad => \sm|Equal2~3_combout\,
	combout => \sm|param_even~0_combout\);

-- Location: LCCOMB_X86_Y80_N22
\sm|Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Decoder0~0_combout\ = (\sm|state\(1) & (\iram_ready~input_o\ & !\sm|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datac => \iram_ready~input_o\,
	datad => \sm|state\(0),
	combout => \sm|Decoder0~0_combout\);

-- Location: FF_X87_Y76_N13
\sm|param_even\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_even~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \sm|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_even~q\);

-- Location: FF_X86_Y77_N11
\sm|param_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[0]~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(0));

-- Location: LCCOMB_X85_Y76_N6
\sm|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal1~0_combout\ = \sm|param_counter\(0) $ (((!\sm|is_wide~q\ & \c|WideOr2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(0),
	datac => \sm|is_wide~q\,
	datad => \c|WideOr2~6_combout\,
	combout => \sm|Equal1~0_combout\);

-- Location: LCCOMB_X87_Y76_N30
\sm|com_adr[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[0]~0_combout\ = (((\sm|param_counter\(7)) # (\sm|Equal1~6_combout\)) # (!\sm|Equal1~0_combout\)) # (!\sm|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \sm|Equal1~0_combout\,
	datac => \sm|param_counter\(7),
	datad => \sm|Equal1~6_combout\,
	combout => \sm|com_adr[0]~0_combout\);

-- Location: LCCOMB_X86_Y76_N30
\sm|com_adr[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[0]~1_combout\ = (\sm|com_adr[0]~0_combout\) # (((!\sm|Equal2~2_combout\) # (!\sm|Equal2~1_combout\)) # (!\sm|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr[0]~0_combout\,
	datab => \sm|Equal2~0_combout\,
	datac => \sm|Equal2~1_combout\,
	datad => \sm|Equal2~2_combout\,
	combout => \sm|com_adr[0]~1_combout\);

-- Location: LCCOMB_X86_Y80_N0
\sm|com_adr[8]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[8]~3_combout\ = (\sm|nar|WideOr0~21_combout\ & ((!\sm|WideOr2~2_combout\) # (!\sm|com_adr\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(8),
	datac => \sm|nar|WideOr0~21_combout\,
	datad => \sm|WideOr2~2_combout\,
	combout => \sm|com_adr[8]~3_combout\);

-- Location: LCCOMB_X86_Y80_N2
\sm|com_adr[8]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[8]~4_combout\ = (\sm|state\(0) & (\sm|state\(1) & ((!\sm|com_adr[8]~3_combout\)))) # (!\sm|state\(0) & (((\sm|com_adr[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(0),
	datab => \sm|state\(1),
	datac => \sm|com_adr[0]~1_combout\,
	datad => \sm|com_adr[8]~3_combout\,
	combout => \sm|com_adr[8]~4_combout\);

-- Location: LCCOMB_X86_Y80_N4
\sm|com_adr[8]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[8]~5_combout\ = (\waiting~0_combout\ & (((\sm|com_adr\(8))))) # (!\waiting~0_combout\ & (\sm|com_adr[8]~4_combout\ & ((\sm|state\(0)) # (\sm|com_adr\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(0),
	datab => \waiting~0_combout\,
	datac => \sm|com_adr\(8),
	datad => \sm|com_adr[8]~4_combout\,
	combout => \sm|com_adr[8]~5_combout\);

-- Location: FF_X86_Y80_N5
\sm|com_adr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|com_adr[8]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(8));

-- Location: LCCOMB_X84_Y82_N28
\sm|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux4~0_combout\ = (\sm|state\(0) & (\sm|com_adr\(8) & ((!\sm|nar|WideOr4~4_combout\)))) # (!\sm|state\(0) & (((\sm|jvm_opcode\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(0),
	datab => \sm|com_adr\(8),
	datac => \sm|jvm_opcode\(7),
	datad => \sm|nar|WideOr4~4_combout\,
	combout => \sm|Mux4~0_combout\);

-- Location: LCCOMB_X85_Y80_N30
\sm|com_adr[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[7]~feeder_combout\ = \sm|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sm|Mux4~0_combout\,
	combout => \sm|com_adr[7]~feeder_combout\);

-- Location: FF_X85_Y80_N31
\sm|com_adr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|com_adr[7]~feeder_combout\,
	asdata => \iram[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(7));

-- Location: LCCOMB_X85_Y82_N14
\sm|nar|WideOr0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~16_combout\ = (\sm|com_adr\(5) & ((\sm|com_adr\(2) $ (!\sm|com_adr\(4))) # (!\sm|com_adr\(0)))) # (!\sm|com_adr\(5) & (\sm|com_adr\(4) & ((!\sm|com_adr\(0)) # (!\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr0~16_combout\);

-- Location: LCCOMB_X85_Y82_N0
\sm|nar|WideOr0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~15_combout\ = (\sm|com_adr\(2) & (((\sm|com_adr\(0)) # (\sm|com_adr\(4))))) # (!\sm|com_adr\(2) & (!\sm|com_adr\(5) & (\sm|com_adr\(0) $ (\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr0~15_combout\);

-- Location: LCCOMB_X85_Y82_N22
\sm|nar|WideOr0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~18_combout\ = (\sm|com_adr\(2) & (!\sm|nar|WideOr0~15_combout\ & (\sm|com_adr\(1) $ (\sm|nar|WideOr0~16_combout\)))) # (!\sm|com_adr\(2) & (\sm|nar|WideOr0~15_combout\ & ((\sm|com_adr\(1)) # (!\sm|nar|WideOr0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(2),
	datac => \sm|nar|WideOr0~16_combout\,
	datad => \sm|nar|WideOr0~15_combout\,
	combout => \sm|nar|WideOr0~18_combout\);

-- Location: LCCOMB_X85_Y82_N24
\sm|nar|WideOr0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~17_combout\ = (\sm|com_adr\(1) & ((\sm|nar|WideOr0~15_combout\ & ((\sm|com_adr\(2)) # (!\sm|nar|WideOr0~16_combout\))) # (!\sm|nar|WideOr0~15_combout\ & ((\sm|nar|WideOr0~16_combout\) # (!\sm|com_adr\(2)))))) # (!\sm|com_adr\(1) & 
-- (\sm|nar|WideOr0~16_combout\ & ((\sm|nar|WideOr0~15_combout\) # (!\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|nar|WideOr0~15_combout\,
	datac => \sm|nar|WideOr0~16_combout\,
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr0~17_combout\);

-- Location: LCCOMB_X85_Y82_N12
\sm|nar|WideOr0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~19_combout\ = \sm|nar|WideOr0~18_combout\ $ (((\sm|com_adr\(3) & !\sm|nar|WideOr0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datac => \sm|nar|WideOr0~18_combout\,
	datad => \sm|nar|WideOr0~17_combout\,
	combout => \sm|nar|WideOr0~19_combout\);

-- Location: LCCOMB_X85_Y82_N6
\sm|nar|WideOr0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~20_combout\ = (\sm|com_adr\(6) & (\decoder|a|WideOr6~11_combout\)) # (!\sm|com_adr\(6) & ((\sm|nar|WideOr0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr6~11_combout\,
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr0~19_combout\,
	combout => \sm|nar|WideOr0~20_combout\);

-- Location: LCCOMB_X86_Y82_N24
\sm|nar|WideOr0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~12_combout\ = (\sm|com_adr\(4) & (!\sm|com_adr\(3) & ((\sm|com_adr\(1)) # (\sm|com_adr\(0))))) # (!\sm|com_adr\(4) & (((\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr0~12_combout\);

-- Location: LCCOMB_X86_Y82_N6
\sm|nar|WideOr0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~11_combout\ = (\sm|com_adr\(4) & (!\sm|com_adr\(1) & ((!\sm|com_adr\(0))))) # (!\sm|com_adr\(4) & (\sm|com_adr\(1) & (\sm|com_adr\(3) & \sm|com_adr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr0~11_combout\);

-- Location: LCCOMB_X86_Y82_N14
\sm|nar|WideOr0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~13_combout\ = (\sm|com_adr\(6)) # ((\sm|com_adr\(2) & (!\sm|nar|WideOr0~12_combout\)) # (!\sm|com_adr\(2) & ((!\sm|nar|WideOr0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|nar|WideOr0~12_combout\,
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr0~11_combout\,
	combout => \sm|nar|WideOr0~13_combout\);

-- Location: LCCOMB_X85_Y82_N20
\sm|nar|WideOr0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~9_combout\ = (\sm|com_adr\(6) & (!\sm|com_adr\(4) & (!\sm|com_adr\(0) & \sm|com_adr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr0~9_combout\);

-- Location: LCCOMB_X85_Y82_N18
\sm|nar|WideOr0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~8_combout\ = (\sm|com_adr\(7)) # ((\sm|com_adr\(4) & \sm|nar|WideOr0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(7),
	datad => \sm|nar|WideOr0~7_combout\,
	combout => \sm|nar|WideOr0~8_combout\);

-- Location: LCCOMB_X85_Y82_N26
\sm|nar|WideOr0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~10_combout\ = (\sm|com_adr\(5) & ((\sm|nar|WideOr0~8_combout\) # ((\sm|com_adr\(3) & !\sm|nar|WideOr0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|nar|WideOr0~9_combout\,
	datad => \sm|nar|WideOr0~8_combout\,
	combout => \sm|nar|WideOr0~10_combout\);

-- Location: LCCOMB_X86_Y82_N8
\sm|nar|WideOr0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~4_combout\ = (\sm|com_adr\(2) & ((\sm|com_adr\(1) & (\sm|com_adr\(6) & \sm|com_adr\(0))) # (!\sm|com_adr\(1) & (!\sm|com_adr\(6))))) # (!\sm|com_adr\(2) & (\sm|com_adr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr0~4_combout\);

-- Location: LCCOMB_X86_Y82_N22
\sm|nar|WideOr0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~3_combout\ = (\sm|com_adr\(2) & (\sm|com_adr\(1) & (!\sm|com_adr\(6) & \sm|com_adr\(0)))) # (!\sm|com_adr\(2) & (\sm|com_adr\(6) & (\sm|com_adr\(1) $ (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr0~3_combout\);

-- Location: LCCOMB_X86_Y82_N26
\sm|nar|WideOr0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~5_combout\ = (\sm|com_adr\(5) & (!\sm|nar|WideOr0~4_combout\ & ((!\sm|com_adr\(4))))) # (!\sm|com_adr\(5) & (((!\sm|com_adr\(4)) # (!\sm|nar|WideOr0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|nar|WideOr0~4_combout\,
	datac => \sm|nar|WideOr0~3_combout\,
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr0~5_combout\);

-- Location: LCCOMB_X86_Y82_N4
\decoder|a|WideOr6~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~17_combout\ = (\sm|com_adr\(6) & ((\sm|com_adr\(2)) # ((\sm|com_adr\(1)) # (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr6~17_combout\);

-- Location: LCCOMB_X86_Y82_N0
\sm|nar|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~0_combout\ = (!\sm|com_adr\(6) & ((\sm|com_adr\(2)) # ((\sm|com_adr\(1) & \sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr0~0_combout\);

-- Location: LCCOMB_X86_Y82_N2
\sm|nar|WideOr0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~1_combout\ = (!\sm|com_adr\(5) & (!\sm|com_adr\(4) & !\sm|nar|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(4),
	datad => \sm|nar|WideOr0~0_combout\,
	combout => \sm|nar|WideOr0~1_combout\);

-- Location: LCCOMB_X86_Y82_N28
\sm|nar|WideOr0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~2_combout\ = (\sm|nar|WideOr0~1_combout\) # ((\sm|com_adr\(4) & (!\decoder|a|WideOr6~17_combout\ & \sm|com_adr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \decoder|a|WideOr6~17_combout\,
	datac => \sm|com_adr\(3),
	datad => \sm|nar|WideOr0~1_combout\,
	combout => \sm|nar|WideOr0~2_combout\);

-- Location: LCCOMB_X86_Y82_N20
\sm|nar|WideOr0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~6_combout\ = (!\sm|com_adr\(7) & ((\sm|nar|WideOr0~2_combout\) # ((!\sm|com_adr\(3) & \sm|nar|WideOr0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|com_adr\(3),
	datac => \sm|nar|WideOr0~5_combout\,
	datad => \sm|nar|WideOr0~2_combout\,
	combout => \sm|nar|WideOr0~6_combout\);

-- Location: LCCOMB_X86_Y82_N16
\sm|nar|WideOr0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~14_combout\ = (\sm|nar|WideOr0~10_combout\) # ((\sm|nar|WideOr0~6_combout\) # ((\sm|com_adr\(7) & \sm|nar|WideOr0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|nar|WideOr0~13_combout\,
	datac => \sm|nar|WideOr0~10_combout\,
	datad => \sm|nar|WideOr0~6_combout\,
	combout => \sm|nar|WideOr0~14_combout\);

-- Location: LCCOMB_X86_Y82_N30
\sm|nar|WideOr0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~21_combout\ = (\sm|com_adr\(8) & (!\sm|com_adr\(7) & (\sm|nar|WideOr0~20_combout\))) # (!\sm|com_adr\(8) & (((\sm|nar|WideOr0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|com_adr\(8),
	datac => \sm|nar|WideOr0~20_combout\,
	datad => \sm|nar|WideOr0~14_combout\,
	combout => \sm|nar|WideOr0~21_combout\);

-- Location: LCCOMB_X86_Y80_N30
\sm|WideOr2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|WideOr2~combout\ = (\sm|nar|WideOr0~21_combout\ & \sm|WideOr2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|nar|WideOr0~21_combout\,
	datad => \sm|WideOr2~2_combout\,
	combout => \sm|WideOr2~combout\);

-- Location: LCCOMB_X86_Y80_N24
\sm|q_select~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|q_select~0_combout\ = ((\iram[2]~input_o\ & ((!\iram[7]~input_o\) # (!\iram[6]~input_o\))) # (!\iram[2]~input_o\ & ((\iram[6]~input_o\) # (\iram[7]~input_o\)))) # (!\sm|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iram[2]~input_o\,
	datab => \sm|Equal0~1_combout\,
	datac => \iram[6]~input_o\,
	datad => \iram[7]~input_o\,
	combout => \sm|q_select~0_combout\);

-- Location: LCCOMB_X86_Y80_N12
\sm|state[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|state[1]~3_combout\ = (\sm|state[1]~2_combout\ & ((\sm|state\(1) & (!\sm|WideOr2~combout\)) # (!\sm|state\(1) & ((\sm|q_select~0_combout\))))) # (!\sm|state[1]~2_combout\ & (((\sm|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|WideOr2~combout\,
	datab => \sm|state[1]~2_combout\,
	datac => \sm|state\(1),
	datad => \sm|q_select~0_combout\,
	combout => \sm|state[1]~3_combout\);

-- Location: FF_X86_Y80_N13
\sm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|state[1]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|state\(1));

-- Location: LCCOMB_X86_Y80_N10
\waiting~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \waiting~0_combout\ = ((\sm|state\(1) & (\w|mem|state~q\ & \sm|state\(0)))) # (!\iram_ready~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iram_ready~input_o\,
	datab => \sm|state\(1),
	datac => \w|mem|state~q\,
	datad => \sm|state\(0),
	combout => \waiting~0_combout\);

-- Location: LCCOMB_X87_Y76_N22
\sm|q_select~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|q_select~1_combout\ = (\valid_write~1_combout\ & (\sm|q_select~0_combout\ & (!\sm|state\(1) & !\c|WideOr1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valid_write~1_combout\,
	datab => \sm|q_select~0_combout\,
	datac => \sm|state\(1),
	datad => \c|WideOr1~10_combout\,
	combout => \sm|q_select~1_combout\);

-- Location: LCCOMB_X86_Y77_N6
\sm|state[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|state[0]~0_combout\ = (\sm|state\(1) & ((\sm|state\(0) & ((!\sm|WideOr2~combout\))) # (!\sm|state\(0) & (!\sm|param_counter~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(0),
	datab => \sm|state\(1),
	datac => \sm|param_counter~9_combout\,
	datad => \sm|WideOr2~combout\,
	combout => \sm|state[0]~0_combout\);

-- Location: LCCOMB_X86_Y77_N0
\sm|state[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|state[0]~1_combout\ = (\waiting~0_combout\ & (((\sm|state\(0))))) # (!\waiting~0_combout\ & ((\sm|q_select~1_combout\) # (\sm|state\(0) $ (!\sm|state[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \waiting~0_combout\,
	datab => \sm|q_select~1_combout\,
	datac => \sm|state\(0),
	datad => \sm|state[0]~0_combout\,
	combout => \sm|state[0]~1_combout\);

-- Location: FF_X86_Y77_N1
\sm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|state[0]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|state\(0));

-- Location: LCCOMB_X86_Y80_N20
\sm|q_select~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|q_select~2_combout\ = (\iram_ready~input_o\ & (\sm|state\(1) $ (\sm|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datac => \iram_ready~input_o\,
	datad => \sm|state\(0),
	combout => \sm|q_select~2_combout\);

-- Location: LCCOMB_X87_Y76_N28
\sm|q_select~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|q_select~3_combout\ = (\sm|q_select~q\ & ((\sm|state\(1)) # ((!\sm|q_select~0_combout\) # (!\sm|q_select~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \sm|q_select~2_combout\,
	datac => \sm|q_select~q\,
	datad => \sm|q_select~0_combout\,
	combout => \sm|q_select~3_combout\);

-- Location: LCCOMB_X87_Y76_N14
\sm|q_select~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|q_select~4_combout\ = (\sm|q_select~3_combout\) # ((\sm|q_select~2_combout\ & ((\sm|q_select~1_combout\) # (!\sm|com_adr[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~1_combout\,
	datab => \sm|com_adr[0]~1_combout\,
	datac => \sm|q_select~2_combout\,
	datad => \sm|q_select~3_combout\,
	combout => \sm|q_select~4_combout\);

-- Location: FF_X87_Y76_N15
\sm|q_select\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|q_select~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|q_select~q\);

-- Location: LCCOMB_X85_Y76_N22
\c|Decoder0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|Decoder0~2_combout\ = (\sm|jvm_opcode\(0) & \c|Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|jvm_opcode\(0),
	datad => \c|Decoder0~1_combout\,
	combout => \c|Decoder0~2_combout\);

-- Location: LCCOMB_X87_Y76_N10
\sm|push_wide~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|push_wide~0_combout\ = (\sm|Equal1~6_combout\) # ((\sm|push_wide~q\ & ((!\sm|Equal2~3_combout\) # (!\sm|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Equal1~0_combout\,
	datab => \sm|Equal1~6_combout\,
	datac => \sm|push_wide~q\,
	datad => \sm|Equal2~3_combout\,
	combout => \sm|push_wide~0_combout\);

-- Location: FF_X87_Y76_N11
\sm|push_wide\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|push_wide~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \sm|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|push_wide~q\);

-- Location: LCCOMB_X84_Y82_N22
\decoder|a|WideOr5~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~21_combout\ = (\sm|com_adr\(5) & !\sm|com_adr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr5~21_combout\);

-- Location: LCCOMB_X84_Y81_N28
\decoder|a|WideOr4~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~13_combout\ = (\sm|com_adr\(0) & (!\sm|com_adr\(5) & (\sm|com_adr\(3) $ (!\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr4~13_combout\);

-- Location: LCCOMB_X84_Y81_N30
\decoder|a|WideOr4~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~14_combout\ = (\sm|com_adr\(2) & (\sm|nar|WideOr4~5_combout\ & (\decoder|a|WideOr5~21_combout\))) # (!\sm|com_adr\(2) & ((\decoder|a|WideOr4~13_combout\) # ((\sm|nar|WideOr4~5_combout\ & \decoder|a|WideOr5~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|nar|WideOr4~5_combout\,
	datac => \decoder|a|WideOr5~21_combout\,
	datad => \decoder|a|WideOr4~13_combout\,
	combout => \decoder|a|WideOr4~14_combout\);

-- Location: LCCOMB_X84_Y81_N24
\decoder|a|WideOr4~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~11_combout\ = (\sm|com_adr\(1) & (\sm|com_adr\(0) & ((\sm|com_adr\(6))))) # (!\sm|com_adr\(1) & (((\sm|com_adr\(2) & !\sm|com_adr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr4~11_combout\);

-- Location: LCCOMB_X84_Y81_N20
\decoder|a|WideOr4~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~9_combout\ = (\sm|com_adr\(0) & ((\sm|com_adr\(1)) # (\sm|com_adr\(4) $ (\sm|com_adr\(6))))) # (!\sm|com_adr\(0) & (((\sm|com_adr\(4)) # (\sm|com_adr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr4~9_combout\);

-- Location: LCCOMB_X84_Y81_N10
\decoder|a|WideOr4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~10_combout\ = (\sm|com_adr\(2) & (!\sm|com_adr\(5) & (\sm|com_adr\(3) & !\decoder|a|WideOr4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(3),
	datad => \decoder|a|WideOr4~9_combout\,
	combout => \decoder|a|WideOr4~10_combout\);

-- Location: LCCOMB_X84_Y81_N6
\decoder|a|WideOr4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~12_combout\ = (\decoder|a|WideOr4~10_combout\) # ((!\sm|com_adr\(4) & (\decoder|a|WideOr4~11_combout\ & \decoder|a|WideOr5~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \decoder|a|WideOr4~11_combout\,
	datac => \decoder|a|WideOr5~21_combout\,
	datad => \decoder|a|WideOr4~10_combout\,
	combout => \decoder|a|WideOr4~12_combout\);

-- Location: LCCOMB_X84_Y81_N8
\decoder|a|WideOr4~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~15_combout\ = (\decoder|a|WideOr4~12_combout\) # ((\decoder|a|WideOr4~14_combout\ & (\sm|com_adr\(6) & \sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~14_combout\,
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(4),
	datad => \decoder|a|WideOr4~12_combout\,
	combout => \decoder|a|WideOr4~15_combout\);

-- Location: LCCOMB_X84_Y82_N16
\decoder|a|WideOr4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~2_combout\ = (\sm|com_adr\(3) & (\sm|com_adr\(2) $ (((!\sm|com_adr\(5)))))) # (!\sm|com_adr\(3) & ((\sm|com_adr\(2) & ((!\sm|com_adr\(5)))) # (!\sm|com_adr\(2) & (\sm|com_adr\(0) & \sm|com_adr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr4~2_combout\);

-- Location: LCCOMB_X86_Y82_N18
\decoder|a|WideOr4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~6_combout\ = (\sm|com_adr\(5) & (((!\sm|com_adr\(0))))) # (!\sm|com_adr\(5) & (\sm|com_adr\(3) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr4~6_combout\);

-- Location: LCCOMB_X85_Y82_N30
\decoder|a|WideOr4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~3_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(0) & (!\sm|com_adr\(5) & !\sm|com_adr\(2))) # (!\sm|com_adr\(0) & ((\sm|com_adr\(2)))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(5) & ((\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr4~3_combout\);

-- Location: LCCOMB_X85_Y82_N16
\decoder|a|WideOr4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~4_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(0) $ (\sm|com_adr\(2))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(5) & (!\sm|com_adr\(0) & \sm|com_adr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr4~4_combout\);

-- Location: LCCOMB_X85_Y82_N2
\decoder|a|WideOr4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~5_combout\ = (\sm|com_adr\(4) & (((\sm|com_adr\(1))))) # (!\sm|com_adr\(4) & ((\sm|com_adr\(1) & (!\decoder|a|WideOr4~3_combout\)) # (!\sm|com_adr\(1) & ((\decoder|a|WideOr4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~3_combout\,
	datab => \decoder|a|WideOr4~4_combout\,
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(1),
	combout => \decoder|a|WideOr4~5_combout\);

-- Location: LCCOMB_X85_Y82_N4
\decoder|a|WideOr4~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~7_combout\ = (\sm|com_adr\(4) & ((\decoder|a|WideOr4~5_combout\ & ((!\decoder|a|WideOr4~6_combout\))) # (!\decoder|a|WideOr4~5_combout\ & (!\decoder|a|WideOr4~2_combout\)))) # (!\sm|com_adr\(4) & (((\decoder|a|WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~2_combout\,
	datab => \decoder|a|WideOr4~6_combout\,
	datac => \sm|com_adr\(4),
	datad => \decoder|a|WideOr4~5_combout\,
	combout => \decoder|a|WideOr4~7_combout\);

-- Location: LCCOMB_X85_Y84_N14
\decoder|a|WideOr4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~8_combout\ = (\sm|com_adr\(8) & (((!\sm|com_adr\(6) & \decoder|a|WideOr4~7_combout\)) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \decoder|a|WideOr4~7_combout\,
	datac => \sm|nar|WideOr4~4_combout\,
	datad => \sm|com_adr\(8),
	combout => \decoder|a|WideOr4~8_combout\);

-- Location: LCCOMB_X85_Y84_N30
\decoder|a|WideOr4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~0_combout\ = (\sm|com_adr\(0) & (!\sm|com_adr\(4) & (\sm|com_adr\(1) $ (\sm|com_adr\(2))))) # (!\sm|com_adr\(0) & (!\sm|com_adr\(1) & (!\sm|com_adr\(2) & \sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr4~0_combout\);

-- Location: LCCOMB_X85_Y84_N20
\decoder|a|WideOr4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~1_combout\ = (\sm|nar|WideOr4~2_combout\ & ((\sm|com_adr\(3) & ((\decoder|a|WideOr4~0_combout\))) # (!\sm|com_adr\(3) & (\sm|nar|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr2~0_combout\,
	datab => \sm|nar|WideOr4~2_combout\,
	datac => \decoder|a|WideOr4~0_combout\,
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr4~1_combout\);

-- Location: LCCOMB_X85_Y84_N16
\decoder|a|WideOr4~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~16_combout\ = (\decoder|a|WideOr4~8_combout\) # ((\decoder|a|WideOr4~1_combout\) # ((\sm|nar|WideOr5~2_combout\ & \decoder|a|WideOr4~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr5~2_combout\,
	datab => \decoder|a|WideOr4~15_combout\,
	datac => \decoder|a|WideOr4~8_combout\,
	datad => \decoder|a|WideOr4~1_combout\,
	combout => \decoder|a|WideOr4~16_combout\);

-- Location: LCCOMB_X86_Y81_N10
\decoder|a|WideOr1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~9_combout\ = (\sm|com_adr\(3) & (!\sm|com_adr\(4) & ((\sm|com_adr\(0)) # (\sm|com_adr\(2))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(0) & (\sm|com_adr\(2) & \sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr1~9_combout\);

-- Location: LCCOMB_X86_Y81_N12
\decoder|a|WideOr1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~10_combout\ = (\sm|com_adr\(1) & (((\decoder|a|WideOr1~9_combout\)))) # (!\sm|com_adr\(1) & ((\decoder|a|WideOr6~0_combout\) # ((\decoder|a|WideOr5~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \decoder|a|WideOr6~0_combout\,
	datac => \decoder|a|WideOr5~13_combout\,
	datad => \decoder|a|WideOr1~9_combout\,
	combout => \decoder|a|WideOr1~10_combout\);

-- Location: LCCOMB_X84_Y81_N26
\decoder|a|WideOr1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~2_combout\ = (\sm|com_adr\(4) & ((\sm|com_adr\(1) & ((!\sm|com_adr\(0)))) # (!\sm|com_adr\(1) & (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr1~2_combout\);

-- Location: LCCOMB_X84_Y81_N12
\decoder|a|WideOr1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~3_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(5) & (!\decoder|a|WideOr1~2_combout\)) # (!\sm|com_adr\(5) & ((\sm|com_adr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~2_combout\,
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr1~3_combout\);

-- Location: LCCOMB_X84_Y81_N14
\decoder|a|WideOr1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~4_combout\ = (\decoder|a|WideOr1~3_combout\) # ((\decoder|a|WideOr5~21_combout\ & ((!\sm|nar|WideOr4~5_combout\) # (!\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|nar|WideOr4~5_combout\,
	datac => \decoder|a|WideOr5~21_combout\,
	datad => \decoder|a|WideOr1~3_combout\,
	combout => \decoder|a|WideOr1~4_combout\);

-- Location: LCCOMB_X85_Y81_N20
\decoder|a|WideOr1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~5_combout\ = (\sm|com_adr\(8) & (((\decoder|a|WideOr1~4_combout\ & !\sm|com_adr\(6))) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~4_combout\,
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(8),
	datad => \sm|nar|WideOr4~4_combout\,
	combout => \decoder|a|WideOr1~5_combout\);

-- Location: LCCOMB_X86_Y81_N30
\decoder|a|WideOr1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~7_combout\ = (\sm|com_adr\(0) & (\sm|com_adr\(5) & \sm|com_adr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(1),
	combout => \decoder|a|WideOr1~7_combout\);

-- Location: LCCOMB_X86_Y81_N28
\decoder|a|WideOr1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~12_combout\ = (\sm|com_adr\(6) & (!\sm|com_adr\(8) & (!\sm|com_adr\(7) & !\sm|com_adr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|com_adr\(8),
	datac => \sm|com_adr\(7),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr1~12_combout\);

-- Location: LCCOMB_X86_Y81_N8
\decoder|a|WideOr1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~6_combout\ = (\sm|com_adr\(2) & (\sm|com_adr\(5) & (!\sm|com_adr\(0) & \sm|com_adr\(1)))) # (!\sm|com_adr\(2) & (!\sm|com_adr\(5) & (\sm|com_adr\(0) $ (\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \decoder|a|WideOr1~6_combout\);

-- Location: LCCOMB_X86_Y81_N4
\decoder|a|WideOr1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~8_combout\ = (\decoder|a|WideOr1~12_combout\ & ((\decoder|a|WideOr1~7_combout\ & (!\decoder|a|WideOr1~6_combout\ & !\sm|com_adr\(4))) # (!\decoder|a|WideOr1~7_combout\ & (\decoder|a|WideOr1~6_combout\ & \sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~7_combout\,
	datab => \decoder|a|WideOr1~12_combout\,
	datac => \decoder|a|WideOr1~6_combout\,
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr1~8_combout\);

-- Location: LCCOMB_X86_Y81_N14
\decoder|a|WideOr1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~11_combout\ = (\decoder|a|WideOr1~5_combout\) # ((\decoder|a|WideOr1~8_combout\) # ((\decoder|a|WideOr1~10_combout\ & \sm|nar|WideOr4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~10_combout\,
	datab => \decoder|a|WideOr1~5_combout\,
	datac => \decoder|a|WideOr1~8_combout\,
	datad => \sm|nar|WideOr4~2_combout\,
	combout => \decoder|a|WideOr1~11_combout\);

-- Location: LCCOMB_X84_Y84_N16
\decoder|a|WideOr5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~5_combout\ = (\sm|com_adr\(4) & ((\sm|com_adr\(5) & ((\sm|com_adr\(0)))) # (!\sm|com_adr\(5) & ((!\sm|com_adr\(0)) # (!\sm|com_adr\(2)))))) # (!\sm|com_adr\(4) & (\sm|com_adr\(2) $ (((\sm|com_adr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr5~5_combout\);

-- Location: LCCOMB_X84_Y84_N4
\decoder|a|WideOr5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~3_combout\ = (\sm|com_adr\(4) & (((!\sm|com_adr\(0)) # (!\sm|com_adr\(5))))) # (!\sm|com_adr\(4) & (\sm|com_adr\(2) & (\sm|com_adr\(5) & \sm|com_adr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr5~3_combout\);

-- Location: LCCOMB_X84_Y84_N6
\decoder|a|WideOr5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~2_combout\ = (\sm|com_adr\(4) & (((!\sm|com_adr\(0)) # (!\sm|com_adr\(5))))) # (!\sm|com_adr\(4) & (\sm|com_adr\(2) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr5~2_combout\);

-- Location: LCCOMB_X84_Y84_N22
\decoder|a|WideOr5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~4_combout\ = (\sm|com_adr\(3) & (\sm|com_adr\(1))) # (!\sm|com_adr\(3) & ((\sm|com_adr\(1) & ((\decoder|a|WideOr5~2_combout\))) # (!\sm|com_adr\(1) & (!\decoder|a|WideOr5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(1),
	datac => \decoder|a|WideOr5~3_combout\,
	datad => \decoder|a|WideOr5~2_combout\,
	combout => \decoder|a|WideOr5~4_combout\);

-- Location: LCCOMB_X84_Y84_N28
\decoder|a|WideOr5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~1_combout\ = (\sm|com_adr\(5) & ((\sm|com_adr\(4) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(2)))) # (!\sm|com_adr\(4) & ((!\sm|com_adr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr5~1_combout\);

-- Location: LCCOMB_X85_Y84_N12
\decoder|a|WideOr5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~6_combout\ = (\decoder|a|WideOr5~4_combout\ & ((\decoder|a|WideOr5~5_combout\) # ((!\sm|com_adr\(3))))) # (!\decoder|a|WideOr5~4_combout\ & (((\decoder|a|WideOr5~1_combout\ & \sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~5_combout\,
	datab => \decoder|a|WideOr5~4_combout\,
	datac => \decoder|a|WideOr5~1_combout\,
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr5~6_combout\);

-- Location: LCCOMB_X80_Y80_N30
\decoder|a|WideOr5~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~19_combout\ = (\sm|com_adr\(2) & (!\sm|com_adr\(3) & ((\sm|com_adr\(4))))) # (!\sm|com_adr\(2) & (\sm|com_adr\(3) & (\sm|com_adr\(0) & !\sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr5~19_combout\);

-- Location: LCCOMB_X80_Y80_N12
\decoder|a|WideOr5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~7_combout\ = (\sm|com_adr\(2) & (\sm|com_adr\(0) & (\sm|com_adr\(3) $ (\sm|com_adr\(4))))) # (!\sm|com_adr\(2) & (\sm|com_adr\(3) & (!\sm|com_adr\(0) & \sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr5~7_combout\);

-- Location: LCCOMB_X80_Y80_N20
\decoder|a|WideOr5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~14_combout\ = (!\sm|com_adr\(2) & (!\sm|com_adr\(3) & \sm|com_adr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(3),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr5~14_combout\);

-- Location: LCCOMB_X80_Y80_N2
\decoder|a|WideOr5~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~15_combout\ = (!\sm|com_adr\(6) & ((\sm|com_adr\(5) & (\decoder|a|WideOr5~14_combout\)) # (!\sm|com_adr\(5) & ((\decoder|a|WideOr5~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \decoder|a|WideOr5~14_combout\,
	datac => \sm|com_adr\(6),
	datad => \decoder|a|WideOr5~13_combout\,
	combout => \decoder|a|WideOr5~15_combout\);

-- Location: LCCOMB_X80_Y80_N8
\decoder|a|WideOr5~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~16_combout\ = (\sm|com_adr\(6) & ((\sm|com_adr\(2) & (!\sm|com_adr\(0) & \sm|com_adr\(3))) # (!\sm|com_adr\(2) & (\sm|com_adr\(0) & !\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr5~16_combout\);

-- Location: LCCOMB_X80_Y80_N10
\decoder|a|WideOr5~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~17_combout\ = (\decoder|a|WideOr5~15_combout\) # ((!\sm|com_adr\(5) & (\decoder|a|WideOr5~16_combout\ & \sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \decoder|a|WideOr5~15_combout\,
	datac => \decoder|a|WideOr5~16_combout\,
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr5~17_combout\);

-- Location: LCCOMB_X80_Y80_N16
\decoder|a|WideOr5~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~11_combout\ = (!\sm|com_adr\(0) & (\sm|com_adr\(6) & !\sm|com_adr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(6),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr5~11_combout\);

-- Location: LCCOMB_X80_Y80_N22
\decoder|a|WideOr5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~8_combout\ = (\sm|com_adr\(3) & (((\sm|com_adr\(0)) # (!\sm|com_adr\(6))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(2) & ((!\sm|com_adr\(0)) # (!\sm|com_adr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr5~8_combout\);

-- Location: LCCOMB_X80_Y80_N24
\decoder|a|WideOr5~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~9_combout\ = (\sm|com_adr\(3) & (\sm|com_adr\(2) $ (\sm|com_adr\(0) $ (\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr5~9_combout\);

-- Location: LCCOMB_X80_Y80_N14
\decoder|a|WideOr5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~10_combout\ = (\sm|com_adr\(5) & (((\sm|com_adr\(4))))) # (!\sm|com_adr\(5) & (\decoder|a|WideOr5~9_combout\ & (\sm|com_adr\(6) $ (!\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \decoder|a|WideOr5~9_combout\,
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr5~10_combout\);

-- Location: LCCOMB_X80_Y80_N26
\decoder|a|WideOr5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~12_combout\ = (\sm|com_adr\(5) & ((\decoder|a|WideOr5~10_combout\ & (\decoder|a|WideOr5~11_combout\)) # (!\decoder|a|WideOr5~10_combout\ & ((!\decoder|a|WideOr5~8_combout\))))) # (!\sm|com_adr\(5) & (((\decoder|a|WideOr5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \decoder|a|WideOr5~11_combout\,
	datac => \decoder|a|WideOr5~8_combout\,
	datad => \decoder|a|WideOr5~10_combout\,
	combout => \decoder|a|WideOr5~12_combout\);

-- Location: LCCOMB_X80_Y80_N28
\decoder|a|WideOr5~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~18_combout\ = (\sm|com_adr\(7) & (((\sm|com_adr\(1))))) # (!\sm|com_adr\(7) & ((\sm|com_adr\(1) & ((\decoder|a|WideOr5~12_combout\))) # (!\sm|com_adr\(1) & (\decoder|a|WideOr5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~17_combout\,
	datab => \sm|com_adr\(7),
	datac => \decoder|a|WideOr5~12_combout\,
	datad => \sm|com_adr\(1),
	combout => \decoder|a|WideOr5~18_combout\);

-- Location: LCCOMB_X80_Y80_N4
\decoder|a|WideOr5~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~22_combout\ = (!\sm|com_adr\(6) & (!\sm|com_adr\(5) & ((\decoder|a|WideOr5~7_combout\) # (\decoder|a|WideOr5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~7_combout\,
	datab => \decoder|a|WideOr5~18_combout\,
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr5~22_combout\);

-- Location: LCCOMB_X80_Y80_N18
\decoder|a|WideOr5~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~23_combout\ = (\sm|com_adr\(7) & (\decoder|a|WideOr5~22_combout\ & ((\decoder|a|WideOr5~19_combout\) # (!\decoder|a|WideOr5~18_combout\)))) # (!\sm|com_adr\(7) & (((\decoder|a|WideOr5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~19_combout\,
	datab => \sm|com_adr\(7),
	datac => \decoder|a|WideOr5~22_combout\,
	datad => \decoder|a|WideOr5~18_combout\,
	combout => \decoder|a|WideOr5~23_combout\);

-- Location: LCCOMB_X86_Y84_N20
\decoder|a|WideOr5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~0_combout\ = (!\sm|com_adr\(7) & !\sm|com_adr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(7),
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr5~0_combout\);

-- Location: LCCOMB_X86_Y84_N16
\decoder|a|WideOr5~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~20_combout\ = (\sm|com_adr\(8) & ((\decoder|a|WideOr5~6_combout\) # ((!\decoder|a|WideOr5~0_combout\)))) # (!\sm|com_adr\(8) & (((\decoder|a|WideOr5~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~6_combout\,
	datab => \sm|com_adr\(8),
	datac => \decoder|a|WideOr5~23_combout\,
	datad => \decoder|a|WideOr5~0_combout\,
	combout => \decoder|a|WideOr5~20_combout\);

-- Location: LCCOMB_X84_Y84_N12
\decoder|a|WideOr6~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~15_combout\ = (\sm|com_adr\(0) & ((\sm|com_adr\(1) & (\sm|com_adr\(2))) # (!\sm|com_adr\(1) & (!\sm|com_adr\(2) & \sm|com_adr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr6~15_combout\);

-- Location: LCCOMB_X84_Y84_N20
\decoder|a|WideOr6~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~13_combout\ = (\sm|com_adr\(4) & (!\sm|com_adr\(1) & (!\sm|com_adr\(2)))) # (!\sm|com_adr\(4) & (\sm|com_adr\(0) & (\sm|com_adr\(1) $ (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr6~13_combout\);

-- Location: LCCOMB_X84_Y84_N18
\decoder|a|WideOr6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~14_combout\ = (\sm|com_adr\(6) & (\sm|com_adr\(4) & ((\sm|nar|WideOr4~5_combout\)))) # (!\sm|com_adr\(6) & (((\decoder|a|WideOr6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \decoder|a|WideOr6~13_combout\,
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr4~5_combout\,
	combout => \decoder|a|WideOr6~14_combout\);

-- Location: LCCOMB_X84_Y84_N2
\decoder|a|WideOr6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~16_combout\ = (\sm|com_adr\(5) & (((\decoder|a|WideOr6~14_combout\)))) # (!\sm|com_adr\(5) & (\decoder|a|WideOr6~15_combout\ & ((\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~15_combout\,
	datab => \decoder|a|WideOr6~14_combout\,
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr6~16_combout\);

-- Location: LCCOMB_X86_Y82_N10
\decoder|a|WideOr6~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~18_combout\ = (!\sm|com_adr\(6) & ((\sm|com_adr\(0) & (\sm|com_adr\(1))) # (!\sm|com_adr\(0) & ((\sm|com_adr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr6~18_combout\);

-- Location: LCCOMB_X86_Y82_N12
\decoder|a|WideOr6~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~19_combout\ = (\sm|com_adr\(4) & ((\decoder|a|WideOr6~17_combout\))) # (!\sm|com_adr\(4) & (\decoder|a|WideOr6~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~18_combout\,
	datab => \decoder|a|WideOr6~17_combout\,
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr6~19_combout\);

-- Location: LCCOMB_X85_Y84_N8
\decoder|a|WideOr6~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~20_combout\ = (\sm|com_adr\(3) & (((\decoder|a|WideOr6~19_combout\ & !\sm|com_adr\(5))))) # (!\sm|com_adr\(3) & (\decoder|a|WideOr6~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~16_combout\,
	datab => \sm|com_adr\(3),
	datac => \decoder|a|WideOr6~19_combout\,
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr6~20_combout\);

-- Location: LCCOMB_X85_Y84_N22
\decoder|a|WideOr6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~8_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(1)) # ((!\sm|com_adr\(0) & !\sm|com_adr\(2))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(0) & ((!\sm|com_adr\(2)) # (!\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr6~8_combout\);

-- Location: LCCOMB_X85_Y84_N28
\decoder|a|WideOr6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~4_combout\ = (\sm|com_adr\(0) & (((!\sm|com_adr\(2) & !\sm|com_adr\(3))))) # (!\sm|com_adr\(0) & ((\sm|com_adr\(3)) # ((\sm|com_adr\(1) & \sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr6~4_combout\);

-- Location: LCCOMB_X86_Y84_N26
\decoder|a|WideOr6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~5_combout\ = (\sm|com_adr\(1) & (!\sm|com_adr\(0) & ((!\sm|com_adr\(2)) # (!\sm|com_adr\(3))))) # (!\sm|com_adr\(1) & (\sm|com_adr\(0) $ (((\sm|com_adr\(3)) # (\sm|com_adr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr6~5_combout\);

-- Location: LCCOMB_X86_Y84_N4
\decoder|a|WideOr6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~6_combout\ = (\sm|com_adr\(1) & (\sm|com_adr\(2) & (\sm|com_adr\(3) $ (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr6~6_combout\);

-- Location: LCCOMB_X86_Y84_N14
\decoder|a|WideOr6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~7_combout\ = (\sm|com_adr\(5) & (((\sm|com_adr\(4))))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(4) & (!\decoder|a|WideOr6~5_combout\)) # (!\sm|com_adr\(4) & ((\decoder|a|WideOr6~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~5_combout\,
	datab => \sm|com_adr\(5),
	datac => \decoder|a|WideOr6~6_combout\,
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr6~7_combout\);

-- Location: LCCOMB_X85_Y84_N24
\decoder|a|WideOr6~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~9_combout\ = (\decoder|a|WideOr6~7_combout\ & (((!\sm|com_adr\(5))) # (!\decoder|a|WideOr6~8_combout\))) # (!\decoder|a|WideOr6~7_combout\ & (((\decoder|a|WideOr6~4_combout\ & \sm|com_adr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~8_combout\,
	datab => \decoder|a|WideOr6~4_combout\,
	datac => \decoder|a|WideOr6~7_combout\,
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr6~9_combout\);

-- Location: LCCOMB_X85_Y84_N26
\decoder|a|WideOr6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~12_combout\ = (\sm|com_adr\(8) & (((!\sm|com_adr\(6) & \decoder|a|WideOr6~9_combout\)) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|com_adr\(6),
	datac => \sm|nar|WideOr4~4_combout\,
	datad => \decoder|a|WideOr6~9_combout\,
	combout => \decoder|a|WideOr6~12_combout\);

-- Location: LCCOMB_X85_Y84_N0
\decoder|a|WideOr6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~2_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(1) & (\sm|com_adr\(0) & !\sm|com_adr\(2))) # (!\sm|com_adr\(1) & ((\sm|com_adr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr6~2_combout\);

-- Location: LCCOMB_X85_Y84_N10
\decoder|a|WideOr6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~3_combout\ = (\sm|nar|WideOr4~2_combout\ & ((\decoder|a|WideOr6~1_combout\) # ((!\sm|com_adr\(4) & \decoder|a|WideOr6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \decoder|a|WideOr6~2_combout\,
	datac => \sm|nar|WideOr4~2_combout\,
	datad => \decoder|a|WideOr6~1_combout\,
	combout => \decoder|a|WideOr6~3_combout\);

-- Location: LCCOMB_X85_Y84_N2
\decoder|a|WideOr6~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~21_combout\ = (\decoder|a|WideOr6~12_combout\) # ((\decoder|a|WideOr6~3_combout\) # ((\sm|nar|WideOr5~2_combout\ & \decoder|a|WideOr6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr5~2_combout\,
	datab => \decoder|a|WideOr6~20_combout\,
	datac => \decoder|a|WideOr6~12_combout\,
	datad => \decoder|a|WideOr6~3_combout\,
	combout => \decoder|a|WideOr6~21_combout\);

-- Location: LCCOMB_X88_Y87_N12
\decoder|c|WideOr31~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~6_combout\ = (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr4~16_combout\ $ (\decoder|a|WideOr1~11_combout\ $ (\decoder|a|WideOr6~21_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr4~16_combout\ & 
-- (!\decoder|a|WideOr1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr31~6_combout\);

-- Location: LCCOMB_X84_Y84_N0
\decoder|a|WideOr3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~11_combout\ = (\sm|com_adr\(3) & (\sm|com_adr\(1) & (\sm|com_adr\(2) & !\sm|com_adr\(0)))) # (!\sm|com_adr\(3) & (!\sm|com_adr\(2) & (\sm|com_adr\(1) $ (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr3~11_combout\);

-- Location: LCCOMB_X84_Y84_N8
\decoder|a|WideOr3~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~17_combout\ = (\sm|com_adr\(5) & (((\sm|nar|WideOr4~5_combout\ & !\sm|com_adr\(3))))) # (!\sm|com_adr\(5) & (\decoder|a|WideOr3~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~11_combout\,
	datab => \sm|nar|WideOr4~5_combout\,
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr3~17_combout\);

-- Location: LCCOMB_X84_Y84_N10
\decoder|a|WideOr3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~12_combout\ = (\sm|com_adr\(5) & (((!\sm|com_adr\(3) & !\sm|com_adr\(1))))) # (!\sm|com_adr\(5) & (\sm|com_adr\(3) & ((!\sm|com_adr\(1)) # (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(1),
	combout => \decoder|a|WideOr3~12_combout\);

-- Location: LCCOMB_X84_Y84_N24
\decoder|a|WideOr3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~14_combout\ = (\sm|com_adr\(2) & (\decoder|a|WideOr3~12_combout\)) # (!\sm|com_adr\(2) & ((\decoder|a|WideOr3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~12_combout\,
	datab => \sm|com_adr\(2),
	datad => \decoder|a|WideOr3~13_combout\,
	combout => \decoder|a|WideOr3~14_combout\);

-- Location: LCCOMB_X84_Y84_N14
\decoder|a|WideOr3~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~15_combout\ = (\sm|com_adr\(4) & (\sm|com_adr\(6) & (\decoder|a|WideOr3~17_combout\))) # (!\sm|com_adr\(4) & (!\sm|com_adr\(6) & ((\decoder|a|WideOr3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(6),
	datac => \decoder|a|WideOr3~17_combout\,
	datad => \decoder|a|WideOr3~14_combout\,
	combout => \decoder|a|WideOr3~15_combout\);

-- Location: LCCOMB_X86_Y84_N10
\decoder|a|WideOr3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~6_combout\ = (\sm|com_adr\(1) & (!\sm|com_adr\(0) & ((\sm|com_adr\(3)) # (\sm|com_adr\(2))))) # (!\sm|com_adr\(1) & (\sm|com_adr\(3) & ((\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr3~6_combout\);

-- Location: LCCOMB_X86_Y84_N18
\decoder|a|WideOr3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~4_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(1) & (\sm|com_adr\(0) & !\sm|com_adr\(2))) # (!\sm|com_adr\(1) & (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr3~4_combout\);

-- Location: LCCOMB_X86_Y84_N0
\decoder|a|WideOr3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~3_combout\ = (\sm|com_adr\(0) & ((\sm|com_adr\(1) & ((\sm|com_adr\(2)))) # (!\sm|com_adr\(1) & (!\sm|com_adr\(3))))) # (!\sm|com_adr\(0) & (((!\sm|com_adr\(3) & \sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr3~3_combout\);

-- Location: LCCOMB_X86_Y84_N8
\decoder|a|WideOr3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~5_combout\ = (\sm|com_adr\(5) & (((\sm|com_adr\(4))))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(4) & ((\decoder|a|WideOr3~3_combout\))) # (!\sm|com_adr\(4) & (\decoder|a|WideOr3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~4_combout\,
	datab => \decoder|a|WideOr3~3_combout\,
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr3~5_combout\);

-- Location: LCCOMB_X86_Y84_N2
\decoder|a|WideOr3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~2_combout\ = \sm|com_adr\(3) $ (((\sm|com_adr\(2) & ((\sm|com_adr\(1)) # (\sm|com_adr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr3~2_combout\);

-- Location: LCCOMB_X86_Y84_N28
\decoder|a|WideOr3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~7_combout\ = (\decoder|a|WideOr3~5_combout\ & (((!\sm|com_adr\(5))) # (!\decoder|a|WideOr3~6_combout\))) # (!\decoder|a|WideOr3~5_combout\ & (((!\decoder|a|WideOr3~2_combout\ & \sm|com_adr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~6_combout\,
	datab => \decoder|a|WideOr3~5_combout\,
	datac => \decoder|a|WideOr3~2_combout\,
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr3~7_combout\);

-- Location: LCCOMB_X85_Y84_N18
\decoder|a|WideOr3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~8_combout\ = (\sm|com_adr\(8) & (((!\sm|com_adr\(6) & \decoder|a|WideOr3~7_combout\)) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \decoder|a|WideOr3~7_combout\,
	datac => \sm|nar|WideOr4~4_combout\,
	datad => \sm|com_adr\(8),
	combout => \decoder|a|WideOr3~8_combout\);

-- Location: LCCOMB_X84_Y84_N26
\decoder|a|WideOr3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~9_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(1) & ((\sm|com_adr\(2)) # (\sm|com_adr\(0)))) # (!\sm|com_adr\(1) & (\sm|com_adr\(2) & \sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr3~9_combout\);

-- Location: LCCOMB_X85_Y84_N4
\decoder|a|WideOr3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~10_combout\ = (\sm|nar|WideOr4~2_combout\ & ((\decoder|a|WideOr6~1_combout\) # ((\decoder|a|WideOr3~9_combout\ & !\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~1_combout\,
	datab => \sm|nar|WideOr4~2_combout\,
	datac => \decoder|a|WideOr3~9_combout\,
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr3~10_combout\);

-- Location: LCCOMB_X85_Y84_N6
\decoder|a|WideOr3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~16_combout\ = (\decoder|a|WideOr3~8_combout\) # ((\decoder|a|WideOr3~10_combout\) # ((\decoder|a|WideOr3~15_combout\ & \sm|nar|WideOr5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~15_combout\,
	datab => \decoder|a|WideOr3~8_combout\,
	datac => \decoder|a|WideOr3~10_combout\,
	datad => \sm|nar|WideOr5~2_combout\,
	combout => \decoder|a|WideOr3~16_combout\);

-- Location: LCCOMB_X84_Y82_N12
\decoder|a|WideOr2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~13_combout\ = (\sm|com_adr\(6)) # ((\sm|com_adr\(2) & (\sm|com_adr\(1) $ (!\sm|com_adr\(0)))) # (!\sm|com_adr\(2) & ((\sm|com_adr\(1)) # (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr2~13_combout\);

-- Location: LCCOMB_X86_Y81_N16
\decoder|a|WideOr2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~9_combout\ = (\sm|com_adr\(2) & (((!\sm|com_adr\(6) & !\sm|com_adr\(1))))) # (!\sm|com_adr\(2) & (\sm|com_adr\(1) & ((!\sm|com_adr\(6)) # (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(1),
	combout => \decoder|a|WideOr2~9_combout\);

-- Location: LCCOMB_X86_Y81_N2
\decoder|a|WideOr2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~10_combout\ = (\sm|com_adr\(4) & (((\decoder|a|WideOr6~0_combout\ & \sm|nar|WideOr7~5_combout\)))) # (!\sm|com_adr\(4) & ((\decoder|a|WideOr2~9_combout\) # ((\decoder|a|WideOr6~0_combout\ & \sm|nar|WideOr7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \decoder|a|WideOr2~9_combout\,
	datac => \decoder|a|WideOr6~0_combout\,
	datad => \sm|nar|WideOr7~5_combout\,
	combout => \decoder|a|WideOr2~10_combout\);

-- Location: LCCOMB_X84_Y82_N26
\decoder|a|WideOr2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~8_combout\ = (\sm|com_adr\(5) & (((!\sm|com_adr\(0) & \sm|com_adr\(6))))) # (!\sm|com_adr\(5) & (\sm|com_adr\(2) & (\sm|com_adr\(0) & !\sm|com_adr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr2~8_combout\);

-- Location: LCCOMB_X84_Y82_N6
\decoder|a|WideOr2~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~15_combout\ = (\decoder|a|WideOr2~8_combout\ & (\sm|com_adr\(1) & (!\sm|com_adr\(4) & \sm|com_adr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~8_combout\,
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr2~15_combout\);

-- Location: LCCOMB_X84_Y82_N24
\decoder|a|WideOr2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~11_combout\ = (\sm|nar|WideOr5~2_combout\ & ((\decoder|a|WideOr2~15_combout\) # ((\decoder|a|WideOr2~10_combout\ & \decoder|a|WideOr5~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~10_combout\,
	datab => \sm|nar|WideOr5~2_combout\,
	datac => \decoder|a|WideOr5~21_combout\,
	datad => \decoder|a|WideOr2~15_combout\,
	combout => \decoder|a|WideOr2~11_combout\);

-- Location: LCCOMB_X84_Y82_N14
\decoder|a|WideOr2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~12_combout\ = (\sm|com_adr\(4) & (!\sm|com_adr\(5) & (\sm|com_adr\(7) & !\sm|com_adr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(7),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr2~12_combout\);

-- Location: LCCOMB_X84_Y81_N16
\decoder|a|WideOr2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~2_combout\ = (\sm|com_adr\(2) & ((\sm|com_adr\(1) & (!\sm|com_adr\(3))) # (!\sm|com_adr\(1) & ((\sm|com_adr\(3)) # (\sm|com_adr\(0)))))) # (!\sm|com_adr\(2) & (((\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr2~2_combout\);

-- Location: LCCOMB_X84_Y81_N18
\decoder|a|WideOr2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~5_combout\ = (\sm|com_adr\(2) & ((\sm|com_adr\(1) & ((\sm|com_adr\(0)))) # (!\sm|com_adr\(1) & (!\sm|com_adr\(3))))) # (!\sm|com_adr\(2) & ((\sm|com_adr\(0)) # (\sm|com_adr\(1) $ (\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr2~5_combout\);

-- Location: LCCOMB_X84_Y81_N22
\decoder|a|WideOr2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~3_combout\ = (\sm|com_adr\(1) & (!\sm|com_adr\(4) & (\sm|com_adr\(2)))) # (!\sm|com_adr\(1) & (\sm|com_adr\(0) & (\sm|com_adr\(4) $ (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr2~3_combout\);

-- Location: LCCOMB_X84_Y81_N4
\decoder|a|WideOr2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~4_combout\ = (\sm|com_adr\(4) & ((\sm|com_adr\(5)) # ((!\decoder|a|WideOr2~3_combout\ & !\sm|com_adr\(3))))) # (!\sm|com_adr\(4) & (\decoder|a|WideOr2~3_combout\ & (\sm|com_adr\(3) & !\sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~3_combout\,
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr2~4_combout\);

-- Location: LCCOMB_X84_Y81_N0
\decoder|a|WideOr2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~6_combout\ = (\decoder|a|WideOr2~4_combout\ & (((\decoder|a|WideOr2~5_combout\) # (!\sm|com_adr\(5))))) # (!\decoder|a|WideOr2~4_combout\ & (\decoder|a|WideOr2~2_combout\ & ((\sm|com_adr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~2_combout\,
	datab => \decoder|a|WideOr2~5_combout\,
	datac => \decoder|a|WideOr2~4_combout\,
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr2~6_combout\);

-- Location: LCCOMB_X84_Y82_N0
\decoder|a|WideOr2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~7_combout\ = (\sm|com_adr\(8) & (((\decoder|a|WideOr2~6_combout\ & !\sm|com_adr\(6))) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~6_combout\,
	datab => \sm|com_adr\(6),
	datac => \sm|nar|WideOr4~4_combout\,
	datad => \sm|com_adr\(8),
	combout => \decoder|a|WideOr2~7_combout\);

-- Location: LCCOMB_X84_Y82_N10
\decoder|a|WideOr2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~14_combout\ = (\decoder|a|WideOr2~11_combout\) # ((\decoder|a|WideOr2~7_combout\) # ((!\decoder|a|WideOr2~13_combout\ & \decoder|a|WideOr2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr2~11_combout\,
	datac => \decoder|a|WideOr2~12_combout\,
	datad => \decoder|a|WideOr2~7_combout\,
	combout => \decoder|a|WideOr2~14_combout\);

-- Location: LCCOMB_X88_Y87_N18
\decoder|c|WideOr31~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~5_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr5~20_combout\ & \decoder|a|WideOr6~21_combout\)) # (!\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr5~20_combout\ & 
-- !\decoder|a|WideOr6~21_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr5~20_combout\ $ (\decoder|a|WideOr6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr31~5_combout\);

-- Location: LCCOMB_X88_Y87_N22
\decoder|c|WideOr31~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~7_combout\ = (\decoder|a|WideOr3~16_combout\ & (((\decoder|a|WideOr2~14_combout\) # (\decoder|c|WideOr31~5_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|c|WideOr31~6_combout\ & (!\decoder|a|WideOr2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr31~6_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr31~5_combout\,
	combout => \decoder|c|WideOr31~7_combout\);

-- Location: LCCOMB_X88_Y87_N24
\decoder|c|WideOr31~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~8_combout\ = (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr4~16_combout\ $ (((!\decoder|a|WideOr5~20_combout\))))) # (!\decoder|a|WideOr6~21_combout\ & (!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr4~16_combout\) # 
-- (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr31~8_combout\);

-- Location: LCCOMB_X88_Y87_N16
\decoder|c|WideOr31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~4_combout\ = (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr4~16_combout\ $ (\decoder|a|WideOr5~20_combout\)))) # (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr5~20_combout\ & 
-- (\decoder|a|WideOr4~16_combout\ $ (\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr31~4_combout\);

-- Location: LCCOMB_X88_Y87_N14
\decoder|c|WideOr31~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~9_combout\ = (\decoder|c|WideOr31~7_combout\ & (((!\decoder|a|WideOr2~14_combout\)) # (!\decoder|c|WideOr31~8_combout\))) # (!\decoder|c|WideOr31~7_combout\ & (((\decoder|a|WideOr2~14_combout\ & \decoder|c|WideOr31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr31~7_combout\,
	datab => \decoder|c|WideOr31~8_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr31~4_combout\,
	combout => \decoder|c|WideOr31~9_combout\);

-- Location: LCCOMB_X86_Y84_N12
\decoder|a|WideOr0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr0~2_combout\ = (\sm|com_adr\(3) & (!\sm|com_adr\(0) & ((\sm|com_adr\(1)) # (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr0~2_combout\);

-- Location: LCCOMB_X86_Y84_N6
\decoder|a|WideOr0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr0~3_combout\ = (\sm|com_adr\(4) & (\sm|com_adr\(5) & \decoder|a|WideOr0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(5),
	datad => \decoder|a|WideOr0~2_combout\,
	combout => \decoder|a|WideOr0~3_combout\);

-- Location: LCCOMB_X86_Y84_N24
\decoder|a|WideOr0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr0~4_combout\ = (\sm|com_adr\(8) & ((\sm|com_adr\(7)) # ((\sm|com_adr\(6)) # (\decoder|a|WideOr0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(8),
	datad => \decoder|a|WideOr0~3_combout\,
	combout => \decoder|a|WideOr0~4_combout\);

-- Location: LCCOMB_X91_Y88_N16
\decoder|c|WideOr31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~2_combout\ = (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr6~21_combout\ $ (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr31~2_combout\);

-- Location: LCCOMB_X91_Y87_N24
\decoder|c|WideOr31~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~11_combout\ = (\decoder|a|WideOr0~4_combout\ & ((\decoder|a|WideOr2~14_combout\) # ((\decoder|a|WideOr1~11_combout\) # (!\decoder|c|WideOr31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~14_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr31~2_combout\,
	combout => \decoder|c|WideOr31~11_combout\);

-- Location: LCCOMB_X91_Y87_N20
\decoder|c|WideOr31~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~10_combout\ = (\decoder|c|WideOr31~11_combout\) # ((\decoder|c|WideOr31~9_combout\ & !\decoder|a|WideOr0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|c|WideOr31~9_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr31~11_combout\,
	combout => \decoder|c|WideOr31~10_combout\);

-- Location: LCCOMB_X95_Y87_N20
\push_inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~0_combout\ = (!\sm|param_even~q\ & ((\sm|push_wide~q\ & ((\sm|is_wide~q\))) # (!\sm|push_wide~q\ & (\iram[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|push_wide~q\,
	datab => \iram[0]~input_o\,
	datac => \sm|is_wide~q\,
	datad => \sm|param_even~q\,
	combout => \push_inst~0_combout\);

-- Location: LCCOMB_X95_Y87_N6
\arm_inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~0_combout\ = (\sm|q_select~q\ & (\decoder|c|WideOr31~10_combout\)) # (!\sm|q_select~q\ & ((\push_inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datac => \decoder|c|WideOr31~10_combout\,
	datad => \push_inst~0_combout\,
	combout => \arm_inst~0_combout\);

-- Location: LCCOMB_X91_Y84_N12
\decoder|c|WideOr30~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~3_combout\ = (\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr3~16_combout\ $ ((!\decoder|a|WideOr2~14_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr2~14_combout\ & ((!\decoder|a|WideOr6~21_combout\))) # 
-- (!\decoder|a|WideOr2~14_combout\ & (\decoder|a|WideOr3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr30~3_combout\);

-- Location: LCCOMB_X91_Y84_N18
\decoder|c|WideOr30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~2_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr2~14_combout\ & (!\decoder|a|WideOr4~16_combout\ & \decoder|a|WideOr6~21_combout\)) # (!\decoder|a|WideOr2~14_combout\ & ((!\decoder|a|WideOr6~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr30~2_combout\);

-- Location: LCCOMB_X91_Y84_N10
\decoder|c|WideOr30~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~4_combout\ = (!\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr1~11_combout\ & ((\decoder|c|WideOr30~2_combout\))) # (!\decoder|a|WideOr1~11_combout\ & (\decoder|c|WideOr30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr30~3_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|c|WideOr30~2_combout\,
	combout => \decoder|c|WideOr30~4_combout\);

-- Location: LCCOMB_X92_Y86_N20
\decoder|c|WideOr30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~0_combout\ = (\decoder|a|WideOr3~16_combout\) # ((\decoder|a|WideOr4~16_combout\) # ((\decoder|a|WideOr6~21_combout\ & \decoder|a|WideOr5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr30~0_combout\);

-- Location: LCCOMB_X92_Y86_N30
\decoder|c|WideOr30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~1_combout\ = (\decoder|a|WideOr0~4_combout\ & ((\decoder|a|WideOr1~11_combout\) # ((\decoder|a|WideOr2~14_combout\) # (\decoder|c|WideOr30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr30~0_combout\,
	combout => \decoder|c|WideOr30~1_combout\);

-- Location: LCCOMB_X91_Y84_N16
\decoder|c|WideOr30~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~5_combout\ = (\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr2~14_combout\ & !\decoder|a|WideOr6~21_combout\))) # (!\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr3~16_combout\ & 
-- (!\decoder|a|WideOr2~14_combout\ & !\decoder|a|WideOr6~21_combout\)) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr2~14_combout\ $ (\decoder|a|WideOr6~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr30~5_combout\);

-- Location: LCCOMB_X91_Y84_N6
\decoder|c|WideOr30~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~6_combout\ = (\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr1~11_combout\ & \decoder|c|WideOr30~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|c|WideOr30~5_combout\,
	combout => \decoder|c|WideOr30~6_combout\);

-- Location: LCCOMB_X91_Y84_N8
\decoder|c|WideOr30~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~7_combout\ = (\decoder|c|WideOr30~1_combout\) # ((!\decoder|a|WideOr0~4_combout\ & ((\decoder|c|WideOr30~4_combout\) # (\decoder|c|WideOr30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr30~4_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr30~1_combout\,
	datad => \decoder|c|WideOr30~6_combout\,
	combout => \decoder|c|WideOr30~7_combout\);

-- Location: LCCOMB_X95_Y87_N0
\push_inst~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~1_combout\ = (!\sm|push_wide~q\ & (!\sm|param_even~q\ & \iram[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|push_wide~q\,
	datab => \sm|param_even~q\,
	datad => \iram[1]~input_o\,
	combout => \push_inst~1_combout\);

-- Location: LCCOMB_X106_Y87_N0
\arm_inst~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~1_combout\ = (\sm|q_select~q\ & (\decoder|c|WideOr30~7_combout\)) # (!\sm|q_select~q\ & ((\push_inst~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|q_select~q\,
	datac => \decoder|c|WideOr30~7_combout\,
	datad => \push_inst~1_combout\,
	combout => \arm_inst~1_combout\);

-- Location: LCCOMB_X87_Y76_N8
\push_inst~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~2_combout\ = (\sm|param_even~q\) # ((!\sm|push_wide~q\ & \iram[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~q\,
	datac => \sm|push_wide~q\,
	datad => \iram[2]~input_o\,
	combout => \push_inst~2_combout\);

-- Location: LCCOMB_X86_Y84_N22
\decoder|c|WideOr21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr21~0_combout\ = (!\decoder|a|WideOr2~14_combout\ & (((!\decoder|a|WideOr0~3_combout\ & \decoder|a|WideOr5~0_combout\)) # (!\sm|com_adr\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr0~3_combout\,
	datab => \sm|com_adr\(8),
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|a|WideOr5~0_combout\,
	combout => \decoder|c|WideOr21~0_combout\);

-- Location: LCCOMB_X89_Y88_N8
\decoder|c|WideOr29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr29~0_combout\ = \decoder|a|WideOr6~21_combout\ $ (((\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr4~16_combout\) # (!\decoder|a|WideOr1~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr29~0_combout\);

-- Location: LCCOMB_X89_Y88_N6
\decoder|c|WideOr29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr29~1_combout\ = (\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr4~16_combout\) # ((\decoder|a|WideOr1~11_combout\) # (\decoder|a|WideOr5~20_combout\)))) # (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr4~16_combout\ $ 
-- ((\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr29~1_combout\);

-- Location: LCCOMB_X89_Y88_N12
\decoder|c|WideOr29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr29~2_combout\ = (\decoder|c|WideOr21~0_combout\ & ((\decoder|a|WideOr3~16_combout\ & ((!\decoder|c|WideOr29~1_combout\))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|c|WideOr29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|c|WideOr21~0_combout\,
	datac => \decoder|c|WideOr29~0_combout\,
	datad => \decoder|c|WideOr29~1_combout\,
	combout => \decoder|c|WideOr29~2_combout\);

-- Location: LCCOMB_X89_Y88_N26
\arm_inst~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~2_combout\ = (\sm|q_select~q\ & (((\decoder|c|WideOr30~1_combout\) # (\decoder|c|WideOr29~2_combout\)))) # (!\sm|q_select~q\ & (\push_inst~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datab => \push_inst~2_combout\,
	datac => \decoder|c|WideOr30~1_combout\,
	datad => \decoder|c|WideOr29~2_combout\,
	combout => \arm_inst~2_combout\);

-- Location: LCCOMB_X95_Y87_N30
\push_inst~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~3_combout\ = (!\sm|push_wide~q\ & (\iram[3]~input_o\ & !\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|push_wide~q\,
	datab => \iram[3]~input_o\,
	datad => \sm|param_even~q\,
	combout => \push_inst~3_combout\);

-- Location: LCCOMB_X89_Y87_N26
\decoder|c|WideOr28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr28~1_combout\ = (\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr1~11_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr6~21_combout\ $ 
-- (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr28~1_combout\);

-- Location: LCCOMB_X92_Y87_N8
\decoder|c|WideOr26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~0_combout\ = (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr2~14_combout\ & !\decoder|a|WideOr0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|a|WideOr0~4_combout\,
	combout => \decoder|c|WideOr26~0_combout\);

-- Location: LCCOMB_X89_Y87_N0
\decoder|c|WideOr28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr28~0_combout\ = (!\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr6~21_combout\ & (!\decoder|a|WideOr4~16_combout\ & \decoder|c|WideOr26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|c|WideOr26~0_combout\,
	combout => \decoder|c|WideOr28~0_combout\);

-- Location: LCCOMB_X90_Y87_N28
\decoder|c|WideOr21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr21~1_combout\ = (\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr0~4_combout\ & !\decoder|a|WideOr2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	combout => \decoder|c|WideOr21~1_combout\);

-- Location: LCCOMB_X89_Y87_N8
\decoder|c|WideOr28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr28~2_combout\ = (\decoder|c|WideOr28~0_combout\) # ((\decoder|c|WideOr30~1_combout\) # ((\decoder|c|WideOr28~1_combout\ & \decoder|c|WideOr21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr28~1_combout\,
	datab => \decoder|c|WideOr28~0_combout\,
	datac => \decoder|c|WideOr30~1_combout\,
	datad => \decoder|c|WideOr21~1_combout\,
	combout => \decoder|c|WideOr28~2_combout\);

-- Location: LCCOMB_X89_Y87_N6
\arm_inst~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~3_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr28~2_combout\))) # (!\sm|q_select~q\ & (\push_inst~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \push_inst~3_combout\,
	datab => \decoder|c|WideOr28~2_combout\,
	datac => \sm|q_select~q\,
	combout => \arm_inst~3_combout\);

-- Location: LCCOMB_X95_Y87_N16
\push_inst~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~4_combout\ = (!\sm|param_even~q\ & (\iram[4]~input_o\ & !\sm|push_wide~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_even~q\,
	datac => \iram[4]~input_o\,
	datad => \sm|push_wide~q\,
	combout => \push_inst~4_combout\);

-- Location: LCCOMB_X92_Y87_N2
\decoder|c|WideOr27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr27~0_combout\ = (\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr4~16_combout\ $ (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr27~0_combout\);

-- Location: LCCOMB_X92_Y87_N26
\decoder|c|WideOr27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr27~1_combout\ = (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr4~16_combout\ & \decoder|a|WideOr5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr27~1_combout\);

-- Location: LCCOMB_X92_Y87_N0
\decoder|c|WideOr16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr16~0_combout\ = (\decoder|a|WideOr3~16_combout\ & !\decoder|a|WideOr0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr0~4_combout\,
	combout => \decoder|c|WideOr16~0_combout\);

-- Location: LCCOMB_X92_Y87_N28
\decoder|c|WideOr27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr27~2_combout\ = (!\decoder|c|WideOr30~1_combout\ & (((!\decoder|c|WideOr16~0_combout\) # (!\decoder|a|WideOr2~14_combout\)) # (!\decoder|c|WideOr27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr27~1_combout\,
	datab => \decoder|c|WideOr30~1_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr16~0_combout\,
	combout => \decoder|c|WideOr27~2_combout\);

-- Location: LCCOMB_X92_Y87_N14
\decoder|c|WideOr27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr27~3_combout\ = ((\decoder|c|WideOr27~0_combout\ & \decoder|c|WideOr21~1_combout\)) # (!\decoder|c|WideOr27~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|c|WideOr27~0_combout\,
	datac => \decoder|c|WideOr21~1_combout\,
	datad => \decoder|c|WideOr27~2_combout\,
	combout => \decoder|c|WideOr27~3_combout\);

-- Location: LCCOMB_X104_Y89_N16
\arm_inst~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~4_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr27~3_combout\))) # (!\sm|q_select~q\ & (\push_inst~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datab => \push_inst~4_combout\,
	datac => \decoder|c|WideOr27~3_combout\,
	combout => \arm_inst~4_combout\);

-- Location: LCCOMB_X92_Y87_N22
\decoder|c|WideOr26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~2_combout\ = (\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr5~20_combout\ & ((!\decoder|a|WideOr6~21_combout\) # (!\decoder|a|WideOr1~11_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr6~21_combout\ & 
-- (\decoder|a|WideOr1~11_combout\ $ (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr26~2_combout\);

-- Location: LCCOMB_X92_Y87_N20
\decoder|c|WideOr26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~1_combout\ = (\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr4~16_combout\ & \decoder|c|WideOr26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|c|WideOr26~0_combout\,
	combout => \decoder|c|WideOr26~1_combout\);

-- Location: LCCOMB_X88_Y87_N8
\decoder|c|WideOr3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr3~0_combout\ = (\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr5~20_combout\ & \decoder|a|WideOr1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr3~0_combout\);

-- Location: LCCOMB_X89_Y87_N28
\decoder|c|WideOr21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr21~2_combout\ = (\decoder|a|WideOr3~16_combout\ & (\decoder|c|WideOr21~0_combout\ & (!\decoder|a|WideOr6~21_combout\ & \decoder|c|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|c|WideOr21~0_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|c|WideOr3~0_combout\,
	combout => \decoder|c|WideOr21~2_combout\);

-- Location: LCCOMB_X89_Y87_N22
\decoder|c|WideOr21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr21~3_combout\ = (!\decoder|c|WideOr30~1_combout\ & !\decoder|c|WideOr21~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|c|WideOr30~1_combout\,
	datad => \decoder|c|WideOr21~2_combout\,
	combout => \decoder|c|WideOr21~3_combout\);

-- Location: LCCOMB_X92_Y87_N24
\decoder|c|WideOr26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~3_combout\ = (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr2~14_combout\ & !\decoder|a|WideOr0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|a|WideOr0~4_combout\,
	combout => \decoder|c|WideOr26~3_combout\);

-- Location: LCCOMB_X92_Y87_N30
\decoder|c|WideOr26~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~4_combout\ = (\decoder|c|WideOr26~1_combout\) # (((\decoder|c|WideOr26~2_combout\ & \decoder|c|WideOr26~3_combout\)) # (!\decoder|c|WideOr21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr26~2_combout\,
	datab => \decoder|c|WideOr26~1_combout\,
	datac => \decoder|c|WideOr21~3_combout\,
	datad => \decoder|c|WideOr26~3_combout\,
	combout => \decoder|c|WideOr26~4_combout\);

-- Location: LCCOMB_X95_Y87_N18
\push_inst~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~5_combout\ = (\iram[5]~input_o\ & (!\sm|param_even~q\ & !\sm|push_wide~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iram[5]~input_o\,
	datab => \sm|param_even~q\,
	datad => \sm|push_wide~q\,
	combout => \push_inst~5_combout\);

-- Location: LCCOMB_X95_Y87_N4
\arm_inst~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~5_combout\ = (\sm|q_select~q\ & (\decoder|c|WideOr26~4_combout\)) # (!\sm|q_select~q\ & ((\push_inst~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datac => \decoder|c|WideOr26~4_combout\,
	datad => \push_inst~5_combout\,
	combout => \arm_inst~5_combout\);

-- Location: LCCOMB_X88_Y88_N4
\decoder|c|WideOr25~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~4_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr6~21_combout\) # (\decoder|a|WideOr4~16_combout\ $ (!\decoder|a|WideOr5~20_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr5~20_combout\ & 
-- (\decoder|a|WideOr4~16_combout\ $ (\decoder|a|WideOr6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr25~4_combout\);

-- Location: LCCOMB_X88_Y88_N10
\decoder|c|WideOr25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~1_combout\ = (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr3~16_combout\ & \decoder|a|WideOr6~21_combout\))) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr3~16_combout\ & 
-- (\decoder|a|WideOr4~16_combout\ $ (\decoder|a|WideOr6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr25~1_combout\);

-- Location: LCCOMB_X88_Y88_N20
\decoder|c|WideOr25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~2_combout\ = (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr5~20_combout\ & \decoder|a|WideOr3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	combout => \decoder|c|WideOr25~2_combout\);

-- Location: LCCOMB_X88_Y88_N14
\decoder|c|WideOr25~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~3_combout\ = (\decoder|a|WideOr2~14_combout\ & (((\decoder|a|WideOr1~11_combout\)))) # (!\decoder|a|WideOr2~14_combout\ & ((\decoder|a|WideOr1~11_combout\ & (\decoder|c|WideOr25~1_combout\)) # (!\decoder|a|WideOr1~11_combout\ & 
-- ((\decoder|c|WideOr25~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr25~1_combout\,
	datab => \decoder|a|WideOr2~14_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|c|WideOr25~2_combout\,
	combout => \decoder|c|WideOr25~3_combout\);

-- Location: LCCOMB_X88_Y88_N28
\decoder|c|WideOr25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~0_combout\ = (\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr3~16_combout\ & !\decoder|a|WideOr6~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr25~0_combout\);

-- Location: LCCOMB_X88_Y88_N18
\decoder|c|WideOr25~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~5_combout\ = (\decoder|a|WideOr2~14_combout\ & ((\decoder|c|WideOr25~3_combout\ & (!\decoder|c|WideOr25~4_combout\)) # (!\decoder|c|WideOr25~3_combout\ & ((\decoder|c|WideOr25~0_combout\))))) # (!\decoder|a|WideOr2~14_combout\ & 
-- (((\decoder|c|WideOr25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~14_combout\,
	datab => \decoder|c|WideOr25~4_combout\,
	datac => \decoder|c|WideOr25~3_combout\,
	datad => \decoder|c|WideOr25~0_combout\,
	combout => \decoder|c|WideOr25~5_combout\);

-- Location: LCCOMB_X88_Y88_N12
\decoder|c|WideOr25~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~6_combout\ = (\decoder|c|WideOr30~1_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr25~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr30~1_combout\,
	datad => \decoder|c|WideOr25~5_combout\,
	combout => \decoder|c|WideOr25~6_combout\);

-- Location: LCCOMB_X87_Y76_N6
\push_inst~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~6_combout\ = (!\sm|param_even~q\ & (!\sm|push_wide~q\ & \iram[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~q\,
	datab => \sm|push_wide~q\,
	datad => \iram[6]~input_o\,
	combout => \push_inst~6_combout\);

-- Location: LCCOMB_X104_Y89_N10
\arm_inst~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~6_combout\ = (\sm|q_select~q\ & (\decoder|c|WideOr25~6_combout\)) # (!\sm|q_select~q\ & ((\push_inst~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datac => \decoder|c|WideOr25~6_combout\,
	datad => \push_inst~6_combout\,
	combout => \arm_inst~6_combout\);

-- Location: LCCOMB_X87_Y76_N4
\push_inst~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~7_combout\ = (!\sm|push_wide~q\ & (\iram[7]~input_o\ & !\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|push_wide~q\,
	datab => \iram[7]~input_o\,
	datad => \sm|param_even~q\,
	combout => \push_inst~7_combout\);

-- Location: LCCOMB_X90_Y87_N8
\decoder|c|WideOr24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr24~1_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr6~21_combout\ & !\decoder|a|WideOr4~16_combout\)) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr6~21_combout\ $ 
-- (\decoder|a|WideOr4~16_combout\))))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr5~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr24~1_combout\);

-- Location: LCCOMB_X88_Y87_N6
\decoder|c|WideOr19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr19~0_combout\ = (\decoder|a|WideOr2~14_combout\ & (\decoder|a|WideOr1~11_combout\ & !\decoder|a|WideOr0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~14_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	combout => \decoder|c|WideOr19~0_combout\);

-- Location: LCCOMB_X90_Y87_N22
\decoder|c|WideOr24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr24~0_combout\ = (\decoder|a|WideOr5~20_combout\ & (((\decoder|c|WideOr19~0_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|c|WideOr21~0_combout\ & (\decoder|a|WideOr1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr21~0_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|c|WideOr19~0_combout\,
	combout => \decoder|c|WideOr24~0_combout\);

-- Location: LCCOMB_X90_Y87_N14
\decoder|c|WideOr24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr24~2_combout\ = (\decoder|c|WideOr31~11_combout\) # ((\decoder|c|WideOr24~1_combout\ & \decoder|c|WideOr24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|c|WideOr24~1_combout\,
	datac => \decoder|c|WideOr24~0_combout\,
	datad => \decoder|c|WideOr31~11_combout\,
	combout => \decoder|c|WideOr24~2_combout\);

-- Location: LCCOMB_X104_Y89_N0
\arm_inst~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~7_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr24~2_combout\))) # (!\sm|q_select~q\ & (\push_inst~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datac => \push_inst~7_combout\,
	datad => \decoder|c|WideOr24~2_combout\,
	combout => \arm_inst~7_combout\);

-- Location: LCCOMB_X86_Y88_N20
\decoder|c|WideOr23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~2_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr3~16_combout\) # ((\decoder|a|WideOr6~21_combout\) # (!\decoder|a|WideOr2~14_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr3~16_combout\ & 
-- (\decoder|a|WideOr6~21_combout\ & !\decoder|a|WideOr2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr2~14_combout\,
	combout => \decoder|c|WideOr23~2_combout\);

-- Location: LCCOMB_X86_Y88_N10
\decoder|c|WideOr23~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~3_combout\ = (\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr3~16_combout\ $ (\decoder|a|WideOr2~14_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr2~14_combout\ & 
-- ((!\decoder|a|WideOr6~21_combout\) # (!\decoder|a|WideOr3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr2~14_combout\,
	combout => \decoder|c|WideOr23~3_combout\);

-- Location: LCCOMB_X86_Y88_N8
\decoder|c|WideOr23~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~4_combout\ = (\decoder|a|WideOr5~20_combout\ & ((\decoder|c|WideOr23~2_combout\ & (!\decoder|a|WideOr3~16_combout\ & !\decoder|c|WideOr23~3_combout\)) # (!\decoder|c|WideOr23~2_combout\ & (\decoder|a|WideOr3~16_combout\)))) # 
-- (!\decoder|a|WideOr5~20_combout\ & (((\decoder|a|WideOr3~16_combout\ & !\decoder|c|WideOr23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|c|WideOr23~2_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|c|WideOr23~3_combout\,
	combout => \decoder|c|WideOr23~4_combout\);

-- Location: LCCOMB_X86_Y88_N18
\decoder|c|WideOr23~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~5_combout\ = (\decoder|c|WideOr23~3_combout\ & ((\decoder|a|WideOr5~20_combout\ & (\decoder|c|WideOr23~2_combout\)) # (!\decoder|a|WideOr5~20_combout\ & (!\decoder|c|WideOr23~2_combout\ & !\decoder|a|WideOr3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|c|WideOr23~2_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|c|WideOr23~3_combout\,
	combout => \decoder|c|WideOr23~5_combout\);

-- Location: LCCOMB_X86_Y88_N28
\decoder|c|WideOr23~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~6_combout\ = (\decoder|a|WideOr1~11_combout\ & (\decoder|c|WideOr23~4_combout\ & !\decoder|c|WideOr23~5_combout\)) # (!\decoder|a|WideOr1~11_combout\ & (!\decoder|c|WideOr23~4_combout\ & \decoder|c|WideOr23~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|c|WideOr23~4_combout\,
	datad => \decoder|c|WideOr23~5_combout\,
	combout => \decoder|c|WideOr23~6_combout\);

-- Location: LCCOMB_X86_Y88_N22
\arm_inst~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~8_combout\ = (\sm|q_select~q\ & ((\decoder|a|WideOr0~4_combout\) # (\decoder|c|WideOr23~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr0~4_combout\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr23~6_combout\,
	combout => \arm_inst~8_combout\);

-- Location: LCCOMB_X91_Y84_N28
\decoder|c|WideOr31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~3_combout\ = (!\decoder|a|WideOr1~11_combout\ & !\decoder|a|WideOr2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	combout => \decoder|c|WideOr31~3_combout\);

-- Location: LCCOMB_X91_Y84_N2
\decoder|c|WideOr22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~2_combout\ = (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr6~21_combout\ & (!\decoder|a|WideOr3~16_combout\ & \decoder|c|WideOr31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|c|WideOr31~3_combout\,
	combout => \decoder|c|WideOr22~2_combout\);

-- Location: LCCOMB_X91_Y87_N6
\decoder|c|WideOr22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~3_combout\ = (\decoder|a|WideOr0~4_combout\ & ((\decoder|a|WideOr5~20_combout\) # (!\decoder|c|WideOr22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr22~2_combout\,
	combout => \decoder|c|WideOr22~3_combout\);

-- Location: LCCOMB_X90_Y87_N20
\decoder|c|WideOr22~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~5_combout\ = (\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr5~20_combout\ & \decoder|a|WideOr1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr22~5_combout\);

-- Location: LCCOMB_X91_Y87_N0
\decoder|c|WideOr22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~4_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr6~21_combout\ $ (!\decoder|a|WideOr5~20_combout\)) # (!\decoder|a|WideOr1~11_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr1~11_combout\ $ 
-- (((\decoder|a|WideOr6~21_combout\ & \decoder|a|WideOr5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr22~4_combout\);

-- Location: LCCOMB_X91_Y87_N10
\decoder|c|WideOr22~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~6_combout\ = (\decoder|a|WideOr2~14_combout\ & (((\decoder|a|WideOr3~16_combout\)))) # (!\decoder|a|WideOr2~14_combout\ & ((\decoder|a|WideOr3~16_combout\ & ((\decoder|c|WideOr22~4_combout\))) # (!\decoder|a|WideOr3~16_combout\ & 
-- (\decoder|c|WideOr22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~14_combout\,
	datab => \decoder|c|WideOr22~5_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|c|WideOr22~4_combout\,
	combout => \decoder|c|WideOr22~6_combout\);

-- Location: LCCOMB_X91_Y87_N12
\decoder|c|WideOr22~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~7_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr6~21_combout\ $ (!\decoder|a|WideOr5~20_combout\)) # (!\decoder|a|WideOr1~11_combout\))) # (!\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr6~21_combout\) # 
-- ((\decoder|a|WideOr1~11_combout\) # (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr22~7_combout\);

-- Location: LCCOMB_X91_Y87_N2
\decoder|c|WideOr22~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~8_combout\ = (\decoder|c|WideOr22~6_combout\ & (((\decoder|c|WideOr22~7_combout\) # (!\decoder|a|WideOr2~14_combout\)))) # (!\decoder|c|WideOr22~6_combout\ & (!\decoder|c|WideOr27~1_combout\ & (\decoder|a|WideOr2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr22~6_combout\,
	datab => \decoder|c|WideOr27~1_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr22~7_combout\,
	combout => \decoder|c|WideOr22~8_combout\);

-- Location: LCCOMB_X91_Y87_N16
\arm_inst~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~9_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr22~3_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr22~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr22~3_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr22~8_combout\,
	combout => \arm_inst~9_combout\);

-- Location: LCCOMB_X89_Y87_N20
\arm_inst~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~10_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr30~1_combout\) # (\decoder|c|WideOr21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr30~1_combout\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr21~2_combout\,
	combout => \arm_inst~10_combout\);

-- Location: LCCOMB_X90_Y87_N2
\decoder|c|WideOr20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr20~2_combout\ = (\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr6~21_combout\) # (\decoder|a|WideOr1~11_combout\ $ (\decoder|a|WideOr4~16_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & (((\decoder|a|WideOr1~11_combout\) # 
-- (\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr20~2_combout\);

-- Location: LCCOMB_X90_Y87_N24
\decoder|c|WideOr20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr20~3_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|c|WideOr20~2_combout\) # ((\decoder|a|WideOr2~14_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (((!\decoder|a|WideOr2~14_combout\ & \decoder|c|WideOr22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|c|WideOr20~2_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr22~5_combout\,
	combout => \decoder|c|WideOr20~3_combout\);

-- Location: LCCOMB_X91_Y87_N14
\decoder|c|WideOr20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr20~4_combout\ = (\decoder|c|WideOr20~3_combout\ & ((\decoder|c|WideOr22~7_combout\) # ((!\decoder|a|WideOr2~14_combout\)))) # (!\decoder|c|WideOr20~3_combout\ & (((\decoder|a|WideOr2~14_combout\ & !\decoder|c|WideOr27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr22~7_combout\,
	datab => \decoder|c|WideOr20~3_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr27~1_combout\,
	combout => \decoder|c|WideOr20~4_combout\);

-- Location: LCCOMB_X91_Y87_N28
\arm_inst~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~11_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr22~3_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr20~4_combout\,
	datad => \decoder|c|WideOr22~3_combout\,
	combout => \arm_inst~11_combout\);

-- Location: LCCOMB_X89_Y87_N14
\decoder|c|WideOr23~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~7_combout\ = (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr4~16_combout\ & \decoder|a|WideOr5~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr23~7_combout\);

-- Location: LCCOMB_X89_Y87_N24
\decoder|c|WideOr19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr19~1_combout\ = (\decoder|c|WideOr21~2_combout\) # ((\decoder|c|WideOr23~7_combout\ & \decoder|c|WideOr26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|c|WideOr21~2_combout\,
	datac => \decoder|c|WideOr23~7_combout\,
	datad => \decoder|c|WideOr26~0_combout\,
	combout => \decoder|c|WideOr19~1_combout\);

-- Location: LCCOMB_X90_Y87_N26
\decoder|c|WideOr19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr19~2_combout\ = (\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr6~21_combout\))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr4~16_combout\ $ (((\decoder|a|WideOr5~20_combout\) # 
-- (\decoder|a|WideOr6~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr19~2_combout\);

-- Location: LCCOMB_X90_Y87_N0
\decoder|c|WideOr19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr19~3_combout\ = (\decoder|c|WideOr19~1_combout\) # ((\decoder|c|WideOr31~11_combout\) # ((\decoder|c|WideOr19~0_combout\ & \decoder|c|WideOr19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr19~0_combout\,
	datab => \decoder|c|WideOr19~1_combout\,
	datac => \decoder|c|WideOr19~2_combout\,
	datad => \decoder|c|WideOr31~11_combout\,
	combout => \decoder|c|WideOr19~3_combout\);

-- Location: LCCOMB_X109_Y89_N4
\arm_inst~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~12_combout\ = (\decoder|c|WideOr19~3_combout\ & \sm|q_select~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|c|WideOr19~3_combout\,
	datac => \sm|q_select~q\,
	combout => \arm_inst~12_combout\);

-- Location: LCCOMB_X89_Y87_N2
\decoder|c|WideOr18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr18~0_combout\ = (\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr1~11_combout\ & !\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr6~21_combout\ & 
-- (!\decoder|a|WideOr1~11_combout\ & \decoder|a|WideOr5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr18~0_combout\);

-- Location: LCCOMB_X89_Y87_N16
\decoder|c|WideOr18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr18~1_combout\ = (\decoder|c|WideOr21~0_combout\ & (\decoder|a|WideOr4~16_combout\ & \decoder|c|WideOr18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|c|WideOr21~0_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|c|WideOr18~0_combout\,
	combout => \decoder|c|WideOr18~1_combout\);

-- Location: LCCOMB_X89_Y87_N10
\decoder|c|WideOr18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr18~2_combout\ = (\decoder|c|WideOr30~1_combout\) # ((\decoder|c|WideOr18~1_combout\) # ((\decoder|c|WideOr26~0_combout\ & \decoder|c|WideOr23~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr26~0_combout\,
	datab => \decoder|c|WideOr23~7_combout\,
	datac => \decoder|c|WideOr30~1_combout\,
	datad => \decoder|c|WideOr18~1_combout\,
	combout => \decoder|c|WideOr18~2_combout\);

-- Location: LCCOMB_X109_Y90_N20
\arm_inst~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~13_combout\ = (\decoder|c|WideOr18~2_combout\ & \sm|q_select~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|c|WideOr18~2_combout\,
	datac => \sm|q_select~q\,
	combout => \arm_inst~13_combout\);

-- Location: LCCOMB_X89_Y87_N12
\decoder|c|WideOr17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr17~0_combout\ = (\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr4~16_combout\ & ((!\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr6~21_combout\ & \decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr17~0_combout\);

-- Location: LCCOMB_X89_Y87_N18
\arm_inst~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~14_combout\ = (\sm|q_select~q\ & (((\decoder|c|WideOr17~0_combout\ & \decoder|c|WideOr21~1_combout\)) # (!\decoder|c|WideOr27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr17~0_combout\,
	datab => \decoder|c|WideOr21~1_combout\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr27~2_combout\,
	combout => \arm_inst~14_combout\);

-- Location: LCCOMB_X92_Y87_N12
\decoder|c|WideOr16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr16~1_combout\ = (\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr6~21_combout\ & (!\decoder|a|WideOr2~14_combout\ & !\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr6~21_combout\ & 
-- (\decoder|a|WideOr2~14_combout\ & \decoder|a|WideOr5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr16~1_combout\);

-- Location: LCCOMB_X92_Y87_N6
\decoder|c|WideOr16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr16~2_combout\ = (\decoder|c|WideOr30~1_combout\) # ((\decoder|c|WideOr16~1_combout\ & (\decoder|a|WideOr4~16_combout\ & \decoder|c|WideOr16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr16~1_combout\,
	datab => \decoder|c|WideOr30~1_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|c|WideOr16~0_combout\,
	combout => \decoder|c|WideOr16~2_combout\);

-- Location: LCCOMB_X109_Y90_N2
\arm_inst~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~15_combout\ = (\sm|q_select~q\ & \decoder|c|WideOr16~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr16~2_combout\,
	combout => \arm_inst~15_combout\);

-- Location: LCCOMB_X91_Y88_N22
\decoder|c|WideOr15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~4_combout\ = (\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr5~20_combout\) # (!\decoder|a|WideOr6~21_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr3~16_combout\ $ 
-- (((!\decoder|a|WideOr6~21_combout\ & \decoder|a|WideOr5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr15~4_combout\);

-- Location: LCCOMB_X91_Y88_N26
\decoder|c|WideOr15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~2_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr1~11_combout\) # ((!\decoder|a|WideOr5~20_combout\) # (!\decoder|a|WideOr6~21_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr6~21_combout\) # 
-- ((!\decoder|a|WideOr1~11_combout\ & \decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr15~2_combout\);

-- Location: LCCOMB_X91_Y88_N28
\decoder|c|WideOr15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~1_combout\ = (\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr6~21_combout\ $ (!\decoder|a|WideOr5~20_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr5~20_combout\ & 
-- ((\decoder|a|WideOr3~16_combout\) # (\decoder|a|WideOr6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr15~1_combout\);

-- Location: LCCOMB_X91_Y88_N20
\decoder|c|WideOr15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~3_combout\ = (\decoder|a|WideOr4~16_combout\ & (((\decoder|a|WideOr2~14_combout\) # (!\decoder|c|WideOr15~1_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|c|WideOr15~2_combout\ & (!\decoder|a|WideOr2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr15~2_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr15~1_combout\,
	combout => \decoder|c|WideOr15~3_combout\);

-- Location: LCCOMB_X91_Y88_N18
\decoder|c|WideOr15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~0_combout\ = (\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr5~20_combout\) # (!\decoder|a|WideOr3~16_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr3~16_combout\ & 
-- ((!\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr6~21_combout\ & \decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr15~0_combout\);

-- Location: LCCOMB_X91_Y88_N12
\decoder|c|WideOr15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~5_combout\ = (\decoder|c|WideOr15~3_combout\ & ((\decoder|c|WideOr15~4_combout\) # ((!\decoder|a|WideOr2~14_combout\)))) # (!\decoder|c|WideOr15~3_combout\ & (((\decoder|a|WideOr2~14_combout\ & !\decoder|c|WideOr15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr15~4_combout\,
	datab => \decoder|c|WideOr15~3_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr15~0_combout\,
	combout => \decoder|c|WideOr15~5_combout\);

-- Location: LCCOMB_X91_Y88_N10
\decoder|c|WideOr15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~6_combout\ = (\decoder|c|WideOr30~1_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr30~1_combout\,
	datad => \decoder|c|WideOr15~5_combout\,
	combout => \decoder|c|WideOr15~6_combout\);

-- Location: LCCOMB_X95_Y87_N22
\arm_inst~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~16_combout\ = (\sm|q_select~q\ & (\decoder|c|WideOr15~6_combout\)) # (!\sm|q_select~q\ & ((\sm|param_even~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datab => \decoder|c|WideOr15~6_combout\,
	datad => \sm|param_even~q\,
	combout => \arm_inst~16_combout\);

-- Location: LCCOMB_X92_Y87_N16
\decoder|c|WideOr14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr14~2_combout\ = (\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr2~14_combout\ $ (\decoder|a|WideOr4~16_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr2~14_combout\) # 
-- ((\decoder|a|WideOr6~21_combout\ & \decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr2~14_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr14~2_combout\);

-- Location: LCCOMB_X92_Y87_N10
\decoder|c|WideOr14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr14~3_combout\ = (\decoder|c|WideOr14~2_combout\ & (\decoder|c|WideOr16~0_combout\ & (\decoder|a|WideOr5~20_combout\ $ (\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|c|WideOr14~2_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|c|WideOr16~0_combout\,
	combout => \decoder|c|WideOr14~3_combout\);

-- Location: LCCOMB_X92_Y87_N4
\decoder|c|WideOr14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr14~0_combout\ = (\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr4~16_combout\ & \decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr6~21_combout\ & 
-- (!\decoder|a|WideOr4~16_combout\ & !\decoder|a|WideOr5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr14~0_combout\);

-- Location: LCCOMB_X92_Y87_N18
\decoder|c|WideOr14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr14~1_combout\ = (\decoder|c|WideOr14~3_combout\) # ((\decoder|c|WideOr30~1_combout\) # ((\decoder|c|WideOr14~0_combout\ & \decoder|c|WideOr26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr14~3_combout\,
	datab => \decoder|c|WideOr30~1_combout\,
	datac => \decoder|c|WideOr14~0_combout\,
	datad => \decoder|c|WideOr26~3_combout\,
	combout => \decoder|c|WideOr14~1_combout\);

-- Location: LCCOMB_X93_Y87_N24
\arm_inst~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~17_combout\ = (\sm|q_select~q\ & \decoder|c|WideOr14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr14~1_combout\,
	combout => \arm_inst~17_combout\);

-- Location: LCCOMB_X92_Y86_N12
\decoder|c|WideOr13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~4_combout\ = (\decoder|a|WideOr4~16_combout\ & (((!\decoder|a|WideOr3~16_combout\ & \decoder|a|WideOr5~20_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr6~21_combout\)) # 
-- (!\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr3~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr13~4_combout\);

-- Location: LCCOMB_X92_Y86_N16
\decoder|c|WideOr13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~0_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr6~21_combout\) # ((!\decoder|a|WideOr5~20_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr3~16_combout\) # ((\decoder|a|WideOr6~21_combout\ & 
-- \decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr13~0_combout\);

-- Location: LCCOMB_X92_Y86_N14
\decoder|c|WideOr13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~1_combout\ = (\decoder|a|WideOr6~21_combout\) # ((\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr4~16_combout\))) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr13~1_combout\);

-- Location: LCCOMB_X92_Y86_N24
\decoder|c|WideOr13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~2_combout\ = (\decoder|a|WideOr6~21_combout\ & (((!\decoder|a|WideOr3~16_combout\ & !\decoder|a|WideOr4~16_combout\)) # (!\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr3~16_combout\ & 
-- ((!\decoder|a|WideOr5~20_combout\) # (!\decoder|a|WideOr4~16_combout\))) # (!\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr4~16_combout\) # (\decoder|a|WideOr5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr13~2_combout\);

-- Location: LCCOMB_X92_Y86_N6
\decoder|c|WideOr13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~3_combout\ = (\decoder|a|WideOr1~11_combout\ & ((\decoder|c|WideOr13~1_combout\) # ((\decoder|a|WideOr2~14_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & (((!\decoder|a|WideOr2~14_combout\ & \decoder|c|WideOr13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|c|WideOr13~1_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr13~2_combout\,
	combout => \decoder|c|WideOr13~3_combout\);

-- Location: LCCOMB_X92_Y86_N18
\decoder|c|WideOr13~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~5_combout\ = (\decoder|a|WideOr2~14_combout\ & ((\decoder|c|WideOr13~3_combout\ & (\decoder|c|WideOr13~4_combout\)) # (!\decoder|c|WideOr13~3_combout\ & ((!\decoder|c|WideOr13~0_combout\))))) # (!\decoder|a|WideOr2~14_combout\ & 
-- (((\decoder|c|WideOr13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr13~4_combout\,
	datab => \decoder|c|WideOr13~0_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr13~3_combout\,
	combout => \decoder|c|WideOr13~5_combout\);

-- Location: LCCOMB_X92_Y86_N0
\decoder|c|WideOr13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~6_combout\ = (\decoder|c|WideOr30~1_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr13~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr30~1_combout\,
	datad => \decoder|c|WideOr13~5_combout\,
	combout => \decoder|c|WideOr13~6_combout\);

-- Location: LCCOMB_X106_Y87_N2
\arm_inst~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~18_combout\ = (\sm|q_select~q\ & (\decoder|c|WideOr13~6_combout\)) # (!\sm|q_select~q\ & ((\sm|param_even~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|q_select~q\,
	datac => \decoder|c|WideOr13~6_combout\,
	datad => \sm|param_even~q\,
	combout => \arm_inst~18_combout\);

-- Location: LCCOMB_X92_Y86_N26
\decoder|c|WideOr12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~4_combout\ = (\decoder|a|WideOr3~16_combout\ & (((!\decoder|a|WideOr1~11_combout\ & !\decoder|a|WideOr5~20_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr6~21_combout\ $ 
-- (!\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr12~4_combout\);

-- Location: LCCOMB_X92_Y86_N28
\decoder|c|WideOr12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~1_combout\ = (\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr6~21_combout\) # (\decoder|a|WideOr5~20_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr6~21_combout\ & 
-- ((\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr1~11_combout\ & !\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr12~1_combout\);

-- Location: LCCOMB_X92_Y86_N10
\decoder|c|WideOr12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~2_combout\ = (\decoder|a|WideOr6~21_combout\ & (((\decoder|a|WideOr1~11_combout\) # (!\decoder|a|WideOr5~20_combout\)) # (!\decoder|a|WideOr3~16_combout\))) # (!\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr5~20_combout\ & 
-- ((!\decoder|a|WideOr1~11_combout\))) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr12~2_combout\);

-- Location: LCCOMB_X92_Y86_N4
\decoder|c|WideOr12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~3_combout\ = (\decoder|a|WideOr4~16_combout\ & (((\decoder|a|WideOr2~14_combout\)) # (!\decoder|c|WideOr12~1_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (((!\decoder|a|WideOr2~14_combout\ & \decoder|c|WideOr12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|c|WideOr12~1_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr12~2_combout\,
	combout => \decoder|c|WideOr12~3_combout\);

-- Location: LCCOMB_X92_Y86_N2
\decoder|c|WideOr12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~0_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr1~11_combout\ $ (!\decoder|a|WideOr5~20_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr1~11_combout\ & ((!\decoder|a|WideOr5~20_combout\))) # 
-- (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr12~0_combout\);

-- Location: LCCOMB_X92_Y86_N8
\decoder|c|WideOr12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~5_combout\ = (\decoder|a|WideOr2~14_combout\ & ((\decoder|c|WideOr12~3_combout\ & (\decoder|c|WideOr12~4_combout\)) # (!\decoder|c|WideOr12~3_combout\ & ((!\decoder|c|WideOr12~0_combout\))))) # (!\decoder|a|WideOr2~14_combout\ & 
-- (((\decoder|c|WideOr12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr12~4_combout\,
	datab => \decoder|a|WideOr2~14_combout\,
	datac => \decoder|c|WideOr12~3_combout\,
	datad => \decoder|c|WideOr12~0_combout\,
	combout => \decoder|c|WideOr12~5_combout\);

-- Location: LCCOMB_X92_Y86_N22
\decoder|c|WideOr12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~6_combout\ = (\decoder|c|WideOr30~1_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr12~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr30~1_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr12~5_combout\,
	combout => \decoder|c|WideOr12~6_combout\);

-- Location: LCCOMB_X93_Y87_N22
\arm_inst~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~19_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr12~6_combout\))) # (!\sm|q_select~q\ & (\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_even~q\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr12~6_combout\,
	combout => \arm_inst~19_combout\);

-- Location: LCCOMB_X91_Y84_N30
\decoder|c|WideOr11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~1_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr1~11_combout\ & ((!\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr2~14_combout\) # (\decoder|a|WideOr5~20_combout\))))) # 
-- (!\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr2~14_combout\ & ((\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr2~14_combout\ & (\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr11~1_combout\);

-- Location: LCCOMB_X91_Y84_N24
\decoder|c|WideOr11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~2_combout\ = (\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr2~14_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & 
-- (((\decoder|a|WideOr2~14_combout\ & \decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr11~2_combout\);

-- Location: LCCOMB_X91_Y84_N22
\decoder|c|WideOr11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~3_combout\ = (\decoder|a|WideOr6~21_combout\ & (((\decoder|a|WideOr3~16_combout\)))) # (!\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr3~16_combout\ & (\decoder|c|WideOr11~1_combout\)) # (!\decoder|a|WideOr3~16_combout\ & 
-- ((\decoder|c|WideOr11~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr11~1_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|c|WideOr11~2_combout\,
	combout => \decoder|c|WideOr11~3_combout\);

-- Location: LCCOMB_X91_Y84_N4
\decoder|c|WideOr11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~4_combout\ = (\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr2~14_combout\)) # (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr2~14_combout\ & \decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr11~4_combout\);

-- Location: LCCOMB_X91_Y84_N0
\decoder|c|WideOr11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~0_combout\ = (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr1~11_combout\ $ (((\decoder|a|WideOr4~16_combout\) # (\decoder|a|WideOr2~14_combout\))))) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr1~11_combout\ & 
-- ((!\decoder|a|WideOr2~14_combout\) # (!\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr11~0_combout\);

-- Location: LCCOMB_X91_Y84_N26
\decoder|c|WideOr11~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~5_combout\ = (\decoder|c|WideOr11~3_combout\ & (((!\decoder|c|WideOr11~4_combout\)) # (!\decoder|a|WideOr6~21_combout\))) # (!\decoder|c|WideOr11~3_combout\ & (\decoder|a|WideOr6~21_combout\ & ((!\decoder|c|WideOr11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr11~3_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|c|WideOr11~4_combout\,
	datad => \decoder|c|WideOr11~0_combout\,
	combout => \decoder|c|WideOr11~5_combout\);

-- Location: LCCOMB_X91_Y84_N20
\arm_inst~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~20_combout\ = (\sm|q_select~q\ & ((\decoder|a|WideOr0~4_combout\ & ((!\decoder|c|WideOr22~2_combout\))) # (!\decoder|a|WideOr0~4_combout\ & (\decoder|c|WideOr11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr11~5_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr22~2_combout\,
	combout => \arm_inst~20_combout\);

-- Location: LCCOMB_X90_Y87_N6
\decoder|c|WideOr10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr10~0_combout\ = (\decoder|a|WideOr3~16_combout\ & (((!\decoder|a|WideOr1~11_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr5~20_combout\ $ (\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr3~16_combout\,
	combout => \decoder|c|WideOr10~0_combout\);

-- Location: LCCOMB_X90_Y87_N16
\decoder|c|WideOr10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr10~1_combout\ = (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr0~4_combout\ & (\decoder|a|WideOr2~14_combout\ & !\decoder|c|WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr10~0_combout\,
	combout => \decoder|c|WideOr10~1_combout\);

-- Location: LCCOMB_X90_Y87_N18
\decoder|c|WideOr10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr10~2_combout\ = ((\decoder|a|WideOr1~11_combout\ $ (\decoder|a|WideOr5~20_combout\)) # (!\decoder|a|WideOr3~16_combout\)) # (!\decoder|a|WideOr2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~14_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr3~16_combout\,
	combout => \decoder|c|WideOr10~2_combout\);

-- Location: LCCOMB_X90_Y87_N12
\decoder|c|WideOr10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr10~3_combout\ = (\decoder|c|WideOr10~1_combout\) # ((\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|c|WideOr10~1_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr10~2_combout\,
	combout => \decoder|c|WideOr10~3_combout\);

-- Location: LCCOMB_X90_Y87_N10
\decoder|c|WideOr10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr10~4_combout\ = (\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr6~21_combout\) # (\decoder|a|WideOr5~20_combout\ $ (\decoder|a|WideOr3~16_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & (((\decoder|a|WideOr5~20_combout\) # 
-- (\decoder|a|WideOr3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr3~16_combout\,
	combout => \decoder|c|WideOr10~4_combout\);

-- Location: LCCOMB_X90_Y87_N4
\decoder|c|WideOr10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr10~5_combout\ = (\decoder|c|WideOr10~3_combout\) # ((\decoder|c|WideOr31~11_combout\) # ((\decoder|c|WideOr21~0_combout\ & \decoder|c|WideOr10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr10~3_combout\,
	datab => \decoder|c|WideOr31~11_combout\,
	datac => \decoder|c|WideOr21~0_combout\,
	datad => \decoder|c|WideOr10~4_combout\,
	combout => \decoder|c|WideOr10~5_combout\);

-- Location: LCCOMB_X95_Y87_N8
\arm_inst~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~21_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr10~5_combout\))) # (!\sm|q_select~q\ & (\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datab => \sm|param_even~q\,
	datad => \decoder|c|WideOr10~5_combout\,
	combout => \arm_inst~21_combout\);

-- Location: LCCOMB_X89_Y88_N4
\decoder|c|WideOr9~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr9~7_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr1~11_combout\ & \decoder|a|WideOr6~21_combout\)) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr1~11_combout\ & 
-- !\decoder|a|WideOr6~21_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr1~11_combout\ $ (!\decoder|a|WideOr6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr9~7_combout\);

-- Location: LCCOMB_X88_Y88_N2
\decoder|c|WideOr9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr9~4_combout\ = (\decoder|a|WideOr1~11_combout\ & !\decoder|a|WideOr6~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr9~4_combout\);

-- Location: LCCOMB_X88_Y88_N24
\decoder|c|WideOr9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr9~5_combout\ = (\decoder|a|WideOr2~14_combout\ & (\decoder|c|WideOr9~7_combout\ & (\decoder|a|WideOr5~20_combout\ $ (\decoder|c|WideOr9~4_combout\)))) # (!\decoder|a|WideOr2~14_combout\ & (\decoder|c|WideOr9~4_combout\ & 
-- (\decoder|c|WideOr9~7_combout\ $ (!\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr9~7_combout\,
	datab => \decoder|a|WideOr2~14_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|c|WideOr9~4_combout\,
	combout => \decoder|c|WideOr9~5_combout\);

-- Location: LCCOMB_X88_Y88_N30
\decoder|c|WideOr9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr9~6_combout\ = (\decoder|c|WideOr30~1_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr9~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr30~1_combout\,
	datad => \decoder|c|WideOr9~5_combout\,
	combout => \decoder|c|WideOr9~6_combout\);

-- Location: LCCOMB_X93_Y87_N4
\arm_inst~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~22_combout\ = (\sm|q_select~q\ & (\decoder|c|WideOr9~6_combout\)) # (!\sm|q_select~q\ & ((!\sm|param_even~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|q_select~q\,
	datac => \decoder|c|WideOr9~6_combout\,
	datad => \sm|param_even~q\,
	combout => \arm_inst~22_combout\);

-- Location: LCCOMB_X86_Y88_N4
\decoder|c|WideOr8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~0_combout\ = (\decoder|a|WideOr5~20_combout\) # ((\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr4~16_combout\ & !\decoder|a|WideOr3~16_combout\)) # (!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr3~16_combout\,
	combout => \decoder|c|WideOr8~0_combout\);

-- Location: LCCOMB_X86_Y88_N14
\decoder|c|WideOr8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~1_combout\ = (\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr4~16_combout\)) # (!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr3~16_combout\))))) # (!\decoder|a|WideOr5~20_combout\ & 
-- (\decoder|a|WideOr1~11_combout\ & ((!\decoder|a|WideOr3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr3~16_combout\,
	combout => \decoder|c|WideOr8~1_combout\);

-- Location: LCCOMB_X86_Y88_N24
\decoder|c|WideOr8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~2_combout\ = (\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr1~11_combout\ $ (((\decoder|a|WideOr5~20_combout\ & \decoder|a|WideOr3~16_combout\))))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr1~11_combout\ & 
-- (\decoder|a|WideOr5~20_combout\ $ (\decoder|a|WideOr3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr3~16_combout\,
	combout => \decoder|c|WideOr8~2_combout\);

-- Location: LCCOMB_X86_Y88_N26
\decoder|c|WideOr8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~3_combout\ = (\decoder|a|WideOr6~21_combout\ & (((\decoder|a|WideOr2~14_combout\)) # (!\decoder|c|WideOr8~1_combout\))) # (!\decoder|a|WideOr6~21_combout\ & (((!\decoder|a|WideOr2~14_combout\ & \decoder|c|WideOr8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|c|WideOr8~1_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr8~2_combout\,
	combout => \decoder|c|WideOr8~3_combout\);

-- Location: LCCOMB_X86_Y88_N0
\decoder|c|WideOr8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~4_combout\ = (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr4~16_combout\ & \decoder|a|WideOr3~16_combout\))) # (!\decoder|a|WideOr5~20_combout\ & (((\decoder|a|WideOr4~16_combout\ & 
-- !\decoder|a|WideOr3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr3~16_combout\,
	combout => \decoder|c|WideOr8~4_combout\);

-- Location: LCCOMB_X86_Y88_N6
\decoder|c|WideOr8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~5_combout\ = (\decoder|a|WideOr2~14_combout\ & ((\decoder|c|WideOr8~3_combout\ & ((!\decoder|c|WideOr8~4_combout\))) # (!\decoder|c|WideOr8~3_combout\ & (\decoder|c|WideOr8~0_combout\)))) # (!\decoder|a|WideOr2~14_combout\ & 
-- (((\decoder|c|WideOr8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~14_combout\,
	datab => \decoder|c|WideOr8~0_combout\,
	datac => \decoder|c|WideOr8~3_combout\,
	datad => \decoder|c|WideOr8~4_combout\,
	combout => \decoder|c|WideOr8~5_combout\);

-- Location: LCCOMB_X86_Y88_N16
\arm_inst~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~23_combout\ = (\sm|q_select~q\ & ((\decoder|a|WideOr0~4_combout\) # (\decoder|c|WideOr8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr0~4_combout\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr8~5_combout\,
	combout => \arm_inst~23_combout\);

-- Location: LCCOMB_X88_Y87_N30
\decoder|c|WideOr7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~1_combout\ = (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr4~16_combout\ $ (((\decoder|a|WideOr6~21_combout\) # (!\decoder|a|WideOr3~16_combout\))))) # (!\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr6~21_combout\ & 
-- ((!\decoder|a|WideOr3~16_combout\))) # (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr7~1_combout\);

-- Location: LCCOMB_X88_Y87_N28
\decoder|c|WideOr7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~2_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr3~16_combout\)) # (!\decoder|a|WideOr5~20_combout\ & ((!\decoder|a|WideOr6~21_combout\))))) # (!\decoder|a|WideOr4~16_combout\ & 
-- (!\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr3~16_combout\) # (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr7~2_combout\);

-- Location: LCCOMB_X88_Y87_N10
\decoder|c|WideOr7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~3_combout\ = (\decoder|a|WideOr1~11_combout\ & ((\decoder|c|WideOr7~1_combout\) # ((\decoder|a|WideOr2~14_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & (((!\decoder|a|WideOr2~14_combout\ & \decoder|c|WideOr7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr7~1_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr7~2_combout\,
	combout => \decoder|c|WideOr7~3_combout\);

-- Location: LCCOMB_X88_Y87_N20
\decoder|c|WideOr7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~4_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr6~21_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr5~20_combout\ & !\decoder|a|WideOr6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr7~4_combout\);

-- Location: LCCOMB_X88_Y87_N0
\decoder|c|WideOr7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~0_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr5~20_combout\)) # (!\decoder|a|WideOr3~16_combout\ & ((!\decoder|a|WideOr6~21_combout\) # (!\decoder|a|WideOr5~20_combout\))))) # 
-- (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr3~16_combout\ $ (((\decoder|a|WideOr5~20_combout\) # (\decoder|a|WideOr6~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr7~0_combout\);

-- Location: LCCOMB_X88_Y87_N2
\decoder|c|WideOr7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~5_combout\ = (\decoder|c|WideOr7~3_combout\ & ((\decoder|c|WideOr7~4_combout\) # ((!\decoder|a|WideOr2~14_combout\)))) # (!\decoder|c|WideOr7~3_combout\ & (((\decoder|a|WideOr2~14_combout\ & !\decoder|c|WideOr7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr7~3_combout\,
	datab => \decoder|c|WideOr7~4_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr7~0_combout\,
	combout => \decoder|c|WideOr7~5_combout\);

-- Location: LCCOMB_X88_Y87_N4
\arm_inst~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~24_combout\ = (\decoder|a|WideOr0~4_combout\) # ((\decoder|c|WideOr7~5_combout\) # (!\sm|q_select~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr7~5_combout\,
	combout => \arm_inst~24_combout\);

-- Location: LCCOMB_X88_Y88_N22
\decoder|c|WideOr6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~1_combout\ = (\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr4~16_combout\ $ (!\decoder|a|WideOr6~21_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr4~16_combout\ & 
-- ((!\decoder|a|WideOr6~21_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr3~16_combout\ & \decoder|a|WideOr6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr6~1_combout\);

-- Location: LCCOMB_X88_Y88_N0
\decoder|c|WideOr6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~2_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr5~20_combout\) # (\decoder|a|WideOr6~21_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr5~20_combout\ & 
-- \decoder|a|WideOr6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr6~2_combout\);

-- Location: LCCOMB_X88_Y88_N6
\decoder|c|WideOr6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~3_combout\ = (\decoder|a|WideOr2~14_combout\ & (((\decoder|a|WideOr1~11_combout\)))) # (!\decoder|a|WideOr2~14_combout\ & ((\decoder|a|WideOr1~11_combout\ & (\decoder|c|WideOr6~1_combout\)) # (!\decoder|a|WideOr1~11_combout\ & 
-- ((\decoder|c|WideOr6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr6~1_combout\,
	datab => \decoder|a|WideOr2~14_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|c|WideOr6~2_combout\,
	combout => \decoder|c|WideOr6~3_combout\);

-- Location: LCCOMB_X91_Y88_N4
\decoder|c|WideOr6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~4_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr6~21_combout\) # (\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr4~16_combout\ & ((!\decoder|a|WideOr5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr6~4_combout\);

-- Location: LCCOMB_X88_Y88_N16
\decoder|c|WideOr6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~0_combout\ = (\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr5~20_combout\ $ ((!\decoder|a|WideOr3~16_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & (((!\decoder|a|WideOr3~16_combout\ & \decoder|a|WideOr6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr6~21_combout\,
	combout => \decoder|c|WideOr6~0_combout\);

-- Location: LCCOMB_X88_Y88_N8
\decoder|c|WideOr6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~5_combout\ = (\decoder|c|WideOr6~3_combout\ & (((!\decoder|c|WideOr6~4_combout\)) # (!\decoder|a|WideOr2~14_combout\))) # (!\decoder|c|WideOr6~3_combout\ & (\decoder|a|WideOr2~14_combout\ & ((\decoder|c|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr6~3_combout\,
	datab => \decoder|a|WideOr2~14_combout\,
	datac => \decoder|c|WideOr6~4_combout\,
	datad => \decoder|c|WideOr6~0_combout\,
	combout => \decoder|c|WideOr6~5_combout\);

-- Location: LCCOMB_X88_Y88_N26
\decoder|c|WideOr6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~6_combout\ = (\decoder|c|WideOr30~1_combout\) # ((\decoder|c|WideOr6~5_combout\ & !\decoder|a|WideOr0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|c|WideOr30~1_combout\,
	datac => \decoder|c|WideOr6~5_combout\,
	datad => \decoder|a|WideOr0~4_combout\,
	combout => \decoder|c|WideOr6~6_combout\);

-- Location: LCCOMB_X93_Y87_N26
\arm_inst~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~25_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr6~6_combout\))) # (!\sm|q_select~q\ & (!\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_even~q\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr6~6_combout\,
	combout => \arm_inst~25_combout\);

-- Location: LCCOMB_X91_Y88_N6
\decoder|c|WideOr5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~4_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr3~16_combout\ & !\decoder|a|WideOr5~20_combout\)) # (!\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr3~16_combout\ & 
-- \decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr5~4_combout\);

-- Location: LCCOMB_X91_Y88_N14
\decoder|c|WideOr5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~0_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr4~16_combout\ & \decoder|a|WideOr5~20_combout\)) # (!\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr4~16_combout\ & 
-- !\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr5~0_combout\);

-- Location: LCCOMB_X91_Y88_N30
\decoder|c|WideOr5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~2_combout\ = (\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr1~11_combout\ $ ((\decoder|a|WideOr4~16_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr1~11_combout\ $ 
-- (!\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr5~2_combout\);

-- Location: LCCOMB_X91_Y88_N0
\decoder|c|WideOr5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~1_combout\ = (\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr4~16_combout\ $ (\decoder|a|WideOr5~20_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr3~16_combout\ $ 
-- (((\decoder|a|WideOr4~16_combout\) # (\decoder|a|WideOr5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr5~1_combout\);

-- Location: LCCOMB_X91_Y88_N24
\decoder|c|WideOr5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~3_combout\ = (\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr2~14_combout\) # ((!\decoder|c|WideOr5~1_combout\)))) # (!\decoder|a|WideOr6~21_combout\ & (!\decoder|a|WideOr2~14_combout\ & (\decoder|c|WideOr5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr2~14_combout\,
	datac => \decoder|c|WideOr5~2_combout\,
	datad => \decoder|c|WideOr5~1_combout\,
	combout => \decoder|c|WideOr5~3_combout\);

-- Location: LCCOMB_X91_Y88_N8
\decoder|c|WideOr5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~5_combout\ = (\decoder|a|WideOr2~14_combout\ & ((\decoder|c|WideOr5~3_combout\ & (!\decoder|c|WideOr5~4_combout\)) # (!\decoder|c|WideOr5~3_combout\ & ((!\decoder|c|WideOr5~0_combout\))))) # (!\decoder|a|WideOr2~14_combout\ & 
-- (((\decoder|c|WideOr5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr5~4_combout\,
	datab => \decoder|a|WideOr2~14_combout\,
	datac => \decoder|c|WideOr5~0_combout\,
	datad => \decoder|c|WideOr5~3_combout\,
	combout => \decoder|c|WideOr5~5_combout\);

-- Location: LCCOMB_X91_Y88_N2
\decoder|c|WideOr5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~6_combout\ = (\decoder|a|WideOr0~4_combout\ & ((\decoder|a|WideOr5~20_combout\) # ((!\decoder|c|WideOr22~2_combout\)))) # (!\decoder|a|WideOr0~4_combout\ & (((\decoder|c|WideOr5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr5~5_combout\,
	datad => \decoder|c|WideOr22~2_combout\,
	combout => \decoder|c|WideOr5~6_combout\);

-- Location: LCCOMB_X93_Y87_N12
\arm_inst~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~26_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr5~6_combout\))) # (!\sm|q_select~q\ & (\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_even~q\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr5~6_combout\,
	combout => \arm_inst~26_combout\);

-- Location: LCCOMB_X90_Y87_N30
\decoder|c|WideOr4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr4~2_combout\ = (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr4~16_combout\ $ (((\decoder|a|WideOr6~21_combout\ & !\decoder|a|WideOr1~11_combout\))))) # (!\decoder|a|WideOr5~20_combout\ & (((!\decoder|a|WideOr1~11_combout\ & 
-- \decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr4~2_combout\);

-- Location: LCCOMB_X91_Y87_N30
\decoder|c|WideOr4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr4~3_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|c|WideOr22~7_combout\) # ((!\decoder|a|WideOr2~14_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (((!\decoder|a|WideOr2~14_combout\ & \decoder|c|WideOr4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr22~7_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr4~2_combout\,
	combout => \decoder|c|WideOr4~3_combout\);

-- Location: LCCOMB_X91_Y87_N8
\decoder|c|WideOr4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr4~4_combout\ = (\decoder|c|WideOr4~3_combout\) # ((!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr2~14_combout\ & !\decoder|c|WideOr27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr4~3_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr2~14_combout\,
	datad => \decoder|c|WideOr27~1_combout\,
	combout => \decoder|c|WideOr4~4_combout\);

-- Location: LCCOMB_X91_Y87_N18
\arm_inst~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~27_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr22~3_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr4~4_combout\,
	datad => \decoder|c|WideOr22~3_combout\,
	combout => \arm_inst~27_combout\);

-- Location: LCCOMB_X89_Y87_N4
\decoder|c|WideOr3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr3~1_combout\ = (\decoder|c|WideOr30~1_combout\) # ((!\decoder|a|WideOr3~16_combout\ & (\decoder|c|WideOr21~0_combout\ & \decoder|c|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|c|WideOr21~0_combout\,
	datac => \decoder|c|WideOr30~1_combout\,
	datad => \decoder|c|WideOr3~0_combout\,
	combout => \decoder|c|WideOr3~1_combout\);

-- Location: LCCOMB_X109_Y90_N4
\arm_inst~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~28_combout\ = (\sm|q_select~q\ & \decoder|c|WideOr3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr3~1_combout\,
	combout => \arm_inst~28_combout\);

-- Location: LCCOMB_X89_Y88_N28
\decoder|c|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr2~0_combout\ = (\decoder|a|WideOr4~16_combout\) # ((!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr6~21_combout\) # (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr2~0_combout\);

-- Location: LCCOMB_X89_Y88_N30
\arm_inst~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~29_combout\ = ((\decoder|c|WideOr2~0_combout\) # ((\decoder|a|WideOr3~16_combout\) # (!\decoder|c|WideOr21~0_combout\))) # (!\sm|q_select~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datab => \decoder|c|WideOr2~0_combout\,
	datac => \decoder|c|WideOr21~0_combout\,
	datad => \decoder|a|WideOr3~16_combout\,
	combout => \arm_inst~29_combout\);

-- Location: LCCOMB_X89_Y88_N16
\decoder|c|WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr1~0_combout\ = (\decoder|a|WideOr5~20_combout\) # ((!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr6~21_combout\) # (\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr1~0_combout\);

-- Location: LCCOMB_X89_Y88_N22
\arm_inst~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~30_combout\ = ((\decoder|c|WideOr1~0_combout\) # ((\decoder|a|WideOr3~16_combout\) # (!\decoder|c|WideOr21~0_combout\))) # (!\sm|q_select~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datab => \decoder|c|WideOr1~0_combout\,
	datac => \decoder|c|WideOr21~0_combout\,
	datad => \decoder|a|WideOr3~16_combout\,
	combout => \arm_inst~30_combout\);

-- Location: LCCOMB_X89_Y88_N20
\decoder|c|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr0~0_combout\ = (\decoder|a|WideOr4~16_combout\) # ((\decoder|a|WideOr5~20_combout\) # ((\decoder|a|WideOr6~21_combout\ & !\decoder|a|WideOr1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr0~0_combout\);

-- Location: LCCOMB_X89_Y88_N2
\arm_inst~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~31_combout\ = ((\decoder|c|WideOr0~0_combout\) # ((\decoder|a|WideOr3~16_combout\) # (!\decoder|c|WideOr21~0_combout\))) # (!\sm|q_select~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datab => \decoder|c|WideOr0~0_combout\,
	datac => \decoder|c|WideOr21~0_combout\,
	datad => \decoder|a|WideOr3~16_combout\,
	combout => \arm_inst~31_combout\);

-- Location: LCCOMB_X89_Y88_N0
\decoder|c|WideOr29~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr29~3_combout\ = (\decoder|c|WideOr30~1_combout\) # (\decoder|c|WideOr29~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|c|WideOr30~1_combout\,
	datad => \decoder|c|WideOr29~2_combout\,
	combout => \decoder|c|WideOr29~3_combout\);

-- Location: LCCOMB_X86_Y88_N12
\decoder|c|WideOr23~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~8_combout\ = (\decoder|a|WideOr0~4_combout\) # ((\decoder|a|WideOr1~11_combout\ & (\decoder|c|WideOr23~4_combout\ & !\decoder|c|WideOr23~5_combout\)) # (!\decoder|a|WideOr1~11_combout\ & (!\decoder|c|WideOr23~4_combout\ & 
-- \decoder|c|WideOr23~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr0~4_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|c|WideOr23~4_combout\,
	datad => \decoder|c|WideOr23~5_combout\,
	combout => \decoder|c|WideOr23~8_combout\);

-- Location: LCCOMB_X91_Y87_N26
\decoder|c|WideOr22~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~9_combout\ = (\decoder|a|WideOr0~4_combout\ & ((\decoder|a|WideOr5~20_combout\) # ((!\decoder|c|WideOr22~2_combout\)))) # (!\decoder|a|WideOr0~4_combout\ & (((\decoder|c|WideOr22~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|c|WideOr22~8_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr22~2_combout\,
	combout => \decoder|c|WideOr22~9_combout\);

-- Location: LCCOMB_X91_Y87_N4
\decoder|c|WideOr20~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr20~5_combout\ = (\decoder|a|WideOr0~4_combout\ & ((\decoder|a|WideOr5~20_combout\) # ((!\decoder|c|WideOr22~2_combout\)))) # (!\decoder|a|WideOr0~4_combout\ & (((\decoder|c|WideOr20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|c|WideOr20~4_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr22~2_combout\,
	combout => \decoder|c|WideOr20~5_combout\);

-- Location: LCCOMB_X89_Y87_N30
\decoder|c|WideOr17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr17~1_combout\ = ((\decoder|c|WideOr17~0_combout\ & \decoder|c|WideOr21~1_combout\)) # (!\decoder|c|WideOr27~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr17~0_combout\,
	datab => \decoder|c|WideOr21~1_combout\,
	datad => \decoder|c|WideOr27~2_combout\,
	combout => \decoder|c|WideOr17~1_combout\);

-- Location: LCCOMB_X91_Y84_N14
\decoder|c|WideOr11~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~6_combout\ = (\decoder|a|WideOr0~4_combout\ & ((!\decoder|c|WideOr22~2_combout\))) # (!\decoder|a|WideOr0~4_combout\ & (\decoder|c|WideOr11~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr11~5_combout\,
	datad => \decoder|c|WideOr22~2_combout\,
	combout => \decoder|c|WideOr11~6_combout\);

-- Location: LCCOMB_X86_Y88_N30
\decoder|c|WideOr8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~6_combout\ = (\decoder|a|WideOr0~4_combout\) # (\decoder|c|WideOr8~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr8~5_combout\,
	combout => \decoder|c|WideOr8~6_combout\);

-- Location: LCCOMB_X88_Y87_N26
\decoder|c|WideOr7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~6_combout\ = (\decoder|a|WideOr0~4_combout\) # (\decoder|c|WideOr7~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr7~5_combout\,
	combout => \decoder|c|WideOr7~6_combout\);

-- Location: LCCOMB_X91_Y87_N22
\decoder|c|WideOr4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr4~5_combout\ = (\decoder|a|WideOr0~4_combout\ & ((\decoder|a|WideOr5~20_combout\) # ((!\decoder|c|WideOr22~2_combout\)))) # (!\decoder|a|WideOr0~4_combout\ & (((\decoder|c|WideOr4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|c|WideOr4~4_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr22~2_combout\,
	combout => \decoder|c|WideOr4~5_combout\);

-- Location: LCCOMB_X89_Y88_N14
\decoder|c|WideOr2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr2~1_combout\ = (\decoder|a|WideOr3~16_combout\) # ((\decoder|c|WideOr2~0_combout\) # (!\decoder|c|WideOr21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|c|WideOr21~0_combout\,
	datad => \decoder|c|WideOr2~0_combout\,
	combout => \decoder|c|WideOr2~1_combout\);

-- Location: LCCOMB_X89_Y88_N24
\decoder|c|WideOr1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr1~1_combout\ = (\decoder|a|WideOr3~16_combout\) # ((\decoder|c|WideOr1~0_combout\) # (!\decoder|c|WideOr21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|c|WideOr21~0_combout\,
	datad => \decoder|c|WideOr1~0_combout\,
	combout => \decoder|c|WideOr1~1_combout\);

-- Location: LCCOMB_X89_Y88_N18
\decoder|c|WideOr0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr0~1_combout\ = (\decoder|a|WideOr3~16_combout\) # ((\decoder|c|WideOr0~0_combout\) # (!\decoder|c|WideOr21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|c|WideOr21~0_combout\,
	datad => \decoder|c|WideOr0~0_combout\,
	combout => \decoder|c|WideOr0~1_combout\);

-- Location: LCCOMB_X95_Y87_N26
\byte_to_push~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~0_combout\ = (\sm|push_wide~q\ & ((\sm|is_wide~q\))) # (!\sm|push_wide~q\ & (\iram[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iram[0]~input_o\,
	datac => \sm|is_wide~q\,
	datad => \sm|push_wide~q\,
	combout => \byte_to_push~0_combout\);

-- Location: LCCOMB_X95_Y87_N12
\byte_to_push~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~1_combout\ = (!\sm|push_wide~q\ & \iram[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|push_wide~q\,
	datad => \iram[1]~input_o\,
	combout => \byte_to_push~1_combout\);

-- Location: LCCOMB_X116_Y76_N16
\byte_to_push~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~2_combout\ = (!\sm|push_wide~q\ & \iram[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|push_wide~q\,
	datad => \iram[2]~input_o\,
	combout => \byte_to_push~2_combout\);

-- Location: LCCOMB_X95_Y87_N10
\byte_to_push~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~3_combout\ = (\iram[3]~input_o\ & !\sm|push_wide~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iram[3]~input_o\,
	datad => \sm|push_wide~q\,
	combout => \byte_to_push~3_combout\);

-- Location: LCCOMB_X95_Y87_N28
\byte_to_push~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~4_combout\ = (\iram[4]~input_o\ & !\sm|push_wide~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iram[4]~input_o\,
	datad => \sm|push_wide~q\,
	combout => \byte_to_push~4_combout\);

-- Location: LCCOMB_X95_Y87_N14
\byte_to_push~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~5_combout\ = (\iram[5]~input_o\ & !\sm|push_wide~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iram[5]~input_o\,
	datad => \sm|push_wide~q\,
	combout => \byte_to_push~5_combout\);

-- Location: LCCOMB_X87_Y76_N26
\byte_to_push~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~6_combout\ = (!\sm|push_wide~q\ & \iram[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|push_wide~q\,
	datad => \iram[6]~input_o\,
	combout => \byte_to_push~6_combout\);

-- Location: LCCOMB_X87_Y76_N24
\byte_to_push~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~7_combout\ = (\iram[7]~input_o\ & !\sm|push_wide~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iram[7]~input_o\,
	datad => \sm|push_wide~q\,
	combout => \byte_to_push~7_combout\);

ww_state(0) <= \state[0]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_waiting <= \waiting~output_o\;

ww_param_even <= \param_even~output_o\;

ww_q_select <= \q_select~output_o\;

ww_parameter_number(0) <= \parameter_number[0]~output_o\;

ww_parameter_number(1) <= \parameter_number[1]~output_o\;

ww_parameter_number(2) <= \parameter_number[2]~output_o\;

ww_parameter_number(3) <= \parameter_number[3]~output_o\;

ww_parameter_number(4) <= \parameter_number[4]~output_o\;

ww_push_wide <= \push_wide~output_o\;

ww_is_wide <= \is_wide~output_o\;

ww_arm_inst(0) <= \arm_inst[0]~output_o\;

ww_arm_inst(1) <= \arm_inst[1]~output_o\;

ww_arm_inst(2) <= \arm_inst[2]~output_o\;

ww_arm_inst(3) <= \arm_inst[3]~output_o\;

ww_arm_inst(4) <= \arm_inst[4]~output_o\;

ww_arm_inst(5) <= \arm_inst[5]~output_o\;

ww_arm_inst(6) <= \arm_inst[6]~output_o\;

ww_arm_inst(7) <= \arm_inst[7]~output_o\;

ww_arm_inst(8) <= \arm_inst[8]~output_o\;

ww_arm_inst(9) <= \arm_inst[9]~output_o\;

ww_arm_inst(10) <= \arm_inst[10]~output_o\;

ww_arm_inst(11) <= \arm_inst[11]~output_o\;

ww_arm_inst(12) <= \arm_inst[12]~output_o\;

ww_arm_inst(13) <= \arm_inst[13]~output_o\;

ww_arm_inst(14) <= \arm_inst[14]~output_o\;

ww_arm_inst(15) <= \arm_inst[15]~output_o\;

ww_arm_inst(16) <= \arm_inst[16]~output_o\;

ww_arm_inst(17) <= \arm_inst[17]~output_o\;

ww_arm_inst(18) <= \arm_inst[18]~output_o\;

ww_arm_inst(19) <= \arm_inst[19]~output_o\;

ww_arm_inst(20) <= \arm_inst[20]~output_o\;

ww_arm_inst(21) <= \arm_inst[21]~output_o\;

ww_arm_inst(22) <= \arm_inst[22]~output_o\;

ww_arm_inst(23) <= \arm_inst[23]~output_o\;

ww_arm_inst(24) <= \arm_inst[24]~output_o\;

ww_arm_inst(25) <= \arm_inst[25]~output_o\;

ww_arm_inst(26) <= \arm_inst[26]~output_o\;

ww_arm_inst(27) <= \arm_inst[27]~output_o\;

ww_arm_inst(28) <= \arm_inst[28]~output_o\;

ww_arm_inst(29) <= \arm_inst[29]~output_o\;

ww_arm_inst(30) <= \arm_inst[30]~output_o\;

ww_arm_inst(31) <= \arm_inst[31]~output_o\;

ww_push_inst(0) <= \push_inst[0]~output_o\;

ww_push_inst(1) <= \push_inst[1]~output_o\;

ww_push_inst(2) <= \push_inst[2]~output_o\;

ww_push_inst(3) <= \push_inst[3]~output_o\;

ww_push_inst(4) <= \push_inst[4]~output_o\;

ww_push_inst(5) <= \push_inst[5]~output_o\;

ww_push_inst(6) <= \push_inst[6]~output_o\;

ww_push_inst(7) <= \push_inst[7]~output_o\;

ww_push_inst(8) <= \push_inst[8]~output_o\;

ww_push_inst(9) <= \push_inst[9]~output_o\;

ww_push_inst(10) <= \push_inst[10]~output_o\;

ww_push_inst(11) <= \push_inst[11]~output_o\;

ww_push_inst(12) <= \push_inst[12]~output_o\;

ww_push_inst(13) <= \push_inst[13]~output_o\;

ww_push_inst(14) <= \push_inst[14]~output_o\;

ww_push_inst(15) <= \push_inst[15]~output_o\;

ww_push_inst(16) <= \push_inst[16]~output_o\;

ww_push_inst(17) <= \push_inst[17]~output_o\;

ww_push_inst(18) <= \push_inst[18]~output_o\;

ww_push_inst(19) <= \push_inst[19]~output_o\;

ww_push_inst(20) <= \push_inst[20]~output_o\;

ww_push_inst(21) <= \push_inst[21]~output_o\;

ww_push_inst(22) <= \push_inst[22]~output_o\;

ww_push_inst(23) <= \push_inst[23]~output_o\;

ww_push_inst(24) <= \push_inst[24]~output_o\;

ww_push_inst(25) <= \push_inst[25]~output_o\;

ww_push_inst(26) <= \push_inst[26]~output_o\;

ww_push_inst(27) <= \push_inst[27]~output_o\;

ww_push_inst(28) <= \push_inst[28]~output_o\;

ww_push_inst(29) <= \push_inst[29]~output_o\;

ww_push_inst(30) <= \push_inst[30]~output_o\;

ww_push_inst(31) <= \push_inst[31]~output_o\;

ww_instr(0) <= \instr[0]~output_o\;

ww_instr(1) <= \instr[1]~output_o\;

ww_instr(2) <= \instr[2]~output_o\;

ww_instr(3) <= \instr[3]~output_o\;

ww_instr(4) <= \instr[4]~output_o\;

ww_instr(5) <= \instr[5]~output_o\;

ww_instr(6) <= \instr[6]~output_o\;

ww_instr(7) <= \instr[7]~output_o\;

ww_instr(8) <= \instr[8]~output_o\;

ww_instr(9) <= \instr[9]~output_o\;

ww_instr(10) <= \instr[10]~output_o\;

ww_instr(11) <= \instr[11]~output_o\;

ww_instr(12) <= \instr[12]~output_o\;

ww_instr(13) <= \instr[13]~output_o\;

ww_instr(14) <= \instr[14]~output_o\;

ww_instr(15) <= \instr[15]~output_o\;

ww_instr(16) <= \instr[16]~output_o\;

ww_instr(17) <= \instr[17]~output_o\;

ww_instr(18) <= \instr[18]~output_o\;

ww_instr(19) <= \instr[19]~output_o\;

ww_instr(20) <= \instr[20]~output_o\;

ww_instr(21) <= \instr[21]~output_o\;

ww_instr(22) <= \instr[22]~output_o\;

ww_instr(23) <= \instr[23]~output_o\;

ww_instr(24) <= \instr[24]~output_o\;

ww_instr(25) <= \instr[25]~output_o\;

ww_instr(26) <= \instr[26]~output_o\;

ww_instr(27) <= \instr[27]~output_o\;

ww_instr(28) <= \instr[28]~output_o\;

ww_instr(29) <= \instr[29]~output_o\;

ww_instr(30) <= \instr[30]~output_o\;

ww_instr(31) <= \instr[31]~output_o\;

ww_valid_write <= \valid_write~output_o\;

ww_link_list_ptr(0) <= \link_list_ptr[0]~output_o\;

ww_link_list_ptr(1) <= \link_list_ptr[1]~output_o\;

ww_link_list_ptr(2) <= \link_list_ptr[2]~output_o\;

ww_link_list_ptr(3) <= \link_list_ptr[3]~output_o\;

ww_link_list_ptr(4) <= \link_list_ptr[4]~output_o\;

ww_link_list_ptr(5) <= \link_list_ptr[5]~output_o\;

ww_link_list_ptr(6) <= \link_list_ptr[6]~output_o\;

ww_link_list_ptr(7) <= \link_list_ptr[7]~output_o\;

ww_link_list_ptr(8) <= \link_list_ptr[8]~output_o\;

ww_oram_iter(0) <= \oram_iter[0]~output_o\;

ww_oram_iter(1) <= \oram_iter[1]~output_o\;

ww_oram_iter(2) <= \oram_iter[2]~output_o\;

ww_oram_iter(3) <= \oram_iter[3]~output_o\;

ww_oram_iter(4) <= \oram_iter[4]~output_o\;

ww_oram_iter(5) <= \oram_iter[5]~output_o\;

ww_oram_iter(6) <= \oram_iter[6]~output_o\;

ww_oram_iter(7) <= \oram_iter[7]~output_o\;

ww_jvm_opcode(0) <= \jvm_opcode[0]~output_o\;

ww_jvm_opcode(1) <= \jvm_opcode[1]~output_o\;

ww_jvm_opcode(2) <= \jvm_opcode[2]~output_o\;

ww_jvm_opcode(3) <= \jvm_opcode[3]~output_o\;

ww_jvm_opcode(4) <= \jvm_opcode[4]~output_o\;

ww_jvm_opcode(5) <= \jvm_opcode[5]~output_o\;

ww_jvm_opcode(6) <= \jvm_opcode[6]~output_o\;

ww_jvm_opcode(7) <= \jvm_opcode[7]~output_o\;

ww_byte_to_push(0) <= \byte_to_push[0]~output_o\;

ww_byte_to_push(1) <= \byte_to_push[1]~output_o\;

ww_byte_to_push(2) <= \byte_to_push[2]~output_o\;

ww_byte_to_push(3) <= \byte_to_push[3]~output_o\;

ww_byte_to_push(4) <= \byte_to_push[4]~output_o\;

ww_byte_to_push(5) <= \byte_to_push[5]~output_o\;

ww_byte_to_push(6) <= \byte_to_push[6]~output_o\;

ww_byte_to_push(7) <= \byte_to_push[7]~output_o\;

ww_oram_ready <= \oram_ready~output_o\;
END structure;


