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

-- DATE "07/11/2018 01:59:10"

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

ENTITY 	acc IS
    PORT (
	state : BUFFER std_logic_vector(2 DOWNTO 0);
	waiting : BUFFER std_logic;
	param_even : BUFFER std_logic;
	q_select : BUFFER std_logic;
	parameter_number : BUFFER std_logic_vector(4 DOWNTO 0);
	push_wide : BUFFER std_logic;
	is_wide : BUFFER std_logic;
	arm_inst : BUFFER std_logic_vector(31 DOWNTO 0);
	push_inst : BUFFER std_logic_vector(31 DOWNTO 0);
	instr : BUFFER std_logic_vector(31 DOWNTO 0);
	valid_write : BUFFER std_logic;
	link_list_ptr : BUFFER std_logic_vector(8 DOWNTO 0);
	iram : BUFFER std_logic_vector(7 DOWNTO 0);
	oram_iter : BUFFER std_logic_vector(7 DOWNTO 0);
	jvm_opcode : BUFFER std_logic_vector(7 DOWNTO 0);
	byte_to_push : BUFFER std_logic_vector(7 DOWNTO 0);
	iram_ready : BUFFER std_logic;
	oram_ready : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic
	);
END acc;

-- Design Ports Information
-- state[0]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- waiting	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- param_even	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_select	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parameter_number[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parameter_number[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parameter_number[2]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parameter_number[3]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parameter_number[4]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_wide	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_wide	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[0]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[1]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[2]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[3]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[4]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[6]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[7]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[8]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[9]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[10]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[11]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[12]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[13]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[14]	=>  Location: PIN_AK15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[15]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[16]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[17]	=>  Location: PIN_AA27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[18]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[19]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[20]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[21]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[22]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[23]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[24]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[25]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[26]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[27]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[28]	=>  Location: PIN_AJ28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[29]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[30]	=>  Location: PIN_AJ30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_inst[31]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[1]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[2]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[4]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[5]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[7]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[8]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[9]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[11]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[12]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[13]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[14]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[15]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[16]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[17]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[18]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[19]	=>  Location: PIN_E30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[20]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[21]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[22]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[23]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[24]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[25]	=>  Location: PIN_G29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[26]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[27]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[28]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[29]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[30]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_inst[31]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[0]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[2]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[3]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[6]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[7]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[8]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[9]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[10]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[11]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[12]	=>  Location: PIN_AK25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[13]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[14]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[15]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[16]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[17]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[18]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[19]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[20]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[21]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[22]	=>  Location: PIN_AJ15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[23]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[24]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[25]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[26]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[27]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[28]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[29]	=>  Location: PIN_AG29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[30]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[31]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid_write	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[0]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[1]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[3]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[4]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[5]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[6]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[7]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- link_list_ptr[8]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[0]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[1]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[2]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[5]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram[7]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[0]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[4]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[5]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_iter[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[1]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[3]	=>  Location: PIN_AJ13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[4]	=>  Location: PIN_AE30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[6]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jvm_opcode[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[1]	=>  Location: PIN_AJ18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[2]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[3]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[4]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[5]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[6]	=>  Location: PIN_AK17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_to_push[7]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iram_ready	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oram_ready	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF acc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_state : std_logic_vector(2 DOWNTO 0);
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
SIGNAL ww_iram : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_oram_iter : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_jvm_opcode : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_byte_to_push : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_iram_ready : std_logic;
SIGNAL ww_oram_ready : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \state[2]~output_o\ : std_logic;
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
SIGNAL \iram[0]~output_o\ : std_logic;
SIGNAL \iram[1]~output_o\ : std_logic;
SIGNAL \iram[2]~output_o\ : std_logic;
SIGNAL \iram[3]~output_o\ : std_logic;
SIGNAL \iram[4]~output_o\ : std_logic;
SIGNAL \iram[5]~output_o\ : std_logic;
SIGNAL \iram[6]~output_o\ : std_logic;
SIGNAL \iram[7]~output_o\ : std_logic;
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
SIGNAL \iram_ready~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \oram_ready~input_o\ : std_logic;
SIGNAL \n|pc[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \sm|param_counter[0]~8_combout\ : std_logic;
SIGNAL \n|mem|data_out[0]~0_combout\ : std_logic;
SIGNAL \n|mem|ad_t[0]~feeder_combout\ : std_logic;
SIGNAL \n|Add0~1\ : std_logic;
SIGNAL \n|Add0~2_combout\ : std_logic;
SIGNAL \n|Add0~3\ : std_logic;
SIGNAL \n|Add0~4_combout\ : std_logic;
SIGNAL \n|Add0~5\ : std_logic;
SIGNAL \n|Add0~6_combout\ : std_logic;
SIGNAL \n|Add0~7\ : std_logic;
SIGNAL \n|Add0~8_combout\ : std_logic;
SIGNAL \n|Add0~9\ : std_logic;
SIGNAL \n|Add0~10_combout\ : std_logic;
SIGNAL \n|Add0~11\ : std_logic;
SIGNAL \n|Add0~12_combout\ : std_logic;
SIGNAL \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \n|mem|array_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \n|mem|array_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \n|mem|array_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \n|mem|array_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \sm|Equal0~1_combout\ : std_logic;
SIGNAL \n|mem|array_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \n|mem|array_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \n|mem|array_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \sm|Equal0~0_combout\ : std_logic;
SIGNAL \sm|Equal0~2_combout\ : std_logic;
SIGNAL \sm|param_counter[7]~10_combout\ : std_logic;
SIGNAL \sm|Add1~1\ : std_logic;
SIGNAL \sm|Add1~3\ : std_logic;
SIGNAL \sm|Add1~5\ : std_logic;
SIGNAL \sm|Add1~7\ : std_logic;
SIGNAL \sm|Add1~9\ : std_logic;
SIGNAL \sm|Add1~11\ : std_logic;
SIGNAL \sm|Add1~13\ : std_logic;
SIGNAL \sm|Add1~14_combout\ : std_logic;
SIGNAL \sm|Add1~12_combout\ : std_logic;
SIGNAL \sm|push_wide~4_combout\ : std_logic;
SIGNAL \sm|jvm_opcode[0]~0_combout\ : std_logic;
SIGNAL \sm|jvm_opcode[0]~1_combout\ : std_logic;
SIGNAL \pjvm[1]~5_combout\ : std_logic;
SIGNAL \pjvm[7]~0_combout\ : std_logic;
SIGNAL \pjvm[3]~4_combout\ : std_logic;
SIGNAL \pjvm[6]~7_combout\ : std_logic;
SIGNAL \sm|jvm_opcode[5]~feeder_combout\ : std_logic;
SIGNAL \pjvm[5]~2_combout\ : std_logic;
SIGNAL \pjvm[4]~6_combout\ : std_logic;
SIGNAL \pjvm[0]~1_combout\ : std_logic;
SIGNAL \pjvm[2]~3_combout\ : std_logic;
SIGNAL \c|WideOr2~9_combout\ : std_logic;
SIGNAL \c|WideOr2~10_combout\ : std_logic;
SIGNAL \c|WideOr2~5_combout\ : std_logic;
SIGNAL \c|WideOr2~8_combout\ : std_logic;
SIGNAL \c|WideOr2~4_combout\ : std_logic;
SIGNAL \c|WideOr2~6_combout\ : std_logic;
SIGNAL \c|WideOr2~7_combout\ : std_logic;
SIGNAL \sm|Equal1~0_combout\ : std_logic;
SIGNAL \sm|is_wide~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~18_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~14_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~16_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~15_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~17_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~19_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~20_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~21_combout\ : std_logic;
SIGNAL \sm|Mux11~0_combout\ : std_logic;
SIGNAL \c|WideOr0~0_combout\ : std_logic;
SIGNAL \c|WideOr0~1_combout\ : std_logic;
SIGNAL \c|WideOr0~2_combout\ : std_logic;
SIGNAL \c|Decoder0~4_combout\ : std_logic;
SIGNAL \c|Decoder0~5_combout\ : std_logic;
SIGNAL \sm|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \c|WideOr1~22_combout\ : std_logic;
SIGNAL \c|WideOr1~17_combout\ : std_logic;
SIGNAL \c|WideOr1~16_combout\ : std_logic;
SIGNAL \c|WideOr1~18_combout\ : std_logic;
SIGNAL \c|WideOr1~20_combout\ : std_logic;
SIGNAL \c|WideOr1~12_combout\ : std_logic;
SIGNAL \c|WideOr1~13_combout\ : std_logic;
SIGNAL \c|WideOr1~21_combout\ : std_logic;
SIGNAL \c|WideOr1~14_combout\ : std_logic;
SIGNAL \c|WideOr1~15_combout\ : std_logic;
SIGNAL \c|WideOr1~19_combout\ : std_logic;
SIGNAL \sm|Equal2~2_combout\ : std_logic;
SIGNAL \sm|Equal2~3_combout\ : std_logic;
SIGNAL \sm|Equal2~0_combout\ : std_logic;
SIGNAL \sm|Equal2~1_combout\ : std_logic;
SIGNAL \sm|com_adr[0]~7_combout\ : std_logic;
SIGNAL \sm|com_adr[0]~8_combout\ : std_logic;
SIGNAL \sm|com_adr[0]~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~3_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~5_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~7_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~1_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~3_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~2_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~3_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~7_combout\ : std_logic;
SIGNAL \sm|nar|WideOr3~10_combout\ : std_logic;
SIGNAL \sm|Mux7~0_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~4_combout\ : std_logic;
SIGNAL \sm|Mux5~0_combout\ : std_logic;
SIGNAL \sm|com_adr[7]~feeder_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~5_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~7_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~3_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~1_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~2_combout\ : std_logic;
SIGNAL \sm|nar|WideOr8~10_combout\ : std_logic;
SIGNAL \sm|Mux12~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~22_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~17_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~18_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~5_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~16_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~19_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~14_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~15_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~20_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~10_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~21_combout\ : std_logic;
SIGNAL \sm|Mux8~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr2~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr2~1_combout\ : std_logic;
SIGNAL \sm|nar|WideOr2~2_combout\ : std_logic;
SIGNAL \sm|Mux6~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr4~2_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~24_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~10_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~14_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~21_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~22_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~16_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~15_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~17_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~18_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~19_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~20_combout\ : std_logic;
SIGNAL \sm|nar|WideOr5~23_combout\ : std_logic;
SIGNAL \sm|Mux9~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~5_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~2_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~1_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~3_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~14_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~10_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~15_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~16_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~7_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr6~17_combout\ : std_logic;
SIGNAL \sm|Mux10~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~23_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~24_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~7_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~22_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~10_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~5_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~13_combout\ : std_logic;
SIGNAL \sm|com_adr~1_combout\ : std_logic;
SIGNAL \sm|com_adr~0_combout\ : std_logic;
SIGNAL \sm|com_adr~2_combout\ : std_logic;
SIGNAL \sm|com_adr[1]~3_combout\ : std_logic;
SIGNAL \sm|is_wide~1_combout\ : std_logic;
SIGNAL \sm|is_wide~q\ : std_logic;
SIGNAL \sm|Add1~2_combout\ : std_logic;
SIGNAL \sm|Equal3~2_combout\ : std_logic;
SIGNAL \sm|Add1~10_combout\ : std_logic;
SIGNAL \c|Decoder0~7_combout\ : std_logic;
SIGNAL \sm|Add1~8_combout\ : std_logic;
SIGNAL \sm|Equal3~1_combout\ : std_logic;
SIGNAL \sm|push_wide~5_combout\ : std_logic;
SIGNAL \sm|Add1~6_combout\ : std_logic;
SIGNAL \c|Decoder0~6_combout\ : std_logic;
SIGNAL \sm|Equal3~3_combout\ : std_logic;
SIGNAL \sm|push_wide~6_combout\ : std_logic;
SIGNAL \sm|WideOr0~0_combout\ : std_logic;
SIGNAL \sm|state[0]~1_combout\ : std_logic;
SIGNAL \sm|push_wide~0_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \sm|param_even~1_combout\ : std_logic;
SIGNAL \sm|push_wide~1_combout\ : std_logic;
SIGNAL \sm|Add1~0_combout\ : std_logic;
SIGNAL \sm|Add1~4_combout\ : std_logic;
SIGNAL \sm|Equal3~0_combout\ : std_logic;
SIGNAL \sm|push_wide~2_combout\ : std_logic;
SIGNAL \sm|push_wide~3_combout\ : std_logic;
SIGNAL \sm|push_wide~7_combout\ : std_logic;
SIGNAL \sm|push_wide~q\ : std_logic;
SIGNAL \n|mem|always0~0_combout\ : std_logic;
SIGNAL \n|mem|always0~1_combout\ : std_logic;
SIGNAL \n|Add0~0_combout\ : std_logic;
SIGNAL \n|mem|counter[1]~1_combout\ : std_logic;
SIGNAL \n|mem|counter[1]~2_combout\ : std_logic;
SIGNAL \n|mem|counter[1]~0_combout\ : std_logic;
SIGNAL \n|mem|counter[0]~3_combout\ : std_logic;
SIGNAL \n|mem|state~2_combout\ : std_logic;
SIGNAL \n|mem|state~q\ : std_logic;
SIGNAL \waiting~0_combout\ : std_logic;
SIGNAL \sm|com_adr~4_combout\ : std_logic;
SIGNAL \sm|com_adr~5_combout\ : std_logic;
SIGNAL \sm|Mux4~0_combout\ : std_logic;
SIGNAL \sm|Mux4~1_combout\ : std_logic;
SIGNAL \sm|com_adr[8]~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~8_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~9_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~10_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~11_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~12_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~3_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~4_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~5_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~0_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~1_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~2_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~6_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~14_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~15_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~16_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~17_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~18_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~19_combout\ : std_logic;
SIGNAL \sm|nar|WideOr0~20_combout\ : std_logic;
SIGNAL \sm|WideOr2~combout\ : std_logic;
SIGNAL \sm|state[1]~6_combout\ : std_logic;
SIGNAL \sm|state[1]~5_combout\ : std_logic;
SIGNAL \sm|state[1]~7_combout\ : std_logic;
SIGNAL \sm|param_even~0_combout\ : std_logic;
SIGNAL \sm|param_even~2_combout\ : std_logic;
SIGNAL \sm|param_even~q\ : std_logic;
SIGNAL \sm|param_counter[0]~9\ : std_logic;
SIGNAL \sm|param_counter[1]~11_combout\ : std_logic;
SIGNAL \sm|param_counter[1]~12\ : std_logic;
SIGNAL \sm|param_counter[2]~13_combout\ : std_logic;
SIGNAL \sm|param_counter[2]~14\ : std_logic;
SIGNAL \sm|param_counter[3]~15_combout\ : std_logic;
SIGNAL \sm|param_counter[3]~16\ : std_logic;
SIGNAL \sm|param_counter[4]~17_combout\ : std_logic;
SIGNAL \sm|param_counter[4]~18\ : std_logic;
SIGNAL \sm|param_counter[5]~19_combout\ : std_logic;
SIGNAL \sm|param_counter[5]~20\ : std_logic;
SIGNAL \sm|param_counter[6]~21_combout\ : std_logic;
SIGNAL \sm|param_counter[6]~22\ : std_logic;
SIGNAL \sm|param_counter[7]~23_combout\ : std_logic;
SIGNAL \sm|Equal2~4_combout\ : std_logic;
SIGNAL \sm|Equal2~5_combout\ : std_logic;
SIGNAL \sm|Equal2~6_combout\ : std_logic;
SIGNAL \sm|state~0_combout\ : std_logic;
SIGNAL \sm|state[0]~2_combout\ : std_logic;
SIGNAL \sm|state[0]~3_combout\ : std_logic;
SIGNAL \sm|state[0]~4_combout\ : std_logic;
SIGNAL \sm|q_select~0_combout\ : std_logic;
SIGNAL \sm|q_select~1_combout\ : std_logic;
SIGNAL \sm|q_select~q\ : std_logic;
SIGNAL \push_inst~0_combout\ : std_logic;
SIGNAL \decoder|a|WideOr0~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr0~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr0~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~0_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~1_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~19_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~11_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~8_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~10_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~12_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~16_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~14_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~15_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~17_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~18_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~22_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~23_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~20_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~10_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~8_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~11_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~14_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~15_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~16_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~17_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~18_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~19_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~22_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~20_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr6~21_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~14_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~15_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~8_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~10_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~11_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~12_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~13_combout\ : std_logic;
SIGNAL \sm|nar|WideOr7~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr5~21_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~0_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~1_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr4~16_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~10_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~12_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~8_combout\ : std_logic;
SIGNAL \decoder|a|WideOr1~11_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~8_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~12_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~0_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~1_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~8_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~10_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~11_combout\ : std_logic;
SIGNAL \decoder|a|WideOr2~13_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~9_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~10_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~4_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~3_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~5_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~2_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~6_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~7_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~8_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~11_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~17_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~12_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~14_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~15_combout\ : std_logic;
SIGNAL \decoder|a|WideOr3~16_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~7_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~9_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~11_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~10_combout\ : std_logic;
SIGNAL \arm_inst~0_combout\ : std_logic;
SIGNAL \push_inst~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~6_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~25_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~22_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~20_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~19_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~21_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~23_combout\ : std_logic;
SIGNAL \decoder|c|WideOr30~24_combout\ : std_logic;
SIGNAL \arm_inst~1_combout\ : std_logic;
SIGNAL \push_inst~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr29~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr21~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr29~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr29~2_combout\ : std_logic;
SIGNAL \arm_inst~2_combout\ : std_logic;
SIGNAL \push_inst~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr28~19_combout\ : std_logic;
SIGNAL \decoder|c|WideOr21~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr28~6_combout\ : std_logic;
SIGNAL \decoder|c|WideOr28~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr28~21_combout\ : std_logic;
SIGNAL \decoder|c|WideOr28~20_combout\ : std_logic;
SIGNAL \arm_inst~3_combout\ : std_logic;
SIGNAL \push_inst~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr27~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr27~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr16~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr27~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr27~3_combout\ : std_logic;
SIGNAL \arm_inst~4_combout\ : std_logic;
SIGNAL \push_inst~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~20_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~21_combout\ : std_logic;
SIGNAL \decoder|c|WideOr3~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr21~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr21~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~6_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~24_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~22_combout\ : std_logic;
SIGNAL \arm_inst~5_combout\ : std_logic;
SIGNAL \push_inst~6_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~10_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~8_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~17_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~26_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~27_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~16_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~23_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~25_combout\ : std_logic;
SIGNAL \decoder|c|WideOr25~24_combout\ : std_logic;
SIGNAL \arm_inst~6_combout\ : std_logic;
SIGNAL \push_inst~7_combout\ : std_logic;
SIGNAL \decoder|c|WideOr24~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr19~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr24~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr24~2_combout\ : std_logic;
SIGNAL \arm_inst~7_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~6_combout\ : std_logic;
SIGNAL \arm_inst~8_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~7_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~6_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~8_combout\ : std_logic;
SIGNAL \decoder|c|WideOr31~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr22~3_combout\ : std_logic;
SIGNAL \arm_inst~9_combout\ : std_logic;
SIGNAL \arm_inst~10_combout\ : std_logic;
SIGNAL \decoder|c|WideOr20~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr20~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr20~4_combout\ : std_logic;
SIGNAL \arm_inst~11_combout\ : std_logic;
SIGNAL \decoder|c|WideOr19~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr23~7_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~19_combout\ : std_logic;
SIGNAL \decoder|c|WideOr19~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr19~3_combout\ : std_logic;
SIGNAL \arm_inst~12_combout\ : std_logic;
SIGNAL \decoder|c|WideOr18~8_combout\ : std_logic;
SIGNAL \decoder|c|WideOr18~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr18~16_combout\ : std_logic;
SIGNAL \decoder|c|WideOr18~15_combout\ : std_logic;
SIGNAL \arm_inst~13_combout\ : std_logic;
SIGNAL \decoder|c|WideOr17~0_combout\ : std_logic;
SIGNAL \arm_inst~14_combout\ : std_logic;
SIGNAL \decoder|c|WideOr16~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr16~2_combout\ : std_logic;
SIGNAL \arm_inst~15_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr15~6_combout\ : std_logic;
SIGNAL \arm_inst~16_combout\ : std_logic;
SIGNAL \decoder|c|WideOr14~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr14~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr14~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr14~1_combout\ : std_logic;
SIGNAL \arm_inst~17_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr13~6_combout\ : std_logic;
SIGNAL \arm_inst~18_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr12~6_combout\ : std_logic;
SIGNAL \arm_inst~19_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr11~5_combout\ : std_logic;
SIGNAL \arm_inst~20_combout\ : std_logic;
SIGNAL \decoder|c|WideOr10~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr10~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr10~7_combout\ : std_logic;
SIGNAL \decoder|c|WideOr10~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr10~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr10~6_combout\ : std_logic;
SIGNAL \arm_inst~21_combout\ : std_logic;
SIGNAL \decoder|c|WideOr26~23_combout\ : std_logic;
SIGNAL \decoder|c|WideOr9~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr9~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr9~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr9~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr9~4_combout\ : std_logic;
SIGNAL \arm_inst~22_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr8~5_combout\ : std_logic;
SIGNAL \arm_inst~23_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr7~5_combout\ : std_logic;
SIGNAL \arm_inst~24_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~26_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~27_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~17_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~16_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~14_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~13_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~22_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~23_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~25_combout\ : std_logic;
SIGNAL \decoder|c|WideOr6~24_combout\ : std_logic;
SIGNAL \arm_inst~25_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~4_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~1_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~0_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~5_combout\ : std_logic;
SIGNAL \decoder|c|WideOr5~6_combout\ : std_logic;
SIGNAL \arm_inst~26_combout\ : std_logic;
SIGNAL \decoder|c|WideOr4~2_combout\ : std_logic;
SIGNAL \decoder|c|WideOr4~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr4~4_combout\ : std_logic;
SIGNAL \arm_inst~27_combout\ : std_logic;
SIGNAL \decoder|c|WideOr3~1_combout\ : std_logic;
SIGNAL \arm_inst~28_combout\ : std_logic;
SIGNAL \decoder|c|WideOr2~2_combout\ : std_logic;
SIGNAL \arm_inst~29_combout\ : std_logic;
SIGNAL \decoder|c|WideOr1~2_combout\ : std_logic;
SIGNAL \arm_inst~30_combout\ : std_logic;
SIGNAL \decoder|c|WideOr0~2_combout\ : std_logic;
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
SIGNAL \decoder|c|WideOr2~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr1~3_combout\ : std_logic;
SIGNAL \decoder|c|WideOr0~3_combout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \valid_write~0_combout\ : std_logic;
SIGNAL \valid_write~1_combout\ : std_logic;
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
SIGNAL \sm|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sm|jvm_opcode\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \n|mem|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \n|pc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \n|mem|ad_t\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder|c|ALT_INV_WideOr21~3_combout\ : std_logic;
SIGNAL \sm|ALT_INV_param_even~q\ : std_logic;
SIGNAL \n|mem|ALT_INV_state~q\ : std_logic;
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
iram <= ww_iram;
oram_iter <= ww_oram_iter;
jvm_opcode <= ww_jvm_opcode;
byte_to_push <= ww_byte_to_push;
iram_ready <= ww_iram_ready;
ww_oram_ready <= oram_ready;
ww_clk <= clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\n|mem|ad_t\(7) & \n|mem|ad_t\(6) & \n|mem|ad_t\(5) & \n|mem|ad_t\(4) & \n|mem|ad_t\(3) & \n|mem|ad_t\(2) & \n|mem|ad_t\(1) & \n|mem|ad_t\(0));

\n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\n|mem|array_rtl_0|auto_generated|ram_block1a1\ <= \n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\n|mem|array_rtl_0|auto_generated|ram_block1a2\ <= \n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\n|mem|array_rtl_0|auto_generated|ram_block1a3\ <= \n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\n|mem|array_rtl_0|auto_generated|ram_block1a4\ <= \n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\n|mem|array_rtl_0|auto_generated|ram_block1a5\ <= \n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\n|mem|array_rtl_0|auto_generated|ram_block1a6\ <= \n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\n|mem|array_rtl_0|auto_generated|ram_block1a7\ <= \n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\decoder|c|ALT_INV_WideOr21~3_combout\ <= NOT \decoder|c|WideOr21~3_combout\;
\sm|ALT_INV_param_even~q\ <= NOT \sm|param_even~q\;
\n|mem|ALT_INV_state~q\ <= NOT \n|mem|state~q\;
\sm|ALT_INV_state\(1) <= NOT \sm|state\(1);

-- Location: IOOBUF_X117_Y21_N9
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

-- Location: IOOBUF_X77_Y0_N2
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

-- Location: IOOBUF_X34_Y91_N23
\state[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \state[2]~output_o\);

-- Location: IOOBUF_X77_Y0_N23
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

-- Location: IOOBUF_X117_Y65_N9
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

-- Location: IOOBUF_X75_Y0_N9
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

-- Location: IOOBUF_X77_Y0_N16
\parameter_number[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|WideOr2~7_combout\,
	devoe => ww_devoe,
	o => \parameter_number[0]~output_o\);

-- Location: IOOBUF_X75_Y0_N2
\parameter_number[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|WideOr1~19_combout\,
	devoe => ww_devoe,
	o => \parameter_number[1]~output_o\);

-- Location: IOOBUF_X61_Y0_N2
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

-- Location: IOOBUF_X50_Y0_N16
\parameter_number[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|Decoder0~6_combout\,
	devoe => ww_devoe,
	o => \parameter_number[3]~output_o\);

-- Location: IOOBUF_X117_Y23_N9
\parameter_number[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|Decoder0~7_combout\,
	devoe => ww_devoe,
	o => \parameter_number[4]~output_o\);

-- Location: IOOBUF_X75_Y0_N16
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

-- Location: IOOBUF_X77_Y0_N9
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

-- Location: IOOBUF_X117_Y15_N9
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

-- Location: IOOBUF_X68_Y0_N16
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

-- Location: IOOBUF_X90_Y0_N9
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

-- Location: IOOBUF_X88_Y0_N23
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

-- Location: IOOBUF_X99_Y0_N9
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

-- Location: IOOBUF_X66_Y0_N9
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

-- Location: IOOBUF_X95_Y0_N9
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

-- Location: IOOBUF_X117_Y13_N9
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

-- Location: IOOBUF_X117_Y17_N2
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

-- Location: IOOBUF_X117_Y6_N9
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

-- Location: IOOBUF_X108_Y0_N16
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

-- Location: IOOBUF_X117_Y7_N9
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

-- Location: IOOBUF_X95_Y0_N2
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

-- Location: IOOBUF_X104_Y0_N16
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

-- Location: IOOBUF_X63_Y0_N16
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

-- Location: IOOBUF_X88_Y0_N16
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

-- Location: IOOBUF_X90_Y0_N2
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

-- Location: IOOBUF_X117_Y14_N9
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

-- Location: IOOBUF_X117_Y8_N2
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

-- Location: IOOBUF_X97_Y0_N2
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

-- Location: IOOBUF_X117_Y5_N2
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

-- Location: IOOBUF_X68_Y0_N23
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

-- Location: IOOBUF_X50_Y0_N9
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

-- Location: IOOBUF_X86_Y0_N23
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

-- Location: IOOBUF_X86_Y0_N16
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

-- Location: IOOBUF_X117_Y8_N9
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

-- Location: IOOBUF_X97_Y0_N9
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

-- Location: IOOBUF_X108_Y0_N9
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

-- Location: IOOBUF_X104_Y0_N2
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

-- Location: IOOBUF_X106_Y0_N9
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

-- Location: IOOBUF_X117_Y11_N9
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

-- Location: IOOBUF_X99_Y0_N2
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

-- Location: IOOBUF_X61_Y0_N9
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

-- Location: IOOBUF_X70_Y0_N2
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

-- Location: IOOBUF_X108_Y0_N23
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

-- Location: IOOBUF_X104_Y0_N9
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

-- Location: IOOBUF_X63_Y0_N9
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

-- Location: IOOBUF_X66_Y0_N16
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

-- Location: IOOBUF_X108_Y0_N2
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

-- Location: IOOBUF_X63_Y0_N2
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

-- Location: IOOBUF_X66_Y91_N23
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

-- Location: IOOBUF_X3_Y91_N16
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

-- Location: IOOBUF_X44_Y91_N16
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

-- Location: IOOBUF_X19_Y91_N23
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

-- Location: IOOBUF_X117_Y67_N2
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

-- Location: IOOBUF_X3_Y91_N9
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

-- Location: IOOBUF_X79_Y91_N16
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

-- Location: IOOBUF_X50_Y91_N9
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

-- Location: IOOBUF_X117_Y51_N2
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

-- Location: IOOBUF_X84_Y91_N9
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

-- Location: IOOBUF_X117_Y69_N2
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

-- Location: IOOBUF_X117_Y69_N9
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

-- Location: IOOBUF_X117_Y39_N2
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

-- Location: IOOBUF_X117_Y70_N2
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

-- Location: IOOBUF_X117_Y58_N2
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

-- Location: IOOBUF_X48_Y91_N16
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

-- Location: IOOBUF_X82_Y91_N9
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

-- Location: IOOBUF_X117_Y70_N9
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

-- Location: IOOBUF_X117_Y65_N2
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

-- Location: IOOBUF_X12_Y91_N2
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

-- Location: IOOBUF_X8_Y91_N16
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

-- Location: IOOBUF_X15_Y91_N16
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

-- Location: IOOBUF_X117_Y50_N2
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

-- Location: IOOBUF_X88_Y91_N2
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

-- Location: IOOBUF_X117_Y15_N2
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

-- Location: IOOBUF_X61_Y0_N16
\instr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr30~24_combout\,
	devoe => ww_devoe,
	o => \instr[1]~output_o\);

-- Location: IOOBUF_X113_Y0_N23
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

-- Location: IOOBUF_X86_Y0_N9
\instr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr28~20_combout\,
	devoe => ww_devoe,
	o => \instr[3]~output_o\);

-- Location: IOOBUF_X113_Y0_N16
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

-- Location: IOOBUF_X61_Y0_N23
\instr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr26~22_combout\,
	devoe => ww_devoe,
	o => \instr[5]~output_o\);

-- Location: IOOBUF_X92_Y0_N23
\instr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr25~24_combout\,
	devoe => ww_devoe,
	o => \instr[6]~output_o\);

-- Location: IOOBUF_X117_Y13_N2
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

-- Location: IOOBUF_X117_Y14_N2
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

-- Location: IOOBUF_X117_Y5_N9
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

-- Location: IOOBUF_X88_Y0_N9
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

-- Location: IOOBUF_X117_Y7_N2
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

-- Location: IOOBUF_X92_Y0_N2
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

-- Location: IOOBUF_X106_Y0_N2
\instr[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr18~15_combout\,
	devoe => ww_devoe,
	o => \instr[13]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
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

-- Location: IOOBUF_X86_Y0_N2
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

-- Location: IOOBUF_X99_Y0_N16
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

-- Location: IOOBUF_X111_Y0_N2
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

-- Location: IOOBUF_X115_Y0_N16
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

-- Location: IOOBUF_X106_Y0_N16
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

-- Location: IOOBUF_X117_Y10_N9
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

-- Location: IOOBUF_X104_Y0_N23
\instr[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr10~6_combout\,
	devoe => ww_devoe,
	o => \instr[21]~output_o\);

-- Location: IOOBUF_X63_Y0_N23
\instr[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr9~4_combout\,
	devoe => ww_devoe,
	o => \instr[22]~output_o\);

-- Location: IOOBUF_X84_Y0_N2
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

-- Location: IOOBUF_X84_Y0_N9
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

-- Location: IOOBUF_X95_Y0_N16
\instr[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr6~24_combout\,
	devoe => ww_devoe,
	o => \instr[25]~output_o\);

-- Location: IOOBUF_X92_Y0_N16
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

-- Location: IOOBUF_X117_Y10_N2
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

-- Location: IOOBUF_X92_Y0_N9
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

-- Location: IOOBUF_X117_Y11_N2
\instr[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr2~3_combout\,
	devoe => ww_devoe,
	o => \instr[29]~output_o\);

-- Location: IOOBUF_X111_Y0_N16
\instr[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr1~3_combout\,
	devoe => ww_devoe,
	o => \instr[30]~output_o\);

-- Location: IOOBUF_X117_Y6_N2
\instr[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|c|WideOr0~3_combout\,
	devoe => ww_devoe,
	o => \instr[31]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\valid_write~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valid_write~1_combout\,
	devoe => ww_devoe,
	o => \valid_write~output_o\);

-- Location: IOOBUF_X82_Y0_N2
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

-- Location: IOOBUF_X82_Y0_N23
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

-- Location: IOOBUF_X117_Y18_N9
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

-- Location: IOOBUF_X82_Y0_N16
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

-- Location: IOOBUF_X117_Y17_N9
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

-- Location: IOOBUF_X82_Y0_N9
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

-- Location: IOOBUF_X84_Y0_N16
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

-- Location: IOOBUF_X88_Y0_N2
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

-- Location: IOOBUF_X84_Y0_N23
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

-- Location: IOOBUF_X117_Y18_N2
\iram[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \iram[0]~output_o\);

-- Location: IOOBUF_X70_Y0_N23
\iram[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n|mem|array_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \iram[1]~output_o\);

-- Location: IOOBUF_X117_Y21_N2
\iram[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n|mem|array_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \iram[2]~output_o\);

-- Location: IOOBUF_X66_Y0_N23
\iram[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n|mem|array_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \iram[3]~output_o\);

-- Location: IOOBUF_X75_Y0_N23
\iram[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n|mem|array_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \iram[4]~output_o\);

-- Location: IOOBUF_X70_Y0_N16
\iram[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n|mem|array_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \iram[5]~output_o\);

-- Location: IOOBUF_X68_Y0_N2
\iram[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n|mem|array_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \iram[6]~output_o\);

-- Location: IOOBUF_X117_Y24_N2
\iram[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n|mem|array_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \iram[7]~output_o\);

-- Location: IOOBUF_X117_Y35_N9
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

-- Location: IOOBUF_X19_Y91_N9
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

-- Location: IOOBUF_X17_Y91_N16
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

-- Location: IOOBUF_X66_Y91_N9
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

-- Location: IOOBUF_X117_Y26_N2
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

-- Location: IOOBUF_X10_Y0_N2
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

-- Location: IOOBUF_X30_Y91_N2
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

-- Location: IOOBUF_X32_Y91_N9
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

-- Location: IOOBUF_X117_Y22_N2
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

-- Location: IOOBUF_X53_Y0_N23
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

-- Location: IOOBUF_X117_Y24_N9
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

-- Location: IOOBUF_X53_Y0_N9
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

-- Location: IOOBUF_X117_Y19_N9
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

-- Location: IOOBUF_X117_Y22_N9
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

-- Location: IOOBUF_X117_Y19_N2
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

-- Location: IOOBUF_X117_Y26_N9
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

-- Location: IOOBUF_X117_Y23_N2
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

-- Location: IOOBUF_X68_Y0_N9
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

-- Location: IOOBUF_X53_Y0_N2
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

-- Location: IOOBUF_X70_Y0_N9
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X48_Y0_N2
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

-- Location: IOOBUF_X66_Y0_N2
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

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X48_Y0_N16
\iram_ready~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n|mem|ALT_INV_state~q\,
	devoe => ww_devoe,
	o => \iram_ready~output_o\);

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

-- Location: IOIBUF_X53_Y0_N15
\oram_ready~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oram_ready,
	o => \oram_ready~input_o\);

-- Location: LCCOMB_X76_Y19_N28
\n|pc[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|pc[0]~0_combout\ = !\n|pc\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n|pc\(0),
	combout => \n|pc[0]~0_combout\);

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

