-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "02/19/2018 16:53:29"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	simple_vec_dot_product IS
    PORT (
	ap_clk : IN std_logic;
	ap_rst : IN std_logic;
	ap_start : IN std_logic;
	ap_done : BUFFER std_logic;
	ap_idle : BUFFER std_logic;
	ap_ready : BUFFER std_logic;
	a_address0 : BUFFER std_logic_vector(1 DOWNTO 0);
	a_ce0 : BUFFER std_logic;
	a_q0 : IN std_logic_vector(31 DOWNTO 0);
	b_address0 : BUFFER std_logic_vector(1 DOWNTO 0);
	b_ce0 : BUFFER std_logic;
	b_q0 : IN std_logic_vector(31 DOWNTO 0);
	out_r_address0 : BUFFER std_logic_vector(1 DOWNTO 0);
	out_r_ce0 : BUFFER std_logic;
	out_r_we0 : BUFFER std_logic;
	out_r_d0 : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END simple_vec_dot_product;

-- Design Ports Information
-- ap_done	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ap_idle	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ap_ready	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_address0[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_address0[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_ce0	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_address0[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_address0[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_ce0	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_address0[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_address0[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_ce0	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_we0	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[8]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[10]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[11]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[12]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[13]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[14]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[15]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[16]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[17]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[18]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[19]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[20]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[21]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[22]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[23]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[24]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[25]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[26]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[27]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[28]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[29]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[30]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_r_d0[31]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ap_start	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ap_rst	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ap_clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[18]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[19]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[20]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[21]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[22]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[23]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[24]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[25]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[26]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[27]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[28]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[29]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[30]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[31]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[18]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[19]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[20]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[21]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[22]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[23]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[24]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[25]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[26]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[27]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[28]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[29]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[30]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[31]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[2]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[5]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[9]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[10]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[11]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[13]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[14]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[15]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[16]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_q0[17]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[2]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[8]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[9]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[10]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[11]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[12]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[13]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[14]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[15]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[16]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_q0[17]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF simple_vec_dot_product IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ap_clk : std_logic;
SIGNAL ww_ap_rst : std_logic;
SIGNAL ww_ap_start : std_logic;
SIGNAL ww_ap_done : std_logic;
SIGNAL ww_ap_idle : std_logic;
SIGNAL ww_ap_ready : std_logic;
SIGNAL ww_a_address0 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_a_ce0 : std_logic;
SIGNAL ww_a_q0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b_address0 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_b_ce0 : std_logic;
SIGNAL ww_b_q0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_out_r_address0 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_r_ce0 : std_logic;
SIGNAL ww_out_r_we0 : std_logic;
SIGNAL ww_out_r_d0 : std_logic_vector(31 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \ap_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~0\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~4\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~5\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~6\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~7\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \ap_done~output_o\ : std_logic;
SIGNAL \ap_idle~output_o\ : std_logic;
SIGNAL \ap_ready~output_o\ : std_logic;
SIGNAL \a_address0[0]~output_o\ : std_logic;
SIGNAL \a_address0[1]~output_o\ : std_logic;
SIGNAL \a_ce0~output_o\ : std_logic;
SIGNAL \b_address0[0]~output_o\ : std_logic;
SIGNAL \b_address0[1]~output_o\ : std_logic;
SIGNAL \b_ce0~output_o\ : std_logic;
SIGNAL \out_r_address0[0]~output_o\ : std_logic;
SIGNAL \out_r_address0[1]~output_o\ : std_logic;
SIGNAL \out_r_ce0~output_o\ : std_logic;
SIGNAL \out_r_we0~output_o\ : std_logic;
SIGNAL \out_r_d0[0]~output_o\ : std_logic;
SIGNAL \out_r_d0[1]~output_o\ : std_logic;
SIGNAL \out_r_d0[2]~output_o\ : std_logic;
SIGNAL \out_r_d0[3]~output_o\ : std_logic;
SIGNAL \out_r_d0[4]~output_o\ : std_logic;
SIGNAL \out_r_d0[5]~output_o\ : std_logic;
SIGNAL \out_r_d0[6]~output_o\ : std_logic;
SIGNAL \out_r_d0[7]~output_o\ : std_logic;
SIGNAL \out_r_d0[8]~output_o\ : std_logic;
SIGNAL \out_r_d0[9]~output_o\ : std_logic;
SIGNAL \out_r_d0[10]~output_o\ : std_logic;
SIGNAL \out_r_d0[11]~output_o\ : std_logic;
SIGNAL \out_r_d0[12]~output_o\ : std_logic;
SIGNAL \out_r_d0[13]~output_o\ : std_logic;
SIGNAL \out_r_d0[14]~output_o\ : std_logic;
SIGNAL \out_r_d0[15]~output_o\ : std_logic;
SIGNAL \out_r_d0[16]~output_o\ : std_logic;
SIGNAL \out_r_d0[17]~output_o\ : std_logic;
SIGNAL \out_r_d0[18]~output_o\ : std_logic;
SIGNAL \out_r_d0[19]~output_o\ : std_logic;
SIGNAL \out_r_d0[20]~output_o\ : std_logic;
SIGNAL \out_r_d0[21]~output_o\ : std_logic;
SIGNAL \out_r_d0[22]~output_o\ : std_logic;
SIGNAL \out_r_d0[23]~output_o\ : std_logic;
SIGNAL \out_r_d0[24]~output_o\ : std_logic;
SIGNAL \out_r_d0[25]~output_o\ : std_logic;
SIGNAL \out_r_d0[26]~output_o\ : std_logic;
SIGNAL \out_r_d0[27]~output_o\ : std_logic;
SIGNAL \out_r_d0[28]~output_o\ : std_logic;
SIGNAL \out_r_d0[29]~output_o\ : std_logic;
SIGNAL \out_r_d0[30]~output_o\ : std_logic;
SIGNAL \out_r_d0[31]~output_o\ : std_logic;
SIGNAL \ap_clk~input_o\ : std_logic;
SIGNAL \ap_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ap_rst~input_o\ : std_logic;
SIGNAL \ap_CS_fsm~5_combout\ : std_logic;
SIGNAL \ap_CS_fsm~6_combout\ : std_logic;
SIGNAL \ap_CS_fsm~7_combout\ : std_logic;
SIGNAL \ap_CS_fsm~8_combout\ : std_logic;
SIGNAL \ap_CS_fsm~9_combout\ : std_logic;
SIGNAL \ap_CS_fsm~3_combout\ : std_logic;
SIGNAL \i0_1_reg_165[0]~0_combout\ : std_logic;
SIGNAL \i0_reg_74~2_combout\ : std_logic;
SIGNAL \ap_start~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \i0_reg_74[0]~1_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \i0_reg_74~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \i0_reg_74~0_combout\ : std_logic;
SIGNAL \process_4~0_combout\ : std_logic;
SIGNAL \ap_CS_fsm~4_combout\ : std_logic;
SIGNAL \ap_CS_fsm~0_combout\ : std_logic;
SIGNAL \ap_CS_fsm~1_combout\ : std_logic;
SIGNAL \ap_CS_fsm~2_combout\ : std_logic;
SIGNAL \ap_done_assign_proc~0_combout\ : std_logic;
SIGNAL \ap_idle_assign_proc~0_combout\ : std_logic;
SIGNAL \tmp_reg_170[0]~feeder_combout\ : std_logic;
SIGNAL \tmp_reg_170[1]~feeder_combout\ : std_logic;
SIGNAL \b_q0[18]~input_o\ : std_logic;
SIGNAL \b_q0[19]~input_o\ : std_logic;
SIGNAL \b_q0[20]~input_o\ : std_logic;
SIGNAL \b_q0[21]~input_o\ : std_logic;
SIGNAL \b_q0[22]~input_o\ : std_logic;
SIGNAL \b_q0[23]~input_o\ : std_logic;
SIGNAL \b_q0[24]~input_o\ : std_logic;
SIGNAL \b_q0[25]~input_o\ : std_logic;
SIGNAL \b_q0[26]~input_o\ : std_logic;
SIGNAL \b_q0[27]~input_o\ : std_logic;
SIGNAL \b_q0[28]~input_o\ : std_logic;
SIGNAL \b_q0[29]~input_o\ : std_logic;
SIGNAL \b_q0[30]~input_o\ : std_logic;
SIGNAL \b_q0[31]~input_o\ : std_logic;
SIGNAL \a_q0[18]~input_o\ : std_logic;
SIGNAL \a_q0[19]~input_o\ : std_logic;
SIGNAL \a_q0[20]~input_o\ : std_logic;
SIGNAL \a_q0[21]~input_o\ : std_logic;
SIGNAL \a_q0[22]~input_o\ : std_logic;
SIGNAL \a_q0[23]~input_o\ : std_logic;
SIGNAL \a_q0[24]~input_o\ : std_logic;
SIGNAL \a_q0[25]~input_o\ : std_logic;
SIGNAL \a_q0[26]~input_o\ : std_logic;
SIGNAL \a_q0[27]~input_o\ : std_logic;
SIGNAL \a_q0[28]~input_o\ : std_logic;
SIGNAL \a_q0[29]~input_o\ : std_logic;
SIGNAL \a_q0[30]~input_o\ : std_logic;
SIGNAL \a_q0[31]~input_o\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~dataout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT4\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT5\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT6\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT7\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT8\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT9\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT10\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT11\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT12\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT13\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT14\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT15\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT16\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT17\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT18\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT19\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT20\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT21\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT22\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT23\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT24\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT25\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT26\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT27\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~0\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~4\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~5\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~6\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~7\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT27\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT26\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT25\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT24\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT23\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT22\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT21\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT20\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT19\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT18\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT17\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT16\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT15\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT14\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT13\ : std_logic;
SIGNAL \a_q0[4]~input_o\ : std_logic;
SIGNAL \a_q0[5]~input_o\ : std_logic;
SIGNAL \a_q0[6]~input_o\ : std_logic;
SIGNAL \a_q0[7]~input_o\ : std_logic;
SIGNAL \a_q0[8]~input_o\ : std_logic;
SIGNAL \a_q0[9]~input_o\ : std_logic;
SIGNAL \a_q0[10]~input_o\ : std_logic;
SIGNAL \a_q0[11]~input_o\ : std_logic;
SIGNAL \a_q0[12]~input_o\ : std_logic;
SIGNAL \a_q0[13]~input_o\ : std_logic;
SIGNAL \a_q0[14]~input_o\ : std_logic;
SIGNAL \a_q0[15]~input_o\ : std_logic;
SIGNAL \a_q0[16]~input_o\ : std_logic;
SIGNAL \a_q0[17]~input_o\ : std_logic;
SIGNAL \a_q0[0]~input_o\ : std_logic;
SIGNAL \a_q0[1]~input_o\ : std_logic;
SIGNAL \a_q0[2]~input_o\ : std_logic;
SIGNAL \a_q0[3]~input_o\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT12\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT11\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT10\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT9\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT8\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT7\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT6\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT5\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT4\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~dataout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \b_q0[0]~input_o\ : std_logic;
SIGNAL \b_q0[1]~input_o\ : std_logic;
SIGNAL \b_q0[2]~input_o\ : std_logic;
SIGNAL \b_q0[3]~input_o\ : std_logic;
SIGNAL \b_q0[4]~input_o\ : std_logic;
SIGNAL \b_q0[5]~input_o\ : std_logic;
SIGNAL \b_q0[6]~input_o\ : std_logic;
SIGNAL \b_q0[7]~input_o\ : std_logic;
SIGNAL \b_q0[8]~input_o\ : std_logic;
SIGNAL \b_q0[9]~input_o\ : std_logic;
SIGNAL \b_q0[10]~input_o\ : std_logic;
SIGNAL \b_q0[11]~input_o\ : std_logic;
SIGNAL \b_q0[12]~input_o\ : std_logic;
SIGNAL \b_q0[13]~input_o\ : std_logic;
SIGNAL \b_q0[14]~input_o\ : std_logic;
SIGNAL \b_q0[15]~input_o\ : std_logic;
SIGNAL \b_q0[16]~input_o\ : std_logic;
SIGNAL \b_q0[17]~input_o\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~5\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~7\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~9\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~11\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~13\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~15\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~17\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~19\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~21\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~23\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~25\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~27\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~29\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~31\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~33\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~35\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~37\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~39\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~41\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~43\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~45\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~47\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~49\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~51\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~53\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~55\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~57\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~59\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~61\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~63\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~65\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~67\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~69\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~71\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~73\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~75\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~77\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~79\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~81\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~83\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~85\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~87\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~89\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[45]~90_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~88_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~86_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~84_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~82_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~80_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~78_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~76_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~74_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~72_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~70_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~68_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~66_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~64_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~62_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~60_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~58_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~56_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~54_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~52_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~50_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~48_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~46_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~44_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~42_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~40_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~38_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~36_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~34_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~32_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~30_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~28_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~26_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~24_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~22_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~20_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~18_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~16_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~14_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~12_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~10_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~8_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~6_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~4_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~2_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~0_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~47\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]~49\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~51\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]~53\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~55\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]~57\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~59\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]~61\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~63\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]~65\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~67\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]~69\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~71\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]~73\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~75\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]~77\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~79\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]~81\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~83\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]~85\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~87\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]~89\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~91\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]~93\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~95\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]~97\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~99\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]~101\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~103\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]~105\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~107\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]~109\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]~111\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]~113\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]~115\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]~117\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]~119\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]~121\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]~123\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]~125\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]~127\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]~129\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]~131\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]~133\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[62]~135\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[63]~136_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[0]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[1]~0_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[62]~134_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]~132_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]~130_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]~128_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]~126_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]~124_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]~122_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]~120_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]~118_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]~116_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]~114_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]~112_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]~110_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]~108_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~106_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]~104_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~102_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]~100_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~98_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]~96_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~94_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]~92_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~90_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]~88_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~86_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]~84_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~82_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]~80_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~78_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]~76_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~74_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]~72_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[2]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[1]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[0]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a10\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a9\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a11\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a12\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a14\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a15\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a13\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a16\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a6\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a5\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a7\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a8\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a3\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a1\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a4\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a2\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a18\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a20\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a17\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a19\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a32\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a30\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a31\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a29\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a23\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a22\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a21\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a24\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a25\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a27\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a28\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a26\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a63\ : std_logic;
SIGNAL \i1_reg_195[57]~feeder_combout\ : std_logic;
SIGNAL \i1_reg_195[55]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \i1_reg_195[60]~feeder_combout\ : std_logic;
SIGNAL \i1_reg_195[61]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \i1_reg_195[48]~feeder_combout\ : std_logic;
SIGNAL \i1_reg_195[47]~feeder_combout\ : std_logic;
SIGNAL \i1_reg_195[49]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \i1_reg_195[51]~feeder_combout\ : std_logic;
SIGNAL \i1_reg_195[53]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \i1_reg_195[40]~feeder_combout\ : std_logic;
SIGNAL \i1_reg_195[41]~feeder_combout\ : std_logic;
SIGNAL \i1_reg_195[39]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \i1_reg_195[44]~feeder_combout\ : std_logic;
SIGNAL \i1_reg_195[43]~feeder_combout\ : std_logic;
SIGNAL \i1_reg_195[45]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \i1_reg_195[33]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \i1_reg_195[36]~feeder_combout\ : std_logic;
SIGNAL \i1_reg_195[37]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \out_r_d0~0_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a62\ : std_logic;
SIGNAL \out_r_d0~1_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a61\ : std_logic;
SIGNAL \out_r_d0~2_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~70_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]~68_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~66_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]~64_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~62_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]~60_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~58_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]~56_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~54_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]~52_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~50_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]~48_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~46_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[17]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[16]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[15]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[14]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[13]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[12]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[11]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[10]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[9]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[8]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[7]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[6]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[5]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[4]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[3]~feeder_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a60\ : std_logic;
SIGNAL \out_r_d0~3_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a59\ : std_logic;
SIGNAL \out_r_d0~4_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a58\ : std_logic;
SIGNAL \out_r_d0~5_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a57\ : std_logic;
SIGNAL \out_r_d0~6_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a56\ : std_logic;
SIGNAL \out_r_d0~7_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a55\ : std_logic;
SIGNAL \out_r_d0~8_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a54\ : std_logic;
SIGNAL \out_r_d0~9_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a53\ : std_logic;
SIGNAL \out_r_d0~10_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a52\ : std_logic;
SIGNAL \out_r_d0~11_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a51\ : std_logic;
SIGNAL \out_r_d0~12_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a50\ : std_logic;
SIGNAL \out_r_d0~13_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a49\ : std_logic;
SIGNAL \out_r_d0~14_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a48\ : std_logic;
SIGNAL \out_r_d0~15_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a47\ : std_logic;
SIGNAL \out_r_d0~16_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a46\ : std_logic;
SIGNAL \out_r_d0~17_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a45\ : std_logic;
SIGNAL \out_r_d0~18_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a44\ : std_logic;
SIGNAL \out_r_d0~19_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a43\ : std_logic;
SIGNAL \out_r_d0~20_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a42\ : std_logic;
SIGNAL \out_r_d0~21_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a41\ : std_logic;
SIGNAL \out_r_d0~22_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a40\ : std_logic;
SIGNAL \out_r_d0~23_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a39\ : std_logic;
SIGNAL \out_r_d0~24_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a38\ : std_logic;
SIGNAL \out_r_d0~25_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a37\ : std_logic;
SIGNAL \out_r_d0~26_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a36\ : std_logic;
SIGNAL \out_r_d0~27_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a35\ : std_logic;
SIGNAL \out_r_d0~28_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a34\ : std_logic;
SIGNAL \out_r_d0~29_combout\ : std_logic;
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33~portbdataout\ : std_logic;
SIGNAL \out_r_d0~30_combout\ : std_logic;
SIGNAL \out_r_d0~31_combout\ : std_logic;
SIGNAL i0_1_reg_165 : std_logic_vector(2 DOWNTO 0);
SIGNAL icmp_reg_201 : std_logic_vector(0 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL tmp_reg_170 : std_logic_vector(63 DOWNTO 0);
SIGNAL i0_reg_74 : std_logic_vector(2 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL ap_CS_fsm : std_logic_vector(8 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\ : std_logic_vector(64 DOWNTO 0);
SIGNAL i1_reg_195 : std_logic_vector(63 DOWNTO 0);
SIGNAL \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\ : std_logic_vector(63 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ap_clk <= ap_clk;
ww_ap_rst <= ap_rst;
ww_ap_start <= ap_start;
ap_done <= ww_ap_done;
ap_idle <= ww_ap_idle;
ap_ready <= ww_ap_ready;
a_address0 <= ww_a_address0;
a_ce0 <= ww_a_ce0;
ww_a_q0 <= a_q0;
b_address0 <= ww_b_address0;
b_ce0 <= ww_b_ce0;
ww_b_q0 <= b_q0;
out_r_address0 <= ww_out_r_address0;
out_r_ce0 <= ww_out_r_ce0;
out_r_we0 <= ww_out_r_we0;
out_r_d0 <= ww_out_r_d0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\ <= (
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(0) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(1) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(2) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(31) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(32) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(33) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(34) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(35) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(36) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(37) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(38) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(39) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(40) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(41) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(42) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(43) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(44) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(45) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(46) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(47) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(48) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(49) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(50) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(51) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(52) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(53) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(54) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(55) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(56) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(57) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(58) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(59) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(60) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(61) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(62) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(63));

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\ <= (
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\ <= (
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a\(0));

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(0);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(1);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(2);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(3);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a4\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(4);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a5\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(5);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a6\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(6);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a7\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(7);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a8\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(8);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a9\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(9);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a10\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(10);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a11\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(11);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a12\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(12);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a13\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(13);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a14\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(14);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a15\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(15);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a16\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(16);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a17\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(17);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a18\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(18);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a19\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(19);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a20\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(20);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a21\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(21);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a22\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(22);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a23\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(23);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a24\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(24);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a25\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(25);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a26\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(26);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a27\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(27);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a28\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(28);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a29\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(29);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a30\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(30);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a31\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(31);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a32\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(32);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a61\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(33);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a62\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(34);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a63\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(35);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(3) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(4) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(5) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(6) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(7) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(8) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(9) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(10) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(11) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(12) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(13) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(14) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(15) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(16) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(17) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(18) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(19) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(20) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(21) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(22) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(23) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(24) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(25) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(26) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(27) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(28) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(29) & \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(30));

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTAADDR_bus\ <= (
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBADDR_bus\ <= (
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a\(0));

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33~portbdataout\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(0);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a34\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(1);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a35\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(2);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a36\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(3);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a37\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(4);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a38\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(5);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a39\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(6);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a40\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(7);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a41\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(8);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a42\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(9);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a43\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(10);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a44\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(11);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a45\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(12);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a46\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(13);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a47\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(14);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a48\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(15);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a49\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(16);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a50\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(17);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a51\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(18);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a52\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(19);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a53\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(20);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a54\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(21);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a55\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(22);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a56\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(23);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a57\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(24);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a58\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(25);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a59\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(26);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a60\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\(27);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAA_bus\ <= (
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT27\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT26\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT25\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT24\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT23\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT22\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT21\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT20\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT19\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT18\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT17\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT16\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT15\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT14\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT13\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT12\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT11\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT10\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT9\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT8\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT7\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT6\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT5\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT4\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT3\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT2\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT1\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~dataout\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~7\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~6\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~5\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~4\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~3\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~2\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~1\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~0\);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~0\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(0);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(1);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(2);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(3);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~4\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(4);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~5\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(5);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~6\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(6);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~7\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(7);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~dataout\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(8);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(9);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(10);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(11);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT4\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(12);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT5\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(13);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT6\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(14);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT7\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(15);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT8\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(16);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT9\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(17);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT10\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(18);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT11\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(19);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT12\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(20);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT13\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(21);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT14\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(22);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT15\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(23);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT16\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(24);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT17\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(25);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT18\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(26);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT19\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(27);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT20\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(28);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT21\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(29);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT22\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(30);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT23\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(31);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT24\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(32);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT25\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(33);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT26\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(34);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT27\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\(35);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAA_bus\ <= (
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT31\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT30\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT29\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT28\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT27\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT26\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT25\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT24\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT23\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT22\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT21\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT20\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT19\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT18\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT17\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT16\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT15\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT14\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT13\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT12\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT11\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT10\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT9\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT8\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT7\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT6\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT5\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT4\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT3\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT2\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT1\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~dataout\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~3\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~2\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~1\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~0\);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~0\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(0);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(1);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(2);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(3);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~dataout\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(4);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(5);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(6);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(7);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT4\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(8);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT5\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(9);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT6\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(10);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT7\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(11);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT8\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(12);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT9\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(13);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT10\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(14);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT11\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(15);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT12\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(16);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT13\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(17);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT14\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(18);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT15\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(19);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT16\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(20);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT17\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(21);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT18\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(22);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT19\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(23);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT20\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(24);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT21\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(25);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT22\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(26);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT23\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(27);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT24\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(28);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT25\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(29);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT26\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(30);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT27\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(31);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT28\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(32);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT29\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(33);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT30\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(34);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT31\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\(35);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAA_bus\ <= (
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT31\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT30\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT29\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT28\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT27\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT26\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT25\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT24\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT23\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT22\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT21\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT20\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT19\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT18\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT17\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT16\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT15\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT14\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT13\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT12\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT11\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT10\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT9\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT8\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT7\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT6\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT5\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT4\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT3\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT2\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT1\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~dataout\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~3\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~2\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~1\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~0\);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~0\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~dataout\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT4\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT5\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT6\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT7\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT8\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT9\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT10\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT11\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT12\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT13\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT14\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT15\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT16\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT17\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT18\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT19\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT20\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT21\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT22\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT23\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT24\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT25\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT26\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT27\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT28\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT29\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT30\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT31\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT35\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT34\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT33\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT32\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT31\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT30\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT29\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT28\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT26\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT25\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT24\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT22\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT21\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT20\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT19\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT18\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT16\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT14\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT10\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT6\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT4\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~dataout\);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(0) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(1) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(2) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(3) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(4) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(5) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(6) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(7) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(8) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(9) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(10) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(11) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(12) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(13) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(14) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(15) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(16) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(17) <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT32\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT33\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT34\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT35\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAA_bus\ <= (\b_q0[31]~input_o\ & \b_q0[30]~input_o\ & \b_q0[29]~input_o\ & \b_q0[28]~input_o\ & \b_q0[27]~input_o\ & 
\b_q0[26]~input_o\ & \b_q0[25]~input_o\ & \b_q0[24]~input_o\ & \b_q0[23]~input_o\ & \b_q0[22]~input_o\ & \b_q0[21]~input_o\ & \b_q0[20]~input_o\ & \b_q0[19]~input_o\ & \b_q0[18]~input_o\ & gnd & gnd & gnd & gnd);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAB_bus\ <= (\a_q0[31]~input_o\ & \a_q0[30]~input_o\ & \a_q0[29]~input_o\ & \a_q0[28]~input_o\ & \a_q0[27]~input_o\ & 
\a_q0[26]~input_o\ & \a_q0[25]~input_o\ & \a_q0[24]~input_o\ & \a_q0[23]~input_o\ & \a_q0[22]~input_o\ & \a_q0[21]~input_o\ & \a_q0[20]~input_o\ & \a_q0[19]~input_o\ & \a_q0[18]~input_o\ & gnd & gnd & gnd & gnd);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~0\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(0);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(1);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(2);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(3);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~4\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(4);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~5\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(5);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~6\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(6);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~7\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(7);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~dataout\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(8);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(9);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(10);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(11);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT4\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(12);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT5\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(13);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT6\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(14);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT7\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(15);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT8\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(16);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT9\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(17);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT10\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(18);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT11\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(19);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT12\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(20);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT13\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(21);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT14\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(22);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT15\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(23);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT16\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(24);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT17\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(25);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT18\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(26);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT19\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(27);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT20\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(28);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT21\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(29);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT22\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(30);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT23\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(31);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT24\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(32);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT25\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(33);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT26\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(34);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7~DATAOUT27\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(35);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAA_bus\ <= (\a_q0[17]~input_o\ & \a_q0[16]~input_o\ & \a_q0[15]~input_o\ & \a_q0[14]~input_o\ & \a_q0[13]~input_o\ & 
\a_q0[12]~input_o\ & \a_q0[11]~input_o\ & \a_q0[10]~input_o\ & \a_q0[9]~input_o\ & \a_q0[8]~input_o\ & \a_q0[7]~input_o\ & \a_q0[6]~input_o\ & \a_q0[5]~input_o\ & \a_q0[4]~input_o\ & \a_q0[3]~input_o\ & \a_q0[2]~input_o\ & \a_q0[1]~input_o\ & 
\a_q0[0]~input_o\);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAB_bus\ <= (\b_q0[31]~input_o\ & \b_q0[30]~input_o\ & \b_q0[29]~input_o\ & \b_q0[28]~input_o\ & \b_q0[27]~input_o\ & 
\b_q0[26]~input_o\ & \b_q0[25]~input_o\ & \b_q0[24]~input_o\ & \b_q0[23]~input_o\ & \b_q0[22]~input_o\ & \b_q0[21]~input_o\ & \b_q0[20]~input_o\ & \b_q0[19]~input_o\ & \b_q0[18]~input_o\ & gnd & gnd & gnd & gnd);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~0\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(0);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(1);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(2);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(3);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~dataout\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(4);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(5);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(6);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(7);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT4\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(8);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT5\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(9);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT6\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(10);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT7\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(11);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT8\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(12);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT9\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(13);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT10\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(14);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT11\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(15);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT12\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(16);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT13\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(17);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT14\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(18);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT15\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(19);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT16\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(20);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT17\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(21);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT18\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(22);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT19\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(23);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT20\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(24);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT21\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(25);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT22\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(26);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT23\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(27);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT24\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(28);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT25\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(29);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT26\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(30);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT27\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(31);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT28\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(32);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT29\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(33);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT30\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(34);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5~DATAOUT31\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(35);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (\b_q0[17]~input_o\ & \b_q0[16]~input_o\ & \b_q0[15]~input_o\ & \b_q0[14]~input_o\ & \b_q0[13]~input_o\ & 
\b_q0[12]~input_o\ & \b_q0[11]~input_o\ & \b_q0[10]~input_o\ & \b_q0[9]~input_o\ & \b_q0[8]~input_o\ & \b_q0[7]~input_o\ & \b_q0[6]~input_o\ & \b_q0[5]~input_o\ & \b_q0[4]~input_o\ & \b_q0[3]~input_o\ & \b_q0[2]~input_o\ & \b_q0[1]~input_o\ & 
\b_q0[0]~input_o\);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (\a_q0[31]~input_o\ & \a_q0[30]~input_o\ & \a_q0[29]~input_o\ & \a_q0[28]~input_o\ & \a_q0[27]~input_o\ & 
\a_q0[26]~input_o\ & \a_q0[25]~input_o\ & \a_q0[24]~input_o\ & \a_q0[23]~input_o\ & \a_q0[22]~input_o\ & \a_q0[21]~input_o\ & \a_q0[20]~input_o\ & \a_q0[19]~input_o\ & \a_q0[18]~input_o\ & gnd & gnd & gnd & gnd);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~0\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~dataout\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT22\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT23\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT24\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT25\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT26\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT27\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT28\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT29\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT30\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3~DATAOUT31\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\b_q0[17]~input_o\ & \b_q0[16]~input_o\ & \b_q0[15]~input_o\ & \b_q0[14]~input_o\ & \b_q0[13]~input_o\ & 
\b_q0[12]~input_o\ & \b_q0[11]~input_o\ & \b_q0[10]~input_o\ & \b_q0[9]~input_o\ & \b_q0[8]~input_o\ & \b_q0[7]~input_o\ & \b_q0[6]~input_o\ & \b_q0[5]~input_o\ & \b_q0[4]~input_o\ & \b_q0[3]~input_o\ & \b_q0[2]~input_o\ & \b_q0[1]~input_o\ & 
\b_q0[0]~input_o\);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\a_q0[17]~input_o\ & \a_q0[16]~input_o\ & \a_q0[15]~input_o\ & \a_q0[14]~input_o\ & \a_q0[13]~input_o\ & 
\a_q0[12]~input_o\ & \a_q0[11]~input_o\ & \a_q0[10]~input_o\ & \a_q0[9]~input_o\ & \a_q0[8]~input_o\ & \a_q0[7]~input_o\ & \a_q0[6]~input_o\ & \a_q0[5]~input_o\ & \a_q0[4]~input_o\ & \a_q0[3]~input_o\ & \a_q0[2]~input_o\ & \a_q0[1]~input_o\ & 
\a_q0[0]~input_o\);

\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~dataout\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT33\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT34\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1~DATAOUT35\ <= \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\ap_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ap_clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X9_Y34_N9
\ap_done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ap_done_assign_proc~0_combout\,
	devoe => ww_devoe,
	o => \ap_done~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\ap_idle~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ap_idle_assign_proc~0_combout\,
	devoe => ww_devoe,
	o => \ap_idle~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\ap_ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ap_done_assign_proc~0_combout\,
	devoe => ww_devoe,
	o => \ap_ready~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\a_address0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => i0_reg_74(0),
	devoe => ww_devoe,
	o => \a_address0[0]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\a_address0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => i0_reg_74(1),
	devoe => ww_devoe,
	o => \a_address0[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\a_ce0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ap_CS_fsm(1),
	devoe => ww_devoe,
	o => \a_ce0~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\b_address0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => i0_reg_74(0),
	devoe => ww_devoe,
	o => \b_address0[0]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\b_address0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => i0_reg_74(1),
	devoe => ww_devoe,
	o => \b_address0[1]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\b_ce0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ap_CS_fsm(1),
	devoe => ww_devoe,
	o => \b_ce0~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\out_r_address0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_reg_170(0),
	devoe => ww_devoe,
	o => \out_r_address0[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\out_r_address0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_reg_170(1),
	devoe => ww_devoe,
	o => \out_r_address0[1]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\out_r_ce0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ap_CS_fsm(8),
	devoe => ww_devoe,
	o => \out_r_ce0~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\out_r_we0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ap_CS_fsm(8),
	devoe => ww_devoe,
	o => \out_r_we0~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\out_r_d0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~0_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\out_r_d0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~1_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\out_r_d0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~2_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\out_r_d0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~3_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\out_r_d0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~4_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\out_r_d0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~5_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\out_r_d0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~6_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[6]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\out_r_d0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~7_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[7]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\out_r_d0[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~8_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\out_r_d0[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~9_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[9]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\out_r_d0[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~10_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[10]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\out_r_d0[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~11_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[11]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\out_r_d0[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~12_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[12]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\out_r_d0[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~13_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[13]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\out_r_d0[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~14_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[14]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\out_r_d0[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~15_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[15]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\out_r_d0[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~16_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[16]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\out_r_d0[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~17_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[17]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\out_r_d0[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~18_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[18]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\out_r_d0[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~19_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[19]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\out_r_d0[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~20_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[20]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\out_r_d0[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~21_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[21]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\out_r_d0[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~22_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[22]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\out_r_d0[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~23_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[23]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\out_r_d0[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~24_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[24]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\out_r_d0[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~25_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[25]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\out_r_d0[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~26_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[26]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\out_r_d0[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~27_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[27]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\out_r_d0[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~28_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[28]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\out_r_d0[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~29_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[29]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\out_r_d0[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~30_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[30]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\out_r_d0[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_r_d0~31_combout\,
	devoe => ww_devoe,
	o => \out_r_d0[31]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\ap_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ap_clk,
	o => \ap_clk~input_o\);

-- Location: CLKCTRL_G2
\ap_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ap_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ap_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X23_Y34_N22
\ap_rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ap_rst,
	o => \ap_rst~input_o\);

-- Location: LCCOMB_X15_Y33_N20
\ap_CS_fsm~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ap_CS_fsm~5_combout\ = (ap_CS_fsm(2) & !\ap_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ap_CS_fsm(2),
	datad => \ap_rst~input_o\,
	combout => \ap_CS_fsm~5_combout\);

-- Location: FF_X15_Y33_N21
\ap_CS_fsm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \ap_CS_fsm~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ap_CS_fsm(3));

-- Location: LCCOMB_X15_Y33_N22
\ap_CS_fsm~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ap_CS_fsm~6_combout\ = (ap_CS_fsm(3) & !\ap_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ap_CS_fsm(3),
	datad => \ap_rst~input_o\,
	combout => \ap_CS_fsm~6_combout\);

-- Location: FF_X15_Y33_N23
\ap_CS_fsm[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \ap_CS_fsm~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ap_CS_fsm(4));

-- Location: LCCOMB_X15_Y33_N16
\ap_CS_fsm~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ap_CS_fsm~7_combout\ = (ap_CS_fsm(4) & !\ap_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ap_CS_fsm(4),
	datad => \ap_rst~input_o\,
	combout => \ap_CS_fsm~7_combout\);

-- Location: FF_X15_Y33_N17
\ap_CS_fsm[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \ap_CS_fsm~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ap_CS_fsm(5));

-- Location: LCCOMB_X15_Y33_N18
\ap_CS_fsm~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ap_CS_fsm~8_combout\ = (ap_CS_fsm(5) & !\ap_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ap_CS_fsm(5),
	datad => \ap_rst~input_o\,
	combout => \ap_CS_fsm~8_combout\);

-- Location: FF_X15_Y33_N19
\ap_CS_fsm[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \ap_CS_fsm~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ap_CS_fsm(6));

-- Location: LCCOMB_X15_Y33_N28
\ap_CS_fsm~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ap_CS_fsm~9_combout\ = (ap_CS_fsm(6) & !\ap_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ap_CS_fsm(6),
	datad => \ap_rst~input_o\,
	combout => \ap_CS_fsm~9_combout\);

-- Location: FF_X15_Y33_N29
\ap_CS_fsm[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \ap_CS_fsm~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ap_CS_fsm(7));

-- Location: LCCOMB_X15_Y33_N12
\ap_CS_fsm~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ap_CS_fsm~3_combout\ = (ap_CS_fsm(7) & !\ap_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ap_CS_fsm(7),
	datad => \ap_rst~input_o\,
	combout => \ap_CS_fsm~3_combout\);

-- Location: FF_X15_Y33_N13
\ap_CS_fsm[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \ap_CS_fsm~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ap_CS_fsm(8));

-- Location: LCCOMB_X14_Y33_N22
\i0_1_reg_165[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0_1_reg_165[0]~0_combout\ = !i0_reg_74(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i0_reg_74(0),
	combout => \i0_1_reg_165[0]~0_combout\);

-- Location: FF_X14_Y33_N23
\i0_1_reg_165[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i0_1_reg_165[0]~0_combout\,
	ena => ap_CS_fsm(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0_1_reg_165(0));

-- Location: LCCOMB_X14_Y33_N18
\i0_reg_74~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0_reg_74~2_combout\ = (ap_CS_fsm(8) & i0_1_reg_165(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ap_CS_fsm(8),
	datac => i0_1_reg_165(0),
	combout => \i0_reg_74~2_combout\);

-- Location: IOIBUF_X16_Y34_N1
\ap_start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ap_start,
	o => \ap_start~input_o\);

-- Location: LCCOMB_X15_Y33_N8
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\ap_start~input_o\ & !ap_CS_fsm(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ap_start~input_o\,
	datad => ap_CS_fsm(8),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X15_Y33_N6
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\ap_CS_fsm~0_combout\ & (!ap_CS_fsm(6) & (\Mux1~0_combout\ & !ap_CS_fsm(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ap_CS_fsm~0_combout\,
	datab => ap_CS_fsm(6),
	datac => \Mux1~0_combout\,
	datad => ap_CS_fsm(7),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X15_Y33_N26
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\ap_rst~input_o\ & ((\process_4~0_combout\) # ((!\Mux1~1_combout\ & !ap_CS_fsm(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \process_4~0_combout\,
	datac => ap_CS_fsm(1),
	datad => \ap_rst~input_o\,
	combout => \Mux1~2_combout\);

-- Location: FF_X15_Y33_N27
\ap_CS_fsm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ap_CS_fsm(0));

-- Location: LCCOMB_X15_Y33_N2
\i0_reg_74[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0_reg_74[0]~1_combout\ = (ap_CS_fsm(8)) # ((\ap_start~input_o\ & !ap_CS_fsm(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ap_start~input_o\,
	datac => ap_CS_fsm(0),
	datad => ap_CS_fsm(8),
	combout => \i0_reg_74[0]~1_combout\);

-- Location: FF_X14_Y33_N19
\i0_reg_74[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i0_reg_74~2_combout\,
	ena => \i0_reg_74[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0_reg_74(0));

-- Location: LCCOMB_X14_Y33_N8
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = i0_reg_74(0) $ (i0_reg_74(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i0_reg_74(0),
	datad => i0_reg_74(1),
	combout => \Add0~1_combout\);

-- Location: FF_X14_Y33_N9
\i0_1_reg_165[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \Add0~1_combout\,
	ena => ap_CS_fsm(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0_1_reg_165(1));

-- Location: LCCOMB_X14_Y33_N28
\i0_reg_74~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0_reg_74~3_combout\ = (ap_CS_fsm(8) & i0_1_reg_165(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ap_CS_fsm(8),
	datac => i0_1_reg_165(1),
	combout => \i0_reg_74~3_combout\);

-- Location: FF_X14_Y33_N29
\i0_reg_74[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i0_reg_74~3_combout\,
	ena => \i0_reg_74[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0_reg_74(1));

-- Location: LCCOMB_X14_Y33_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = i0_reg_74(2) $ (((i0_reg_74(0) & i0_reg_74(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0_reg_74(2),
	datab => i0_reg_74(0),
	datad => i0_reg_74(1),
	combout => \Add0~0_combout\);

-- Location: FF_X14_Y33_N5
\i0_1_reg_165[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => ap_CS_fsm(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0_1_reg_165(2));

-- Location: LCCOMB_X14_Y33_N12
\i0_reg_74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0_reg_74~0_combout\ = (ap_CS_fsm(8) & i0_1_reg_165(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ap_CS_fsm(8),
	datac => i0_1_reg_165(2),
	combout => \i0_reg_74~0_combout\);

-- Location: FF_X14_Y33_N13
\i0_reg_74[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i0_reg_74~0_combout\,
	ena => \i0_reg_74[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0_reg_74(2));

-- Location: LCCOMB_X14_Y33_N6
\process_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_4~0_combout\ = (ap_CS_fsm(1) & (((i0_reg_74(1)) # (i0_reg_74(0))) # (!i0_reg_74(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0_reg_74(2),
	datab => i0_reg_74(1),
	datac => i0_reg_74(0),
	datad => ap_CS_fsm(1),
	combout => \process_4~0_combout\);

-- Location: LCCOMB_X15_Y33_N30
\ap_CS_fsm~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ap_CS_fsm~4_combout\ = (\process_4~0_combout\ & !\ap_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_4~0_combout\,
	datad => \ap_rst~input_o\,
	combout => \ap_CS_fsm~4_combout\);

-- Location: FF_X15_Y33_N31
\ap_CS_fsm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \ap_CS_fsm~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ap_CS_fsm(2));

-- Location: LCCOMB_X15_Y33_N10
\ap_CS_fsm~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ap_CS_fsm~0_combout\ = (!ap_CS_fsm(2) & (!ap_CS_fsm(5) & (!ap_CS_fsm(4) & !ap_CS_fsm(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ap_CS_fsm(2),
	datab => ap_CS_fsm(5),
	datac => ap_CS_fsm(4),
	datad => ap_CS_fsm(3),
	combout => \ap_CS_fsm~0_combout\);

-- Location: LCCOMB_X15_Y33_N24
\ap_CS_fsm~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ap_CS_fsm~1_combout\ = (!\ap_rst~input_o\ & (!ap_CS_fsm(1) & ((\ap_start~input_o\) # (ap_CS_fsm(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ap_rst~input_o\,
	datab => ap_CS_fsm(1),
	datac => \ap_start~input_o\,
	datad => ap_CS_fsm(8),
	combout => \ap_CS_fsm~1_combout\);

-- Location: LCCOMB_X15_Y33_N4
\ap_CS_fsm~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ap_CS_fsm~2_combout\ = (\ap_CS_fsm~0_combout\ & (!ap_CS_fsm(6) & (\ap_CS_fsm~1_combout\ & !ap_CS_fsm(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ap_CS_fsm~0_combout\,
	datab => ap_CS_fsm(6),
	datac => \ap_CS_fsm~1_combout\,
	datad => ap_CS_fsm(7),
	combout => \ap_CS_fsm~2_combout\);

-- Location: FF_X15_Y33_N5
\ap_CS_fsm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \ap_CS_fsm~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ap_CS_fsm(1));

-- Location: LCCOMB_X14_Y33_N2
\ap_done_assign_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ap_done_assign_proc~0_combout\ = (ap_CS_fsm(1) & (!i0_reg_74(1) & (!i0_reg_74(0) & i0_reg_74(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ap_CS_fsm(1),
	datab => i0_reg_74(1),
	datac => i0_reg_74(0),
	datad => i0_reg_74(2),
	combout => \ap_done_assign_proc~0_combout\);

-- Location: LCCOMB_X15_Y33_N0
\ap_idle_assign_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ap_idle_assign_proc~0_combout\ = (!\ap_start~input_o\ & !ap_CS_fsm(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ap_start~input_o\,
	datac => ap_CS_fsm(0),
	combout => \ap_idle_assign_proc~0_combout\);

-- Location: LCCOMB_X12_Y33_N4
\tmp_reg_170[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_reg_170[0]~feeder_combout\ = i0_reg_74(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i0_reg_74(0),
	combout => \tmp_reg_170[0]~feeder_combout\);

-- Location: FF_X12_Y33_N5
\tmp_reg_170[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \tmp_reg_170[0]~feeder_combout\,
	ena => \process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_reg_170(0));

-- Location: LCCOMB_X15_Y33_N14
\tmp_reg_170[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_reg_170[1]~feeder_combout\ = i0_reg_74(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i0_reg_74(1),
	combout => \tmp_reg_170[1]~feeder_combout\);

-- Location: FF_X15_Y33_N15
\tmp_reg_170[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \tmp_reg_170[1]~feeder_combout\,
	ena => \process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_reg_170(1));

-- Location: IOIBUF_X40_Y34_N8
\b_q0[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(18),
	o => \b_q0[18]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\b_q0[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(19),
	o => \b_q0[19]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\b_q0[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(20),
	o => \b_q0[20]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\b_q0[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(21),
	o => \b_q0[21]~input_o\);

-- Location: IOIBUF_X47_Y0_N22
\b_q0[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(22),
	o => \b_q0[22]~input_o\);

-- Location: IOIBUF_X53_Y9_N8
\b_q0[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(23),
	o => \b_q0[23]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\b_q0[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(24),
	o => \b_q0[24]~input_o\);

-- Location: IOIBUF_X53_Y26_N22
\b_q0[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(25),
	o => \b_q0[25]~input_o\);

-- Location: IOIBUF_X53_Y6_N15
\b_q0[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(26),
	o => \b_q0[26]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\b_q0[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(27),
	o => \b_q0[27]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\b_q0[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(28),
	o => \b_q0[28]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\b_q0[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(29),
	o => \b_q0[29]~input_o\);

-- Location: IOIBUF_X53_Y9_N22
\b_q0[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(30),
	o => \b_q0[30]~input_o\);

-- Location: IOIBUF_X53_Y9_N15
\b_q0[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(31),
	o => \b_q0[31]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\a_q0[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(18),
	o => \a_q0[18]~input_o\);

-- Location: IOIBUF_X53_Y6_N22
\a_q0[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(19),
	o => \a_q0[19]~input_o\);

-- Location: IOIBUF_X53_Y8_N22
\a_q0[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(20),
	o => \a_q0[20]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\a_q0[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(21),
	o => \a_q0[21]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\a_q0[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(22),
	o => \a_q0[22]~input_o\);

-- Location: IOIBUF_X53_Y11_N8
\a_q0[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(23),
	o => \a_q0[23]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\a_q0[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(24),
	o => \a_q0[24]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\a_q0[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(25),
	o => \a_q0[25]~input_o\);

-- Location: IOIBUF_X51_Y34_N1
\a_q0[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(26),
	o => \a_q0[26]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\a_q0[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(27),
	o => \a_q0[27]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\a_q0[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(28),
	o => \a_q0[28]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\a_q0[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(29),
	o => \a_q0[29]~input_o\);

-- Location: IOIBUF_X53_Y12_N1
\a_q0[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(30),
	o => \a_q0[30]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\a_q0[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(31),
	o => \a_q0[31]~input_o\);

-- Location: DSPMULT_X42_Y12_N0
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \ap_clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAA_bus\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult7_DATAOUT_bus\);

-- Location: DSPOUT_X42_Y12_N2
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8_DATAOUT_bus\);

-- Location: IOIBUF_X53_Y25_N1
\a_q0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(4),
	o => \a_q0[4]~input_o\);

-- Location: IOIBUF_X53_Y20_N22
\a_q0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(5),
	o => \a_q0[5]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\a_q0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(6),
	o => \a_q0[6]~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\a_q0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(7),
	o => \a_q0[7]~input_o\);

-- Location: IOIBUF_X53_Y22_N8
\a_q0[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(8),
	o => \a_q0[8]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\a_q0[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(9),
	o => \a_q0[9]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\a_q0[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(10),
	o => \a_q0[10]~input_o\);

-- Location: IOIBUF_X53_Y16_N8
\a_q0[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(11),
	o => \a_q0[11]~input_o\);

-- Location: IOIBUF_X34_Y34_N15
\a_q0[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(12),
	o => \a_q0[12]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\a_q0[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(13),
	o => \a_q0[13]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\a_q0[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(14),
	o => \a_q0[14]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\a_q0[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(15),
	o => \a_q0[15]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\a_q0[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(16),
	o => \a_q0[16]~input_o\);

-- Location: IOIBUF_X38_Y34_N15
\a_q0[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(17),
	o => \a_q0[17]~input_o\);

-- Location: IOIBUF_X53_Y13_N8
\a_q0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(0),
	o => \a_q0[0]~input_o\);

-- Location: IOIBUF_X49_Y34_N8
\a_q0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(1),
	o => \a_q0[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\a_q0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(2),
	o => \a_q0[2]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\a_q0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_q0(3),
	o => \a_q0[3]~input_o\);

-- Location: DSPMULT_X42_Y13_N0
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	clk => \ap_clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAA_bus\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X42_Y13_N2
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: IOIBUF_X53_Y22_N1
\b_q0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(0),
	o => \b_q0[0]~input_o\);

-- Location: IOIBUF_X53_Y30_N8
\b_q0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(1),
	o => \b_q0[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\b_q0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(2),
	o => \b_q0[2]~input_o\);

-- Location: IOIBUF_X53_Y24_N22
\b_q0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(3),
	o => \b_q0[3]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\b_q0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(4),
	o => \b_q0[4]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\b_q0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(5),
	o => \b_q0[5]~input_o\);

-- Location: IOIBUF_X49_Y34_N1
\b_q0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(6),
	o => \b_q0[6]~input_o\);

-- Location: IOIBUF_X53_Y20_N15
\b_q0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(7),
	o => \b_q0[7]~input_o\);

-- Location: IOIBUF_X53_Y30_N1
\b_q0[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(8),
	o => \b_q0[8]~input_o\);

-- Location: IOIBUF_X53_Y10_N15
\b_q0[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(9),
	o => \b_q0[9]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\b_q0[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(10),
	o => \b_q0[10]~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\b_q0[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(11),
	o => \b_q0[11]~input_o\);

-- Location: IOIBUF_X40_Y34_N1
\b_q0[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(12),
	o => \b_q0[12]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\b_q0[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(13),
	o => \b_q0[13]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\b_q0[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(14),
	o => \b_q0[14]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\b_q0[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(15),
	o => \b_q0[15]~input_o\);

-- Location: IOIBUF_X53_Y11_N1
\b_q0[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(16),
	o => \b_q0[16]~input_o\);

-- Location: IOIBUF_X47_Y34_N22
\b_q0[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_q0(17),
	o => \b_q0[17]~input_o\);

-- Location: DSPMULT_X42_Y11_N0
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	clk => \ap_clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X42_Y11_N2
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X41_Y13_N2
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~0_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~dataout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~dataout\ $ (VCC))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~dataout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~dataout\ & VCC))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~1\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~dataout\ & 
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~dataout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~dataout\,
	datad => VCC,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~0_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~1\);

-- Location: LCCOMB_X41_Y13_N4
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~2_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT1\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~1\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~1\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT1\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~1\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~1\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~3\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT1\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~1\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT1\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~1\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT1\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~1\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~2_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~3\);

-- Location: LCCOMB_X41_Y13_N6
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~4_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT2\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT2\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~3\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~5\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT2\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT2\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~3\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT2\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT2\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT2\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~3\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~4_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~5\);

-- Location: LCCOMB_X41_Y13_N8
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~6_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT3\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~5\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~5\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT3\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~5\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~5\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~7\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT3\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~5\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT3\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~5\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT3\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~5\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~6_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~7\);

-- Location: LCCOMB_X41_Y13_N10
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~8_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT4\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT4\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~7\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~9\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT4\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT4\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~7\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT4\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT4\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT4\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT4\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~7\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~8_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~9\);

-- Location: LCCOMB_X41_Y13_N12
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~10_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT5\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~9\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT5\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~9\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT5\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~9\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT5\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~9\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~11\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT5\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~9\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~9\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT5\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT5\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~9\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~10_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~11\);

-- Location: LCCOMB_X41_Y13_N14
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~12_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT6\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT6\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~11\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~13\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT6\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT6\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~11\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT6\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT6\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT6\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT6\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~11\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~12_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~13\);

-- Location: LCCOMB_X41_Y13_N16
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~14_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT7\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT7\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~13\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT7\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~13\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT7\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT7\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~13\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT7\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~13\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~15\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT7\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT7\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~13\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT7\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~13\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT7\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT7\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~13\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~14_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~15\);

-- Location: LCCOMB_X41_Y13_N18
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~16_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT8\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT8\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~15\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~17\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT8\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT8\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~15\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT8\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT8\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT8\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~15\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~16_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~17\);

-- Location: LCCOMB_X41_Y13_N20
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~18_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT9\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~17\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~17\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT9\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~17\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~17\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~19\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT9\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~17\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT9\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~17\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT9\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~17\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~18_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~19\);

-- Location: LCCOMB_X41_Y13_N22
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~20_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT10\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT10\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~19\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~21\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT10\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT10\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~19\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT10\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT10\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT10\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT10\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~19\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~20_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~21\);

-- Location: LCCOMB_X41_Y13_N24
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~22_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT11\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT11\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~21\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT11\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~21\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT11\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT11\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~21\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT11\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~21\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~23\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT11\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT11\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~21\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT11\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~21\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT11\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT11\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~21\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~22_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~23\);

-- Location: LCCOMB_X41_Y13_N26
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~24_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT12\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT12\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~23\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~25\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT12\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT12\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~23\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT12\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT12\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT12\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT12\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~23\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~24_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~25\);

-- Location: LCCOMB_X41_Y13_N28
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~26_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT13\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT13\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~25\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT13\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~25\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT13\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT13\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~25\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT13\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~25\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~27\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT13\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT13\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~25\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT13\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~25\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT13\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT13\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~25\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~26_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~27\);

-- Location: LCCOMB_X41_Y13_N30
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~28_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT14\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT14\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~27\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~29\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT14\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT14\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~27\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT14\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT14\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT14\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT14\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~27\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~28_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~29\);

-- Location: LCCOMB_X41_Y12_N0
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~30_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT15\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT15\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~29\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT15\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~29\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT15\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT15\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~29\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT15\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~29\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~31\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT15\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT15\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~29\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT15\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~29\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT15\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT15\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~29\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~30_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~31\);

-- Location: LCCOMB_X41_Y12_N2
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~32_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT16\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT16\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~31\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~33\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT16\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT16\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~31\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT16\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT16\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT16\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~31\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~32_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~33\);

-- Location: LCCOMB_X41_Y12_N4
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~34_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT17\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT17\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~33\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT17\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~33\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT17\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT17\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~33\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT17\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~33\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~35\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT17\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT17\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~33\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT17\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~33\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT17\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~33\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~34_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~35\);

-- Location: LCCOMB_X41_Y12_N6
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~36_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~dataout\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT18\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~35\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~37\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~dataout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT18\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~35\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~dataout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT18\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~dataout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT18\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~35\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~36_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~37\);

-- Location: LCCOMB_X41_Y12_N8
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~38_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT1\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT19\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~37\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT19\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~37\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT1\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT19\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~37\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT19\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~37\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~39\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT1\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT19\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~37\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT1\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~37\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT1\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT19\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~37\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~38_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~39\);

-- Location: LCCOMB_X41_Y12_N10
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~40_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT2\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT20\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~39\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~41\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT2\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT20\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~39\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT2\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT20\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT2\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT20\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~39\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~40_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~41\);

-- Location: LCCOMB_X41_Y12_N12
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~42_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT3\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT21\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~41\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT21\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~41\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT3\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT21\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~41\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT21\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~41\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~43\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT3\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT21\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~41\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT3\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~41\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT3\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT21\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~41\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~42_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~43\);

-- Location: LCCOMB_X41_Y12_N14
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~44_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT4\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT22\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~43\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~45\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT4\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT22\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~43\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT4\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT22\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT4\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT22\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~43\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~44_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~45\);

-- Location: LCCOMB_X41_Y12_N16
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~46_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT23\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT5\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~45\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT5\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~45\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT23\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT5\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~45\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT5\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~45\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~47\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT23\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT5\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~45\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT23\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~45\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT23\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT5\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~45\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~46_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~47\);

-- Location: LCCOMB_X41_Y12_N18
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~48_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT24\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT6\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~47\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~49\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT24\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT6\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~47\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT24\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT6\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT24\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT6\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~47\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~48_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~49\);

-- Location: LCCOMB_X41_Y12_N20
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~50_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT25\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT7\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~49\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT7\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~49\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT25\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT7\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~49\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT7\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~49\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~51\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT25\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT7\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~49\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT25\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~49\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT25\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT7\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~49\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~50_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~51\);

-- Location: LCCOMB_X41_Y12_N22
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~52_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT26\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT8\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~51\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~53\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT26\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT8\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~51\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT26\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT8\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT26\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT8\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~51\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~52_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~53\);

-- Location: LCCOMB_X41_Y12_N24
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~54_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT9\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT27\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~53\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT27\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~53\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT9\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT27\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~53\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT27\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~53\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~55\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT9\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT27\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~53\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT9\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~53\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT9\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT27\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~53\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~54_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~55\);

-- Location: LCCOMB_X41_Y12_N26
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~56_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT28\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT10\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~55\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~57\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT28\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT10\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~55\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT28\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT10\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT28\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT10\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~55\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~56_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~57\);

-- Location: LCCOMB_X41_Y12_N28
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~58_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT11\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT29\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~57\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT29\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~57\)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT11\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT29\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~57\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT29\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~57\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~59\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT11\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT29\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~57\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT11\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~57\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT11\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT29\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~57\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~58_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~59\);

-- Location: LCCOMB_X41_Y12_N30
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~60_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT30\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT12\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~59\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~61\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT30\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT12\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~59\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT30\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT12\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT30\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT12\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~59\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~60_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~61\);

-- Location: LCCOMB_X41_Y11_N0
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~62_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT13\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT31\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~61\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT31\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~61\ & VCC)))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT13\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT31\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~61\) # (GND))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT31\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~61\))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~63\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT13\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT31\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~61\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT13\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT31\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT13\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out6~DATAOUT31\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~61\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~62_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~63\);

-- Location: LCCOMB_X41_Y11_N2
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~64_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT14\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~63\ $ (GND))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT14\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~63\ & VCC))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~65\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT14\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT14\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~63\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~64_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~65\);

-- Location: LCCOMB_X41_Y11_N4
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~66_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT15\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~65\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT15\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~65\) # (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~67\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~65\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT15\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~65\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~66_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~67\);

-- Location: LCCOMB_X41_Y11_N6
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~68_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT16\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~67\ $ (GND))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT16\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~67\ & VCC))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~69\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT16\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT16\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~67\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~68_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~69\);

-- Location: LCCOMB_X41_Y11_N8
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~70_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT17\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~69\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT17\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~69\) # (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~71\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~69\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT17\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~69\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~70_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~71\);

-- Location: LCCOMB_X41_Y11_N10
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~72_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT18\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~71\ $ (GND))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT18\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~71\ & VCC))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~73\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT18\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT18\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~71\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~72_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~73\);

-- Location: LCCOMB_X41_Y11_N12
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~74_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT19\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~73\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT19\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~73\) # (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~75\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~73\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT19\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~73\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~74_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~75\);

-- Location: LCCOMB_X41_Y11_N14
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~76_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT20\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~75\ $ (GND))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT20\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~75\ & VCC))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~77\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT20\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT20\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~75\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~76_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~77\);

-- Location: LCCOMB_X41_Y11_N16
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~78_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT21\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~77\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT21\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~77\) # (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~79\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~77\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT21\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~77\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~78_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~79\);

-- Location: LCCOMB_X41_Y11_N18
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~80_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT22\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~79\ $ (GND))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT22\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~79\ & VCC))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~81\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT22\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT22\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~79\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~80_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~81\);

-- Location: LCCOMB_X41_Y11_N20
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~82_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT23\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~81\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT23\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~81\) # (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~83\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~81\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT23\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~81\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~82_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~83\);

-- Location: LCCOMB_X41_Y11_N22
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~84_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT24\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~83\ $ (GND))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT24\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~83\ & VCC))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~85\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT24\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT24\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~83\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~84_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~85\);

-- Location: LCCOMB_X41_Y11_N24
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~86_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT25\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~85\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT25\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~85\) # (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~87\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~85\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT25\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~85\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~86_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~87\);

-- Location: LCCOMB_X41_Y11_N26
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~88_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT26\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~87\ $ (GND))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT26\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~87\ & VCC))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~89\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT26\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT26\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~87\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~88_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~89\);