-- Location: LCCOMB_X80_Y20_N8
\sm|param_counter[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[0]~8_combout\ = (\sm|param_even~q\ & (\sm|param_counter\(0) $ (VCC))) # (!\sm|param_even~q\ & (\sm|param_counter\(0) & VCC))
-- \sm|param_counter[0]~9\ = CARRY((\sm|param_even~q\ & \sm|param_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~q\,
	datab => \sm|param_counter\(0),
	datad => VCC,
	combout => \sm|param_counter[0]~8_combout\,
	cout => \sm|param_counter[0]~9\);

-- Location: LCCOMB_X76_Y19_N30
\n|mem|data_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|mem|data_out[0]~0_combout\ = (!\n|mem|counter\(0) & (\n|mem|state~q\ & (\reset~input_o\ & !\n|mem|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|counter\(0),
	datab => \n|mem|state~q\,
	datac => \reset~input_o\,
	datad => \n|mem|counter\(1),
	combout => \n|mem|data_out[0]~0_combout\);

-- Location: LCCOMB_X77_Y19_N8
\n|mem|ad_t[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|mem|ad_t[0]~feeder_combout\ = \n|pc\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \n|pc\(0),
	combout => \n|mem|ad_t[0]~feeder_combout\);

-- Location: FF_X77_Y19_N9
\n|mem|ad_t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n|mem|ad_t[0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|mem|ad_t\(0));

-- Location: FF_X77_Y19_N23
\n|mem|ad_t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|pc\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|mem|ad_t\(1));

-- Location: LCCOMB_X76_Y19_N4
\n|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|Add0~0_combout\ = (\n|pc\(1) & (\n|pc\(0) $ (VCC))) # (!\n|pc\(1) & (\n|pc\(0) & VCC))
-- \n|Add0~1\ = CARRY((\n|pc\(1) & \n|pc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|pc\(1),
	datab => \n|pc\(0),
	datad => VCC,
	combout => \n|Add0~0_combout\,
	cout => \n|Add0~1\);

-- Location: LCCOMB_X76_Y19_N6
\n|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|Add0~2_combout\ = (\n|pc\(2) & (!\n|Add0~1\)) # (!\n|pc\(2) & ((\n|Add0~1\) # (GND)))
-- \n|Add0~3\ = CARRY((!\n|Add0~1\) # (!\n|pc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \n|pc\(2),
	datad => VCC,
	cin => \n|Add0~1\,
	combout => \n|Add0~2_combout\,
	cout => \n|Add0~3\);

-- Location: FF_X76_Y19_N7
\n|pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n|Add0~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|pc\(2));

-- Location: FF_X77_Y19_N13
\n|mem|ad_t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|pc\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|mem|ad_t\(2));

-- Location: LCCOMB_X76_Y19_N8
\n|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|Add0~4_combout\ = (\n|pc\(3) & (\n|Add0~3\ $ (GND))) # (!\n|pc\(3) & (!\n|Add0~3\ & VCC))
-- \n|Add0~5\ = CARRY((\n|pc\(3) & !\n|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \n|pc\(3),
	datad => VCC,
	cin => \n|Add0~3\,
	combout => \n|Add0~4_combout\,
	cout => \n|Add0~5\);

-- Location: FF_X76_Y19_N9
\n|pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n|Add0~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|pc\(3));

-- Location: FF_X77_Y19_N19
\n|mem|ad_t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|pc\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|mem|ad_t\(3));

-- Location: LCCOMB_X76_Y19_N10
\n|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|Add0~6_combout\ = (\n|pc\(4) & (!\n|Add0~5\)) # (!\n|pc\(4) & ((\n|Add0~5\) # (GND)))
-- \n|Add0~7\ = CARRY((!\n|Add0~5\) # (!\n|pc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \n|pc\(4),
	datad => VCC,
	cin => \n|Add0~5\,
	combout => \n|Add0~6_combout\,
	cout => \n|Add0~7\);

-- Location: FF_X76_Y19_N11
\n|pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n|Add0~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|pc\(4));

-- Location: FF_X77_Y19_N3
\n|mem|ad_t[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|pc\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|mem|ad_t\(4));

-- Location: LCCOMB_X76_Y19_N12
\n|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|Add0~8_combout\ = (\n|pc\(5) & (\n|Add0~7\ $ (GND))) # (!\n|pc\(5) & (!\n|Add0~7\ & VCC))
-- \n|Add0~9\ = CARRY((\n|pc\(5) & !\n|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \n|pc\(5),
	datad => VCC,
	cin => \n|Add0~7\,
	combout => \n|Add0~8_combout\,
	cout => \n|Add0~9\);

-- Location: FF_X76_Y19_N13
\n|pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n|Add0~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|pc\(5));

-- Location: FF_X76_Y19_N25
\n|mem|ad_t[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|pc\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|mem|ad_t\(5));

-- Location: LCCOMB_X76_Y19_N14
\n|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|Add0~10_combout\ = (\n|pc\(6) & (!\n|Add0~9\)) # (!\n|pc\(6) & ((\n|Add0~9\) # (GND)))
-- \n|Add0~11\ = CARRY((!\n|Add0~9\) # (!\n|pc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \n|pc\(6),
	datad => VCC,
	cin => \n|Add0~9\,
	combout => \n|Add0~10_combout\,
	cout => \n|Add0~11\);

-- Location: FF_X76_Y19_N15
\n|pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n|Add0~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|pc\(6));

-- Location: FF_X77_Y19_N29
\n|mem|ad_t[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|pc\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|mem|ad_t\(6));

-- Location: LCCOMB_X76_Y19_N16
\n|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|Add0~12_combout\ = \n|Add0~11\ $ (!\n|pc\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \n|pc\(7),
	cin => \n|Add0~11\,
	combout => \n|Add0~12_combout\);

-- Location: FF_X76_Y19_N17
\n|pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n|Add0~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|pc\(7));

-- Location: FF_X76_Y19_N19
\n|mem|ad_t[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|pc\(7),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|mem|ad_t\(7));

-- Location: M9K_X81_Y19_N0
\n|mem|array_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FC000F000380097002600052000C400630023C008E00240005F00160005700000005B00168005E00174005C00164000C0002C0095002580051000C00062002300067002340072001D8006A0009400240008C00220000400010005C00C4000040017001B8000D",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DSD-Project3.ram0_memory_r_5b578dd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "next_byte_gen:n|memory_r:mem|altsyncram:array_rtl_0|altsyncram_eb81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \n|mem|data_out[0]~0_combout\,
	portaaddr => \n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \n|mem|array_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X82_Y19_N16
\sm|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal0~1_combout\ = (\n|mem|array_rtl_0|auto_generated|ram_block1a5\ & (\n|mem|array_rtl_0|auto_generated|ram_block1a1\ & (\n|mem|array_rtl_0|auto_generated|ram_block1a3\ & \n|mem|array_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|array_rtl_0|auto_generated|ram_block1a5\,
	datab => \n|mem|array_rtl_0|auto_generated|ram_block1a1\,
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a3\,
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a4\,
	combout => \sm|Equal0~1_combout\);

-- Location: LCCOMB_X82_Y19_N10
\sm|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal0~0_combout\ = (\n|mem|array_rtl_0|auto_generated|ram_block1a2\ & (\n|mem|array_rtl_0|auto_generated|ram_block1a7\ & \n|mem|array_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n|mem|array_rtl_0|auto_generated|ram_block1a2\,
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a7\,
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a6\,
	combout => \sm|Equal0~0_combout\);

-- Location: LCCOMB_X82_Y19_N22
\sm|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal0~2_combout\ = (\n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\sm|Equal0~1_combout\ & \sm|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \sm|Equal0~1_combout\,
	datad => \sm|Equal0~0_combout\,
	combout => \sm|Equal0~2_combout\);

-- Location: LCCOMB_X80_Y20_N2
\sm|param_counter[7]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[7]~10_combout\ = (!\waiting~0_combout\ & ((\sm|state\(1) & (!\sm|state\(0))) # (!\sm|state\(1) & (\sm|state\(0) & !\sm|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \waiting~0_combout\,
	datac => \sm|state\(0),
	datad => \sm|Equal0~2_combout\,
	combout => \sm|param_counter[7]~10_combout\);

-- Location: FF_X80_Y20_N9
\sm|param_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[0]~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(0));

-- Location: LCCOMB_X79_Y20_N0
\sm|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add1~0_combout\ = (\sm|param_even~q\ & (\sm|param_counter\(0) & VCC)) # (!\sm|param_even~q\ & (\sm|param_counter\(0) $ (VCC)))
-- \sm|Add1~1\ = CARRY((!\sm|param_even~q\ & \sm|param_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~q\,
	datab => \sm|param_counter\(0),
	datad => VCC,
	combout => \sm|Add1~0_combout\,
	cout => \sm|Add1~1\);

-- Location: LCCOMB_X79_Y20_N2
\sm|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add1~2_combout\ = (\sm|param_counter\(1) & (!\sm|Add1~1\)) # (!\sm|param_counter\(1) & ((\sm|Add1~1\) # (GND)))
-- \sm|Add1~3\ = CARRY((!\sm|Add1~1\) # (!\sm|param_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(1),
	datad => VCC,
	cin => \sm|Add1~1\,
	combout => \sm|Add1~2_combout\,
	cout => \sm|Add1~3\);

-- Location: LCCOMB_X79_Y20_N4
\sm|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add1~4_combout\ = (\sm|param_counter\(2) & (\sm|Add1~3\ $ (GND))) # (!\sm|param_counter\(2) & (!\sm|Add1~3\ & VCC))
-- \sm|Add1~5\ = CARRY((\sm|param_counter\(2) & !\sm|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(2),
	datad => VCC,
	cin => \sm|Add1~3\,
	combout => \sm|Add1~4_combout\,
	cout => \sm|Add1~5\);

-- Location: LCCOMB_X79_Y20_N6
\sm|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add1~6_combout\ = (\sm|param_counter\(3) & (!\sm|Add1~5\)) # (!\sm|param_counter\(3) & ((\sm|Add1~5\) # (GND)))
-- \sm|Add1~7\ = CARRY((!\sm|Add1~5\) # (!\sm|param_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(3),
	datad => VCC,
	cin => \sm|Add1~5\,
	combout => \sm|Add1~6_combout\,
	cout => \sm|Add1~7\);

-- Location: LCCOMB_X79_Y20_N8
\sm|Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add1~8_combout\ = (\sm|param_counter\(4) & (\sm|Add1~7\ $ (GND))) # (!\sm|param_counter\(4) & (!\sm|Add1~7\ & VCC))
-- \sm|Add1~9\ = CARRY((\sm|param_counter\(4) & !\sm|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(4),
	datad => VCC,
	cin => \sm|Add1~7\,
	combout => \sm|Add1~8_combout\,
	cout => \sm|Add1~9\);

-- Location: LCCOMB_X79_Y20_N10
\sm|Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add1~10_combout\ = (\sm|param_counter\(5) & (!\sm|Add1~9\)) # (!\sm|param_counter\(5) & ((\sm|Add1~9\) # (GND)))
-- \sm|Add1~11\ = CARRY((!\sm|Add1~9\) # (!\sm|param_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(5),
	datad => VCC,
	cin => \sm|Add1~9\,
	combout => \sm|Add1~10_combout\,
	cout => \sm|Add1~11\);

-- Location: LCCOMB_X79_Y20_N12
\sm|Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add1~12_combout\ = (\sm|param_counter\(6) & (\sm|Add1~11\ $ (GND))) # (!\sm|param_counter\(6) & (!\sm|Add1~11\ & VCC))
-- \sm|Add1~13\ = CARRY((\sm|param_counter\(6) & !\sm|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(6),
	datad => VCC,
	cin => \sm|Add1~11\,
	combout => \sm|Add1~12_combout\,
	cout => \sm|Add1~13\);

-- Location: LCCOMB_X79_Y20_N14
\sm|Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Add1~14_combout\ = \sm|Add1~13\ $ (\sm|param_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sm|param_counter\(7),
	cin => \sm|Add1~13\,
	combout => \sm|Add1~14_combout\);

-- Location: LCCOMB_X78_Y19_N26
\sm|push_wide~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|push_wide~4_combout\ = (!\sm|Add1~14_combout\ & (\sm|param_even~0_combout\ & (!\sm|Add1~12_combout\ & \sm|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Add1~14_combout\,
	datab => \sm|param_even~0_combout\,
	datac => \sm|Add1~12_combout\,
	datad => \sm|state\(1),
	combout => \sm|push_wide~4_combout\);

-- Location: LCCOMB_X77_Y19_N18
\sm|jvm_opcode[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|jvm_opcode[0]~0_combout\ = (!\sm|state\(1) & (\sm|state\(0) & !\n|mem|state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \sm|state\(0),
	datad => \n|mem|state~q\,
	combout => \sm|jvm_opcode[0]~0_combout\);

-- Location: LCCOMB_X79_Y19_N10
\sm|jvm_opcode[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|jvm_opcode[0]~1_combout\ = (\sm|jvm_opcode[0]~0_combout\ & (((!\sm|Equal0~0_combout\) # (!\sm|Equal0~1_combout\)) # (!\n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \sm|jvm_opcode[0]~0_combout\,
	datac => \sm|Equal0~1_combout\,
	datad => \sm|Equal0~0_combout\,
	combout => \sm|jvm_opcode[0]~1_combout\);

-- Location: FF_X80_Y19_N21
\sm|jvm_opcode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a1\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|jvm_opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(1));

-- Location: LCCOMB_X80_Y19_N20
\pjvm[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pjvm[1]~5_combout\ = (\sm|state\(1) & (\sm|jvm_opcode\(1))) # (!\sm|state\(1) & ((\n|mem|array_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|state\(1),
	datac => \sm|jvm_opcode\(1),
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a1\,
	combout => \pjvm[1]~5_combout\);

-- Location: FF_X79_Y19_N5
\sm|jvm_opcode[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a7\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|jvm_opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(7));

-- Location: LCCOMB_X79_Y19_N18
\pjvm[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pjvm[7]~0_combout\ = (\sm|state\(1) & ((\sm|jvm_opcode\(7)))) # (!\sm|state\(1) & (\n|mem|array_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|array_rtl_0|auto_generated|ram_block1a7\,
	datab => \sm|jvm_opcode\(7),
	datac => \sm|state\(1),
	combout => \pjvm[7]~0_combout\);

-- Location: FF_X80_Y19_N29
\sm|jvm_opcode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a3\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|jvm_opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(3));

-- Location: LCCOMB_X80_Y19_N28
\pjvm[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pjvm[3]~4_combout\ = (\sm|state\(1) & (\sm|jvm_opcode\(3))) # (!\sm|state\(1) & ((\n|mem|array_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|state\(1),
	datac => \sm|jvm_opcode\(3),
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a3\,
	combout => \pjvm[3]~4_combout\);

-- Location: FF_X80_Y19_N3
\sm|jvm_opcode[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a6\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|jvm_opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(6));

-- Location: LCCOMB_X80_Y19_N2
\pjvm[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pjvm[6]~7_combout\ = (\sm|state\(1) & ((\sm|jvm_opcode\(6)))) # (!\sm|state\(1) & (\n|mem|array_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n|mem|array_rtl_0|auto_generated|ram_block1a6\,
	datac => \sm|jvm_opcode\(6),
	datad => \sm|state\(1),
	combout => \pjvm[6]~7_combout\);

-- Location: LCCOMB_X79_Y19_N0
\sm|jvm_opcode[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|jvm_opcode[5]~feeder_combout\ = \n|mem|array_rtl_0|auto_generated|ram_block1a5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a5\,
	combout => \sm|jvm_opcode[5]~feeder_combout\);

-- Location: FF_X79_Y19_N1
\sm|jvm_opcode[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|jvm_opcode[5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \sm|jvm_opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(5));

-- Location: LCCOMB_X79_Y19_N6
\pjvm[5]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pjvm[5]~2_combout\ = (\sm|state\(1) & (\sm|jvm_opcode\(5))) # (!\sm|state\(1) & ((\n|mem|array_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|jvm_opcode\(5),
	datac => \sm|state\(1),
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a5\,
	combout => \pjvm[5]~2_combout\);

-- Location: FF_X80_Y19_N9
\sm|jvm_opcode[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a4\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|jvm_opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(4));

-- Location: LCCOMB_X80_Y19_N8
\pjvm[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pjvm[4]~6_combout\ = (\sm|state\(1) & (\sm|jvm_opcode\(4))) # (!\sm|state\(1) & ((\n|mem|array_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|state\(1),
	datac => \sm|jvm_opcode\(4),
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a4\,
	combout => \pjvm[4]~6_combout\);

-- Location: FF_X80_Y19_N5
\sm|jvm_opcode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|jvm_opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(0));

-- Location: LCCOMB_X80_Y19_N4
\pjvm[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pjvm[0]~1_combout\ = (\sm|state\(1) & (\sm|jvm_opcode\(0))) # (!\sm|state\(1) & ((\n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|state\(1),
	datac => \sm|jvm_opcode\(0),
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \pjvm[0]~1_combout\);

-- Location: FF_X80_Y19_N7
\sm|jvm_opcode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a2\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sm|jvm_opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|jvm_opcode\(2));

-- Location: LCCOMB_X80_Y19_N6
\pjvm[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pjvm[2]~3_combout\ = (\sm|state\(1) & ((\sm|jvm_opcode\(2)))) # (!\sm|state\(1) & (\n|mem|array_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n|mem|array_rtl_0|auto_generated|ram_block1a2\,
	datac => \sm|jvm_opcode\(2),
	datad => \sm|state\(1),
	combout => \pjvm[2]~3_combout\);

-- Location: LCCOMB_X80_Y19_N12
\c|WideOr2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~9_combout\ = (\pjvm[4]~6_combout\ & (\pjvm[3]~4_combout\ & (!\pjvm[0]~1_combout\ & \pjvm[2]~3_combout\))) # (!\pjvm[4]~6_combout\ & (\pjvm[0]~1_combout\ & (\pjvm[3]~4_combout\ $ (\pjvm[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[3]~4_combout\,
	datab => \pjvm[4]~6_combout\,
	datac => \pjvm[0]~1_combout\,
	datad => \pjvm[2]~3_combout\,
	combout => \c|WideOr2~9_combout\);

-- Location: LCCOMB_X80_Y19_N26
\c|WideOr2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~10_combout\ = (\c|WideOr2~9_combout\ & ((\pjvm[3]~4_combout\ & (!\pjvm[6]~7_combout\ & \pjvm[5]~2_combout\)) # (!\pjvm[3]~4_combout\ & (\pjvm[6]~7_combout\ & !\pjvm[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[3]~4_combout\,
	datab => \pjvm[6]~7_combout\,
	datac => \pjvm[5]~2_combout\,
	datad => \c|WideOr2~9_combout\,
	combout => \c|WideOr2~10_combout\);

-- Location: LCCOMB_X80_Y19_N22
\c|WideOr2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~5_combout\ = (\pjvm[3]~4_combout\ & (!\pjvm[1]~5_combout\ & !\pjvm[2]~3_combout\)) # (!\pjvm[3]~4_combout\ & (\pjvm[1]~5_combout\ & \pjvm[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pjvm[3]~4_combout\,
	datac => \pjvm[1]~5_combout\,
	datad => \pjvm[2]~3_combout\,
	combout => \c|WideOr2~5_combout\);

-- Location: LCCOMB_X80_Y19_N30
\c|WideOr2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~8_combout\ = (!\pjvm[6]~7_combout\ & ((\sm|state\(1) & ((\sm|jvm_opcode\(4)))) # (!\sm|state\(1) & (\n|mem|array_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|array_rtl_0|auto_generated|ram_block1a4\,
	datab => \sm|jvm_opcode\(4),
	datac => \sm|state\(1),
	datad => \pjvm[6]~7_combout\,
	combout => \c|WideOr2~8_combout\);

-- Location: LCCOMB_X80_Y19_N10
\c|WideOr2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~4_combout\ = (\pjvm[3]~4_combout\ & (!\pjvm[0]~1_combout\ & (\pjvm[5]~2_combout\ & !\pjvm[2]~3_combout\))) # (!\pjvm[3]~4_combout\ & (!\pjvm[5]~2_combout\ & (\pjvm[0]~1_combout\ $ (!\pjvm[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[3]~4_combout\,
	datab => \pjvm[0]~1_combout\,
	datac => \pjvm[5]~2_combout\,
	datad => \pjvm[2]~3_combout\,
	combout => \c|WideOr2~4_combout\);

-- Location: LCCOMB_X80_Y19_N16
\c|WideOr2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~6_combout\ = (!\pjvm[7]~0_combout\ & (\c|WideOr2~8_combout\ & ((\c|WideOr2~5_combout\) # (\c|WideOr2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|WideOr2~5_combout\,
	datab => \pjvm[7]~0_combout\,
	datac => \c|WideOr2~8_combout\,
	datad => \c|WideOr2~4_combout\,
	combout => \c|WideOr2~6_combout\);

-- Location: LCCOMB_X80_Y19_N14
\c|WideOr2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr2~7_combout\ = (\c|WideOr2~6_combout\) # ((!\pjvm[1]~5_combout\ & (\pjvm[7]~0_combout\ & \c|WideOr2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[1]~5_combout\,
	datab => \pjvm[7]~0_combout\,
	datac => \c|WideOr2~10_combout\,
	datad => \c|WideOr2~6_combout\,
	combout => \c|WideOr2~7_combout\);

-- Location: LCCOMB_X82_Y19_N26
\sm|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal1~0_combout\ = (!\n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\ & (!\n|mem|array_rtl_0|auto_generated|ram_block1a1\ & (!\n|mem|array_rtl_0|auto_generated|ram_block1a3\ & !\n|mem|array_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \n|mem|array_rtl_0|auto_generated|ram_block1a1\,
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a3\,
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a4\,
	combout => \sm|Equal1~0_combout\);

-- Location: LCCOMB_X82_Y19_N4
\sm|is_wide~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|is_wide~0_combout\ = (\sm|Equal1~0_combout\ & (\sm|jvm_opcode[0]~0_combout\ & (!\n|mem|array_rtl_0|auto_generated|ram_block1a5\ & \sm|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Equal1~0_combout\,
	datab => \sm|jvm_opcode[0]~0_combout\,
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a5\,
	datad => \sm|Equal0~0_combout\,
	combout => \sm|is_wide~0_combout\);

-- Location: LCCOMB_X86_Y18_N2
\sm|nar|WideOr7~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~18_combout\ = (\sm|com_adr\(1)) # ((\sm|com_adr\(3) & ((!\sm|com_adr\(5)) # (!\sm|com_adr\(4)))) # (!\sm|com_adr\(3) & ((\sm|com_adr\(4)) # (\sm|com_adr\(5)))))

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
	combout => \sm|nar|WideOr7~18_combout\);

-- Location: LCCOMB_X86_Y18_N22
\sm|nar|WideOr7~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~14_combout\ = (\sm|com_adr\(1) & (((!\sm|com_adr\(4) & !\sm|com_adr\(5))))) # (!\sm|com_adr\(1) & ((\sm|com_adr\(3)) # ((\sm|com_adr\(4)) # (\sm|com_adr\(5)))))

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
	combout => \sm|nar|WideOr7~14_combout\);

-- Location: LCCOMB_X86_Y18_N6
\sm|nar|WideOr7~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~16_combout\ = (\sm|com_adr\(3) & (\sm|com_adr\(1) & ((\sm|com_adr\(4)) # (!\sm|com_adr\(5))))) # (!\sm|com_adr\(3) & ((\sm|com_adr\(4) & (\sm|com_adr\(5) & !\sm|com_adr\(1))) # (!\sm|com_adr\(4) & ((\sm|com_adr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr7~16_combout\);

-- Location: LCCOMB_X86_Y18_N12
\sm|nar|WideOr7~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~15_combout\ = (!\sm|com_adr\(1) & ((\sm|com_adr\(5) & ((!\sm|com_adr\(4)))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(3)) # (\sm|com_adr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr7~15_combout\);

-- Location: LCCOMB_X86_Y18_N16
\sm|nar|WideOr7~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~17_combout\ = (\sm|com_adr\(0) & (((\sm|com_adr\(2)) # (\sm|nar|WideOr7~15_combout\)))) # (!\sm|com_adr\(0) & (\sm|nar|WideOr7~16_combout\ & (!\sm|com_adr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr7~16_combout\,
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|nar|WideOr7~15_combout\,
	combout => \sm|nar|WideOr7~17_combout\);

-- Location: LCCOMB_X86_Y18_N28
\sm|nar|WideOr7~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~19_combout\ = (\sm|com_adr\(2) & ((\sm|nar|WideOr7~17_combout\ & (!\sm|nar|WideOr7~18_combout\)) # (!\sm|nar|WideOr7~17_combout\ & ((!\sm|nar|WideOr7~14_combout\))))) # (!\sm|com_adr\(2) & (((\sm|nar|WideOr7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|nar|WideOr7~18_combout\,
	datac => \sm|nar|WideOr7~14_combout\,
	datad => \sm|nar|WideOr7~17_combout\,
	combout => \sm|nar|WideOr7~19_combout\);

-- Location: LCCOMB_X86_Y18_N10
\sm|nar|WideOr7~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~20_combout\ = (!\sm|com_adr\(6) & \sm|nar|WideOr7~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr7~19_combout\,
	combout => \sm|nar|WideOr7~20_combout\);

-- Location: LCCOMB_X85_Y19_N18
\sm|nar|WideOr7~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~21_combout\ = (\sm|com_adr\(8) & ((\sm|nar|WideOr7~20_combout\) # ((!\sm|nar|WideOr4~4_combout\)))) # (!\sm|com_adr\(8) & (((\sm|nar|WideOr7~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr7~20_combout\,
	datab => \sm|nar|WideOr7~13_combout\,
	datac => \sm|nar|WideOr4~4_combout\,
	datad => \sm|com_adr\(8),
	combout => \sm|nar|WideOr7~21_combout\);

-- Location: LCCOMB_X82_Y19_N20
\sm|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux11~0_combout\ = (\sm|state\(0) & ((\sm|nar|WideOr7~21_combout\))) # (!\sm|state\(0) & (\sm|jvm_opcode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(1),
	datab => \sm|state\(0),
	datad => \sm|nar|WideOr7~21_combout\,
	combout => \sm|Mux11~0_combout\);

-- Location: LCCOMB_X79_Y19_N26
\c|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr0~0_combout\ = (\pjvm[4]~6_combout\ & (!\pjvm[6]~7_combout\ & (\pjvm[0]~1_combout\ $ (\pjvm[1]~5_combout\)))) # (!\pjvm[4]~6_combout\ & (((!\pjvm[1]~5_combout\ & \pjvm[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[0]~1_combout\,
	datab => \pjvm[4]~6_combout\,
	datac => \pjvm[1]~5_combout\,
	datad => \pjvm[6]~7_combout\,
	combout => \c|WideOr0~0_combout\);

-- Location: LCCOMB_X79_Y19_N16
\c|WideOr0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr0~1_combout\ = (!\pjvm[2]~3_combout\ & (\pjvm[5]~2_combout\ $ (\pjvm[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[5]~2_combout\,
	datac => \pjvm[2]~3_combout\,
	datad => \pjvm[6]~7_combout\,
	combout => \c|WideOr0~1_combout\);

-- Location: LCCOMB_X79_Y19_N2
\c|WideOr0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr0~2_combout\ = (\pjvm[7]~0_combout\ & (\pjvm[3]~4_combout\ & (\c|WideOr0~0_combout\ & \c|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[7]~0_combout\,
	datab => \pjvm[3]~4_combout\,
	datac => \c|WideOr0~0_combout\,
	datad => \c|WideOr0~1_combout\,
	combout => \c|WideOr0~2_combout\);

-- Location: LCCOMB_X83_Y19_N0
\c|Decoder0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|Decoder0~4_combout\ = (!\pjvm[4]~6_combout\ & (\pjvm[5]~2_combout\ & (\pjvm[1]~5_combout\ & !\pjvm[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[4]~6_combout\,
	datab => \pjvm[5]~2_combout\,
	datac => \pjvm[1]~5_combout\,
	datad => \pjvm[6]~7_combout\,
	combout => \c|Decoder0~4_combout\);

-- Location: LCCOMB_X83_Y19_N2
\c|Decoder0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|Decoder0~5_combout\ = (\pjvm[7]~0_combout\ & (!\pjvm[2]~3_combout\ & (\pjvm[3]~4_combout\ & \c|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[7]~0_combout\,
	datab => \pjvm[2]~3_combout\,
	datac => \pjvm[3]~4_combout\,
	datad => \c|Decoder0~4_combout\,
	combout => \c|Decoder0~5_combout\);

-- Location: LCCOMB_X83_Y19_N4
\sm|ShiftLeft0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|ShiftLeft0~0_combout\ = (\sm|is_wide~q\ & (((\c|WideOr0~2_combout\)))) # (!\sm|is_wide~q\ & (\pjvm[0]~1_combout\ & ((\c|Decoder0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[0]~1_combout\,
	datab => \sm|is_wide~q\,
	datac => \c|WideOr0~2_combout\,
	datad => \c|Decoder0~5_combout\,
	combout => \sm|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X79_Y19_N14
\c|WideOr1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~22_combout\ = (\pjvm[5]~2_combout\ & ((\sm|state\(1) & (\sm|jvm_opcode\(7))) # (!\sm|state\(1) & ((\n|mem|array_rtl_0|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \sm|jvm_opcode\(7),
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a7\,
	datad => \pjvm[5]~2_combout\,
	combout => \c|WideOr1~22_combout\);

-- Location: LCCOMB_X80_Y19_N0
\c|WideOr1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~17_combout\ = (\pjvm[3]~4_combout\ & ((\pjvm[1]~5_combout\) # ((\pjvm[0]~1_combout\) # (\pjvm[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[1]~5_combout\,
	datab => \pjvm[3]~4_combout\,
	datac => \pjvm[0]~1_combout\,
	datad => \pjvm[2]~3_combout\,
	combout => \c|WideOr1~17_combout\);

-- Location: LCCOMB_X80_Y19_N18
\c|WideOr1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~16_combout\ = (\pjvm[1]~5_combout\ & (((\pjvm[0]~1_combout\ & !\pjvm[2]~3_combout\)) # (!\pjvm[3]~4_combout\))) # (!\pjvm[1]~5_combout\ & (\pjvm[2]~3_combout\ $ (((\pjvm[3]~4_combout\ & !\pjvm[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[1]~5_combout\,
	datab => \pjvm[3]~4_combout\,
	datac => \pjvm[0]~1_combout\,
	datad => \pjvm[2]~3_combout\,
	combout => \c|WideOr1~16_combout\);

-- Location: LCCOMB_X79_Y19_N22
\c|WideOr1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~18_combout\ = (\c|WideOr1~22_combout\ & ((\pjvm[4]~6_combout\ & ((\c|WideOr1~16_combout\))) # (!\pjvm[4]~6_combout\ & (!\c|WideOr1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[4]~6_combout\,
	datab => \c|WideOr1~22_combout\,
	datac => \c|WideOr1~17_combout\,
	datad => \c|WideOr1~16_combout\,
	combout => \c|WideOr1~18_combout\);

-- Location: LCCOMB_X79_Y19_N4
\c|WideOr1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~20_combout\ = (!\pjvm[5]~2_combout\ & ((\sm|state\(1) & ((\sm|jvm_opcode\(7)))) # (!\sm|state\(1) & (\n|mem|array_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|array_rtl_0|auto_generated|ram_block1a7\,
	datab => \sm|state\(1),
	datac => \sm|jvm_opcode\(7),
	datad => \pjvm[5]~2_combout\,
	combout => \c|WideOr1~20_combout\);

-- Location: LCCOMB_X79_Y19_N28
\c|WideOr1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~12_combout\ = (\pjvm[1]~5_combout\ & (((\pjvm[2]~3_combout\ & \pjvm[6]~7_combout\)))) # (!\pjvm[1]~5_combout\ & (\pjvm[6]~7_combout\ $ (((!\pjvm[0]~1_combout\ & \pjvm[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[0]~1_combout\,
	datab => \pjvm[1]~5_combout\,
	datac => \pjvm[2]~3_combout\,
	datad => \pjvm[6]~7_combout\,
	combout => \c|WideOr1~12_combout\);

-- Location: LCCOMB_X79_Y19_N30
\c|WideOr1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~13_combout\ = (!\pjvm[4]~6_combout\ & (!\pjvm[3]~4_combout\ & (\c|WideOr1~20_combout\ & \c|WideOr1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[4]~6_combout\,
	datab => \pjvm[3]~4_combout\,
	datac => \c|WideOr1~20_combout\,
	datad => \c|WideOr1~12_combout\,
	combout => \c|WideOr1~13_combout\);

-- Location: LCCOMB_X79_Y19_N8
\c|WideOr1~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~21_combout\ = (!\pjvm[5]~2_combout\ & ((\sm|state\(1) & (\sm|jvm_opcode\(4))) # (!\sm|state\(1) & ((\n|mem|array_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \sm|jvm_opcode\(4),
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a4\,
	datad => \pjvm[5]~2_combout\,
	combout => \c|WideOr1~21_combout\);

-- Location: LCCOMB_X80_Y19_N24
\c|WideOr1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~14_combout\ = (\pjvm[0]~1_combout\ & (((\pjvm[3]~4_combout\) # (!\pjvm[2]~3_combout\)))) # (!\pjvm[0]~1_combout\ & ((\pjvm[1]~5_combout\ & (\pjvm[3]~4_combout\)) # (!\pjvm[1]~5_combout\ & ((\pjvm[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[1]~5_combout\,
	datab => \pjvm[3]~4_combout\,
	datac => \pjvm[0]~1_combout\,
	datad => \pjvm[2]~3_combout\,
	combout => \c|WideOr1~14_combout\);

-- Location: LCCOMB_X79_Y19_N12
\c|WideOr1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~15_combout\ = (\c|WideOr1~21_combout\ & (\c|WideOr1~14_combout\ & (\pjvm[7]~0_combout\ $ (!\pjvm[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[7]~0_combout\,
	datab => \pjvm[3]~4_combout\,
	datac => \c|WideOr1~21_combout\,
	datad => \c|WideOr1~14_combout\,
	combout => \c|WideOr1~15_combout\);

-- Location: LCCOMB_X79_Y19_N20
\c|WideOr1~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|WideOr1~19_combout\ = (\c|WideOr1~13_combout\) # ((!\pjvm[6]~7_combout\ & ((\c|WideOr1~18_combout\) # (\c|WideOr1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|WideOr1~18_combout\,
	datab => \pjvm[6]~7_combout\,
	datac => \c|WideOr1~13_combout\,
	datad => \c|WideOr1~15_combout\,
	combout => \c|WideOr1~19_combout\);

-- Location: LCCOMB_X83_Y19_N18
\sm|Equal2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal2~2_combout\ = \sm|param_counter\(1) $ (((\sm|is_wide~q\ & (\c|WideOr2~7_combout\)) # (!\sm|is_wide~q\ & ((\c|WideOr1~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(1),
	datab => \sm|is_wide~q\,
	datac => \c|WideOr2~7_combout\,
	datad => \c|WideOr1~19_combout\,
	combout => \sm|Equal2~2_combout\);

-- Location: LCCOMB_X83_Y19_N8
\sm|Equal2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal2~3_combout\ = (!\sm|Equal2~2_combout\ & (\sm|param_counter\(3) $ (!\sm|ShiftLeft0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(3),
	datac => \sm|ShiftLeft0~0_combout\,
	datad => \sm|Equal2~2_combout\,
	combout => \sm|Equal2~3_combout\);

-- Location: LCCOMB_X83_Y19_N24
\sm|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal2~0_combout\ = \sm|param_counter\(2) $ (((\sm|is_wide~q\ & ((\c|WideOr1~19_combout\))) # (!\sm|is_wide~q\ & (\c|WideOr0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|is_wide~q\,
	datab => \sm|param_counter\(2),
	datac => \c|WideOr0~2_combout\,
	datad => \c|WideOr1~19_combout\,
	combout => \sm|Equal2~0_combout\);

-- Location: LCCOMB_X83_Y19_N10
\sm|Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal2~1_combout\ = (!\sm|Equal2~0_combout\ & (\sm|param_counter\(0) $ (((\sm|is_wide~q\) # (!\c|WideOr2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|is_wide~q\,
	datab => \sm|param_counter\(0),
	datac => \c|WideOr2~7_combout\,
	datad => \sm|Equal2~0_combout\,
	combout => \sm|Equal2~1_combout\);

-- Location: LCCOMB_X83_Y19_N6
\sm|com_adr[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[0]~7_combout\ = (\sm|Equal2~6_combout\ & (\sm|param_even~q\ & (\sm|Equal2~3_combout\ & \sm|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Equal2~6_combout\,
	datab => \sm|param_even~q\,
	datac => \sm|Equal2~3_combout\,
	datad => \sm|Equal2~1_combout\,
	combout => \sm|com_adr[0]~7_combout\);

-- Location: LCCOMB_X83_Y19_N28
\sm|com_adr[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[0]~8_combout\ = (\sm|state\(1) & ((\sm|state\(0)) # ((\sm|com_adr[0]~7_combout\)))) # (!\sm|state\(1) & (\sm|state\(0) & (!\sm|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \sm|state\(0),
	datac => \sm|Equal0~2_combout\,
	datad => \sm|com_adr[0]~7_combout\,
	combout => \sm|com_adr[0]~8_combout\);

-- Location: LCCOMB_X83_Y19_N26
\sm|com_adr[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[0]~9_combout\ = (!\waiting~0_combout\ & (!\sm|com_adr[1]~3_combout\ & \sm|com_adr[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \waiting~0_combout\,
	datac => \sm|com_adr[1]~3_combout\,
	datad => \sm|com_adr[0]~8_combout\,
	combout => \sm|com_adr[0]~9_combout\);

-- Location: FF_X82_Y19_N21
\sm|com_adr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux11~0_combout\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a1\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(1));

-- Location: LCCOMB_X86_Y19_N28
\decoder|a|WideOr6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~2_combout\ = (!\sm|com_adr\(2) & (\sm|com_adr\(4) & !\sm|com_adr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr6~2_combout\);

-- Location: LCCOMB_X86_Y19_N6
\decoder|a|WideOr6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~3_combout\ = (!\sm|com_adr\(1) & (!\sm|com_adr\(3) & \decoder|a|WideOr6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datac => \sm|com_adr\(3),
	datad => \decoder|a|WideOr6~2_combout\,
	combout => \decoder|a|WideOr6~3_combout\);

-- Location: LCCOMB_X87_Y19_N16
\sm|nar|WideOr3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~8_combout\ = (!\sm|com_adr\(4) & ((\sm|com_adr\(1) & (\sm|com_adr\(0))) # (!\sm|com_adr\(1) & ((\sm|com_adr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr3~8_combout\);

-- Location: LCCOMB_X86_Y19_N8
\sm|nar|WideOr3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~9_combout\ = (!\sm|com_adr\(6) & ((\decoder|a|WideOr6~3_combout\) # ((\sm|com_adr\(3) & \sm|nar|WideOr3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~3_combout\,
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr3~8_combout\,
	combout => \sm|nar|WideOr3~9_combout\);

-- Location: LCCOMB_X85_Y17_N2
\sm|nar|WideOr3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~4_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(1) & ((!\sm|com_adr\(2)) # (!\sm|com_adr\(0)))) # (!\sm|com_adr\(1) & (\sm|com_adr\(0) $ (!\sm|com_adr\(2)))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(2) & ((\sm|com_adr\(1)) # 
-- (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr3~4_combout\);

-- Location: LCCOMB_X85_Y17_N8
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

-- Location: LCCOMB_X85_Y17_N24
\sm|nar|WideOr3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~5_combout\ = (\sm|com_adr\(1) & (((\sm|com_adr\(3) & !\sm|com_adr\(2))))) # (!\sm|com_adr\(1) & (\sm|com_adr\(2) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr3~5_combout\);

-- Location: LCCOMB_X85_Y17_N6
\sm|nar|WideOr3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~6_combout\ = (\sm|nar|WideOr4~6_combout\ & ((\sm|com_adr\(4) & (\sm|nar|WideOr3~4_combout\)) # (!\sm|com_adr\(4) & ((!\sm|nar|WideOr3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|nar|WideOr3~4_combout\,
	datac => \sm|nar|WideOr4~6_combout\,
	datad => \sm|nar|WideOr3~5_combout\,
	combout => \sm|nar|WideOr3~6_combout\);

-- Location: LCCOMB_X84_Y19_N24
\sm|nar|WideOr0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~7_combout\ = (\sm|com_adr\(6) & ((\sm|com_adr\(0)) # ((!\sm|com_adr\(1))))) # (!\sm|com_adr\(6) & (((\sm|com_adr\(1)) # (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr0~7_combout\);

-- Location: LCCOMB_X84_Y19_N22
\sm|nar|WideOr3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~0_combout\ = (\sm|com_adr\(6) & (!\sm|com_adr\(2) & (\sm|com_adr\(1) $ (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr3~0_combout\);

-- Location: LCCOMB_X84_Y19_N28
\sm|nar|WideOr3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~1_combout\ = (\sm|com_adr\(4) & ((\sm|com_adr\(5) & (!\sm|nar|WideOr0~7_combout\)) # (!\sm|com_adr\(5) & ((\sm|nar|WideOr3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|nar|WideOr0~7_combout\,
	datac => \sm|nar|WideOr3~0_combout\,
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr3~1_combout\);

-- Location: LCCOMB_X84_Y19_N30
\sm|nar|WideOr7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~3_combout\ = (\sm|com_adr\(1) & \sm|com_adr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(6),
	combout => \sm|nar|WideOr7~3_combout\);

-- Location: LCCOMB_X84_Y19_N14
\sm|nar|WideOr3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~2_combout\ = (\sm|nar|WideOr7~3_combout\ & (\sm|com_adr\(5) & (\sm|com_adr\(0) & !\sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr7~3_combout\,
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr3~2_combout\);

-- Location: LCCOMB_X85_Y19_N2
\sm|nar|WideOr3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~3_combout\ = (\sm|nar|WideOr5~9_combout\ & (!\sm|com_adr\(3) & ((\sm|nar|WideOr3~1_combout\) # (\sm|nar|WideOr3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr5~9_combout\,
	datab => \sm|nar|WideOr3~1_combout\,
	datac => \sm|com_adr\(3),
	datad => \sm|nar|WideOr3~2_combout\,
	combout => \sm|nar|WideOr3~3_combout\);

-- Location: LCCOMB_X85_Y19_N16
\sm|nar|WideOr3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~7_combout\ = (\sm|nar|WideOr3~3_combout\) # ((\sm|com_adr\(8) & ((\sm|nar|WideOr3~6_combout\) # (!\sm|nar|WideOr4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|nar|WideOr4~4_combout\,
	datac => \sm|nar|WideOr3~6_combout\,
	datad => \sm|nar|WideOr3~3_combout\,
	combout => \sm|nar|WideOr3~7_combout\);

-- Location: LCCOMB_X85_Y19_N10
\sm|nar|WideOr3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr3~10_combout\ = (\sm|nar|WideOr3~7_combout\) # ((!\sm|com_adr\(5) & (\sm|com_adr\(7) & \sm|nar|WideOr3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(7),
	datac => \sm|nar|WideOr3~9_combout\,
	datad => \sm|nar|WideOr3~7_combout\,
	combout => \sm|nar|WideOr3~10_combout\);

-- Location: LCCOMB_X84_Y19_N16
\sm|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux7~0_combout\ = (\sm|state\(0) & ((\sm|nar|WideOr3~10_combout\))) # (!\sm|state\(0) & (\sm|jvm_opcode\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(5),
	datab => \sm|nar|WideOr3~10_combout\,
	datad => \sm|state\(0),
	combout => \sm|Mux7~0_combout\);

-- Location: FF_X84_Y19_N17
\sm|com_adr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux7~0_combout\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a5\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(5));

-- Location: LCCOMB_X85_Y15_N12
\decoder|a|WideOr6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~12_combout\ = (!\sm|com_adr\(3) & !\sm|com_adr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr6~12_combout\);

-- Location: LCCOMB_X84_Y19_N4
\sm|nar|WideOr4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~3_combout\ = (!\sm|com_adr\(1) & !\sm|com_adr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr4~3_combout\);

-- Location: LCCOMB_X85_Y15_N14
\decoder|a|WideOr6~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~13_combout\ = (\decoder|a|WideOr6~12_combout\ & (!\sm|com_adr\(0) & (!\sm|com_adr\(4) & \sm|nar|WideOr4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~12_combout\,
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(4),
	datad => \sm|nar|WideOr4~3_combout\,
	combout => \decoder|a|WideOr6~13_combout\);

-- Location: LCCOMB_X85_Y15_N0
\sm|nar|WideOr4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~4_combout\ = (!\sm|com_adr\(7) & ((\decoder|a|WideOr6~13_combout\) # (!\sm|com_adr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datac => \decoder|a|WideOr6~13_combout\,
	datad => \sm|com_adr\(6),
	combout => \sm|nar|WideOr4~4_combout\);

-- Location: LCCOMB_X82_Y19_N0
\sm|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux5~0_combout\ = (\sm|state\(0) & (((\sm|com_adr\(8) & !\sm|nar|WideOr4~4_combout\)))) # (!\sm|state\(0) & (\sm|jvm_opcode\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(7),
	datab => \sm|com_adr\(8),
	datac => \sm|nar|WideOr4~4_combout\,
	datad => \sm|state\(0),
	combout => \sm|Mux5~0_combout\);

-- Location: LCCOMB_X84_Y19_N6
\sm|com_adr[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[7]~feeder_combout\ = \sm|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sm|Mux5~0_combout\,
	combout => \sm|com_adr[7]~feeder_combout\);

-- Location: FF_X84_Y19_N7
\sm|com_adr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|com_adr[7]~feeder_combout\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a7\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(7));

-- Location: LCCOMB_X85_Y16_N10
\sm|nar|WideOr5~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~9_combout\ = (!\sm|com_adr\(8) & !\sm|com_adr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(8),
	datad => \sm|com_adr\(7),
	combout => \sm|nar|WideOr5~9_combout\);

-- Location: LCCOMB_X84_Y16_N14
\sm|nar|WideOr8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~5_combout\ = (\sm|com_adr\(3) & (!\sm|com_adr\(4) & (!\sm|com_adr\(0) & !\sm|com_adr\(2)))) # (!\sm|com_adr\(3) & (\sm|com_adr\(2) & (\sm|com_adr\(4) $ (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr8~5_combout\);

-- Location: LCCOMB_X84_Y18_N2
\sm|nar|WideOr8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~6_combout\ = (\sm|com_adr\(6) & (\sm|com_adr\(3) & ((\sm|com_adr\(2)) # (\sm|com_adr\(1))))) # (!\sm|com_adr\(6) & (((\sm|com_adr\(2) & \sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr8~6_combout\);

-- Location: LCCOMB_X84_Y18_N24
\sm|nar|WideOr8~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~7_combout\ = (\sm|com_adr\(1) & ((\sm|com_adr\(6) & (!\sm|com_adr\(3) & !\sm|com_adr\(2))) # (!\sm|com_adr\(6) & (\sm|com_adr\(3) & \sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr8~7_combout\);

-- Location: LCCOMB_X84_Y18_N14
\sm|nar|WideOr8~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~8_combout\ = (\sm|com_adr\(0) & (\sm|nar|WideOr8~6_combout\ & (\sm|com_adr\(4) $ (\sm|nar|WideOr8~7_combout\)))) # (!\sm|com_adr\(0) & (\sm|nar|WideOr8~7_combout\ & (\sm|com_adr\(4) $ (\sm|nar|WideOr8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|nar|WideOr8~6_combout\,
	datac => \sm|com_adr\(0),
	datad => \sm|nar|WideOr8~7_combout\,
	combout => \sm|nar|WideOr8~8_combout\);

-- Location: LCCOMB_X85_Y16_N8
\sm|nar|WideOr8~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~9_combout\ = (\sm|com_adr\(5) & (\sm|nar|WideOr8~5_combout\ & (\sm|nar|WideOr7~3_combout\))) # (!\sm|com_adr\(5) & (((\sm|nar|WideOr8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr8~5_combout\,
	datab => \sm|nar|WideOr7~3_combout\,
	datac => \sm|com_adr\(5),
	datad => \sm|nar|WideOr8~8_combout\,
	combout => \sm|nar|WideOr8~9_combout\);

-- Location: LCCOMB_X86_Y16_N14
\sm|nar|WideOr8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~3_combout\ = (\sm|com_adr\(2) & (\sm|com_adr\(3) & (\sm|com_adr\(1) $ (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(3),
	combout => \sm|nar|WideOr8~3_combout\);

-- Location: LCCOMB_X85_Y16_N14
\sm|nar|WideOr8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~4_combout\ = (\sm|nar|WideOr4~2_combout\ & ((\decoder|a|WideOr6~3_combout\) # ((!\sm|com_adr\(4) & \sm|nar|WideOr8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|nar|WideOr4~2_combout\,
	datac => \sm|nar|WideOr8~3_combout\,
	datad => \decoder|a|WideOr6~3_combout\,
	combout => \sm|nar|WideOr8~4_combout\);

-- Location: LCCOMB_X83_Y16_N14
\sm|nar|WideOr8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~0_combout\ = (\sm|com_adr\(3) & (!\sm|com_adr\(0) & ((\sm|com_adr\(2)) # (!\sm|com_adr\(1))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(1) $ (((\sm|com_adr\(2) & \sm|com_adr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr8~0_combout\);

-- Location: LCCOMB_X83_Y16_N20
\sm|nar|WideOr8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~1_combout\ = (\sm|com_adr\(2) & (((!\sm|com_adr\(0))))) # (!\sm|com_adr\(2) & (\sm|com_adr\(3) & ((\sm|com_adr\(1)) # (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr8~1_combout\);

-- Location: LCCOMB_X83_Y16_N26
\sm|nar|WideOr8~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~11_combout\ = (\sm|nar|WideOr8~0_combout\ & (\sm|com_adr\(5) & ((!\sm|nar|WideOr8~1_combout\) # (!\sm|com_adr\(0))))) # (!\sm|nar|WideOr8~0_combout\ & (\sm|com_adr\(0) $ (((!\sm|nar|WideOr8~1_combout\) # (!\sm|com_adr\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(0),
	datac => \sm|nar|WideOr8~0_combout\,
	datad => \sm|nar|WideOr8~1_combout\,
	combout => \sm|nar|WideOr8~11_combout\);

-- Location: LCCOMB_X83_Y16_N24
\sm|nar|WideOr8~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~12_combout\ = (\sm|nar|WideOr8~11_combout\ & ((\sm|nar|WideOr8~1_combout\ $ (\sm|com_adr\(4))) # (!\sm|com_adr\(0)))) # (!\sm|nar|WideOr8~11_combout\ & (!\sm|com_adr\(0) & (\sm|nar|WideOr8~1_combout\ $ (!\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr8~11_combout\,
	datab => \sm|nar|WideOr8~1_combout\,
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr8~12_combout\);

-- Location: LCCOMB_X85_Y16_N12
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

-- Location: LCCOMB_X85_Y16_N18
\sm|nar|WideOr8~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr8~10_combout\ = (\sm|nar|WideOr8~4_combout\) # ((\sm|nar|WideOr8~2_combout\) # ((\sm|nar|WideOr5~9_combout\ & \sm|nar|WideOr8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr5~9_combout\,
	datab => \sm|nar|WideOr8~9_combout\,
	datac => \sm|nar|WideOr8~4_combout\,
	datad => \sm|nar|WideOr8~2_combout\,
	combout => \sm|nar|WideOr8~10_combout\);

-- Location: LCCOMB_X84_Y19_N26
\sm|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux12~0_combout\ = (\sm|state\(0) & ((\sm|nar|WideOr8~10_combout\))) # (!\sm|state\(0) & (\sm|jvm_opcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(0),
	datab => \sm|nar|WideOr8~10_combout\,
	datad => \sm|state\(0),
	combout => \sm|Mux12~0_combout\);

-- Location: FF_X84_Y19_N27
\sm|com_adr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux12~0_combout\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(0));

-- Location: LCCOMB_X85_Y17_N14
\sm|nar|WideOr4~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~22_combout\ = (!\sm|com_adr\(2) & (!\sm|com_adr\(0) & (!\sm|com_adr\(1) & \sm|nar|WideOr4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(1),
	datad => \sm|nar|WideOr4~2_combout\,
	combout => \sm|nar|WideOr4~22_combout\);

-- Location: LCCOMB_X85_Y17_N10
\sm|nar|WideOr4~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~17_combout\ = (\sm|com_adr\(1) & (!\sm|com_adr\(7) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(7),
	combout => \sm|nar|WideOr4~17_combout\);

-- Location: LCCOMB_X85_Y17_N12
\sm|nar|WideOr4~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~18_combout\ = (\sm|com_adr\(6) & (\sm|com_adr\(5) & \sm|nar|WideOr4~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(5),
	datad => \sm|nar|WideOr4~17_combout\,
	combout => \sm|nar|WideOr4~18_combout\);

-- Location: LCCOMB_X86_Y17_N24
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

-- Location: LCCOMB_X85_Y17_N28
\sm|nar|WideOr4~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~16_combout\ = (!\sm|com_adr\(6) & (\sm|com_adr\(7) & (!\sm|com_adr\(5) & \sm|nar|WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|com_adr\(7),
	datac => \sm|com_adr\(5),
	datad => \sm|nar|WideOr4~5_combout\,
	combout => \sm|nar|WideOr4~16_combout\);

-- Location: LCCOMB_X85_Y17_N26
\sm|nar|WideOr4~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~19_combout\ = (\sm|com_adr\(3) & (((\sm|com_adr\(4)) # (\sm|nar|WideOr4~16_combout\)))) # (!\sm|com_adr\(3) & (\sm|nar|WideOr4~18_combout\ & (!\sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~18_combout\,
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(4),
	datad => \sm|nar|WideOr4~16_combout\,
	combout => \sm|nar|WideOr4~19_combout\);

-- Location: LCCOMB_X85_Y17_N22
\sm|nar|WideOr4~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~13_combout\ = (\sm|com_adr\(0) & (\sm|com_adr\(2) & ((\sm|com_adr\(1)) # (\sm|com_adr\(7))))) # (!\sm|com_adr\(0) & (\sm|com_adr\(7) & (\sm|com_adr\(2) $ (!\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(7),
	combout => \sm|nar|WideOr4~13_combout\);

-- Location: LCCOMB_X85_Y17_N0
\sm|nar|WideOr4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~12_combout\ = (!\sm|com_adr\(2) & (!\sm|com_adr\(7) & (\sm|com_adr\(0) $ (\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(7),
	combout => \sm|nar|WideOr4~12_combout\);

-- Location: LCCOMB_X85_Y17_N16
\sm|nar|WideOr4~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~14_combout\ = (!\sm|com_adr\(5) & ((\sm|com_adr\(6) & ((\sm|nar|WideOr4~12_combout\))) # (!\sm|com_adr\(6) & (\sm|nar|WideOr4~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~13_combout\,
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr4~12_combout\,
	combout => \sm|nar|WideOr4~14_combout\);

-- Location: LCCOMB_X85_Y17_N18
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

-- Location: LCCOMB_X85_Y17_N4
\sm|nar|WideOr4~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~20_combout\ = (\sm|com_adr\(4) & ((\sm|nar|WideOr4~19_combout\ & (\sm|nar|WideOr4~22_combout\)) # (!\sm|nar|WideOr4~19_combout\ & ((\sm|nar|WideOr4~15_combout\))))) # (!\sm|com_adr\(4) & (((\sm|nar|WideOr4~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|nar|WideOr4~22_combout\,
	datac => \sm|nar|WideOr4~19_combout\,
	datad => \sm|nar|WideOr4~15_combout\,
	combout => \sm|nar|WideOr4~20_combout\);

-- Location: LCCOMB_X86_Y15_N24
\sm|nar|WideOr4~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~7_combout\ = (\sm|com_adr\(2) & ((\sm|com_adr\(1) $ (\sm|com_adr\(0))) # (!\sm|com_adr\(3)))) # (!\sm|com_adr\(2) & (\sm|com_adr\(3) & ((\sm|com_adr\(1)) # (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr4~7_combout\);

-- Location: LCCOMB_X86_Y15_N16
\decoder|a|WideOr5~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~13_combout\ = (\sm|com_adr\(2) & (\sm|com_adr\(3) & (!\sm|com_adr\(4) & \sm|com_adr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr5~13_combout\);

-- Location: LCCOMB_X86_Y15_N22
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

-- Location: LCCOMB_X86_Y15_N20
\sm|nar|WideOr4~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~9_combout\ = (\sm|com_adr\(2) & (\sm|com_adr\(0) & ((\sm|com_adr\(3)) # (!\sm|com_adr\(1))))) # (!\sm|com_adr\(2) & (!\sm|com_adr\(3) & (\sm|com_adr\(1) & !\sm|com_adr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr4~9_combout\);

-- Location: LCCOMB_X86_Y15_N18
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

-- Location: LCCOMB_X86_Y19_N18
\sm|nar|WideOr4~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~11_combout\ = (\sm|com_adr\(8) & (((!\sm|com_adr\(6) & \sm|nar|WideOr4~10_combout\)) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|com_adr\(6),
	datac => \sm|nar|WideOr4~4_combout\,
	datad => \sm|nar|WideOr4~10_combout\,
	combout => \sm|nar|WideOr4~11_combout\);

-- Location: LCCOMB_X85_Y19_N28
\sm|nar|WideOr4~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~21_combout\ = (\sm|nar|WideOr4~11_combout\) # ((!\sm|com_adr\(8) & \sm|nar|WideOr4~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datac => \sm|nar|WideOr4~20_combout\,
	datad => \sm|nar|WideOr4~11_combout\,
	combout => \sm|nar|WideOr4~21_combout\);

-- Location: LCCOMB_X83_Y19_N12
\sm|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux8~0_combout\ = (\sm|state\(0) & ((\sm|nar|WideOr4~21_combout\))) # (!\sm|state\(0) & (\sm|jvm_opcode\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(4),
	datab => \sm|state\(0),
	datad => \sm|nar|WideOr4~21_combout\,
	combout => \sm|Mux8~0_combout\);

-- Location: FF_X83_Y19_N13
\sm|com_adr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux8~0_combout\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a4\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(4));

-- Location: LCCOMB_X86_Y19_N20
\sm|nar|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr2~0_combout\ = (\sm|com_adr\(2) & (\sm|com_adr\(4) & \sm|com_adr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr2~0_combout\);

-- Location: LCCOMB_X86_Y19_N10
\sm|nar|WideOr2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr2~1_combout\ = (\sm|com_adr\(1) & (\sm|com_adr\(3) & (!\sm|com_adr\(6) & \sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr2~1_combout\);

-- Location: LCCOMB_X86_Y19_N4
\sm|nar|WideOr2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr2~2_combout\ = (\sm|com_adr\(8) & (((\sm|nar|WideOr2~0_combout\ & \sm|nar|WideOr2~1_combout\)) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|nar|WideOr2~0_combout\,
	datac => \sm|nar|WideOr4~4_combout\,
	datad => \sm|nar|WideOr2~1_combout\,
	combout => \sm|nar|WideOr2~2_combout\);

-- Location: LCCOMB_X83_Y19_N14
\sm|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux6~0_combout\ = (\sm|state\(0) & ((\sm|nar|WideOr2~2_combout\))) # (!\sm|state\(0) & (\sm|jvm_opcode\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(6),
	datab => \sm|state\(0),
	datad => \sm|nar|WideOr2~2_combout\,
	combout => \sm|Mux6~0_combout\);

-- Location: FF_X83_Y19_N15
\sm|com_adr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux6~0_combout\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a6\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(6));

-- Location: LCCOMB_X85_Y16_N16
\sm|nar|WideOr4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr4~2_combout\ = (!\sm|com_adr\(6) & (!\sm|com_adr\(5) & \sm|com_adr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(7),
	combout => \sm|nar|WideOr4~2_combout\);

-- Location: LCCOMB_X84_Y18_N18
\sm|nar|WideOr5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~12_combout\ = (\sm|com_adr\(6) & (\sm|com_adr\(3) & (\sm|com_adr\(2) & !\sm|com_adr\(5)))) # (!\sm|com_adr\(6) & (!\sm|com_adr\(3) & (!\sm|com_adr\(2) & \sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr5~12_combout\);

-- Location: LCCOMB_X84_Y18_N16
\sm|nar|WideOr5~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~13_combout\ = (\sm|com_adr\(4) & (\sm|nar|WideOr5~12_combout\ & (\sm|com_adr\(0) & !\sm|com_adr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|nar|WideOr5~12_combout\,
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr5~13_combout\);

-- Location: LCCOMB_X85_Y18_N16
\sm|nar|WideOr5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~4_combout\ = (\sm|com_adr\(4) & (!\sm|com_adr\(5) & (\sm|com_adr\(3) $ (!\sm|com_adr\(2))))) # (!\sm|com_adr\(4) & (\sm|com_adr\(3) & (\sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr5~4_combout\);

-- Location: LCCOMB_X85_Y18_N30
\sm|nar|WideOr5~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~24_combout\ = (\sm|com_adr\(1) & (!\sm|com_adr\(0) & (\sm|com_adr\(6) & \sm|nar|WideOr5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr5~4_combout\,
	combout => \sm|nar|WideOr5~24_combout\);

-- Location: LCCOMB_X85_Y18_N14
\decoder|a|WideOr3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~13_combout\ = (\sm|com_adr\(1) & ((\sm|com_adr\(3) & (\sm|com_adr\(0) & !\sm|com_adr\(5))) # (!\sm|com_adr\(3) & ((\sm|com_adr\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(1),
	combout => \decoder|a|WideOr3~13_combout\);

-- Location: LCCOMB_X85_Y18_N10
\sm|nar|WideOr5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~10_combout\ = (!\sm|com_adr\(4) & (\decoder|a|WideOr3~13_combout\ & !\sm|com_adr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(4),
	datac => \decoder|a|WideOr3~13_combout\,
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr5~10_combout\);

-- Location: LCCOMB_X85_Y18_N8
\sm|nar|WideOr5~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~11_combout\ = (\sm|com_adr\(2) & ((\sm|com_adr\(5) & (!\sm|com_adr\(1) & !\sm|com_adr\(3))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr5~11_combout\);

-- Location: LCCOMB_X85_Y18_N18
\sm|nar|WideOr6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~0_combout\ = (!\sm|com_adr\(6) & ((\sm|nar|WideOr5~10_combout\) # ((\sm|nar|WideOr5~11_combout\ & !\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr5~10_combout\,
	datab => \sm|com_adr\(6),
	datac => \sm|nar|WideOr5~11_combout\,
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr6~0_combout\);

-- Location: LCCOMB_X85_Y18_N0
\sm|nar|WideOr5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~14_combout\ = (\sm|nar|WideOr5~9_combout\ & ((\sm|nar|WideOr5~13_combout\) # ((\sm|nar|WideOr5~24_combout\) # (\sm|nar|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr5~13_combout\,
	datab => \sm|nar|WideOr5~9_combout\,
	datac => \sm|nar|WideOr5~24_combout\,
	datad => \sm|nar|WideOr6~0_combout\,
	combout => \sm|nar|WideOr5~14_combout\);

-- Location: LCCOMB_X86_Y19_N16
\sm|nar|WideOr5~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~21_combout\ = (\sm|com_adr\(4) & (!\sm|com_adr\(2) & (!\sm|com_adr\(1) & !\sm|com_adr\(0)))) # (!\sm|com_adr\(4) & (\sm|com_adr\(2) $ (((\sm|com_adr\(1) & \sm|com_adr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr5~21_combout\);

-- Location: LCCOMB_X86_Y19_N14
\sm|nar|WideOr5~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~22_combout\ = (\sm|com_adr\(3) & (((\sm|nar|WideOr5~21_combout\)))) # (!\sm|com_adr\(3) & (\sm|com_adr\(1) & ((\sm|nar|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|nar|WideOr5~21_combout\,
	datac => \sm|com_adr\(3),
	datad => \sm|nar|WideOr2~0_combout\,
	combout => \sm|nar|WideOr5~22_combout\);

-- Location: LCCOMB_X87_Y19_N22
\sm|nar|WideOr5~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~16_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(5) & ((\sm|com_adr\(1)) # (!\sm|com_adr\(4)))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(4)))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(5) & ((\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr5~16_combout\);

-- Location: LCCOMB_X87_Y19_N0
\sm|nar|WideOr5~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~15_combout\ = (\sm|com_adr\(5) & (\sm|com_adr\(3) $ (((\sm|com_adr\(1)) # (!\sm|com_adr\(4)))))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(1)) # ((!\sm|com_adr\(3) & \sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr5~15_combout\);

-- Location: LCCOMB_X87_Y19_N24
\sm|nar|WideOr5~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~17_combout\ = (\sm|com_adr\(0) & (\sm|nar|WideOr5~16_combout\ $ (\sm|nar|WideOr5~15_combout\))) # (!\sm|com_adr\(0) & (\sm|nar|WideOr5~16_combout\ & \sm|nar|WideOr5~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(0),
	datac => \sm|nar|WideOr5~16_combout\,
	datad => \sm|nar|WideOr5~15_combout\,
	combout => \sm|nar|WideOr5~17_combout\);

-- Location: LCCOMB_X87_Y19_N6
\sm|nar|WideOr5~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~18_combout\ = (\sm|com_adr\(3) & ((\sm|nar|WideOr5~16_combout\) # ((!\sm|com_adr\(0) & \sm|nar|WideOr5~15_combout\)))) # (!\sm|com_adr\(3) & (\sm|nar|WideOr5~16_combout\ & ((\sm|com_adr\(0)) # (\sm|nar|WideOr5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(0),
	datac => \sm|nar|WideOr5~16_combout\,
	datad => \sm|nar|WideOr5~15_combout\,
	combout => \sm|nar|WideOr5~18_combout\);

-- Location: LCCOMB_X87_Y19_N12
\sm|nar|WideOr5~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~19_combout\ = \sm|nar|WideOr5~18_combout\ $ (((\sm|com_adr\(2) & \sm|nar|WideOr5~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|nar|WideOr5~17_combout\,
	datad => \sm|nar|WideOr5~18_combout\,
	combout => \sm|nar|WideOr5~19_combout\);

-- Location: LCCOMB_X86_Y19_N2
\sm|nar|WideOr5~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~20_combout\ = (\sm|com_adr\(8) & (((!\sm|com_adr\(6) & \sm|nar|WideOr5~19_combout\)) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|nar|WideOr5~19_combout\,
	datac => \sm|nar|WideOr4~4_combout\,
	datad => \sm|com_adr\(8),
	combout => \sm|nar|WideOr5~20_combout\);

-- Location: LCCOMB_X85_Y19_N0
\sm|nar|WideOr5~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr5~23_combout\ = (\sm|nar|WideOr5~14_combout\) # ((\sm|nar|WideOr5~20_combout\) # ((\sm|nar|WideOr4~2_combout\ & \sm|nar|WideOr5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~2_combout\,
	datab => \sm|nar|WideOr5~14_combout\,
	datac => \sm|nar|WideOr5~22_combout\,
	datad => \sm|nar|WideOr5~20_combout\,
	combout => \sm|nar|WideOr5~23_combout\);

-- Location: LCCOMB_X82_Y19_N2
\sm|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux9~0_combout\ = (\sm|state\(0) & ((\sm|nar|WideOr5~23_combout\))) # (!\sm|state\(0) & (\sm|jvm_opcode\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(3),
	datab => \sm|nar|WideOr5~23_combout\,
	datad => \sm|state\(0),
	combout => \sm|Mux9~0_combout\);

-- Location: FF_X82_Y19_N3
\sm|com_adr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux9~0_combout\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a3\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(3));

-- Location: LCCOMB_X86_Y18_N24
\sm|nar|WideOr6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~4_combout\ = (\sm|com_adr\(6) & (\sm|com_adr\(0) & !\sm|com_adr\(5))) # (!\sm|com_adr\(6) & (!\sm|com_adr\(0) & \sm|com_adr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr6~4_combout\);

-- Location: LCCOMB_X85_Y18_N12
\sm|nar|WideOr6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~5_combout\ = (!\sm|com_adr\(3) & (\sm|com_adr\(4) & (\sm|nar|WideOr4~3_combout\ & \sm|nar|WideOr6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(4),
	datac => \sm|nar|WideOr4~3_combout\,
	datad => \sm|nar|WideOr6~4_combout\,
	combout => \sm|nar|WideOr6~5_combout\);

-- Location: LCCOMB_X85_Y18_N24
\sm|nar|WideOr6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~2_combout\ = (\sm|com_adr\(5) & ((\sm|com_adr\(3)) # ((\sm|com_adr\(0))))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(0) & (!\sm|com_adr\(3))) # (!\sm|com_adr\(0) & ((\sm|com_adr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr6~2_combout\);

-- Location: LCCOMB_X85_Y18_N26
\sm|nar|WideOr6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~1_combout\ = (\sm|com_adr\(3) & (\sm|com_adr\(5) & (!\sm|com_adr\(0) & !\sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr6~1_combout\);

-- Location: LCCOMB_X85_Y18_N6
\sm|nar|WideOr6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~3_combout\ = (\sm|nar|WideOr7~3_combout\ & ((\sm|nar|WideOr6~1_combout\) # ((!\sm|nar|WideOr6~2_combout\ & \sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr7~3_combout\,
	datab => \sm|nar|WideOr6~2_combout\,
	datac => \sm|nar|WideOr6~1_combout\,
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr6~3_combout\);

-- Location: LCCOMB_X85_Y18_N2
\sm|nar|WideOr6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~6_combout\ = (\sm|nar|WideOr5~9_combout\ & ((\sm|nar|WideOr6~5_combout\) # ((\sm|nar|WideOr6~0_combout\) # (\sm|nar|WideOr6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr6~5_combout\,
	datab => \sm|nar|WideOr6~0_combout\,
	datac => \sm|nar|WideOr5~9_combout\,
	datad => \sm|nar|WideOr6~3_combout\,
	combout => \sm|nar|WideOr6~6_combout\);

-- Location: LCCOMB_X86_Y19_N12
\sm|nar|WideOr6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~14_combout\ = (\sm|com_adr\(0) & (\sm|com_adr\(1) $ (((!\sm|com_adr\(5) & \sm|com_adr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr6~14_combout\);

-- Location: LCCOMB_X86_Y19_N30
\sm|nar|WideOr6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~10_combout\ = (\sm|com_adr\(0) & ((\sm|com_adr\(1)) # ((\sm|com_adr\(5) & !\sm|com_adr\(3))))) # (!\sm|com_adr\(0) & (\sm|com_adr\(5) & (!\sm|com_adr\(3) & \sm|com_adr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr6~10_combout\);

-- Location: LCCOMB_X87_Y19_N18
\sm|nar|WideOr6~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~11_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(5) & ((!\sm|com_adr\(0)))) # (!\sm|com_adr\(5) & (\sm|com_adr\(1))))) # (!\sm|com_adr\(3) & ((\sm|com_adr\(1) & (\sm|com_adr\(5) & !\sm|com_adr\(0))) # (!\sm|com_adr\(1) & 
-- ((\sm|com_adr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr6~11_combout\);

-- Location: LCCOMB_X87_Y19_N8
\sm|nar|WideOr6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~12_combout\ = (\sm|com_adr\(5) & (\sm|com_adr\(1) & ((\sm|com_adr\(3)) # (\sm|com_adr\(0))))) # (!\sm|com_adr\(5) & (\sm|com_adr\(3) & (!\sm|com_adr\(1) & \sm|com_adr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr6~12_combout\);

-- Location: LCCOMB_X87_Y19_N26
\sm|nar|WideOr6~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~13_combout\ = (\sm|com_adr\(2) & ((\sm|nar|WideOr6~11_combout\) # ((\sm|com_adr\(4))))) # (!\sm|com_adr\(2) & (((\sm|nar|WideOr6~12_combout\ & !\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|nar|WideOr6~11_combout\,
	datac => \sm|nar|WideOr6~12_combout\,
	datad => \sm|com_adr\(4),
	combout => \sm|nar|WideOr6~13_combout\);

-- Location: LCCOMB_X86_Y19_N22
\sm|nar|WideOr6~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~15_combout\ = (\sm|com_adr\(4) & ((\sm|nar|WideOr6~13_combout\ & (!\sm|nar|WideOr6~14_combout\)) # (!\sm|nar|WideOr6~13_combout\ & ((\sm|nar|WideOr6~10_combout\))))) # (!\sm|com_adr\(4) & (((\sm|nar|WideOr6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr6~14_combout\,
	datab => \sm|com_adr\(4),
	datac => \sm|nar|WideOr6~10_combout\,
	datad => \sm|nar|WideOr6~13_combout\,
	combout => \sm|nar|WideOr6~15_combout\);

-- Location: LCCOMB_X85_Y19_N14
\sm|nar|WideOr6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~16_combout\ = (\sm|com_adr\(8) & (((!\sm|com_adr\(6) & \sm|nar|WideOr6~15_combout\)) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|nar|WideOr4~4_combout\,
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr6~15_combout\,
	combout => \sm|nar|WideOr6~16_combout\);

-- Location: LCCOMB_X86_Y19_N0
\sm|nar|WideOr6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~7_combout\ = (\sm|com_adr\(3) & (((!\sm|com_adr\(4) & !\sm|com_adr\(0))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(4) & ((\sm|com_adr\(1)) # (\sm|com_adr\(0)))))

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
	combout => \sm|nar|WideOr6~7_combout\);

-- Location: LCCOMB_X86_Y19_N26
\sm|nar|WideOr6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~8_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(1) & (!\sm|com_adr\(4) & \sm|com_adr\(0))) # (!\sm|com_adr\(1) & (\sm|com_adr\(4) & !\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(0),
	combout => \sm|nar|WideOr6~8_combout\);

-- Location: LCCOMB_X86_Y19_N24
\sm|nar|WideOr6~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~9_combout\ = (\sm|nar|WideOr4~2_combout\ & ((\sm|com_adr\(2) & (\sm|nar|WideOr6~7_combout\)) # (!\sm|com_adr\(2) & ((\sm|nar|WideOr6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~2_combout\,
	datab => \sm|nar|WideOr6~7_combout\,
	datac => \sm|nar|WideOr6~8_combout\,
	datad => \sm|com_adr\(2),
	combout => \sm|nar|WideOr6~9_combout\);

-- Location: LCCOMB_X85_Y19_N12
\sm|nar|WideOr6~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr6~17_combout\ = (\sm|nar|WideOr6~6_combout\) # ((\sm|nar|WideOr6~16_combout\) # (\sm|nar|WideOr6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|nar|WideOr6~6_combout\,
	datac => \sm|nar|WideOr6~16_combout\,
	datad => \sm|nar|WideOr6~9_combout\,
	combout => \sm|nar|WideOr6~17_combout\);

-- Location: LCCOMB_X84_Y19_N0
\sm|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux10~0_combout\ = (\sm|state\(0) & (\sm|nar|WideOr6~17_combout\)) # (!\sm|state\(0) & ((\sm|jvm_opcode\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr6~17_combout\,
	datab => \sm|jvm_opcode\(2),
	datad => \sm|state\(0),
	combout => \sm|Mux10~0_combout\);

-- Location: FF_X84_Y19_N1
\sm|com_adr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|Mux10~0_combout\,
	asdata => \n|mem|array_rtl_0|auto_generated|ram_block1a2\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \sm|ALT_INV_state\(1),
	ena => \sm|com_adr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(2));

-- Location: LCCOMB_X84_Y16_N10
\sm|nar|WideOr7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~8_combout\ = (\sm|com_adr\(3) & (!\sm|com_adr\(6) & (!\sm|com_adr\(0) & \sm|com_adr\(7)))) # (!\sm|com_adr\(3) & (\sm|com_adr\(6) & (\sm|com_adr\(0) & !\sm|com_adr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(7),
	combout => \sm|nar|WideOr7~8_combout\);

-- Location: LCCOMB_X84_Y16_N28
\sm|nar|WideOr7~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~9_combout\ = (!\sm|com_adr\(1) & (\sm|com_adr\(4) & \sm|nar|WideOr7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(4),
	datad => \sm|nar|WideOr7~8_combout\,
	combout => \sm|nar|WideOr7~9_combout\);

-- Location: LCCOMB_X84_Y16_N0
\sm|nar|WideOr7~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~23_combout\ = (\sm|com_adr\(1) & ((\sm|com_adr\(0) & (!\sm|com_adr\(3))) # (!\sm|com_adr\(0) & ((\sm|com_adr\(7)))))) # (!\sm|com_adr\(1) & (\sm|com_adr\(7) & ((\sm|com_adr\(3)) # (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(7),
	combout => \sm|nar|WideOr7~23_combout\);

-- Location: LCCOMB_X84_Y16_N26
\sm|nar|WideOr7~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~24_combout\ = (!\sm|com_adr\(6) & (\sm|nar|WideOr7~23_combout\ & (\sm|com_adr\(3) $ (\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(4),
	datad => \sm|nar|WideOr7~23_combout\,
	combout => \sm|nar|WideOr7~24_combout\);

-- Location: LCCOMB_X84_Y16_N16
\sm|nar|WideOr7~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~7_combout\ = (!\sm|com_adr\(7) & (\sm|com_adr\(3) & ((\sm|com_adr\(1)) # (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr7~7_combout\);

-- Location: LCCOMB_X84_Y16_N6
\sm|nar|WideOr7~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~22_combout\ = (\sm|nar|WideOr7~24_combout\) # ((\sm|com_adr\(6) & (\sm|com_adr\(4) & \sm|nar|WideOr7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr7~24_combout\,
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(4),
	datad => \sm|nar|WideOr7~7_combout\,
	combout => \sm|nar|WideOr7~22_combout\);

-- Location: LCCOMB_X84_Y16_N22
\sm|nar|WideOr7~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~10_combout\ = (\sm|com_adr\(2) & (((\sm|com_adr\(5)) # (\sm|nar|WideOr7~22_combout\)))) # (!\sm|com_adr\(2) & (\sm|nar|WideOr7~9_combout\ & (!\sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|nar|WideOr7~9_combout\,
	datac => \sm|com_adr\(5),
	datad => \sm|nar|WideOr7~22_combout\,
	combout => \sm|nar|WideOr7~10_combout\);

-- Location: LCCOMB_X84_Y16_N2
\sm|nar|WideOr7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~4_combout\ = (!\sm|com_adr\(0) & (\sm|com_adr\(1) & (!\sm|com_adr\(4) & \sm|com_adr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(6),
	combout => \sm|nar|WideOr7~4_combout\);

-- Location: LCCOMB_X84_Y16_N24
\sm|nar|WideOr7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~5_combout\ = (\sm|com_adr\(6) & (\sm|com_adr\(1) & (\sm|com_adr\(4) $ (\sm|com_adr\(0))))) # (!\sm|com_adr\(6) & (\sm|com_adr\(4) & (\sm|com_adr\(0) & !\sm|com_adr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr7~5_combout\);

-- Location: LCCOMB_X84_Y16_N30
\sm|nar|WideOr7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~6_combout\ = (!\sm|com_adr\(7) & ((\sm|com_adr\(3) & (\sm|nar|WideOr7~4_combout\)) # (!\sm|com_adr\(3) & ((\sm|nar|WideOr7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|nar|WideOr7~4_combout\,
	datac => \sm|com_adr\(3),
	datad => \sm|nar|WideOr7~5_combout\,
	combout => \sm|nar|WideOr7~6_combout\);

-- Location: LCCOMB_X84_Y16_N4
\sm|nar|WideOr7~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~11_combout\ = (\sm|com_adr\(6) & (\sm|com_adr\(1) & (\sm|com_adr\(3) $ (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr7~11_combout\);

-- Location: LCCOMB_X84_Y16_N18
\sm|nar|WideOr7~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~12_combout\ = (!\sm|com_adr\(4) & (\sm|nar|WideOr7~11_combout\ & !\sm|com_adr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(4),
	datac => \sm|nar|WideOr7~11_combout\,
	datad => \sm|com_adr\(7),
	combout => \sm|nar|WideOr7~12_combout\);

-- Location: LCCOMB_X84_Y16_N20
\sm|nar|WideOr7~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~13_combout\ = (\sm|nar|WideOr7~10_combout\ & (((\sm|nar|WideOr7~12_combout\)) # (!\sm|com_adr\(5)))) # (!\sm|nar|WideOr7~10_combout\ & (\sm|com_adr\(5) & (\sm|nar|WideOr7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr7~10_combout\,
	datab => \sm|com_adr\(5),
	datac => \sm|nar|WideOr7~6_combout\,
	datad => \sm|nar|WideOr7~12_combout\,
	combout => \sm|nar|WideOr7~13_combout\);

-- Location: LCCOMB_X85_Y19_N22
\sm|com_adr~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr~1_combout\ = (\sm|com_adr\(8) & (((\sm|nar|WideOr4~4_combout\ & !\sm|nar|WideOr7~20_combout\)))) # (!\sm|com_adr\(8) & (!\sm|nar|WideOr7~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|nar|WideOr7~13_combout\,
	datac => \sm|nar|WideOr4~4_combout\,
	datad => \sm|nar|WideOr7~20_combout\,
	combout => \sm|com_adr~1_combout\);

-- Location: LCCOMB_X85_Y19_N8
\sm|com_adr~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr~0_combout\ = (!\sm|nar|WideOr3~10_combout\ & (!\sm|nar|WideOr5~23_combout\ & (!\sm|nar|WideOr8~10_combout\ & !\sm|nar|WideOr6~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr3~10_combout\,
	datab => \sm|nar|WideOr5~23_combout\,
	datac => \sm|nar|WideOr8~10_combout\,
	datad => \sm|nar|WideOr6~17_combout\,
	combout => \sm|com_adr~0_combout\);

-- Location: LCCOMB_X85_Y19_N26
\sm|com_adr~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr~2_combout\ = (\sm|com_adr~1_combout\ & (!\sm|nar|WideOr4~21_combout\ & (\sm|com_adr~0_combout\ & !\sm|nar|WideOr2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr~1_combout\,
	datab => \sm|nar|WideOr4~21_combout\,
	datac => \sm|com_adr~0_combout\,
	datad => \sm|nar|WideOr2~2_combout\,
	combout => \sm|com_adr~2_combout\);

-- Location: LCCOMB_X84_Y19_N12
\sm|com_adr[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[1]~3_combout\ = (\sm|nar|WideOr0~20_combout\ & (\sm|state\(0) & (\sm|state\(1) & \sm|com_adr~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr0~20_combout\,
	datab => \sm|state\(0),
	datac => \sm|state\(1),
	datad => \sm|com_adr~2_combout\,
	combout => \sm|com_adr[1]~3_combout\);

-- Location: LCCOMB_X84_Y19_N20
\sm|is_wide~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|is_wide~1_combout\ = (\sm|is_wide~0_combout\) # ((\sm|is_wide~q\ & ((\waiting~0_combout\) # (!\sm|com_adr[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|is_wide~0_combout\,
	datab => \waiting~0_combout\,
	datac => \sm|is_wide~q\,
	datad => \sm|com_adr[1]~3_combout\,
	combout => \sm|is_wide~1_combout\);

-- Location: FF_X84_Y19_N21
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

-- Location: LCCOMB_X78_Y19_N16
\sm|Equal3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal3~2_combout\ = \sm|Add1~2_combout\ $ (((\sm|is_wide~q\ & (\c|WideOr2~7_combout\)) # (!\sm|is_wide~q\ & ((\c|WideOr1~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|WideOr2~7_combout\,
	datab => \sm|is_wide~q\,
	datac => \sm|Add1~2_combout\,
	datad => \c|WideOr1~19_combout\,
	combout => \sm|Equal3~2_combout\);

-- Location: LCCOMB_X82_Y19_N14
\c|Decoder0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|Decoder0~7_combout\ = (\c|Decoder0~5_combout\ & ((\sm|state\(1) & ((!\sm|jvm_opcode\(0)))) # (!\sm|state\(1) & (!\n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \sm|jvm_opcode\(0),
	datac => \sm|state\(1),
	datad => \c|Decoder0~5_combout\,
	combout => \c|Decoder0~7_combout\);

-- Location: LCCOMB_X82_Y19_N28
\sm|Equal3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal3~1_combout\ = \sm|Add1~8_combout\ $ (((\c|Decoder0~5_combout\ & (\sm|is_wide~q\ $ (!\pjvm[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Add1~8_combout\,
	datab => \sm|is_wide~q\,
	datac => \pjvm[0]~1_combout\,
	datad => \c|Decoder0~5_combout\,
	combout => \sm|Equal3~1_combout\);

-- Location: LCCOMB_X82_Y19_N30
\sm|push_wide~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|push_wide~5_combout\ = (!\sm|Equal3~1_combout\ & (\sm|Add1~10_combout\ $ (((!\c|Decoder0~7_combout\) # (!\sm|is_wide~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Add1~10_combout\,
	datab => \sm|is_wide~q\,
	datac => \c|Decoder0~7_combout\,
	datad => \sm|Equal3~1_combout\,
	combout => \sm|push_wide~5_combout\);

-- Location: LCCOMB_X78_Y19_N10
\c|Decoder0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|Decoder0~6_combout\ = (\c|Decoder0~5_combout\ & ((\sm|state\(1) & (\sm|jvm_opcode\(0))) # (!\sm|state\(1) & ((\n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(0),
	datab => \sm|state\(1),
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \c|Decoder0~5_combout\,
	combout => \c|Decoder0~6_combout\);

-- Location: LCCOMB_X78_Y19_N6
\sm|Equal3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal3~3_combout\ = \sm|Add1~6_combout\ $ (((\sm|is_wide~q\ & (\c|WideOr0~2_combout\)) # (!\sm|is_wide~q\ & ((\c|Decoder0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Add1~6_combout\,
	datab => \sm|is_wide~q\,
	datac => \c|WideOr0~2_combout\,
	datad => \c|Decoder0~6_combout\,
	combout => \sm|Equal3~3_combout\);

-- Location: LCCOMB_X78_Y19_N8
\sm|push_wide~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|push_wide~6_combout\ = (\sm|push_wide~4_combout\ & (!\sm|Equal3~2_combout\ & (\sm|push_wide~5_combout\ & !\sm|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|push_wide~4_combout\,
	datab => \sm|Equal3~2_combout\,
	datac => \sm|push_wide~5_combout\,
	datad => \sm|Equal3~3_combout\,
	combout => \sm|push_wide~6_combout\);

-- Location: LCCOMB_X82_Y19_N12
\sm|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|WideOr0~0_combout\ = (\n|mem|array_rtl_0|auto_generated|ram_block1a2\) # ((\n|mem|array_rtl_0|auto_generated|ram_block1a7\) # (\n|mem|array_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n|mem|array_rtl_0|auto_generated|ram_block1a2\,
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a7\,
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a6\,
	combout => \sm|WideOr0~0_combout\);

-- Location: LCCOMB_X82_Y19_N8
\sm|state[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|state[0]~1_combout\ = ((\n|mem|array_rtl_0|auto_generated|ram_block1a5\) # ((\sm|WideOr0~0_combout\ & !\sm|Equal0~0_combout\))) # (!\sm|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Equal1~0_combout\,
	datab => \sm|WideOr0~0_combout\,
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a5\,
	datad => \sm|Equal0~0_combout\,
	combout => \sm|state[0]~1_combout\);

-- Location: LCCOMB_X82_Y19_N18
\sm|push_wide~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|push_wide~0_combout\ = (\sm|state[0]~1_combout\ & (((!\sm|Equal0~0_combout\) # (!\sm|Equal0~1_combout\)) # (!\n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \sm|Equal0~1_combout\,
	datac => \sm|state[0]~1_combout\,
	datad => \sm|Equal0~0_combout\,
	combout => \sm|push_wide~0_combout\);

-- Location: LCCOMB_X77_Y19_N24
WideOr2 : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\c|WideOr1~19_combout\) # ((\c|WideOr2~7_combout\) # ((\c|WideOr0~2_combout\) # (\c|Decoder0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|WideOr1~19_combout\,
	datab => \c|WideOr2~7_combout\,
	datac => \c|WideOr0~2_combout\,
	datad => \c|Decoder0~5_combout\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X77_Y19_N10
\sm|param_even~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_even~1_combout\ = (\sm|param_even~0_combout\ & ((\sm|state\(1)) # ((\sm|push_wide~0_combout\ & \WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~0_combout\,
	datab => \sm|push_wide~0_combout\,
	datac => \sm|state\(1),
	datad => \WideOr2~combout\,
	combout => \sm|param_even~1_combout\);

-- Location: LCCOMB_X78_Y19_N30
\sm|push_wide~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|push_wide~1_combout\ = (\sm|push_wide~q\ & (((\sm|state\(1) & !\sm|state~0_combout\)) # (!\sm|param_even~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|push_wide~q\,
	datab => \sm|state\(1),
	datac => \sm|state~0_combout\,
	datad => \sm|param_even~1_combout\,
	combout => \sm|push_wide~1_combout\);

-- Location: LCCOMB_X78_Y19_N0
\sm|Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal3~0_combout\ = \sm|Add1~4_combout\ $ (((\sm|is_wide~q\ & ((\c|WideOr1~19_combout\))) # (!\sm|is_wide~q\ & (\c|WideOr0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|WideOr0~2_combout\,
	datab => \sm|is_wide~q\,
	datac => \c|WideOr1~19_combout\,
	datad => \sm|Add1~4_combout\,
	combout => \sm|Equal3~0_combout\);

-- Location: LCCOMB_X78_Y19_N18
\sm|push_wide~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|push_wide~2_combout\ = (!\sm|Equal3~0_combout\ & (\sm|Add1~0_combout\ $ (((\sm|is_wide~q\) # (!\c|WideOr2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|WideOr2~7_combout\,
	datab => \sm|is_wide~q\,
	datac => \sm|Add1~0_combout\,
	datad => \sm|Equal3~0_combout\,
	combout => \sm|push_wide~2_combout\);

-- Location: LCCOMB_X78_Y19_N24
\sm|push_wide~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|push_wide~3_combout\ = (\sm|push_wide~2_combout\ & (((!\sm|Equal2~3_combout\) # (!\sm|Equal2~1_combout\)) # (!\sm|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Equal2~6_combout\,
	datab => \sm|push_wide~2_combout\,
	datac => \sm|Equal2~1_combout\,
	datad => \sm|Equal2~3_combout\,
	combout => \sm|push_wide~3_combout\);

-- Location: LCCOMB_X78_Y19_N4
\sm|push_wide~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|push_wide~7_combout\ = (\sm|push_wide~1_combout\) # ((\sm|push_wide~6_combout\ & \sm|push_wide~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|push_wide~6_combout\,
	datac => \sm|push_wide~1_combout\,
	datad => \sm|push_wide~3_combout\,
	combout => \sm|push_wide~7_combout\);

-- Location: FF_X78_Y19_N5
\sm|push_wide\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|push_wide~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|push_wide~q\);

-- Location: LCCOMB_X77_Y19_N4
\n|mem|always0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|mem|always0~0_combout\ = (\n|mem|state~q\ & (((!\sm|state\(1))))) # (!\n|mem|state~q\ & (!\sm|push_wide~q\ & (\sm|state\(1) & \sm|param_even~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|push_wide~q\,
	datab => \n|mem|state~q\,
	datac => \sm|state\(1),
	datad => \sm|param_even~q\,
	combout => \n|mem|always0~0_combout\);

-- Location: LCCOMB_X77_Y19_N26
\n|mem|always0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|mem|always0~1_combout\ = (\sm|state\(1) & (!\sm|state\(0) & (\n|mem|always0~0_combout\ & \WideOr2~combout\))) # (!\sm|state\(1) & (!\n|mem|always0~0_combout\ & ((\WideOr2~combout\) # (!\sm|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \sm|state\(0),
	datac => \n|mem|always0~0_combout\,
	datad => \WideOr2~combout\,
	combout => \n|mem|always0~1_combout\);

-- Location: FF_X76_Y19_N29
\n|pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n|pc[0]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|pc\(0));

-- Location: FF_X76_Y19_N5
\n|pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n|Add0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \n|mem|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|pc\(1));

-- Location: LCCOMB_X76_Y19_N18
\n|mem|counter[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|mem|counter[1]~1_combout\ = (\n|mem|always0~1_combout\ & (\n|pc\(1))) # (!\n|mem|always0~1_combout\ & ((\n|mem|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|pc\(1),
	datab => \n|mem|counter\(1),
	datad => \n|mem|always0~1_combout\,
	combout => \n|mem|counter[1]~1_combout\);

-- Location: LCCOMB_X76_Y19_N26
\n|mem|counter[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|mem|counter[1]~2_combout\ = (\n|mem|state~q\ & ((\n|mem|counter\(0) & (\n|mem|counter\(1))) # (!\n|mem|counter\(0) & (!\n|mem|counter\(1) & \n|mem|counter[1]~1_combout\)))) # (!\n|mem|state~q\ & (((\n|mem|counter[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|counter\(0),
	datab => \n|mem|state~q\,
	datac => \n|mem|counter\(1),
	datad => \n|mem|counter[1]~1_combout\,
	combout => \n|mem|counter[1]~2_combout\);

-- Location: FF_X76_Y19_N27
\n|mem|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n|mem|counter[1]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|mem|counter\(1));

-- Location: LCCOMB_X76_Y19_N0
\n|mem|counter[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|mem|counter[1]~0_combout\ = (\n|mem|state~q\ & ((\n|mem|counter\(0)) # (\n|mem|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n|mem|state~q\,
	datac => \n|mem|counter\(0),
	datad => \n|mem|counter\(1),
	combout => \n|mem|counter[1]~0_combout\);

-- Location: LCCOMB_X76_Y19_N22
\n|mem|counter[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|mem|counter[0]~3_combout\ = (\n|mem|counter[1]~0_combout\ & (((!\n|mem|counter\(0))))) # (!\n|mem|counter[1]~0_combout\ & ((\n|mem|always0~1_combout\ & (\n|pc\(0))) # (!\n|mem|always0~1_combout\ & ((\n|mem|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|counter[1]~0_combout\,
	datab => \n|pc\(0),
	datac => \n|mem|counter\(0),
	datad => \n|mem|always0~1_combout\,
	combout => \n|mem|counter[0]~3_combout\);

-- Location: FF_X76_Y19_N23
\n|mem|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n|mem|counter[0]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|mem|counter\(0));

-- Location: LCCOMB_X76_Y19_N20
\n|mem|state~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n|mem|state~2_combout\ = (\n|mem|always0~1_combout\) # ((\n|mem|state~q\ & ((\n|mem|counter\(0)) # (\n|mem|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|counter\(0),
	datab => \n|mem|counter\(1),
	datac => \n|mem|state~q\,
	datad => \n|mem|always0~1_combout\,
	combout => \n|mem|state~2_combout\);

-- Location: FF_X76_Y19_N21
\n|mem|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n|mem|state~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n|mem|state~q\);

-- Location: LCCOMB_X77_Y19_N30
\waiting~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \waiting~0_combout\ = (\n|mem|state~q\) # ((!\oram_ready~input_o\ & (\sm|state\(1) & \sm|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oram_ready~input_o\,
	datab => \n|mem|state~q\,
	datac => \sm|state\(1),
	datad => \sm|state\(0),
	combout => \waiting~0_combout\);

-- Location: LCCOMB_X82_Y19_N6
\sm|com_adr~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr~4_combout\ = (\n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\sm|Equal0~1_combout\ & (\sm|com_adr\(8) & \sm|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \sm|Equal0~1_combout\,
	datac => \sm|com_adr\(8),
	datad => \sm|Equal0~0_combout\,
	combout => \sm|com_adr~4_combout\);

-- Location: LCCOMB_X84_Y19_N8
\sm|com_adr~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr~5_combout\ = ((\sm|com_adr\(8) & \sm|com_adr~2_combout\)) # (!\sm|nar|WideOr0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datac => \sm|nar|WideOr0~20_combout\,
	datad => \sm|com_adr~2_combout\,
	combout => \sm|com_adr~5_combout\);

-- Location: LCCOMB_X84_Y19_N18
\sm|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux4~0_combout\ = (\sm|state\(0) & (((\sm|state\(1))))) # (!\sm|state\(0) & (\sm|com_adr\(8) & ((!\sm|state~0_combout\) # (!\sm|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|state\(0),
	datac => \sm|state\(1),
	datad => \sm|state~0_combout\,
	combout => \sm|Mux4~0_combout\);

-- Location: LCCOMB_X84_Y19_N2
\sm|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Mux4~1_combout\ = (\sm|state\(0) & ((\sm|Mux4~0_combout\ & ((\sm|com_adr~5_combout\))) # (!\sm|Mux4~0_combout\ & (\sm|com_adr~4_combout\)))) # (!\sm|state\(0) & (((\sm|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr~4_combout\,
	datab => \sm|state\(0),
	datac => \sm|com_adr~5_combout\,
	datad => \sm|Mux4~0_combout\,
	combout => \sm|Mux4~1_combout\);

-- Location: LCCOMB_X84_Y19_N10
\sm|com_adr[8]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|com_adr[8]~6_combout\ = (\waiting~0_combout\ & (\sm|com_adr\(8))) # (!\waiting~0_combout\ & ((\sm|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \waiting~0_combout\,
	datac => \sm|com_adr\(8),
	datad => \sm|Mux4~1_combout\,
	combout => \sm|com_adr[8]~6_combout\);

-- Location: FF_X84_Y19_N11
\sm|com_adr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|com_adr[8]~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|com_adr\(8));

-- Location: LCCOMB_X84_Y16_N8
\sm|nar|WideOr0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~8_combout\ = (\sm|com_adr\(7)) # ((\sm|com_adr\(4) & \sm|nar|WideOr0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(4),
	datac => \sm|nar|WideOr0~7_combout\,
	datad => \sm|com_adr\(7),
	combout => \sm|nar|WideOr0~8_combout\);

-- Location: LCCOMB_X84_Y16_N12
\sm|nar|WideOr0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~9_combout\ = (\sm|com_adr\(5) & ((\sm|nar|WideOr0~8_combout\) # ((\sm|com_adr\(3) & !\sm|nar|WideOr7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|nar|WideOr0~8_combout\,
	datad => \sm|nar|WideOr7~4_combout\,
	combout => \sm|nar|WideOr0~9_combout\);

-- Location: LCCOMB_X84_Y18_N6
\sm|nar|WideOr0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~10_combout\ = (\sm|com_adr\(4) & (((!\sm|com_adr\(0) & !\sm|com_adr\(1))))) # (!\sm|com_adr\(4) & (\sm|com_adr\(3) & (\sm|com_adr\(0) & \sm|com_adr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr0~10_combout\);

-- Location: LCCOMB_X84_Y18_N12
\sm|nar|WideOr0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~11_combout\ = (\sm|com_adr\(4) & (!\sm|com_adr\(3) & ((\sm|com_adr\(0)) # (\sm|com_adr\(1))))) # (!\sm|com_adr\(4) & (\sm|com_adr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr0~11_combout\);

-- Location: LCCOMB_X84_Y18_N22
\sm|nar|WideOr0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~12_combout\ = (\sm|com_adr\(6)) # ((\sm|com_adr\(2) & ((!\sm|nar|WideOr0~11_combout\))) # (!\sm|com_adr\(2) & (!\sm|nar|WideOr0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr0~10_combout\,
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(2),
	datad => \sm|nar|WideOr0~11_combout\,
	combout => \sm|nar|WideOr0~12_combout\);

-- Location: LCCOMB_X84_Y18_N30
\sm|nar|WideOr0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~3_combout\ = (\sm|com_adr\(6) & (!\sm|com_adr\(2) & (\sm|com_adr\(0) $ (\sm|com_adr\(1))))) # (!\sm|com_adr\(6) & (\sm|com_adr\(2) & (\sm|com_adr\(0) & \sm|com_adr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr0~3_combout\);

-- Location: LCCOMB_X84_Y18_N8
\sm|nar|WideOr0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~4_combout\ = (\sm|com_adr\(6) & (\sm|com_adr\(1) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(2))))) # (!\sm|com_adr\(6) & (\sm|com_adr\(2) $ (((\sm|com_adr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr0~4_combout\);

-- Location: LCCOMB_X84_Y18_N10
\sm|nar|WideOr0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~5_combout\ = (\sm|com_adr\(4) & (!\sm|nar|WideOr0~3_combout\ & ((!\sm|com_adr\(5))))) # (!\sm|com_adr\(4) & (((!\sm|com_adr\(5)) # (!\sm|nar|WideOr0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr0~3_combout\,
	datab => \sm|nar|WideOr0~4_combout\,
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr0~5_combout\);

-- Location: LCCOMB_X84_Y18_N20
\sm|nar|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~0_combout\ = (\sm|com_adr\(6) & ((\sm|com_adr\(0)) # (\sm|com_adr\(1)))) # (!\sm|com_adr\(6) & (\sm|com_adr\(0) & \sm|com_adr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \sm|nar|WideOr0~0_combout\);

-- Location: LCCOMB_X84_Y18_N26
\sm|nar|WideOr0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~1_combout\ = (\sm|com_adr\(2) & (\sm|com_adr\(4) $ ((!\sm|com_adr\(6))))) # (!\sm|com_adr\(2) & (\sm|nar|WideOr0~0_combout\ & (\sm|com_adr\(4) $ (!\sm|com_adr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr0~0_combout\,
	combout => \sm|nar|WideOr0~1_combout\);

-- Location: LCCOMB_X84_Y18_N4
\sm|nar|WideOr0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~2_combout\ = (!\sm|nar|WideOr0~1_combout\ & ((\sm|com_adr\(4) & (\sm|com_adr\(3))) # (!\sm|com_adr\(4) & ((!\sm|com_adr\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(3),
	datac => \sm|nar|WideOr0~1_combout\,
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr0~2_combout\);

-- Location: LCCOMB_X84_Y18_N28
\sm|nar|WideOr0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~6_combout\ = (!\sm|com_adr\(7) & ((\sm|nar|WideOr0~2_combout\) # ((\sm|nar|WideOr0~5_combout\ & !\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr0~5_combout\,
	datab => \sm|com_adr\(3),
	datac => \sm|nar|WideOr0~2_combout\,
	datad => \sm|com_adr\(7),
	combout => \sm|nar|WideOr0~6_combout\);

-- Location: LCCOMB_X84_Y18_N0
\sm|nar|WideOr0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~13_combout\ = (\sm|nar|WideOr0~9_combout\) # ((\sm|nar|WideOr0~6_combout\) # ((\sm|com_adr\(7) & \sm|nar|WideOr0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr0~9_combout\,
	datab => \sm|com_adr\(7),
	datac => \sm|nar|WideOr0~12_combout\,
	datad => \sm|nar|WideOr0~6_combout\,
	combout => \sm|nar|WideOr0~13_combout\);

-- Location: LCCOMB_X85_Y15_N2
\sm|nar|WideOr0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~14_combout\ = (\sm|com_adr\(2) & ((\sm|com_adr\(4)) # ((\sm|com_adr\(0))))) # (!\sm|com_adr\(2) & (!\sm|com_adr\(5) & (\sm|com_adr\(4) $ (\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr0~14_combout\);

-- Location: LCCOMB_X85_Y15_N24
\sm|nar|WideOr0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~15_combout\ = (\sm|com_adr\(4) & ((\sm|com_adr\(2) $ (!\sm|com_adr\(5))) # (!\sm|com_adr\(0)))) # (!\sm|com_adr\(4) & (\sm|com_adr\(5) & ((!\sm|com_adr\(2)) # (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \sm|nar|WideOr0~15_combout\);

-- Location: LCCOMB_X85_Y15_N22
\sm|nar|WideOr0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~16_combout\ = (\sm|com_adr\(1) & ((\sm|nar|WideOr0~14_combout\ & ((\sm|com_adr\(2)) # (!\sm|nar|WideOr0~15_combout\))) # (!\sm|nar|WideOr0~14_combout\ & ((\sm|nar|WideOr0~15_combout\) # (!\sm|com_adr\(2)))))) # (!\sm|com_adr\(1) & 
-- (\sm|nar|WideOr0~15_combout\ & ((\sm|nar|WideOr0~14_combout\) # (!\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|nar|WideOr0~14_combout\,
	datac => \sm|com_adr\(2),
	datad => \sm|nar|WideOr0~15_combout\,
	combout => \sm|nar|WideOr0~16_combout\);

-- Location: LCCOMB_X85_Y15_N20
\sm|nar|WideOr0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~17_combout\ = (\sm|nar|WideOr0~14_combout\ & (!\sm|com_adr\(2) & ((\sm|com_adr\(1)) # (!\sm|nar|WideOr0~15_combout\)))) # (!\sm|nar|WideOr0~14_combout\ & (\sm|com_adr\(2) & (\sm|com_adr\(1) $ (\sm|nar|WideOr0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|nar|WideOr0~14_combout\,
	datac => \sm|com_adr\(2),
	datad => \sm|nar|WideOr0~15_combout\,
	combout => \sm|nar|WideOr0~17_combout\);

-- Location: LCCOMB_X85_Y15_N6
\sm|nar|WideOr0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~18_combout\ = \sm|nar|WideOr0~17_combout\ $ (((\sm|com_adr\(3) & !\sm|nar|WideOr0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(3),
	datac => \sm|nar|WideOr0~16_combout\,
	datad => \sm|nar|WideOr0~17_combout\,
	combout => \sm|nar|WideOr0~18_combout\);

-- Location: LCCOMB_X85_Y15_N4
\sm|nar|WideOr0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~19_combout\ = (\sm|com_adr\(6) & ((\decoder|a|WideOr6~13_combout\))) # (!\sm|com_adr\(6) & (\sm|nar|WideOr0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr0~18_combout\,
	datab => \decoder|a|WideOr6~13_combout\,
	datad => \sm|com_adr\(6),
	combout => \sm|nar|WideOr0~19_combout\);

-- Location: LCCOMB_X85_Y19_N30
\sm|nar|WideOr0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr0~20_combout\ = (\sm|com_adr\(8) & (!\sm|com_adr\(7) & ((\sm|nar|WideOr0~19_combout\)))) # (!\sm|com_adr\(8) & (((\sm|nar|WideOr0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|com_adr\(7),
	datac => \sm|nar|WideOr0~13_combout\,
	datad => \sm|nar|WideOr0~19_combout\,
	combout => \sm|nar|WideOr0~20_combout\);

-- Location: LCCOMB_X85_Y19_N4
\sm|WideOr2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|WideOr2~combout\ = (!\sm|com_adr~2_combout\) # (!\sm|nar|WideOr0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr0~20_combout\,
	datac => \sm|com_adr~2_combout\,
	combout => \sm|WideOr2~combout\);

-- Location: LCCOMB_X77_Y19_N14
\sm|state[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|state[1]~6_combout\ = (!\n|mem|state~q\ & (\sm|state\(0) & ((\oram_ready~input_o\) # (!\sm|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oram_ready~input_o\,
	datab => \n|mem|state~q\,
	datac => \sm|state\(1),
	datad => \sm|state\(0),
	combout => \sm|state[1]~6_combout\);

-- Location: LCCOMB_X77_Y19_N28
\sm|state[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|state[1]~5_combout\ = (!\sm|state\(1) & (\sm|state[0]~1_combout\ & !\sm|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \sm|state[0]~1_combout\,
	datad => \sm|Equal0~2_combout\,
	combout => \sm|state[1]~5_combout\);

-- Location: LCCOMB_X77_Y19_N20
\sm|state[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|state[1]~7_combout\ = (\sm|state[1]~6_combout\ & ((\sm|state[1]~5_combout\) # ((\sm|WideOr2~combout\ & \sm|state\(1))))) # (!\sm|state[1]~6_combout\ & (((\sm|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|WideOr2~combout\,
	datab => \sm|state[1]~6_combout\,
	datac => \sm|state\(1),
	datad => \sm|state[1]~5_combout\,
	combout => \sm|state[1]~7_combout\);

-- Location: FF_X77_Y19_N21
\sm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|state[1]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|state\(1));

-- Location: LCCOMB_X77_Y19_N12
\sm|param_even~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_even~0_combout\ = (!\n|mem|state~q\ & (\sm|state\(1) $ (\sm|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \sm|state\(0),
	datad => \n|mem|state~q\,
	combout => \sm|param_even~0_combout\);

-- Location: LCCOMB_X77_Y19_N0
\sm|param_even~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_even~2_combout\ = (\sm|param_even~q\ & (((!\sm|param_even~1_combout\)))) # (!\sm|param_even~q\ & (\sm|param_even~0_combout\ & (\sm|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~0_combout\,
	datab => \sm|state\(1),
	datac => \sm|param_even~q\,
	datad => \sm|param_even~1_combout\,
	combout => \sm|param_even~2_combout\);

-- Location: FF_X77_Y19_N1
\sm|param_even\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_even~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_even~q\);

-- Location: LCCOMB_X80_Y20_N10
\sm|param_counter[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[1]~11_combout\ = (\sm|param_counter\(1) & (!\sm|param_counter[0]~9\)) # (!\sm|param_counter\(1) & ((\sm|param_counter[0]~9\) # (GND)))
-- \sm|param_counter[1]~12\ = CARRY((!\sm|param_counter[0]~9\) # (!\sm|param_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(1),
	datad => VCC,
	cin => \sm|param_counter[0]~9\,
	combout => \sm|param_counter[1]~11_combout\,
	cout => \sm|param_counter[1]~12\);

-- Location: FF_X80_Y20_N11
\sm|param_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[1]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(1));

-- Location: LCCOMB_X80_Y20_N12
\sm|param_counter[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[2]~13_combout\ = (\sm|param_counter\(2) & (\sm|param_counter[1]~12\ $ (GND))) # (!\sm|param_counter\(2) & (!\sm|param_counter[1]~12\ & VCC))
-- \sm|param_counter[2]~14\ = CARRY((\sm|param_counter\(2) & !\sm|param_counter[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(2),
	datad => VCC,
	cin => \sm|param_counter[1]~12\,
	combout => \sm|param_counter[2]~13_combout\,
	cout => \sm|param_counter[2]~14\);

-- Location: FF_X80_Y20_N13
\sm|param_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[2]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(2));

-- Location: LCCOMB_X80_Y20_N14
\sm|param_counter[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[3]~15_combout\ = (\sm|param_counter\(3) & (!\sm|param_counter[2]~14\)) # (!\sm|param_counter\(3) & ((\sm|param_counter[2]~14\) # (GND)))
-- \sm|param_counter[3]~16\ = CARRY((!\sm|param_counter[2]~14\) # (!\sm|param_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(3),
	datad => VCC,
	cin => \sm|param_counter[2]~14\,
	combout => \sm|param_counter[3]~15_combout\,
	cout => \sm|param_counter[3]~16\);

-- Location: FF_X80_Y20_N15
\sm|param_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[3]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(3));

-- Location: LCCOMB_X80_Y20_N16
\sm|param_counter[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[4]~17_combout\ = (\sm|param_counter\(4) & (\sm|param_counter[3]~16\ $ (GND))) # (!\sm|param_counter\(4) & (!\sm|param_counter[3]~16\ & VCC))
-- \sm|param_counter[4]~18\ = CARRY((\sm|param_counter\(4) & !\sm|param_counter[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(4),
	datad => VCC,
	cin => \sm|param_counter[3]~16\,
	combout => \sm|param_counter[4]~17_combout\,
	cout => \sm|param_counter[4]~18\);

-- Location: FF_X80_Y20_N17
\sm|param_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[4]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(4));

-- Location: LCCOMB_X80_Y20_N18
\sm|param_counter[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[5]~19_combout\ = (\sm|param_counter\(5) & (!\sm|param_counter[4]~18\)) # (!\sm|param_counter\(5) & ((\sm|param_counter[4]~18\) # (GND)))
-- \sm|param_counter[5]~20\ = CARRY((!\sm|param_counter[4]~18\) # (!\sm|param_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(5),
	datad => VCC,
	cin => \sm|param_counter[4]~18\,
	combout => \sm|param_counter[5]~19_combout\,
	cout => \sm|param_counter[5]~20\);

-- Location: FF_X80_Y20_N19
\sm|param_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[5]~19_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(5));

-- Location: LCCOMB_X80_Y20_N20
\sm|param_counter[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[6]~21_combout\ = (\sm|param_counter\(6) & (\sm|param_counter[5]~20\ $ (GND))) # (!\sm|param_counter\(6) & (!\sm|param_counter[5]~20\ & VCC))
-- \sm|param_counter[6]~22\ = CARRY((\sm|param_counter\(6) & !\sm|param_counter[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sm|param_counter\(6),
	datad => VCC,
	cin => \sm|param_counter[5]~20\,
	combout => \sm|param_counter[6]~21_combout\,
	cout => \sm|param_counter[6]~22\);

-- Location: FF_X80_Y20_N21
\sm|param_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[6]~21_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(6));

-- Location: LCCOMB_X80_Y20_N22
\sm|param_counter[7]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|param_counter[7]~23_combout\ = \sm|param_counter\(7) $ (\sm|param_counter[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(7),
	cin => \sm|param_counter[6]~22\,
	combout => \sm|param_counter[7]~23_combout\);

-- Location: FF_X80_Y20_N23
\sm|param_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|param_counter[7]~23_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \sm|ALT_INV_state\(1),
	ena => \sm|param_counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|param_counter\(7));

-- Location: LCCOMB_X83_Y19_N30
\sm|Equal2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal2~4_combout\ = \sm|param_counter\(4) $ (((\c|Decoder0~5_combout\ & (\pjvm[0]~1_combout\ $ (!\sm|is_wide~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[0]~1_combout\,
	datab => \sm|param_counter\(4),
	datac => \sm|is_wide~q\,
	datad => \c|Decoder0~5_combout\,
	combout => \sm|Equal2~4_combout\);

-- Location: LCCOMB_X83_Y19_N16
\sm|Equal2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal2~5_combout\ = \sm|param_counter\(5) $ (((!\pjvm[0]~1_combout\ & (\sm|is_wide~q\ & \c|Decoder0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pjvm[0]~1_combout\,
	datab => \sm|is_wide~q\,
	datac => \sm|param_counter\(5),
	datad => \c|Decoder0~5_combout\,
	combout => \sm|Equal2~5_combout\);

-- Location: LCCOMB_X83_Y19_N22
\sm|Equal2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|Equal2~6_combout\ = (!\sm|param_counter\(7) & (!\sm|param_counter\(6) & (!\sm|Equal2~4_combout\ & !\sm|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_counter\(7),
	datab => \sm|param_counter\(6),
	datac => \sm|Equal2~4_combout\,
	datad => \sm|Equal2~5_combout\,
	combout => \sm|Equal2~6_combout\);

-- Location: LCCOMB_X83_Y19_N20
\sm|state~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|state~0_combout\ = (\sm|Equal2~6_combout\ & (\sm|param_even~q\ & (\sm|Equal2~3_combout\ & \sm|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Equal2~6_combout\,
	datab => \sm|param_even~q\,
	datac => \sm|Equal2~3_combout\,
	datad => \sm|Equal2~1_combout\,
	combout => \sm|state~0_combout\);

-- Location: LCCOMB_X85_Y19_N6
\sm|state[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|state[0]~2_combout\ = (\sm|Equal0~2_combout\) # ((\sm|state[0]~1_combout\ & !\WideOr2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state[0]~1_combout\,
	datab => \sm|Equal0~2_combout\,
	datad => \WideOr2~combout\,
	combout => \sm|state[0]~2_combout\);

-- Location: LCCOMB_X85_Y19_N20
\sm|state[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|state[0]~3_combout\ = (\sm|state\(1) & (((\sm|WideOr2~combout\)) # (!\sm|state\(0)))) # (!\sm|state\(1) & (\sm|state\(0) & ((\sm|state[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \sm|state\(0),
	datac => \sm|WideOr2~combout\,
	datad => \sm|state[0]~2_combout\,
	combout => \sm|state[0]~3_combout\);

-- Location: LCCOMB_X85_Y19_N24
\sm|state[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|state[0]~4_combout\ = (\waiting~0_combout\ & (((\sm|state\(0))))) # (!\waiting~0_combout\ & ((\sm|state\(0) & ((\sm|state[0]~3_combout\))) # (!\sm|state\(0) & ((\sm|state~0_combout\) # (!\sm|state[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state~0_combout\,
	datab => \waiting~0_combout\,
	datac => \sm|state\(0),
	datad => \sm|state[0]~3_combout\,
	combout => \sm|state[0]~4_combout\);

-- Location: FF_X85_Y19_N25
\sm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|state[0]~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|state\(0));

-- Location: LCCOMB_X77_Y19_N16
\sm|q_select~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|q_select~0_combout\ = (\sm|state\(1) & (((\sm|state~0_combout\)))) # (!\sm|state\(1) & (!\WideOr2~combout\ & (\sm|push_wide~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state\(1),
	datab => \WideOr2~combout\,
	datac => \sm|push_wide~0_combout\,
	datad => \sm|state~0_combout\,
	combout => \sm|q_select~0_combout\);

-- Location: LCCOMB_X77_Y19_N6
\sm|q_select~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|q_select~1_combout\ = (\sm|param_even~0_combout\ & ((\sm|q_select~0_combout\) # ((!\sm|state[1]~5_combout\ & \sm|q_select~q\)))) # (!\sm|param_even~0_combout\ & (((\sm|q_select~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~0_combout\,
	datab => \sm|state[1]~5_combout\,
	datac => \sm|q_select~q\,
	datad => \sm|q_select~0_combout\,
	combout => \sm|q_select~1_combout\);

-- Location: FF_X77_Y19_N7
\sm|q_select\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sm|q_select~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sm|q_select~q\);

-- Location: LCCOMB_X78_Y19_N22
\push_inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~0_combout\ = (!\sm|param_even~q\ & ((\sm|push_wide~q\ & ((\sm|is_wide~q\))) # (!\sm|push_wide~q\ & (\n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~q\,
	datab => \sm|push_wide~q\,
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \sm|is_wide~q\,
	combout => \push_inst~0_combout\);

-- Location: LCCOMB_X86_Y14_N0
\decoder|a|WideOr0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr0~2_combout\ = (!\sm|com_adr\(0) & (\sm|com_adr\(3) & ((\sm|com_adr\(2)) # (\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr0~2_combout\);

-- Location: LCCOMB_X86_Y14_N26
\decoder|a|WideOr0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr0~3_combout\ = (\sm|com_adr\(5) & (\decoder|a|WideOr0~2_combout\ & \sm|com_adr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \decoder|a|WideOr0~2_combout\,
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr0~3_combout\);

-- Location: LCCOMB_X86_Y14_N14
\decoder|a|WideOr0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr0~4_combout\ = (\sm|com_adr\(8) & ((\sm|com_adr\(6)) # ((\sm|com_adr\(7)) # (\decoder|a|WideOr0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|com_adr\(7),
	datac => \decoder|a|WideOr0~3_combout\,
	datad => \sm|com_adr\(8),
	combout => \decoder|a|WideOr0~4_combout\);

-- Location: LCCOMB_X86_Y14_N12
\decoder|a|WideOr5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~0_combout\ = (!\sm|com_adr\(6) & !\sm|com_adr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(6),
	datad => \sm|com_adr\(7),
	combout => \decoder|a|WideOr5~0_combout\);

-- Location: LCCOMB_X83_Y16_N16
\decoder|a|WideOr5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~3_combout\ = (\sm|com_adr\(4) & (((!\sm|com_adr\(5))) # (!\sm|com_adr\(0)))) # (!\sm|com_adr\(4) & (\sm|com_adr\(0) & (\sm|com_adr\(2) & \sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr5~3_combout\);

-- Location: LCCOMB_X83_Y16_N30
\decoder|a|WideOr5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~2_combout\ = (\sm|com_adr\(4) & (((!\sm|com_adr\(5))) # (!\sm|com_adr\(0)))) # (!\sm|com_adr\(4) & (\sm|com_adr\(2) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr5~2_combout\);

-- Location: LCCOMB_X83_Y16_N18
\decoder|a|WideOr5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~4_combout\ = (\sm|com_adr\(1) & (((\decoder|a|WideOr5~2_combout\) # (\sm|com_adr\(3))))) # (!\sm|com_adr\(1) & (!\decoder|a|WideOr5~3_combout\ & ((!\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \decoder|a|WideOr5~3_combout\,
	datac => \decoder|a|WideOr5~2_combout\,
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr5~4_combout\);

-- Location: LCCOMB_X83_Y16_N4
\decoder|a|WideOr5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~1_combout\ = (\sm|com_adr\(5) & ((\sm|com_adr\(4) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(2)))) # (!\sm|com_adr\(4) & (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr5~1_combout\);

-- Location: LCCOMB_X83_Y16_N12
\decoder|a|WideOr5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~5_combout\ = (\sm|com_adr\(4) & ((\sm|com_adr\(0) & ((\sm|com_adr\(5)) # (!\sm|com_adr\(2)))) # (!\sm|com_adr\(0) & ((!\sm|com_adr\(5)))))) # (!\sm|com_adr\(4) & (\sm|com_adr\(0) $ ((\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr5~5_combout\);

-- Location: LCCOMB_X83_Y16_N22
\decoder|a|WideOr5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~6_combout\ = (\sm|com_adr\(3) & ((\decoder|a|WideOr5~4_combout\ & ((\decoder|a|WideOr5~5_combout\))) # (!\decoder|a|WideOr5~4_combout\ & (\decoder|a|WideOr5~1_combout\)))) # (!\sm|com_adr\(3) & (\decoder|a|WideOr5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \decoder|a|WideOr5~4_combout\,
	datac => \decoder|a|WideOr5~1_combout\,
	datad => \decoder|a|WideOr5~5_combout\,
	combout => \decoder|a|WideOr5~6_combout\);

-- Location: LCCOMB_X86_Y14_N6
\decoder|a|WideOr5~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~19_combout\ = (\sm|com_adr\(2) & (((!\sm|com_adr\(3) & \sm|com_adr\(4))))) # (!\sm|com_adr\(2) & (\sm|com_adr\(0) & (\sm|com_adr\(3) & !\sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr5~19_combout\);

-- Location: LCCOMB_X86_Y18_N30
\decoder|a|WideOr5~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~11_combout\ = (!\sm|com_adr\(3) & (!\sm|com_adr\(0) & \sm|com_adr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr5~11_combout\);

-- Location: LCCOMB_X86_Y18_N8
\decoder|a|WideOr5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~8_combout\ = (\sm|com_adr\(3) & (((\sm|com_adr\(0)) # (!\sm|com_adr\(6))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(2) & ((!\sm|com_adr\(6)) # (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr5~8_combout\);

-- Location: LCCOMB_X86_Y18_N14
\decoder|a|WideOr5~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~9_combout\ = (\sm|com_adr\(3) & (\sm|com_adr\(4) $ (\sm|com_adr\(0) $ (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr5~9_combout\);

-- Location: LCCOMB_X86_Y18_N0
\decoder|a|WideOr5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~10_combout\ = (\sm|com_adr\(5) & (\sm|com_adr\(4))) # (!\sm|com_adr\(5) & (\decoder|a|WideOr5~9_combout\ & (\sm|com_adr\(4) $ (!\sm|com_adr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(5),
	datac => \decoder|a|WideOr5~9_combout\,
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr5~10_combout\);

-- Location: LCCOMB_X86_Y18_N20
\decoder|a|WideOr5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~12_combout\ = (\sm|com_adr\(5) & ((\decoder|a|WideOr5~10_combout\ & (\decoder|a|WideOr5~11_combout\)) # (!\decoder|a|WideOr5~10_combout\ & ((!\decoder|a|WideOr5~8_combout\))))) # (!\sm|com_adr\(5) & (((\decoder|a|WideOr5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~11_combout\,
	datab => \sm|com_adr\(5),
	datac => \decoder|a|WideOr5~8_combout\,
	datad => \decoder|a|WideOr5~10_combout\,
	combout => \decoder|a|WideOr5~12_combout\);

-- Location: LCCOMB_X86_Y14_N4
\decoder|a|WideOr5~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~16_combout\ = (\sm|com_adr\(6) & ((\sm|com_adr\(3) & (!\sm|com_adr\(0))) # (!\sm|com_adr\(3) & (\sm|com_adr\(0) & !\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr5~16_combout\);

-- Location: LCCOMB_X86_Y14_N20
\decoder|a|WideOr5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~14_combout\ = (\sm|com_adr\(4) & (!\sm|com_adr\(2) & !\sm|com_adr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr5~14_combout\);

-- Location: LCCOMB_X86_Y14_N10
\decoder|a|WideOr5~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~15_combout\ = (!\sm|com_adr\(6) & ((\sm|com_adr\(5) & (\decoder|a|WideOr5~14_combout\)) # (!\sm|com_adr\(5) & ((\decoder|a|WideOr5~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \decoder|a|WideOr5~14_combout\,
	datac => \decoder|a|WideOr5~13_combout\,
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr5~15_combout\);

-- Location: LCCOMB_X86_Y14_N2
\decoder|a|WideOr5~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~17_combout\ = (\decoder|a|WideOr5~15_combout\) # ((!\sm|com_adr\(5) & (\sm|com_adr\(4) & \decoder|a|WideOr5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(4),
	datac => \decoder|a|WideOr5~16_combout\,
	datad => \decoder|a|WideOr5~15_combout\,
	combout => \decoder|a|WideOr5~17_combout\);

-- Location: LCCOMB_X86_Y14_N28
\decoder|a|WideOr5~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~18_combout\ = (\sm|com_adr\(7) & (((\sm|com_adr\(1))))) # (!\sm|com_adr\(7) & ((\sm|com_adr\(1) & (\decoder|a|WideOr5~12_combout\)) # (!\sm|com_adr\(1) & ((\decoder|a|WideOr5~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~12_combout\,
	datab => \sm|com_adr\(7),
	datac => \sm|com_adr\(1),
	datad => \decoder|a|WideOr5~17_combout\,
	combout => \decoder|a|WideOr5~18_combout\);

-- Location: LCCOMB_X86_Y14_N30
\decoder|a|WideOr5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~7_combout\ = (\sm|com_adr\(2) & (\sm|com_adr\(0) & (\sm|com_adr\(3) $ (\sm|com_adr\(4))))) # (!\sm|com_adr\(2) & (!\sm|com_adr\(0) & (\sm|com_adr\(3) & \sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr5~7_combout\);

-- Location: LCCOMB_X86_Y14_N22
\decoder|a|WideOr5~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~22_combout\ = (!\sm|com_adr\(5) & (!\sm|com_adr\(6) & ((\decoder|a|WideOr5~7_combout\) # (\decoder|a|WideOr5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(6),
	datac => \decoder|a|WideOr5~7_combout\,
	datad => \decoder|a|WideOr5~18_combout\,
	combout => \decoder|a|WideOr5~22_combout\);

-- Location: LCCOMB_X86_Y14_N16
\decoder|a|WideOr5~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~23_combout\ = (\sm|com_adr\(7) & (\decoder|a|WideOr5~22_combout\ & ((\decoder|a|WideOr5~19_combout\) # (!\decoder|a|WideOr5~18_combout\)))) # (!\sm|com_adr\(7) & (((\decoder|a|WideOr5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~19_combout\,
	datab => \decoder|a|WideOr5~18_combout\,
	datac => \decoder|a|WideOr5~22_combout\,
	datad => \sm|com_adr\(7),
	combout => \decoder|a|WideOr5~23_combout\);

-- Location: LCCOMB_X86_Y14_N8
\decoder|a|WideOr5~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~20_combout\ = (\sm|com_adr\(8) & (((\decoder|a|WideOr5~6_combout\)) # (!\decoder|a|WideOr5~0_combout\))) # (!\sm|com_adr\(8) & (((\decoder|a|WideOr5~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~0_combout\,
	datab => \sm|com_adr\(8),
	datac => \decoder|a|WideOr5~6_combout\,
	datad => \decoder|a|WideOr5~23_combout\,
	combout => \decoder|a|WideOr5~20_combout\);

-- Location: LCCOMB_X86_Y16_N6
\decoder|a|WideOr6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~10_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(1)) # ((!\sm|com_adr\(2) & !\sm|com_adr\(0))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(0) & ((!\sm|com_adr\(1)) # (!\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr6~10_combout\);

-- Location: LCCOMB_X86_Y16_N26
\decoder|a|WideOr6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~6_combout\ = (\sm|com_adr\(2) & (!\sm|com_adr\(0) & ((\sm|com_adr\(1)) # (\sm|com_adr\(3))))) # (!\sm|com_adr\(2) & ((\sm|com_adr\(0) $ (\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr6~6_combout\);

-- Location: LCCOMB_X86_Y16_N12
\decoder|a|WideOr6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~7_combout\ = (\sm|com_adr\(2) & (!\sm|com_adr\(0) & ((!\sm|com_adr\(3)) # (!\sm|com_adr\(1))))) # (!\sm|com_adr\(2) & (\sm|com_adr\(0) $ (((\sm|com_adr\(1)) # (\sm|com_adr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr6~7_combout\);

-- Location: LCCOMB_X86_Y16_N2
\decoder|a|WideOr6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~8_combout\ = (\sm|com_adr\(2) & (\sm|com_adr\(1) & (\sm|com_adr\(0) $ (\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr6~8_combout\);

-- Location: LCCOMB_X86_Y16_N16
\decoder|a|WideOr6~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~9_combout\ = (\sm|com_adr\(5) & (((\sm|com_adr\(4))))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(4) & (!\decoder|a|WideOr6~7_combout\)) # (!\sm|com_adr\(4) & ((\decoder|a|WideOr6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~7_combout\,
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(4),
	datad => \decoder|a|WideOr6~8_combout\,
	combout => \decoder|a|WideOr6~9_combout\);

-- Location: LCCOMB_X86_Y16_N20
\decoder|a|WideOr6~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~11_combout\ = (\sm|com_adr\(5) & ((\decoder|a|WideOr6~9_combout\ & (!\decoder|a|WideOr6~10_combout\)) # (!\decoder|a|WideOr6~9_combout\ & ((\decoder|a|WideOr6~6_combout\))))) # (!\sm|com_adr\(5) & (((\decoder|a|WideOr6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~10_combout\,
	datab => \sm|com_adr\(5),
	datac => \decoder|a|WideOr6~6_combout\,
	datad => \decoder|a|WideOr6~9_combout\,
	combout => \decoder|a|WideOr6~11_combout\);

-- Location: LCCOMB_X85_Y16_N24
\decoder|a|WideOr6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~14_combout\ = (\sm|com_adr\(8) & (((\decoder|a|WideOr6~11_combout\ & !\sm|com_adr\(6))) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~11_combout\,
	datab => \sm|com_adr\(8),
	datac => \sm|com_adr\(6),
	datad => \sm|nar|WideOr4~4_combout\,
	combout => \decoder|a|WideOr6~14_combout\);

-- Location: LCCOMB_X86_Y17_N26
\decoder|a|WideOr6~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~15_combout\ = (\sm|com_adr\(4) & (!\sm|com_adr\(2) & (!\sm|com_adr\(1)))) # (!\sm|com_adr\(4) & (\sm|com_adr\(0) & (\sm|com_adr\(2) $ (\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr6~15_combout\);

-- Location: LCCOMB_X86_Y17_N8
\decoder|a|WideOr6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~16_combout\ = (\sm|com_adr\(6) & (\sm|nar|WideOr4~5_combout\ & (\sm|com_adr\(4)))) # (!\sm|com_adr\(6) & (((\decoder|a|WideOr6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~5_combout\,
	datab => \sm|com_adr\(4),
	datac => \decoder|a|WideOr6~15_combout\,
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr6~16_combout\);

-- Location: LCCOMB_X85_Y17_N20
\decoder|a|WideOr6~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~17_combout\ = (\sm|com_adr\(0) & ((\sm|com_adr\(1) & ((\sm|com_adr\(2)))) # (!\sm|com_adr\(1) & (\sm|com_adr\(6) & !\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr6~17_combout\);

-- Location: LCCOMB_X85_Y17_N30
\decoder|a|WideOr6~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~18_combout\ = (\sm|com_adr\(5) & (((\decoder|a|WideOr6~16_combout\)))) # (!\sm|com_adr\(5) & (\sm|com_adr\(4) & ((\decoder|a|WideOr6~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(5),
	datac => \decoder|a|WideOr6~16_combout\,
	datad => \decoder|a|WideOr6~17_combout\,
	combout => \decoder|a|WideOr6~18_combout\);

-- Location: LCCOMB_X86_Y16_N30
\decoder|a|WideOr6~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~19_combout\ = (!\sm|com_adr\(6) & ((\sm|com_adr\(0) & ((\sm|com_adr\(1)))) # (!\sm|com_adr\(0) & (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \decoder|a|WideOr6~19_combout\);

-- Location: LCCOMB_X85_Y16_N20
\decoder|a|WideOr6~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~22_combout\ = (\sm|com_adr\(4) & ((\sm|com_adr\(6)))) # (!\sm|com_adr\(4) & (\decoder|a|WideOr6~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datac => \decoder|a|WideOr6~19_combout\,
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr6~22_combout\);

-- Location: LCCOMB_X85_Y16_N4
\decoder|a|WideOr6~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~20_combout\ = (\sm|com_adr\(3) & (!\sm|com_adr\(5) & ((\decoder|a|WideOr6~22_combout\)))) # (!\sm|com_adr\(3) & (((\decoder|a|WideOr6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(5),
	datab => \sm|com_adr\(3),
	datac => \decoder|a|WideOr6~18_combout\,
	datad => \decoder|a|WideOr6~22_combout\,
	combout => \decoder|a|WideOr6~20_combout\);

-- Location: LCCOMB_X86_Y16_N0
\decoder|a|WideOr6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~4_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(2) & (!\sm|com_adr\(1))) # (!\sm|com_adr\(2) & (\sm|com_adr\(1) & \sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr6~4_combout\);

-- Location: LCCOMB_X85_Y16_N22
\decoder|a|WideOr6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~5_combout\ = (\sm|nar|WideOr4~2_combout\ & ((\decoder|a|WideOr6~3_combout\) # ((!\sm|com_adr\(4) & \decoder|a|WideOr6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|nar|WideOr4~2_combout\,
	datac => \decoder|a|WideOr6~4_combout\,
	datad => \decoder|a|WideOr6~3_combout\,
	combout => \decoder|a|WideOr6~5_combout\);

-- Location: LCCOMB_X86_Y16_N24
\decoder|a|WideOr6~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr6~21_combout\ = (\decoder|a|WideOr6~14_combout\) # ((\decoder|a|WideOr6~5_combout\) # ((\sm|nar|WideOr5~9_combout\ & \decoder|a|WideOr6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr5~9_combout\,
	datab => \decoder|a|WideOr6~14_combout\,
	datac => \decoder|a|WideOr6~20_combout\,
	datad => \decoder|a|WideOr6~5_combout\,
	combout => \decoder|a|WideOr6~21_combout\);

-- Location: LCCOMB_X86_Y16_N4
\decoder|a|WideOr4~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~14_combout\ = (\sm|com_adr\(4) & (!\sm|com_adr\(2) & (!\sm|com_adr\(0) & !\sm|com_adr\(1)))) # (!\sm|com_adr\(4) & (\sm|com_adr\(0) & (\sm|com_adr\(2) $ (\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(1),
	combout => \decoder|a|WideOr4~14_combout\);

-- Location: LCCOMB_X86_Y16_N22
\decoder|a|WideOr4~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~15_combout\ = (\sm|com_adr\(3) & (((\decoder|a|WideOr4~14_combout\)))) # (!\sm|com_adr\(3) & (\sm|nar|WideOr2~0_combout\ & ((\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|nar|WideOr2~0_combout\,
	datac => \decoder|a|WideOr4~14_combout\,
	datad => \sm|com_adr\(1),
	combout => \decoder|a|WideOr4~15_combout\);

-- Location: LCCOMB_X87_Y19_N4
\decoder|a|WideOr4~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~7_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(5) $ (!\sm|com_adr\(2))))) # (!\sm|com_adr\(3) & ((\sm|com_adr\(5) & (\sm|com_adr\(0) & !\sm|com_adr\(2))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr4~7_combout\);

-- Location: LCCOMB_X87_Y19_N14
\decoder|a|WideOr4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~8_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(0) & (!\sm|com_adr\(5) & !\sm|com_adr\(2))) # (!\sm|com_adr\(0) & ((\sm|com_adr\(2)))))) # (!\sm|com_adr\(3) & (((\sm|com_adr\(5) & \sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr4~8_combout\);

-- Location: LCCOMB_X87_Y19_N20
\decoder|a|WideOr4~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~9_combout\ = (\sm|com_adr\(3) & (\sm|com_adr\(0) $ (((\sm|com_adr\(2)))))) # (!\sm|com_adr\(3) & (!\sm|com_adr\(0) & (\sm|com_adr\(5) & \sm|com_adr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr4~9_combout\);

-- Location: LCCOMB_X87_Y19_N30
\decoder|a|WideOr4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~10_combout\ = (\sm|com_adr\(4) & (\sm|com_adr\(1))) # (!\sm|com_adr\(4) & ((\sm|com_adr\(1) & (!\decoder|a|WideOr4~8_combout\)) # (!\sm|com_adr\(1) & ((\decoder|a|WideOr4~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|com_adr\(1),
	datac => \decoder|a|WideOr4~8_combout\,
	datad => \decoder|a|WideOr4~9_combout\,
	combout => \decoder|a|WideOr4~10_combout\);

-- Location: LCCOMB_X87_Y19_N28
\decoder|a|WideOr4~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~11_combout\ = (\sm|com_adr\(5) & (((!\sm|com_adr\(0))))) # (!\sm|com_adr\(5) & (\sm|com_adr\(3) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr4~11_combout\);

-- Location: LCCOMB_X87_Y19_N2
\decoder|a|WideOr4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~12_combout\ = (\sm|com_adr\(4) & ((\decoder|a|WideOr4~10_combout\ & ((!\decoder|a|WideOr4~11_combout\))) # (!\decoder|a|WideOr4~10_combout\ & (!\decoder|a|WideOr4~7_combout\)))) # (!\sm|com_adr\(4) & 
-- (((\decoder|a|WideOr4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \decoder|a|WideOr4~7_combout\,
	datac => \decoder|a|WideOr4~10_combout\,
	datad => \decoder|a|WideOr4~11_combout\,
	combout => \decoder|a|WideOr4~12_combout\);

-- Location: LCCOMB_X85_Y16_N28
\decoder|a|WideOr4~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~13_combout\ = (\sm|com_adr\(8) & (((\decoder|a|WideOr4~12_combout\ & !\sm|com_adr\(6))) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~12_combout\,
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(8),
	datad => \sm|nar|WideOr4~4_combout\,
	combout => \decoder|a|WideOr4~13_combout\);

-- Location: LCCOMB_X85_Y16_N2
\sm|nar|WideOr7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sm|nar|WideOr7~2_combout\ = (\sm|com_adr\(4) & \sm|com_adr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(6),
	combout => \sm|nar|WideOr7~2_combout\);

-- Location: LCCOMB_X86_Y17_N16
\decoder|a|WideOr4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~4_combout\ = (!\sm|com_adr\(2) & (!\sm|com_adr\(5) & (\sm|com_adr\(1) $ (!\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr4~4_combout\);

-- Location: LCCOMB_X86_Y17_N10
\decoder|a|WideOr5~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr5~21_combout\ = (!\sm|com_adr\(3) & \sm|com_adr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr5~21_combout\);

-- Location: LCCOMB_X86_Y17_N6
\decoder|a|WideOr4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~5_combout\ = (\sm|com_adr\(0) & ((\decoder|a|WideOr4~4_combout\) # ((\sm|nar|WideOr4~5_combout\ & \decoder|a|WideOr5~21_combout\)))) # (!\sm|com_adr\(0) & (((\sm|nar|WideOr4~5_combout\ & \decoder|a|WideOr5~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \decoder|a|WideOr4~4_combout\,
	datac => \sm|nar|WideOr4~5_combout\,
	datad => \decoder|a|WideOr5~21_combout\,
	combout => \decoder|a|WideOr4~5_combout\);

-- Location: LCCOMB_X86_Y17_N2
\decoder|a|WideOr4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~0_combout\ = (\sm|com_adr\(0) & ((\sm|com_adr\(1)) # (\sm|com_adr\(6) $ (\sm|com_adr\(4))))) # (!\sm|com_adr\(0) & (((\sm|com_adr\(6)) # (\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr4~0_combout\);

-- Location: LCCOMB_X86_Y17_N28
\decoder|a|WideOr4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~1_combout\ = (\sm|com_adr\(2) & (!\sm|com_adr\(5) & (\sm|com_adr\(3) & !\decoder|a|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(3),
	datad => \decoder|a|WideOr4~0_combout\,
	combout => \decoder|a|WideOr4~1_combout\);

-- Location: LCCOMB_X86_Y17_N4
\decoder|a|WideOr4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~2_combout\ = (\sm|com_adr\(6) & (\sm|com_adr\(0) & (\sm|com_adr\(1)))) # (!\sm|com_adr\(6) & (((!\sm|com_adr\(1) & \sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr4~2_combout\);

-- Location: LCCOMB_X86_Y17_N30
\decoder|a|WideOr4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~3_combout\ = (\decoder|a|WideOr4~1_combout\) # ((\decoder|a|WideOr5~21_combout\ & (\decoder|a|WideOr4~2_combout\ & !\sm|com_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~21_combout\,
	datab => \decoder|a|WideOr4~1_combout\,
	datac => \decoder|a|WideOr4~2_combout\,
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr4~3_combout\);

-- Location: LCCOMB_X86_Y16_N18
\decoder|a|WideOr4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~6_combout\ = (\sm|nar|WideOr5~9_combout\ & ((\decoder|a|WideOr4~3_combout\) # ((\sm|nar|WideOr7~2_combout\ & \decoder|a|WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr7~2_combout\,
	datab => \decoder|a|WideOr4~5_combout\,
	datac => \decoder|a|WideOr4~3_combout\,
	datad => \sm|nar|WideOr5~9_combout\,
	combout => \decoder|a|WideOr4~6_combout\);

-- Location: LCCOMB_X86_Y16_N28
\decoder|a|WideOr4~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr4~16_combout\ = (\decoder|a|WideOr4~13_combout\) # ((\decoder|a|WideOr4~6_combout\) # ((\decoder|a|WideOr4~15_combout\ & \sm|nar|WideOr4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~15_combout\,
	datab => \decoder|a|WideOr4~13_combout\,
	datac => \sm|nar|WideOr4~2_combout\,
	datad => \decoder|a|WideOr4~6_combout\,
	combout => \decoder|a|WideOr4~16_combout\);

-- Location: LCCOMB_X86_Y17_N0
\decoder|a|WideOr1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~2_combout\ = (\sm|com_adr\(4) & ((\sm|com_adr\(1) & ((!\sm|com_adr\(0)))) # (!\sm|com_adr\(1) & (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr1~2_combout\);

-- Location: LCCOMB_X86_Y17_N22
\decoder|a|WideOr1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~3_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(5) & (!\decoder|a|WideOr1~2_combout\)) # (!\sm|com_adr\(5) & ((\sm|com_adr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~2_combout\,
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr1~3_combout\);

-- Location: LCCOMB_X86_Y17_N12
\decoder|a|WideOr1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~4_combout\ = (\decoder|a|WideOr1~3_combout\) # ((\decoder|a|WideOr5~21_combout\ & ((!\sm|nar|WideOr4~5_combout\) # (!\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~3_combout\,
	datab => \sm|com_adr\(4),
	datac => \sm|nar|WideOr4~5_combout\,
	datad => \decoder|a|WideOr5~21_combout\,
	combout => \decoder|a|WideOr1~4_combout\);

-- Location: LCCOMB_X86_Y15_N10
\decoder|a|WideOr1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~5_combout\ = (\sm|com_adr\(8) & (((\decoder|a|WideOr1~4_combout\ & !\sm|com_adr\(6))) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~4_combout\,
	datab => \decoder|a|WideOr1~4_combout\,
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(8),
	combout => \decoder|a|WideOr1~5_combout\);

-- Location: LCCOMB_X86_Y15_N6
\decoder|a|WideOr1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~9_combout\ = (\sm|com_adr\(3) & (!\sm|com_adr\(4) & ((\sm|com_adr\(2)) # (\sm|com_adr\(0))))) # (!\sm|com_adr\(3) & (\sm|com_adr\(2) & (\sm|com_adr\(4) & \sm|com_adr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr1~9_combout\);

-- Location: LCCOMB_X86_Y15_N8
\decoder|a|WideOr1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~10_combout\ = (\sm|com_adr\(1) & (\decoder|a|WideOr1~9_combout\)) # (!\sm|com_adr\(1) & (((\decoder|a|WideOr6~2_combout\) # (\decoder|a|WideOr5~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~9_combout\,
	datab => \decoder|a|WideOr6~2_combout\,
	datac => \sm|com_adr\(1),
	datad => \decoder|a|WideOr5~13_combout\,
	combout => \decoder|a|WideOr1~10_combout\);

-- Location: LCCOMB_X85_Y15_N30
\decoder|a|WideOr1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~12_combout\ = (!\sm|com_adr\(7) & (\sm|com_adr\(6) & (!\sm|com_adr\(3) & !\sm|com_adr\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(8),
	combout => \decoder|a|WideOr1~12_combout\);

-- Location: LCCOMB_X86_Y15_N4
\decoder|a|WideOr1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~6_combout\ = (\sm|com_adr\(2) & (!\sm|com_adr\(0) & (\sm|com_adr\(1) & \sm|com_adr\(5)))) # (!\sm|com_adr\(2) & (!\sm|com_adr\(5) & (\sm|com_adr\(0) $ (\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr1~6_combout\);

-- Location: LCCOMB_X86_Y15_N2
\decoder|a|WideOr1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~7_combout\ = (\sm|com_adr\(0) & (\sm|com_adr\(1) & \sm|com_adr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr1~7_combout\);

-- Location: LCCOMB_X86_Y15_N28
\decoder|a|WideOr1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~8_combout\ = (\decoder|a|WideOr1~12_combout\ & ((\sm|com_adr\(4) & (\decoder|a|WideOr1~6_combout\ & !\decoder|a|WideOr1~7_combout\)) # (!\sm|com_adr\(4) & (!\decoder|a|WideOr1~6_combout\ & \decoder|a|WideOr1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \decoder|a|WideOr1~12_combout\,
	datac => \decoder|a|WideOr1~6_combout\,
	datad => \decoder|a|WideOr1~7_combout\,
	combout => \decoder|a|WideOr1~8_combout\);

-- Location: LCCOMB_X86_Y15_N30
\decoder|a|WideOr1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr1~11_combout\ = (\decoder|a|WideOr1~5_combout\) # ((\decoder|a|WideOr1~8_combout\) # ((\decoder|a|WideOr1~10_combout\ & \sm|nar|WideOr4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~5_combout\,
	datab => \decoder|a|WideOr1~10_combout\,
	datac => \sm|nar|WideOr4~2_combout\,
	datad => \decoder|a|WideOr1~8_combout\,
	combout => \decoder|a|WideOr1~11_combout\);

-- Location: LCCOMB_X91_Y13_N12
\decoder|c|WideOr31~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~8_combout\ = (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr5~20_combout\ $ ((!\decoder|a|WideOr4~16_combout\)))) # (!\decoder|a|WideOr6~21_combout\ & (!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr5~20_combout\) # 
-- (\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr31~8_combout\);

-- Location: LCCOMB_X91_Y13_N28
\decoder|c|WideOr31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~4_combout\ = (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr5~20_combout\ $ (\decoder|a|WideOr4~16_combout\)))) # (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr5~20_combout\ & 
-- (\decoder|a|WideOr4~16_combout\ $ (\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr31~4_combout\);

-- Location: LCCOMB_X86_Y15_N12
\decoder|a|WideOr2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~12_combout\ = (\sm|com_adr\(6)) # ((\sm|com_adr\(1) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(2)))) # (!\sm|com_adr\(1) & (\sm|com_adr\(0) $ (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(6),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr2~12_combout\);

-- Location: LCCOMB_X83_Y16_N6
\decoder|a|WideOr2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~3_combout\ = (\sm|com_adr\(2) & ((\sm|com_adr\(1) & (\sm|com_adr\(0))) # (!\sm|com_adr\(1) & ((!\sm|com_adr\(3)))))) # (!\sm|com_adr\(2) & ((\sm|com_adr\(0)) # (\sm|com_adr\(1) $ (\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr2~3_combout\);

-- Location: LCCOMB_X83_Y16_N28
\decoder|a|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~0_combout\ = (\sm|com_adr\(1) & ((\sm|com_adr\(2) $ (\sm|com_adr\(3))))) # (!\sm|com_adr\(1) & ((\sm|com_adr\(3)) # ((\sm|com_adr\(0) & \sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr2~0_combout\);

-- Location: LCCOMB_X83_Y16_N10
\decoder|a|WideOr2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~1_combout\ = (\sm|com_adr\(1) & (!\sm|com_adr\(4) & (\sm|com_adr\(2)))) # (!\sm|com_adr\(1) & (\sm|com_adr\(0) & (\sm|com_adr\(4) $ (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr2~1_combout\);

-- Location: LCCOMB_X83_Y16_N8
\decoder|a|WideOr2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~2_combout\ = (\sm|com_adr\(5) & (((\sm|com_adr\(4))))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(3) & (!\sm|com_adr\(4) & \decoder|a|WideOr2~1_combout\)) # (!\sm|com_adr\(3) & (\sm|com_adr\(4) & !\decoder|a|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(4),
	datad => \decoder|a|WideOr2~1_combout\,
	combout => \decoder|a|WideOr2~2_combout\);

-- Location: LCCOMB_X83_Y16_N0
\decoder|a|WideOr2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~4_combout\ = (\decoder|a|WideOr2~2_combout\ & ((\decoder|a|WideOr2~3_combout\) # ((!\sm|com_adr\(5))))) # (!\decoder|a|WideOr2~2_combout\ & (((\decoder|a|WideOr2~0_combout\ & \sm|com_adr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~3_combout\,
	datab => \decoder|a|WideOr2~0_combout\,
	datac => \decoder|a|WideOr2~2_combout\,
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr2~4_combout\);

-- Location: LCCOMB_X85_Y15_N28
\decoder|a|WideOr2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~5_combout\ = (\sm|com_adr\(8) & (((\decoder|a|WideOr2~4_combout\ & !\sm|com_adr\(6))) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|nar|WideOr4~4_combout\,
	datac => \decoder|a|WideOr2~4_combout\,
	datad => \sm|com_adr\(6),
	combout => \decoder|a|WideOr2~5_combout\);

-- Location: LCCOMB_X85_Y18_N22
\decoder|a|WideOr2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~8_combout\ = (\sm|com_adr\(1) & (!\sm|com_adr\(2) & ((!\sm|com_adr\(0)) # (!\sm|com_adr\(6))))) # (!\sm|com_adr\(1) & (!\sm|com_adr\(6) & ((\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr2~8_combout\);

-- Location: LCCOMB_X85_Y18_N20
\decoder|a|WideOr2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~9_combout\ = (\decoder|a|WideOr2~8_combout\ & (((\decoder|a|WideOr6~2_combout\ & \sm|nar|WideOr7~3_combout\)) # (!\sm|com_adr\(4)))) # (!\decoder|a|WideOr2~8_combout\ & (((\decoder|a|WideOr6~2_combout\ & \sm|nar|WideOr7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~8_combout\,
	datab => \sm|com_adr\(4),
	datac => \decoder|a|WideOr6~2_combout\,
	datad => \sm|nar|WideOr7~3_combout\,
	combout => \decoder|a|WideOr2~9_combout\);

-- Location: LCCOMB_X86_Y18_N18
\decoder|a|WideOr2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~6_combout\ = (\sm|com_adr\(6) & (!\sm|com_adr\(0) & ((\sm|com_adr\(5))))) # (!\sm|com_adr\(6) & (\sm|com_adr\(0) & (\sm|com_adr\(2) & !\sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(6),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr2~6_combout\);

-- Location: LCCOMB_X86_Y18_N4
\decoder|a|WideOr2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~7_combout\ = (\sm|com_adr\(3) & (\decoder|a|WideOr2~6_combout\ & (!\sm|com_adr\(4) & \sm|com_adr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \decoder|a|WideOr2~6_combout\,
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(1),
	combout => \decoder|a|WideOr2~7_combout\);

-- Location: LCCOMB_X86_Y18_N26
\decoder|a|WideOr2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~10_combout\ = (\sm|nar|WideOr5~9_combout\ & ((\decoder|a|WideOr2~7_combout\) # ((\decoder|a|WideOr5~21_combout\ & \decoder|a|WideOr2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~21_combout\,
	datab => \decoder|a|WideOr2~9_combout\,
	datac => \decoder|a|WideOr2~7_combout\,
	datad => \sm|nar|WideOr5~9_combout\,
	combout => \decoder|a|WideOr2~10_combout\);

-- Location: LCCOMB_X87_Y15_N24
\decoder|a|WideOr2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~11_combout\ = (!\sm|com_adr\(3) & (\sm|com_adr\(4) & (\sm|com_adr\(7) & !\sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(7),
	datad => \sm|com_adr\(5),
	combout => \decoder|a|WideOr2~11_combout\);

-- Location: LCCOMB_X86_Y15_N14
\decoder|a|WideOr2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr2~13_combout\ = (\decoder|a|WideOr2~5_combout\) # ((\decoder|a|WideOr2~10_combout\) # ((!\decoder|a|WideOr2~12_combout\ & \decoder|a|WideOr2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~12_combout\,
	datab => \decoder|a|WideOr2~5_combout\,
	datac => \decoder|a|WideOr2~10_combout\,
	datad => \decoder|a|WideOr2~11_combout\,
	combout => \decoder|a|WideOr2~13_combout\);

-- Location: LCCOMB_X91_Y13_N16
\decoder|c|WideOr31~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~6_combout\ = (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr6~21_combout\ $ (\decoder|a|WideOr4~16_combout\ $ (\decoder|a|WideOr1~11_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & (((\decoder|a|WideOr4~16_combout\ & 
-- !\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr31~6_combout\);

-- Location: LCCOMB_X86_Y16_N10
\decoder|a|WideOr3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~9_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(2) & ((\sm|com_adr\(1)) # (\sm|com_adr\(0)))) # (!\sm|com_adr\(2) & (\sm|com_adr\(1) & \sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(3),
	combout => \decoder|a|WideOr3~9_combout\);

-- Location: LCCOMB_X85_Y16_N26
\decoder|a|WideOr3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~10_combout\ = (\sm|nar|WideOr4~2_combout\ & ((\decoder|a|WideOr6~3_combout\) # ((!\sm|com_adr\(4) & \decoder|a|WideOr3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(4),
	datab => \sm|nar|WideOr4~2_combout\,
	datac => \decoder|a|WideOr3~9_combout\,
	datad => \decoder|a|WideOr6~3_combout\,
	combout => \decoder|a|WideOr3~10_combout\);

-- Location: LCCOMB_X85_Y15_N8
\decoder|a|WideOr3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~4_combout\ = (\sm|com_adr\(3) & ((\sm|com_adr\(1) & (!\sm|com_adr\(2) & \sm|com_adr\(0))) # (!\sm|com_adr\(1) & ((!\sm|com_adr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr3~4_combout\);

-- Location: LCCOMB_X86_Y15_N26
\decoder|a|WideOr3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~3_combout\ = (\sm|com_adr\(0) & ((\sm|com_adr\(1) & (\sm|com_adr\(2))) # (!\sm|com_adr\(1) & ((!\sm|com_adr\(3)))))) # (!\sm|com_adr\(0) & (\sm|com_adr\(2) & (!\sm|com_adr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(3),
	datac => \sm|com_adr\(1),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr3~3_combout\);

-- Location: LCCOMB_X85_Y15_N10
\decoder|a|WideOr3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~5_combout\ = (\sm|com_adr\(5) & (((\sm|com_adr\(4))))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(4) & ((\decoder|a|WideOr3~3_combout\))) # (!\sm|com_adr\(4) & (\decoder|a|WideOr3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~4_combout\,
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(4),
	datad => \decoder|a|WideOr3~3_combout\,
	combout => \decoder|a|WideOr3~5_combout\);

-- Location: LCCOMB_X85_Y15_N26
\decoder|a|WideOr3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~2_combout\ = \sm|com_adr\(3) $ (((\sm|com_adr\(2) & ((\sm|com_adr\(1)) # (\sm|com_adr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr3~2_combout\);

-- Location: LCCOMB_X85_Y15_N16
\decoder|a|WideOr3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~6_combout\ = (\sm|com_adr\(1) & (!\sm|com_adr\(0) & ((\sm|com_adr\(2)) # (\sm|com_adr\(3))))) # (!\sm|com_adr\(1) & (\sm|com_adr\(2) & (\sm|com_adr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(0),
	combout => \decoder|a|WideOr3~6_combout\);

-- Location: LCCOMB_X85_Y15_N18
\decoder|a|WideOr3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~7_combout\ = (\decoder|a|WideOr3~5_combout\ & (((!\decoder|a|WideOr3~6_combout\)) # (!\sm|com_adr\(5)))) # (!\decoder|a|WideOr3~5_combout\ & (\sm|com_adr\(5) & (!\decoder|a|WideOr3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~5_combout\,
	datab => \sm|com_adr\(5),
	datac => \decoder|a|WideOr3~2_combout\,
	datad => \decoder|a|WideOr3~6_combout\,
	combout => \decoder|a|WideOr3~7_combout\);

-- Location: LCCOMB_X86_Y15_N0
\decoder|a|WideOr3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~8_combout\ = (\sm|com_adr\(8) & (((!\sm|com_adr\(6) & \decoder|a|WideOr3~7_combout\)) # (!\sm|nar|WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|com_adr\(6),
	datac => \sm|nar|WideOr4~4_combout\,
	datad => \decoder|a|WideOr3~7_combout\,
	combout => \decoder|a|WideOr3~8_combout\);

-- Location: LCCOMB_X86_Y17_N20
\decoder|a|WideOr3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~11_combout\ = (\sm|com_adr\(0) & (!\sm|com_adr\(1) & (!\sm|com_adr\(3) & !\sm|com_adr\(2)))) # (!\sm|com_adr\(0) & (\sm|com_adr\(1) & (\sm|com_adr\(3) $ (!\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(2),
	combout => \decoder|a|WideOr3~11_combout\);

-- Location: LCCOMB_X86_Y17_N18
\decoder|a|WideOr3~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~17_combout\ = (\sm|com_adr\(5) & (\sm|nar|WideOr4~5_combout\ & (!\sm|com_adr\(3)))) # (!\sm|com_adr\(5) & (((\decoder|a|WideOr3~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|nar|WideOr4~5_combout\,
	datab => \sm|com_adr\(5),
	datac => \sm|com_adr\(3),
	datad => \decoder|a|WideOr3~11_combout\,
	combout => \decoder|a|WideOr3~17_combout\);

-- Location: LCCOMB_X85_Y18_N28
\decoder|a|WideOr3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~12_combout\ = (\sm|com_adr\(3) & (!\sm|com_adr\(5) & ((!\sm|com_adr\(1)) # (!\sm|com_adr\(0))))) # (!\sm|com_adr\(3) & (((\sm|com_adr\(5) & !\sm|com_adr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(0),
	datac => \sm|com_adr\(5),
	datad => \sm|com_adr\(1),
	combout => \decoder|a|WideOr3~12_combout\);

-- Location: LCCOMB_X85_Y18_N4
\decoder|a|WideOr3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~14_combout\ = (\sm|com_adr\(2) & ((\decoder|a|WideOr3~12_combout\))) # (!\sm|com_adr\(2) & (\decoder|a|WideOr3~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(2),
	datac => \decoder|a|WideOr3~13_combout\,
	datad => \decoder|a|WideOr3~12_combout\,
	combout => \decoder|a|WideOr3~14_combout\);

-- Location: LCCOMB_X86_Y17_N14
\decoder|a|WideOr3~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~15_combout\ = (\sm|com_adr\(6) & (\decoder|a|WideOr3~17_combout\ & ((\sm|com_adr\(4))))) # (!\sm|com_adr\(6) & (((\decoder|a|WideOr3~14_combout\ & !\sm|com_adr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~17_combout\,
	datab => \sm|com_adr\(6),
	datac => \decoder|a|WideOr3~14_combout\,
	datad => \sm|com_adr\(4),
	combout => \decoder|a|WideOr3~15_combout\);

-- Location: LCCOMB_X86_Y16_N8
\decoder|a|WideOr3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a|WideOr3~16_combout\ = (\decoder|a|WideOr3~10_combout\) # ((\decoder|a|WideOr3~8_combout\) # ((\decoder|a|WideOr3~15_combout\ & \sm|nar|WideOr5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~10_combout\,
	datab => \decoder|a|WideOr3~8_combout\,
	datac => \decoder|a|WideOr3~15_combout\,
	datad => \sm|nar|WideOr5~9_combout\,
	combout => \decoder|a|WideOr3~16_combout\);

-- Location: LCCOMB_X91_Y13_N18
\decoder|c|WideOr31~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~5_combout\ = (\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr4~16_combout\ & \decoder|a|WideOr1~11_combout\)) # (!\decoder|a|WideOr6~21_combout\ & (!\decoder|a|WideOr4~16_combout\ & 
-- !\decoder|a|WideOr1~11_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr6~21_combout\ $ (\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr31~5_combout\);

-- Location: LCCOMB_X91_Y13_N10
\decoder|c|WideOr31~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~7_combout\ = (\decoder|a|WideOr3~16_combout\ & (((\decoder|a|WideOr2~13_combout\) # (\decoder|c|WideOr31~5_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|c|WideOr31~6_combout\ & (!\decoder|a|WideOr2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr31~6_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|c|WideOr31~5_combout\,
	combout => \decoder|c|WideOr31~7_combout\);

-- Location: LCCOMB_X91_Y13_N30
\decoder|c|WideOr31~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~9_combout\ = (\decoder|a|WideOr2~13_combout\ & ((\decoder|c|WideOr31~7_combout\ & (!\decoder|c|WideOr31~8_combout\)) # (!\decoder|c|WideOr31~7_combout\ & ((\decoder|c|WideOr31~4_combout\))))) # (!\decoder|a|WideOr2~13_combout\ & 
-- (((\decoder|c|WideOr31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr31~8_combout\,
	datab => \decoder|c|WideOr31~4_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|c|WideOr31~7_combout\,
	combout => \decoder|c|WideOr31~9_combout\);

-- Location: LCCOMB_X91_Y12_N12
\decoder|c|WideOr31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~2_combout\ = (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr6~21_combout\ $ (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr31~2_combout\);

-- Location: LCCOMB_X91_Y12_N24
\decoder|c|WideOr31~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~11_combout\ = (\decoder|a|WideOr0~4_combout\ & ((\decoder|a|WideOr2~13_combout\) # ((\decoder|a|WideOr1~11_combout\) # (!\decoder|c|WideOr31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|c|WideOr31~2_combout\,
	combout => \decoder|c|WideOr31~11_combout\);

-- Location: LCCOMB_X91_Y12_N4
\decoder|c|WideOr31~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~10_combout\ = (\decoder|c|WideOr31~11_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr31~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr31~9_combout\,
	datad => \decoder|c|WideOr31~11_combout\,
	combout => \decoder|c|WideOr31~10_combout\);

-- Location: LCCOMB_X91_Y12_N14
\arm_inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~0_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr31~10_combout\))) # (!\sm|q_select~q\ & (\push_inst~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \push_inst~0_combout\,
	datab => \sm|q_select~q\,
	datad => \decoder|c|WideOr31~10_combout\,
	combout => \arm_inst~0_combout\);

-- Location: LCCOMB_X75_Y4_N8
\push_inst~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~1_combout\ = (!\sm|param_even~q\ & (\n|mem|array_rtl_0|auto_generated|ram_block1a1\ & !\sm|push_wide~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~q\,
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a1\,
	datad => \sm|push_wide~q\,
	combout => \push_inst~1_combout\);

-- Location: LCCOMB_X87_Y15_N22
\decoder|c|WideOr30~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~6_combout\ = (\sm|com_adr\(3)) # ((\sm|com_adr\(2)) # (\sm|com_adr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(1),
	combout => \decoder|c|WideOr30~6_combout\);

-- Location: LCCOMB_X87_Y15_N28
\decoder|c|WideOr30~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~3_combout\ = (\sm|com_adr\(0)) # ((\sm|com_adr\(4)) # ((\decoder|c|WideOr30~6_combout\) # (\sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(4),
	datac => \decoder|c|WideOr30~6_combout\,
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr30~3_combout\);

-- Location: LCCOMB_X87_Y15_N14
\decoder|c|WideOr30~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~25_combout\ = (\sm|com_adr\(8) & ((\sm|com_adr\(7)) # ((\sm|com_adr\(6) & \decoder|c|WideOr30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|com_adr\(6),
	datac => \sm|com_adr\(8),
	datad => \decoder|c|WideOr30~3_combout\,
	combout => \decoder|c|WideOr30~25_combout\);

-- Location: LCCOMB_X90_Y11_N10
\decoder|c|WideOr30~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~22_combout\ = (\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr6~21_combout\ & !\decoder|a|WideOr2~13_combout\))) # (!\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr4~16_combout\ & 
-- (!\decoder|a|WideOr6~21_combout\ & !\decoder|a|WideOr2~13_combout\)) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr6~21_combout\ $ (\decoder|a|WideOr2~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr2~13_combout\,
	combout => \decoder|c|WideOr30~22_combout\);

-- Location: LCCOMB_X90_Y11_N30
\decoder|c|WideOr30~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~20_combout\ = (\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr3~16_combout\ $ (((!\decoder|a|WideOr2~13_combout\))))) # (!\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr2~13_combout\ & ((!\decoder|a|WideOr6~21_combout\))) # 
-- (!\decoder|a|WideOr2~13_combout\ & (\decoder|a|WideOr3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr2~13_combout\,
	combout => \decoder|c|WideOr30~20_combout\);

-- Location: LCCOMB_X90_Y11_N8
\decoder|c|WideOr30~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~19_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr6~21_combout\ & (!\decoder|a|WideOr4~16_combout\ & \decoder|a|WideOr2~13_combout\)) # (!\decoder|a|WideOr6~21_combout\ & ((!\decoder|a|WideOr2~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr2~13_combout\,
	combout => \decoder|c|WideOr30~19_combout\);

-- Location: LCCOMB_X90_Y11_N0
\decoder|c|WideOr30~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~21_combout\ = (!\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr1~11_combout\ & ((\decoder|c|WideOr30~19_combout\))) # (!\decoder|a|WideOr1~11_combout\ & (\decoder|c|WideOr30~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr30~20_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|c|WideOr30~19_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr30~21_combout\);

-- Location: LCCOMB_X90_Y11_N28
\decoder|c|WideOr30~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~23_combout\ = (\decoder|c|WideOr30~21_combout\) # ((\decoder|c|WideOr30~22_combout\ & (!\decoder|a|WideOr1~11_combout\ & \decoder|a|WideOr5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr30~22_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|c|WideOr30~21_combout\,
	combout => \decoder|c|WideOr30~23_combout\);

-- Location: LCCOMB_X87_Y11_N4
\decoder|c|WideOr30~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr30~24_combout\ = (\decoder|c|WideOr30~25_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr30~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr30~25_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr30~23_combout\,
	combout => \decoder|c|WideOr30~24_combout\);

-- Location: LCCOMB_X75_Y4_N14
\arm_inst~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~1_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr30~24_combout\))) # (!\sm|q_select~q\ & (\push_inst~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \push_inst~1_combout\,
	datac => \decoder|c|WideOr30~24_combout\,
	datad => \sm|q_select~q\,
	combout => \arm_inst~1_combout\);

-- Location: LCCOMB_X80_Y20_N0
\push_inst~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~2_combout\ = (\sm|param_even~q\) # ((!\sm|push_wide~q\ & \n|mem|array_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~q\,
	datab => \sm|push_wide~q\,
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a2\,
	combout => \push_inst~2_combout\);

-- Location: LCCOMB_X92_Y11_N10
\decoder|c|WideOr29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr29~0_combout\ = \decoder|a|WideOr6~21_combout\ $ (((\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr4~16_combout\) # (!\decoder|a|WideOr1~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr29~0_combout\);

-- Location: LCCOMB_X92_Y11_N0
\decoder|c|WideOr21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr21~0_combout\ = (!\decoder|a|WideOr2~13_combout\ & !\decoder|a|WideOr0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	combout => \decoder|c|WideOr21~0_combout\);

-- Location: LCCOMB_X92_Y11_N16
\decoder|c|WideOr29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr29~1_combout\ = (\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr5~20_combout\) # ((\decoder|a|WideOr4~16_combout\) # (\decoder|a|WideOr1~11_combout\)))) # (!\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr4~16_combout\ $ 
-- (\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr29~1_combout\);

-- Location: LCCOMB_X92_Y11_N26
\decoder|c|WideOr29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr29~2_combout\ = (\decoder|c|WideOr21~0_combout\ & ((\decoder|a|WideOr3~16_combout\ & ((!\decoder|c|WideOr29~1_combout\))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|c|WideOr29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr29~0_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|c|WideOr21~0_combout\,
	datad => \decoder|c|WideOr29~1_combout\,
	combout => \decoder|c|WideOr29~2_combout\);

-- Location: LCCOMB_X91_Y8_N12
\arm_inst~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~2_combout\ = (\sm|q_select~q\ & (((\decoder|c|WideOr30~25_combout\) # (\decoder|c|WideOr29~2_combout\)))) # (!\sm|q_select~q\ & (\push_inst~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \push_inst~2_combout\,
	datab => \decoder|c|WideOr30~25_combout\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr29~2_combout\,
	combout => \arm_inst~2_combout\);

-- Location: LCCOMB_X75_Y4_N16
\push_inst~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~3_combout\ = (!\sm|push_wide~q\ & (!\sm|param_even~q\ & \n|mem|array_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|push_wide~q\,
	datac => \sm|param_even~q\,
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a3\,
	combout => \push_inst~3_combout\);

-- Location: LCCOMB_X87_Y11_N20
\decoder|c|WideOr28~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr28~19_combout\ = (\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr1~11_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr6~21_combout\ $ 
-- (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr28~19_combout\);

-- Location: LCCOMB_X87_Y11_N30
\decoder|c|WideOr21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr21~1_combout\ = (\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr2~13_combout\ & !\decoder|a|WideOr0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr2~13_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	combout => \decoder|c|WideOr21~1_combout\);

-- Location: LCCOMB_X87_Y15_N30
\decoder|c|WideOr28~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr28~6_combout\ = (!\sm|com_adr\(7) & (\sm|com_adr\(4) & !\sm|com_adr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(6),
	combout => \decoder|c|WideOr28~6_combout\);

-- Location: LCCOMB_X87_Y15_N12
\decoder|c|WideOr28~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr28~3_combout\ = (!\sm|com_adr\(3) & (\sm|com_adr\(2) & (\decoder|c|WideOr28~6_combout\ & !\sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(2),
	datac => \decoder|c|WideOr28~6_combout\,
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr28~3_combout\);

-- Location: LCCOMB_X87_Y15_N26
\decoder|c|WideOr28~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr28~21_combout\ = (!\sm|com_adr\(1) & (\sm|com_adr\(8) & (!\sm|com_adr\(0) & \decoder|c|WideOr28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(8),
	datac => \sm|com_adr\(0),
	datad => \decoder|c|WideOr28~3_combout\,
	combout => \decoder|c|WideOr28~21_combout\);

-- Location: LCCOMB_X87_Y11_N18
\decoder|c|WideOr28~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr28~20_combout\ = (\decoder|c|WideOr30~25_combout\) # ((\decoder|c|WideOr28~21_combout\) # ((\decoder|c|WideOr28~19_combout\ & \decoder|c|WideOr21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr30~25_combout\,
	datab => \decoder|c|WideOr28~19_combout\,
	datac => \decoder|c|WideOr21~1_combout\,
	datad => \decoder|c|WideOr28~21_combout\,
	combout => \decoder|c|WideOr28~20_combout\);

-- Location: LCCOMB_X87_Y1_N8
\arm_inst~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~3_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr28~20_combout\))) # (!\sm|q_select~q\ & (\push_inst~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datab => \push_inst~3_combout\,
	datac => \decoder|c|WideOr28~20_combout\,
	combout => \arm_inst~3_combout\);

-- Location: LCCOMB_X75_Y4_N26
\push_inst~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~4_combout\ = (!\sm|param_even~q\ & (\n|mem|array_rtl_0|auto_generated|ram_block1a4\ & !\sm|push_wide~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~q\,
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a4\,
	datad => \sm|push_wide~q\,
	combout => \push_inst~4_combout\);

-- Location: LCCOMB_X87_Y11_N8
\decoder|c|WideOr27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr27~0_combout\ = (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr5~20_combout\ $ (\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr27~0_combout\);

-- Location: LCCOMB_X87_Y11_N10
\decoder|c|WideOr27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr27~1_combout\ = (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr4~16_combout\ & !\decoder|a|WideOr1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr27~1_combout\);

-- Location: LCCOMB_X88_Y11_N16
\decoder|c|WideOr16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr16~0_combout\ = (!\decoder|a|WideOr0~4_combout\ & \decoder|a|WideOr3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	combout => \decoder|c|WideOr16~0_combout\);

-- Location: LCCOMB_X87_Y11_N28
\decoder|c|WideOr27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr27~2_combout\ = (!\decoder|c|WideOr30~25_combout\ & (((!\decoder|c|WideOr16~0_combout\) # (!\decoder|a|WideOr2~13_combout\)) # (!\decoder|c|WideOr27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr27~1_combout\,
	datab => \decoder|a|WideOr2~13_combout\,
	datac => \decoder|c|WideOr30~25_combout\,
	datad => \decoder|c|WideOr16~0_combout\,
	combout => \decoder|c|WideOr27~2_combout\);

-- Location: LCCOMB_X87_Y11_N26
\decoder|c|WideOr27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr27~3_combout\ = ((\decoder|c|WideOr21~1_combout\ & \decoder|c|WideOr27~0_combout\)) # (!\decoder|c|WideOr27~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr21~1_combout\,
	datac => \decoder|c|WideOr27~0_combout\,
	datad => \decoder|c|WideOr27~2_combout\,
	combout => \decoder|c|WideOr27~3_combout\);

-- Location: LCCOMB_X92_Y1_N24
\arm_inst~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~4_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr27~3_combout\))) # (!\sm|q_select~q\ & (\push_inst~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \push_inst~4_combout\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr27~3_combout\,
	combout => \arm_inst~4_combout\);

-- Location: LCCOMB_X75_Y4_N28
\push_inst~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~5_combout\ = (!\sm|param_even~q\ & (\n|mem|array_rtl_0|auto_generated|ram_block1a5\ & !\sm|push_wide~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~q\,
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a5\,
	datad => \sm|push_wide~q\,
	combout => \push_inst~5_combout\);

-- Location: LCCOMB_X88_Y11_N22
\decoder|c|WideOr26~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~20_combout\ = (\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr5~20_combout\ & ((!\decoder|a|WideOr1~11_combout\) # (!\decoder|a|WideOr6~21_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr6~21_combout\ & 
-- (\decoder|a|WideOr5~20_combout\ $ (\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr26~20_combout\);

-- Location: LCCOMB_X88_Y11_N8
\decoder|c|WideOr26~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~21_combout\ = (!\decoder|a|WideOr0~4_combout\ & (!\decoder|a|WideOr3~16_combout\ & \decoder|a|WideOr2~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr2~13_combout\,
	combout => \decoder|c|WideOr26~21_combout\);

-- Location: LCCOMB_X92_Y11_N24
\decoder|c|WideOr3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr3~0_combout\ = (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr4~16_combout\ & \decoder|a|WideOr1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr3~0_combout\);

-- Location: LCCOMB_X92_Y11_N18
\decoder|c|WideOr21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr21~2_combout\ = (\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr6~21_combout\ & (\decoder|c|WideOr21~0_combout\ & \decoder|c|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|c|WideOr21~0_combout\,
	datad => \decoder|c|WideOr3~0_combout\,
	combout => \decoder|c|WideOr21~2_combout\);

-- Location: LCCOMB_X88_Y11_N30
\decoder|c|WideOr21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr21~3_combout\ = (!\decoder|c|WideOr30~25_combout\ & !\decoder|c|WideOr21~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|c|WideOr30~25_combout\,
	datad => \decoder|c|WideOr21~2_combout\,
	combout => \decoder|c|WideOr21~3_combout\);

-- Location: LCCOMB_X87_Y15_N4
\decoder|c|WideOr26~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~6_combout\ = (!\sm|com_adr\(7) & (\sm|com_adr\(8) & !\sm|com_adr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \sm|com_adr\(8),
	datad => \sm|com_adr\(6),
	combout => \decoder|c|WideOr26~6_combout\);

-- Location: LCCOMB_X87_Y15_N18
\decoder|c|WideOr26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~3_combout\ = (\sm|com_adr\(1) & (\decoder|c|WideOr26~6_combout\ & (!\sm|com_adr\(3) & !\sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \decoder|c|WideOr26~6_combout\,
	datac => \sm|com_adr\(3),
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr26~3_combout\);

-- Location: LCCOMB_X87_Y15_N16
\decoder|c|WideOr26~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~24_combout\ = (!\sm|com_adr\(0) & (\sm|com_adr\(2) & (\sm|com_adr\(4) & \decoder|c|WideOr26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(4),
	datad => \decoder|c|WideOr26~3_combout\,
	combout => \decoder|c|WideOr26~24_combout\);

-- Location: LCCOMB_X88_Y11_N12
\decoder|c|WideOr26~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~22_combout\ = ((\decoder|c|WideOr26~24_combout\) # ((\decoder|c|WideOr26~20_combout\ & \decoder|c|WideOr26~21_combout\))) # (!\decoder|c|WideOr21~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr26~20_combout\,
	datab => \decoder|c|WideOr26~21_combout\,
	datac => \decoder|c|WideOr21~3_combout\,
	datad => \decoder|c|WideOr26~24_combout\,
	combout => \decoder|c|WideOr26~22_combout\);

-- Location: LCCOMB_X75_Y4_N30
\arm_inst~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~5_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr26~22_combout\))) # (!\sm|q_select~q\ & (\push_inst~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \push_inst~5_combout\,
	datac => \decoder|c|WideOr26~22_combout\,
	datad => \sm|q_select~q\,
	combout => \arm_inst~5_combout\);

-- Location: LCCOMB_X75_Y4_N0
\push_inst~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~6_combout\ = (!\sm|param_even~q\ & (\n|mem|array_rtl_0|auto_generated|ram_block1a6\ & !\sm|push_wide~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|param_even~q\,
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a6\,
	datad => \sm|push_wide~q\,
	combout => \push_inst~6_combout\);

-- Location: LCCOMB_X87_Y14_N2
\decoder|c|WideOr25~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~10_combout\ = (!\sm|com_adr\(4) & (!\sm|com_adr\(5) & (\sm|com_adr\(0) $ (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr25~10_combout\);

-- Location: LCCOMB_X87_Y14_N4
\decoder|c|WideOr25~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~8_combout\ = (\sm|com_adr\(3) & \decoder|c|WideOr25~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|com_adr\(3),
	datad => \decoder|c|WideOr25~10_combout\,
	combout => \decoder|c|WideOr25~8_combout\);

-- Location: LCCOMB_X87_Y14_N12
\decoder|c|WideOr25~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~17_combout\ = (\sm|com_adr\(4) & (((\sm|com_adr\(2) & !\sm|com_adr\(5))))) # (!\sm|com_adr\(4) & (\sm|com_adr\(5) & ((\sm|com_adr\(0)) # (!\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr25~17_combout\);

-- Location: LCCOMB_X87_Y14_N28
\decoder|c|WideOr25~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~26_combout\ = (\sm|com_adr\(5) & (\sm|com_adr\(4) $ (((\sm|com_adr\(2)) # (!\sm|com_adr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr25~26_combout\);

-- Location: LCCOMB_X87_Y14_N22
\decoder|c|WideOr25~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~27_combout\ = (\sm|com_adr\(1) & (((\sm|com_adr\(3))))) # (!\sm|com_adr\(1) & (\decoder|c|WideOr25~26_combout\ & (\sm|com_adr\(0) $ (\sm|com_adr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(3),
	datac => \decoder|c|WideOr25~26_combout\,
	datad => \sm|com_adr\(1),
	combout => \decoder|c|WideOr25~27_combout\);

-- Location: LCCOMB_X87_Y14_N18
\decoder|c|WideOr25~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~16_combout\ = (\sm|com_adr\(0) & (\sm|com_adr\(5) & (\sm|com_adr\(4) $ (\sm|com_adr\(2))))) # (!\sm|com_adr\(0) & ((\sm|com_adr\(4) & (\sm|com_adr\(2) & !\sm|com_adr\(5))) # (!\sm|com_adr\(4) & (!\sm|com_adr\(2) & \sm|com_adr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr25~16_combout\);

-- Location: LCCOMB_X87_Y14_N0
\decoder|c|WideOr25~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~23_combout\ = (\sm|com_adr\(1) & ((\decoder|c|WideOr25~27_combout\ & (\decoder|c|WideOr25~17_combout\)) # (!\decoder|c|WideOr25~27_combout\ & ((\decoder|c|WideOr25~16_combout\))))) # (!\sm|com_adr\(1) & 
-- (((\decoder|c|WideOr25~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr25~17_combout\,
	datab => \sm|com_adr\(1),
	datac => \decoder|c|WideOr25~27_combout\,
	datad => \decoder|c|WideOr25~16_combout\,
	combout => \decoder|c|WideOr25~23_combout\);

-- Location: LCCOMB_X87_Y14_N14
\decoder|c|WideOr25~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~3_combout\ = (\sm|com_adr\(8) & (((\decoder|c|WideOr25~23_combout\)))) # (!\sm|com_adr\(8) & (\sm|com_adr\(1) & (\decoder|c|WideOr25~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|com_adr\(1),
	datac => \decoder|c|WideOr25~8_combout\,
	datad => \decoder|c|WideOr25~23_combout\,
	combout => \decoder|c|WideOr25~3_combout\);

-- Location: LCCOMB_X91_Y8_N30
\decoder|c|WideOr25~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~25_combout\ = (!\sm|com_adr\(7) & (!\sm|com_adr\(6) & \decoder|c|WideOr25~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datac => \sm|com_adr\(6),
	datad => \decoder|c|WideOr25~3_combout\,
	combout => \decoder|c|WideOr25~25_combout\);

-- Location: LCCOMB_X91_Y8_N6
\decoder|c|WideOr25~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr25~24_combout\ = (\decoder|c|WideOr30~25_combout\) # ((\decoder|c|WideOr25~25_combout\ & !\decoder|a|WideOr0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr25~25_combout\,
	datab => \decoder|c|WideOr30~25_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	combout => \decoder|c|WideOr25~24_combout\);

-- Location: LCCOMB_X92_Y1_N6
\arm_inst~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~6_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr25~24_combout\))) # (!\sm|q_select~q\ & (\push_inst~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \push_inst~6_combout\,
	datab => \decoder|c|WideOr25~24_combout\,
	datac => \sm|q_select~q\,
	combout => \arm_inst~6_combout\);

-- Location: LCCOMB_X79_Y20_N20
\push_inst~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \push_inst~7_combout\ = (!\sm|push_wide~q\ & (!\sm|param_even~q\ & \n|mem|array_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|push_wide~q\,
	datac => \sm|param_even~q\,
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a7\,
	combout => \push_inst~7_combout\);

-- Location: LCCOMB_X91_Y12_N30
\decoder|c|WideOr24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr24~1_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr6~21_combout\ & !\decoder|a|WideOr5~20_combout\)) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr6~21_combout\ $ 
-- (\decoder|a|WideOr5~20_combout\))))) # (!\decoder|a|WideOr3~16_combout\ & (((\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr24~1_combout\);

-- Location: LCCOMB_X92_Y12_N26
\decoder|c|WideOr19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr19~0_combout\ = (\decoder|a|WideOr2~13_combout\ & (!\decoder|a|WideOr0~4_combout\ & \decoder|a|WideOr1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr19~0_combout\);

-- Location: LCCOMB_X91_Y12_N8
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

-- Location: LCCOMB_X91_Y12_N0
\decoder|c|WideOr24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr24~2_combout\ = (\decoder|c|WideOr31~11_combout\) # ((\decoder|c|WideOr24~1_combout\ & \decoder|c|WideOr24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr24~1_combout\,
	datac => \decoder|c|WideOr24~0_combout\,
	datad => \decoder|c|WideOr31~11_combout\,
	combout => \decoder|c|WideOr24~2_combout\);

-- Location: LCCOMB_X91_Y12_N2
\arm_inst~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~7_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr24~2_combout\))) # (!\sm|q_select~q\ & (\push_inst~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \push_inst~7_combout\,
	datab => \sm|q_select~q\,
	datad => \decoder|c|WideOr24~2_combout\,
	combout => \arm_inst~7_combout\);

-- Location: LCCOMB_X92_Y14_N20
\decoder|c|WideOr23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~2_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr4~16_combout\) # ((\decoder|a|WideOr6~21_combout\ & !\decoder|a|WideOr2~13_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr4~16_combout\ & 
-- ((\decoder|a|WideOr6~21_combout\) # (!\decoder|a|WideOr2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr23~2_combout\);

-- Location: LCCOMB_X92_Y14_N10
\decoder|c|WideOr23~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~3_combout\ = (\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr2~13_combout\ & \decoder|a|WideOr4~16_combout\)) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr2~13_combout\)))) # 
-- (!\decoder|a|WideOr6~21_combout\ & (((\decoder|a|WideOr2~13_combout\ & !\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr23~3_combout\);

-- Location: LCCOMB_X92_Y14_N30
\decoder|c|WideOr23~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~5_combout\ = (\decoder|c|WideOr23~3_combout\ & ((\decoder|c|WideOr23~2_combout\ & ((\decoder|a|WideOr5~20_combout\))) # (!\decoder|c|WideOr23~2_combout\ & (!\decoder|a|WideOr3~16_combout\ & !\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|c|WideOr23~2_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|c|WideOr23~3_combout\,
	combout => \decoder|c|WideOr23~5_combout\);

-- Location: LCCOMB_X92_Y14_N28
\decoder|c|WideOr23~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~4_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr5~20_combout\ & (!\decoder|c|WideOr23~2_combout\)) # (!\decoder|a|WideOr5~20_combout\ & ((!\decoder|c|WideOr23~3_combout\))))) # (!\decoder|a|WideOr3~16_combout\ & 
-- (\decoder|c|WideOr23~2_combout\ & (\decoder|a|WideOr5~20_combout\ & !\decoder|c|WideOr23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|c|WideOr23~2_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|c|WideOr23~3_combout\,
	combout => \decoder|c|WideOr23~4_combout\);

-- Location: LCCOMB_X92_Y14_N12
\decoder|c|WideOr23~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~6_combout\ = (\decoder|c|WideOr23~5_combout\ & (!\decoder|a|WideOr1~11_combout\ & !\decoder|c|WideOr23~4_combout\)) # (!\decoder|c|WideOr23~5_combout\ & (\decoder|a|WideOr1~11_combout\ & \decoder|c|WideOr23~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr23~5_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|c|WideOr23~4_combout\,
	combout => \decoder|c|WideOr23~6_combout\);

-- Location: LCCOMB_X92_Y14_N6
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

-- Location: LCCOMB_X90_Y11_N4
\decoder|c|WideOr22~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~7_combout\ = (\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr6~21_combout\ $ (!\decoder|a|WideOr5~20_combout\)) # (!\decoder|a|WideOr4~16_combout\))) # (!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr6~21_combout\) # 
-- ((\decoder|a|WideOr5~20_combout\) # (\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr22~7_combout\);

-- Location: LCCOMB_X90_Y11_N24
\decoder|c|WideOr22~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~5_combout\ = (\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr5~20_combout\ & \decoder|a|WideOr1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr22~5_combout\);

-- Location: LCCOMB_X90_Y11_N6
\decoder|c|WideOr22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~4_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr6~21_combout\ $ (!\decoder|a|WideOr5~20_combout\)) # (!\decoder|a|WideOr1~11_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr1~11_combout\ $ 
-- (((\decoder|a|WideOr6~21_combout\ & \decoder|a|WideOr5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr22~4_combout\);

-- Location: LCCOMB_X90_Y11_N14
\decoder|c|WideOr22~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~6_combout\ = (\decoder|a|WideOr2~13_combout\ & (((\decoder|a|WideOr3~16_combout\)))) # (!\decoder|a|WideOr2~13_combout\ & ((\decoder|a|WideOr3~16_combout\ & ((\decoder|c|WideOr22~4_combout\))) # (!\decoder|a|WideOr3~16_combout\ & 
-- (\decoder|c|WideOr22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|c|WideOr22~5_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|c|WideOr22~4_combout\,
	combout => \decoder|c|WideOr22~6_combout\);

-- Location: LCCOMB_X91_Y11_N26
\decoder|c|WideOr22~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~8_combout\ = (\decoder|a|WideOr2~13_combout\ & ((\decoder|c|WideOr22~6_combout\ & ((\decoder|c|WideOr22~7_combout\))) # (!\decoder|c|WideOr22~6_combout\ & (!\decoder|c|WideOr27~1_combout\)))) # (!\decoder|a|WideOr2~13_combout\ & 
-- (((\decoder|c|WideOr22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|c|WideOr27~1_combout\,
	datac => \decoder|c|WideOr22~7_combout\,
	datad => \decoder|c|WideOr22~6_combout\,
	combout => \decoder|c|WideOr22~8_combout\);

-- Location: LCCOMB_X91_Y12_N18
\decoder|c|WideOr31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr31~3_combout\ = (!\decoder|a|WideOr1~11_combout\ & !\decoder|a|WideOr2~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr2~13_combout\,
	combout => \decoder|c|WideOr31~3_combout\);

-- Location: LCCOMB_X91_Y12_N16
\decoder|c|WideOr22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~2_combout\ = (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr6~21_combout\ & \decoder|c|WideOr31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|c|WideOr31~3_combout\,
	combout => \decoder|c|WideOr22~2_combout\);

-- Location: LCCOMB_X91_Y11_N0
\decoder|c|WideOr22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~3_combout\ = (\decoder|a|WideOr0~4_combout\ & ((\decoder|a|WideOr5~20_combout\) # (!\decoder|c|WideOr22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr22~2_combout\,
	combout => \decoder|c|WideOr22~3_combout\);

-- Location: LCCOMB_X91_Y11_N12
\arm_inst~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~9_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr22~3_combout\) # ((\decoder|c|WideOr22~8_combout\ & !\decoder|a|WideOr0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr22~8_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr22~3_combout\,
	combout => \arm_inst~9_combout\);

-- Location: LCCOMB_X92_Y12_N28
\arm_inst~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~10_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr30~25_combout\) # (\decoder|c|WideOr21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|q_select~q\,
	datac => \decoder|c|WideOr30~25_combout\,
	datad => \decoder|c|WideOr21~2_combout\,
	combout => \arm_inst~10_combout\);

-- Location: LCCOMB_X90_Y11_N18
\decoder|c|WideOr20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr20~2_combout\ = (\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr6~21_combout\) # (\decoder|a|WideOr1~11_combout\ $ (\decoder|a|WideOr4~16_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr1~11_combout\) # 
-- ((\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr20~2_combout\);

-- Location: LCCOMB_X91_Y11_N2
\decoder|c|WideOr20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr20~3_combout\ = (\decoder|a|WideOr2~13_combout\ & (((\decoder|a|WideOr3~16_combout\)))) # (!\decoder|a|WideOr2~13_combout\ & ((\decoder|a|WideOr3~16_combout\ & (\decoder|c|WideOr20~2_combout\)) # (!\decoder|a|WideOr3~16_combout\ & 
-- ((\decoder|c|WideOr22~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|c|WideOr20~2_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|c|WideOr22~5_combout\,
	combout => \decoder|c|WideOr20~3_combout\);

-- Location: LCCOMB_X91_Y11_N24
\decoder|c|WideOr20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr20~4_combout\ = (\decoder|a|WideOr2~13_combout\ & ((\decoder|c|WideOr20~3_combout\ & ((\decoder|c|WideOr22~7_combout\))) # (!\decoder|c|WideOr20~3_combout\ & (!\decoder|c|WideOr27~1_combout\)))) # (!\decoder|a|WideOr2~13_combout\ & 
-- (((\decoder|c|WideOr20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|c|WideOr27~1_combout\,
	datac => \decoder|c|WideOr22~7_combout\,
	datad => \decoder|c|WideOr20~3_combout\,
	combout => \decoder|c|WideOr20~4_combout\);

-- Location: LCCOMB_X91_Y11_N6
\arm_inst~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~11_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr22~3_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datab => \decoder|c|WideOr22~3_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr20~4_combout\,
	combout => \arm_inst~11_combout\);

-- Location: LCCOMB_X92_Y12_N10
\decoder|c|WideOr19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr19~2_combout\ = (\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr4~16_combout\ & ((!\decoder|a|WideOr3~16_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr6~21_combout\ $ (((\decoder|a|WideOr4~16_combout\ & 
-- !\decoder|a|WideOr3~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr3~16_combout\,
	combout => \decoder|c|WideOr19~2_combout\);

-- Location: LCCOMB_X92_Y12_N6
\decoder|c|WideOr23~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~7_combout\ = (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr5~20_combout\ & \decoder|a|WideOr4~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr23~7_combout\);

-- Location: LCCOMB_X92_Y12_N20
\decoder|c|WideOr26~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~19_combout\ = (\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr0~4_combout\ & \decoder|a|WideOr2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|a|WideOr2~13_combout\,
	combout => \decoder|c|WideOr26~19_combout\);

-- Location: LCCOMB_X92_Y12_N24
\decoder|c|WideOr19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr19~1_combout\ = (\decoder|c|WideOr21~2_combout\) # ((\decoder|c|WideOr23~7_combout\ & \decoder|c|WideOr26~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr23~7_combout\,
	datab => \decoder|c|WideOr21~2_combout\,
	datad => \decoder|c|WideOr26~19_combout\,
	combout => \decoder|c|WideOr19~1_combout\);

-- Location: LCCOMB_X92_Y12_N16
\decoder|c|WideOr19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr19~3_combout\ = (\decoder|c|WideOr31~11_combout\) # ((\decoder|c|WideOr19~1_combout\) # ((\decoder|c|WideOr19~2_combout\ & \decoder|c|WideOr19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr19~2_combout\,
	datab => \decoder|c|WideOr31~11_combout\,
	datac => \decoder|c|WideOr19~0_combout\,
	datad => \decoder|c|WideOr19~1_combout\,
	combout => \decoder|c|WideOr19~3_combout\);

-- Location: LCCOMB_X92_Y1_N4
\arm_inst~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~12_combout\ = (\sm|q_select~q\ & \decoder|c|WideOr19~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr19~3_combout\,
	combout => \arm_inst~12_combout\);

-- Location: LCCOMB_X87_Y15_N0
\decoder|c|WideOr18~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr18~8_combout\ = (\sm|com_adr\(2) & (\sm|com_adr\(0) & (\sm|com_adr\(3) $ (!\sm|com_adr\(5))))) # (!\sm|com_adr\(2) & (!\sm|com_adr\(3) & (!\sm|com_adr\(0) & \sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(3),
	datab => \sm|com_adr\(2),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr18~8_combout\);

-- Location: LCCOMB_X87_Y15_N20
\decoder|c|WideOr18~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr18~5_combout\ = (!\sm|com_adr\(7) & (\decoder|c|WideOr18~8_combout\ & !\sm|com_adr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datab => \decoder|c|WideOr18~8_combout\,
	datad => \sm|com_adr\(6),
	combout => \decoder|c|WideOr18~5_combout\);

-- Location: LCCOMB_X87_Y15_N6
\decoder|c|WideOr18~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr18~16_combout\ = (\sm|com_adr\(1) & (\sm|com_adr\(8) & (!\sm|com_adr\(4) & \decoder|c|WideOr18~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(1),
	datab => \sm|com_adr\(8),
	datac => \sm|com_adr\(4),
	datad => \decoder|c|WideOr18~5_combout\,
	combout => \decoder|c|WideOr18~16_combout\);

-- Location: LCCOMB_X92_Y12_N22
\decoder|c|WideOr18~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr18~15_combout\ = (\decoder|c|WideOr18~16_combout\) # ((\decoder|c|WideOr30~25_combout\) # ((\decoder|c|WideOr26~19_combout\ & \decoder|c|WideOr23~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr18~16_combout\,
	datab => \decoder|c|WideOr26~19_combout\,
	datac => \decoder|c|WideOr30~25_combout\,
	datad => \decoder|c|WideOr23~7_combout\,
	combout => \decoder|c|WideOr18~15_combout\);

-- Location: LCCOMB_X93_Y1_N24
\arm_inst~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~13_combout\ = (\sm|q_select~q\ & \decoder|c|WideOr18~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|q_select~q\,
	datad => \decoder|c|WideOr18~15_combout\,
	combout => \arm_inst~13_combout\);

-- Location: LCCOMB_X87_Y11_N12
\decoder|c|WideOr17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr17~0_combout\ = (\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr6~21_combout\ & !\decoder|a|WideOr4~16_combout\)) # (!\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr4~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr17~0_combout\);

-- Location: LCCOMB_X87_Y11_N6
\arm_inst~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~14_combout\ = (\sm|q_select~q\ & (((\decoder|c|WideOr21~1_combout\ & \decoder|c|WideOr17~0_combout\)) # (!\decoder|c|WideOr27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datab => \decoder|c|WideOr27~2_combout\,
	datac => \decoder|c|WideOr21~1_combout\,
	datad => \decoder|c|WideOr17~0_combout\,
	combout => \arm_inst~14_combout\);

-- Location: LCCOMB_X87_Y11_N16
\decoder|c|WideOr16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr16~1_combout\ = (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr2~13_combout\ & !\decoder|a|WideOr1~11_combout\))) # (!\decoder|a|WideOr6~21_combout\ & (!\decoder|a|WideOr5~20_combout\ & 
-- (!\decoder|a|WideOr2~13_combout\ & \decoder|a|WideOr1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr16~1_combout\);

-- Location: LCCOMB_X87_Y11_N22
\decoder|c|WideOr16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr16~2_combout\ = (\decoder|c|WideOr30~25_combout\) # ((\decoder|c|WideOr16~1_combout\ & (\decoder|a|WideOr4~16_combout\ & \decoder|c|WideOr16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr30~25_combout\,
	datab => \decoder|c|WideOr16~1_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|c|WideOr16~0_combout\,
	combout => \decoder|c|WideOr16~2_combout\);

-- Location: LCCOMB_X87_Y1_N2
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

-- Location: LCCOMB_X92_Y12_N4
\decoder|c|WideOr15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~2_combout\ = (\decoder|a|WideOr3~16_combout\ & (((\decoder|a|WideOr1~11_combout\) # (!\decoder|a|WideOr6~21_combout\)) # (!\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr6~21_combout\) # 
-- ((\decoder|a|WideOr5~20_combout\ & !\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr15~2_combout\);

-- Location: LCCOMB_X92_Y12_N30
\decoder|c|WideOr15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~1_combout\ = (\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr5~20_combout\ & ((!\decoder|a|WideOr1~11_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr6~21_combout\)) # 
-- (!\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr6~21_combout\ & \decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr15~1_combout\);

-- Location: LCCOMB_X92_Y12_N14
\decoder|c|WideOr15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~3_combout\ = (\decoder|a|WideOr4~16_combout\ & (((\decoder|a|WideOr2~13_combout\) # (!\decoder|c|WideOr15~1_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|c|WideOr15~2_combout\ & ((!\decoder|a|WideOr2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|c|WideOr15~2_combout\,
	datac => \decoder|c|WideOr15~1_combout\,
	datad => \decoder|a|WideOr2~13_combout\,
	combout => \decoder|c|WideOr15~3_combout\);

-- Location: LCCOMB_X92_Y12_N8
\decoder|c|WideOr15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~0_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr6~21_combout\ & \decoder|a|WideOr1~11_combout\)) # (!\decoder|a|WideOr5~20_combout\ & ((!\decoder|a|WideOr1~11_combout\))))) # 
-- (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr5~20_combout\) # (\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr15~0_combout\);

-- Location: LCCOMB_X92_Y12_N12
\decoder|c|WideOr15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~4_combout\ = (\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr5~20_combout\) # (!\decoder|a|WideOr6~21_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr3~16_combout\ $ 
-- (((\decoder|a|WideOr5~20_combout\ & !\decoder|a|WideOr6~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr15~4_combout\);

-- Location: LCCOMB_X92_Y12_N2
\decoder|c|WideOr15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~5_combout\ = (\decoder|a|WideOr2~13_combout\ & ((\decoder|c|WideOr15~3_combout\ & ((\decoder|c|WideOr15~4_combout\))) # (!\decoder|c|WideOr15~3_combout\ & (!\decoder|c|WideOr15~0_combout\)))) # (!\decoder|a|WideOr2~13_combout\ & 
-- (\decoder|c|WideOr15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|c|WideOr15~3_combout\,
	datac => \decoder|c|WideOr15~0_combout\,
	datad => \decoder|c|WideOr15~4_combout\,
	combout => \decoder|c|WideOr15~5_combout\);

-- Location: LCCOMB_X91_Y8_N20
\decoder|c|WideOr15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr15~6_combout\ = (\decoder|c|WideOr30~25_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|c|WideOr30~25_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr15~5_combout\,
	combout => \decoder|c|WideOr15~6_combout\);

-- Location: LCCOMB_X91_Y8_N18
\arm_inst~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~16_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr15~6_combout\))) # (!\sm|q_select~q\ & (\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datac => \sm|param_even~q\,
	datad => \decoder|c|WideOr15~6_combout\,
	combout => \arm_inst~16_combout\);

-- Location: LCCOMB_X88_Y11_N4
\decoder|c|WideOr14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr14~2_combout\ = (\decoder|a|WideOr2~13_combout\ & (((!\decoder|a|WideOr6~21_combout\ & !\decoder|a|WideOr4~16_combout\)) # (!\decoder|a|WideOr1~11_combout\))) # (!\decoder|a|WideOr2~13_combout\ & (\decoder|a|WideOr4~16_combout\ & 
-- (\decoder|a|WideOr6~21_combout\ $ (\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr14~2_combout\);

-- Location: LCCOMB_X88_Y11_N10
\decoder|c|WideOr14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr14~3_combout\ = (\decoder|c|WideOr14~2_combout\ & (\decoder|c|WideOr16~0_combout\ & (\decoder|a|WideOr4~16_combout\ $ (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|c|WideOr14~2_combout\,
	datad => \decoder|c|WideOr16~0_combout\,
	combout => \decoder|c|WideOr14~3_combout\);

-- Location: LCCOMB_X88_Y11_N2
\decoder|c|WideOr14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr14~0_combout\ = (\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr5~20_combout\ & \decoder|a|WideOr1~11_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr6~21_combout\ & 
-- (!\decoder|a|WideOr5~20_combout\ & !\decoder|a|WideOr1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr14~0_combout\);

-- Location: LCCOMB_X88_Y11_N24
\decoder|c|WideOr14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr14~1_combout\ = (\decoder|c|WideOr14~3_combout\) # ((\decoder|c|WideOr30~25_combout\) # ((\decoder|c|WideOr26~21_combout\ & \decoder|c|WideOr14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr14~3_combout\,
	datab => \decoder|c|WideOr26~21_combout\,
	datac => \decoder|c|WideOr30~25_combout\,
	datad => \decoder|c|WideOr14~0_combout\,
	combout => \decoder|c|WideOr14~1_combout\);

-- Location: LCCOMB_X92_Y14_N8
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

-- Location: LCCOMB_X90_Y12_N12
\decoder|c|WideOr13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~0_combout\ = (\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr6~21_combout\) # ((\decoder|a|WideOr3~16_combout\ & !\decoder|a|WideOr4~16_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & (((\decoder|a|WideOr3~16_combout\) # 
-- (\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr13~0_combout\);

-- Location: LCCOMB_X90_Y12_N24
\decoder|c|WideOr13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~4_combout\ = (\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr4~16_combout\ & ((!\decoder|a|WideOr3~16_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr6~21_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & 
-- (((\decoder|a|WideOr3~16_combout\ & !\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr13~4_combout\);

-- Location: LCCOMB_X90_Y12_N30
\decoder|c|WideOr13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~1_combout\ = (\decoder|a|WideOr6~21_combout\) # ((\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr4~16_combout\))) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr13~1_combout\);

-- Location: LCCOMB_X90_Y12_N4
\decoder|c|WideOr13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~2_combout\ = (\decoder|a|WideOr6~21_combout\ & (((!\decoder|a|WideOr3~16_combout\ & !\decoder|a|WideOr4~16_combout\)) # (!\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr3~16_combout\ & 
-- ((!\decoder|a|WideOr4~16_combout\) # (!\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr5~20_combout\) # (\decoder|a|WideOr4~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr13~2_combout\);

-- Location: LCCOMB_X90_Y12_N10
\decoder|c|WideOr13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~3_combout\ = (\decoder|a|WideOr2~13_combout\ & (((\decoder|a|WideOr1~11_combout\)))) # (!\decoder|a|WideOr2~13_combout\ & ((\decoder|a|WideOr1~11_combout\ & (\decoder|c|WideOr13~1_combout\)) # (!\decoder|a|WideOr1~11_combout\ & 
-- ((\decoder|c|WideOr13~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr13~1_combout\,
	datab => \decoder|a|WideOr2~13_combout\,
	datac => \decoder|c|WideOr13~2_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr13~3_combout\);

-- Location: LCCOMB_X90_Y12_N18
\decoder|c|WideOr13~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~5_combout\ = (\decoder|a|WideOr2~13_combout\ & ((\decoder|c|WideOr13~3_combout\ & ((\decoder|c|WideOr13~4_combout\))) # (!\decoder|c|WideOr13~3_combout\ & (!\decoder|c|WideOr13~0_combout\)))) # (!\decoder|a|WideOr2~13_combout\ & 
-- (((\decoder|c|WideOr13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr13~0_combout\,
	datab => \decoder|c|WideOr13~4_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|c|WideOr13~3_combout\,
	combout => \decoder|c|WideOr13~5_combout\);

-- Location: LCCOMB_X91_Y8_N28
\decoder|c|WideOr13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr13~6_combout\ = (\decoder|c|WideOr30~25_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr13~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|c|WideOr30~25_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr13~5_combout\,
	combout => \decoder|c|WideOr13~6_combout\);

-- Location: LCCOMB_X91_Y8_N22
\arm_inst~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~18_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr13~6_combout\))) # (!\sm|q_select~q\ & (\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datac => \sm|param_even~q\,
	datad => \decoder|c|WideOr13~6_combout\,
	combout => \arm_inst~18_combout\);

-- Location: LCCOMB_X90_Y12_N22
\decoder|c|WideOr12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~1_combout\ = (\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr5~20_combout\) # (\decoder|a|WideOr6~21_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr5~20_combout\ & 
-- (\decoder|a|WideOr6~21_combout\)) # (!\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr6~21_combout\ & \decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr12~1_combout\);

-- Location: LCCOMB_X90_Y12_N20
\decoder|c|WideOr12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~2_combout\ = (\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr1~11_combout\) # (!\decoder|a|WideOr3~16_combout\))) # (!\decoder|a|WideOr6~21_combout\ & ((!\decoder|a|WideOr1~11_combout\))))) # 
-- (!\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr3~16_combout\) # ((\decoder|a|WideOr6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr12~2_combout\);

-- Location: LCCOMB_X90_Y12_N6
\decoder|c|WideOr12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~3_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr2~13_combout\) # ((!\decoder|c|WideOr12~1_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & (!\decoder|a|WideOr2~13_combout\ & ((\decoder|c|WideOr12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr2~13_combout\,
	datac => \decoder|c|WideOr12~1_combout\,
	datad => \decoder|c|WideOr12~2_combout\,
	combout => \decoder|c|WideOr12~3_combout\);

-- Location: LCCOMB_X90_Y12_N16
\decoder|c|WideOr12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~4_combout\ = (\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr6~21_combout\ $ (!\decoder|a|WideOr1~11_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr3~16_combout\ & 
-- ((!\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr12~4_combout\);

-- Location: LCCOMB_X90_Y12_N28
\decoder|c|WideOr12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~0_combout\ = (\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr5~20_combout\ $ (((!\decoder|a|WideOr1~11_combout\))))) # (!\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr5~20_combout\)) # 
-- (!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr6~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr12~0_combout\);

-- Location: LCCOMB_X90_Y12_N26
\decoder|c|WideOr12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~5_combout\ = (\decoder|c|WideOr12~3_combout\ & ((\decoder|c|WideOr12~4_combout\) # ((!\decoder|a|WideOr2~13_combout\)))) # (!\decoder|c|WideOr12~3_combout\ & (((\decoder|a|WideOr2~13_combout\ & !\decoder|c|WideOr12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr12~3_combout\,
	datab => \decoder|c|WideOr12~4_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|c|WideOr12~0_combout\,
	combout => \decoder|c|WideOr12~5_combout\);

-- Location: LCCOMB_X91_Y8_N24
\decoder|c|WideOr12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr12~6_combout\ = (\decoder|c|WideOr30~25_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr12~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|c|WideOr30~25_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr12~5_combout\,
	combout => \decoder|c|WideOr12~6_combout\);

-- Location: LCCOMB_X91_Y8_N10
\arm_inst~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~19_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr12~6_combout\))) # (!\sm|q_select~q\ & (\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datac => \sm|param_even~q\,
	datad => \decoder|c|WideOr12~6_combout\,
	combout => \arm_inst~19_combout\);

-- Location: LCCOMB_X90_Y11_N12
\decoder|c|WideOr11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~4_combout\ = (\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr2~13_combout\ & (\decoder|a|WideOr4~16_combout\)) # (!\decoder|a|WideOr2~13_combout\ & (!\decoder|a|WideOr4~16_combout\ & \decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr11~4_combout\);

-- Location: LCCOMB_X90_Y11_N20
\decoder|c|WideOr11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~0_combout\ = (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr1~11_combout\ $ (((\decoder|a|WideOr2~13_combout\) # (\decoder|a|WideOr4~16_combout\))))) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr1~11_combout\ & 
-- ((!\decoder|a|WideOr4~16_combout\) # (!\decoder|a|WideOr2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr11~0_combout\);

-- Location: LCCOMB_X90_Y11_N22
\decoder|c|WideOr11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~1_combout\ = (\decoder|a|WideOr2~13_combout\ & ((\decoder|a|WideOr4~16_combout\ & ((!\decoder|a|WideOr1~11_combout\) # (!\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr5~20_combout\)))) # 
-- (!\decoder|a|WideOr2~13_combout\ & (\decoder|a|WideOr1~11_combout\ $ (((\decoder|a|WideOr4~16_combout\ & \decoder|a|WideOr5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr11~1_combout\);

-- Location: LCCOMB_X90_Y11_N16
\decoder|c|WideOr11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~2_combout\ = (\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr2~13_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & 
-- (\decoder|a|WideOr2~13_combout\ & ((\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr11~2_combout\);

-- Location: LCCOMB_X90_Y11_N2
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

-- Location: LCCOMB_X90_Y11_N26
\decoder|c|WideOr11~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~5_combout\ = (\decoder|a|WideOr6~21_combout\ & ((\decoder|c|WideOr11~3_combout\ & (!\decoder|c|WideOr11~4_combout\)) # (!\decoder|c|WideOr11~3_combout\ & ((!\decoder|c|WideOr11~0_combout\))))) # (!\decoder|a|WideOr6~21_combout\ & 
-- (((\decoder|c|WideOr11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr11~4_combout\,
	datab => \decoder|c|WideOr11~0_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|c|WideOr11~3_combout\,
	combout => \decoder|c|WideOr11~5_combout\);

-- Location: LCCOMB_X91_Y11_N8
\arm_inst~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~20_combout\ = (\sm|q_select~q\ & ((\decoder|a|WideOr0~4_combout\ & ((!\decoder|c|WideOr22~2_combout\))) # (!\decoder|a|WideOr0~4_combout\ & (\decoder|c|WideOr11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr11~5_combout\,
	datab => \sm|q_select~q\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr22~2_combout\,
	combout => \arm_inst~20_combout\);

-- Location: LCCOMB_X91_Y12_N20
\decoder|c|WideOr10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr10~5_combout\ = (\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr6~21_combout\) # (\decoder|a|WideOr3~16_combout\ $ (\decoder|a|WideOr5~20_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & (((\decoder|a|WideOr3~16_combout\) # 
-- (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr10~5_combout\);

-- Location: LCCOMB_X91_Y12_N10
\decoder|c|WideOr10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr10~2_combout\ = (\decoder|a|WideOr3~16_combout\ & (((!\decoder|a|WideOr1~11_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr1~11_combout\ $ (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr10~2_combout\);

-- Location: LCCOMB_X91_Y12_N26
\decoder|c|WideOr10~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr10~7_combout\ = (\decoder|a|WideOr2~13_combout\ & (!\decoder|a|WideOr0~4_combout\ & (!\decoder|a|WideOr4~16_combout\ & !\decoder|c|WideOr10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|c|WideOr10~2_combout\,
	combout => \decoder|c|WideOr10~7_combout\);

-- Location: LCCOMB_X91_Y12_N28
\decoder|c|WideOr10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr10~3_combout\ = ((\decoder|a|WideOr1~11_combout\ $ (\decoder|a|WideOr5~20_combout\)) # (!\decoder|a|WideOr2~13_combout\)) # (!\decoder|a|WideOr3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr2~13_combout\,
	combout => \decoder|c|WideOr10~3_combout\);

-- Location: LCCOMB_X91_Y12_N22
\decoder|c|WideOr10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr10~4_combout\ = (\decoder|c|WideOr10~7_combout\) # ((!\decoder|a|WideOr0~4_combout\ & (\decoder|a|WideOr4~16_combout\ & \decoder|c|WideOr10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr10~7_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|c|WideOr10~3_combout\,
	combout => \decoder|c|WideOr10~4_combout\);

-- Location: LCCOMB_X91_Y12_N6
\decoder|c|WideOr10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr10~6_combout\ = (\decoder|c|WideOr10~4_combout\) # ((\decoder|c|WideOr31~11_combout\) # ((\decoder|c|WideOr21~0_combout\ & \decoder|c|WideOr10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr21~0_combout\,
	datab => \decoder|c|WideOr10~5_combout\,
	datac => \decoder|c|WideOr10~4_combout\,
	datad => \decoder|c|WideOr31~11_combout\,
	combout => \decoder|c|WideOr10~6_combout\);

-- Location: LCCOMB_X75_Y4_N2
\arm_inst~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~21_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr10~6_combout\))) # (!\sm|q_select~q\ & (\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|q_select~q\,
	datac => \sm|param_even~q\,
	datad => \decoder|c|WideOr10~6_combout\,
	combout => \arm_inst~21_combout\);

-- Location: LCCOMB_X88_Y11_N26
\decoder|c|WideOr26~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr26~23_combout\ = (!\decoder|a|WideOr0~4_combout\ & \decoder|a|WideOr2~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|a|WideOr2~13_combout\,
	combout => \decoder|c|WideOr26~23_combout\);

-- Location: LCCOMB_X88_Y11_N20
\decoder|c|WideOr9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr9~0_combout\ = (\decoder|c|WideOr26~23_combout\ & ((\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr3~16_combout\ $ (\decoder|a|WideOr1~11_combout\))) # (!\decoder|a|WideOr6~21_combout\ & (!\decoder|a|WideOr3~16_combout\ & 
-- !\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr26~23_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr9~0_combout\);

-- Location: LCCOMB_X88_Y11_N6
\decoder|c|WideOr9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr9~1_combout\ = (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr4~16_combout\ & \decoder|c|WideOr9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|c|WideOr9~0_combout\,
	combout => \decoder|c|WideOr9~1_combout\);

-- Location: LCCOMB_X88_Y11_N0
\decoder|c|WideOr9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr9~2_combout\ = (\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr4~16_combout\) # ((\decoder|a|WideOr2~13_combout\) # (!\decoder|a|WideOr3~16_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr2~13_combout\ $ 
-- (((!\decoder|a|WideOr4~16_combout\ & \decoder|a|WideOr3~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr2~13_combout\,
	combout => \decoder|c|WideOr9~2_combout\);

-- Location: LCCOMB_X88_Y11_N18
\decoder|c|WideOr9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr9~3_combout\ = (!\decoder|a|WideOr0~4_combout\ & (\decoder|a|WideOr1~11_combout\ & (!\decoder|a|WideOr6~21_combout\ & !\decoder|c|WideOr9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr0~4_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|a|WideOr6~21_combout\,
	datad => \decoder|c|WideOr9~2_combout\,
	combout => \decoder|c|WideOr9~3_combout\);

-- Location: LCCOMB_X88_Y11_N28
\decoder|c|WideOr9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr9~4_combout\ = (\decoder|c|WideOr9~1_combout\) # ((\decoder|c|WideOr30~25_combout\) # (\decoder|c|WideOr9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr9~1_combout\,
	datac => \decoder|c|WideOr30~25_combout\,
	datad => \decoder|c|WideOr9~3_combout\,
	combout => \decoder|c|WideOr9~4_combout\);

-- Location: LCCOMB_X75_Y4_N12
\arm_inst~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~22_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr9~4_combout\))) # (!\sm|q_select~q\ & (!\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|q_select~q\,
	datac => \sm|param_even~q\,
	datad => \decoder|c|WideOr9~4_combout\,
	combout => \arm_inst~22_combout\);

-- Location: LCCOMB_X86_Y11_N12
\decoder|c|WideOr8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~4_combout\ = (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr1~11_combout\ & !\decoder|a|WideOr4~16_combout\))) # (!\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr3~16_combout\ & 
-- ((\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr8~4_combout\);

-- Location: LCCOMB_X86_Y11_N28
\decoder|c|WideOr8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~0_combout\ = (\decoder|a|WideOr5~20_combout\) # ((\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr1~11_combout\)) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr1~11_combout\ & !\decoder|a|WideOr4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr8~0_combout\);

-- Location: LCCOMB_X86_Y11_N24
\decoder|c|WideOr8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~2_combout\ = (\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr1~11_combout\ $ (((\decoder|a|WideOr5~20_combout\ & \decoder|a|WideOr3~16_combout\))))) # (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr1~11_combout\ & 
-- (\decoder|a|WideOr5~20_combout\ $ (\decoder|a|WideOr3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr8~2_combout\);

-- Location: LCCOMB_X86_Y11_N6
\decoder|c|WideOr8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~1_combout\ = (\decoder|a|WideOr5~20_combout\ & ((\decoder|a|WideOr1~11_combout\ & ((!\decoder|a|WideOr4~16_combout\))) # (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr3~16_combout\)))) # (!\decoder|a|WideOr5~20_combout\ & 
-- (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr8~1_combout\);

-- Location: LCCOMB_X86_Y11_N18
\decoder|c|WideOr8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~3_combout\ = (\decoder|a|WideOr6~21_combout\ & (((\decoder|a|WideOr2~13_combout\) # (!\decoder|c|WideOr8~1_combout\)))) # (!\decoder|a|WideOr6~21_combout\ & (\decoder|c|WideOr8~2_combout\ & (!\decoder|a|WideOr2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|c|WideOr8~2_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|c|WideOr8~1_combout\,
	combout => \decoder|c|WideOr8~3_combout\);

-- Location: LCCOMB_X86_Y11_N30
\decoder|c|WideOr8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~5_combout\ = (\decoder|a|WideOr2~13_combout\ & ((\decoder|c|WideOr8~3_combout\ & (!\decoder|c|WideOr8~4_combout\)) # (!\decoder|c|WideOr8~3_combout\ & ((\decoder|c|WideOr8~0_combout\))))) # (!\decoder|a|WideOr2~13_combout\ & 
-- (((\decoder|c|WideOr8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr8~4_combout\,
	datab => \decoder|c|WideOr8~0_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|c|WideOr8~3_combout\,
	combout => \decoder|c|WideOr8~5_combout\);

-- Location: LCCOMB_X86_Y11_N20
\arm_inst~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~23_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr8~5_combout\) # (\decoder|a|WideOr0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr8~5_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datad => \sm|q_select~q\,
	combout => \arm_inst~23_combout\);

-- Location: LCCOMB_X86_Y11_N26
\decoder|c|WideOr7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~4_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr6~21_combout\ & (\decoder|a|WideOr4~16_combout\)) # (!\decoder|a|WideOr6~21_combout\ & (!\decoder|a|WideOr4~16_combout\ & !\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr7~4_combout\);

-- Location: LCCOMB_X86_Y11_N14
\decoder|c|WideOr7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~0_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr5~20_combout\))) # (!\decoder|a|WideOr3~16_combout\ & ((!\decoder|a|WideOr5~20_combout\) # (!\decoder|a|WideOr6~21_combout\))))) # 
-- (!\decoder|a|WideOr4~16_combout\ & (\decoder|a|WideOr3~16_combout\ $ (((\decoder|a|WideOr6~21_combout\) # (\decoder|a|WideOr5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr7~0_combout\);

-- Location: LCCOMB_X86_Y11_N2
\decoder|c|WideOr7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~2_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr5~20_combout\ & ((!\decoder|a|WideOr3~16_combout\))) # (!\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr6~21_combout\)))) # (!\decoder|a|WideOr4~16_combout\ & 
-- (!\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr3~16_combout\) # (\decoder|a|WideOr5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr7~2_combout\);

-- Location: LCCOMB_X86_Y11_N0
\decoder|c|WideOr7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~1_combout\ = (\decoder|a|WideOr6~21_combout\ & ((\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr4~16_combout\)) # (!\decoder|a|WideOr5~20_combout\ & ((!\decoder|a|WideOr3~16_combout\))))) # (!\decoder|a|WideOr6~21_combout\ & 
-- (\decoder|a|WideOr4~16_combout\ $ (((!\decoder|a|WideOr3~16_combout\ & \decoder|a|WideOr5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr6~21_combout\,
	datab => \decoder|a|WideOr4~16_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|a|WideOr5~20_combout\,
	combout => \decoder|c|WideOr7~1_combout\);

-- Location: LCCOMB_X86_Y11_N16
\decoder|c|WideOr7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~3_combout\ = (\decoder|a|WideOr1~11_combout\ & (((\decoder|a|WideOr2~13_combout\) # (\decoder|c|WideOr7~1_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & (\decoder|c|WideOr7~2_combout\ & (!\decoder|a|WideOr2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr1~11_combout\,
	datab => \decoder|c|WideOr7~2_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|c|WideOr7~1_combout\,
	combout => \decoder|c|WideOr7~3_combout\);

-- Location: LCCOMB_X86_Y11_N4
\decoder|c|WideOr7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~5_combout\ = (\decoder|a|WideOr2~13_combout\ & ((\decoder|c|WideOr7~3_combout\ & (\decoder|c|WideOr7~4_combout\)) # (!\decoder|c|WideOr7~3_combout\ & ((!\decoder|c|WideOr7~0_combout\))))) # (!\decoder|a|WideOr2~13_combout\ & 
-- (((\decoder|c|WideOr7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr7~4_combout\,
	datab => \decoder|c|WideOr7~0_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|c|WideOr7~3_combout\,
	combout => \decoder|c|WideOr7~5_combout\);

-- Location: LCCOMB_X86_Y11_N10
\arm_inst~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~24_combout\ = (\decoder|c|WideOr7~5_combout\) # ((\decoder|a|WideOr0~4_combout\) # (!\sm|q_select~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|c|WideOr7~5_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \sm|q_select~q\,
	combout => \arm_inst~24_combout\);

-- Location: LCCOMB_X86_Y14_N24
\decoder|c|WideOr6~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~26_combout\ = (!\sm|com_adr\(5) & ((\sm|com_adr\(2)) # ((\sm|com_adr\(1) & \sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(2),
	datab => \sm|com_adr\(1),
	datac => \sm|com_adr\(0),
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr6~26_combout\);

-- Location: LCCOMB_X87_Y14_N26
\decoder|c|WideOr6~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~27_combout\ = (\decoder|c|WideOr6~26_combout\ & (!\sm|com_adr\(4) & ((\sm|com_adr\(0)) # (\sm|com_adr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \decoder|c|WideOr6~26_combout\,
	datac => \sm|com_adr\(4),
	datad => \sm|com_adr\(2),
	combout => \decoder|c|WideOr6~27_combout\);

-- Location: LCCOMB_X87_Y14_N30
\decoder|c|WideOr6~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~17_combout\ = (\sm|com_adr\(0) & ((\sm|com_adr\(5) & (!\sm|com_adr\(4))) # (!\sm|com_adr\(5) & ((\sm|com_adr\(2)))))) # (!\sm|com_adr\(0) & (\sm|com_adr\(5) $ (((\sm|com_adr\(4)) # (\sm|com_adr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr6~17_combout\);

-- Location: LCCOMB_X87_Y14_N8
\decoder|c|WideOr6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~16_combout\ = (\sm|com_adr\(2) & (!\sm|com_adr\(0) & (\sm|com_adr\(4) $ (\sm|com_adr\(5))))) # (!\sm|com_adr\(2) & (((!\sm|com_adr\(4) & \sm|com_adr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr6~16_combout\);

-- Location: LCCOMB_X87_Y14_N6
\decoder|c|WideOr6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~14_combout\ = (\sm|com_adr\(4) & ((\sm|com_adr\(2) $ (\sm|com_adr\(5))))) # (!\sm|com_adr\(4) & (\sm|com_adr\(5) & ((\sm|com_adr\(2)) # (!\sm|com_adr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr6~14_combout\);

-- Location: LCCOMB_X87_Y14_N24
\decoder|c|WideOr6~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~13_combout\ = (\sm|com_adr\(0) & (\sm|com_adr\(5) & (\sm|com_adr\(4) $ (\sm|com_adr\(2))))) # (!\sm|com_adr\(0) & (\sm|com_adr\(4) & (!\sm|com_adr\(2) & !\sm|com_adr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(0),
	datab => \sm|com_adr\(4),
	datac => \sm|com_adr\(2),
	datad => \sm|com_adr\(5),
	combout => \decoder|c|WideOr6~13_combout\);

-- Location: LCCOMB_X87_Y14_N16
\decoder|c|WideOr6~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~22_combout\ = (\sm|com_adr\(3) & (((\sm|com_adr\(1))))) # (!\sm|com_adr\(3) & ((\sm|com_adr\(1) & (\decoder|c|WideOr6~14_combout\)) # (!\sm|com_adr\(1) & ((\decoder|c|WideOr6~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr6~14_combout\,
	datab => \sm|com_adr\(3),
	datac => \decoder|c|WideOr6~13_combout\,
	datad => \sm|com_adr\(1),
	combout => \decoder|c|WideOr6~22_combout\);

-- Location: LCCOMB_X87_Y14_N10
\decoder|c|WideOr6~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~23_combout\ = (\sm|com_adr\(3) & ((\decoder|c|WideOr6~22_combout\ & (\decoder|c|WideOr6~17_combout\)) # (!\decoder|c|WideOr6~22_combout\ & ((\decoder|c|WideOr6~16_combout\))))) # (!\sm|com_adr\(3) & (((\decoder|c|WideOr6~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr6~17_combout\,
	datab => \sm|com_adr\(3),
	datac => \decoder|c|WideOr6~16_combout\,
	datad => \decoder|c|WideOr6~22_combout\,
	combout => \decoder|c|WideOr6~23_combout\);

-- Location: LCCOMB_X87_Y14_N20
\decoder|c|WideOr6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~3_combout\ = (\sm|com_adr\(8) & (((\decoder|c|WideOr6~23_combout\)))) # (!\sm|com_adr\(8) & (\sm|com_adr\(3) & (\decoder|c|WideOr6~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(8),
	datab => \sm|com_adr\(3),
	datac => \decoder|c|WideOr6~27_combout\,
	datad => \decoder|c|WideOr6~23_combout\,
	combout => \decoder|c|WideOr6~3_combout\);

-- Location: LCCOMB_X91_Y8_N8
\decoder|c|WideOr6~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~25_combout\ = (!\sm|com_adr\(7) & (!\sm|com_adr\(6) & \decoder|c|WideOr6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|com_adr\(7),
	datac => \sm|com_adr\(6),
	datad => \decoder|c|WideOr6~3_combout\,
	combout => \decoder|c|WideOr6~25_combout\);

-- Location: LCCOMB_X91_Y8_N16
\decoder|c|WideOr6~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr6~24_combout\ = (\decoder|c|WideOr30~25_combout\) # ((!\decoder|a|WideOr0~4_combout\ & \decoder|c|WideOr6~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr0~4_combout\,
	datab => \decoder|c|WideOr30~25_combout\,
	datac => \decoder|c|WideOr6~25_combout\,
	combout => \decoder|c|WideOr6~24_combout\);

-- Location: LCCOMB_X91_Y8_N26
\arm_inst~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~25_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr6~24_combout\))) # (!\sm|q_select~q\ & (!\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datac => \sm|param_even~q\,
	datad => \decoder|c|WideOr6~24_combout\,
	combout => \arm_inst~25_combout\);

-- Location: LCCOMB_X92_Y14_N26
\decoder|c|WideOr5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~4_combout\ = (\decoder|a|WideOr4~16_combout\ & ((\decoder|a|WideOr3~16_combout\ & (!\decoder|a|WideOr5~20_combout\ & \decoder|a|WideOr1~11_combout\)) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr5~20_combout\ & 
-- !\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr5~4_combout\);

-- Location: LCCOMB_X92_Y14_N14
\decoder|c|WideOr5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~2_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr1~11_combout\ $ (\decoder|a|WideOr4~16_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr1~11_combout\ $ 
-- (!\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr5~2_combout\);

-- Location: LCCOMB_X92_Y14_N24
\decoder|c|WideOr5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~1_combout\ = (\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr3~16_combout\ & (\decoder|a|WideOr5~20_combout\ $ (\decoder|a|WideOr4~16_combout\)))) # (!\decoder|a|WideOr1~11_combout\ & (\decoder|a|WideOr3~16_combout\ $ 
-- (((\decoder|a|WideOr5~20_combout\) # (\decoder|a|WideOr4~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr5~1_combout\);

-- Location: LCCOMB_X92_Y14_N4
\decoder|c|WideOr5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~3_combout\ = (\decoder|a|WideOr2~13_combout\ & (\decoder|a|WideOr6~21_combout\)) # (!\decoder|a|WideOr2~13_combout\ & ((\decoder|a|WideOr6~21_combout\ & ((!\decoder|c|WideOr5~1_combout\))) # (!\decoder|a|WideOr6~21_combout\ & 
-- (\decoder|c|WideOr5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|c|WideOr5~2_combout\,
	datad => \decoder|c|WideOr5~1_combout\,
	combout => \decoder|c|WideOr5~3_combout\);

-- Location: LCCOMB_X92_Y14_N18
\decoder|c|WideOr5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~0_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr1~11_combout\ & \decoder|a|WideOr4~16_combout\)) # (!\decoder|a|WideOr5~20_combout\ & (!\decoder|a|WideOr1~11_combout\ & 
-- !\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr1~11_combout\,
	datad => \decoder|a|WideOr4~16_combout\,
	combout => \decoder|c|WideOr5~0_combout\);

-- Location: LCCOMB_X92_Y14_N16
\decoder|c|WideOr5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~5_combout\ = (\decoder|c|WideOr5~3_combout\ & (((!\decoder|a|WideOr2~13_combout\)) # (!\decoder|c|WideOr5~4_combout\))) # (!\decoder|c|WideOr5~3_combout\ & (((\decoder|a|WideOr2~13_combout\ & !\decoder|c|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr5~4_combout\,
	datab => \decoder|c|WideOr5~3_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|c|WideOr5~0_combout\,
	combout => \decoder|c|WideOr5~5_combout\);

-- Location: LCCOMB_X91_Y11_N22
\decoder|c|WideOr5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr5~6_combout\ = (\decoder|a|WideOr0~4_combout\ & (((\decoder|a|WideOr5~20_combout\)) # (!\decoder|c|WideOr22~2_combout\))) # (!\decoder|a|WideOr0~4_combout\ & (((\decoder|c|WideOr5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr22~2_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr5~5_combout\,
	combout => \decoder|c|WideOr5~6_combout\);

-- Location: LCCOMB_X91_Y8_N4
\arm_inst~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~26_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr5~6_combout\))) # (!\sm|q_select~q\ & (\sm|param_even~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|q_select~q\,
	datac => \sm|param_even~q\,
	datad => \decoder|c|WideOr5~6_combout\,
	combout => \arm_inst~26_combout\);

-- Location: LCCOMB_X88_Y11_N14
\decoder|c|WideOr4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr4~2_combout\ = (\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr4~16_combout\ $ (((\decoder|a|WideOr6~21_combout\ & !\decoder|a|WideOr1~11_combout\))))) # (!\decoder|a|WideOr5~20_combout\ & (\decoder|a|WideOr4~16_combout\ & 
-- ((!\decoder|a|WideOr1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr4~16_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr5~20_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr4~2_combout\);

-- Location: LCCOMB_X91_Y11_N20
\decoder|c|WideOr4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr4~3_combout\ = (\decoder|a|WideOr3~16_combout\ & ((\decoder|c|WideOr22~7_combout\) # ((!\decoder|a|WideOr2~13_combout\)))) # (!\decoder|a|WideOr3~16_combout\ & (((!\decoder|a|WideOr2~13_combout\ & \decoder|c|WideOr4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr3~16_combout\,
	datab => \decoder|c|WideOr22~7_combout\,
	datac => \decoder|a|WideOr2~13_combout\,
	datad => \decoder|c|WideOr4~2_combout\,
	combout => \decoder|c|WideOr4~3_combout\);

-- Location: LCCOMB_X91_Y11_N10
\decoder|c|WideOr4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr4~4_combout\ = (\decoder|c|WideOr4~3_combout\) # ((\decoder|a|WideOr2~13_combout\ & (!\decoder|c|WideOr27~1_combout\ & !\decoder|a|WideOr3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|c|WideOr27~1_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|c|WideOr4~3_combout\,
	combout => \decoder|c|WideOr4~4_combout\);

-- Location: LCCOMB_X91_Y11_N4
\arm_inst~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~27_combout\ = (\sm|q_select~q\ & ((\decoder|c|WideOr22~3_combout\) # ((\decoder|c|WideOr4~4_combout\ & !\decoder|a|WideOr0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr4~4_combout\,
	datab => \sm|q_select~q\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr22~3_combout\,
	combout => \arm_inst~27_combout\);

-- Location: LCCOMB_X92_Y11_N12
\decoder|c|WideOr3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr3~1_combout\ = (\decoder|c|WideOr30~25_combout\) # ((!\decoder|a|WideOr3~16_combout\ & (\decoder|c|WideOr21~0_combout\ & \decoder|c|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr30~25_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|c|WideOr21~0_combout\,
	datad => \decoder|c|WideOr3~0_combout\,
	combout => \decoder|c|WideOr3~1_combout\);

-- Location: LCCOMB_X93_Y1_N6
\arm_inst~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~28_combout\ = (\decoder|c|WideOr3~1_combout\ & \sm|q_select~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr3~1_combout\,
	datac => \sm|q_select~q\,
	combout => \arm_inst~28_combout\);

-- Location: LCCOMB_X92_Y11_N2
\decoder|c|WideOr2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr2~2_combout\ = (\decoder|a|WideOr4~16_combout\) # ((!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr5~20_combout\) # (\decoder|a|WideOr6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr2~2_combout\);

-- Location: LCCOMB_X92_Y11_N4
\arm_inst~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~29_combout\ = (((\decoder|a|WideOr3~16_combout\) # (\decoder|c|WideOr2~2_combout\)) # (!\sm|q_select~q\)) # (!\decoder|c|WideOr21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr21~0_combout\,
	datab => \sm|q_select~q\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|c|WideOr2~2_combout\,
	combout => \arm_inst~29_combout\);

-- Location: LCCOMB_X92_Y11_N22
\decoder|c|WideOr1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr1~2_combout\ = (\decoder|a|WideOr5~20_combout\) # ((!\decoder|a|WideOr1~11_combout\ & ((\decoder|a|WideOr6~21_combout\) # (\decoder|a|WideOr4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr1~2_combout\);

-- Location: LCCOMB_X92_Y11_N20
\arm_inst~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~30_combout\ = ((\decoder|a|WideOr3~16_combout\) # ((\decoder|c|WideOr1~2_combout\) # (!\sm|q_select~q\))) # (!\decoder|c|WideOr21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr21~0_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|c|WideOr1~2_combout\,
	datad => \sm|q_select~q\,
	combout => \arm_inst~30_combout\);

-- Location: LCCOMB_X92_Y11_N6
\decoder|c|WideOr0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr0~2_combout\ = (\decoder|a|WideOr5~20_combout\) # ((\decoder|a|WideOr4~16_combout\) # ((\decoder|a|WideOr6~21_combout\ & !\decoder|a|WideOr1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr5~20_combout\,
	datab => \decoder|a|WideOr6~21_combout\,
	datac => \decoder|a|WideOr4~16_combout\,
	datad => \decoder|a|WideOr1~11_combout\,
	combout => \decoder|c|WideOr0~2_combout\);

-- Location: LCCOMB_X92_Y11_N28
\arm_inst~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \arm_inst~31_combout\ = (\decoder|c|WideOr0~2_combout\) # ((\decoder|a|WideOr3~16_combout\) # ((!\sm|q_select~q\) # (!\decoder|c|WideOr21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr0~2_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|c|WideOr21~0_combout\,
	datad => \sm|q_select~q\,
	combout => \arm_inst~31_combout\);

-- Location: LCCOMB_X91_Y8_N14
\decoder|c|WideOr29~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr29~3_combout\ = (\decoder|c|WideOr30~25_combout\) # (\decoder|c|WideOr29~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|c|WideOr30~25_combout\,
	datad => \decoder|c|WideOr29~2_combout\,
	combout => \decoder|c|WideOr29~3_combout\);

-- Location: LCCOMB_X92_Y14_N22
\decoder|c|WideOr23~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr23~8_combout\ = (\decoder|a|WideOr0~4_combout\) # ((\decoder|a|WideOr1~11_combout\ & (!\decoder|c|WideOr23~5_combout\ & \decoder|c|WideOr23~4_combout\)) # (!\decoder|a|WideOr1~11_combout\ & (\decoder|c|WideOr23~5_combout\ & 
-- !\decoder|c|WideOr23~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr0~4_combout\,
	datab => \decoder|a|WideOr1~11_combout\,
	datac => \decoder|c|WideOr23~5_combout\,
	datad => \decoder|c|WideOr23~4_combout\,
	combout => \decoder|c|WideOr23~8_combout\);

-- Location: LCCOMB_X91_Y11_N16
\decoder|c|WideOr22~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr22~9_combout\ = (\decoder|a|WideOr0~4_combout\ & (((\decoder|a|WideOr5~20_combout\) # (!\decoder|c|WideOr22~2_combout\)))) # (!\decoder|a|WideOr0~4_combout\ & (\decoder|c|WideOr22~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr22~8_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr22~2_combout\,
	combout => \decoder|c|WideOr22~9_combout\);

-- Location: LCCOMB_X91_Y11_N14
\decoder|c|WideOr20~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr20~5_combout\ = (\decoder|a|WideOr0~4_combout\ & (((\decoder|a|WideOr5~20_combout\)) # (!\decoder|c|WideOr22~2_combout\))) # (!\decoder|a|WideOr0~4_combout\ & (((\decoder|c|WideOr20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr22~2_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr20~4_combout\,
	combout => \decoder|c|WideOr20~5_combout\);

-- Location: LCCOMB_X87_Y11_N24
\decoder|c|WideOr17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr17~1_combout\ = ((\decoder|c|WideOr17~0_combout\ & \decoder|c|WideOr21~1_combout\)) # (!\decoder|c|WideOr27~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr17~0_combout\,
	datac => \decoder|c|WideOr21~1_combout\,
	datad => \decoder|c|WideOr27~2_combout\,
	combout => \decoder|c|WideOr17~1_combout\);

-- Location: LCCOMB_X91_Y11_N30
\decoder|c|WideOr11~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr11~6_combout\ = (\decoder|a|WideOr0~4_combout\ & ((!\decoder|c|WideOr22~2_combout\))) # (!\decoder|a|WideOr0~4_combout\ & (\decoder|c|WideOr11~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr11~5_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr22~2_combout\,
	combout => \decoder|c|WideOr11~6_combout\);

-- Location: LCCOMB_X86_Y11_N8
\decoder|c|WideOr8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr8~6_combout\ = (\decoder|a|WideOr0~4_combout\) # (\decoder|c|WideOr8~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr8~5_combout\,
	combout => \decoder|c|WideOr8~6_combout\);

-- Location: LCCOMB_X86_Y11_N22
\decoder|c|WideOr7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr7~6_combout\ = (\decoder|a|WideOr0~4_combout\) # (\decoder|c|WideOr7~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|c|WideOr7~5_combout\,
	combout => \decoder|c|WideOr7~6_combout\);

-- Location: LCCOMB_X91_Y11_N28
\decoder|c|WideOr4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr4~5_combout\ = (\decoder|a|WideOr0~4_combout\ & (((\decoder|a|WideOr5~20_combout\) # (!\decoder|c|WideOr22~2_combout\)))) # (!\decoder|a|WideOr0~4_combout\ & (\decoder|c|WideOr4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|c|WideOr4~4_combout\,
	datab => \decoder|a|WideOr5~20_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr22~2_combout\,
	combout => \decoder|c|WideOr4~5_combout\);

-- Location: LCCOMB_X92_Y11_N30
\decoder|c|WideOr2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr2~3_combout\ = (\decoder|a|WideOr2~13_combout\) # ((\decoder|a|WideOr0~4_combout\) # ((\decoder|a|WideOr3~16_combout\) # (\decoder|c|WideOr2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr0~4_combout\,
	datac => \decoder|a|WideOr3~16_combout\,
	datad => \decoder|c|WideOr2~2_combout\,
	combout => \decoder|c|WideOr2~3_combout\);

-- Location: LCCOMB_X92_Y11_N8
\decoder|c|WideOr1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr1~3_combout\ = (\decoder|a|WideOr2~13_combout\) # ((\decoder|a|WideOr3~16_combout\) # ((\decoder|c|WideOr1~2_combout\) # (\decoder|a|WideOr0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|c|WideOr1~2_combout\,
	datad => \decoder|a|WideOr0~4_combout\,
	combout => \decoder|c|WideOr1~3_combout\);

-- Location: LCCOMB_X92_Y11_N14
\decoder|c|WideOr0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|c|WideOr0~3_combout\ = (\decoder|a|WideOr2~13_combout\) # ((\decoder|a|WideOr3~16_combout\) # ((\decoder|a|WideOr0~4_combout\) # (\decoder|c|WideOr0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|a|WideOr2~13_combout\,
	datab => \decoder|a|WideOr3~16_combout\,
	datac => \decoder|a|WideOr0~4_combout\,
	datad => \decoder|c|WideOr0~2_combout\,
	combout => \decoder|c|WideOr0~3_combout\);

-- Location: LCCOMB_X82_Y20_N20
\WideOr3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = (\sm|jvm_opcode\(1)) # ((\sm|jvm_opcode\(3)) # ((\sm|jvm_opcode\(2)) # (\sm|jvm_opcode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(1),
	datab => \sm|jvm_opcode\(3),
	datac => \sm|jvm_opcode\(2),
	datad => \sm|jvm_opcode\(0),
	combout => \WideOr3~1_combout\);

-- Location: LCCOMB_X79_Y19_N24
\WideOr3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\sm|jvm_opcode\(6)) # ((\sm|jvm_opcode\(4)) # ((\sm|jvm_opcode\(7)) # (\sm|jvm_opcode\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|jvm_opcode\(6),
	datab => \sm|jvm_opcode\(4),
	datac => \sm|jvm_opcode\(7),
	datad => \sm|jvm_opcode\(5),
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X78_Y19_N20
\valid_write~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid_write~0_combout\ = (!\waiting~0_combout\ & (\sm|state\(1) & ((\WideOr3~1_combout\) # (\WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~1_combout\,
	datab => \WideOr3~0_combout\,
	datac => \waiting~0_combout\,
	datad => \sm|state\(1),
	combout => \valid_write~0_combout\);

-- Location: LCCOMB_X77_Y19_N2
\valid_write~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid_write~1_combout\ = (\valid_write~0_combout\ & ((\WideOr2~combout\) # (\sm|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valid_write~0_combout\,
	datab => \WideOr2~combout\,
	datad => \sm|state\(0),
	combout => \valid_write~1_combout\);

-- Location: LCCOMB_X82_Y19_N24
\byte_to_push~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~0_combout\ = (\sm|push_wide~q\ & (\sm|is_wide~q\)) # (!\sm|push_wide~q\ & ((\n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|is_wide~q\,
	datac => \sm|push_wide~q\,
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \byte_to_push~0_combout\);

-- Location: LCCOMB_X75_Y4_N22
\byte_to_push~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~1_combout\ = (\n|mem|array_rtl_0|auto_generated|ram_block1a1\ & !\sm|push_wide~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a1\,
	datad => \sm|push_wide~q\,
	combout => \byte_to_push~1_combout\);

-- Location: LCCOMB_X83_Y20_N4
\byte_to_push~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~2_combout\ = (!\sm|push_wide~q\ & \n|mem|array_rtl_0|auto_generated|ram_block1a2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|push_wide~q\,
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a2\,
	combout => \byte_to_push~2_combout\);

-- Location: LCCOMB_X75_Y4_N20
\byte_to_push~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~3_combout\ = (\n|mem|array_rtl_0|auto_generated|ram_block1a3\ & !\sm|push_wide~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n|mem|array_rtl_0|auto_generated|ram_block1a3\,
	datad => \sm|push_wide~q\,
	combout => \byte_to_push~3_combout\);

-- Location: LCCOMB_X75_Y4_N18
\byte_to_push~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~4_combout\ = (\n|mem|array_rtl_0|auto_generated|ram_block1a4\ & !\sm|push_wide~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a4\,
	datad => \sm|push_wide~q\,
	combout => \byte_to_push~4_combout\);

-- Location: LCCOMB_X75_Y4_N24
\byte_to_push~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~5_combout\ = (\n|mem|array_rtl_0|auto_generated|ram_block1a5\ & !\sm|push_wide~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a5\,
	datad => \sm|push_wide~q\,
	combout => \byte_to_push~5_combout\);

-- Location: LCCOMB_X75_Y4_N10
\byte_to_push~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~6_combout\ = (\n|mem|array_rtl_0|auto_generated|ram_block1a6\ & !\sm|push_wide~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n|mem|array_rtl_0|auto_generated|ram_block1a6\,
	datad => \sm|push_wide~q\,
	combout => \byte_to_push~6_combout\);

-- Location: LCCOMB_X79_Y20_N30
\byte_to_push~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \byte_to_push~7_combout\ = (!\sm|push_wide~q\ & \n|mem|array_rtl_0|auto_generated|ram_block1a7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|push_wide~q\,
	datad => \n|mem|array_rtl_0|auto_generated|ram_block1a7\,
	combout => \byte_to_push~7_combout\);

ww_state(0) <= \state[0]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_state(2) <= \state[2]~output_o\;

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

ww_iram(0) <= \iram[0]~output_o\;

ww_iram(1) <= \iram[1]~output_o\;

ww_iram(2) <= \iram[2]~output_o\;

ww_iram(3) <= \iram[3]~output_o\;

ww_iram(4) <= \iram[4]~output_o\;

ww_iram(5) <= \iram[5]~output_o\;

ww_iram(6) <= \iram[6]~output_o\;

ww_iram(7) <= \iram[7]~output_o\;

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

ww_iram_ready <= \iram_ready~output_o\;
END structure;