-- Location: LCCOMB_X41_Y11_N28
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[45]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[45]~90_combout\ = 
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~89\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~89\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[45]~90_combout\);

-- Location: DSPMULT_X42_Y14_N0
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \ap_clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X42_Y14_N2
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X40_Y13_N2
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~46_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~0_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~0_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~47\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~0_combout\ & 
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[0]~0_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~46_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~47\);

-- Location: LCCOMB_X40_Y13_N4
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]~48_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~2_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~47\ & VCC)) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~47\)))) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~2_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~47\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~47\) # 
-- (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]~49\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~2_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~47\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~2_combout\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~47\) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[1]~2_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~47\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]~48_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]~49\);

-- Location: LCCOMB_X40_Y13_N6
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~50_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~4_combout\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]~49\)))) # 
-- (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~51\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~4_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]~49\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~4_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[2]~4_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]~49\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~50_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~51\);

-- Location: LCCOMB_X40_Y13_N8
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]~52_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~6_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~51\ & 
-- VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~6_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~51\)))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~6_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~51\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~6_combout\ & ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~51\) 
-- # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]~53\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~6_combout\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~51\)) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~51\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[3]~6_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~51\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]~52_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]~53\);

-- Location: LCCOMB_X40_Y13_N10
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~54_combout\ = ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT22\ 
-- $ (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~8_combout\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]~53\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~55\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~8_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]~53\))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~8_combout\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[4]~8_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]~53\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~54_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~55\);

-- Location: LCCOMB_X40_Y13_N12
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]~56_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~10_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~55\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~10_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~55\)))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~10_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~55\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~10_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~55\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]~57\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~10_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~55\)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~55\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[5]~10_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~55\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]~56_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]~57\);

-- Location: LCCOMB_X40_Y13_N14
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~58_combout\ = ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT24\ 
-- $ (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~12_combout\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]~57\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~59\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT24\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~12_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]~57\))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT24\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~12_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[6]~12_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]~57\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~58_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~59\);

-- Location: LCCOMB_X40_Y13_N16
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]~60_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~14_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~59\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~14_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~59\)))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~14_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~59\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~14_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~59\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]~61\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~14_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~59\)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~59\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[7]~14_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~59\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]~60_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]~61\);

-- Location: LCCOMB_X40_Y13_N18
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~62_combout\ = ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT26\ 
-- $ (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~16_combout\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]~61\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~63\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT26\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~16_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]~61\))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT26\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~16_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[8]~16_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]~61\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~62_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~63\);

-- Location: LCCOMB_X40_Y13_N20
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]~64_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~18_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT27\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~63\ & VCC)) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~63\)))) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~18_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~63\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~63\) # 
-- (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]~65\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~18_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT27\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~63\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~18_combout\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~63\) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[9]~18_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~63\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]~64_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]~65\);

-- Location: LCCOMB_X40_Y13_N22
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~66_combout\ = ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT28\ 
-- $ (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~20_combout\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]~65\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~67\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT28\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~20_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]~65\))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT28\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~20_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[10]~20_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]~65\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~66_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~67\);

-- Location: LCCOMB_X40_Y13_N24
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]~68_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~22_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT29\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~67\ & VCC)) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~67\)))) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~22_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~67\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~67\) # 
-- (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]~69\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~22_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT29\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~67\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~22_combout\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~67\) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[11]~22_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~67\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]~68_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]~69\);

-- Location: LCCOMB_X40_Y13_N26
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~70_combout\ = ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT30\ 
-- $ (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~24_combout\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]~69\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~71\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT30\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~24_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]~69\))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT30\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~24_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT30\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[12]~24_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]~69\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~70_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~71\);

-- Location: LCCOMB_X40_Y13_N28
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]~72_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT31\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~26_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~71\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~26_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~71\)))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT31\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~26_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~71\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~26_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~71\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]~73\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT31\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~26_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~71\)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT31\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~71\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[13]~26_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~71\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]~72_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]~73\);

-- Location: LCCOMB_X40_Y13_N30
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~74_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~28_combout\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT32\ $ (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]~73\)))) # 
-- (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~75\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~28_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT32\) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]~73\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~28_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT32\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[14]~28_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT32\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]~73\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~74_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~75\);

-- Location: LCCOMB_X40_Y12_N0
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]~76_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT33\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~30_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~75\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~30_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~75\)))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT33\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~30_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~75\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~30_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~75\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]~77\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT33\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~30_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~75\)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT33\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~75\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT33\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[15]~30_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~75\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]~76_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]~77\);

-- Location: LCCOMB_X40_Y12_N2
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~78_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~32_combout\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT34\ $ (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]~77\)))) # 
-- (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~79\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~32_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT34\) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]~77\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~32_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT34\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]~77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[16]~32_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT34\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]~77\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~78_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~79\);

-- Location: LCCOMB_X40_Y12_N4
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]~80_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~34_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT35\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~79\ & VCC)) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT35\ & (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~79\)))) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~34_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT35\ & (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~79\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT35\ & ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~79\) # 
-- (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]~81\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~34_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT35\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~79\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~34_combout\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~79\) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[17]~34_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out2~DATAOUT35\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~79\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]~80_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]~81\);

-- Location: LCCOMB_X40_Y12_N6
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~82_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~36_combout\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT18\ $ (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]~81\)))) # 
-- (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~83\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~36_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT18\) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]~81\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~36_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT18\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]~81\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[18]~36_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]~81\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~82_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~83\);

-- Location: LCCOMB_X40_Y12_N8
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]~84_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT19\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~38_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~83\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~38_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~83\)))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT19\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~38_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~83\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~38_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~83\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]~85\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT19\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~38_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~83\)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT19\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~83\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT19\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[19]~38_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~83\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]~84_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]~85\);

-- Location: LCCOMB_X40_Y12_N10
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~86_combout\ = ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT20\ 
-- $ (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~40_combout\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]~85\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~87\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT20\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~40_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]~85\))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT20\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~40_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT20\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[20]~40_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]~85\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~86_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~87\);

-- Location: LCCOMB_X40_Y12_N12
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]~88_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT21\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~42_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~87\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~42_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~87\)))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT21\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~42_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~87\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~42_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~87\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]~89\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT21\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~42_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~87\)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT21\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~87\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT21\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[21]~42_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~87\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]~88_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]~89\);

-- Location: LCCOMB_X40_Y12_N14
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~90_combout\ = ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT22\ 
-- $ (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~44_combout\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]~89\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~91\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT22\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~44_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]~89\))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT22\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~44_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]~89\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT22\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[22]~44_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]~89\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~90_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~91\);

-- Location: LCCOMB_X40_Y12_N16
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]~92_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT23\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~46_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~91\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~46_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~91\)))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT23\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~46_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~91\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~46_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~91\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]~93\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT23\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~46_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~91\)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT23\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~91\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT23\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[23]~46_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~91\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]~92_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]~93\);

-- Location: LCCOMB_X40_Y12_N18
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~94_combout\ = ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT24\ 
-- $ (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~48_combout\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]~93\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~95\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT24\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~48_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]~93\))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT24\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~48_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]~93\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT24\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[24]~48_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]~93\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~94_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~95\);

-- Location: LCCOMB_X40_Y12_N20
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]~96_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~50_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT25\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~95\ & VCC)) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT25\ & (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~95\)))) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~50_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT25\ & (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~95\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT25\ & ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~95\) # 
-- (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]~97\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~50_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT25\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~95\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~50_combout\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~95\) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[25]~50_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT25\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~95\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]~96_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]~97\);

-- Location: LCCOMB_X40_Y12_N22
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~98_combout\ = ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT26\ 
-- $ (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~52_combout\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]~97\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~99\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT26\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~52_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]~97\))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT26\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~52_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]~97\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT26\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[26]~52_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]~97\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~98_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~99\);

-- Location: LCCOMB_X40_Y12_N24
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]~100_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~54_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT27\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~99\ & VCC)) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT27\ & (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~99\)))) 
-- # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~54_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT27\ & (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~99\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT27\ & ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~99\) # 
-- (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]~101\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~54_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT27\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~99\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~54_combout\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~99\) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[27]~54_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT27\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~99\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]~100_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]~101\);

-- Location: LCCOMB_X40_Y12_N26
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~102_combout\ = ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT28\ 
-- $ (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~56_combout\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]~101\)))) # (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~103\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT28\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~56_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]~101\))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT28\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~56_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]~101\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT28\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[28]~56_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]~101\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~102_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~103\);

-- Location: LCCOMB_X40_Y12_N28
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]~104_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT29\ 
-- & ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~58_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~103\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~58_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~103\)))) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT29\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~58_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~103\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~58_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~103\) # (GND)))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]~105\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT29\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~58_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~103\)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT29\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~103\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT29\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[29]~58_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~103\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]~104_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]~105\);

-- Location: LCCOMB_X40_Y12_N30
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~106_combout\ = 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~60_combout\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT30\ $ (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]~105\)))) # 
-- (GND)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~107\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~60_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT30\) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]~105\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~60_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT30\ & !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]~105\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[30]~60_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT30\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]~105\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~106_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~107\);

-- Location: LCCOMB_X40_Y11_N0
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]~108_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT31\ 
-- & ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~62_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~107\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~62_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~107\) # (GND))))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT31\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~62_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~107\ & VCC)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~62_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~107\))))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]~109\ = CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT31\ & 
-- ((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~107\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~62_combout\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT31\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~62_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~107\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out4~DATAOUT31\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[31]~62_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~107\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]~108_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]~109\);

-- Location: LCCOMB_X40_Y11_N2
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]~110_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~64_combout\ & ((GND) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]~109\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~64_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]~109\ $ (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]~111\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~64_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]~109\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[32]~64_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]~109\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]~110_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]~111\);

-- Location: LCCOMB_X40_Y11_N4
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]~112_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~66_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]~111\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~66_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]~111\))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]~113\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~66_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[33]~66_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]~111\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]~112_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]~113\);

-- Location: LCCOMB_X40_Y11_N6
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]~114_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~68_combout\ & ((GND) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]~113\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~68_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]~113\ $ (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]~115\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~68_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]~113\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[34]~68_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]~113\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]~114_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]~115\);

-- Location: LCCOMB_X40_Y11_N8
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]~116_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~70_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]~115\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~70_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]~115\))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]~117\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~70_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[35]~70_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]~115\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]~116_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]~117\);

-- Location: LCCOMB_X40_Y11_N10
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]~118_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~72_combout\ & ((GND) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]~117\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~72_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]~117\ $ (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]~119\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~72_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]~117\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[36]~72_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]~117\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]~118_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]~119\);

-- Location: LCCOMB_X40_Y11_N12
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]~120_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~74_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]~119\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~74_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]~119\))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]~121\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~74_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[37]~74_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]~119\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]~120_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]~121\);

-- Location: LCCOMB_X40_Y11_N14
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]~122_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~76_combout\ & ((GND) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]~121\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~76_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]~121\ $ (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]~123\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~76_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]~121\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[38]~76_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]~121\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]~122_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]~123\);

-- Location: LCCOMB_X40_Y11_N16
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]~124_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~78_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]~123\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~78_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]~123\))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]~125\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~78_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[39]~78_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]~123\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]~124_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]~125\);

-- Location: LCCOMB_X40_Y11_N18
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]~126_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~80_combout\ & ((GND) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]~125\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~80_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]~125\ $ (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]~127\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~80_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]~125\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[40]~80_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]~125\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]~126_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]~127\);

-- Location: LCCOMB_X40_Y11_N20
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]~128_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~82_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]~127\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~82_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]~127\))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]~129\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~82_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]~127\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[41]~82_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]~127\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]~128_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]~129\);

-- Location: LCCOMB_X40_Y11_N22
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]~130_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~84_combout\ & ((GND) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]~129\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~84_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]~129\ $ (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]~131\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~84_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]~129\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[42]~84_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]~129\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]~130_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]~131\);

-- Location: LCCOMB_X40_Y11_N24
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]~132_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~86_combout\ & (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]~131\ 
-- & VCC)) # (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~86_combout\ & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]~131\))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]~133\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~86_combout\ & 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]~131\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[43]~86_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]~131\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]~132_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]~133\);

-- Location: LCCOMB_X40_Y11_N26
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[62]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[62]~134_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~88_combout\ & ((GND) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]~133\))) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~88_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]~133\ $ (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[62]~135\ = 
-- CARRY((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~88_combout\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]~133\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[44]~88_combout\,
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]~133\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[62]~134_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[62]~135\);

-- Location: LCCOMB_X40_Y11_N28
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[63]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[63]~136_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT27\ $ 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[62]~135\ $ 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[45]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|mac_out8~DATAOUT27\,
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|add9_result[45]~90_combout\,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[62]~135\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[63]~136_combout\);

-- Location: FF_X40_Y11_N29
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[63]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(63));

-- Location: LCCOMB_X35_Y10_N18
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\ = 
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) $ (VCC)
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\ = 
-- CARRY(\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datad => VCC,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\);

-- Location: LCCOMB_X35_Y10_N20
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\ = 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\) # (GND)))
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\ = 
-- CARRY((!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datad => VCC,
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\,
	cout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\);

-- Location: LCCOMB_X35_Y10_N10
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\ = 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(0)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\,
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\);

-- Location: FF_X35_Y10_N11
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1));

-- Location: LCCOMB_X35_Y10_N22
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\ = 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\,
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\);

-- Location: LCCOMB_X35_Y10_N12
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\ = 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\ & 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\ & 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(0)) # 
-- (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\,
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\);

-- Location: FF_X35_Y10_N13
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

-- Location: LCCOMB_X34_Y10_N28
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[0]~feeder_combout\ = 
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[0]~feeder_combout\);

-- Location: FF_X34_Y10_N29
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a\(0));

-- Location: LCCOMB_X35_Y10_N28
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[1]~0_combout\ = 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[1]~0_combout\);

-- Location: FF_X35_Y10_N29
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a\(1));

-- Location: LCCOMB_X34_Y10_N22
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[1]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ = 
-- !\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a\(1),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\);

-- Location: FF_X40_Y11_N27
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[62]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(62));

-- Location: FF_X40_Y11_N25
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[61]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(61));

-- Location: FF_X40_Y11_N23
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[60]~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(60));

-- Location: FF_X40_Y11_N21
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[59]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(59));

-- Location: FF_X40_Y11_N19
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[58]~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(58));

-- Location: FF_X40_Y11_N17
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[57]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(57));

-- Location: FF_X40_Y11_N15
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[56]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(56));

-- Location: FF_X40_Y11_N13
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[55]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(55));

-- Location: FF_X40_Y11_N11
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[54]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(54));

-- Location: FF_X40_Y11_N9
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[53]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(53));

-- Location: FF_X40_Y11_N7
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[52]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(52));

-- Location: FF_X40_Y11_N5
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[51]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(51));

-- Location: FF_X40_Y11_N3
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[50]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(50));

-- Location: FF_X40_Y11_N1
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[49]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(49));

-- Location: FF_X40_Y12_N31
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[48]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(48));

-- Location: FF_X40_Y12_N29
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[47]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(47));

-- Location: FF_X40_Y12_N27
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[46]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(46));

-- Location: FF_X40_Y12_N25
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[45]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(45));

-- Location: FF_X40_Y12_N23
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[44]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(44));

-- Location: FF_X40_Y12_N21
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[43]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(43));

-- Location: FF_X40_Y12_N19
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[42]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(42));

-- Location: FF_X40_Y12_N17
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[41]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(41));

-- Location: FF_X40_Y12_N15
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[40]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(40));

-- Location: FF_X40_Y12_N13
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[39]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(39));

-- Location: FF_X40_Y12_N11
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[38]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(38));

-- Location: FF_X40_Y12_N9
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[37]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(37));

-- Location: FF_X40_Y12_N7
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[36]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(36));

-- Location: FF_X40_Y12_N5
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[35]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(35));

-- Location: FF_X40_Y12_N3
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[34]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(34));

-- Location: FF_X40_Y12_N1
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[33]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(33));

-- Location: FF_X40_Y13_N31
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[32]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(32));

-- Location: FF_X40_Y13_N29
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[31]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(31));

-- Location: LCCOMB_X41_Y14_N28
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[2]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(2),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[2]~feeder_combout\);

-- Location: FF_X41_Y14_N29
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(2));

-- Location: LCCOMB_X38_Y14_N2
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[1]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(1),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[1]~feeder_combout\);

-- Location: FF_X38_Y14_N3
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(1));

-- Location: LCCOMB_X38_Y14_N4
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[0]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(0),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[0]~feeder_combout\);

-- Location: FF_X38_Y14_N5
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(0));

-- Location: M9K_X33_Y11_N0
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "simple_vec_dot_product_mul_32s_32s_64_6:simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0:simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|altshift_taps:buff1_rtl_0|shift_taps_f6m:auto_generated|altsyncram_9l31:altsyncram4|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 3,
	port_a_logical_ram_width => 64,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 3,
	port_b_logical_ram_width => 64,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \ap_clk~inputclkctrl_outclk\,
	clk1 => GND,
	portadatain => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\,
	portaaddr => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\,
	portbaddr => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y11_N6
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a10\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a9\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a11\) # 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a10\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a9\,
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a11\,
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a12\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y11_N14
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a14\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a15\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a13\) # 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a14\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a15\,
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a13\,
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a16\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y11_N14
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a6\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a5\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a7\) # 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a6\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a5\,
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a7\,
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a8\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y11_N28
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a3\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a1\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a4\) # 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a3\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a1\,
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a4\,
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a2\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y11_N8
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~2_combout\) # ((\LessThan0~3_combout\) # ((\LessThan0~1_combout\) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X34_Y11_N16
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a18\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a20\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a17\) # 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a18\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a20\,
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a17\,
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a19\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X32_Y11_N24
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a32\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a30\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a31\) # 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a32\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a30\,
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a31\,
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a29\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X34_Y11_N2
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a23\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a22\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a21\) # 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a23\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a22\,
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a21\,
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a24\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X34_Y11_N28
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a25\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a27\) # 
-- ((\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a28\) # 
-- (\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a25\,
	datab => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a27\,
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a28\,
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a26\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X31_Y11_N10
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~5_combout\) # ((\LessThan0~8_combout\) # ((\LessThan0~6_combout\) # (\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \LessThan0~8_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X31_Y11_N28
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (!\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ & ((\LessThan0~4_combout\) # (\LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: FF_X31_Y11_N29
\icmp_reg_201[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \LessThan0~10_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => icmp_reg_201(0));

-- Location: FF_X32_Y11_N21
\i1_reg_195[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a63\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(0));

-- Location: LCCOMB_X32_Y11_N12
\i1_reg_195[57]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[57]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a6\,
	combout => \i1_reg_195[57]~feeder_combout\);

-- Location: FF_X32_Y11_N13
\i1_reg_195[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[57]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(57));

-- Location: FF_X32_Y11_N15
\i1_reg_195[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a7\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(56));

-- Location: FF_X32_Y11_N3
\i1_reg_195[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a5\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(58));

-- Location: LCCOMB_X32_Y11_N16
\i1_reg_195[55]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[55]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a8\,
	combout => \i1_reg_195[55]~feeder_combout\);

-- Location: FF_X32_Y11_N17
\i1_reg_195[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[55]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(55));

-- Location: LCCOMB_X32_Y11_N2
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (((!i1_reg_195(55)) # (!i1_reg_195(58))) # (!i1_reg_195(56))) # (!i1_reg_195(57))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1_reg_195(57),
	datab => i1_reg_195(56),
	datac => i1_reg_195(58),
	datad => i1_reg_195(55),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X32_Y11_N26
\i1_reg_195[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[60]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a3\,
	combout => \i1_reg_195[60]~feeder_combout\);

-- Location: FF_X32_Y11_N27
\i1_reg_195[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[60]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(60));

-- Location: LCCOMB_X32_Y11_N8
\i1_reg_195[61]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[61]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a2\,
	combout => \i1_reg_195[61]~feeder_combout\);

-- Location: FF_X32_Y11_N9
\i1_reg_195[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[61]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(61));

-- Location: FF_X32_Y11_N23
\i1_reg_195[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a1\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(62));

-- Location: FF_X32_Y11_N29
\i1_reg_195[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a4\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(59));

-- Location: LCCOMB_X32_Y11_N22
\LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (((!i1_reg_195(59)) # (!i1_reg_195(62))) # (!i1_reg_195(61))) # (!i1_reg_195(60))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1_reg_195(60),
	datab => i1_reg_195(61),
	datac => i1_reg_195(62),
	datad => i1_reg_195(59),
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X31_Y11_N22
\i1_reg_195[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[48]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a15\,
	combout => \i1_reg_195[48]~feeder_combout\);

-- Location: FF_X31_Y11_N23
\i1_reg_195[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[48]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(48));

-- Location: LCCOMB_X31_Y11_N16
\i1_reg_195[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[47]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a16\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a16\,
	combout => \i1_reg_195[47]~feeder_combout\);

-- Location: FF_X31_Y11_N17
\i1_reg_195[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[47]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(47));

-- Location: FF_X31_Y11_N27
\i1_reg_195[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a13\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(50));

-- Location: LCCOMB_X31_Y11_N20
\i1_reg_195[49]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[49]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a14\,
	combout => \i1_reg_195[49]~feeder_combout\);

-- Location: FF_X31_Y11_N21
\i1_reg_195[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[49]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(49));

-- Location: LCCOMB_X31_Y11_N26
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (((!i1_reg_195(49)) # (!i1_reg_195(50))) # (!i1_reg_195(47))) # (!i1_reg_195(48))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1_reg_195(48),
	datab => i1_reg_195(47),
	datac => i1_reg_195(50),
	datad => i1_reg_195(49),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X31_Y11_N12
\i1_reg_195[51]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[51]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a12\,
	combout => \i1_reg_195[51]~feeder_combout\);

-- Location: FF_X31_Y11_N13
\i1_reg_195[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[51]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(51));

-- Location: LCCOMB_X32_Y11_N0
\i1_reg_195[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[53]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a10\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a10\,
	combout => \i1_reg_195[53]~feeder_combout\);

-- Location: FF_X32_Y11_N1
\i1_reg_195[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[53]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(53));

-- Location: FF_X32_Y11_N19
\i1_reg_195[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a9\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(54));

-- Location: FF_X32_Y11_N7
\i1_reg_195[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a11\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(52));

-- Location: LCCOMB_X32_Y11_N18
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (((!i1_reg_195(52)) # (!i1_reg_195(54))) # (!i1_reg_195(53))) # (!i1_reg_195(51))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1_reg_195(51),
	datab => i1_reg_195(53),
	datac => i1_reg_195(54),
	datad => i1_reg_195(52),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X31_Y11_N18
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (\LessThan1~7_combout\) # ((\LessThan1~8_combout\) # ((\LessThan1~5_combout\) # (\LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~7_combout\,
	datab => \LessThan1~8_combout\,
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~9_combout\);

-- Location: FF_X31_Y11_N31
\i1_reg_195[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(63));

-- Location: LCCOMB_X34_Y11_N22
\i1_reg_195[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[40]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a23\,
	combout => \i1_reg_195[40]~feeder_combout\);

-- Location: FF_X34_Y11_N23
\i1_reg_195[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[40]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(40));

-- Location: LCCOMB_X34_Y11_N20
\i1_reg_195[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[41]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a22\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a22\,
	combout => \i1_reg_195[41]~feeder_combout\);

-- Location: FF_X34_Y11_N21
\i1_reg_195[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[41]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(41));

-- Location: FF_X34_Y11_N11
\i1_reg_195[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a21\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(42));

-- Location: LCCOMB_X34_Y11_N24
\i1_reg_195[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[39]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a24\,
	combout => \i1_reg_195[39]~feeder_combout\);

-- Location: FF_X34_Y11_N25
\i1_reg_195[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[39]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(39));

-- Location: LCCOMB_X34_Y11_N10
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!i1_reg_195(39)) # (!i1_reg_195(42))) # (!i1_reg_195(41))) # (!i1_reg_195(40))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1_reg_195(40),
	datab => i1_reg_195(41),
	datac => i1_reg_195(42),
	datad => i1_reg_195(39),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X34_Y11_N26
\i1_reg_195[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[44]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a19\,
	combout => \i1_reg_195[44]~feeder_combout\);

-- Location: FF_X34_Y11_N27
\i1_reg_195[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[44]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(44));

-- Location: LCCOMB_X34_Y11_N8
\i1_reg_195[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[43]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a20\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a20\,
	combout => \i1_reg_195[43]~feeder_combout\);

-- Location: FF_X34_Y11_N9
\i1_reg_195[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[43]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(43));

-- Location: FF_X34_Y11_N15
\i1_reg_195[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a17\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(46));

-- Location: LCCOMB_X34_Y11_N12
\i1_reg_195[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[45]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a18\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a18\,
	combout => \i1_reg_195[45]~feeder_combout\);

-- Location: FF_X34_Y11_N13
\i1_reg_195[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[45]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(45));

-- Location: LCCOMB_X34_Y11_N14
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (((!i1_reg_195(45)) # (!i1_reg_195(46))) # (!i1_reg_195(43))) # (!i1_reg_195(44))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1_reg_195(44),
	datab => i1_reg_195(43),
	datac => i1_reg_195(46),
	datad => i1_reg_195(45),
	combout => \LessThan1~3_combout\);

-- Location: FF_X32_Y11_N31
\i1_reg_195[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a32\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(31));

-- Location: FF_X32_Y11_N25
\i1_reg_195[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a31\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(32));

-- Location: FF_X32_Y11_N5
\i1_reg_195[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a29\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(34));

-- Location: LCCOMB_X32_Y11_N10
\i1_reg_195[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[33]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a30\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a30\,
	combout => \i1_reg_195[33]~feeder_combout\);

-- Location: FF_X32_Y11_N11
\i1_reg_195[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[33]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(33));

-- Location: LCCOMB_X32_Y11_N4
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!i1_reg_195(33)) # (!i1_reg_195(34))) # (!i1_reg_195(32))) # (!i1_reg_195(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1_reg_195(31),
	datab => i1_reg_195(32),
	datac => i1_reg_195(34),
	datad => i1_reg_195(33),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X34_Y11_N30
\i1_reg_195[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[36]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a27\,
	combout => \i1_reg_195[36]~feeder_combout\);

-- Location: FF_X34_Y11_N31
\i1_reg_195[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[36]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(36));

-- Location: LCCOMB_X34_Y11_N0
\i1_reg_195[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1_reg_195[37]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a26\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a26\,
	combout => \i1_reg_195[37]~feeder_combout\);

-- Location: FF_X34_Y11_N1
\i1_reg_195[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \i1_reg_195[37]~feeder_combout\,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(37));

-- Location: FF_X34_Y11_N7
\i1_reg_195[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a25\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(38));

-- Location: FF_X34_Y11_N29
\i1_reg_195[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a28\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(35));

-- Location: LCCOMB_X34_Y11_N6
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!i1_reg_195(35)) # (!i1_reg_195(38))) # (!i1_reg_195(37))) # (!i1_reg_195(36))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1_reg_195(36),
	datab => i1_reg_195(37),
	datac => i1_reg_195(38),
	datad => i1_reg_195(35),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X34_Y11_N4
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~2_combout\) # ((\LessThan1~3_combout\) # ((\LessThan1~0_combout\) # (\LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \LessThan1~3_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X31_Y11_N30
\LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (i1_reg_195(63) & ((\LessThan1~9_combout\) # (\LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~9_combout\,
	datac => i1_reg_195(63),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~10_combout\);

-- Location: LCCOMB_X32_Y11_N20
\out_r_d0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~0_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(0) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(0),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~0_combout\);

-- Location: FF_X31_Y11_N1
\i1_reg_195[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a62\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(1));

-- Location: LCCOMB_X31_Y11_N0
\out_r_d0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~1_combout\ = (icmp_reg_201(0)) # ((!\LessThan1~10_combout\ & i1_reg_195(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datab => icmp_reg_201(0),
	datac => i1_reg_195(1),
	combout => \out_r_d0~1_combout\);

-- Location: FF_X34_Y11_N19
\i1_reg_195[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a61\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(2));

-- Location: LCCOMB_X34_Y11_N18
\out_r_d0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~2_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(2) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(2),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~2_combout\);

-- Location: FF_X40_Y13_N27
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[30]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(30));

-- Location: FF_X40_Y13_N25
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[29]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(29));

-- Location: FF_X40_Y13_N23
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[28]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(28));

-- Location: FF_X40_Y13_N21
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[27]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(27));

-- Location: FF_X40_Y13_N19
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[26]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(26));

-- Location: FF_X40_Y13_N17
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[25]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(25));

-- Location: FF_X40_Y13_N15
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[24]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(24));

-- Location: FF_X40_Y13_N13
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[23]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(23));

-- Location: FF_X40_Y13_N11
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[22]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(22));

-- Location: FF_X40_Y13_N9
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[21]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(21));

-- Location: FF_X40_Y13_N7
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[20]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(20));

-- Location: FF_X40_Y13_N5
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[19]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(19));

-- Location: FF_X40_Y13_N3
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[18]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(18));

-- Location: LCCOMB_X41_Y14_N30
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[17]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(17),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[17]~feeder_combout\);

-- Location: FF_X41_Y14_N31
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(17));

-- Location: LCCOMB_X41_Y14_N12
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[16]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(16),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[16]~feeder_combout\);

-- Location: FF_X41_Y14_N13
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(16));

-- Location: LCCOMB_X41_Y14_N26
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[15]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(15),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[15]~feeder_combout\);

-- Location: FF_X41_Y14_N27
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(15));

-- Location: LCCOMB_X41_Y14_N16
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[14]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(14),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[14]~feeder_combout\);

-- Location: FF_X41_Y14_N17
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(14));

-- Location: LCCOMB_X41_Y14_N18
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[13]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(13),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[13]~feeder_combout\);

-- Location: FF_X41_Y14_N19
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(13));

-- Location: LCCOMB_X41_Y14_N20
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[12]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(12),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[12]~feeder_combout\);

-- Location: FF_X41_Y14_N21
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(12));

-- Location: LCCOMB_X41_Y14_N10
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[11]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(11),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[11]~feeder_combout\);

-- Location: FF_X41_Y14_N11
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(11));

-- Location: LCCOMB_X41_Y14_N8
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[10]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(10),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[10]~feeder_combout\);

-- Location: FF_X41_Y14_N9
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(10));

-- Location: LCCOMB_X41_Y14_N22
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[9]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(9),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[9]~feeder_combout\);

-- Location: FF_X41_Y14_N23
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(9));

-- Location: LCCOMB_X41_Y14_N4
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[8]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(8),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[8]~feeder_combout\);

-- Location: FF_X41_Y14_N5
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(8));

-- Location: LCCOMB_X41_Y14_N14
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[7]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(7),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[7]~feeder_combout\);

-- Location: FF_X41_Y14_N15
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(7));

-- Location: LCCOMB_X41_Y14_N0
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[6]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(6),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[6]~feeder_combout\);

-- Location: FF_X41_Y14_N1
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(6));

-- Location: LCCOMB_X41_Y14_N2
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[5]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(5),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[5]~feeder_combout\);

-- Location: FF_X41_Y14_N3
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(5));

-- Location: LCCOMB_X41_Y14_N24
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[4]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(4),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[4]~feeder_combout\);

-- Location: FF_X41_Y14_N25
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(4));

-- Location: LCCOMB_X41_Y14_N6
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[3]~feeder_combout\ = \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|Mult0|auto_generated|w569w\(3),
	combout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[3]~feeder_combout\);

-- Location: FF_X41_Y14_N7
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	d => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff0\(3));

-- Location: M9K_X33_Y10_N0
\simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "simple_vec_dot_product_mul_32s_32s_64_6:simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0:simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|altshift_taps:buff1_rtl_0|shift_taps_f6m:auto_generated|altsyncram_9l31:altsyncram4|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 33,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 3,
	port_a_logical_ram_width => 64,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 33,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 3,
	port_b_logical_ram_width => 64,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \ap_clk~inputclkctrl_outclk\,
	clk1 => GND,
	portadatain => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTADATAIN_bus\,
	portaaddr => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTAADDR_bus\,
	portbaddr => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33_PORTBDATAOUT_bus\);

-- Location: FF_X32_Y10_N5
\i1_reg_195[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a60\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(3));

-- Location: LCCOMB_X32_Y10_N4
\out_r_d0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~3_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(3) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(3),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~3_combout\);

-- Location: FF_X34_Y10_N13
\i1_reg_195[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a59\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(4));

-- Location: LCCOMB_X34_Y10_N12
\out_r_d0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~4_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(4) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(4),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~4_combout\);

-- Location: FF_X32_Y10_N15
\i1_reg_195[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a58\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(5));

-- Location: LCCOMB_X32_Y10_N14
\out_r_d0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~5_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(5) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(5),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~5_combout\);

-- Location: FF_X34_Y10_N3
\i1_reg_195[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a57\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(6));

-- Location: LCCOMB_X34_Y10_N2
\out_r_d0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~6_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(6) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(6),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~6_combout\);

-- Location: FF_X32_Y10_N17
\i1_reg_195[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a56\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(7));

-- Location: LCCOMB_X32_Y10_N16
\out_r_d0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~7_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(7) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(7),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~7_combout\);

-- Location: FF_X34_Y10_N17
\i1_reg_195[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a55\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(8));

-- Location: LCCOMB_X34_Y10_N16
\out_r_d0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~8_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(8) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(8),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~8_combout\);

-- Location: FF_X32_Y10_N27
\i1_reg_195[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a54\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(9));

-- Location: LCCOMB_X32_Y10_N26
\out_r_d0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~9_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(9) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(9),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~9_combout\);

-- Location: FF_X34_Y10_N11
\i1_reg_195[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a53\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(10));

-- Location: LCCOMB_X34_Y10_N10
\out_r_d0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~10_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(10) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(10),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~10_combout\);

-- Location: FF_X32_Y10_N1
\i1_reg_195[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a52\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(11));

-- Location: LCCOMB_X32_Y10_N0
\out_r_d0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~11_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(11) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(11),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~11_combout\);

-- Location: FF_X32_Y10_N3
\i1_reg_195[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a51\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(12));

-- Location: LCCOMB_X32_Y10_N2
\out_r_d0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~12_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(12) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(12),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~12_combout\);

-- Location: FF_X32_Y10_N25
\i1_reg_195[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a50\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(13));

-- Location: LCCOMB_X32_Y10_N24
\out_r_d0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~13_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(13) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(13),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~13_combout\);

-- Location: FF_X34_Y10_N21
\i1_reg_195[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a49\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(14));

-- Location: LCCOMB_X34_Y10_N20
\out_r_d0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~14_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(14) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(14),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~14_combout\);

-- Location: FF_X32_Y10_N11
\i1_reg_195[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a48\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(15));

-- Location: LCCOMB_X32_Y10_N10
\out_r_d0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~15_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(15) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(15),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~15_combout\);

-- Location: FF_X34_Y10_N19
\i1_reg_195[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a47\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(16));

-- Location: LCCOMB_X34_Y10_N18
\out_r_d0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~16_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(16) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(16),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~16_combout\);

-- Location: FF_X32_Y10_N13
\i1_reg_195[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a46\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(17));

-- Location: LCCOMB_X32_Y10_N12
\out_r_d0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~17_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(17) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(17),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~17_combout\);

-- Location: FF_X32_Y10_N7
\i1_reg_195[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a45\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(18));

-- Location: LCCOMB_X32_Y10_N6
\out_r_d0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~18_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(18) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(18),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~18_combout\);

-- Location: FF_X32_Y10_N21
\i1_reg_195[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a44\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(19));

-- Location: LCCOMB_X32_Y10_N20
\out_r_d0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~19_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(19) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(19),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~19_combout\);

-- Location: FF_X34_Y10_N9
\i1_reg_195[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a43\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(20));

-- Location: LCCOMB_X34_Y10_N8
\out_r_d0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~20_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(20) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(20),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~20_combout\);

-- Location: FF_X34_Y10_N7
\i1_reg_195[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a42\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(21));

-- Location: LCCOMB_X34_Y10_N6
\out_r_d0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~21_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(21) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(21),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~21_combout\);

-- Location: FF_X32_Y10_N23
\i1_reg_195[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a41\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(22));

-- Location: LCCOMB_X32_Y10_N22
\out_r_d0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~22_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(22) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(22),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~22_combout\);

-- Location: FF_X32_Y10_N9
\i1_reg_195[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a40\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(23));

-- Location: LCCOMB_X32_Y10_N8
\out_r_d0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~23_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(23) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(23),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~23_combout\);

-- Location: FF_X34_Y10_N25
\i1_reg_195[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a39\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(24));

-- Location: LCCOMB_X34_Y10_N24
\out_r_d0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~24_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(24) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(24),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~24_combout\);

-- Location: FF_X32_Y10_N31
\i1_reg_195[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a38\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(25));

-- Location: LCCOMB_X32_Y10_N30
\out_r_d0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~25_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(25) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(25),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~25_combout\);

-- Location: FF_X32_Y10_N29
\i1_reg_195[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a37\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(26));

-- Location: LCCOMB_X32_Y10_N28
\out_r_d0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~26_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(26) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(26),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~26_combout\);

-- Location: FF_X32_Y10_N19
\i1_reg_195[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a36\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(27));

-- Location: LCCOMB_X32_Y10_N18
\out_r_d0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~27_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(27) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => icmp_reg_201(0),
	datac => i1_reg_195(27),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~27_combout\);

-- Location: FF_X34_Y10_N31
\i1_reg_195[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a35\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(28));

-- Location: LCCOMB_X34_Y10_N30
\out_r_d0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~28_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(28) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(28),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~28_combout\);

-- Location: FF_X34_Y10_N5
\i1_reg_195[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a34\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(29));

-- Location: LCCOMB_X34_Y10_N4
\out_r_d0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~29_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(29) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(29),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~29_combout\);

-- Location: FF_X34_Y10_N27
\i1_reg_195[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ap_clk~inputclkctrl_outclk\,
	asdata => \simple_vec_dot_product_mul_32s_32s_64_6_U1|simple_vec_dot_product_mul_32s_32s_64_6_MulnS_0_U|buff1_rtl_0|auto_generated|altsyncram4|ram_block5a33~portbdataout\,
	sload => VCC,
	ena => ap_CS_fsm(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1_reg_195(30));

-- Location: LCCOMB_X34_Y10_N26
\out_r_d0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~30_combout\ = (icmp_reg_201(0)) # ((i1_reg_195(30) & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(30),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~30_combout\);

-- Location: LCCOMB_X32_Y11_N30
\out_r_d0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_r_d0~31_combout\ = (!icmp_reg_201(0) & ((i1_reg_195(31)) # (\LessThan1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icmp_reg_201(0),
	datac => i1_reg_195(31),
	datad => \LessThan1~10_combout\,
	combout => \out_r_d0~31_combout\);

ww_ap_done <= \ap_done~output_o\;

ww_ap_idle <= \ap_idle~output_o\;

ww_ap_ready <= \ap_ready~output_o\;

ww_a_address0(0) <= \a_address0[0]~output_o\;

ww_a_address0(1) <= \a_address0[1]~output_o\;

ww_a_ce0 <= \a_ce0~output_o\;

ww_b_address0(0) <= \b_address0[0]~output_o\;

ww_b_address0(1) <= \b_address0[1]~output_o\;

ww_b_ce0 <= \b_ce0~output_o\;

ww_out_r_address0(0) <= \out_r_address0[0]~output_o\;

ww_out_r_address0(1) <= \out_r_address0[1]~output_o\;

ww_out_r_ce0 <= \out_r_ce0~output_o\;

ww_out_r_we0 <= \out_r_we0~output_o\;

ww_out_r_d0(0) <= \out_r_d0[0]~output_o\;

ww_out_r_d0(1) <= \out_r_d0[1]~output_o\;

ww_out_r_d0(2) <= \out_r_d0[2]~output_o\;

ww_out_r_d0(3) <= \out_r_d0[3]~output_o\;

ww_out_r_d0(4) <= \out_r_d0[4]~output_o\;

ww_out_r_d0(5) <= \out_r_d0[5]~output_o\;

ww_out_r_d0(6) <= \out_r_d0[6]~output_o\;

ww_out_r_d0(7) <= \out_r_d0[7]~output_o\;

ww_out_r_d0(8) <= \out_r_d0[8]~output_o\;

ww_out_r_d0(9) <= \out_r_d0[9]~output_o\;

ww_out_r_d0(10) <= \out_r_d0[10]~output_o\;

ww_out_r_d0(11) <= \out_r_d0[11]~output_o\;

ww_out_r_d0(12) <= \out_r_d0[12]~output_o\;

ww_out_r_d0(13) <= \out_r_d0[13]~output_o\;

ww_out_r_d0(14) <= \out_r_d0[14]~output_o\;

ww_out_r_d0(15) <= \out_r_d0[15]~output_o\;

ww_out_r_d0(16) <= \out_r_d0[16]~output_o\;

ww_out_r_d0(17) <= \out_r_d0[17]~output_o\;

ww_out_r_d0(18) <= \out_r_d0[18]~output_o\;

ww_out_r_d0(19) <= \out_r_d0[19]~output_o\;

ww_out_r_d0(20) <= \out_r_d0[20]~output_o\;

ww_out_r_d0(21) <= \out_r_d0[21]~output_o\;

ww_out_r_d0(22) <= \out_r_d0[22]~output_o\;

ww_out_r_d0(23) <= \out_r_d0[23]~output_o\;

ww_out_r_d0(24) <= \out_r_d0[24]~output_o\;

ww_out_r_d0(25) <= \out_r_d0[25]~output_o\;

ww_out_r_d0(26) <= \out_r_d0[26]~output_o\;

ww_out_r_d0(27) <= \out_r_d0[27]~output_o\;

ww_out_r_d0(28) <= \out_r_d0[28]~output_o\;

ww_out_r_d0(29) <= \out_r_d0[29]~output_o\;

ww_out_r_d0(30) <= \out_r_d0[30]~output_o\;

ww_out_r_d0(31) <= \out_r_d0[31]~output_o\;
END structure;


