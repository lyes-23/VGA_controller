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

-- DATE "06/27/2024 22:05:36"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk_50 : IN std_logic;
	start : IN std_logic;
	reset : IN std_logic;
	push_button_left : IN std_logic;
	push_button_right : IN std_logic;
	R : BUFFER std_logic_vector(3 DOWNTO 0);
	G : BUFFER std_logic_vector(3 DOWNTO 0);
	B : BUFFER std_logic_vector(3 DOWNTO 0);
	h_sync : BUFFER std_logic;
	v_sync : BUFFER std_logic
	);
END top_level;

-- Design Ports Information
-- R[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_sync	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_sync	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_button_right	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_button_left	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_push_button_left : std_logic;
SIGNAL ww_push_button_right : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL \PLL_frequency|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL_frequency|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Switch2|r_Switch_State~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_ctrl_inst|display_en~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \movement_ctrl_inst|slow_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \PLL_frequency|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~0_combout\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Switch2|Add0~41\ : std_logic;
SIGNAL \Switch2|Add0~42_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[21]~3_combout\ : std_logic;
SIGNAL \Switch2|Add0~43\ : std_logic;
SIGNAL \Switch2|Add0~44_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[22]~4_combout\ : std_logic;
SIGNAL \Switch2|Add0~45\ : std_logic;
SIGNAL \Switch2|Add0~46_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[23]~0_combout\ : std_logic;
SIGNAL \Switch2|Add0~47\ : std_logic;
SIGNAL \Switch2|Add0~48_combout\ : std_logic;
SIGNAL \Switch2|Add0~53_combout\ : std_logic;
SIGNAL \Switch2|Add0~0_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[0]~13_combout\ : std_logic;
SIGNAL \Switch2|Add0~1\ : std_logic;
SIGNAL \Switch2|Add0~2_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[1]~14_combout\ : std_logic;
SIGNAL \Switch2|Add0~3\ : std_logic;
SIGNAL \Switch2|Add0~4_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[2]~15_combout\ : std_logic;
SIGNAL \Switch2|Add0~5\ : std_logic;
SIGNAL \Switch2|Add0~6_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[3]~16_combout\ : std_logic;
SIGNAL \Switch2|Add0~7\ : std_logic;
SIGNAL \Switch2|Add0~8_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[4]~18_combout\ : std_logic;
SIGNAL \Switch2|Add0~9\ : std_logic;
SIGNAL \Switch2|Add0~10_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[5]~19_combout\ : std_logic;
SIGNAL \Switch2|Add0~11\ : std_logic;
SIGNAL \Switch2|Add0~12_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[6]~20_combout\ : std_logic;
SIGNAL \Switch2|Add0~13\ : std_logic;
SIGNAL \Switch2|Add0~14_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[7]~17_combout\ : std_logic;
SIGNAL \Switch2|Add0~15\ : std_logic;
SIGNAL \Switch2|Add0~16_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[8]~9_combout\ : std_logic;
SIGNAL \Switch2|Add0~17\ : std_logic;
SIGNAL \Switch2|Add0~18_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[9]~10_combout\ : std_logic;
SIGNAL \Switch2|Add0~19\ : std_logic;
SIGNAL \Switch2|Add0~20_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[10]~11_combout\ : std_logic;
SIGNAL \Switch2|Add0~21\ : std_logic;
SIGNAL \Switch2|Add0~22_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[11]~12_combout\ : std_logic;
SIGNAL \Switch2|Add0~23\ : std_logic;
SIGNAL \Switch2|Add0~24_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[12]~5_combout\ : std_logic;
SIGNAL \Switch2|Add0~25\ : std_logic;
SIGNAL \Switch2|Add0~26_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[13]~6_combout\ : std_logic;
SIGNAL \Switch2|Add0~27\ : std_logic;
SIGNAL \Switch2|Add0~28_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[14]~7_combout\ : std_logic;
SIGNAL \Switch2|Add0~29\ : std_logic;
SIGNAL \Switch2|Add0~30_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[15]~8_combout\ : std_logic;
SIGNAL \Switch2|Add0~31\ : std_logic;
SIGNAL \Switch2|Add0~32_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[16]~22_combout\ : std_logic;
SIGNAL \Switch2|r_Switch_State~2_combout\ : std_logic;
SIGNAL \Switch2|LessThan0~0_combout\ : std_logic;
SIGNAL \Switch2|LessThan0~1_combout\ : std_logic;
SIGNAL \Switch2|LessThan0~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Switch2|p_Debounce~0_combout\ : std_logic;
SIGNAL \Switch2|Add0~49\ : std_logic;
SIGNAL \Switch2|Add0~50_combout\ : std_logic;
SIGNAL \Switch2|Add0~52_combout\ : std_logic;
SIGNAL \Switch2|p_Debounce~1_combout\ : std_logic;
SIGNAL \Switch2|Add0~33\ : std_logic;
SIGNAL \Switch2|Add0~34_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[17]~21_combout\ : std_logic;
SIGNAL \Switch2|Add0~35\ : std_logic;
SIGNAL \Switch2|Add0~36_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[18]~23_combout\ : std_logic;
SIGNAL \Switch2|Add0~37\ : std_logic;
SIGNAL \Switch2|Add0~38_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[19]~1_combout\ : std_logic;
SIGNAL \Switch2|Add0~39\ : std_logic;
SIGNAL \Switch2|Add0~40_combout\ : std_logic;
SIGNAL \Switch2|r_Debounce_Count[20]~2_combout\ : std_logic;
SIGNAL \Switch2|r_Switch_State~0_combout\ : std_logic;
SIGNAL \Switch2|r_Switch_State~1_combout\ : std_logic;
SIGNAL \Switch2|r_Switch_State~3_combout\ : std_logic;
SIGNAL \Switch2|r_Switch_State~4_combout\ : std_logic;
SIGNAL \Switch2|r_Switch_State~5_combout\ : std_logic;
SIGNAL \Switch2|r_Switch_State~6_combout\ : std_logic;
SIGNAL \Switch2|r_Switch_State~7_combout\ : std_logic;
SIGNAL \Switch2|r_Switch_State~8_combout\ : std_logic;
SIGNAL \Switch2|r_Switch_State~q\ : std_logic;
SIGNAL \Switch2|r_Switch_State~clkctrl_outclk\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~1\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~3\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~5\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal0~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~7\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~9\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~11\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~12_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|clk_divider~5_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~13\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~14_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal0~7_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal0~9_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~15\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~16_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|clk_divider~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~17\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~18_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~19\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~20_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|clk_divider~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~21\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~22_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|clk_divider~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~23\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~24_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~25\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~26_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~27\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~28_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~29\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~30_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~31\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~32_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|clk_divider~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~33\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~34_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|clk_divider~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~35\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~36_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~37\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~38_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~39\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~40_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~41\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~42_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~43\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~44_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~45\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~46_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~47\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~48_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~49\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~50_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~51\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~52_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~53\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~54_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~55\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~56_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~57\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~58_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~59\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~60_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~61\ : std_logic;
SIGNAL \movement_ctrl_inst|Add0~62_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal0~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal0~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal0~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal0~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal0~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal0~5_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal0~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal0~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|slow_clk~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|slow_clk~q\ : std_logic;
SIGNAL \movement_ctrl_inst|slow_clk~clkctrl_outclk\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[1]~13_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~21\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~23\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~24_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~32_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment[18]~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~25\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~26_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~31_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~27\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~28_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~30_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~29\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~30_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~29_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[11]~5_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[11]~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~7\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[11]~7_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[11]~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[11]~9_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~31\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~32_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~28_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~33\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~34_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~27_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~35\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~36_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~26_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~37\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~38_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~25_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~39\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~40_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~24_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~41\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~42_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~23_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~43\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~44_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~22_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~45\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~46_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~21_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[11]~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~47\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~48_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~20_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~49\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~50_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~19_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~51\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~52_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~18_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~53\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~54_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~17_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~55\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~56_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~16_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~57\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~58_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~15_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~59\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~60_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~14_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~61\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~62_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~13_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[11]~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[11]~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[11]~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[11]~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[11]~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[2]~12_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~1\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~3\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|STAND_SPEED[4]~11_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~5\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~7\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~9\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~11\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~12_combout\ : std_logic;
SIGNAL \push_button_right~input_o\ : std_logic;
SIGNAL \Switchright|Add0~0_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[0]~13_combout\ : std_logic;
SIGNAL \Switchright|Add0~1\ : std_logic;
SIGNAL \Switchright|Add0~2_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[1]~14_combout\ : std_logic;
SIGNAL \Switchright|Add0~3\ : std_logic;
SIGNAL \Switchright|Add0~4_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[2]~15_combout\ : std_logic;
SIGNAL \Switchright|Add0~5\ : std_logic;
SIGNAL \Switchright|Add0~6_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[3]~16_combout\ : std_logic;
SIGNAL \Switchright|Add0~7\ : std_logic;
SIGNAL \Switchright|Add0~8_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[4]~18_combout\ : std_logic;
SIGNAL \Switchright|Add0~9\ : std_logic;
SIGNAL \Switchright|Add0~10_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[5]~19_combout\ : std_logic;
SIGNAL \Switchright|Add0~11\ : std_logic;
SIGNAL \Switchright|Add0~12_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[6]~20_combout\ : std_logic;
SIGNAL \Switchright|Add0~13\ : std_logic;
SIGNAL \Switchright|Add0~14_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[7]~17_combout\ : std_logic;
SIGNAL \Switchright|Add0~15\ : std_logic;
SIGNAL \Switchright|Add0~16_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[8]~9_combout\ : std_logic;
SIGNAL \Switchright|Add0~17\ : std_logic;
SIGNAL \Switchright|Add0~18_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[9]~10_combout\ : std_logic;
SIGNAL \Switchright|Add0~19\ : std_logic;
SIGNAL \Switchright|Add0~20_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[10]~11_combout\ : std_logic;
SIGNAL \Switchright|Add0~21\ : std_logic;
SIGNAL \Switchright|Add0~22_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[11]~12_combout\ : std_logic;
SIGNAL \Switchright|Add0~23\ : std_logic;
SIGNAL \Switchright|Add0~24_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[12]~5_combout\ : std_logic;
SIGNAL \Switchright|Add0~25\ : std_logic;
SIGNAL \Switchright|Add0~26_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[13]~6_combout\ : std_logic;
SIGNAL \Switchright|Add0~27\ : std_logic;
SIGNAL \Switchright|Add0~28_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[14]~7_combout\ : std_logic;
SIGNAL \Switchright|Add0~29\ : std_logic;
SIGNAL \Switchright|Add0~30_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[15]~8_combout\ : std_logic;
SIGNAL \Switchright|Add0~31\ : std_logic;
SIGNAL \Switchright|Add0~32_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[16]~22_combout\ : std_logic;
SIGNAL \Switchright|Add0~33\ : std_logic;
SIGNAL \Switchright|Add0~34_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[17]~21_combout\ : std_logic;
SIGNAL \Switchright|Add0~35\ : std_logic;
SIGNAL \Switchright|Add0~36_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[18]~23_combout\ : std_logic;
SIGNAL \Switchright|LessThan0~0_combout\ : std_logic;
SIGNAL \Switchright|r_Switch_State~2_combout\ : std_logic;
SIGNAL \Switchright|LessThan0~1_combout\ : std_logic;
SIGNAL \Switchright|Add0~37\ : std_logic;
SIGNAL \Switchright|Add0~38_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[19]~1_combout\ : std_logic;
SIGNAL \Switchright|Add0~39\ : std_logic;
SIGNAL \Switchright|Add0~40_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[20]~2_combout\ : std_logic;
SIGNAL \Switchright|Add0~41\ : std_logic;
SIGNAL \Switchright|Add0~42_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[21]~3_combout\ : std_logic;
SIGNAL \Switchright|r_Switch_State~0_combout\ : std_logic;
SIGNAL \Switchright|r_Switch_State~1_combout\ : std_logic;
SIGNAL \Switchright|LessThan0~2_combout\ : std_logic;
SIGNAL \Switchright|p_Debounce~0_combout\ : std_logic;
SIGNAL \Switchright|p_Debounce~1_combout\ : std_logic;
SIGNAL \Switchright|Add0~43\ : std_logic;
SIGNAL \Switchright|Add0~44_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[22]~4_combout\ : std_logic;
SIGNAL \Switchright|Add0~45\ : std_logic;
SIGNAL \Switchright|Add0~46_combout\ : std_logic;
SIGNAL \Switchright|r_Debounce_Count[23]~0_combout\ : std_logic;
SIGNAL \Switchright|Add0~47\ : std_logic;
SIGNAL \Switchright|Add0~48_combout\ : std_logic;
SIGNAL \Switchright|Add0~53_combout\ : std_logic;
SIGNAL \Switchright|Add0~49\ : std_logic;
SIGNAL \Switchright|Add0~50_combout\ : std_logic;
SIGNAL \Switchright|Add0~52_combout\ : std_logic;
SIGNAL \Switchright|r_Switch_State~5_combout\ : std_logic;
SIGNAL \Switchright|r_Switch_State~3_combout\ : std_logic;
SIGNAL \Switchright|r_Switch_State~4_combout\ : std_logic;
SIGNAL \Switchright|r_Switch_State~6_combout\ : std_logic;
SIGNAL \Switchright|r_Switch_State~7_combout\ : std_logic;
SIGNAL \Switchright|r_Switch_State~8_combout\ : std_logic;
SIGNAL \Switchright|r_Switch_State~q\ : std_logic;
SIGNAL \movement_ctrl_inst|push_button_right_prev~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|push_button_right_prev~q\ : std_logic;
SIGNAL \movement_ctrl_inst|update_stand_position~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~13\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~14_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~15\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~16_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~13\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~15\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~16_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~15\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~16_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~5_combout\ : std_logic;
SIGNAL \push_button_left~input_o\ : std_logic;
SIGNAL \Switchleft|Add0~0_combout\ : std_logic;
SIGNAL \Switchleft|p_Debounce~0_combout\ : std_logic;
SIGNAL \Switchleft|Add0~9\ : std_logic;
SIGNAL \Switchleft|Add0~10_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[5]~19_combout\ : std_logic;
SIGNAL \Switchleft|Add0~11\ : std_logic;
SIGNAL \Switchleft|Add0~12_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[6]~20_combout\ : std_logic;
SIGNAL \Switchleft|Add0~13\ : std_logic;
SIGNAL \Switchleft|Add0~14_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[7]~17_combout\ : std_logic;
SIGNAL \Switchleft|Add0~15\ : std_logic;
SIGNAL \Switchleft|Add0~16_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[8]~9_combout\ : std_logic;
SIGNAL \Switchleft|Add0~17\ : std_logic;
SIGNAL \Switchleft|Add0~18_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[9]~10_combout\ : std_logic;
SIGNAL \Switchleft|Add0~19\ : std_logic;
SIGNAL \Switchleft|Add0~20_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[10]~11_combout\ : std_logic;
SIGNAL \Switchleft|Add0~21\ : std_logic;
SIGNAL \Switchleft|Add0~22_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[11]~12_combout\ : std_logic;
SIGNAL \Switchleft|Add0~23\ : std_logic;
SIGNAL \Switchleft|Add0~24_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[12]~5_combout\ : std_logic;
SIGNAL \Switchleft|Add0~25\ : std_logic;
SIGNAL \Switchleft|Add0~26_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[13]~6_combout\ : std_logic;
SIGNAL \Switchleft|Add0~27\ : std_logic;
SIGNAL \Switchleft|Add0~28_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[14]~7_combout\ : std_logic;
SIGNAL \Switchleft|Add0~29\ : std_logic;
SIGNAL \Switchleft|Add0~30_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[15]~8_combout\ : std_logic;
SIGNAL \Switchleft|Add0~31\ : std_logic;
SIGNAL \Switchleft|Add0~32_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[16]~22_combout\ : std_logic;
SIGNAL \Switchleft|Add0~33\ : std_logic;
SIGNAL \Switchleft|Add0~34_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[17]~21_combout\ : std_logic;
SIGNAL \Switchleft|Add0~35\ : std_logic;
SIGNAL \Switchleft|Add0~36_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[18]~23_combout\ : std_logic;
SIGNAL \Switchleft|LessThan0~0_combout\ : std_logic;
SIGNAL \Switchleft|r_Switch_State~2_combout\ : std_logic;
SIGNAL \Switchleft|LessThan0~1_combout\ : std_logic;
SIGNAL \Switchleft|Add0~37\ : std_logic;
SIGNAL \Switchleft|Add0~38_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[19]~1_combout\ : std_logic;
SIGNAL \Switchleft|Add0~39\ : std_logic;
SIGNAL \Switchleft|Add0~40_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[20]~2_combout\ : std_logic;
SIGNAL \Switchleft|Add0~41\ : std_logic;
SIGNAL \Switchleft|Add0~42_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[21]~3_combout\ : std_logic;
SIGNAL \Switchleft|Add0~43\ : std_logic;
SIGNAL \Switchleft|Add0~44_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[22]~4_combout\ : std_logic;
SIGNAL \Switchleft|r_Switch_State~0_combout\ : std_logic;
SIGNAL \Switchleft|Add0~45\ : std_logic;
SIGNAL \Switchleft|Add0~46_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[23]~0_combout\ : std_logic;
SIGNAL \Switchleft|r_Switch_State~1_combout\ : std_logic;
SIGNAL \Switchleft|LessThan0~2_combout\ : std_logic;
SIGNAL \Switchleft|Add0~47\ : std_logic;
SIGNAL \Switchleft|Add0~48_combout\ : std_logic;
SIGNAL \Switchleft|Add0~53_combout\ : std_logic;
SIGNAL \Switchleft|Add0~49\ : std_logic;
SIGNAL \Switchleft|Add0~50_combout\ : std_logic;
SIGNAL \Switchleft|Add0~52_combout\ : std_logic;
SIGNAL \Switchleft|p_Debounce~1_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[0]~13_combout\ : std_logic;
SIGNAL \Switchleft|Add0~1\ : std_logic;
SIGNAL \Switchleft|Add0~2_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[1]~14_combout\ : std_logic;
SIGNAL \Switchleft|Add0~3\ : std_logic;
SIGNAL \Switchleft|Add0~4_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[2]~15_combout\ : std_logic;
SIGNAL \Switchleft|Add0~5\ : std_logic;
SIGNAL \Switchleft|Add0~6_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[3]~16_combout\ : std_logic;
SIGNAL \Switchleft|Add0~7\ : std_logic;
SIGNAL \Switchleft|Add0~8_combout\ : std_logic;
SIGNAL \Switchleft|r_Debounce_Count[4]~18_combout\ : std_logic;
SIGNAL \Switchleft|r_Switch_State~4_combout\ : std_logic;
SIGNAL \Switchleft|r_Switch_State~3_combout\ : std_logic;
SIGNAL \Switchleft|r_Switch_State~5_combout\ : std_logic;
SIGNAL \Switchleft|r_Switch_State~6_combout\ : std_logic;
SIGNAL \Switchleft|r_Switch_State~7_combout\ : std_logic;
SIGNAL \Switchleft|r_Switch_State~8_combout\ : std_logic;
SIGNAL \Switchleft|r_Switch_State~q\ : std_logic;
SIGNAL \movement_ctrl_inst|push_button_left_prev~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|push_button_left_prev~q\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand[9]~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~17\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~18_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~17\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~18_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~17\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~18_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~19\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~20_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~19\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~20_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~19\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~20_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~21\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~22_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~23\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~24_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~15_cout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~17_cout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~19_cout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~21_cout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~23_cout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~25_cout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~26_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~25\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~26_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~27\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~28_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~29\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~30_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~31\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~32_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~33\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~34_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~35\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~36_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~37\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~38_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~39\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~40_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~41\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~42_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~43\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~44_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~45\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~46_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~47\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~48_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~49\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~50_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~51\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~52_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~53\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~54_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~55\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~56_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand[9]~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~57\ : std_logic;
SIGNAL \movement_ctrl_inst|Add10~58_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand[9]~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~15_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~1\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~9_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~1\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~14_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~3\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~3\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~13_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~5\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~5\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~12_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~7\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~7\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~11_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~9\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~9\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~11\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~12_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~11\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~12_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~7_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~13\ : std_logic;
SIGNAL \movement_ctrl_inst|Add1~14_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add2~14_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_stand~6_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~1_cout\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~3\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~5\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~7\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~9\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~11\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~12_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add3|auto_generated|_~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add3|auto_generated|_~11_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[0]~13_cout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[0]~14_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add3|auto_generated|_~7_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add3|auto_generated|_~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add3|auto_generated|_~9_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[1]~17\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[2]~18_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[2]~19\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[3]~20_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[3]~21\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[4]~22_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add3|auto_generated|_~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[4]~23\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[5]~24_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add3|auto_generated|_~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add3|auto_generated|_~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add3|auto_generated|_~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[5]~25\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[6]~27\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[7]~28_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[7]~29\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[8]~30_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[8]~31\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[9]~32_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball~38_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add3|auto_generated|_~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[9]~33\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[10]~34_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball~39_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[4]~40_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[4]~41_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[0]~15\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[1]~16_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan3~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan3~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball_dir~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball_dir~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball_dir~q\ : std_logic;
SIGNAL \movement_ctrl_inst|Add3|auto_generated|_~5_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[6]~26_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~4_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan8~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan8~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan8~4_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan8~9_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan8~10_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan8~7_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~13\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~15\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~17\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~18_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~16_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~14_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan8~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan8~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan8~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan7~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan7~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan7~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan7~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan7~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan7~5_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan7~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan7~7_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan7~9_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|update_ball_position~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|update_ball_position~7_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|update_ball_position~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|_~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|_~7_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|_~9_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|_~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|_~11_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball~12_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball~11_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball~9_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball~7_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan6~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan6~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|update_ball_position~5_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan8~5_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~19\ : std_logic;
SIGNAL \affiche_obj_inst|Add2~20_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan8~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|update_ball_position~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[0]~33\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[1]~34_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[1]~35\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[2]~36_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[2]~37\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[3]~38_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[3]~39\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[4]~40_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[4]~41\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[5]~42_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[5]~43\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[6]~44_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[6]~45\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[7]~46_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[7]~47\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[8]~48_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[8]~49\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[9]~50_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[9]~51\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[10]~52_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[10]~53\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[11]~54_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[11]~55\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[12]~56_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[12]~57\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[13]~58_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[13]~59\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[14]~60_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[14]~61\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[15]~62_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[15]~63\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[16]~64_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[16]~65\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[17]~66_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[17]~67\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[18]~68_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[18]~69\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[19]~70_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[19]~71\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[20]~72_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[20]~73\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[21]~74_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[21]~75\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[22]~76_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[22]~77\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[23]~78_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[23]~79\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[24]~80_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[24]~81\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[25]~82_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[25]~83\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[26]~84_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[26]~85\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[27]~86_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[27]~87\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[28]~88_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[28]~89\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[29]~90_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[29]~91\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[30]~92_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[30]~93\ : std_logic;
SIGNAL \movement_ctrl_inst|bouncing_counter[31]~94_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal2~9_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal2~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal2~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal2~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal2~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal2~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal2~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal2~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal2~5_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal2~7_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Equal2~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~12_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~1\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~11_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~3\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~5\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~9_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|_~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball~8_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan9~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~9\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~10_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~7_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~11\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~12_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|_~5_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball[6]~6_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|_~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball[9]~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan5~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan5~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan5~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball_dir~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball_dir~q\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|_~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball[7]~5_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|update_ball_position~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~13\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~14_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~5_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~15\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~17\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~18_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~19\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~20_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|_~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball[10]~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball[0]~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|_~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball[11]~1_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan9~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~16_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|_~3_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add5|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|y_ball[8]~4_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|LessThan9~2_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add11~22_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|increment~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|Add3|auto_generated|_~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[10]~35\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball[11]~36_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~1\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~3\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~5\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~7\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~9\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~11\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~13\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~15\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~16_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~1\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~3\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~5\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~7\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~9\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~11\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~13\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~15\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~16_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal0~9_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal0~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector3~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal2~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector5~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|etat.Sync~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal3~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector6~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|etat.bp~q\ : std_logic;
SIGNAL \Switch1|Add0~0_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[0]~13_combout\ : std_logic;
SIGNAL \Switch1|Add0~1\ : std_logic;
SIGNAL \Switch1|Add0~2_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[1]~14_combout\ : std_logic;
SIGNAL \Switch1|Add0~3\ : std_logic;
SIGNAL \Switch1|Add0~4_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[2]~15_combout\ : std_logic;
SIGNAL \Switch1|Add0~5\ : std_logic;
SIGNAL \Switch1|Add0~6_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[3]~16_combout\ : std_logic;
SIGNAL \Switch1|Add0~7\ : std_logic;
SIGNAL \Switch1|Add0~8_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[4]~18_combout\ : std_logic;
SIGNAL \Switch1|Add0~9\ : std_logic;
SIGNAL \Switch1|Add0~10_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[5]~19_combout\ : std_logic;
SIGNAL \Switch1|Add0~11\ : std_logic;
SIGNAL \Switch1|Add0~12_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[6]~20_combout\ : std_logic;
SIGNAL \Switch1|Add0~13\ : std_logic;
SIGNAL \Switch1|Add0~14_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[7]~17_combout\ : std_logic;
SIGNAL \Switch1|Add0~15\ : std_logic;
SIGNAL \Switch1|Add0~16_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[8]~9_combout\ : std_logic;
SIGNAL \Switch1|Add0~17\ : std_logic;
SIGNAL \Switch1|Add0~18_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[9]~10_combout\ : std_logic;
SIGNAL \Switch1|Add0~19\ : std_logic;
SIGNAL \Switch1|Add0~20_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[10]~11_combout\ : std_logic;
SIGNAL \Switch1|Add0~21\ : std_logic;
SIGNAL \Switch1|Add0~22_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[11]~12_combout\ : std_logic;
SIGNAL \Switch1|Add0~23\ : std_logic;
SIGNAL \Switch1|Add0~25\ : std_logic;
SIGNAL \Switch1|Add0~26_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[13]~6_combout\ : std_logic;
SIGNAL \Switch1|Add0~27\ : std_logic;
SIGNAL \Switch1|Add0~28_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[14]~7_combout\ : std_logic;
SIGNAL \Switch1|Add0~29\ : std_logic;
SIGNAL \Switch1|Add0~30_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[15]~8_combout\ : std_logic;
SIGNAL \Switch1|Add0~31\ : std_logic;
SIGNAL \Switch1|Add0~32_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[16]~22_combout\ : std_logic;
SIGNAL \Switch1|Add0~33\ : std_logic;
SIGNAL \Switch1|Add0~34_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[17]~21_combout\ : std_logic;
SIGNAL \Switch1|Add0~35\ : std_logic;
SIGNAL \Switch1|Add0~36_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[18]~23_combout\ : std_logic;
SIGNAL \Switch1|Add0~37\ : std_logic;
SIGNAL \Switch1|Add0~38_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[19]~1_combout\ : std_logic;
SIGNAL \Switch1|Add0~39\ : std_logic;
SIGNAL \Switch1|Add0~40_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[20]~2_combout\ : std_logic;
SIGNAL \Switch1|Add0~41\ : std_logic;
SIGNAL \Switch1|Add0~42_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[21]~3_combout\ : std_logic;
SIGNAL \Switch1|Add0~43\ : std_logic;
SIGNAL \Switch1|Add0~44_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[22]~4_combout\ : std_logic;
SIGNAL \Switch1|r_Switch_State~0_combout\ : std_logic;
SIGNAL \Switch1|Add0~45\ : std_logic;
SIGNAL \Switch1|Add0~46_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[23]~0_combout\ : std_logic;
SIGNAL \Switch1|r_Switch_State~1_combout\ : std_logic;
SIGNAL \Switch1|LessThan0~0_combout\ : std_logic;
SIGNAL \Switch1|LessThan0~1_combout\ : std_logic;
SIGNAL \Switch1|LessThan0~2_combout\ : std_logic;
SIGNAL \Switch1|Add0~47\ : std_logic;
SIGNAL \Switch1|Add0~48_combout\ : std_logic;
SIGNAL \Switch1|Add0~53_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Switch1|p_Debounce~0_combout\ : std_logic;
SIGNAL \Switch1|Add0~49\ : std_logic;
SIGNAL \Switch1|Add0~50_combout\ : std_logic;
SIGNAL \Switch1|Add0~52_combout\ : std_logic;
SIGNAL \Switch1|p_Debounce~1_combout\ : std_logic;
SIGNAL \Switch1|Add0~24_combout\ : std_logic;
SIGNAL \Switch1|r_Debounce_Count[12]~5_combout\ : std_logic;
SIGNAL \Switch1|r_Switch_State~2_combout\ : std_logic;
SIGNAL \Switch1|r_Switch_State~3_combout\ : std_logic;
SIGNAL \Switch1|r_Switch_State~5_combout\ : std_logic;
SIGNAL \Switch1|r_Switch_State~4_combout\ : std_logic;
SIGNAL \Switch1|r_Switch_State~6_combout\ : std_logic;
SIGNAL \Switch1|r_Switch_State~7_combout\ : std_logic;
SIGNAL \Switch1|r_Switch_State~8_combout\ : std_logic;
SIGNAL \Switch1|r_Switch_State~feeder_combout\ : std_logic;
SIGNAL \Switch1|r_Switch_State~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector2~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector2~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|etat.init~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector3~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|etat.display~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector4~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|etat.fp~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector0~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector0~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector0~3_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector0~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector0~5_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector0~combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~3_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[0]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~1\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[1]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~3\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[2]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~5\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[3]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~7\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~28_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~9\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~31_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~11\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~12_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~29_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~13\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~14_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[7]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~15\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~16_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~5_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[8]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~17\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~18_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~30_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~19\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~20_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[10]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~21\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~23\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~24_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[12]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~25\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~26_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~9_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[13]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~27\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~28_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[14]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~29\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~30_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~11_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[15]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal0~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~31\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~32_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~12_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[16]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~33\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~34_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~13_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[17]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~35\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~36_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~14_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~37\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~38_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~15_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[19]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal0~3_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal0~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal0~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal0~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~39\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~40_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~16_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[20]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~41\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~42_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~17_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[21]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~43\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~44_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~18_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[22]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~45\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~46_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~19_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[23]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal0~5_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~47\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~48_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~20_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[24]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~49\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~50_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~21_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[25]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~51\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~52_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~22_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[26]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~53\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~54_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~23_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[27]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal0~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~55\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~56_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~25_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[28]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~57\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~58_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~26_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[29]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~59\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~60_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~27_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[30]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~61\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~62_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~24_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[31]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal0~7_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal0~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal1~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Equal1~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector1~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector0~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector1~combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|cmp~7_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|counter_process:cmp[11]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Add0~22_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|Selector3~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|x~0_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~14_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|x~1_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~12_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|x~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|x~3_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|x~4_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|x~5_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|x~6_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|x~7_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add0~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|x~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|x~9_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|x~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|x~11_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan1~1_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan1~3_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan1~5_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan1~7_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan1~9_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan1~11_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan1~13_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan1~15_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan1~17_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan1~19_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan1~21_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan1~22_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~14_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~17\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~18_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~5_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~19\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~20_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~21\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~23\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~24_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[12]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~25\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~26_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~9_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[13]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~27\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~28_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[14]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~29\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~30_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~11_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[15]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~31\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~32_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~12_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[16]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~33\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~34_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~13_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[17]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~35\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~36_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~14_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[18]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~37\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~38_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~15_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[19]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~39\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~40_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~16_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~41\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~42_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~17_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[21]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~43\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~44_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~18_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[22]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~45\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~46_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~19_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[23]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~47\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~48_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~20_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[24]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~49\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~50_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~21_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[25]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~51\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~52_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~22_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[26]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~53\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~54_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~24_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[27]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~55\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~56_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~25_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[28]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~57\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~58_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~26_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[29]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~59\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~60_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~27_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[30]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~61\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~62_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~23_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[31]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal0~5_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal0~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal0~3_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal0~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~32_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~1\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~28_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~3\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~3_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal0~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal0~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal0~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal0~7_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~5\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal2~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal1~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal1~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal1~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector5~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|etat.sync~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector6~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|etat.bp~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector2~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector2~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|etat.init~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal0~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector3~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector3~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|etat.display~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal0~9_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal3~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector4~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|etat.fp~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector0~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector0~3_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector1~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector0~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector1~combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~7\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~9\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~33_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~11\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~12_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~29_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~13\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~14_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~30_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~15\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~16_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~31_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal2~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Equal2~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector0~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector0~combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~34_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|cmp~7_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]~q\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Add0~22_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|Selector3~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|y~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|y~1_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~12_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|y~2_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|y~3_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|y~4_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|y~5_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|y~6_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~2_combout\ : std_logic;
SIGNAL \affiche_obj_inst|Add1~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|y~7_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|y~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|y~9_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|y~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|y~11_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan3~1_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan3~3_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan3~5_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan3~7_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan3~9_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan3~11_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan3~13_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan3~15_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan3~17_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan3~19_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan3~21_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan3~22_combout\ : std_logic;
SIGNAL \affiche_obj_inst|process_0~0_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan2~1_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan2~3_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan2~5_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan2~7_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan2~9_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan2~11_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan2~13_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan2~15_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan2~17_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan2~19_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan2~21_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan2~22_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan0~15_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan0~17_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan0~19_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan0~21_cout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan0~22_combout\ : std_logic;
SIGNAL \affiche_obj_inst|process_0~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|display_en~combout\ : std_logic;
SIGNAL \vga_ctrl_inst|display_en~clkctrl_outclk\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan4~0_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan4~1_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan4~2_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan4~3_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan4~4_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan4~5_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan4~6_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan5~5_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan5~0_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan5~1_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan5~2_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan5~3_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan5~7_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan5~8_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan5~4_combout\ : std_logic;
SIGNAL \affiche_obj_inst|process_0~8_combout\ : std_logic;
SIGNAL \affiche_obj_inst|process_0~9_combout\ : std_logic;
SIGNAL \affiche_obj_inst|process_0~6_combout\ : std_logic;
SIGNAL \affiche_obj_inst|process_0~3_combout\ : std_logic;
SIGNAL \affiche_obj_inst|process_0~2_combout\ : std_logic;
SIGNAL \affiche_obj_inst|process_0~4_combout\ : std_logic;
SIGNAL \affiche_obj_inst|process_0~5_combout\ : std_logic;
SIGNAL \affiche_obj_inst|process_0~7_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan5~6_combout\ : std_logic;
SIGNAL \affiche_obj_inst|process_0~10_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan4~7_combout\ : std_logic;
SIGNAL \affiche_obj_inst|LessThan4~8_combout\ : std_logic;
SIGNAL \affiche_obj_inst|G~0_combout\ : std_logic;
SIGNAL \movement_ctrl_inst|x_ball\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \movement_ctrl_inst|increment\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \affiche_obj_inst|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \movement_ctrl_inst|bouncing_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \vga_ctrl_inst|vsync_inst|y\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_ctrl_inst|hsync_inst|x\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \movement_ctrl_inst|y_ball\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \movement_ctrl_inst|x_stand\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \affiche_obj_inst|G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \movement_ctrl_inst|STAND_SPEED\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Switch2|r_Debounce_Count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \movement_ctrl_inst|clk_divider\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Switch1|r_Debounce_Count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Switchright|r_Debounce_Count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Switchleft|r_Debounce_Count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\ : std_logic;
SIGNAL \vga_ctrl_inst|vsync_inst|ALT_INV_etat.sync~q\ : std_logic;
SIGNAL \vga_ctrl_inst|hsync_inst|ALT_INV_etat.Sync~q\ : std_logic;

BEGIN

ww_clk_50 <= clk_50;
ww_start <= start;
ww_reset <= reset;
ww_push_button_left <= push_button_left;
ww_push_button_right <= push_button_right;
R <= ww_R;
G <= ww_G;
B <= ww_B;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL_frequency|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk_50~input_o\);

\PLL_frequency|altpll_component|auto_generated|wire_pll1_clk\(0) <= \PLL_frequency|altpll_component|auto_generated|pll1_CLK_bus\(0);
\PLL_frequency|altpll_component|auto_generated|wire_pll1_clk\(1) <= \PLL_frequency|altpll_component|auto_generated|pll1_CLK_bus\(1);
\PLL_frequency|altpll_component|auto_generated|wire_pll1_clk\(2) <= \PLL_frequency|altpll_component|auto_generated|pll1_CLK_bus\(2);
\PLL_frequency|altpll_component|auto_generated|wire_pll1_clk\(3) <= \PLL_frequency|altpll_component|auto_generated|pll1_CLK_bus\(3);
\PLL_frequency|altpll_component|auto_generated|wire_pll1_clk\(4) <= \PLL_frequency|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Switch2|r_Switch_State~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Switch2|r_Switch_State~q\);

\vga_ctrl_inst|display_en~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vga_ctrl_inst|display_en~combout\);

\movement_ctrl_inst|slow_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \movement_ctrl_inst|slow_clk~q\);

\PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\ <= NOT \Switch2|r_Switch_State~clkctrl_outclk\;
\vga_ctrl_inst|vsync_inst|ALT_INV_etat.sync~q\ <= NOT \vga_ctrl_inst|vsync_inst|etat.sync~q\;
\vga_ctrl_inst|hsync_inst|ALT_INV_etat.Sync~q\ <= NOT \vga_ctrl_inst|hsync_inst|etat.Sync~q\;

-- Location: IOOBUF_X18_Y0_N30
\R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \affiche_obj_inst|R\(0),
	devoe => ww_devoe,
	o => ww_R(0));

-- Location: IOOBUF_X0_Y12_N9
\R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \affiche_obj_inst|R\(0),
	devoe => ww_devoe,
	o => ww_R(1));

-- Location: IOOBUF_X16_Y0_N16
\R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \affiche_obj_inst|R\(0),
	devoe => ww_devoe,
	o => ww_R(2));

-- Location: IOOBUF_X16_Y0_N23
\R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \affiche_obj_inst|R\(0),
	devoe => ww_devoe,
	o => ww_R(3));

-- Location: IOOBUF_X0_Y9_N2
\G[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \affiche_obj_inst|G\(0),
	devoe => ww_devoe,
	o => ww_G(0));

-- Location: IOOBUF_X0_Y15_N9
\G[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \affiche_obj_inst|G\(0),
	devoe => ww_devoe,
	o => ww_G(1));

-- Location: IOOBUF_X0_Y3_N9
\G[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \affiche_obj_inst|G\(0),
	devoe => ww_devoe,
	o => ww_G(2));

-- Location: IOOBUF_X0_Y3_N2
\G[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \affiche_obj_inst|G\(0),
	devoe => ww_devoe,
	o => ww_G(3));

-- Location: IOOBUF_X0_Y13_N2
\B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \affiche_obj_inst|R\(0),
	devoe => ww_devoe,
	o => ww_B(0));

-- Location: IOOBUF_X0_Y15_N2
\B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \affiche_obj_inst|R\(0),
	devoe => ww_devoe,
	o => ww_B(1));

-- Location: IOOBUF_X0_Y23_N2
\B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \affiche_obj_inst|R\(0),
	devoe => ww_devoe,
	o => ww_B(2));

-- Location: IOOBUF_X0_Y18_N9
\B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \affiche_obj_inst|R\(0),
	devoe => ww_devoe,
	o => ww_B(3));

-- Location: IOOBUF_X0_Y18_N2
\h_sync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_ctrl_inst|hsync_inst|ALT_INV_etat.Sync~q\,
	devoe => ww_devoe,
	o => ww_h_sync);

-- Location: IOOBUF_X0_Y13_N9
\v_sync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_ctrl_inst|vsync_inst|ALT_INV_etat.sync~q\,
	devoe => ww_devoe,
	o => ww_v_sync);

-- Location: IOIBUF_X34_Y0_N29
\clk_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: PLL_1
\PLL_frequency|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 13,
	c0_initial => 1,
	c0_low => 12,
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
	clk0_divide_by => 125,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 63,
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
	m => 63,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 198,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \PLL_frequency|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \PLL_frequency|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \PLL_frequency|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \PLL_frequency|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X77_Y44_N0
\movement_ctrl_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~0_combout\ = \movement_ctrl_inst|clk_divider\(0) $ (VCC)
-- \movement_ctrl_inst|Add0~1\ = CARRY(\movement_ctrl_inst|clk_divider\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(0),
	datad => VCC,
	combout => \movement_ctrl_inst|Add0~0_combout\,
	cout => \movement_ctrl_inst|Add0~1\);

-- Location: CLKCTRL_G19
\clk_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X44_Y48_N14
\Switch2|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~40_combout\ = (\Switch2|r_Debounce_Count\(20) & (\Switch2|Add0~39\ $ (GND))) # (!\Switch2|r_Debounce_Count\(20) & (!\Switch2|Add0~39\ & VCC))
-- \Switch2|Add0~41\ = CARRY((\Switch2|r_Debounce_Count\(20) & !\Switch2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(20),
	datad => VCC,
	cin => \Switch2|Add0~39\,
	combout => \Switch2|Add0~40_combout\,
	cout => \Switch2|Add0~41\);

-- Location: LCCOMB_X44_Y48_N16
\Switch2|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~42_combout\ = (\Switch2|r_Debounce_Count\(21) & (!\Switch2|Add0~41\)) # (!\Switch2|r_Debounce_Count\(21) & ((\Switch2|Add0~41\) # (GND)))
-- \Switch2|Add0~43\ = CARRY((!\Switch2|Add0~41\) # (!\Switch2|r_Debounce_Count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(21),
	datad => VCC,
	cin => \Switch2|Add0~41\,
	combout => \Switch2|Add0~42_combout\,
	cout => \Switch2|Add0~43\);

-- Location: LCCOMB_X44_Y48_N28
\Switch2|r_Debounce_Count[21]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[21]~3_combout\ = (\Switch2|r_Switch_State~7_combout\ & (((\Switch2|r_Debounce_Count\(21))))) # (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|Add0~42_combout\ & ((\Switch2|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Switch_State~7_combout\,
	datab => \Switch2|Add0~42_combout\,
	datac => \Switch2|r_Debounce_Count\(21),
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[21]~3_combout\);

-- Location: FF_X44_Y48_N29
\Switch2|r_Debounce_Count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(21));

-- Location: LCCOMB_X44_Y48_N18
\Switch2|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~44_combout\ = (\Switch2|r_Debounce_Count\(22) & (\Switch2|Add0~43\ $ (GND))) # (!\Switch2|r_Debounce_Count\(22) & (!\Switch2|Add0~43\ & VCC))
-- \Switch2|Add0~45\ = CARRY((\Switch2|r_Debounce_Count\(22) & !\Switch2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(22),
	datad => VCC,
	cin => \Switch2|Add0~43\,
	combout => \Switch2|Add0~44_combout\,
	cout => \Switch2|Add0~45\);

-- Location: LCCOMB_X45_Y49_N26
\Switch2|r_Debounce_Count[22]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[22]~4_combout\ = (\Switch2|r_Switch_State~7_combout\ & (((\Switch2|r_Debounce_Count\(22))))) # (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|Add0~44_combout\ & ((\Switch2|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Switch_State~7_combout\,
	datab => \Switch2|Add0~44_combout\,
	datac => \Switch2|r_Debounce_Count\(22),
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[22]~4_combout\);

-- Location: FF_X45_Y49_N27
\Switch2|r_Debounce_Count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(22));

-- Location: LCCOMB_X44_Y48_N20
\Switch2|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~46_combout\ = (\Switch2|r_Debounce_Count\(23) & (!\Switch2|Add0~45\)) # (!\Switch2|r_Debounce_Count\(23) & ((\Switch2|Add0~45\) # (GND)))
-- \Switch2|Add0~47\ = CARRY((!\Switch2|Add0~45\) # (!\Switch2|r_Debounce_Count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(23),
	datad => VCC,
	cin => \Switch2|Add0~45\,
	combout => \Switch2|Add0~46_combout\,
	cout => \Switch2|Add0~47\);

-- Location: LCCOMB_X45_Y48_N24
\Switch2|r_Debounce_Count[23]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[23]~0_combout\ = (\Switch2|r_Switch_State~7_combout\ & (((\Switch2|r_Debounce_Count\(23))))) # (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|Add0~46_combout\ & ((\Switch2|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Switch_State~7_combout\,
	datab => \Switch2|Add0~46_combout\,
	datac => \Switch2|r_Debounce_Count\(23),
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[23]~0_combout\);

-- Location: FF_X45_Y48_N25
\Switch2|r_Debounce_Count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(23));

-- Location: LCCOMB_X44_Y48_N22
\Switch2|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~48_combout\ = (\Switch2|r_Debounce_Count\(24) & (\Switch2|Add0~47\ $ (GND))) # (!\Switch2|r_Debounce_Count\(24) & (!\Switch2|Add0~47\ & VCC))
-- \Switch2|Add0~49\ = CARRY((\Switch2|r_Debounce_Count\(24) & !\Switch2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(24),
	datad => VCC,
	cin => \Switch2|Add0~47\,
	combout => \Switch2|Add0~48_combout\,
	cout => \Switch2|Add0~49\);

-- Location: LCCOMB_X45_Y48_N30
\Switch2|Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~53_combout\ = (\Switch2|Add0~48_combout\ & \Switch2|p_Debounce~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch2|Add0~48_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|Add0~53_combout\);

-- Location: FF_X45_Y48_N31
\Switch2|r_Debounce_Count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(24));

-- Location: LCCOMB_X44_Y49_N6
\Switch2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~0_combout\ = \Switch2|r_Debounce_Count\(0) $ (VCC)
-- \Switch2|Add0~1\ = CARRY(\Switch2|r_Debounce_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(0),
	datad => VCC,
	combout => \Switch2|Add0~0_combout\,
	cout => \Switch2|Add0~1\);

-- Location: LCCOMB_X44_Y49_N0
\Switch2|r_Debounce_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[0]~13_combout\ = (\Switch2|Add0~0_combout\ & (\Switch2|p_Debounce~1_combout\ & !\Switch2|r_Switch_State~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|Add0~0_combout\,
	datab => \Switch2|p_Debounce~1_combout\,
	datac => \Switch2|r_Switch_State~7_combout\,
	combout => \Switch2|r_Debounce_Count[0]~13_combout\);

-- Location: FF_X44_Y49_N1
\Switch2|r_Debounce_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(0));

-- Location: LCCOMB_X44_Y49_N8
\Switch2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~2_combout\ = (\Switch2|r_Debounce_Count\(1) & (!\Switch2|Add0~1\)) # (!\Switch2|r_Debounce_Count\(1) & ((\Switch2|Add0~1\) # (GND)))
-- \Switch2|Add0~3\ = CARRY((!\Switch2|Add0~1\) # (!\Switch2|r_Debounce_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(1),
	datad => VCC,
	cin => \Switch2|Add0~1\,
	combout => \Switch2|Add0~2_combout\,
	cout => \Switch2|Add0~3\);

-- Location: LCCOMB_X44_Y49_N2
\Switch2|r_Debounce_Count[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[1]~14_combout\ = (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|p_Debounce~1_combout\ & \Switch2|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Switch_State~7_combout\,
	datac => \Switch2|p_Debounce~1_combout\,
	datad => \Switch2|Add0~2_combout\,
	combout => \Switch2|r_Debounce_Count[1]~14_combout\);

-- Location: FF_X44_Y49_N3
\Switch2|r_Debounce_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(1));

-- Location: LCCOMB_X44_Y49_N10
\Switch2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~4_combout\ = (\Switch2|r_Debounce_Count\(2) & (\Switch2|Add0~3\ $ (GND))) # (!\Switch2|r_Debounce_Count\(2) & (!\Switch2|Add0~3\ & VCC))
-- \Switch2|Add0~5\ = CARRY((\Switch2|r_Debounce_Count\(2) & !\Switch2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(2),
	datad => VCC,
	cin => \Switch2|Add0~3\,
	combout => \Switch2|Add0~4_combout\,
	cout => \Switch2|Add0~5\);

-- Location: LCCOMB_X45_Y49_N4
\Switch2|r_Debounce_Count[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[2]~15_combout\ = (\Switch2|Add0~4_combout\ & (!\Switch2|r_Switch_State~7_combout\ & \Switch2|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|Add0~4_combout\,
	datac => \Switch2|r_Switch_State~7_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[2]~15_combout\);

-- Location: FF_X45_Y49_N5
\Switch2|r_Debounce_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(2));

-- Location: LCCOMB_X44_Y49_N12
\Switch2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~6_combout\ = (\Switch2|r_Debounce_Count\(3) & (!\Switch2|Add0~5\)) # (!\Switch2|r_Debounce_Count\(3) & ((\Switch2|Add0~5\) # (GND)))
-- \Switch2|Add0~7\ = CARRY((!\Switch2|Add0~5\) # (!\Switch2|r_Debounce_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(3),
	datad => VCC,
	cin => \Switch2|Add0~5\,
	combout => \Switch2|Add0~6_combout\,
	cout => \Switch2|Add0~7\);

-- Location: LCCOMB_X45_Y49_N6
\Switch2|r_Debounce_Count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[3]~16_combout\ = (\Switch2|Add0~6_combout\ & (!\Switch2|r_Switch_State~7_combout\ & \Switch2|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|Add0~6_combout\,
	datac => \Switch2|r_Switch_State~7_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[3]~16_combout\);

-- Location: FF_X45_Y49_N7
\Switch2|r_Debounce_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(3));

-- Location: LCCOMB_X44_Y49_N14
\Switch2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~8_combout\ = (\Switch2|r_Debounce_Count\(4) & (\Switch2|Add0~7\ $ (GND))) # (!\Switch2|r_Debounce_Count\(4) & (!\Switch2|Add0~7\ & VCC))
-- \Switch2|Add0~9\ = CARRY((\Switch2|r_Debounce_Count\(4) & !\Switch2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(4),
	datad => VCC,
	cin => \Switch2|Add0~7\,
	combout => \Switch2|Add0~8_combout\,
	cout => \Switch2|Add0~9\);

-- Location: LCCOMB_X45_Y48_N22
\Switch2|r_Debounce_Count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[4]~18_combout\ = (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|Add0~8_combout\ & \Switch2|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Switch_State~7_combout\,
	datab => \Switch2|Add0~8_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[4]~18_combout\);

-- Location: FF_X45_Y48_N23
\Switch2|r_Debounce_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(4));

-- Location: LCCOMB_X44_Y49_N16
\Switch2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~10_combout\ = (\Switch2|r_Debounce_Count\(5) & (!\Switch2|Add0~9\)) # (!\Switch2|r_Debounce_Count\(5) & ((\Switch2|Add0~9\) # (GND)))
-- \Switch2|Add0~11\ = CARRY((!\Switch2|Add0~9\) # (!\Switch2|r_Debounce_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(5),
	datad => VCC,
	cin => \Switch2|Add0~9\,
	combout => \Switch2|Add0~10_combout\,
	cout => \Switch2|Add0~11\);

-- Location: LCCOMB_X45_Y48_N12
\Switch2|r_Debounce_Count[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[5]~19_combout\ = (\Switch2|Add0~10_combout\ & (!\Switch2|r_Switch_State~7_combout\ & \Switch2|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|Add0~10_combout\,
	datac => \Switch2|r_Switch_State~7_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[5]~19_combout\);

-- Location: FF_X45_Y48_N13
\Switch2|r_Debounce_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(5));

-- Location: LCCOMB_X44_Y49_N18
\Switch2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~12_combout\ = (\Switch2|r_Debounce_Count\(6) & (\Switch2|Add0~11\ $ (GND))) # (!\Switch2|r_Debounce_Count\(6) & (!\Switch2|Add0~11\ & VCC))
-- \Switch2|Add0~13\ = CARRY((\Switch2|r_Debounce_Count\(6) & !\Switch2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(6),
	datad => VCC,
	cin => \Switch2|Add0~11\,
	combout => \Switch2|Add0~12_combout\,
	cout => \Switch2|Add0~13\);

-- Location: LCCOMB_X45_Y49_N20
\Switch2|r_Debounce_Count[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[6]~20_combout\ = (\Switch2|Add0~12_combout\ & (!\Switch2|r_Switch_State~7_combout\ & \Switch2|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|Add0~12_combout\,
	datac => \Switch2|r_Switch_State~7_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[6]~20_combout\);

-- Location: FF_X45_Y49_N21
\Switch2|r_Debounce_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(6));

-- Location: LCCOMB_X44_Y49_N20
\Switch2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~14_combout\ = (\Switch2|r_Debounce_Count\(7) & (!\Switch2|Add0~13\)) # (!\Switch2|r_Debounce_Count\(7) & ((\Switch2|Add0~13\) # (GND)))
-- \Switch2|Add0~15\ = CARRY((!\Switch2|Add0~13\) # (!\Switch2|r_Debounce_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(7),
	datad => VCC,
	cin => \Switch2|Add0~13\,
	combout => \Switch2|Add0~14_combout\,
	cout => \Switch2|Add0~15\);

-- Location: LCCOMB_X45_Y48_N16
\Switch2|r_Debounce_Count[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[7]~17_combout\ = (\Switch2|r_Switch_State~7_combout\ & (((\Switch2|r_Debounce_Count\(7))))) # (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|Add0~14_combout\ & ((\Switch2|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Switch_State~7_combout\,
	datab => \Switch2|Add0~14_combout\,
	datac => \Switch2|r_Debounce_Count\(7),
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[7]~17_combout\);

-- Location: FF_X45_Y48_N17
\Switch2|r_Debounce_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(7));

-- Location: LCCOMB_X44_Y49_N22
\Switch2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~16_combout\ = (\Switch2|r_Debounce_Count\(8) & (\Switch2|Add0~15\ $ (GND))) # (!\Switch2|r_Debounce_Count\(8) & (!\Switch2|Add0~15\ & VCC))
-- \Switch2|Add0~17\ = CARRY((\Switch2|r_Debounce_Count\(8) & !\Switch2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(8),
	datad => VCC,
	cin => \Switch2|Add0~15\,
	combout => \Switch2|Add0~16_combout\,
	cout => \Switch2|Add0~17\);

-- Location: LCCOMB_X45_Y49_N2
\Switch2|r_Debounce_Count[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[8]~9_combout\ = (\Switch2|Add0~16_combout\ & (!\Switch2|r_Switch_State~7_combout\ & \Switch2|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|Add0~16_combout\,
	datac => \Switch2|r_Switch_State~7_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[8]~9_combout\);

-- Location: FF_X45_Y49_N3
\Switch2|r_Debounce_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(8));

-- Location: LCCOMB_X44_Y49_N24
\Switch2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~18_combout\ = (\Switch2|r_Debounce_Count\(9) & (!\Switch2|Add0~17\)) # (!\Switch2|r_Debounce_Count\(9) & ((\Switch2|Add0~17\) # (GND)))
-- \Switch2|Add0~19\ = CARRY((!\Switch2|Add0~17\) # (!\Switch2|r_Debounce_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(9),
	datad => VCC,
	cin => \Switch2|Add0~17\,
	combout => \Switch2|Add0~18_combout\,
	cout => \Switch2|Add0~19\);

-- Location: LCCOMB_X45_Y49_N0
\Switch2|r_Debounce_Count[9]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[9]~10_combout\ = (\Switch2|Add0~18_combout\ & (!\Switch2|r_Switch_State~7_combout\ & \Switch2|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|Add0~18_combout\,
	datac => \Switch2|r_Switch_State~7_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[9]~10_combout\);

-- Location: FF_X45_Y49_N1
\Switch2|r_Debounce_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(9));

-- Location: LCCOMB_X44_Y49_N26
\Switch2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~20_combout\ = (\Switch2|r_Debounce_Count\(10) & (\Switch2|Add0~19\ $ (GND))) # (!\Switch2|r_Debounce_Count\(10) & (!\Switch2|Add0~19\ & VCC))
-- \Switch2|Add0~21\ = CARRY((\Switch2|r_Debounce_Count\(10) & !\Switch2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(10),
	datad => VCC,
	cin => \Switch2|Add0~19\,
	combout => \Switch2|Add0~20_combout\,
	cout => \Switch2|Add0~21\);

-- Location: LCCOMB_X45_Y49_N18
\Switch2|r_Debounce_Count[10]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[10]~11_combout\ = (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|Add0~20_combout\ & \Switch2|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Switch_State~7_combout\,
	datac => \Switch2|Add0~20_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[10]~11_combout\);

-- Location: FF_X45_Y49_N19
\Switch2|r_Debounce_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(10));

-- Location: LCCOMB_X44_Y49_N28
\Switch2|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~22_combout\ = (\Switch2|r_Debounce_Count\(11) & (!\Switch2|Add0~21\)) # (!\Switch2|r_Debounce_Count\(11) & ((\Switch2|Add0~21\) # (GND)))
-- \Switch2|Add0~23\ = CARRY((!\Switch2|Add0~21\) # (!\Switch2|r_Debounce_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(11),
	datad => VCC,
	cin => \Switch2|Add0~21\,
	combout => \Switch2|Add0~22_combout\,
	cout => \Switch2|Add0~23\);

-- Location: LCCOMB_X45_Y49_N16
\Switch2|r_Debounce_Count[11]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[11]~12_combout\ = (\Switch2|Add0~22_combout\ & (!\Switch2|r_Switch_State~7_combout\ & \Switch2|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|Add0~22_combout\,
	datac => \Switch2|r_Switch_State~7_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[11]~12_combout\);

-- Location: FF_X45_Y49_N17
\Switch2|r_Debounce_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(11));

-- Location: LCCOMB_X44_Y49_N30
\Switch2|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~24_combout\ = (\Switch2|r_Debounce_Count\(12) & (\Switch2|Add0~23\ $ (GND))) # (!\Switch2|r_Debounce_Count\(12) & (!\Switch2|Add0~23\ & VCC))
-- \Switch2|Add0~25\ = CARRY((\Switch2|r_Debounce_Count\(12) & !\Switch2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(12),
	datad => VCC,
	cin => \Switch2|Add0~23\,
	combout => \Switch2|Add0~24_combout\,
	cout => \Switch2|Add0~25\);

-- Location: LCCOMB_X45_Y49_N28
\Switch2|r_Debounce_Count[12]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[12]~5_combout\ = (\Switch2|r_Switch_State~7_combout\ & (((\Switch2|r_Debounce_Count\(12))))) # (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|p_Debounce~1_combout\ & ((\Switch2|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|p_Debounce~1_combout\,
	datab => \Switch2|r_Switch_State~7_combout\,
	datac => \Switch2|r_Debounce_Count\(12),
	datad => \Switch2|Add0~24_combout\,
	combout => \Switch2|r_Debounce_Count[12]~5_combout\);

-- Location: FF_X45_Y49_N29
\Switch2|r_Debounce_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[12]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(12));

-- Location: LCCOMB_X44_Y48_N0
\Switch2|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~26_combout\ = (\Switch2|r_Debounce_Count\(13) & (!\Switch2|Add0~25\)) # (!\Switch2|r_Debounce_Count\(13) & ((\Switch2|Add0~25\) # (GND)))
-- \Switch2|Add0~27\ = CARRY((!\Switch2|Add0~25\) # (!\Switch2|r_Debounce_Count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(13),
	datad => VCC,
	cin => \Switch2|Add0~25\,
	combout => \Switch2|Add0~26_combout\,
	cout => \Switch2|Add0~27\);

-- Location: LCCOMB_X45_Y49_N22
\Switch2|r_Debounce_Count[13]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[13]~6_combout\ = (\Switch2|r_Switch_State~7_combout\ & (((\Switch2|r_Debounce_Count\(13))))) # (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|p_Debounce~1_combout\ & ((\Switch2|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|p_Debounce~1_combout\,
	datab => \Switch2|r_Switch_State~7_combout\,
	datac => \Switch2|r_Debounce_Count\(13),
	datad => \Switch2|Add0~26_combout\,
	combout => \Switch2|r_Debounce_Count[13]~6_combout\);

-- Location: FF_X45_Y49_N23
\Switch2|r_Debounce_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(13));

-- Location: LCCOMB_X44_Y48_N2
\Switch2|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~28_combout\ = (\Switch2|r_Debounce_Count\(14) & (\Switch2|Add0~27\ $ (GND))) # (!\Switch2|r_Debounce_Count\(14) & (!\Switch2|Add0~27\ & VCC))
-- \Switch2|Add0~29\ = CARRY((\Switch2|r_Debounce_Count\(14) & !\Switch2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(14),
	datad => VCC,
	cin => \Switch2|Add0~27\,
	combout => \Switch2|Add0~28_combout\,
	cout => \Switch2|Add0~29\);

-- Location: LCCOMB_X45_Y49_N12
\Switch2|r_Debounce_Count[14]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[14]~7_combout\ = (\Switch2|r_Switch_State~7_combout\ & (((\Switch2|r_Debounce_Count\(14))))) # (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|p_Debounce~1_combout\ & ((\Switch2|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|p_Debounce~1_combout\,
	datab => \Switch2|r_Switch_State~7_combout\,
	datac => \Switch2|r_Debounce_Count\(14),
	datad => \Switch2|Add0~28_combout\,
	combout => \Switch2|r_Debounce_Count[14]~7_combout\);

-- Location: FF_X45_Y49_N13
\Switch2|r_Debounce_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[14]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(14));

-- Location: LCCOMB_X44_Y48_N4
\Switch2|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~30_combout\ = (\Switch2|r_Debounce_Count\(15) & (!\Switch2|Add0~29\)) # (!\Switch2|r_Debounce_Count\(15) & ((\Switch2|Add0~29\) # (GND)))
-- \Switch2|Add0~31\ = CARRY((!\Switch2|Add0~29\) # (!\Switch2|r_Debounce_Count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(15),
	datad => VCC,
	cin => \Switch2|Add0~29\,
	combout => \Switch2|Add0~30_combout\,
	cout => \Switch2|Add0~31\);

-- Location: LCCOMB_X45_Y49_N10
\Switch2|r_Debounce_Count[15]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[15]~8_combout\ = (\Switch2|r_Switch_State~7_combout\ & (((\Switch2|r_Debounce_Count\(15))))) # (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|p_Debounce~1_combout\ & ((\Switch2|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|p_Debounce~1_combout\,
	datab => \Switch2|r_Switch_State~7_combout\,
	datac => \Switch2|r_Debounce_Count\(15),
	datad => \Switch2|Add0~30_combout\,
	combout => \Switch2|r_Debounce_Count[15]~8_combout\);

-- Location: FF_X45_Y49_N11
\Switch2|r_Debounce_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(15));

-- Location: LCCOMB_X44_Y48_N6
\Switch2|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~32_combout\ = (\Switch2|r_Debounce_Count\(16) & (\Switch2|Add0~31\ $ (GND))) # (!\Switch2|r_Debounce_Count\(16) & (!\Switch2|Add0~31\ & VCC))
-- \Switch2|Add0~33\ = CARRY((\Switch2|r_Debounce_Count\(16) & !\Switch2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(16),
	datad => VCC,
	cin => \Switch2|Add0~31\,
	combout => \Switch2|Add0~32_combout\,
	cout => \Switch2|Add0~33\);

-- Location: LCCOMB_X45_Y48_N6
\Switch2|r_Debounce_Count[16]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[16]~22_combout\ = (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|Add0~32_combout\ & \Switch2|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Switch_State~7_combout\,
	datac => \Switch2|Add0~32_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[16]~22_combout\);

-- Location: FF_X45_Y48_N7
\Switch2|r_Debounce_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(16));

-- Location: LCCOMB_X45_Y49_N24
\Switch2|r_Switch_State~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Switch_State~2_combout\ = (\Switch2|r_Debounce_Count\(15) & (\Switch2|r_Debounce_Count\(12) & (\Switch2|r_Debounce_Count\(13) & \Switch2|r_Debounce_Count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(15),
	datab => \Switch2|r_Debounce_Count\(12),
	datac => \Switch2|r_Debounce_Count\(13),
	datad => \Switch2|r_Debounce_Count\(14),
	combout => \Switch2|r_Switch_State~2_combout\);

-- Location: LCCOMB_X45_Y49_N30
\Switch2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|LessThan0~0_combout\ = (!\Switch2|r_Debounce_Count\(9) & (!\Switch2|r_Debounce_Count\(10) & (!\Switch2|r_Debounce_Count\(8) & !\Switch2|r_Debounce_Count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(9),
	datab => \Switch2|r_Debounce_Count\(10),
	datac => \Switch2|r_Debounce_Count\(8),
	datad => \Switch2|r_Debounce_Count\(11),
	combout => \Switch2|LessThan0~0_combout\);

-- Location: LCCOMB_X45_Y48_N18
\Switch2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|LessThan0~1_combout\ = (!\Switch2|r_Debounce_Count\(16) & (((\Switch2|LessThan0~0_combout\ & !\Switch2|r_Debounce_Count\(7))) # (!\Switch2|r_Switch_State~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(16),
	datab => \Switch2|r_Switch_State~2_combout\,
	datac => \Switch2|LessThan0~0_combout\,
	datad => \Switch2|r_Debounce_Count\(7),
	combout => \Switch2|LessThan0~1_combout\);

-- Location: LCCOMB_X45_Y48_N28
\Switch2|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|LessThan0~2_combout\ = ((!\Switch2|r_Debounce_Count\(18) & ((\Switch2|LessThan0~1_combout\) # (!\Switch2|r_Debounce_Count\(17))))) # (!\Switch2|r_Switch_State~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Switch_State~1_combout\,
	datab => \Switch2|r_Debounce_Count\(18),
	datac => \Switch2|r_Debounce_Count\(17),
	datad => \Switch2|LessThan0~1_combout\,
	combout => \Switch2|LessThan0~2_combout\);

-- Location: IOIBUF_X51_Y54_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X45_Y51_N28
\Switch2|p_Debounce~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|p_Debounce~0_combout\ = \Switch2|r_Switch_State~q\ $ (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Switch_State~q\,
	datad => \reset~input_o\,
	combout => \Switch2|p_Debounce~0_combout\);

-- Location: LCCOMB_X44_Y48_N24
\Switch2|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~50_combout\ = \Switch2|Add0~49\ $ (\Switch2|r_Debounce_Count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Switch2|r_Debounce_Count\(25),
	cin => \Switch2|Add0~49\,
	combout => \Switch2|Add0~50_combout\);

-- Location: LCCOMB_X45_Y49_N14
\Switch2|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~52_combout\ = (\Switch2|r_Switch_State~7_combout\) # ((\Switch2|Add0~50_combout\ & \Switch2|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|Add0~50_combout\,
	datac => \Switch2|r_Switch_State~7_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|Add0~52_combout\);

-- Location: FF_X45_Y49_N15
\Switch2|r_Debounce_Count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(25));

-- Location: LCCOMB_X45_Y48_N2
\Switch2|p_Debounce~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|p_Debounce~1_combout\ = (\Switch2|p_Debounce~0_combout\ & (((!\Switch2|r_Debounce_Count\(24) & \Switch2|LessThan0~2_combout\)) # (!\Switch2|r_Debounce_Count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(24),
	datab => \Switch2|LessThan0~2_combout\,
	datac => \Switch2|p_Debounce~0_combout\,
	datad => \Switch2|r_Debounce_Count\(25),
	combout => \Switch2|p_Debounce~1_combout\);

-- Location: LCCOMB_X44_Y48_N8
\Switch2|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~34_combout\ = (\Switch2|r_Debounce_Count\(17) & (!\Switch2|Add0~33\)) # (!\Switch2|r_Debounce_Count\(17) & ((\Switch2|Add0~33\) # (GND)))
-- \Switch2|Add0~35\ = CARRY((!\Switch2|Add0~33\) # (!\Switch2|r_Debounce_Count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(17),
	datad => VCC,
	cin => \Switch2|Add0~33\,
	combout => \Switch2|Add0~34_combout\,
	cout => \Switch2|Add0~35\);

-- Location: LCCOMB_X45_Y48_N4
\Switch2|r_Debounce_Count[17]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[17]~21_combout\ = (\Switch2|r_Switch_State~7_combout\ & (((\Switch2|r_Debounce_Count\(17))))) # (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|p_Debounce~1_combout\ & ((\Switch2|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Switch_State~7_combout\,
	datab => \Switch2|p_Debounce~1_combout\,
	datac => \Switch2|r_Debounce_Count\(17),
	datad => \Switch2|Add0~34_combout\,
	combout => \Switch2|r_Debounce_Count[17]~21_combout\);

-- Location: FF_X45_Y48_N5
\Switch2|r_Debounce_Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[17]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(17));

-- Location: LCCOMB_X44_Y48_N10
\Switch2|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~36_combout\ = (\Switch2|r_Debounce_Count\(18) & (\Switch2|Add0~35\ $ (GND))) # (!\Switch2|r_Debounce_Count\(18) & (!\Switch2|Add0~35\ & VCC))
-- \Switch2|Add0~37\ = CARRY((\Switch2|r_Debounce_Count\(18) & !\Switch2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(18),
	datad => VCC,
	cin => \Switch2|Add0~35\,
	combout => \Switch2|Add0~36_combout\,
	cout => \Switch2|Add0~37\);

-- Location: LCCOMB_X45_Y48_N0
\Switch2|r_Debounce_Count[18]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[18]~23_combout\ = (\Switch2|Add0~36_combout\ & (!\Switch2|r_Switch_State~7_combout\ & \Switch2|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|Add0~36_combout\,
	datac => \Switch2|r_Switch_State~7_combout\,
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[18]~23_combout\);

-- Location: FF_X45_Y48_N1
\Switch2|r_Debounce_Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[18]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(18));

-- Location: LCCOMB_X44_Y48_N12
\Switch2|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|Add0~38_combout\ = (\Switch2|r_Debounce_Count\(19) & (!\Switch2|Add0~37\)) # (!\Switch2|r_Debounce_Count\(19) & ((\Switch2|Add0~37\) # (GND)))
-- \Switch2|Add0~39\ = CARRY((!\Switch2|Add0~37\) # (!\Switch2|r_Debounce_Count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Debounce_Count\(19),
	datad => VCC,
	cin => \Switch2|Add0~37\,
	combout => \Switch2|Add0~38_combout\,
	cout => \Switch2|Add0~39\);

-- Location: LCCOMB_X45_Y49_N8
\Switch2|r_Debounce_Count[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[19]~1_combout\ = (\Switch2|r_Switch_State~7_combout\ & (((\Switch2|r_Debounce_Count\(19))))) # (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|Add0~38_combout\ & ((\Switch2|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|Add0~38_combout\,
	datab => \Switch2|r_Switch_State~7_combout\,
	datac => \Switch2|r_Debounce_Count\(19),
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[19]~1_combout\);

-- Location: FF_X45_Y49_N9
\Switch2|r_Debounce_Count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(19));

-- Location: LCCOMB_X44_Y48_N26
\Switch2|r_Debounce_Count[20]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Debounce_Count[20]~2_combout\ = (\Switch2|r_Switch_State~7_combout\ & (((\Switch2|r_Debounce_Count\(20))))) # (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|Add0~40_combout\ & ((\Switch2|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Switch_State~7_combout\,
	datab => \Switch2|Add0~40_combout\,
	datac => \Switch2|r_Debounce_Count\(20),
	datad => \Switch2|p_Debounce~1_combout\,
	combout => \Switch2|r_Debounce_Count[20]~2_combout\);

-- Location: FF_X44_Y48_N27
\Switch2|r_Debounce_Count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Debounce_Count[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Debounce_Count\(20));

-- Location: LCCOMB_X44_Y48_N30
\Switch2|r_Switch_State~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Switch_State~0_combout\ = (\Switch2|r_Debounce_Count\(20) & (\Switch2|r_Debounce_Count\(21) & (\Switch2|r_Debounce_Count\(22) & \Switch2|r_Debounce_Count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(20),
	datab => \Switch2|r_Debounce_Count\(21),
	datac => \Switch2|r_Debounce_Count\(22),
	datad => \Switch2|r_Debounce_Count\(19),
	combout => \Switch2|r_Switch_State~0_combout\);

-- Location: LCCOMB_X45_Y48_N26
\Switch2|r_Switch_State~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Switch_State~1_combout\ = (\Switch2|r_Switch_State~0_combout\ & \Switch2|r_Debounce_Count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Switch_State~0_combout\,
	datad => \Switch2|r_Debounce_Count\(23),
	combout => \Switch2|r_Switch_State~1_combout\);

-- Location: LCCOMB_X44_Y49_N4
\Switch2|r_Switch_State~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Switch_State~3_combout\ = (!\Switch2|r_Debounce_Count\(2) & (!\Switch2|r_Debounce_Count\(0) & (!\Switch2|r_Debounce_Count\(1) & !\Switch2|r_Debounce_Count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(2),
	datab => \Switch2|r_Debounce_Count\(0),
	datac => \Switch2|r_Debounce_Count\(1),
	datad => \Switch2|r_Debounce_Count\(3),
	combout => \Switch2|r_Switch_State~3_combout\);

-- Location: LCCOMB_X45_Y48_N14
\Switch2|r_Switch_State~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Switch_State~4_combout\ = (!\Switch2|r_Debounce_Count\(5) & (\Switch2|r_Debounce_Count\(7) & (!\Switch2|r_Debounce_Count\(4) & !\Switch2|r_Debounce_Count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(5),
	datab => \Switch2|r_Debounce_Count\(7),
	datac => \Switch2|r_Debounce_Count\(4),
	datad => \Switch2|r_Debounce_Count\(6),
	combout => \Switch2|r_Switch_State~4_combout\);

-- Location: LCCOMB_X45_Y48_N8
\Switch2|r_Switch_State~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Switch_State~5_combout\ = (!\Switch2|r_Debounce_Count\(24) & (!\Switch2|r_Debounce_Count\(18) & (\Switch2|r_Debounce_Count\(17) & !\Switch2|r_Debounce_Count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Debounce_Count\(24),
	datab => \Switch2|r_Debounce_Count\(18),
	datac => \Switch2|r_Debounce_Count\(17),
	datad => \Switch2|r_Debounce_Count\(16),
	combout => \Switch2|r_Switch_State~5_combout\);

-- Location: LCCOMB_X45_Y48_N10
\Switch2|r_Switch_State~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Switch_State~6_combout\ = (\Switch2|r_Switch_State~3_combout\ & (\Switch2|r_Switch_State~4_combout\ & (\Switch2|r_Switch_State~5_combout\ & \Switch2|r_Debounce_Count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Switch_State~3_combout\,
	datab => \Switch2|r_Switch_State~4_combout\,
	datac => \Switch2|r_Switch_State~5_combout\,
	datad => \Switch2|r_Debounce_Count\(25),
	combout => \Switch2|r_Switch_State~6_combout\);

-- Location: LCCOMB_X45_Y48_N20
\Switch2|r_Switch_State~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Switch_State~7_combout\ = (\Switch2|r_Switch_State~1_combout\ & (\Switch2|r_Switch_State~2_combout\ & (\Switch2|LessThan0~0_combout\ & \Switch2|r_Switch_State~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2|r_Switch_State~1_combout\,
	datab => \Switch2|r_Switch_State~2_combout\,
	datac => \Switch2|LessThan0~0_combout\,
	datad => \Switch2|r_Switch_State~6_combout\,
	combout => \Switch2|r_Switch_State~7_combout\);

-- Location: LCCOMB_X45_Y51_N24
\Switch2|r_Switch_State~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch2|r_Switch_State~8_combout\ = (\Switch2|r_Switch_State~7_combout\ & ((\reset~input_o\))) # (!\Switch2|r_Switch_State~7_combout\ & (\Switch2|r_Switch_State~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch2|r_Switch_State~7_combout\,
	datac => \Switch2|r_Switch_State~q\,
	datad => \reset~input_o\,
	combout => \Switch2|r_Switch_State~8_combout\);

-- Location: FF_X45_Y51_N25
\Switch2|r_Switch_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch2|r_Switch_State~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch2|r_Switch_State~q\);

-- Location: CLKCTRL_G10
\Switch2|r_Switch_State~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Switch2|r_Switch_State~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Switch2|r_Switch_State~clkctrl_outclk\);

-- Location: FF_X77_Y44_N1
\movement_ctrl_inst|clk_divider[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(0));

-- Location: LCCOMB_X77_Y44_N2
\movement_ctrl_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~2_combout\ = (\movement_ctrl_inst|clk_divider\(1) & (!\movement_ctrl_inst|Add0~1\)) # (!\movement_ctrl_inst|clk_divider\(1) & ((\movement_ctrl_inst|Add0~1\) # (GND)))
-- \movement_ctrl_inst|Add0~3\ = CARRY((!\movement_ctrl_inst|Add0~1\) # (!\movement_ctrl_inst|clk_divider\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(1),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~1\,
	combout => \movement_ctrl_inst|Add0~2_combout\,
	cout => \movement_ctrl_inst|Add0~3\);

-- Location: FF_X77_Y44_N3
\movement_ctrl_inst|clk_divider[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~2_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(1));

-- Location: LCCOMB_X77_Y44_N4
\movement_ctrl_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~4_combout\ = (\movement_ctrl_inst|clk_divider\(2) & (\movement_ctrl_inst|Add0~3\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(2) & (!\movement_ctrl_inst|Add0~3\ & VCC))
-- \movement_ctrl_inst|Add0~5\ = CARRY((\movement_ctrl_inst|clk_divider\(2) & !\movement_ctrl_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(2),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~3\,
	combout => \movement_ctrl_inst|Add0~4_combout\,
	cout => \movement_ctrl_inst|Add0~5\);

-- Location: FF_X77_Y44_N5
\movement_ctrl_inst|clk_divider[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~4_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(2));

-- Location: LCCOMB_X77_Y44_N6
\movement_ctrl_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~6_combout\ = (\movement_ctrl_inst|clk_divider\(3) & (!\movement_ctrl_inst|Add0~5\)) # (!\movement_ctrl_inst|clk_divider\(3) & ((\movement_ctrl_inst|Add0~5\) # (GND)))
-- \movement_ctrl_inst|Add0~7\ = CARRY((!\movement_ctrl_inst|Add0~5\) # (!\movement_ctrl_inst|clk_divider\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(3),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~5\,
	combout => \movement_ctrl_inst|Add0~6_combout\,
	cout => \movement_ctrl_inst|Add0~7\);

-- Location: FF_X77_Y44_N7
\movement_ctrl_inst|clk_divider[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~6_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(3));

-- Location: LCCOMB_X77_Y45_N24
\movement_ctrl_inst|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal0~8_combout\ = (\movement_ctrl_inst|clk_divider\(1) & (\movement_ctrl_inst|clk_divider\(3) & (\movement_ctrl_inst|clk_divider\(2) & \movement_ctrl_inst|clk_divider\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(1),
	datab => \movement_ctrl_inst|clk_divider\(3),
	datac => \movement_ctrl_inst|clk_divider\(2),
	datad => \movement_ctrl_inst|clk_divider\(0),
	combout => \movement_ctrl_inst|Equal0~8_combout\);

-- Location: LCCOMB_X77_Y44_N8
\movement_ctrl_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~8_combout\ = (\movement_ctrl_inst|clk_divider\(4) & (\movement_ctrl_inst|Add0~7\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(4) & (!\movement_ctrl_inst|Add0~7\ & VCC))
-- \movement_ctrl_inst|Add0~9\ = CARRY((\movement_ctrl_inst|clk_divider\(4) & !\movement_ctrl_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(4),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~7\,
	combout => \movement_ctrl_inst|Add0~8_combout\,
	cout => \movement_ctrl_inst|Add0~9\);

-- Location: FF_X77_Y44_N9
\movement_ctrl_inst|clk_divider[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~8_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(4));

-- Location: LCCOMB_X77_Y44_N10
\movement_ctrl_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~10_combout\ = (\movement_ctrl_inst|clk_divider\(5) & (!\movement_ctrl_inst|Add0~9\)) # (!\movement_ctrl_inst|clk_divider\(5) & ((\movement_ctrl_inst|Add0~9\) # (GND)))
-- \movement_ctrl_inst|Add0~11\ = CARRY((!\movement_ctrl_inst|Add0~9\) # (!\movement_ctrl_inst|clk_divider\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(5),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~9\,
	combout => \movement_ctrl_inst|Add0~10_combout\,
	cout => \movement_ctrl_inst|Add0~11\);

-- Location: FF_X77_Y44_N11
\movement_ctrl_inst|clk_divider[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~10_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(5));

-- Location: LCCOMB_X77_Y44_N12
\movement_ctrl_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~12_combout\ = (\movement_ctrl_inst|clk_divider\(6) & (\movement_ctrl_inst|Add0~11\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(6) & (!\movement_ctrl_inst|Add0~11\ & VCC))
-- \movement_ctrl_inst|Add0~13\ = CARRY((\movement_ctrl_inst|clk_divider\(6) & !\movement_ctrl_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(6),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~11\,
	combout => \movement_ctrl_inst|Add0~12_combout\,
	cout => \movement_ctrl_inst|Add0~13\);

-- Location: LCCOMB_X77_Y45_N28
\movement_ctrl_inst|clk_divider~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|clk_divider~5_combout\ = (!\movement_ctrl_inst|Equal0~10_combout\ & \movement_ctrl_inst|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Equal0~10_combout\,
	datac => \movement_ctrl_inst|Add0~12_combout\,
	combout => \movement_ctrl_inst|clk_divider~5_combout\);

-- Location: FF_X77_Y45_N29
\movement_ctrl_inst|clk_divider[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|clk_divider~5_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(6));

-- Location: LCCOMB_X77_Y44_N14
\movement_ctrl_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~14_combout\ = (\movement_ctrl_inst|clk_divider\(7) & (!\movement_ctrl_inst|Add0~13\)) # (!\movement_ctrl_inst|clk_divider\(7) & ((\movement_ctrl_inst|Add0~13\) # (GND)))
-- \movement_ctrl_inst|Add0~15\ = CARRY((!\movement_ctrl_inst|Add0~13\) # (!\movement_ctrl_inst|clk_divider\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(7),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~13\,
	combout => \movement_ctrl_inst|Add0~14_combout\,
	cout => \movement_ctrl_inst|Add0~15\);

-- Location: FF_X77_Y44_N15
\movement_ctrl_inst|clk_divider[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~14_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(7));

-- Location: LCCOMB_X77_Y45_N18
\movement_ctrl_inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal0~7_combout\ = (\movement_ctrl_inst|clk_divider\(5) & (!\movement_ctrl_inst|clk_divider\(6) & (!\movement_ctrl_inst|clk_divider\(7) & \movement_ctrl_inst|clk_divider\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(5),
	datab => \movement_ctrl_inst|clk_divider\(6),
	datac => \movement_ctrl_inst|clk_divider\(7),
	datad => \movement_ctrl_inst|clk_divider\(4),
	combout => \movement_ctrl_inst|Equal0~7_combout\);

-- Location: LCCOMB_X77_Y45_N26
\movement_ctrl_inst|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal0~9_combout\ = (\movement_ctrl_inst|Equal0~8_combout\ & \movement_ctrl_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|Equal0~8_combout\,
	datad => \movement_ctrl_inst|Equal0~7_combout\,
	combout => \movement_ctrl_inst|Equal0~9_combout\);

-- Location: LCCOMB_X77_Y44_N16
\movement_ctrl_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~16_combout\ = (\movement_ctrl_inst|clk_divider\(8) & (\movement_ctrl_inst|Add0~15\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(8) & (!\movement_ctrl_inst|Add0~15\ & VCC))
-- \movement_ctrl_inst|Add0~17\ = CARRY((\movement_ctrl_inst|clk_divider\(8) & !\movement_ctrl_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(8),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~15\,
	combout => \movement_ctrl_inst|Add0~16_combout\,
	cout => \movement_ctrl_inst|Add0~17\);

-- Location: LCCOMB_X77_Y45_N8
\movement_ctrl_inst|clk_divider~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|clk_divider~4_combout\ = (!\movement_ctrl_inst|Equal0~10_combout\ & \movement_ctrl_inst|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Equal0~10_combout\,
	datad => \movement_ctrl_inst|Add0~16_combout\,
	combout => \movement_ctrl_inst|clk_divider~4_combout\);

-- Location: FF_X77_Y45_N9
\movement_ctrl_inst|clk_divider[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|clk_divider~4_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(8));

-- Location: LCCOMB_X77_Y44_N18
\movement_ctrl_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~18_combout\ = (\movement_ctrl_inst|clk_divider\(9) & (!\movement_ctrl_inst|Add0~17\)) # (!\movement_ctrl_inst|clk_divider\(9) & ((\movement_ctrl_inst|Add0~17\) # (GND)))
-- \movement_ctrl_inst|Add0~19\ = CARRY((!\movement_ctrl_inst|Add0~17\) # (!\movement_ctrl_inst|clk_divider\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(9),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~17\,
	combout => \movement_ctrl_inst|Add0~18_combout\,
	cout => \movement_ctrl_inst|Add0~19\);

-- Location: FF_X77_Y44_N19
\movement_ctrl_inst|clk_divider[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~18_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(9));

-- Location: LCCOMB_X77_Y44_N20
\movement_ctrl_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~20_combout\ = (\movement_ctrl_inst|clk_divider\(10) & (\movement_ctrl_inst|Add0~19\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(10) & (!\movement_ctrl_inst|Add0~19\ & VCC))
-- \movement_ctrl_inst|Add0~21\ = CARRY((\movement_ctrl_inst|clk_divider\(10) & !\movement_ctrl_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(10),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~19\,
	combout => \movement_ctrl_inst|Add0~20_combout\,
	cout => \movement_ctrl_inst|Add0~21\);

-- Location: LCCOMB_X77_Y45_N30
\movement_ctrl_inst|clk_divider~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|clk_divider~3_combout\ = (\movement_ctrl_inst|Add0~20_combout\ & !\movement_ctrl_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|Add0~20_combout\,
	datad => \movement_ctrl_inst|Equal0~10_combout\,
	combout => \movement_ctrl_inst|clk_divider~3_combout\);

-- Location: FF_X77_Y45_N31
\movement_ctrl_inst|clk_divider[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|clk_divider~3_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(10));

-- Location: LCCOMB_X77_Y44_N22
\movement_ctrl_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~22_combout\ = (\movement_ctrl_inst|clk_divider\(11) & (!\movement_ctrl_inst|Add0~21\)) # (!\movement_ctrl_inst|clk_divider\(11) & ((\movement_ctrl_inst|Add0~21\) # (GND)))
-- \movement_ctrl_inst|Add0~23\ = CARRY((!\movement_ctrl_inst|Add0~21\) # (!\movement_ctrl_inst|clk_divider\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(11),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~21\,
	combout => \movement_ctrl_inst|Add0~22_combout\,
	cout => \movement_ctrl_inst|Add0~23\);

-- Location: LCCOMB_X77_Y45_N4
\movement_ctrl_inst|clk_divider~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|clk_divider~2_combout\ = (\movement_ctrl_inst|Add0~22_combout\ & !\movement_ctrl_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|Add0~22_combout\,
	datad => \movement_ctrl_inst|Equal0~10_combout\,
	combout => \movement_ctrl_inst|clk_divider~2_combout\);

-- Location: FF_X77_Y45_N5
\movement_ctrl_inst|clk_divider[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|clk_divider~2_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(11));

-- Location: LCCOMB_X77_Y44_N24
\movement_ctrl_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~24_combout\ = (\movement_ctrl_inst|clk_divider\(12) & (\movement_ctrl_inst|Add0~23\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(12) & (!\movement_ctrl_inst|Add0~23\ & VCC))
-- \movement_ctrl_inst|Add0~25\ = CARRY((\movement_ctrl_inst|clk_divider\(12) & !\movement_ctrl_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(12),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~23\,
	combout => \movement_ctrl_inst|Add0~24_combout\,
	cout => \movement_ctrl_inst|Add0~25\);

-- Location: FF_X77_Y44_N25
\movement_ctrl_inst|clk_divider[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~24_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(12));

-- Location: LCCOMB_X77_Y44_N26
\movement_ctrl_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~26_combout\ = (\movement_ctrl_inst|clk_divider\(13) & (!\movement_ctrl_inst|Add0~25\)) # (!\movement_ctrl_inst|clk_divider\(13) & ((\movement_ctrl_inst|Add0~25\) # (GND)))
-- \movement_ctrl_inst|Add0~27\ = CARRY((!\movement_ctrl_inst|Add0~25\) # (!\movement_ctrl_inst|clk_divider\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(13),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~25\,
	combout => \movement_ctrl_inst|Add0~26_combout\,
	cout => \movement_ctrl_inst|Add0~27\);

-- Location: FF_X77_Y44_N27
\movement_ctrl_inst|clk_divider[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~26_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(13));

-- Location: LCCOMB_X77_Y44_N28
\movement_ctrl_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~28_combout\ = (\movement_ctrl_inst|clk_divider\(14) & (\movement_ctrl_inst|Add0~27\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(14) & (!\movement_ctrl_inst|Add0~27\ & VCC))
-- \movement_ctrl_inst|Add0~29\ = CARRY((\movement_ctrl_inst|clk_divider\(14) & !\movement_ctrl_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(14),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~27\,
	combout => \movement_ctrl_inst|Add0~28_combout\,
	cout => \movement_ctrl_inst|Add0~29\);

-- Location: FF_X77_Y44_N29
\movement_ctrl_inst|clk_divider[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~28_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(14));

-- Location: LCCOMB_X77_Y44_N30
\movement_ctrl_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~30_combout\ = (\movement_ctrl_inst|clk_divider\(15) & (!\movement_ctrl_inst|Add0~29\)) # (!\movement_ctrl_inst|clk_divider\(15) & ((\movement_ctrl_inst|Add0~29\) # (GND)))
-- \movement_ctrl_inst|Add0~31\ = CARRY((!\movement_ctrl_inst|Add0~29\) # (!\movement_ctrl_inst|clk_divider\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(15),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~29\,
	combout => \movement_ctrl_inst|Add0~30_combout\,
	cout => \movement_ctrl_inst|Add0~31\);

-- Location: FF_X77_Y44_N31
\movement_ctrl_inst|clk_divider[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~30_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(15));

-- Location: LCCOMB_X77_Y43_N0
\movement_ctrl_inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~32_combout\ = (\movement_ctrl_inst|clk_divider\(16) & (\movement_ctrl_inst|Add0~31\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(16) & (!\movement_ctrl_inst|Add0~31\ & VCC))
-- \movement_ctrl_inst|Add0~33\ = CARRY((\movement_ctrl_inst|clk_divider\(16) & !\movement_ctrl_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(16),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~31\,
	combout => \movement_ctrl_inst|Add0~32_combout\,
	cout => \movement_ctrl_inst|Add0~33\);

-- Location: LCCOMB_X77_Y45_N20
\movement_ctrl_inst|clk_divider~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|clk_divider~1_combout\ = (!\movement_ctrl_inst|Equal0~10_combout\ & \movement_ctrl_inst|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Equal0~10_combout\,
	datad => \movement_ctrl_inst|Add0~32_combout\,
	combout => \movement_ctrl_inst|clk_divider~1_combout\);

-- Location: FF_X77_Y45_N21
\movement_ctrl_inst|clk_divider[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|clk_divider~1_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(16));

-- Location: LCCOMB_X77_Y43_N2
\movement_ctrl_inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~34_combout\ = (\movement_ctrl_inst|clk_divider\(17) & (!\movement_ctrl_inst|Add0~33\)) # (!\movement_ctrl_inst|clk_divider\(17) & ((\movement_ctrl_inst|Add0~33\) # (GND)))
-- \movement_ctrl_inst|Add0~35\ = CARRY((!\movement_ctrl_inst|Add0~33\) # (!\movement_ctrl_inst|clk_divider\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(17),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~33\,
	combout => \movement_ctrl_inst|Add0~34_combout\,
	cout => \movement_ctrl_inst|Add0~35\);

-- Location: LCCOMB_X77_Y39_N2
\movement_ctrl_inst|clk_divider~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|clk_divider~0_combout\ = (\movement_ctrl_inst|Add0~34_combout\ & !\movement_ctrl_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|Add0~34_combout\,
	datad => \movement_ctrl_inst|Equal0~10_combout\,
	combout => \movement_ctrl_inst|clk_divider~0_combout\);

-- Location: FF_X77_Y39_N3
\movement_ctrl_inst|clk_divider[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|clk_divider~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(17));

-- Location: LCCOMB_X77_Y43_N4
\movement_ctrl_inst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~36_combout\ = (\movement_ctrl_inst|clk_divider\(18) & (\movement_ctrl_inst|Add0~35\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(18) & (!\movement_ctrl_inst|Add0~35\ & VCC))
-- \movement_ctrl_inst|Add0~37\ = CARRY((\movement_ctrl_inst|clk_divider\(18) & !\movement_ctrl_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(18),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~35\,
	combout => \movement_ctrl_inst|Add0~36_combout\,
	cout => \movement_ctrl_inst|Add0~37\);

-- Location: FF_X77_Y43_N5
\movement_ctrl_inst|clk_divider[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~36_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(18));

-- Location: LCCOMB_X77_Y43_N6
\movement_ctrl_inst|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~38_combout\ = (\movement_ctrl_inst|clk_divider\(19) & (!\movement_ctrl_inst|Add0~37\)) # (!\movement_ctrl_inst|clk_divider\(19) & ((\movement_ctrl_inst|Add0~37\) # (GND)))
-- \movement_ctrl_inst|Add0~39\ = CARRY((!\movement_ctrl_inst|Add0~37\) # (!\movement_ctrl_inst|clk_divider\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(19),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~37\,
	combout => \movement_ctrl_inst|Add0~38_combout\,
	cout => \movement_ctrl_inst|Add0~39\);

-- Location: FF_X77_Y43_N7
\movement_ctrl_inst|clk_divider[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~38_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(19));

-- Location: LCCOMB_X77_Y43_N8
\movement_ctrl_inst|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~40_combout\ = (\movement_ctrl_inst|clk_divider\(20) & (\movement_ctrl_inst|Add0~39\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(20) & (!\movement_ctrl_inst|Add0~39\ & VCC))
-- \movement_ctrl_inst|Add0~41\ = CARRY((\movement_ctrl_inst|clk_divider\(20) & !\movement_ctrl_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(20),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~39\,
	combout => \movement_ctrl_inst|Add0~40_combout\,
	cout => \movement_ctrl_inst|Add0~41\);

-- Location: FF_X77_Y43_N9
\movement_ctrl_inst|clk_divider[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~40_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(20));

-- Location: LCCOMB_X77_Y43_N10
\movement_ctrl_inst|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~42_combout\ = (\movement_ctrl_inst|clk_divider\(21) & (!\movement_ctrl_inst|Add0~41\)) # (!\movement_ctrl_inst|clk_divider\(21) & ((\movement_ctrl_inst|Add0~41\) # (GND)))
-- \movement_ctrl_inst|Add0~43\ = CARRY((!\movement_ctrl_inst|Add0~41\) # (!\movement_ctrl_inst|clk_divider\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(21),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~41\,
	combout => \movement_ctrl_inst|Add0~42_combout\,
	cout => \movement_ctrl_inst|Add0~43\);

-- Location: FF_X77_Y43_N11
\movement_ctrl_inst|clk_divider[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~42_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(21));

-- Location: LCCOMB_X77_Y43_N12
\movement_ctrl_inst|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~44_combout\ = (\movement_ctrl_inst|clk_divider\(22) & (\movement_ctrl_inst|Add0~43\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(22) & (!\movement_ctrl_inst|Add0~43\ & VCC))
-- \movement_ctrl_inst|Add0~45\ = CARRY((\movement_ctrl_inst|clk_divider\(22) & !\movement_ctrl_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(22),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~43\,
	combout => \movement_ctrl_inst|Add0~44_combout\,
	cout => \movement_ctrl_inst|Add0~45\);

-- Location: FF_X77_Y43_N13
\movement_ctrl_inst|clk_divider[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~44_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(22));

-- Location: LCCOMB_X77_Y43_N14
\movement_ctrl_inst|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~46_combout\ = (\movement_ctrl_inst|clk_divider\(23) & (!\movement_ctrl_inst|Add0~45\)) # (!\movement_ctrl_inst|clk_divider\(23) & ((\movement_ctrl_inst|Add0~45\) # (GND)))
-- \movement_ctrl_inst|Add0~47\ = CARRY((!\movement_ctrl_inst|Add0~45\) # (!\movement_ctrl_inst|clk_divider\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(23),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~45\,
	combout => \movement_ctrl_inst|Add0~46_combout\,
	cout => \movement_ctrl_inst|Add0~47\);

-- Location: FF_X77_Y43_N15
\movement_ctrl_inst|clk_divider[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~46_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(23));

-- Location: LCCOMB_X77_Y43_N16
\movement_ctrl_inst|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~48_combout\ = (\movement_ctrl_inst|clk_divider\(24) & (\movement_ctrl_inst|Add0~47\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(24) & (!\movement_ctrl_inst|Add0~47\ & VCC))
-- \movement_ctrl_inst|Add0~49\ = CARRY((\movement_ctrl_inst|clk_divider\(24) & !\movement_ctrl_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(24),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~47\,
	combout => \movement_ctrl_inst|Add0~48_combout\,
	cout => \movement_ctrl_inst|Add0~49\);

-- Location: FF_X77_Y43_N17
\movement_ctrl_inst|clk_divider[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~48_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(24));

-- Location: LCCOMB_X77_Y43_N18
\movement_ctrl_inst|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~50_combout\ = (\movement_ctrl_inst|clk_divider\(25) & (!\movement_ctrl_inst|Add0~49\)) # (!\movement_ctrl_inst|clk_divider\(25) & ((\movement_ctrl_inst|Add0~49\) # (GND)))
-- \movement_ctrl_inst|Add0~51\ = CARRY((!\movement_ctrl_inst|Add0~49\) # (!\movement_ctrl_inst|clk_divider\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(25),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~49\,
	combout => \movement_ctrl_inst|Add0~50_combout\,
	cout => \movement_ctrl_inst|Add0~51\);

-- Location: FF_X77_Y43_N19
\movement_ctrl_inst|clk_divider[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~50_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(25));

-- Location: LCCOMB_X77_Y43_N20
\movement_ctrl_inst|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~52_combout\ = (\movement_ctrl_inst|clk_divider\(26) & (\movement_ctrl_inst|Add0~51\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(26) & (!\movement_ctrl_inst|Add0~51\ & VCC))
-- \movement_ctrl_inst|Add0~53\ = CARRY((\movement_ctrl_inst|clk_divider\(26) & !\movement_ctrl_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(26),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~51\,
	combout => \movement_ctrl_inst|Add0~52_combout\,
	cout => \movement_ctrl_inst|Add0~53\);

-- Location: FF_X77_Y43_N21
\movement_ctrl_inst|clk_divider[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~52_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(26));

-- Location: LCCOMB_X77_Y43_N22
\movement_ctrl_inst|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~54_combout\ = (\movement_ctrl_inst|clk_divider\(27) & (!\movement_ctrl_inst|Add0~53\)) # (!\movement_ctrl_inst|clk_divider\(27) & ((\movement_ctrl_inst|Add0~53\) # (GND)))
-- \movement_ctrl_inst|Add0~55\ = CARRY((!\movement_ctrl_inst|Add0~53\) # (!\movement_ctrl_inst|clk_divider\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(27),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~53\,
	combout => \movement_ctrl_inst|Add0~54_combout\,
	cout => \movement_ctrl_inst|Add0~55\);

-- Location: FF_X77_Y43_N23
\movement_ctrl_inst|clk_divider[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~54_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(27));

-- Location: LCCOMB_X77_Y43_N24
\movement_ctrl_inst|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~56_combout\ = (\movement_ctrl_inst|clk_divider\(28) & (\movement_ctrl_inst|Add0~55\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(28) & (!\movement_ctrl_inst|Add0~55\ & VCC))
-- \movement_ctrl_inst|Add0~57\ = CARRY((\movement_ctrl_inst|clk_divider\(28) & !\movement_ctrl_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(28),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~55\,
	combout => \movement_ctrl_inst|Add0~56_combout\,
	cout => \movement_ctrl_inst|Add0~57\);

-- Location: FF_X77_Y43_N25
\movement_ctrl_inst|clk_divider[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~56_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(28));

-- Location: LCCOMB_X77_Y43_N26
\movement_ctrl_inst|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~58_combout\ = (\movement_ctrl_inst|clk_divider\(29) & (!\movement_ctrl_inst|Add0~57\)) # (!\movement_ctrl_inst|clk_divider\(29) & ((\movement_ctrl_inst|Add0~57\) # (GND)))
-- \movement_ctrl_inst|Add0~59\ = CARRY((!\movement_ctrl_inst|Add0~57\) # (!\movement_ctrl_inst|clk_divider\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(29),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~57\,
	combout => \movement_ctrl_inst|Add0~58_combout\,
	cout => \movement_ctrl_inst|Add0~59\);

-- Location: FF_X77_Y43_N27
\movement_ctrl_inst|clk_divider[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~58_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(29));

-- Location: LCCOMB_X77_Y43_N28
\movement_ctrl_inst|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~60_combout\ = (\movement_ctrl_inst|clk_divider\(30) & (\movement_ctrl_inst|Add0~59\ $ (GND))) # (!\movement_ctrl_inst|clk_divider\(30) & (!\movement_ctrl_inst|Add0~59\ & VCC))
-- \movement_ctrl_inst|Add0~61\ = CARRY((\movement_ctrl_inst|clk_divider\(30) & !\movement_ctrl_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|clk_divider\(30),
	datad => VCC,
	cin => \movement_ctrl_inst|Add0~59\,
	combout => \movement_ctrl_inst|Add0~60_combout\,
	cout => \movement_ctrl_inst|Add0~61\);

-- Location: FF_X77_Y43_N29
\movement_ctrl_inst|clk_divider[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~60_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(30));

-- Location: LCCOMB_X77_Y43_N30
\movement_ctrl_inst|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add0~62_combout\ = \movement_ctrl_inst|clk_divider\(31) $ (\movement_ctrl_inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(31),
	cin => \movement_ctrl_inst|Add0~61\,
	combout => \movement_ctrl_inst|Add0~62_combout\);

-- Location: FF_X77_Y43_N31
\movement_ctrl_inst|clk_divider[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add0~62_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|clk_divider\(31));

-- Location: LCCOMB_X77_Y41_N12
\movement_ctrl_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal0~0_combout\ = (!\movement_ctrl_inst|clk_divider\(29) & (!\movement_ctrl_inst|clk_divider\(30) & (!\movement_ctrl_inst|clk_divider\(31) & !\movement_ctrl_inst|clk_divider\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(29),
	datab => \movement_ctrl_inst|clk_divider\(30),
	datac => \movement_ctrl_inst|clk_divider\(31),
	datad => \movement_ctrl_inst|clk_divider\(28),
	combout => \movement_ctrl_inst|Equal0~0_combout\);

-- Location: LCCOMB_X77_Y41_N18
\movement_ctrl_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal0~2_combout\ = (!\movement_ctrl_inst|clk_divider\(22) & (!\movement_ctrl_inst|clk_divider\(23) & (!\movement_ctrl_inst|clk_divider\(20) & !\movement_ctrl_inst|clk_divider\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(22),
	datab => \movement_ctrl_inst|clk_divider\(23),
	datac => \movement_ctrl_inst|clk_divider\(20),
	datad => \movement_ctrl_inst|clk_divider\(21),
	combout => \movement_ctrl_inst|Equal0~2_combout\);

-- Location: LCCOMB_X75_Y43_N8
\movement_ctrl_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal0~1_combout\ = (!\movement_ctrl_inst|clk_divider\(26) & (!\movement_ctrl_inst|clk_divider\(25) & (!\movement_ctrl_inst|clk_divider\(27) & !\movement_ctrl_inst|clk_divider\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(26),
	datab => \movement_ctrl_inst|clk_divider\(25),
	datac => \movement_ctrl_inst|clk_divider\(27),
	datad => \movement_ctrl_inst|clk_divider\(24),
	combout => \movement_ctrl_inst|Equal0~1_combout\);

-- Location: LCCOMB_X77_Y41_N28
\movement_ctrl_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal0~3_combout\ = (!\movement_ctrl_inst|clk_divider\(18) & (!\movement_ctrl_inst|clk_divider\(19) & (\movement_ctrl_inst|clk_divider\(17) & \movement_ctrl_inst|clk_divider\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(18),
	datab => \movement_ctrl_inst|clk_divider\(19),
	datac => \movement_ctrl_inst|clk_divider\(17),
	datad => \movement_ctrl_inst|clk_divider\(16),
	combout => \movement_ctrl_inst|Equal0~3_combout\);

-- Location: LCCOMB_X77_Y41_N2
\movement_ctrl_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal0~4_combout\ = (\movement_ctrl_inst|Equal0~0_combout\ & (\movement_ctrl_inst|Equal0~2_combout\ & (\movement_ctrl_inst|Equal0~1_combout\ & \movement_ctrl_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Equal0~0_combout\,
	datab => \movement_ctrl_inst|Equal0~2_combout\,
	datac => \movement_ctrl_inst|Equal0~1_combout\,
	datad => \movement_ctrl_inst|Equal0~3_combout\,
	combout => \movement_ctrl_inst|Equal0~4_combout\);

-- Location: LCCOMB_X77_Y45_N22
\movement_ctrl_inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal0~5_combout\ = (!\movement_ctrl_inst|clk_divider\(12) & (!\movement_ctrl_inst|clk_divider\(13) & (!\movement_ctrl_inst|clk_divider\(14) & !\movement_ctrl_inst|clk_divider\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(12),
	datab => \movement_ctrl_inst|clk_divider\(13),
	datac => \movement_ctrl_inst|clk_divider\(14),
	datad => \movement_ctrl_inst|clk_divider\(15),
	combout => \movement_ctrl_inst|Equal0~5_combout\);

-- Location: LCCOMB_X77_Y45_N10
\movement_ctrl_inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal0~6_combout\ = (\movement_ctrl_inst|clk_divider\(10) & (\movement_ctrl_inst|clk_divider\(11) & (\movement_ctrl_inst|clk_divider\(8) & !\movement_ctrl_inst|clk_divider\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|clk_divider\(10),
	datab => \movement_ctrl_inst|clk_divider\(11),
	datac => \movement_ctrl_inst|clk_divider\(8),
	datad => \movement_ctrl_inst|clk_divider\(9),
	combout => \movement_ctrl_inst|Equal0~6_combout\);

-- Location: LCCOMB_X77_Y45_N12
\movement_ctrl_inst|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal0~10_combout\ = (\movement_ctrl_inst|Equal0~9_combout\ & (\movement_ctrl_inst|Equal0~4_combout\ & (\movement_ctrl_inst|Equal0~5_combout\ & \movement_ctrl_inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Equal0~9_combout\,
	datab => \movement_ctrl_inst|Equal0~4_combout\,
	datac => \movement_ctrl_inst|Equal0~5_combout\,
	datad => \movement_ctrl_inst|Equal0~6_combout\,
	combout => \movement_ctrl_inst|Equal0~10_combout\);

-- Location: LCCOMB_X77_Y39_N14
\movement_ctrl_inst|slow_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|slow_clk~0_combout\ = \movement_ctrl_inst|slow_clk~q\ $ (\movement_ctrl_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|slow_clk~q\,
	datad => \movement_ctrl_inst|Equal0~10_combout\,
	combout => \movement_ctrl_inst|slow_clk~0_combout\);

-- Location: FF_X77_Y39_N15
\movement_ctrl_inst|slow_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|slow_clk~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|slow_clk~q\);

-- Location: CLKCTRL_G7
\movement_ctrl_inst|slow_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \movement_ctrl_inst|slow_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y39_N0
\movement_ctrl_inst|Add11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~0_combout\ = \movement_ctrl_inst|increment\(0) $ (GND)
-- \movement_ctrl_inst|Add11~1\ = CARRY(!\movement_ctrl_inst|increment\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(0),
	datad => VCC,
	combout => \movement_ctrl_inst|Add11~0_combout\,
	cout => \movement_ctrl_inst|Add11~1\);

-- Location: LCCOMB_X45_Y42_N24
\movement_ctrl_inst|STAND_SPEED[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[1]~13_combout\ = !\movement_ctrl_inst|STAND_SPEED\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \movement_ctrl_inst|STAND_SPEED\(1),
	combout => \movement_ctrl_inst|STAND_SPEED[1]~13_combout\);

-- Location: LCCOMB_X44_Y39_N20
\movement_ctrl_inst|Add11~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~20_combout\ = (\movement_ctrl_inst|increment\(10) & (\movement_ctrl_inst|Add11~19\ $ (GND))) # (!\movement_ctrl_inst|increment\(10) & (!\movement_ctrl_inst|Add11~19\ & VCC))
-- \movement_ctrl_inst|Add11~21\ = CARRY((\movement_ctrl_inst|increment\(10) & !\movement_ctrl_inst|Add11~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(10),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~19\,
	combout => \movement_ctrl_inst|Add11~20_combout\,
	cout => \movement_ctrl_inst|Add11~21\);

-- Location: LCCOMB_X44_Y39_N22
\movement_ctrl_inst|Add11~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~22_combout\ = (\movement_ctrl_inst|increment\(11) & (!\movement_ctrl_inst|Add11~21\)) # (!\movement_ctrl_inst|increment\(11) & ((\movement_ctrl_inst|Add11~21\) # (GND)))
-- \movement_ctrl_inst|Add11~23\ = CARRY((!\movement_ctrl_inst|Add11~21\) # (!\movement_ctrl_inst|increment\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(11),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~21\,
	combout => \movement_ctrl_inst|Add11~22_combout\,
	cout => \movement_ctrl_inst|Add11~23\);

-- Location: LCCOMB_X44_Y39_N24
\movement_ctrl_inst|Add11~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~24_combout\ = (\movement_ctrl_inst|increment\(12) & (\movement_ctrl_inst|Add11~23\ $ (GND))) # (!\movement_ctrl_inst|increment\(12) & (!\movement_ctrl_inst|Add11~23\ & VCC))
-- \movement_ctrl_inst|Add11~25\ = CARRY((\movement_ctrl_inst|increment\(12) & !\movement_ctrl_inst|Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(12),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~23\,
	combout => \movement_ctrl_inst|Add11~24_combout\,
	cout => \movement_ctrl_inst|Add11~25\);

-- Location: LCCOMB_X44_Y34_N6
\movement_ctrl_inst|increment~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~32_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~24_combout\,
	combout => \movement_ctrl_inst|increment~32_combout\);

-- Location: LCCOMB_X44_Y37_N8
\movement_ctrl_inst|increment[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment[18]~1_combout\ = (\movement_ctrl_inst|Equal2~10_combout\) # (\movement_ctrl_inst|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|Equal2~10_combout\,
	datad => \movement_ctrl_inst|LessThan9~2_combout\,
	combout => \movement_ctrl_inst|increment[18]~1_combout\);

-- Location: FF_X44_Y34_N7
\movement_ctrl_inst|increment[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~32_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(12));

-- Location: LCCOMB_X44_Y39_N26
\movement_ctrl_inst|Add11~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~26_combout\ = (\movement_ctrl_inst|increment\(13) & (!\movement_ctrl_inst|Add11~25\)) # (!\movement_ctrl_inst|increment\(13) & ((\movement_ctrl_inst|Add11~25\) # (GND)))
-- \movement_ctrl_inst|Add11~27\ = CARRY((!\movement_ctrl_inst|Add11~25\) # (!\movement_ctrl_inst|increment\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(13),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~25\,
	combout => \movement_ctrl_inst|Add11~26_combout\,
	cout => \movement_ctrl_inst|Add11~27\);

-- Location: LCCOMB_X44_Y34_N16
\movement_ctrl_inst|increment~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~31_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~26_combout\,
	combout => \movement_ctrl_inst|increment~31_combout\);

-- Location: FF_X44_Y34_N17
\movement_ctrl_inst|increment[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~31_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(13));

-- Location: LCCOMB_X44_Y39_N28
\movement_ctrl_inst|Add11~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~28_combout\ = (\movement_ctrl_inst|increment\(14) & (\movement_ctrl_inst|Add11~27\ $ (GND))) # (!\movement_ctrl_inst|increment\(14) & (!\movement_ctrl_inst|Add11~27\ & VCC))
-- \movement_ctrl_inst|Add11~29\ = CARRY((\movement_ctrl_inst|increment\(14) & !\movement_ctrl_inst|Add11~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(14),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~27\,
	combout => \movement_ctrl_inst|Add11~28_combout\,
	cout => \movement_ctrl_inst|Add11~29\);

-- Location: LCCOMB_X44_Y34_N26
\movement_ctrl_inst|increment~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~30_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~28_combout\,
	combout => \movement_ctrl_inst|increment~30_combout\);

-- Location: FF_X44_Y34_N27
\movement_ctrl_inst|increment[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~30_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(14));

-- Location: LCCOMB_X44_Y39_N30
\movement_ctrl_inst|Add11~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~30_combout\ = (\movement_ctrl_inst|increment\(15) & (!\movement_ctrl_inst|Add11~29\)) # (!\movement_ctrl_inst|increment\(15) & ((\movement_ctrl_inst|Add11~29\) # (GND)))
-- \movement_ctrl_inst|Add11~31\ = CARRY((!\movement_ctrl_inst|Add11~29\) # (!\movement_ctrl_inst|increment\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(15),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~29\,
	combout => \movement_ctrl_inst|Add11~30_combout\,
	cout => \movement_ctrl_inst|Add11~31\);

-- Location: LCCOMB_X44_Y34_N8
\movement_ctrl_inst|increment~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~29_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~30_combout\,
	combout => \movement_ctrl_inst|increment~29_combout\);

-- Location: FF_X44_Y34_N9
\movement_ctrl_inst|increment[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~29_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(15));

-- Location: LCCOMB_X44_Y34_N4
\movement_ctrl_inst|STAND_SPEED[11]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[11]~5_combout\ = (!\movement_ctrl_inst|increment\(12) & (!\movement_ctrl_inst|increment\(15) & (!\movement_ctrl_inst|increment\(14) & !\movement_ctrl_inst|increment\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(12),
	datab => \movement_ctrl_inst|increment\(15),
	datac => \movement_ctrl_inst|increment\(14),
	datad => \movement_ctrl_inst|increment\(13),
	combout => \movement_ctrl_inst|STAND_SPEED[11]~5_combout\);

-- Location: LCCOMB_X44_Y36_N28
\movement_ctrl_inst|STAND_SPEED[11]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[11]~6_combout\ = (!\movement_ctrl_inst|increment\(10) & (!\movement_ctrl_inst|increment\(9) & (!\movement_ctrl_inst|increment\(11) & !\movement_ctrl_inst|increment\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(10),
	datab => \movement_ctrl_inst|increment\(9),
	datac => \movement_ctrl_inst|increment\(11),
	datad => \movement_ctrl_inst|increment\(8),
	combout => \movement_ctrl_inst|STAND_SPEED[11]~6_combout\);

-- Location: LCCOMB_X44_Y39_N6
\movement_ctrl_inst|Add11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~6_combout\ = (\movement_ctrl_inst|increment\(3) & (!\movement_ctrl_inst|Add11~5\)) # (!\movement_ctrl_inst|increment\(3) & ((\movement_ctrl_inst|Add11~5\) # (GND)))
-- \movement_ctrl_inst|Add11~7\ = CARRY((!\movement_ctrl_inst|Add11~5\) # (!\movement_ctrl_inst|increment\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(3),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~5\,
	combout => \movement_ctrl_inst|Add11~6_combout\,
	cout => \movement_ctrl_inst|Add11~7\);

-- Location: LCCOMB_X44_Y39_N8
\movement_ctrl_inst|Add11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~8_combout\ = (\movement_ctrl_inst|increment\(4) & (\movement_ctrl_inst|Add11~7\ $ (GND))) # (!\movement_ctrl_inst|increment\(4) & (!\movement_ctrl_inst|Add11~7\ & VCC))
-- \movement_ctrl_inst|Add11~9\ = CARRY((\movement_ctrl_inst|increment\(4) & !\movement_ctrl_inst|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(4),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~7\,
	combout => \movement_ctrl_inst|Add11~8_combout\,
	cout => \movement_ctrl_inst|Add11~9\);

-- Location: LCCOMB_X44_Y36_N30
\movement_ctrl_inst|increment~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~8_combout\ = (\movement_ctrl_inst|LessThan9~0_combout\ & (\movement_ctrl_inst|Add11~8_combout\ & ((\movement_ctrl_inst|LessThan9~1_combout\) # (!\movement_ctrl_inst|update_ball_position~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~0_combout\,
	datab => \movement_ctrl_inst|update_ball_position~2_combout\,
	datac => \movement_ctrl_inst|LessThan9~1_combout\,
	datad => \movement_ctrl_inst|Add11~8_combout\,
	combout => \movement_ctrl_inst|increment~8_combout\);

-- Location: FF_X44_Y36_N31
\movement_ctrl_inst|increment[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~8_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(4));

-- Location: LCCOMB_X44_Y36_N14
\movement_ctrl_inst|STAND_SPEED[11]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[11]~7_combout\ = (!\movement_ctrl_inst|increment\(6) & (!\movement_ctrl_inst|increment\(5) & (!\movement_ctrl_inst|increment\(4) & !\movement_ctrl_inst|increment\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(6),
	datab => \movement_ctrl_inst|increment\(5),
	datac => \movement_ctrl_inst|increment\(4),
	datad => \movement_ctrl_inst|increment\(7),
	combout => \movement_ctrl_inst|STAND_SPEED[11]~7_combout\);

-- Location: LCCOMB_X44_Y36_N16
\movement_ctrl_inst|STAND_SPEED[11]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[11]~8_combout\ = (!\movement_ctrl_inst|increment\(3) & (\movement_ctrl_inst|increment\(1) & (\movement_ctrl_inst|increment\(0) & !\movement_ctrl_inst|increment\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(3),
	datab => \movement_ctrl_inst|increment\(1),
	datac => \movement_ctrl_inst|increment\(0),
	datad => \movement_ctrl_inst|increment\(2),
	combout => \movement_ctrl_inst|STAND_SPEED[11]~8_combout\);

-- Location: LCCOMB_X44_Y36_N10
\movement_ctrl_inst|STAND_SPEED[11]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[11]~9_combout\ = (\movement_ctrl_inst|STAND_SPEED[11]~5_combout\ & (\movement_ctrl_inst|STAND_SPEED[11]~6_combout\ & (\movement_ctrl_inst|STAND_SPEED[11]~7_combout\ & \movement_ctrl_inst|STAND_SPEED[11]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED[11]~5_combout\,
	datab => \movement_ctrl_inst|STAND_SPEED[11]~6_combout\,
	datac => \movement_ctrl_inst|STAND_SPEED[11]~7_combout\,
	datad => \movement_ctrl_inst|STAND_SPEED[11]~8_combout\,
	combout => \movement_ctrl_inst|STAND_SPEED[11]~9_combout\);

-- Location: LCCOMB_X44_Y38_N0
\movement_ctrl_inst|Add11~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~32_combout\ = (\movement_ctrl_inst|increment\(16) & (\movement_ctrl_inst|Add11~31\ $ (GND))) # (!\movement_ctrl_inst|increment\(16) & (!\movement_ctrl_inst|Add11~31\ & VCC))
-- \movement_ctrl_inst|Add11~33\ = CARRY((\movement_ctrl_inst|increment\(16) & !\movement_ctrl_inst|Add11~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(16),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~31\,
	combout => \movement_ctrl_inst|Add11~32_combout\,
	cout => \movement_ctrl_inst|Add11~33\);

-- Location: LCCOMB_X45_Y38_N2
\movement_ctrl_inst|increment~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~28_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datac => \movement_ctrl_inst|Add11~32_combout\,
	combout => \movement_ctrl_inst|increment~28_combout\);

-- Location: FF_X45_Y38_N3
\movement_ctrl_inst|increment[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~28_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(16));

-- Location: LCCOMB_X44_Y38_N2
\movement_ctrl_inst|Add11~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~34_combout\ = (\movement_ctrl_inst|increment\(17) & (!\movement_ctrl_inst|Add11~33\)) # (!\movement_ctrl_inst|increment\(17) & ((\movement_ctrl_inst|Add11~33\) # (GND)))
-- \movement_ctrl_inst|Add11~35\ = CARRY((!\movement_ctrl_inst|Add11~33\) # (!\movement_ctrl_inst|increment\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(17),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~33\,
	combout => \movement_ctrl_inst|Add11~34_combout\,
	cout => \movement_ctrl_inst|Add11~35\);

-- Location: LCCOMB_X45_Y38_N0
\movement_ctrl_inst|increment~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~27_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~34_combout\,
	combout => \movement_ctrl_inst|increment~27_combout\);

-- Location: FF_X45_Y38_N1
\movement_ctrl_inst|increment[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~27_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(17));

-- Location: LCCOMB_X44_Y38_N4
\movement_ctrl_inst|Add11~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~36_combout\ = (\movement_ctrl_inst|increment\(18) & (\movement_ctrl_inst|Add11~35\ $ (GND))) # (!\movement_ctrl_inst|increment\(18) & (!\movement_ctrl_inst|Add11~35\ & VCC))
-- \movement_ctrl_inst|Add11~37\ = CARRY((\movement_ctrl_inst|increment\(18) & !\movement_ctrl_inst|Add11~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(18),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~35\,
	combout => \movement_ctrl_inst|Add11~36_combout\,
	cout => \movement_ctrl_inst|Add11~37\);

-- Location: LCCOMB_X45_Y38_N26
\movement_ctrl_inst|increment~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~26_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datac => \movement_ctrl_inst|Add11~36_combout\,
	combout => \movement_ctrl_inst|increment~26_combout\);

-- Location: FF_X45_Y38_N27
\movement_ctrl_inst|increment[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~26_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(18));

-- Location: LCCOMB_X44_Y38_N6
\movement_ctrl_inst|Add11~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~38_combout\ = (\movement_ctrl_inst|increment\(19) & (!\movement_ctrl_inst|Add11~37\)) # (!\movement_ctrl_inst|increment\(19) & ((\movement_ctrl_inst|Add11~37\) # (GND)))
-- \movement_ctrl_inst|Add11~39\ = CARRY((!\movement_ctrl_inst|Add11~37\) # (!\movement_ctrl_inst|increment\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(19),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~37\,
	combout => \movement_ctrl_inst|Add11~38_combout\,
	cout => \movement_ctrl_inst|Add11~39\);

-- Location: LCCOMB_X45_Y38_N4
\movement_ctrl_inst|increment~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~25_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datac => \movement_ctrl_inst|Add11~38_combout\,
	combout => \movement_ctrl_inst|increment~25_combout\);

-- Location: FF_X45_Y38_N5
\movement_ctrl_inst|increment[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~25_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(19));

-- Location: LCCOMB_X44_Y38_N8
\movement_ctrl_inst|Add11~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~40_combout\ = (\movement_ctrl_inst|increment\(20) & (\movement_ctrl_inst|Add11~39\ $ (GND))) # (!\movement_ctrl_inst|increment\(20) & (!\movement_ctrl_inst|Add11~39\ & VCC))
-- \movement_ctrl_inst|Add11~41\ = CARRY((\movement_ctrl_inst|increment\(20) & !\movement_ctrl_inst|Add11~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(20),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~39\,
	combout => \movement_ctrl_inst|Add11~40_combout\,
	cout => \movement_ctrl_inst|Add11~41\);

-- Location: LCCOMB_X45_Y38_N28
\movement_ctrl_inst|increment~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~24_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~40_combout\,
	combout => \movement_ctrl_inst|increment~24_combout\);

-- Location: FF_X45_Y38_N29
\movement_ctrl_inst|increment[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~24_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(20));

-- Location: LCCOMB_X44_Y38_N10
\movement_ctrl_inst|Add11~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~42_combout\ = (\movement_ctrl_inst|increment\(21) & (!\movement_ctrl_inst|Add11~41\)) # (!\movement_ctrl_inst|increment\(21) & ((\movement_ctrl_inst|Add11~41\) # (GND)))
-- \movement_ctrl_inst|Add11~43\ = CARRY((!\movement_ctrl_inst|Add11~41\) # (!\movement_ctrl_inst|increment\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(21),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~41\,
	combout => \movement_ctrl_inst|Add11~42_combout\,
	cout => \movement_ctrl_inst|Add11~43\);

-- Location: LCCOMB_X45_Y38_N30
\movement_ctrl_inst|increment~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~23_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~42_combout\,
	combout => \movement_ctrl_inst|increment~23_combout\);

-- Location: FF_X45_Y38_N31
\movement_ctrl_inst|increment[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~23_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(21));

-- Location: LCCOMB_X44_Y38_N12
\movement_ctrl_inst|Add11~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~44_combout\ = (\movement_ctrl_inst|increment\(22) & (\movement_ctrl_inst|Add11~43\ $ (GND))) # (!\movement_ctrl_inst|increment\(22) & (!\movement_ctrl_inst|Add11~43\ & VCC))
-- \movement_ctrl_inst|Add11~45\ = CARRY((\movement_ctrl_inst|increment\(22) & !\movement_ctrl_inst|Add11~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(22),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~43\,
	combout => \movement_ctrl_inst|Add11~44_combout\,
	cout => \movement_ctrl_inst|Add11~45\);

-- Location: LCCOMB_X45_Y38_N8
\movement_ctrl_inst|increment~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~22_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~44_combout\,
	combout => \movement_ctrl_inst|increment~22_combout\);

-- Location: FF_X45_Y38_N9
\movement_ctrl_inst|increment[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~22_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(22));

-- Location: LCCOMB_X44_Y38_N14
\movement_ctrl_inst|Add11~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~46_combout\ = (\movement_ctrl_inst|increment\(23) & (!\movement_ctrl_inst|Add11~45\)) # (!\movement_ctrl_inst|increment\(23) & ((\movement_ctrl_inst|Add11~45\) # (GND)))
-- \movement_ctrl_inst|Add11~47\ = CARRY((!\movement_ctrl_inst|Add11~45\) # (!\movement_ctrl_inst|increment\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(23),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~45\,
	combout => \movement_ctrl_inst|Add11~46_combout\,
	cout => \movement_ctrl_inst|Add11~47\);

-- Location: LCCOMB_X45_Y38_N6
\movement_ctrl_inst|increment~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~21_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~46_combout\,
	combout => \movement_ctrl_inst|increment~21_combout\);

-- Location: FF_X45_Y38_N7
\movement_ctrl_inst|increment[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~21_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(23));

-- Location: LCCOMB_X45_Y38_N10
\movement_ctrl_inst|STAND_SPEED[11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[11]~2_combout\ = (!\movement_ctrl_inst|increment\(23) & (!\movement_ctrl_inst|increment\(22) & (!\movement_ctrl_inst|increment\(21) & !\movement_ctrl_inst|increment\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(23),
	datab => \movement_ctrl_inst|increment\(22),
	datac => \movement_ctrl_inst|increment\(21),
	datad => \movement_ctrl_inst|increment\(20),
	combout => \movement_ctrl_inst|STAND_SPEED[11]~2_combout\);

-- Location: LCCOMB_X44_Y38_N16
\movement_ctrl_inst|Add11~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~48_combout\ = (\movement_ctrl_inst|increment\(24) & (\movement_ctrl_inst|Add11~47\ $ (GND))) # (!\movement_ctrl_inst|increment\(24) & (!\movement_ctrl_inst|Add11~47\ & VCC))
-- \movement_ctrl_inst|Add11~49\ = CARRY((\movement_ctrl_inst|increment\(24) & !\movement_ctrl_inst|Add11~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(24),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~47\,
	combout => \movement_ctrl_inst|Add11~48_combout\,
	cout => \movement_ctrl_inst|Add11~49\);

-- Location: LCCOMB_X44_Y34_N28
\movement_ctrl_inst|increment~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~20_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~48_combout\,
	combout => \movement_ctrl_inst|increment~20_combout\);

-- Location: FF_X44_Y34_N29
\movement_ctrl_inst|increment[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~20_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(24));

-- Location: LCCOMB_X44_Y38_N18
\movement_ctrl_inst|Add11~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~50_combout\ = (\movement_ctrl_inst|increment\(25) & (!\movement_ctrl_inst|Add11~49\)) # (!\movement_ctrl_inst|increment\(25) & ((\movement_ctrl_inst|Add11~49\) # (GND)))
-- \movement_ctrl_inst|Add11~51\ = CARRY((!\movement_ctrl_inst|Add11~49\) # (!\movement_ctrl_inst|increment\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(25),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~49\,
	combout => \movement_ctrl_inst|Add11~50_combout\,
	cout => \movement_ctrl_inst|Add11~51\);

-- Location: LCCOMB_X44_Y34_N2
\movement_ctrl_inst|increment~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~19_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datac => \movement_ctrl_inst|Add11~50_combout\,
	combout => \movement_ctrl_inst|increment~19_combout\);

-- Location: FF_X44_Y34_N3
\movement_ctrl_inst|increment[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~19_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(25));

-- Location: LCCOMB_X44_Y38_N20
\movement_ctrl_inst|Add11~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~52_combout\ = (\movement_ctrl_inst|increment\(26) & (\movement_ctrl_inst|Add11~51\ $ (GND))) # (!\movement_ctrl_inst|increment\(26) & (!\movement_ctrl_inst|Add11~51\ & VCC))
-- \movement_ctrl_inst|Add11~53\ = CARRY((\movement_ctrl_inst|increment\(26) & !\movement_ctrl_inst|Add11~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(26),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~51\,
	combout => \movement_ctrl_inst|Add11~52_combout\,
	cout => \movement_ctrl_inst|Add11~53\);

-- Location: LCCOMB_X44_Y34_N12
\movement_ctrl_inst|increment~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~18_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datac => \movement_ctrl_inst|Add11~52_combout\,
	combout => \movement_ctrl_inst|increment~18_combout\);

-- Location: FF_X44_Y34_N13
\movement_ctrl_inst|increment[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~18_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(26));

-- Location: LCCOMB_X44_Y38_N22
\movement_ctrl_inst|Add11~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~54_combout\ = (\movement_ctrl_inst|increment\(27) & (!\movement_ctrl_inst|Add11~53\)) # (!\movement_ctrl_inst|increment\(27) & ((\movement_ctrl_inst|Add11~53\) # (GND)))
-- \movement_ctrl_inst|Add11~55\ = CARRY((!\movement_ctrl_inst|Add11~53\) # (!\movement_ctrl_inst|increment\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(27),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~53\,
	combout => \movement_ctrl_inst|Add11~54_combout\,
	cout => \movement_ctrl_inst|Add11~55\);

-- Location: LCCOMB_X44_Y34_N14
\movement_ctrl_inst|increment~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~17_combout\ = (\movement_ctrl_inst|Add11~54_combout\ & !\movement_ctrl_inst|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add11~54_combout\,
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	combout => \movement_ctrl_inst|increment~17_combout\);

-- Location: FF_X44_Y34_N15
\movement_ctrl_inst|increment[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~17_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(27));

-- Location: LCCOMB_X44_Y38_N24
\movement_ctrl_inst|Add11~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~56_combout\ = (\movement_ctrl_inst|increment\(28) & (\movement_ctrl_inst|Add11~55\ $ (GND))) # (!\movement_ctrl_inst|increment\(28) & (!\movement_ctrl_inst|Add11~55\ & VCC))
-- \movement_ctrl_inst|Add11~57\ = CARRY((\movement_ctrl_inst|increment\(28) & !\movement_ctrl_inst|Add11~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(28),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~55\,
	combout => \movement_ctrl_inst|Add11~56_combout\,
	cout => \movement_ctrl_inst|Add11~57\);

-- Location: LCCOMB_X45_Y38_N18
\movement_ctrl_inst|increment~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~16_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~56_combout\,
	combout => \movement_ctrl_inst|increment~16_combout\);

-- Location: FF_X45_Y38_N19
\movement_ctrl_inst|increment[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~16_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(28));

-- Location: LCCOMB_X44_Y38_N26
\movement_ctrl_inst|Add11~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~58_combout\ = (\movement_ctrl_inst|increment\(29) & (!\movement_ctrl_inst|Add11~57\)) # (!\movement_ctrl_inst|increment\(29) & ((\movement_ctrl_inst|Add11~57\) # (GND)))
-- \movement_ctrl_inst|Add11~59\ = CARRY((!\movement_ctrl_inst|Add11~57\) # (!\movement_ctrl_inst|increment\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(29),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~57\,
	combout => \movement_ctrl_inst|Add11~58_combout\,
	cout => \movement_ctrl_inst|Add11~59\);

-- Location: LCCOMB_X45_Y38_N20
\movement_ctrl_inst|increment~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~15_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datac => \movement_ctrl_inst|Add11~58_combout\,
	combout => \movement_ctrl_inst|increment~15_combout\);

-- Location: FF_X45_Y38_N21
\movement_ctrl_inst|increment[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~15_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(29));

-- Location: LCCOMB_X44_Y38_N28
\movement_ctrl_inst|Add11~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~60_combout\ = (\movement_ctrl_inst|increment\(30) & (\movement_ctrl_inst|Add11~59\ $ (GND))) # (!\movement_ctrl_inst|increment\(30) & (!\movement_ctrl_inst|Add11~59\ & VCC))
-- \movement_ctrl_inst|Add11~61\ = CARRY((\movement_ctrl_inst|increment\(30) & !\movement_ctrl_inst|Add11~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(30),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~59\,
	combout => \movement_ctrl_inst|Add11~60_combout\,
	cout => \movement_ctrl_inst|Add11~61\);

-- Location: LCCOMB_X45_Y38_N22
\movement_ctrl_inst|increment~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~14_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~60_combout\,
	combout => \movement_ctrl_inst|increment~14_combout\);

-- Location: FF_X45_Y38_N23
\movement_ctrl_inst|increment[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~14_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(30));

-- Location: LCCOMB_X44_Y38_N30
\movement_ctrl_inst|Add11~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~62_combout\ = \movement_ctrl_inst|increment\(31) $ (\movement_ctrl_inst|Add11~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(31),
	cin => \movement_ctrl_inst|Add11~61\,
	combout => \movement_ctrl_inst|Add11~62_combout\);

-- Location: LCCOMB_X45_Y38_N12
\movement_ctrl_inst|increment~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~13_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~62_combout\,
	combout => \movement_ctrl_inst|increment~13_combout\);

-- Location: FF_X45_Y38_N13
\movement_ctrl_inst|increment[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~13_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(31));

-- Location: LCCOMB_X45_Y38_N24
\movement_ctrl_inst|STAND_SPEED[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[11]~0_combout\ = (!\movement_ctrl_inst|increment\(31) & (!\movement_ctrl_inst|increment\(29) & (!\movement_ctrl_inst|increment\(30) & !\movement_ctrl_inst|increment\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(31),
	datab => \movement_ctrl_inst|increment\(29),
	datac => \movement_ctrl_inst|increment\(30),
	datad => \movement_ctrl_inst|increment\(28),
	combout => \movement_ctrl_inst|STAND_SPEED[11]~0_combout\);

-- Location: LCCOMB_X44_Y34_N18
\movement_ctrl_inst|STAND_SPEED[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[11]~1_combout\ = (!\movement_ctrl_inst|increment\(26) & (!\movement_ctrl_inst|increment\(25) & (!\movement_ctrl_inst|increment\(27) & !\movement_ctrl_inst|increment\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(26),
	datab => \movement_ctrl_inst|increment\(25),
	datac => \movement_ctrl_inst|increment\(27),
	datad => \movement_ctrl_inst|increment\(24),
	combout => \movement_ctrl_inst|STAND_SPEED[11]~1_combout\);

-- Location: LCCOMB_X45_Y38_N16
\movement_ctrl_inst|STAND_SPEED[11]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[11]~3_combout\ = (!\movement_ctrl_inst|increment\(18) & (!\movement_ctrl_inst|increment\(17) & (!\movement_ctrl_inst|increment\(19) & !\movement_ctrl_inst|increment\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(18),
	datab => \movement_ctrl_inst|increment\(17),
	datac => \movement_ctrl_inst|increment\(19),
	datad => \movement_ctrl_inst|increment\(16),
	combout => \movement_ctrl_inst|STAND_SPEED[11]~3_combout\);

-- Location: LCCOMB_X45_Y38_N14
\movement_ctrl_inst|STAND_SPEED[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[11]~4_combout\ = (\movement_ctrl_inst|STAND_SPEED[11]~2_combout\ & (\movement_ctrl_inst|STAND_SPEED[11]~0_combout\ & (\movement_ctrl_inst|STAND_SPEED[11]~1_combout\ & \movement_ctrl_inst|STAND_SPEED[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED[11]~2_combout\,
	datab => \movement_ctrl_inst|STAND_SPEED[11]~0_combout\,
	datac => \movement_ctrl_inst|STAND_SPEED[11]~1_combout\,
	datad => \movement_ctrl_inst|STAND_SPEED[11]~3_combout\,
	combout => \movement_ctrl_inst|STAND_SPEED[11]~4_combout\);

-- Location: LCCOMB_X45_Y51_N6
\movement_ctrl_inst|STAND_SPEED[11]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[11]~10_combout\ = (\movement_ctrl_inst|STAND_SPEED[11]~9_combout\ & (\movement_ctrl_inst|STAND_SPEED[11]~4_combout\ & (\movement_ctrl_inst|update_ball_position~6_combout\ & !\Switch2|r_Switch_State~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED[11]~9_combout\,
	datab => \movement_ctrl_inst|STAND_SPEED[11]~4_combout\,
	datac => \movement_ctrl_inst|update_ball_position~6_combout\,
	datad => \Switch2|r_Switch_State~q\,
	combout => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\);

-- Location: FF_X45_Y41_N5
\movement_ctrl_inst|STAND_SPEED[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	asdata => \movement_ctrl_inst|STAND_SPEED[1]~13_combout\,
	sload => VCC,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(1));

-- Location: LCCOMB_X45_Y45_N2
\movement_ctrl_inst|Add10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~0_combout\ = (\movement_ctrl_inst|STAND_SPEED\(1) & (\movement_ctrl_inst|STAND_SPEED\(2) $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(1) & (!\movement_ctrl_inst|STAND_SPEED\(2) & VCC))
-- \movement_ctrl_inst|Add10~1\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(1) & !\movement_ctrl_inst|STAND_SPEED\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(1),
	datab => \movement_ctrl_inst|STAND_SPEED\(2),
	datad => VCC,
	combout => \movement_ctrl_inst|Add10~0_combout\,
	cout => \movement_ctrl_inst|Add10~1\);

-- Location: LCCOMB_X46_Y45_N28
\movement_ctrl_inst|STAND_SPEED[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[2]~12_combout\ = !\movement_ctrl_inst|Add10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \movement_ctrl_inst|Add10~0_combout\,
	combout => \movement_ctrl_inst|STAND_SPEED[2]~12_combout\);

-- Location: FF_X46_Y45_N29
\movement_ctrl_inst|STAND_SPEED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|STAND_SPEED[2]~12_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(2));

-- Location: LCCOMB_X45_Y45_N4
\movement_ctrl_inst|Add10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~2_combout\ = (\movement_ctrl_inst|STAND_SPEED\(3) & (\movement_ctrl_inst|Add10~1\ & VCC)) # (!\movement_ctrl_inst|STAND_SPEED\(3) & (!\movement_ctrl_inst|Add10~1\))
-- \movement_ctrl_inst|Add10~3\ = CARRY((!\movement_ctrl_inst|STAND_SPEED\(3) & !\movement_ctrl_inst|Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(3),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~1\,
	combout => \movement_ctrl_inst|Add10~2_combout\,
	cout => \movement_ctrl_inst|Add10~3\);

-- Location: FF_X45_Y45_N5
\movement_ctrl_inst|STAND_SPEED[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~2_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(3));

-- Location: LCCOMB_X45_Y45_N6
\movement_ctrl_inst|Add10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~4_combout\ = (\movement_ctrl_inst|STAND_SPEED\(4) & (!\movement_ctrl_inst|Add10~3\ & VCC)) # (!\movement_ctrl_inst|STAND_SPEED\(4) & (\movement_ctrl_inst|Add10~3\ $ (GND)))
-- \movement_ctrl_inst|Add10~5\ = CARRY((!\movement_ctrl_inst|STAND_SPEED\(4) & !\movement_ctrl_inst|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(4),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~3\,
	combout => \movement_ctrl_inst|Add10~4_combout\,
	cout => \movement_ctrl_inst|Add10~5\);

-- Location: LCCOMB_X46_Y45_N30
\movement_ctrl_inst|STAND_SPEED[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|STAND_SPEED[4]~11_combout\ = !\movement_ctrl_inst|Add10~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|Add10~4_combout\,
	combout => \movement_ctrl_inst|STAND_SPEED[4]~11_combout\);

-- Location: FF_X46_Y45_N31
\movement_ctrl_inst|STAND_SPEED[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|STAND_SPEED[4]~11_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(4));

-- Location: LCCOMB_X45_Y45_N8
\movement_ctrl_inst|Add10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~6_combout\ = (\movement_ctrl_inst|STAND_SPEED\(5) & (!\movement_ctrl_inst|Add10~5\)) # (!\movement_ctrl_inst|STAND_SPEED\(5) & ((\movement_ctrl_inst|Add10~5\) # (GND)))
-- \movement_ctrl_inst|Add10~7\ = CARRY((!\movement_ctrl_inst|Add10~5\) # (!\movement_ctrl_inst|STAND_SPEED\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(5),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~5\,
	combout => \movement_ctrl_inst|Add10~6_combout\,
	cout => \movement_ctrl_inst|Add10~7\);

-- Location: FF_X45_Y45_N9
\movement_ctrl_inst|STAND_SPEED[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~6_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(5));

-- Location: LCCOMB_X45_Y45_N10
\movement_ctrl_inst|Add10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~8_combout\ = (\movement_ctrl_inst|STAND_SPEED\(6) & (\movement_ctrl_inst|Add10~7\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(6) & (!\movement_ctrl_inst|Add10~7\ & VCC))
-- \movement_ctrl_inst|Add10~9\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(6) & !\movement_ctrl_inst|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(6),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~7\,
	combout => \movement_ctrl_inst|Add10~8_combout\,
	cout => \movement_ctrl_inst|Add10~9\);

-- Location: FF_X45_Y45_N11
\movement_ctrl_inst|STAND_SPEED[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~8_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(6));

-- Location: LCCOMB_X45_Y45_N12
\movement_ctrl_inst|Add10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~10_combout\ = (\movement_ctrl_inst|STAND_SPEED\(7) & (!\movement_ctrl_inst|Add10~9\)) # (!\movement_ctrl_inst|STAND_SPEED\(7) & ((\movement_ctrl_inst|Add10~9\) # (GND)))
-- \movement_ctrl_inst|Add10~11\ = CARRY((!\movement_ctrl_inst|Add10~9\) # (!\movement_ctrl_inst|STAND_SPEED\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(7),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~9\,
	combout => \movement_ctrl_inst|Add10~10_combout\,
	cout => \movement_ctrl_inst|Add10~11\);

-- Location: FF_X45_Y45_N13
\movement_ctrl_inst|STAND_SPEED[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~10_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(7));

-- Location: LCCOMB_X45_Y45_N14
\movement_ctrl_inst|Add10~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~12_combout\ = (\movement_ctrl_inst|STAND_SPEED\(8) & (\movement_ctrl_inst|Add10~11\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(8) & (!\movement_ctrl_inst|Add10~11\ & VCC))
-- \movement_ctrl_inst|Add10~13\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(8) & !\movement_ctrl_inst|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(8),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~11\,
	combout => \movement_ctrl_inst|Add10~12_combout\,
	cout => \movement_ctrl_inst|Add10~13\);

-- Location: FF_X45_Y45_N15
\movement_ctrl_inst|STAND_SPEED[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~12_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(8));

-- Location: IOIBUF_X49_Y54_N29
\push_button_right~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push_button_right,
	o => \push_button_right~input_o\);

-- Location: LCCOMB_X50_Y38_N6
\Switchright|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~0_combout\ = \Switchright|r_Debounce_Count\(0) $ (VCC)
-- \Switchright|Add0~1\ = CARRY(\Switchright|r_Debounce_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(0),
	datad => VCC,
	combout => \Switchright|Add0~0_combout\,
	cout => \Switchright|Add0~1\);

-- Location: LCCOMB_X50_Y38_N4
\Switchright|r_Debounce_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[0]~13_combout\ = (\Switchright|Add0~0_combout\ & (\Switchright|p_Debounce~1_combout\ & !\Switchright|r_Switch_State~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|Add0~0_combout\,
	datab => \Switchright|p_Debounce~1_combout\,
	datac => \Switchright|r_Switch_State~7_combout\,
	combout => \Switchright|r_Debounce_Count[0]~13_combout\);

-- Location: FF_X50_Y38_N5
\Switchright|r_Debounce_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(0));

-- Location: LCCOMB_X50_Y38_N8
\Switchright|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~2_combout\ = (\Switchright|r_Debounce_Count\(1) & (!\Switchright|Add0~1\)) # (!\Switchright|r_Debounce_Count\(1) & ((\Switchright|Add0~1\) # (GND)))
-- \Switchright|Add0~3\ = CARRY((!\Switchright|Add0~1\) # (!\Switchright|r_Debounce_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(1),
	datad => VCC,
	cin => \Switchright|Add0~1\,
	combout => \Switchright|Add0~2_combout\,
	cout => \Switchright|Add0~3\);

-- Location: LCCOMB_X51_Y38_N4
\Switchright|r_Debounce_Count[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[1]~14_combout\ = (\Switchright|Add0~2_combout\ & (!\Switchright|r_Switch_State~7_combout\ & \Switchright|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|Add0~2_combout\,
	datab => \Switchright|r_Switch_State~7_combout\,
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[1]~14_combout\);

-- Location: FF_X51_Y38_N5
\Switchright|r_Debounce_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(1));

-- Location: LCCOMB_X50_Y38_N10
\Switchright|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~4_combout\ = (\Switchright|r_Debounce_Count\(2) & (\Switchright|Add0~3\ $ (GND))) # (!\Switchright|r_Debounce_Count\(2) & (!\Switchright|Add0~3\ & VCC))
-- \Switchright|Add0~5\ = CARRY((\Switchright|r_Debounce_Count\(2) & !\Switchright|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(2),
	datad => VCC,
	cin => \Switchright|Add0~3\,
	combout => \Switchright|Add0~4_combout\,
	cout => \Switchright|Add0~5\);

-- Location: LCCOMB_X51_Y38_N26
\Switchright|r_Debounce_Count[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[2]~15_combout\ = (\Switchright|Add0~4_combout\ & (!\Switchright|r_Switch_State~7_combout\ & \Switchright|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|Add0~4_combout\,
	datab => \Switchright|r_Switch_State~7_combout\,
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[2]~15_combout\);

-- Location: FF_X51_Y38_N27
\Switchright|r_Debounce_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(2));

-- Location: LCCOMB_X50_Y38_N12
\Switchright|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~6_combout\ = (\Switchright|r_Debounce_Count\(3) & (!\Switchright|Add0~5\)) # (!\Switchright|r_Debounce_Count\(3) & ((\Switchright|Add0~5\) # (GND)))
-- \Switchright|Add0~7\ = CARRY((!\Switchright|Add0~5\) # (!\Switchright|r_Debounce_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(3),
	datad => VCC,
	cin => \Switchright|Add0~5\,
	combout => \Switchright|Add0~6_combout\,
	cout => \Switchright|Add0~7\);

-- Location: LCCOMB_X50_Y38_N2
\Switchright|r_Debounce_Count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[3]~16_combout\ = (\Switchright|Add0~6_combout\ & (\Switchright|p_Debounce~1_combout\ & !\Switchright|r_Switch_State~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|Add0~6_combout\,
	datab => \Switchright|p_Debounce~1_combout\,
	datac => \Switchright|r_Switch_State~7_combout\,
	combout => \Switchright|r_Debounce_Count[3]~16_combout\);

-- Location: FF_X50_Y38_N3
\Switchright|r_Debounce_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(3));

-- Location: LCCOMB_X50_Y38_N14
\Switchright|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~8_combout\ = (\Switchright|r_Debounce_Count\(4) & (\Switchright|Add0~7\ $ (GND))) # (!\Switchright|r_Debounce_Count\(4) & (!\Switchright|Add0~7\ & VCC))
-- \Switchright|Add0~9\ = CARRY((\Switchright|r_Debounce_Count\(4) & !\Switchright|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(4),
	datad => VCC,
	cin => \Switchright|Add0~7\,
	combout => \Switchright|Add0~8_combout\,
	cout => \Switchright|Add0~9\);

-- Location: LCCOMB_X50_Y39_N8
\Switchright|r_Debounce_Count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[4]~18_combout\ = (\Switchright|Add0~8_combout\ & (!\Switchright|r_Switch_State~7_combout\ & \Switchright|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|Add0~8_combout\,
	datac => \Switchright|r_Switch_State~7_combout\,
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[4]~18_combout\);

-- Location: FF_X50_Y39_N9
\Switchright|r_Debounce_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(4));

-- Location: LCCOMB_X50_Y38_N16
\Switchright|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~10_combout\ = (\Switchright|r_Debounce_Count\(5) & (!\Switchright|Add0~9\)) # (!\Switchright|r_Debounce_Count\(5) & ((\Switchright|Add0~9\) # (GND)))
-- \Switchright|Add0~11\ = CARRY((!\Switchright|Add0~9\) # (!\Switchright|r_Debounce_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(5),
	datad => VCC,
	cin => \Switchright|Add0~9\,
	combout => \Switchright|Add0~10_combout\,
	cout => \Switchright|Add0~11\);

-- Location: LCCOMB_X50_Y39_N30
\Switchright|r_Debounce_Count[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[5]~19_combout\ = (\Switchright|Add0~10_combout\ & (!\Switchright|r_Switch_State~7_combout\ & \Switchright|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|Add0~10_combout\,
	datac => \Switchright|r_Switch_State~7_combout\,
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[5]~19_combout\);

-- Location: FF_X50_Y39_N31
\Switchright|r_Debounce_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(5));

-- Location: LCCOMB_X50_Y38_N18
\Switchright|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~12_combout\ = (\Switchright|r_Debounce_Count\(6) & (\Switchright|Add0~11\ $ (GND))) # (!\Switchright|r_Debounce_Count\(6) & (!\Switchright|Add0~11\ & VCC))
-- \Switchright|Add0~13\ = CARRY((\Switchright|r_Debounce_Count\(6) & !\Switchright|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(6),
	datad => VCC,
	cin => \Switchright|Add0~11\,
	combout => \Switchright|Add0~12_combout\,
	cout => \Switchright|Add0~13\);

-- Location: LCCOMB_X50_Y39_N16
\Switchright|r_Debounce_Count[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[6]~20_combout\ = (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|Add0~12_combout\ & \Switchright|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Switch_State~7_combout\,
	datac => \Switchright|Add0~12_combout\,
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[6]~20_combout\);

-- Location: FF_X50_Y39_N17
\Switchright|r_Debounce_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(6));

-- Location: LCCOMB_X50_Y38_N20
\Switchright|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~14_combout\ = (\Switchright|r_Debounce_Count\(7) & (!\Switchright|Add0~13\)) # (!\Switchright|r_Debounce_Count\(7) & ((\Switchright|Add0~13\) # (GND)))
-- \Switchright|Add0~15\ = CARRY((!\Switchright|Add0~13\) # (!\Switchright|r_Debounce_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(7),
	datad => VCC,
	cin => \Switchright|Add0~13\,
	combout => \Switchright|Add0~14_combout\,
	cout => \Switchright|Add0~15\);

-- Location: LCCOMB_X50_Y39_N10
\Switchright|r_Debounce_Count[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[7]~17_combout\ = (\Switchright|r_Switch_State~7_combout\ & (((\Switchright|r_Debounce_Count\(7))))) # (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|Add0~14_combout\ & ((\Switchright|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|Add0~14_combout\,
	datab => \Switchright|r_Switch_State~7_combout\,
	datac => \Switchright|r_Debounce_Count\(7),
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[7]~17_combout\);

-- Location: FF_X50_Y39_N11
\Switchright|r_Debounce_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(7));

-- Location: LCCOMB_X50_Y38_N22
\Switchright|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~16_combout\ = (\Switchright|r_Debounce_Count\(8) & (\Switchright|Add0~15\ $ (GND))) # (!\Switchright|r_Debounce_Count\(8) & (!\Switchright|Add0~15\ & VCC))
-- \Switchright|Add0~17\ = CARRY((\Switchright|r_Debounce_Count\(8) & !\Switchright|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(8),
	datad => VCC,
	cin => \Switchright|Add0~15\,
	combout => \Switchright|Add0~16_combout\,
	cout => \Switchright|Add0~17\);

-- Location: LCCOMB_X51_Y38_N18
\Switchright|r_Debounce_Count[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[8]~9_combout\ = (\Switchright|p_Debounce~1_combout\ & (!\Switchright|r_Switch_State~7_combout\ & \Switchright|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|p_Debounce~1_combout\,
	datab => \Switchright|r_Switch_State~7_combout\,
	datad => \Switchright|Add0~16_combout\,
	combout => \Switchright|r_Debounce_Count[8]~9_combout\);

-- Location: FF_X51_Y38_N19
\Switchright|r_Debounce_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(8));

-- Location: LCCOMB_X50_Y38_N24
\Switchright|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~18_combout\ = (\Switchright|r_Debounce_Count\(9) & (!\Switchright|Add0~17\)) # (!\Switchright|r_Debounce_Count\(9) & ((\Switchright|Add0~17\) # (GND)))
-- \Switchright|Add0~19\ = CARRY((!\Switchright|Add0~17\) # (!\Switchright|r_Debounce_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(9),
	datad => VCC,
	cin => \Switchright|Add0~17\,
	combout => \Switchright|Add0~18_combout\,
	cout => \Switchright|Add0~19\);

-- Location: LCCOMB_X51_Y38_N0
\Switchright|r_Debounce_Count[9]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[9]~10_combout\ = (\Switchright|p_Debounce~1_combout\ & (!\Switchright|r_Switch_State~7_combout\ & \Switchright|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|p_Debounce~1_combout\,
	datab => \Switchright|r_Switch_State~7_combout\,
	datad => \Switchright|Add0~18_combout\,
	combout => \Switchright|r_Debounce_Count[9]~10_combout\);

-- Location: FF_X51_Y38_N1
\Switchright|r_Debounce_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(9));

-- Location: LCCOMB_X50_Y38_N26
\Switchright|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~20_combout\ = (\Switchright|r_Debounce_Count\(10) & (\Switchright|Add0~19\ $ (GND))) # (!\Switchright|r_Debounce_Count\(10) & (!\Switchright|Add0~19\ & VCC))
-- \Switchright|Add0~21\ = CARRY((\Switchright|r_Debounce_Count\(10) & !\Switchright|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(10),
	datad => VCC,
	cin => \Switchright|Add0~19\,
	combout => \Switchright|Add0~20_combout\,
	cout => \Switchright|Add0~21\);

-- Location: LCCOMB_X51_Y38_N2
\Switchright|r_Debounce_Count[10]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[10]~11_combout\ = (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|Add0~20_combout\ & \Switchright|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Switch_State~7_combout\,
	datac => \Switchright|Add0~20_combout\,
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[10]~11_combout\);

-- Location: FF_X51_Y38_N3
\Switchright|r_Debounce_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(10));

-- Location: LCCOMB_X50_Y38_N28
\Switchright|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~22_combout\ = (\Switchright|r_Debounce_Count\(11) & (!\Switchright|Add0~21\)) # (!\Switchright|r_Debounce_Count\(11) & ((\Switchright|Add0~21\) # (GND)))
-- \Switchright|Add0~23\ = CARRY((!\Switchright|Add0~21\) # (!\Switchright|r_Debounce_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(11),
	datad => VCC,
	cin => \Switchright|Add0~21\,
	combout => \Switchright|Add0~22_combout\,
	cout => \Switchright|Add0~23\);

-- Location: LCCOMB_X51_Y38_N8
\Switchright|r_Debounce_Count[11]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[11]~12_combout\ = (\Switchright|p_Debounce~1_combout\ & (!\Switchright|r_Switch_State~7_combout\ & \Switchright|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|p_Debounce~1_combout\,
	datab => \Switchright|r_Switch_State~7_combout\,
	datad => \Switchright|Add0~22_combout\,
	combout => \Switchright|r_Debounce_Count[11]~12_combout\);

-- Location: FF_X51_Y38_N9
\Switchright|r_Debounce_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(11));

-- Location: LCCOMB_X50_Y38_N30
\Switchright|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~24_combout\ = (\Switchright|r_Debounce_Count\(12) & (\Switchright|Add0~23\ $ (GND))) # (!\Switchright|r_Debounce_Count\(12) & (!\Switchright|Add0~23\ & VCC))
-- \Switchright|Add0~25\ = CARRY((\Switchright|r_Debounce_Count\(12) & !\Switchright|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(12),
	datad => VCC,
	cin => \Switchright|Add0~23\,
	combout => \Switchright|Add0~24_combout\,
	cout => \Switchright|Add0~25\);

-- Location: LCCOMB_X51_Y38_N20
\Switchright|r_Debounce_Count[12]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[12]~5_combout\ = (\Switchright|r_Switch_State~7_combout\ & (((\Switchright|r_Debounce_Count\(12))))) # (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|p_Debounce~1_combout\ & ((\Switchright|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|p_Debounce~1_combout\,
	datab => \Switchright|r_Switch_State~7_combout\,
	datac => \Switchright|r_Debounce_Count\(12),
	datad => \Switchright|Add0~24_combout\,
	combout => \Switchright|r_Debounce_Count[12]~5_combout\);

-- Location: FF_X51_Y38_N21
\Switchright|r_Debounce_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[12]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(12));

-- Location: LCCOMB_X50_Y37_N0
\Switchright|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~26_combout\ = (\Switchright|r_Debounce_Count\(13) & (!\Switchright|Add0~25\)) # (!\Switchright|r_Debounce_Count\(13) & ((\Switchright|Add0~25\) # (GND)))
-- \Switchright|Add0~27\ = CARRY((!\Switchright|Add0~25\) # (!\Switchright|r_Debounce_Count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(13),
	datad => VCC,
	cin => \Switchright|Add0~25\,
	combout => \Switchright|Add0~26_combout\,
	cout => \Switchright|Add0~27\);

-- Location: LCCOMB_X51_Y38_N30
\Switchright|r_Debounce_Count[13]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[13]~6_combout\ = (\Switchright|r_Switch_State~7_combout\ & (((\Switchright|r_Debounce_Count\(13))))) # (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|p_Debounce~1_combout\ & ((\Switchright|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|p_Debounce~1_combout\,
	datab => \Switchright|r_Switch_State~7_combout\,
	datac => \Switchright|r_Debounce_Count\(13),
	datad => \Switchright|Add0~26_combout\,
	combout => \Switchright|r_Debounce_Count[13]~6_combout\);

-- Location: FF_X51_Y38_N31
\Switchright|r_Debounce_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(13));

-- Location: LCCOMB_X50_Y37_N2
\Switchright|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~28_combout\ = (\Switchright|r_Debounce_Count\(14) & (\Switchright|Add0~27\ $ (GND))) # (!\Switchright|r_Debounce_Count\(14) & (!\Switchright|Add0~27\ & VCC))
-- \Switchright|Add0~29\ = CARRY((\Switchright|r_Debounce_Count\(14) & !\Switchright|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(14),
	datad => VCC,
	cin => \Switchright|Add0~27\,
	combout => \Switchright|Add0~28_combout\,
	cout => \Switchright|Add0~29\);

-- Location: LCCOMB_X51_Y38_N16
\Switchright|r_Debounce_Count[14]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[14]~7_combout\ = (\Switchright|r_Switch_State~7_combout\ & (((\Switchright|r_Debounce_Count\(14))))) # (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|p_Debounce~1_combout\ & (\Switchright|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|p_Debounce~1_combout\,
	datab => \Switchright|Add0~28_combout\,
	datac => \Switchright|r_Debounce_Count\(14),
	datad => \Switchright|r_Switch_State~7_combout\,
	combout => \Switchright|r_Debounce_Count[14]~7_combout\);

-- Location: FF_X51_Y38_N17
\Switchright|r_Debounce_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[14]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(14));

-- Location: LCCOMB_X50_Y37_N4
\Switchright|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~30_combout\ = (\Switchright|r_Debounce_Count\(15) & (!\Switchright|Add0~29\)) # (!\Switchright|r_Debounce_Count\(15) & ((\Switchright|Add0~29\) # (GND)))
-- \Switchright|Add0~31\ = CARRY((!\Switchright|Add0~29\) # (!\Switchright|r_Debounce_Count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(15),
	datad => VCC,
	cin => \Switchright|Add0~29\,
	combout => \Switchright|Add0~30_combout\,
	cout => \Switchright|Add0~31\);

-- Location: LCCOMB_X51_Y38_N22
\Switchright|r_Debounce_Count[15]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[15]~8_combout\ = (\Switchright|r_Switch_State~7_combout\ & (((\Switchright|r_Debounce_Count\(15))))) # (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|p_Debounce~1_combout\ & (\Switchright|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|p_Debounce~1_combout\,
	datab => \Switchright|Add0~30_combout\,
	datac => \Switchright|r_Debounce_Count\(15),
	datad => \Switchright|r_Switch_State~7_combout\,
	combout => \Switchright|r_Debounce_Count[15]~8_combout\);

-- Location: FF_X51_Y38_N23
\Switchright|r_Debounce_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(15));

-- Location: LCCOMB_X50_Y37_N6
\Switchright|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~32_combout\ = (\Switchright|r_Debounce_Count\(16) & (\Switchright|Add0~31\ $ (GND))) # (!\Switchright|r_Debounce_Count\(16) & (!\Switchright|Add0~31\ & VCC))
-- \Switchright|Add0~33\ = CARRY((\Switchright|r_Debounce_Count\(16) & !\Switchright|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(16),
	datad => VCC,
	cin => \Switchright|Add0~31\,
	combout => \Switchright|Add0~32_combout\,
	cout => \Switchright|Add0~33\);

-- Location: LCCOMB_X50_Y39_N26
\Switchright|r_Debounce_Count[16]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[16]~22_combout\ = (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|Add0~32_combout\ & \Switchright|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Switch_State~7_combout\,
	datac => \Switchright|Add0~32_combout\,
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[16]~22_combout\);

-- Location: FF_X50_Y39_N27
\Switchright|r_Debounce_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(16));

-- Location: LCCOMB_X50_Y37_N8
\Switchright|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~34_combout\ = (\Switchright|r_Debounce_Count\(17) & (!\Switchright|Add0~33\)) # (!\Switchright|r_Debounce_Count\(17) & ((\Switchright|Add0~33\) # (GND)))
-- \Switchright|Add0~35\ = CARRY((!\Switchright|Add0~33\) # (!\Switchright|r_Debounce_Count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(17),
	datad => VCC,
	cin => \Switchright|Add0~33\,
	combout => \Switchright|Add0~34_combout\,
	cout => \Switchright|Add0~35\);

-- Location: LCCOMB_X50_Y39_N28
\Switchright|r_Debounce_Count[17]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[17]~21_combout\ = (\Switchright|r_Switch_State~7_combout\ & (((\Switchright|r_Debounce_Count\(17))))) # (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|Add0~34_combout\ & ((\Switchright|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|Add0~34_combout\,
	datab => \Switchright|r_Switch_State~7_combout\,
	datac => \Switchright|r_Debounce_Count\(17),
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[17]~21_combout\);

-- Location: FF_X50_Y39_N29
\Switchright|r_Debounce_Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[17]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(17));

-- Location: LCCOMB_X50_Y37_N10
\Switchright|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~36_combout\ = (\Switchright|r_Debounce_Count\(18) & (\Switchright|Add0~35\ $ (GND))) # (!\Switchright|r_Debounce_Count\(18) & (!\Switchright|Add0~35\ & VCC))
-- \Switchright|Add0~37\ = CARRY((\Switchright|r_Debounce_Count\(18) & !\Switchright|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(18),
	datad => VCC,
	cin => \Switchright|Add0~35\,
	combout => \Switchright|Add0~36_combout\,
	cout => \Switchright|Add0~37\);

-- Location: LCCOMB_X50_Y39_N0
\Switchright|r_Debounce_Count[18]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[18]~23_combout\ = (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|Add0~36_combout\ & \Switchright|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Switch_State~7_combout\,
	datac => \Switchright|Add0~36_combout\,
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[18]~23_combout\);

-- Location: FF_X50_Y39_N1
\Switchright|r_Debounce_Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[18]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(18));

-- Location: LCCOMB_X51_Y38_N6
\Switchright|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|LessThan0~0_combout\ = (!\Switchright|r_Debounce_Count\(10) & (!\Switchright|r_Debounce_Count\(8) & (!\Switchright|r_Debounce_Count\(11) & !\Switchright|r_Debounce_Count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(10),
	datab => \Switchright|r_Debounce_Count\(8),
	datac => \Switchright|r_Debounce_Count\(11),
	datad => \Switchright|r_Debounce_Count\(9),
	combout => \Switchright|LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y38_N24
\Switchright|r_Switch_State~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Switch_State~2_combout\ = (\Switchright|r_Debounce_Count\(13) & (\Switchright|r_Debounce_Count\(14) & (\Switchright|r_Debounce_Count\(15) & \Switchright|r_Debounce_Count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(13),
	datab => \Switchright|r_Debounce_Count\(14),
	datac => \Switchright|r_Debounce_Count\(15),
	datad => \Switchright|r_Debounce_Count\(12),
	combout => \Switchright|r_Switch_State~2_combout\);

-- Location: LCCOMB_X50_Y39_N14
\Switchright|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|LessThan0~1_combout\ = (!\Switchright|r_Debounce_Count\(16) & (((\Switchright|LessThan0~0_combout\ & !\Switchright|r_Debounce_Count\(7))) # (!\Switchright|r_Switch_State~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(16),
	datab => \Switchright|LessThan0~0_combout\,
	datac => \Switchright|r_Switch_State~2_combout\,
	datad => \Switchright|r_Debounce_Count\(7),
	combout => \Switchright|LessThan0~1_combout\);

-- Location: LCCOMB_X50_Y37_N12
\Switchright|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~38_combout\ = (\Switchright|r_Debounce_Count\(19) & (!\Switchright|Add0~37\)) # (!\Switchright|r_Debounce_Count\(19) & ((\Switchright|Add0~37\) # (GND)))
-- \Switchright|Add0~39\ = CARRY((!\Switchright|Add0~37\) # (!\Switchright|r_Debounce_Count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(19),
	datad => VCC,
	cin => \Switchright|Add0~37\,
	combout => \Switchright|Add0~38_combout\,
	cout => \Switchright|Add0~39\);

-- Location: LCCOMB_X50_Y37_N28
\Switchright|r_Debounce_Count[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[19]~1_combout\ = (\Switchright|r_Switch_State~7_combout\ & (((\Switchright|r_Debounce_Count\(19))))) # (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|Add0~38_combout\ & ((\Switchright|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|Add0~38_combout\,
	datab => \Switchright|r_Switch_State~7_combout\,
	datac => \Switchright|r_Debounce_Count\(19),
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[19]~1_combout\);

-- Location: FF_X50_Y37_N29
\Switchright|r_Debounce_Count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(19));

-- Location: LCCOMB_X50_Y37_N14
\Switchright|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~40_combout\ = (\Switchright|r_Debounce_Count\(20) & (\Switchright|Add0~39\ $ (GND))) # (!\Switchright|r_Debounce_Count\(20) & (!\Switchright|Add0~39\ & VCC))
-- \Switchright|Add0~41\ = CARRY((\Switchright|r_Debounce_Count\(20) & !\Switchright|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(20),
	datad => VCC,
	cin => \Switchright|Add0~39\,
	combout => \Switchright|Add0~40_combout\,
	cout => \Switchright|Add0~41\);

-- Location: LCCOMB_X51_Y38_N12
\Switchright|r_Debounce_Count[20]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[20]~2_combout\ = (\Switchright|r_Switch_State~7_combout\ & (((\Switchright|r_Debounce_Count\(20))))) # (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|Add0~40_combout\ & ((\Switchright|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|Add0~40_combout\,
	datab => \Switchright|r_Switch_State~7_combout\,
	datac => \Switchright|r_Debounce_Count\(20),
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[20]~2_combout\);

-- Location: FF_X51_Y38_N13
\Switchright|r_Debounce_Count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(20));

-- Location: LCCOMB_X50_Y37_N16
\Switchright|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~42_combout\ = (\Switchright|r_Debounce_Count\(21) & (!\Switchright|Add0~41\)) # (!\Switchright|r_Debounce_Count\(21) & ((\Switchright|Add0~41\) # (GND)))
-- \Switchright|Add0~43\ = CARRY((!\Switchright|Add0~41\) # (!\Switchright|r_Debounce_Count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Debounce_Count\(21),
	datad => VCC,
	cin => \Switchright|Add0~41\,
	combout => \Switchright|Add0~42_combout\,
	cout => \Switchright|Add0~43\);

-- Location: LCCOMB_X51_Y38_N14
\Switchright|r_Debounce_Count[21]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[21]~3_combout\ = (\Switchright|r_Switch_State~7_combout\ & (((\Switchright|r_Debounce_Count\(21))))) # (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|p_Debounce~1_combout\ & (\Switchright|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|p_Debounce~1_combout\,
	datab => \Switchright|Add0~42_combout\,
	datac => \Switchright|r_Debounce_Count\(21),
	datad => \Switchright|r_Switch_State~7_combout\,
	combout => \Switchright|r_Debounce_Count[21]~3_combout\);

-- Location: FF_X51_Y38_N15
\Switchright|r_Debounce_Count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(21));

-- Location: LCCOMB_X51_Y38_N10
\Switchright|r_Switch_State~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Switch_State~0_combout\ = (\Switchright|r_Debounce_Count\(19) & (\Switchright|r_Debounce_Count\(22) & (\Switchright|r_Debounce_Count\(21) & \Switchright|r_Debounce_Count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(19),
	datab => \Switchright|r_Debounce_Count\(22),
	datac => \Switchright|r_Debounce_Count\(21),
	datad => \Switchright|r_Debounce_Count\(20),
	combout => \Switchright|r_Switch_State~0_combout\);

-- Location: LCCOMB_X50_Y39_N24
\Switchright|r_Switch_State~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Switch_State~1_combout\ = (\Switchright|r_Debounce_Count\(23) & \Switchright|r_Switch_State~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(23),
	datad => \Switchright|r_Switch_State~0_combout\,
	combout => \Switchright|r_Switch_State~1_combout\);

-- Location: LCCOMB_X50_Y39_N12
\Switchright|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|LessThan0~2_combout\ = ((!\Switchright|r_Debounce_Count\(18) & ((\Switchright|LessThan0~1_combout\) # (!\Switchright|r_Debounce_Count\(17))))) # (!\Switchright|r_Switch_State~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(17),
	datab => \Switchright|r_Debounce_Count\(18),
	datac => \Switchright|LessThan0~1_combout\,
	datad => \Switchright|r_Switch_State~1_combout\,
	combout => \Switchright|LessThan0~2_combout\);

-- Location: LCCOMB_X44_Y41_N2
\Switchright|p_Debounce~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|p_Debounce~0_combout\ = \Switchright|r_Switch_State~q\ $ (\push_button_right~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Switch_State~q\,
	datac => \push_button_right~input_o\,
	combout => \Switchright|p_Debounce~0_combout\);

-- Location: LCCOMB_X50_Y39_N18
\Switchright|p_Debounce~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|p_Debounce~1_combout\ = (\Switchright|p_Debounce~0_combout\ & (((\Switchright|LessThan0~2_combout\ & !\Switchright|r_Debounce_Count\(24))) # (!\Switchright|r_Debounce_Count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|LessThan0~2_combout\,
	datab => \Switchright|p_Debounce~0_combout\,
	datac => \Switchright|r_Debounce_Count\(24),
	datad => \Switchright|r_Debounce_Count\(25),
	combout => \Switchright|p_Debounce~1_combout\);

-- Location: LCCOMB_X50_Y37_N18
\Switchright|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~44_combout\ = (\Switchright|r_Debounce_Count\(22) & (\Switchright|Add0~43\ $ (GND))) # (!\Switchright|r_Debounce_Count\(22) & (!\Switchright|Add0~43\ & VCC))
-- \Switchright|Add0~45\ = CARRY((\Switchright|r_Debounce_Count\(22) & !\Switchright|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(22),
	datad => VCC,
	cin => \Switchright|Add0~43\,
	combout => \Switchright|Add0~44_combout\,
	cout => \Switchright|Add0~45\);

-- Location: LCCOMB_X51_Y38_N28
\Switchright|r_Debounce_Count[22]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[22]~4_combout\ = (\Switchright|r_Switch_State~7_combout\ & (((\Switchright|r_Debounce_Count\(22))))) # (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|p_Debounce~1_combout\ & (\Switchright|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|p_Debounce~1_combout\,
	datab => \Switchright|Add0~44_combout\,
	datac => \Switchright|r_Debounce_Count\(22),
	datad => \Switchright|r_Switch_State~7_combout\,
	combout => \Switchright|r_Debounce_Count[22]~4_combout\);

-- Location: FF_X51_Y38_N29
\Switchright|r_Debounce_Count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(22));

-- Location: LCCOMB_X50_Y37_N20
\Switchright|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~46_combout\ = (\Switchright|r_Debounce_Count\(23) & (!\Switchright|Add0~45\)) # (!\Switchright|r_Debounce_Count\(23) & ((\Switchright|Add0~45\) # (GND)))
-- \Switchright|Add0~47\ = CARRY((!\Switchright|Add0~45\) # (!\Switchright|r_Debounce_Count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(23),
	datad => VCC,
	cin => \Switchright|Add0~45\,
	combout => \Switchright|Add0~46_combout\,
	cout => \Switchright|Add0~47\);

-- Location: LCCOMB_X50_Y37_N30
\Switchright|r_Debounce_Count[23]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Debounce_Count[23]~0_combout\ = (\Switchright|r_Switch_State~7_combout\ & (((\Switchright|r_Debounce_Count\(23))))) # (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|Add0~46_combout\ & ((\Switchright|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|Add0~46_combout\,
	datab => \Switchright|r_Switch_State~7_combout\,
	datac => \Switchright|r_Debounce_Count\(23),
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|r_Debounce_Count[23]~0_combout\);

-- Location: FF_X50_Y37_N31
\Switchright|r_Debounce_Count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|r_Debounce_Count[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(23));

-- Location: LCCOMB_X50_Y37_N22
\Switchright|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~48_combout\ = (\Switchright|r_Debounce_Count\(24) & (\Switchright|Add0~47\ $ (GND))) # (!\Switchright|r_Debounce_Count\(24) & (!\Switchright|Add0~47\ & VCC))
-- \Switchright|Add0~49\ = CARRY((\Switchright|r_Debounce_Count\(24) & !\Switchright|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(24),
	datad => VCC,
	cin => \Switchright|Add0~47\,
	combout => \Switchright|Add0~48_combout\,
	cout => \Switchright|Add0~49\);

-- Location: LCCOMB_X50_Y39_N22
\Switchright|Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~53_combout\ = (\Switchright|Add0~48_combout\ & \Switchright|p_Debounce~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switchright|Add0~48_combout\,
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|Add0~53_combout\);

-- Location: FF_X50_Y39_N23
\Switchright|r_Debounce_Count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(24));

-- Location: LCCOMB_X50_Y37_N24
\Switchright|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~50_combout\ = \Switchright|r_Debounce_Count\(25) $ (\Switchright|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(25),
	cin => \Switchright|Add0~49\,
	combout => \Switchright|Add0~50_combout\);

-- Location: LCCOMB_X50_Y37_N26
\Switchright|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|Add0~52_combout\ = (\Switchright|r_Switch_State~7_combout\) # ((\Switchright|Add0~50_combout\ & \Switchright|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchright|r_Switch_State~7_combout\,
	datac => \Switchright|Add0~50_combout\,
	datad => \Switchright|p_Debounce~1_combout\,
	combout => \Switchright|Add0~52_combout\);

-- Location: FF_X50_Y37_N27
\Switchright|r_Debounce_Count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchright|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Debounce_Count\(25));

-- Location: LCCOMB_X50_Y39_N20
\Switchright|r_Switch_State~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Switch_State~5_combout\ = (!\Switchright|r_Debounce_Count\(16) & (!\Switchright|r_Debounce_Count\(18) & (!\Switchright|r_Debounce_Count\(24) & \Switchright|r_Debounce_Count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(16),
	datab => \Switchright|r_Debounce_Count\(18),
	datac => \Switchright|r_Debounce_Count\(24),
	datad => \Switchright|r_Debounce_Count\(17),
	combout => \Switchright|r_Switch_State~5_combout\);

-- Location: LCCOMB_X50_Y38_N0
\Switchright|r_Switch_State~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Switch_State~3_combout\ = (!\Switchright|r_Debounce_Count\(1) & (!\Switchright|r_Debounce_Count\(3) & (!\Switchright|r_Debounce_Count\(0) & !\Switchright|r_Debounce_Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(1),
	datab => \Switchright|r_Debounce_Count\(3),
	datac => \Switchright|r_Debounce_Count\(0),
	datad => \Switchright|r_Debounce_Count\(2),
	combout => \Switchright|r_Switch_State~3_combout\);

-- Location: LCCOMB_X50_Y39_N2
\Switchright|r_Switch_State~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Switch_State~4_combout\ = (!\Switchright|r_Debounce_Count\(5) & (!\Switchright|r_Debounce_Count\(6) & (!\Switchright|r_Debounce_Count\(4) & \Switchright|r_Debounce_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(5),
	datab => \Switchright|r_Debounce_Count\(6),
	datac => \Switchright|r_Debounce_Count\(4),
	datad => \Switchright|r_Debounce_Count\(7),
	combout => \Switchright|r_Switch_State~4_combout\);

-- Location: LCCOMB_X50_Y39_N6
\Switchright|r_Switch_State~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Switch_State~6_combout\ = (\Switchright|r_Debounce_Count\(25) & (\Switchright|r_Switch_State~5_combout\ & (\Switchright|r_Switch_State~3_combout\ & \Switchright|r_Switch_State~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Debounce_Count\(25),
	datab => \Switchright|r_Switch_State~5_combout\,
	datac => \Switchright|r_Switch_State~3_combout\,
	datad => \Switchright|r_Switch_State~4_combout\,
	combout => \Switchright|r_Switch_State~6_combout\);

-- Location: LCCOMB_X50_Y39_N4
\Switchright|r_Switch_State~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Switch_State~7_combout\ = (\Switchright|r_Switch_State~6_combout\ & (\Switchright|LessThan0~0_combout\ & (\Switchright|r_Switch_State~2_combout\ & \Switchright|r_Switch_State~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Switch_State~6_combout\,
	datab => \Switchright|LessThan0~0_combout\,
	datac => \Switchright|r_Switch_State~2_combout\,
	datad => \Switchright|r_Switch_State~1_combout\,
	combout => \Switchright|r_Switch_State~7_combout\);

-- Location: LCCOMB_X44_Y41_N16
\Switchright|r_Switch_State~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchright|r_Switch_State~8_combout\ = (\Switchright|r_Switch_State~7_combout\ & ((\push_button_right~input_o\))) # (!\Switchright|r_Switch_State~7_combout\ & (\Switchright|r_Switch_State~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchright|r_Switch_State~q\,
	datac => \push_button_right~input_o\,
	datad => \Switchright|r_Switch_State~7_combout\,
	combout => \Switchright|r_Switch_State~8_combout\);

-- Location: FF_X45_Y41_N31
\Switchright|r_Switch_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \Switchright|r_Switch_State~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchright|r_Switch_State~q\);

-- Location: LCCOMB_X46_Y41_N14
\movement_ctrl_inst|push_button_right_prev~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|push_button_right_prev~0_combout\ = !\Switchright|r_Switch_State~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Switchright|r_Switch_State~q\,
	combout => \movement_ctrl_inst|push_button_right_prev~0_combout\);

-- Location: FF_X46_Y41_N15
\movement_ctrl_inst|push_button_right_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|push_button_right_prev~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|push_button_right_prev~q\);

-- Location: LCCOMB_X45_Y41_N4
\movement_ctrl_inst|update_stand_position~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|update_stand_position~0_combout\ = (!\movement_ctrl_inst|push_button_right_prev~q\ & !\Switchright|r_Switch_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|push_button_right_prev~q\,
	datad => \Switchright|r_Switch_State~q\,
	combout => \movement_ctrl_inst|update_stand_position~0_combout\);

-- Location: LCCOMB_X46_Y45_N0
\movement_ctrl_inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add1~0_combout\ = (\movement_ctrl_inst|STAND_SPEED\(1) & (\movement_ctrl_inst|x_stand\(1) $ (VCC))) # (!\movement_ctrl_inst|STAND_SPEED\(1) & ((\movement_ctrl_inst|x_stand\(1)) # (GND)))
-- \movement_ctrl_inst|Add1~1\ = CARRY((\movement_ctrl_inst|x_stand\(1)) # (!\movement_ctrl_inst|STAND_SPEED\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(1),
	datab => \movement_ctrl_inst|x_stand\(1),
	datad => VCC,
	combout => \movement_ctrl_inst|Add1~0_combout\,
	cout => \movement_ctrl_inst|Add1~1\);

-- Location: LCCOMB_X45_Y42_N2
\movement_ctrl_inst|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add2~0_combout\ = (\movement_ctrl_inst|STAND_SPEED\(1) & (\movement_ctrl_inst|x_stand\(1) $ (VCC))) # (!\movement_ctrl_inst|STAND_SPEED\(1) & (\movement_ctrl_inst|x_stand\(1) & VCC))
-- \movement_ctrl_inst|Add2~1\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(1) & \movement_ctrl_inst|x_stand\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(1),
	datab => \movement_ctrl_inst|x_stand\(1),
	datad => VCC,
	combout => \movement_ctrl_inst|Add2~0_combout\,
	cout => \movement_ctrl_inst|Add2~1\);

-- Location: LCCOMB_X45_Y45_N16
\movement_ctrl_inst|Add10~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~14_combout\ = (\movement_ctrl_inst|STAND_SPEED\(9) & (!\movement_ctrl_inst|Add10~13\)) # (!\movement_ctrl_inst|STAND_SPEED\(9) & ((\movement_ctrl_inst|Add10~13\) # (GND)))
-- \movement_ctrl_inst|Add10~15\ = CARRY((!\movement_ctrl_inst|Add10~13\) # (!\movement_ctrl_inst|STAND_SPEED\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(9),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~13\,
	combout => \movement_ctrl_inst|Add10~14_combout\,
	cout => \movement_ctrl_inst|Add10~15\);

-- Location: FF_X45_Y45_N17
\movement_ctrl_inst|STAND_SPEED[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~14_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(9));

-- Location: LCCOMB_X45_Y45_N18
\movement_ctrl_inst|Add10~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~16_combout\ = (\movement_ctrl_inst|STAND_SPEED\(10) & (\movement_ctrl_inst|Add10~15\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(10) & (!\movement_ctrl_inst|Add10~15\ & VCC))
-- \movement_ctrl_inst|Add10~17\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(10) & !\movement_ctrl_inst|Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(10),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~15\,
	combout => \movement_ctrl_inst|Add10~16_combout\,
	cout => \movement_ctrl_inst|Add10~17\);

-- Location: FF_X45_Y45_N19
\movement_ctrl_inst|STAND_SPEED[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~16_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(10));

-- Location: LCCOMB_X45_Y42_N14
\movement_ctrl_inst|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add2~12_combout\ = ((\movement_ctrl_inst|x_stand\(7) $ (\movement_ctrl_inst|STAND_SPEED\(7) $ (!\movement_ctrl_inst|Add2~11\)))) # (GND)
-- \movement_ctrl_inst|Add2~13\ = CARRY((\movement_ctrl_inst|x_stand\(7) & ((\movement_ctrl_inst|STAND_SPEED\(7)) # (!\movement_ctrl_inst|Add2~11\))) # (!\movement_ctrl_inst|x_stand\(7) & (\movement_ctrl_inst|STAND_SPEED\(7) & 
-- !\movement_ctrl_inst|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(7),
	datab => \movement_ctrl_inst|STAND_SPEED\(7),
	datad => VCC,
	cin => \movement_ctrl_inst|Add2~11\,
	combout => \movement_ctrl_inst|Add2~12_combout\,
	cout => \movement_ctrl_inst|Add2~13\);

-- Location: LCCOMB_X45_Y42_N16
\movement_ctrl_inst|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add2~14_combout\ = (\movement_ctrl_inst|STAND_SPEED\(8) & ((\movement_ctrl_inst|x_stand\(8) & (\movement_ctrl_inst|Add2~13\ & VCC)) # (!\movement_ctrl_inst|x_stand\(8) & (!\movement_ctrl_inst|Add2~13\)))) # 
-- (!\movement_ctrl_inst|STAND_SPEED\(8) & ((\movement_ctrl_inst|x_stand\(8) & (!\movement_ctrl_inst|Add2~13\)) # (!\movement_ctrl_inst|x_stand\(8) & ((\movement_ctrl_inst|Add2~13\) # (GND)))))
-- \movement_ctrl_inst|Add2~15\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(8) & (!\movement_ctrl_inst|x_stand\(8) & !\movement_ctrl_inst|Add2~13\)) # (!\movement_ctrl_inst|STAND_SPEED\(8) & ((!\movement_ctrl_inst|Add2~13\) # 
-- (!\movement_ctrl_inst|x_stand\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(8),
	datab => \movement_ctrl_inst|x_stand\(8),
	datad => VCC,
	cin => \movement_ctrl_inst|Add2~13\,
	combout => \movement_ctrl_inst|Add2~14_combout\,
	cout => \movement_ctrl_inst|Add2~15\);

-- Location: LCCOMB_X45_Y42_N18
\movement_ctrl_inst|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add2~16_combout\ = ((\movement_ctrl_inst|x_stand\(9) $ (\movement_ctrl_inst|STAND_SPEED\(9) $ (!\movement_ctrl_inst|Add2~15\)))) # (GND)
-- \movement_ctrl_inst|Add2~17\ = CARRY((\movement_ctrl_inst|x_stand\(9) & ((\movement_ctrl_inst|STAND_SPEED\(9)) # (!\movement_ctrl_inst|Add2~15\))) # (!\movement_ctrl_inst|x_stand\(9) & (\movement_ctrl_inst|STAND_SPEED\(9) & 
-- !\movement_ctrl_inst|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(9),
	datab => \movement_ctrl_inst|STAND_SPEED\(9),
	datad => VCC,
	cin => \movement_ctrl_inst|Add2~15\,
	combout => \movement_ctrl_inst|Add2~16_combout\,
	cout => \movement_ctrl_inst|Add2~17\);

-- Location: LCCOMB_X46_Y45_N14
\movement_ctrl_inst|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add1~14_combout\ = (\movement_ctrl_inst|STAND_SPEED\(8) & ((\movement_ctrl_inst|x_stand\(8) & (!\movement_ctrl_inst|Add1~13\)) # (!\movement_ctrl_inst|x_stand\(8) & ((\movement_ctrl_inst|Add1~13\) # (GND))))) # 
-- (!\movement_ctrl_inst|STAND_SPEED\(8) & ((\movement_ctrl_inst|x_stand\(8) & (\movement_ctrl_inst|Add1~13\ & VCC)) # (!\movement_ctrl_inst|x_stand\(8) & (!\movement_ctrl_inst|Add1~13\))))
-- \movement_ctrl_inst|Add1~15\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(8) & ((!\movement_ctrl_inst|Add1~13\) # (!\movement_ctrl_inst|x_stand\(8)))) # (!\movement_ctrl_inst|STAND_SPEED\(8) & (!\movement_ctrl_inst|x_stand\(8) & 
-- !\movement_ctrl_inst|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(8),
	datab => \movement_ctrl_inst|x_stand\(8),
	datad => VCC,
	cin => \movement_ctrl_inst|Add1~13\,
	combout => \movement_ctrl_inst|Add1~14_combout\,
	cout => \movement_ctrl_inst|Add1~15\);

-- Location: LCCOMB_X46_Y45_N16
\movement_ctrl_inst|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add1~16_combout\ = ((\movement_ctrl_inst|STAND_SPEED\(9) $ (\movement_ctrl_inst|x_stand\(9) $ (\movement_ctrl_inst|Add1~15\)))) # (GND)
-- \movement_ctrl_inst|Add1~17\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(9) & (\movement_ctrl_inst|x_stand\(9) & !\movement_ctrl_inst|Add1~15\)) # (!\movement_ctrl_inst|STAND_SPEED\(9) & ((\movement_ctrl_inst|x_stand\(9)) # 
-- (!\movement_ctrl_inst|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(9),
	datab => \movement_ctrl_inst|x_stand\(9),
	datad => VCC,
	cin => \movement_ctrl_inst|Add1~15\,
	combout => \movement_ctrl_inst|Add1~16_combout\,
	cout => \movement_ctrl_inst|Add1~17\);

-- Location: LCCOMB_X46_Y41_N24
\movement_ctrl_inst|x_stand~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~5_combout\ = (!\movement_ctrl_inst|x_stand[9]~1_combout\ & ((\movement_ctrl_inst|update_stand_position~0_combout\ & (\movement_ctrl_inst|Add2~16_combout\)) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & 
-- ((\movement_ctrl_inst|Add1~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add2~16_combout\,
	datab => \movement_ctrl_inst|Add1~16_combout\,
	datac => \movement_ctrl_inst|update_stand_position~0_combout\,
	datad => \movement_ctrl_inst|x_stand[9]~1_combout\,
	combout => \movement_ctrl_inst|x_stand~5_combout\);

-- Location: IOIBUF_X46_Y54_N29
\push_button_left~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push_button_left,
	o => \push_button_left~input_o\);

-- Location: LCCOMB_X46_Y43_N6
\Switchleft|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~0_combout\ = \Switchleft|r_Debounce_Count\(0) $ (VCC)
-- \Switchleft|Add0~1\ = CARRY(\Switchleft|r_Debounce_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(0),
	datad => VCC,
	combout => \Switchleft|Add0~0_combout\,
	cout => \Switchleft|Add0~1\);

-- Location: LCCOMB_X47_Y41_N30
\Switchleft|p_Debounce~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|p_Debounce~0_combout\ = \push_button_left~input_o\ $ (\Switchleft|r_Switch_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \push_button_left~input_o\,
	datad => \Switchleft|r_Switch_State~q\,
	combout => \Switchleft|p_Debounce~0_combout\);

-- Location: LCCOMB_X46_Y43_N14
\Switchleft|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~8_combout\ = (\Switchleft|r_Debounce_Count\(4) & (\Switchleft|Add0~7\ $ (GND))) # (!\Switchleft|r_Debounce_Count\(4) & (!\Switchleft|Add0~7\ & VCC))
-- \Switchleft|Add0~9\ = CARRY((\Switchleft|r_Debounce_Count\(4) & !\Switchleft|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(4),
	datad => VCC,
	cin => \Switchleft|Add0~7\,
	combout => \Switchleft|Add0~8_combout\,
	cout => \Switchleft|Add0~9\);

-- Location: LCCOMB_X46_Y43_N16
\Switchleft|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~10_combout\ = (\Switchleft|r_Debounce_Count\(5) & (!\Switchleft|Add0~9\)) # (!\Switchleft|r_Debounce_Count\(5) & ((\Switchleft|Add0~9\) # (GND)))
-- \Switchleft|Add0~11\ = CARRY((!\Switchleft|Add0~9\) # (!\Switchleft|r_Debounce_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(5),
	datad => VCC,
	cin => \Switchleft|Add0~9\,
	combout => \Switchleft|Add0~10_combout\,
	cout => \Switchleft|Add0~11\);

-- Location: LCCOMB_X46_Y43_N0
\Switchleft|r_Debounce_Count[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[5]~19_combout\ = (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|Add0~10_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Switch_State~7_combout\,
	datab => \Switchleft|Add0~10_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[5]~19_combout\);

-- Location: FF_X46_Y43_N1
\Switchleft|r_Debounce_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(5));

-- Location: LCCOMB_X46_Y43_N18
\Switchleft|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~12_combout\ = (\Switchleft|r_Debounce_Count\(6) & (\Switchleft|Add0~11\ $ (GND))) # (!\Switchleft|r_Debounce_Count\(6) & (!\Switchleft|Add0~11\ & VCC))
-- \Switchleft|Add0~13\ = CARRY((\Switchleft|r_Debounce_Count\(6) & !\Switchleft|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(6),
	datad => VCC,
	cin => \Switchleft|Add0~11\,
	combout => \Switchleft|Add0~12_combout\,
	cout => \Switchleft|Add0~13\);

-- Location: LCCOMB_X46_Y43_N2
\Switchleft|r_Debounce_Count[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[6]~20_combout\ = (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|Add0~12_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Switch_State~7_combout\,
	datab => \Switchleft|Add0~12_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[6]~20_combout\);

-- Location: FF_X46_Y43_N3
\Switchleft|r_Debounce_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(6));

-- Location: LCCOMB_X46_Y43_N20
\Switchleft|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~14_combout\ = (\Switchleft|r_Debounce_Count\(7) & (!\Switchleft|Add0~13\)) # (!\Switchleft|r_Debounce_Count\(7) & ((\Switchleft|Add0~13\) # (GND)))
-- \Switchleft|Add0~15\ = CARRY((!\Switchleft|Add0~13\) # (!\Switchleft|r_Debounce_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(7),
	datad => VCC,
	cin => \Switchleft|Add0~13\,
	combout => \Switchleft|Add0~14_combout\,
	cout => \Switchleft|Add0~15\);

-- Location: LCCOMB_X47_Y41_N18
\Switchleft|r_Debounce_Count[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[7]~17_combout\ = (\Switchleft|r_Switch_State~7_combout\ & (((\Switchleft|r_Debounce_Count\(7))))) # (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|Add0~14_combout\ & ((\Switchleft|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|Add0~14_combout\,
	datab => \Switchleft|r_Switch_State~7_combout\,
	datac => \Switchleft|r_Debounce_Count\(7),
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[7]~17_combout\);

-- Location: FF_X47_Y41_N19
\Switchleft|r_Debounce_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(7));

-- Location: LCCOMB_X46_Y43_N22
\Switchleft|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~16_combout\ = (\Switchleft|r_Debounce_Count\(8) & (\Switchleft|Add0~15\ $ (GND))) # (!\Switchleft|r_Debounce_Count\(8) & (!\Switchleft|Add0~15\ & VCC))
-- \Switchleft|Add0~17\ = CARRY((\Switchleft|r_Debounce_Count\(8) & !\Switchleft|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(8),
	datad => VCC,
	cin => \Switchleft|Add0~15\,
	combout => \Switchleft|Add0~16_combout\,
	cout => \Switchleft|Add0~17\);

-- Location: LCCOMB_X47_Y43_N20
\Switchleft|r_Debounce_Count[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[8]~9_combout\ = (\Switchleft|Add0~16_combout\ & (!\Switchleft|r_Switch_State~7_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|Add0~16_combout\,
	datac => \Switchleft|r_Switch_State~7_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[8]~9_combout\);

-- Location: FF_X47_Y43_N21
\Switchleft|r_Debounce_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(8));

-- Location: LCCOMB_X46_Y43_N24
\Switchleft|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~18_combout\ = (\Switchleft|r_Debounce_Count\(9) & (!\Switchleft|Add0~17\)) # (!\Switchleft|r_Debounce_Count\(9) & ((\Switchleft|Add0~17\) # (GND)))
-- \Switchleft|Add0~19\ = CARRY((!\Switchleft|Add0~17\) # (!\Switchleft|r_Debounce_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(9),
	datad => VCC,
	cin => \Switchleft|Add0~17\,
	combout => \Switchleft|Add0~18_combout\,
	cout => \Switchleft|Add0~19\);

-- Location: LCCOMB_X47_Y43_N18
\Switchleft|r_Debounce_Count[9]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[9]~10_combout\ = (\Switchleft|Add0~18_combout\ & (!\Switchleft|r_Switch_State~7_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|Add0~18_combout\,
	datac => \Switchleft|r_Switch_State~7_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[9]~10_combout\);

-- Location: FF_X47_Y43_N19
\Switchleft|r_Debounce_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(9));

-- Location: LCCOMB_X46_Y43_N26
\Switchleft|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~20_combout\ = (\Switchleft|r_Debounce_Count\(10) & (\Switchleft|Add0~19\ $ (GND))) # (!\Switchleft|r_Debounce_Count\(10) & (!\Switchleft|Add0~19\ & VCC))
-- \Switchleft|Add0~21\ = CARRY((\Switchleft|r_Debounce_Count\(10) & !\Switchleft|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(10),
	datad => VCC,
	cin => \Switchleft|Add0~19\,
	combout => \Switchleft|Add0~20_combout\,
	cout => \Switchleft|Add0~21\);

-- Location: LCCOMB_X47_Y43_N24
\Switchleft|r_Debounce_Count[10]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[10]~11_combout\ = (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|Add0~20_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Switch_State~7_combout\,
	datac => \Switchleft|Add0~20_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[10]~11_combout\);

-- Location: FF_X47_Y43_N25
\Switchleft|r_Debounce_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(10));

-- Location: LCCOMB_X46_Y43_N28
\Switchleft|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~22_combout\ = (\Switchleft|r_Debounce_Count\(11) & (!\Switchleft|Add0~21\)) # (!\Switchleft|r_Debounce_Count\(11) & ((\Switchleft|Add0~21\) # (GND)))
-- \Switchleft|Add0~23\ = CARRY((!\Switchleft|Add0~21\) # (!\Switchleft|r_Debounce_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(11),
	datad => VCC,
	cin => \Switchleft|Add0~21\,
	combout => \Switchleft|Add0~22_combout\,
	cout => \Switchleft|Add0~23\);

-- Location: LCCOMB_X45_Y43_N16
\Switchleft|r_Debounce_Count[11]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[11]~12_combout\ = (\Switchleft|Add0~22_combout\ & (!\Switchleft|r_Switch_State~7_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|Add0~22_combout\,
	datac => \Switchleft|r_Switch_State~7_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[11]~12_combout\);

-- Location: FF_X45_Y43_N17
\Switchleft|r_Debounce_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(11));

-- Location: LCCOMB_X46_Y43_N30
\Switchleft|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~24_combout\ = (\Switchleft|r_Debounce_Count\(12) & (\Switchleft|Add0~23\ $ (GND))) # (!\Switchleft|r_Debounce_Count\(12) & (!\Switchleft|Add0~23\ & VCC))
-- \Switchleft|Add0~25\ = CARRY((\Switchleft|r_Debounce_Count\(12) & !\Switchleft|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(12),
	datad => VCC,
	cin => \Switchleft|Add0~23\,
	combout => \Switchleft|Add0~24_combout\,
	cout => \Switchleft|Add0~25\);

-- Location: LCCOMB_X47_Y43_N12
\Switchleft|r_Debounce_Count[12]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[12]~5_combout\ = (\Switchleft|r_Switch_State~7_combout\ & (((\Switchleft|r_Debounce_Count\(12))))) # (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|Add0~24_combout\ & ((\Switchleft|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|Add0~24_combout\,
	datab => \Switchleft|r_Switch_State~7_combout\,
	datac => \Switchleft|r_Debounce_Count\(12),
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[12]~5_combout\);

-- Location: FF_X47_Y43_N13
\Switchleft|r_Debounce_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[12]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(12));

-- Location: LCCOMB_X46_Y42_N0
\Switchleft|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~26_combout\ = (\Switchleft|r_Debounce_Count\(13) & (!\Switchleft|Add0~25\)) # (!\Switchleft|r_Debounce_Count\(13) & ((\Switchleft|Add0~25\) # (GND)))
-- \Switchleft|Add0~27\ = CARRY((!\Switchleft|Add0~25\) # (!\Switchleft|r_Debounce_Count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(13),
	datad => VCC,
	cin => \Switchleft|Add0~25\,
	combout => \Switchleft|Add0~26_combout\,
	cout => \Switchleft|Add0~27\);

-- Location: LCCOMB_X47_Y42_N0
\Switchleft|r_Debounce_Count[13]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[13]~6_combout\ = (\Switchleft|r_Switch_State~7_combout\ & (((\Switchleft|r_Debounce_Count\(13))))) # (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|p_Debounce~1_combout\ & ((\Switchleft|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|p_Debounce~1_combout\,
	datab => \Switchleft|r_Switch_State~7_combout\,
	datac => \Switchleft|r_Debounce_Count\(13),
	datad => \Switchleft|Add0~26_combout\,
	combout => \Switchleft|r_Debounce_Count[13]~6_combout\);

-- Location: FF_X47_Y42_N1
\Switchleft|r_Debounce_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(13));

-- Location: LCCOMB_X46_Y42_N2
\Switchleft|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~28_combout\ = (\Switchleft|r_Debounce_Count\(14) & (\Switchleft|Add0~27\ $ (GND))) # (!\Switchleft|r_Debounce_Count\(14) & (!\Switchleft|Add0~27\ & VCC))
-- \Switchleft|Add0~29\ = CARRY((\Switchleft|r_Debounce_Count\(14) & !\Switchleft|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(14),
	datad => VCC,
	cin => \Switchleft|Add0~27\,
	combout => \Switchleft|Add0~28_combout\,
	cout => \Switchleft|Add0~29\);

-- Location: LCCOMB_X47_Y43_N26
\Switchleft|r_Debounce_Count[14]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[14]~7_combout\ = (\Switchleft|r_Switch_State~7_combout\ & (((\Switchleft|r_Debounce_Count\(14))))) # (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|Add0~28_combout\ & ((\Switchleft|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|Add0~28_combout\,
	datab => \Switchleft|r_Switch_State~7_combout\,
	datac => \Switchleft|r_Debounce_Count\(14),
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[14]~7_combout\);

-- Location: FF_X47_Y43_N27
\Switchleft|r_Debounce_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[14]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(14));

-- Location: LCCOMB_X46_Y42_N4
\Switchleft|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~30_combout\ = (\Switchleft|r_Debounce_Count\(15) & (!\Switchleft|Add0~29\)) # (!\Switchleft|r_Debounce_Count\(15) & ((\Switchleft|Add0~29\) # (GND)))
-- \Switchleft|Add0~31\ = CARRY((!\Switchleft|Add0~29\) # (!\Switchleft|r_Debounce_Count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(15),
	datad => VCC,
	cin => \Switchleft|Add0~29\,
	combout => \Switchleft|Add0~30_combout\,
	cout => \Switchleft|Add0~31\);

-- Location: LCCOMB_X47_Y43_N16
\Switchleft|r_Debounce_Count[15]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[15]~8_combout\ = (\Switchleft|r_Switch_State~7_combout\ & (((\Switchleft|r_Debounce_Count\(15))))) # (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|Add0~30_combout\ & ((\Switchleft|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|Add0~30_combout\,
	datab => \Switchleft|r_Switch_State~7_combout\,
	datac => \Switchleft|r_Debounce_Count\(15),
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[15]~8_combout\);

-- Location: FF_X47_Y43_N17
\Switchleft|r_Debounce_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(15));

-- Location: LCCOMB_X46_Y42_N6
\Switchleft|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~32_combout\ = (\Switchleft|r_Debounce_Count\(16) & (\Switchleft|Add0~31\ $ (GND))) # (!\Switchleft|r_Debounce_Count\(16) & (!\Switchleft|Add0~31\ & VCC))
-- \Switchleft|Add0~33\ = CARRY((\Switchleft|r_Debounce_Count\(16) & !\Switchleft|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(16),
	datad => VCC,
	cin => \Switchleft|Add0~31\,
	combout => \Switchleft|Add0~32_combout\,
	cout => \Switchleft|Add0~33\);

-- Location: LCCOMB_X47_Y42_N18
\Switchleft|r_Debounce_Count[16]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[16]~22_combout\ = (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|Add0~32_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Switch_State~7_combout\,
	datac => \Switchleft|Add0~32_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[16]~22_combout\);

-- Location: FF_X47_Y42_N19
\Switchleft|r_Debounce_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(16));

-- Location: LCCOMB_X46_Y42_N8
\Switchleft|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~34_combout\ = (\Switchleft|r_Debounce_Count\(17) & (!\Switchleft|Add0~33\)) # (!\Switchleft|r_Debounce_Count\(17) & ((\Switchleft|Add0~33\) # (GND)))
-- \Switchleft|Add0~35\ = CARRY((!\Switchleft|Add0~33\) # (!\Switchleft|r_Debounce_Count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(17),
	datad => VCC,
	cin => \Switchleft|Add0~33\,
	combout => \Switchleft|Add0~34_combout\,
	cout => \Switchleft|Add0~35\);

-- Location: LCCOMB_X47_Y42_N8
\Switchleft|r_Debounce_Count[17]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[17]~21_combout\ = (\Switchleft|r_Switch_State~7_combout\ & (((\Switchleft|r_Debounce_Count\(17))))) # (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|p_Debounce~1_combout\ & ((\Switchleft|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|p_Debounce~1_combout\,
	datab => \Switchleft|r_Switch_State~7_combout\,
	datac => \Switchleft|r_Debounce_Count\(17),
	datad => \Switchleft|Add0~34_combout\,
	combout => \Switchleft|r_Debounce_Count[17]~21_combout\);

-- Location: FF_X47_Y42_N9
\Switchleft|r_Debounce_Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[17]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(17));

-- Location: LCCOMB_X46_Y42_N10
\Switchleft|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~36_combout\ = (\Switchleft|r_Debounce_Count\(18) & (\Switchleft|Add0~35\ $ (GND))) # (!\Switchleft|r_Debounce_Count\(18) & (!\Switchleft|Add0~35\ & VCC))
-- \Switchleft|Add0~37\ = CARRY((\Switchleft|r_Debounce_Count\(18) & !\Switchleft|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(18),
	datad => VCC,
	cin => \Switchleft|Add0~35\,
	combout => \Switchleft|Add0~36_combout\,
	cout => \Switchleft|Add0~37\);

-- Location: LCCOMB_X47_Y41_N8
\Switchleft|r_Debounce_Count[18]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[18]~23_combout\ = (\Switchleft|p_Debounce~1_combout\ & (\Switchleft|Add0~36_combout\ & !\Switchleft|r_Switch_State~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|p_Debounce~1_combout\,
	datac => \Switchleft|Add0~36_combout\,
	datad => \Switchleft|r_Switch_State~7_combout\,
	combout => \Switchleft|r_Debounce_Count[18]~23_combout\);

-- Location: FF_X47_Y41_N9
\Switchleft|r_Debounce_Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[18]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(18));

-- Location: LCCOMB_X47_Y43_N22
\Switchleft|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|LessThan0~0_combout\ = (!\Switchleft|r_Debounce_Count\(10) & (!\Switchleft|r_Debounce_Count\(8) & (!\Switchleft|r_Debounce_Count\(11) & !\Switchleft|r_Debounce_Count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(10),
	datab => \Switchleft|r_Debounce_Count\(8),
	datac => \Switchleft|r_Debounce_Count\(11),
	datad => \Switchleft|r_Debounce_Count\(9),
	combout => \Switchleft|LessThan0~0_combout\);

-- Location: LCCOMB_X47_Y43_N10
\Switchleft|r_Switch_State~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Switch_State~2_combout\ = (\Switchleft|r_Debounce_Count\(12) & (\Switchleft|r_Debounce_Count\(15) & (\Switchleft|r_Debounce_Count\(14) & \Switchleft|r_Debounce_Count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(12),
	datab => \Switchleft|r_Debounce_Count\(15),
	datac => \Switchleft|r_Debounce_Count\(14),
	datad => \Switchleft|r_Debounce_Count\(13),
	combout => \Switchleft|r_Switch_State~2_combout\);

-- Location: LCCOMB_X47_Y41_N4
\Switchleft|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|LessThan0~1_combout\ = (!\Switchleft|r_Debounce_Count\(16) & (((\Switchleft|LessThan0~0_combout\ & !\Switchleft|r_Debounce_Count\(7))) # (!\Switchleft|r_Switch_State~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|LessThan0~0_combout\,
	datab => \Switchleft|r_Switch_State~2_combout\,
	datac => \Switchleft|r_Debounce_Count\(16),
	datad => \Switchleft|r_Debounce_Count\(7),
	combout => \Switchleft|LessThan0~1_combout\);

-- Location: LCCOMB_X46_Y42_N12
\Switchleft|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~38_combout\ = (\Switchleft|r_Debounce_Count\(19) & (!\Switchleft|Add0~37\)) # (!\Switchleft|r_Debounce_Count\(19) & ((\Switchleft|Add0~37\) # (GND)))
-- \Switchleft|Add0~39\ = CARRY((!\Switchleft|Add0~37\) # (!\Switchleft|r_Debounce_Count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(19),
	datad => VCC,
	cin => \Switchleft|Add0~37\,
	combout => \Switchleft|Add0~38_combout\,
	cout => \Switchleft|Add0~39\);

-- Location: LCCOMB_X47_Y43_N8
\Switchleft|r_Debounce_Count[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[19]~1_combout\ = (\Switchleft|r_Switch_State~7_combout\ & (((\Switchleft|r_Debounce_Count\(19))))) # (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|Add0~38_combout\ & ((\Switchleft|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|Add0~38_combout\,
	datab => \Switchleft|r_Switch_State~7_combout\,
	datac => \Switchleft|r_Debounce_Count\(19),
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[19]~1_combout\);

-- Location: FF_X47_Y43_N9
\Switchleft|r_Debounce_Count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(19));

-- Location: LCCOMB_X46_Y42_N14
\Switchleft|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~40_combout\ = (\Switchleft|r_Debounce_Count\(20) & (\Switchleft|Add0~39\ $ (GND))) # (!\Switchleft|r_Debounce_Count\(20) & (!\Switchleft|Add0~39\ & VCC))
-- \Switchleft|Add0~41\ = CARRY((\Switchleft|r_Debounce_Count\(20) & !\Switchleft|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(20),
	datad => VCC,
	cin => \Switchleft|Add0~39\,
	combout => \Switchleft|Add0~40_combout\,
	cout => \Switchleft|Add0~41\);

-- Location: LCCOMB_X46_Y42_N26
\Switchleft|r_Debounce_Count[20]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[20]~2_combout\ = (\Switchleft|r_Switch_State~7_combout\ & (((\Switchleft|r_Debounce_Count\(20))))) # (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|p_Debounce~1_combout\ & (\Switchleft|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|p_Debounce~1_combout\,
	datab => \Switchleft|Add0~40_combout\,
	datac => \Switchleft|r_Debounce_Count\(20),
	datad => \Switchleft|r_Switch_State~7_combout\,
	combout => \Switchleft|r_Debounce_Count[20]~2_combout\);

-- Location: FF_X46_Y42_N27
\Switchleft|r_Debounce_Count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(20));

-- Location: LCCOMB_X46_Y42_N16
\Switchleft|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~42_combout\ = (\Switchleft|r_Debounce_Count\(21) & (!\Switchleft|Add0~41\)) # (!\Switchleft|r_Debounce_Count\(21) & ((\Switchleft|Add0~41\) # (GND)))
-- \Switchleft|Add0~43\ = CARRY((!\Switchleft|Add0~41\) # (!\Switchleft|r_Debounce_Count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(21),
	datad => VCC,
	cin => \Switchleft|Add0~41\,
	combout => \Switchleft|Add0~42_combout\,
	cout => \Switchleft|Add0~43\);

-- Location: LCCOMB_X46_Y42_N28
\Switchleft|r_Debounce_Count[21]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[21]~3_combout\ = (\Switchleft|r_Switch_State~7_combout\ & (((\Switchleft|r_Debounce_Count\(21))))) # (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|p_Debounce~1_combout\ & (\Switchleft|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|p_Debounce~1_combout\,
	datab => \Switchleft|Add0~42_combout\,
	datac => \Switchleft|r_Debounce_Count\(21),
	datad => \Switchleft|r_Switch_State~7_combout\,
	combout => \Switchleft|r_Debounce_Count[21]~3_combout\);

-- Location: FF_X46_Y42_N29
\Switchleft|r_Debounce_Count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(21));

-- Location: LCCOMB_X46_Y42_N18
\Switchleft|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~44_combout\ = (\Switchleft|r_Debounce_Count\(22) & (\Switchleft|Add0~43\ $ (GND))) # (!\Switchleft|r_Debounce_Count\(22) & (!\Switchleft|Add0~43\ & VCC))
-- \Switchleft|Add0~45\ = CARRY((\Switchleft|r_Debounce_Count\(22) & !\Switchleft|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(22),
	datad => VCC,
	cin => \Switchleft|Add0~43\,
	combout => \Switchleft|Add0~44_combout\,
	cout => \Switchleft|Add0~45\);

-- Location: LCCOMB_X47_Y43_N14
\Switchleft|r_Debounce_Count[22]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[22]~4_combout\ = (\Switchleft|r_Switch_State~7_combout\ & (((\Switchleft|r_Debounce_Count\(22))))) # (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|Add0~44_combout\ & ((\Switchleft|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|Add0~44_combout\,
	datab => \Switchleft|r_Switch_State~7_combout\,
	datac => \Switchleft|r_Debounce_Count\(22),
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[22]~4_combout\);

-- Location: FF_X47_Y43_N15
\Switchleft|r_Debounce_Count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(22));

-- Location: LCCOMB_X46_Y42_N30
\Switchleft|r_Switch_State~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Switch_State~0_combout\ = (\Switchleft|r_Debounce_Count\(20) & (\Switchleft|r_Debounce_Count\(21) & (\Switchleft|r_Debounce_Count\(22) & \Switchleft|r_Debounce_Count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(20),
	datab => \Switchleft|r_Debounce_Count\(21),
	datac => \Switchleft|r_Debounce_Count\(22),
	datad => \Switchleft|r_Debounce_Count\(19),
	combout => \Switchleft|r_Switch_State~0_combout\);

-- Location: LCCOMB_X46_Y42_N20
\Switchleft|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~46_combout\ = (\Switchleft|r_Debounce_Count\(23) & (!\Switchleft|Add0~45\)) # (!\Switchleft|r_Debounce_Count\(23) & ((\Switchleft|Add0~45\) # (GND)))
-- \Switchleft|Add0~47\ = CARRY((!\Switchleft|Add0~45\) # (!\Switchleft|r_Debounce_Count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(23),
	datad => VCC,
	cin => \Switchleft|Add0~45\,
	combout => \Switchleft|Add0~46_combout\,
	cout => \Switchleft|Add0~47\);

-- Location: LCCOMB_X47_Y41_N26
\Switchleft|r_Debounce_Count[23]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[23]~0_combout\ = (\Switchleft|r_Switch_State~7_combout\ & (((\Switchleft|r_Debounce_Count\(23))))) # (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|Add0~46_combout\ & ((\Switchleft|p_Debounce~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|Add0~46_combout\,
	datab => \Switchleft|r_Switch_State~7_combout\,
	datac => \Switchleft|r_Debounce_Count\(23),
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[23]~0_combout\);

-- Location: FF_X47_Y41_N27
\Switchleft|r_Debounce_Count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(23));

-- Location: LCCOMB_X47_Y41_N20
\Switchleft|r_Switch_State~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Switch_State~1_combout\ = (\Switchleft|r_Switch_State~0_combout\ & \Switchleft|r_Debounce_Count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Switch_State~0_combout\,
	datac => \Switchleft|r_Debounce_Count\(23),
	combout => \Switchleft|r_Switch_State~1_combout\);

-- Location: LCCOMB_X47_Y41_N2
\Switchleft|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|LessThan0~2_combout\ = ((!\Switchleft|r_Debounce_Count\(18) & ((\Switchleft|LessThan0~1_combout\) # (!\Switchleft|r_Debounce_Count\(17))))) # (!\Switchleft|r_Switch_State~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(18),
	datab => \Switchleft|r_Debounce_Count\(17),
	datac => \Switchleft|LessThan0~1_combout\,
	datad => \Switchleft|r_Switch_State~1_combout\,
	combout => \Switchleft|LessThan0~2_combout\);

-- Location: LCCOMB_X46_Y42_N22
\Switchleft|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~48_combout\ = (\Switchleft|r_Debounce_Count\(24) & (\Switchleft|Add0~47\ $ (GND))) # (!\Switchleft|r_Debounce_Count\(24) & (!\Switchleft|Add0~47\ & VCC))
-- \Switchleft|Add0~49\ = CARRY((\Switchleft|r_Debounce_Count\(24) & !\Switchleft|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(24),
	datad => VCC,
	cin => \Switchleft|Add0~47\,
	combout => \Switchleft|Add0~48_combout\,
	cout => \Switchleft|Add0~49\);

-- Location: LCCOMB_X47_Y41_N14
\Switchleft|Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~53_combout\ = (\Switchleft|Add0~48_combout\ & \Switchleft|p_Debounce~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|Add0~48_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|Add0~53_combout\);

-- Location: FF_X47_Y41_N15
\Switchleft|r_Debounce_Count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(24));

-- Location: LCCOMB_X46_Y42_N24
\Switchleft|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~50_combout\ = \Switchleft|r_Debounce_Count\(25) $ (\Switchleft|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(25),
	cin => \Switchleft|Add0~49\,
	combout => \Switchleft|Add0~50_combout\);

-- Location: LCCOMB_X47_Y42_N30
\Switchleft|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~52_combout\ = (\Switchleft|r_Switch_State~7_combout\) # ((\Switchleft|Add0~50_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|Add0~50_combout\,
	datac => \Switchleft|r_Switch_State~7_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|Add0~52_combout\);

-- Location: FF_X47_Y42_N31
\Switchleft|r_Debounce_Count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(25));

-- Location: LCCOMB_X47_Y41_N12
\Switchleft|p_Debounce~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|p_Debounce~1_combout\ = (\Switchleft|p_Debounce~0_combout\ & (((\Switchleft|LessThan0~2_combout\ & !\Switchleft|r_Debounce_Count\(24))) # (!\Switchleft|r_Debounce_Count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|p_Debounce~0_combout\,
	datab => \Switchleft|LessThan0~2_combout\,
	datac => \Switchleft|r_Debounce_Count\(25),
	datad => \Switchleft|r_Debounce_Count\(24),
	combout => \Switchleft|p_Debounce~1_combout\);

-- Location: LCCOMB_X47_Y43_N4
\Switchleft|r_Debounce_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[0]~13_combout\ = (!\Switchleft|r_Switch_State~7_combout\ & (\Switchleft|Add0~0_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Switch_State~7_combout\,
	datac => \Switchleft|Add0~0_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[0]~13_combout\);

-- Location: FF_X47_Y43_N5
\Switchleft|r_Debounce_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(0));

-- Location: LCCOMB_X46_Y43_N8
\Switchleft|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~2_combout\ = (\Switchleft|r_Debounce_Count\(1) & (!\Switchleft|Add0~1\)) # (!\Switchleft|r_Debounce_Count\(1) & ((\Switchleft|Add0~1\) # (GND)))
-- \Switchleft|Add0~3\ = CARRY((!\Switchleft|Add0~1\) # (!\Switchleft|r_Debounce_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(1),
	datad => VCC,
	cin => \Switchleft|Add0~1\,
	combout => \Switchleft|Add0~2_combout\,
	cout => \Switchleft|Add0~3\);

-- Location: LCCOMB_X47_Y43_N2
\Switchleft|r_Debounce_Count[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[1]~14_combout\ = (\Switchleft|Add0~2_combout\ & (!\Switchleft|r_Switch_State~7_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|Add0~2_combout\,
	datac => \Switchleft|r_Switch_State~7_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[1]~14_combout\);

-- Location: FF_X47_Y43_N3
\Switchleft|r_Debounce_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(1));

-- Location: LCCOMB_X46_Y43_N10
\Switchleft|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~4_combout\ = (\Switchleft|r_Debounce_Count\(2) & (\Switchleft|Add0~3\ $ (GND))) # (!\Switchleft|r_Debounce_Count\(2) & (!\Switchleft|Add0~3\ & VCC))
-- \Switchleft|Add0~5\ = CARRY((\Switchleft|r_Debounce_Count\(2) & !\Switchleft|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switchleft|r_Debounce_Count\(2),
	datad => VCC,
	cin => \Switchleft|Add0~3\,
	combout => \Switchleft|Add0~4_combout\,
	cout => \Switchleft|Add0~5\);

-- Location: LCCOMB_X47_Y43_N0
\Switchleft|r_Debounce_Count[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[2]~15_combout\ = (\Switchleft|Add0~4_combout\ & (!\Switchleft|r_Switch_State~7_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|Add0~4_combout\,
	datac => \Switchleft|r_Switch_State~7_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[2]~15_combout\);

-- Location: FF_X47_Y43_N1
\Switchleft|r_Debounce_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(2));

-- Location: LCCOMB_X46_Y43_N12
\Switchleft|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|Add0~6_combout\ = (\Switchleft|r_Debounce_Count\(3) & (!\Switchleft|Add0~5\)) # (!\Switchleft|r_Debounce_Count\(3) & ((\Switchleft|Add0~5\) # (GND)))
-- \Switchleft|Add0~7\ = CARRY((!\Switchleft|Add0~5\) # (!\Switchleft|r_Debounce_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(3),
	datad => VCC,
	cin => \Switchleft|Add0~5\,
	combout => \Switchleft|Add0~6_combout\,
	cout => \Switchleft|Add0~7\);

-- Location: LCCOMB_X47_Y43_N30
\Switchleft|r_Debounce_Count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[3]~16_combout\ = (\Switchleft|Add0~6_combout\ & (!\Switchleft|r_Switch_State~7_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|Add0~6_combout\,
	datac => \Switchleft|r_Switch_State~7_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[3]~16_combout\);

-- Location: FF_X47_Y43_N31
\Switchleft|r_Debounce_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(3));

-- Location: LCCOMB_X47_Y43_N6
\Switchleft|r_Debounce_Count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Debounce_Count[4]~18_combout\ = (\Switchleft|Add0~8_combout\ & (!\Switchleft|r_Switch_State~7_combout\ & \Switchleft|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|Add0~8_combout\,
	datac => \Switchleft|r_Switch_State~7_combout\,
	datad => \Switchleft|p_Debounce~1_combout\,
	combout => \Switchleft|r_Debounce_Count[4]~18_combout\);

-- Location: FF_X47_Y43_N7
\Switchleft|r_Debounce_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Debounce_Count[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Debounce_Count\(4));

-- Location: LCCOMB_X46_Y43_N4
\Switchleft|r_Switch_State~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Switch_State~4_combout\ = (!\Switchleft|r_Debounce_Count\(4) & (!\Switchleft|r_Debounce_Count\(6) & (!\Switchleft|r_Debounce_Count\(5) & \Switchleft|r_Debounce_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(4),
	datab => \Switchleft|r_Debounce_Count\(6),
	datac => \Switchleft|r_Debounce_Count\(5),
	datad => \Switchleft|r_Debounce_Count\(7),
	combout => \Switchleft|r_Switch_State~4_combout\);

-- Location: LCCOMB_X47_Y43_N28
\Switchleft|r_Switch_State~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Switch_State~3_combout\ = (!\Switchleft|r_Debounce_Count\(3) & (!\Switchleft|r_Debounce_Count\(1) & (!\Switchleft|r_Debounce_Count\(0) & !\Switchleft|r_Debounce_Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(3),
	datab => \Switchleft|r_Debounce_Count\(1),
	datac => \Switchleft|r_Debounce_Count\(0),
	datad => \Switchleft|r_Debounce_Count\(2),
	combout => \Switchleft|r_Switch_State~3_combout\);

-- Location: LCCOMB_X47_Y41_N28
\Switchleft|r_Switch_State~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Switch_State~5_combout\ = (!\Switchleft|r_Debounce_Count\(24) & (\Switchleft|r_Debounce_Count\(17) & (!\Switchleft|r_Debounce_Count\(16) & !\Switchleft|r_Debounce_Count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Debounce_Count\(24),
	datab => \Switchleft|r_Debounce_Count\(17),
	datac => \Switchleft|r_Debounce_Count\(16),
	datad => \Switchleft|r_Debounce_Count\(18),
	combout => \Switchleft|r_Switch_State~5_combout\);

-- Location: LCCOMB_X47_Y41_N10
\Switchleft|r_Switch_State~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Switch_State~6_combout\ = (\Switchleft|r_Switch_State~4_combout\ & (\Switchleft|r_Switch_State~3_combout\ & (\Switchleft|r_Debounce_Count\(25) & \Switchleft|r_Switch_State~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Switch_State~4_combout\,
	datab => \Switchleft|r_Switch_State~3_combout\,
	datac => \Switchleft|r_Debounce_Count\(25),
	datad => \Switchleft|r_Switch_State~5_combout\,
	combout => \Switchleft|r_Switch_State~6_combout\);

-- Location: LCCOMB_X47_Y41_N24
\Switchleft|r_Switch_State~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Switch_State~7_combout\ = (\Switchleft|r_Switch_State~6_combout\ & (\Switchleft|r_Switch_State~2_combout\ & (\Switchleft|LessThan0~0_combout\ & \Switchleft|r_Switch_State~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switchleft|r_Switch_State~6_combout\,
	datab => \Switchleft|r_Switch_State~2_combout\,
	datac => \Switchleft|LessThan0~0_combout\,
	datad => \Switchleft|r_Switch_State~1_combout\,
	combout => \Switchleft|r_Switch_State~7_combout\);

-- Location: LCCOMB_X47_Y41_N16
\Switchleft|r_Switch_State~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switchleft|r_Switch_State~8_combout\ = (\Switchleft|r_Switch_State~7_combout\ & (\push_button_left~input_o\)) # (!\Switchleft|r_Switch_State~7_combout\ & ((\Switchleft|r_Switch_State~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \push_button_left~input_o\,
	datac => \Switchleft|r_Switch_State~q\,
	datad => \Switchleft|r_Switch_State~7_combout\,
	combout => \Switchleft|r_Switch_State~8_combout\);

-- Location: FF_X47_Y41_N17
\Switchleft|r_Switch_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switchleft|r_Switch_State~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switchleft|r_Switch_State~q\);

-- Location: LCCOMB_X46_Y41_N4
\movement_ctrl_inst|push_button_left_prev~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|push_button_left_prev~0_combout\ = !\Switchleft|r_Switch_State~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Switchleft|r_Switch_State~q\,
	combout => \movement_ctrl_inst|push_button_left_prev~0_combout\);

-- Location: FF_X46_Y41_N5
\movement_ctrl_inst|push_button_left_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|push_button_left_prev~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|push_button_left_prev~q\);

-- Location: LCCOMB_X46_Y41_N2
\movement_ctrl_inst|x_stand[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand[9]~3_combout\ = (\movement_ctrl_inst|push_button_right_prev~q\ & (((!\movement_ctrl_inst|push_button_left_prev~q\ & !\Switchleft|r_Switch_State~q\)))) # (!\movement_ctrl_inst|push_button_right_prev~q\ & 
-- (((!\movement_ctrl_inst|push_button_left_prev~q\ & !\Switchleft|r_Switch_State~q\)) # (!\Switchright|r_Switch_State~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|push_button_right_prev~q\,
	datab => \Switchright|r_Switch_State~q\,
	datac => \movement_ctrl_inst|push_button_left_prev~q\,
	datad => \Switchleft|r_Switch_State~q\,
	combout => \movement_ctrl_inst|x_stand[9]~3_combout\);

-- Location: FF_X46_Y41_N25
\movement_ctrl_inst|x_stand[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_stand~5_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|x_stand[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_stand\(9));

-- Location: LCCOMB_X45_Y42_N20
\movement_ctrl_inst|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add2~18_combout\ = (\movement_ctrl_inst|x_stand\(10) & ((\movement_ctrl_inst|STAND_SPEED\(10) & (\movement_ctrl_inst|Add2~17\ & VCC)) # (!\movement_ctrl_inst|STAND_SPEED\(10) & (!\movement_ctrl_inst|Add2~17\)))) # 
-- (!\movement_ctrl_inst|x_stand\(10) & ((\movement_ctrl_inst|STAND_SPEED\(10) & (!\movement_ctrl_inst|Add2~17\)) # (!\movement_ctrl_inst|STAND_SPEED\(10) & ((\movement_ctrl_inst|Add2~17\) # (GND)))))
-- \movement_ctrl_inst|Add2~19\ = CARRY((\movement_ctrl_inst|x_stand\(10) & (!\movement_ctrl_inst|STAND_SPEED\(10) & !\movement_ctrl_inst|Add2~17\)) # (!\movement_ctrl_inst|x_stand\(10) & ((!\movement_ctrl_inst|Add2~17\) # 
-- (!\movement_ctrl_inst|STAND_SPEED\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(10),
	datab => \movement_ctrl_inst|STAND_SPEED\(10),
	datad => VCC,
	cin => \movement_ctrl_inst|Add2~17\,
	combout => \movement_ctrl_inst|Add2~18_combout\,
	cout => \movement_ctrl_inst|Add2~19\);

-- Location: LCCOMB_X46_Y45_N18
\movement_ctrl_inst|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add1~18_combout\ = (\movement_ctrl_inst|x_stand\(10) & ((\movement_ctrl_inst|STAND_SPEED\(10) & (!\movement_ctrl_inst|Add1~17\)) # (!\movement_ctrl_inst|STAND_SPEED\(10) & (\movement_ctrl_inst|Add1~17\ & VCC)))) # 
-- (!\movement_ctrl_inst|x_stand\(10) & ((\movement_ctrl_inst|STAND_SPEED\(10) & ((\movement_ctrl_inst|Add1~17\) # (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(10) & (!\movement_ctrl_inst|Add1~17\))))
-- \movement_ctrl_inst|Add1~19\ = CARRY((\movement_ctrl_inst|x_stand\(10) & (\movement_ctrl_inst|STAND_SPEED\(10) & !\movement_ctrl_inst|Add1~17\)) # (!\movement_ctrl_inst|x_stand\(10) & ((\movement_ctrl_inst|STAND_SPEED\(10)) # 
-- (!\movement_ctrl_inst|Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(10),
	datab => \movement_ctrl_inst|STAND_SPEED\(10),
	datad => VCC,
	cin => \movement_ctrl_inst|Add1~17\,
	combout => \movement_ctrl_inst|Add1~18_combout\,
	cout => \movement_ctrl_inst|Add1~19\);

-- Location: LCCOMB_X46_Y41_N22
\movement_ctrl_inst|x_stand~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~4_combout\ = (!\movement_ctrl_inst|x_stand[9]~1_combout\ & ((\movement_ctrl_inst|update_stand_position~0_combout\ & (\movement_ctrl_inst|Add2~18_combout\)) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & 
-- ((\movement_ctrl_inst|Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add2~18_combout\,
	datab => \movement_ctrl_inst|update_stand_position~0_combout\,
	datac => \movement_ctrl_inst|Add1~18_combout\,
	datad => \movement_ctrl_inst|x_stand[9]~1_combout\,
	combout => \movement_ctrl_inst|x_stand~4_combout\);

-- Location: FF_X46_Y41_N23
\movement_ctrl_inst|x_stand[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_stand~4_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|x_stand[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_stand\(10));

-- Location: LCCOMB_X45_Y42_N28
\movement_ctrl_inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan1~0_combout\ = (\movement_ctrl_inst|x_stand\(8)) # ((!\movement_ctrl_inst|x_stand\(2) & (\movement_ctrl_inst|x_stand\(4) & \movement_ctrl_inst|x_stand\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(2),
	datab => \movement_ctrl_inst|x_stand\(8),
	datac => \movement_ctrl_inst|x_stand\(4),
	datad => \movement_ctrl_inst|x_stand\(3),
	combout => \movement_ctrl_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X45_Y42_N0
\movement_ctrl_inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan1~1_combout\ = (\movement_ctrl_inst|x_stand\(7)) # (((\movement_ctrl_inst|LessThan1~0_combout\) # (!\movement_ctrl_inst|x_stand\(6))) # (!\movement_ctrl_inst|x_stand\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(7),
	datab => \movement_ctrl_inst|x_stand\(5),
	datac => \movement_ctrl_inst|x_stand\(6),
	datad => \movement_ctrl_inst|LessThan1~0_combout\,
	combout => \movement_ctrl_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X45_Y45_N20
\movement_ctrl_inst|Add10~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~18_combout\ = (\movement_ctrl_inst|STAND_SPEED\(11) & (!\movement_ctrl_inst|Add10~17\)) # (!\movement_ctrl_inst|STAND_SPEED\(11) & ((\movement_ctrl_inst|Add10~17\) # (GND)))
-- \movement_ctrl_inst|Add10~19\ = CARRY((!\movement_ctrl_inst|Add10~17\) # (!\movement_ctrl_inst|STAND_SPEED\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(11),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~17\,
	combout => \movement_ctrl_inst|Add10~18_combout\,
	cout => \movement_ctrl_inst|Add10~19\);

-- Location: FF_X45_Y45_N21
\movement_ctrl_inst|STAND_SPEED[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~18_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(11));

-- Location: LCCOMB_X46_Y45_N20
\movement_ctrl_inst|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add1~20_combout\ = \movement_ctrl_inst|x_stand\(11) $ (\movement_ctrl_inst|Add1~19\ $ (\movement_ctrl_inst|STAND_SPEED\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(11),
	datad => \movement_ctrl_inst|STAND_SPEED\(11),
	cin => \movement_ctrl_inst|Add1~19\,
	combout => \movement_ctrl_inst|Add1~20_combout\);

-- Location: LCCOMB_X45_Y42_N22
\movement_ctrl_inst|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add2~20_combout\ = \movement_ctrl_inst|x_stand\(11) $ (\movement_ctrl_inst|Add2~19\ $ (!\movement_ctrl_inst|STAND_SPEED\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_stand\(11),
	datad => \movement_ctrl_inst|STAND_SPEED\(11),
	cin => \movement_ctrl_inst|Add2~19\,
	combout => \movement_ctrl_inst|Add2~20_combout\);

-- Location: LCCOMB_X46_Y41_N12
\movement_ctrl_inst|x_stand~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~2_combout\ = (!\movement_ctrl_inst|x_stand[9]~1_combout\ & ((\movement_ctrl_inst|update_stand_position~0_combout\ & ((\movement_ctrl_inst|Add2~20_combout\))) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & 
-- (\movement_ctrl_inst|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add1~20_combout\,
	datab => \movement_ctrl_inst|Add2~20_combout\,
	datac => \movement_ctrl_inst|update_stand_position~0_combout\,
	datad => \movement_ctrl_inst|x_stand[9]~1_combout\,
	combout => \movement_ctrl_inst|x_stand~2_combout\);

-- Location: FF_X46_Y41_N13
\movement_ctrl_inst|x_stand[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_stand~2_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|x_stand[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_stand\(11));

-- Location: LCCOMB_X45_Y42_N30
\movement_ctrl_inst|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan1~2_combout\ = (\movement_ctrl_inst|x_stand\(10)) # ((\movement_ctrl_inst|x_stand\(11)) # ((\movement_ctrl_inst|x_stand\(9) & \movement_ctrl_inst|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(10),
	datab => \movement_ctrl_inst|x_stand\(9),
	datac => \movement_ctrl_inst|LessThan1~1_combout\,
	datad => \movement_ctrl_inst|x_stand\(11),
	combout => \movement_ctrl_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X45_Y45_N22
\movement_ctrl_inst|Add10~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~20_combout\ = (\movement_ctrl_inst|STAND_SPEED\(12) & (\movement_ctrl_inst|Add10~19\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(12) & (!\movement_ctrl_inst|Add10~19\ & VCC))
-- \movement_ctrl_inst|Add10~21\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(12) & !\movement_ctrl_inst|Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(12),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~19\,
	combout => \movement_ctrl_inst|Add10~20_combout\,
	cout => \movement_ctrl_inst|Add10~21\);

-- Location: FF_X45_Y45_N23
\movement_ctrl_inst|STAND_SPEED[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~20_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(12));

-- Location: LCCOMB_X45_Y45_N24
\movement_ctrl_inst|Add10~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~22_combout\ = (\movement_ctrl_inst|STAND_SPEED\(13) & (!\movement_ctrl_inst|Add10~21\)) # (!\movement_ctrl_inst|STAND_SPEED\(13) & ((\movement_ctrl_inst|Add10~21\) # (GND)))
-- \movement_ctrl_inst|Add10~23\ = CARRY((!\movement_ctrl_inst|Add10~21\) # (!\movement_ctrl_inst|STAND_SPEED\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(13),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~21\,
	combout => \movement_ctrl_inst|Add10~22_combout\,
	cout => \movement_ctrl_inst|Add10~23\);

-- Location: FF_X45_Y45_N25
\movement_ctrl_inst|STAND_SPEED[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~22_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(13));

-- Location: LCCOMB_X45_Y45_N26
\movement_ctrl_inst|Add10~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~24_combout\ = (\movement_ctrl_inst|STAND_SPEED\(14) & (\movement_ctrl_inst|Add10~23\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(14) & (!\movement_ctrl_inst|Add10~23\ & VCC))
-- \movement_ctrl_inst|Add10~25\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(14) & !\movement_ctrl_inst|Add10~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(14),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~23\,
	combout => \movement_ctrl_inst|Add10~24_combout\,
	cout => \movement_ctrl_inst|Add10~25\);

-- Location: FF_X45_Y45_N27
\movement_ctrl_inst|STAND_SPEED[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~24_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(14));

-- Location: LCCOMB_X45_Y45_N0
\movement_ctrl_inst|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~5_combout\ = (!\movement_ctrl_inst|STAND_SPEED\(14) & !\movement_ctrl_inst|STAND_SPEED\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|STAND_SPEED\(14),
	datad => \movement_ctrl_inst|STAND_SPEED\(13),
	combout => \movement_ctrl_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X45_Y41_N10
\movement_ctrl_inst|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~7_cout\ = CARRY((\movement_ctrl_inst|x_stand\(1) & !\movement_ctrl_inst|STAND_SPEED\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(1),
	datab => \movement_ctrl_inst|STAND_SPEED\(1),
	datad => VCC,
	cout => \movement_ctrl_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X45_Y41_N12
\movement_ctrl_inst|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~9_cout\ = CARRY((\movement_ctrl_inst|x_stand\(2) & ((!\movement_ctrl_inst|LessThan0~7_cout\) # (!\movement_ctrl_inst|STAND_SPEED\(2)))) # (!\movement_ctrl_inst|x_stand\(2) & (!\movement_ctrl_inst|STAND_SPEED\(2) & 
-- !\movement_ctrl_inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(2),
	datab => \movement_ctrl_inst|STAND_SPEED\(2),
	datad => VCC,
	cin => \movement_ctrl_inst|LessThan0~7_cout\,
	cout => \movement_ctrl_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X45_Y41_N14
\movement_ctrl_inst|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~11_cout\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(3) & (\movement_ctrl_inst|x_stand\(3) & !\movement_ctrl_inst|LessThan0~9_cout\)) # (!\movement_ctrl_inst|STAND_SPEED\(3) & ((\movement_ctrl_inst|x_stand\(3)) # 
-- (!\movement_ctrl_inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(3),
	datab => \movement_ctrl_inst|x_stand\(3),
	datad => VCC,
	cin => \movement_ctrl_inst|LessThan0~9_cout\,
	cout => \movement_ctrl_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X45_Y41_N16
\movement_ctrl_inst|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~13_cout\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(4) & (!\movement_ctrl_inst|x_stand\(4) & !\movement_ctrl_inst|LessThan0~11_cout\)) # (!\movement_ctrl_inst|STAND_SPEED\(4) & ((!\movement_ctrl_inst|LessThan0~11_cout\) # 
-- (!\movement_ctrl_inst|x_stand\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(4),
	datab => \movement_ctrl_inst|x_stand\(4),
	datad => VCC,
	cin => \movement_ctrl_inst|LessThan0~11_cout\,
	cout => \movement_ctrl_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X45_Y41_N18
\movement_ctrl_inst|LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~15_cout\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(5) & (!\movement_ctrl_inst|x_stand\(5) & !\movement_ctrl_inst|LessThan0~13_cout\)) # (!\movement_ctrl_inst|STAND_SPEED\(5) & ((!\movement_ctrl_inst|LessThan0~13_cout\) # 
-- (!\movement_ctrl_inst|x_stand\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(5),
	datab => \movement_ctrl_inst|x_stand\(5),
	datad => VCC,
	cin => \movement_ctrl_inst|LessThan0~13_cout\,
	cout => \movement_ctrl_inst|LessThan0~15_cout\);

-- Location: LCCOMB_X45_Y41_N20
\movement_ctrl_inst|LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~17_cout\ = CARRY((\movement_ctrl_inst|x_stand\(6) & ((\movement_ctrl_inst|STAND_SPEED\(6)) # (!\movement_ctrl_inst|LessThan0~15_cout\))) # (!\movement_ctrl_inst|x_stand\(6) & (\movement_ctrl_inst|STAND_SPEED\(6) & 
-- !\movement_ctrl_inst|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(6),
	datab => \movement_ctrl_inst|STAND_SPEED\(6),
	datad => VCC,
	cin => \movement_ctrl_inst|LessThan0~15_cout\,
	cout => \movement_ctrl_inst|LessThan0~17_cout\);

-- Location: LCCOMB_X45_Y41_N22
\movement_ctrl_inst|LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~19_cout\ = CARRY((\movement_ctrl_inst|x_stand\(7) & ((!\movement_ctrl_inst|LessThan0~17_cout\) # (!\movement_ctrl_inst|STAND_SPEED\(7)))) # (!\movement_ctrl_inst|x_stand\(7) & (!\movement_ctrl_inst|STAND_SPEED\(7) & 
-- !\movement_ctrl_inst|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(7),
	datab => \movement_ctrl_inst|STAND_SPEED\(7),
	datad => VCC,
	cin => \movement_ctrl_inst|LessThan0~17_cout\,
	cout => \movement_ctrl_inst|LessThan0~19_cout\);

-- Location: LCCOMB_X45_Y41_N24
\movement_ctrl_inst|LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~21_cout\ = CARRY((\movement_ctrl_inst|x_stand\(8) & (\movement_ctrl_inst|STAND_SPEED\(8) & !\movement_ctrl_inst|LessThan0~19_cout\)) # (!\movement_ctrl_inst|x_stand\(8) & ((\movement_ctrl_inst|STAND_SPEED\(8)) # 
-- (!\movement_ctrl_inst|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(8),
	datab => \movement_ctrl_inst|STAND_SPEED\(8),
	datad => VCC,
	cin => \movement_ctrl_inst|LessThan0~19_cout\,
	cout => \movement_ctrl_inst|LessThan0~21_cout\);

-- Location: LCCOMB_X45_Y41_N26
\movement_ctrl_inst|LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~23_cout\ = CARRY((\movement_ctrl_inst|x_stand\(9) & ((!\movement_ctrl_inst|LessThan0~21_cout\) # (!\movement_ctrl_inst|STAND_SPEED\(9)))) # (!\movement_ctrl_inst|x_stand\(9) & (!\movement_ctrl_inst|STAND_SPEED\(9) & 
-- !\movement_ctrl_inst|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(9),
	datab => \movement_ctrl_inst|STAND_SPEED\(9),
	datad => VCC,
	cin => \movement_ctrl_inst|LessThan0~21_cout\,
	cout => \movement_ctrl_inst|LessThan0~23_cout\);

-- Location: LCCOMB_X45_Y41_N28
\movement_ctrl_inst|LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~25_cout\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(10) & ((!\movement_ctrl_inst|LessThan0~23_cout\) # (!\movement_ctrl_inst|x_stand\(10)))) # (!\movement_ctrl_inst|STAND_SPEED\(10) & (!\movement_ctrl_inst|x_stand\(10) & 
-- !\movement_ctrl_inst|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(10),
	datab => \movement_ctrl_inst|x_stand\(10),
	datad => VCC,
	cin => \movement_ctrl_inst|LessThan0~23_cout\,
	cout => \movement_ctrl_inst|LessThan0~25_cout\);

-- Location: LCCOMB_X45_Y41_N30
\movement_ctrl_inst|LessThan0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~26_combout\ = (\movement_ctrl_inst|x_stand\(11) & ((!\movement_ctrl_inst|STAND_SPEED\(11)) # (!\movement_ctrl_inst|LessThan0~25_cout\))) # (!\movement_ctrl_inst|x_stand\(11) & (!\movement_ctrl_inst|LessThan0~25_cout\ & 
-- !\movement_ctrl_inst|STAND_SPEED\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_stand\(11),
	datad => \movement_ctrl_inst|STAND_SPEED\(11),
	cin => \movement_ctrl_inst|LessThan0~25_cout\,
	combout => \movement_ctrl_inst|LessThan0~26_combout\);

-- Location: LCCOMB_X45_Y45_N28
\movement_ctrl_inst|Add10~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~26_combout\ = (\movement_ctrl_inst|STAND_SPEED\(15) & (!\movement_ctrl_inst|Add10~25\)) # (!\movement_ctrl_inst|STAND_SPEED\(15) & ((\movement_ctrl_inst|Add10~25\) # (GND)))
-- \movement_ctrl_inst|Add10~27\ = CARRY((!\movement_ctrl_inst|Add10~25\) # (!\movement_ctrl_inst|STAND_SPEED\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(15),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~25\,
	combout => \movement_ctrl_inst|Add10~26_combout\,
	cout => \movement_ctrl_inst|Add10~27\);

-- Location: FF_X45_Y45_N29
\movement_ctrl_inst|STAND_SPEED[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~26_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(15));

-- Location: LCCOMB_X45_Y45_N30
\movement_ctrl_inst|Add10~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~28_combout\ = (\movement_ctrl_inst|STAND_SPEED\(16) & (\movement_ctrl_inst|Add10~27\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(16) & (!\movement_ctrl_inst|Add10~27\ & VCC))
-- \movement_ctrl_inst|Add10~29\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(16) & !\movement_ctrl_inst|Add10~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(16),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~27\,
	combout => \movement_ctrl_inst|Add10~28_combout\,
	cout => \movement_ctrl_inst|Add10~29\);

-- Location: FF_X45_Y45_N31
\movement_ctrl_inst|STAND_SPEED[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~28_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(16));

-- Location: LCCOMB_X45_Y44_N0
\movement_ctrl_inst|Add10~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~30_combout\ = (\movement_ctrl_inst|STAND_SPEED\(17) & (!\movement_ctrl_inst|Add10~29\)) # (!\movement_ctrl_inst|STAND_SPEED\(17) & ((\movement_ctrl_inst|Add10~29\) # (GND)))
-- \movement_ctrl_inst|Add10~31\ = CARRY((!\movement_ctrl_inst|Add10~29\) # (!\movement_ctrl_inst|STAND_SPEED\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(17),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~29\,
	combout => \movement_ctrl_inst|Add10~30_combout\,
	cout => \movement_ctrl_inst|Add10~31\);

-- Location: FF_X45_Y44_N1
\movement_ctrl_inst|STAND_SPEED[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~30_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(17));

-- Location: LCCOMB_X45_Y44_N2
\movement_ctrl_inst|Add10~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~32_combout\ = (\movement_ctrl_inst|STAND_SPEED\(18) & (\movement_ctrl_inst|Add10~31\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(18) & (!\movement_ctrl_inst|Add10~31\ & VCC))
-- \movement_ctrl_inst|Add10~33\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(18) & !\movement_ctrl_inst|Add10~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(18),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~31\,
	combout => \movement_ctrl_inst|Add10~32_combout\,
	cout => \movement_ctrl_inst|Add10~33\);

-- Location: FF_X45_Y44_N3
\movement_ctrl_inst|STAND_SPEED[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~32_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(18));

-- Location: LCCOMB_X45_Y44_N4
\movement_ctrl_inst|Add10~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~34_combout\ = (\movement_ctrl_inst|STAND_SPEED\(19) & (!\movement_ctrl_inst|Add10~33\)) # (!\movement_ctrl_inst|STAND_SPEED\(19) & ((\movement_ctrl_inst|Add10~33\) # (GND)))
-- \movement_ctrl_inst|Add10~35\ = CARRY((!\movement_ctrl_inst|Add10~33\) # (!\movement_ctrl_inst|STAND_SPEED\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(19),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~33\,
	combout => \movement_ctrl_inst|Add10~34_combout\,
	cout => \movement_ctrl_inst|Add10~35\);

-- Location: FF_X45_Y44_N5
\movement_ctrl_inst|STAND_SPEED[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~34_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(19));

-- Location: LCCOMB_X45_Y44_N6
\movement_ctrl_inst|Add10~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~36_combout\ = (\movement_ctrl_inst|STAND_SPEED\(20) & (\movement_ctrl_inst|Add10~35\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(20) & (!\movement_ctrl_inst|Add10~35\ & VCC))
-- \movement_ctrl_inst|Add10~37\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(20) & !\movement_ctrl_inst|Add10~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(20),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~35\,
	combout => \movement_ctrl_inst|Add10~36_combout\,
	cout => \movement_ctrl_inst|Add10~37\);

-- Location: FF_X45_Y44_N7
\movement_ctrl_inst|STAND_SPEED[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~36_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(20));

-- Location: LCCOMB_X45_Y44_N8
\movement_ctrl_inst|Add10~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~38_combout\ = (\movement_ctrl_inst|STAND_SPEED\(21) & (!\movement_ctrl_inst|Add10~37\)) # (!\movement_ctrl_inst|STAND_SPEED\(21) & ((\movement_ctrl_inst|Add10~37\) # (GND)))
-- \movement_ctrl_inst|Add10~39\ = CARRY((!\movement_ctrl_inst|Add10~37\) # (!\movement_ctrl_inst|STAND_SPEED\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(21),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~37\,
	combout => \movement_ctrl_inst|Add10~38_combout\,
	cout => \movement_ctrl_inst|Add10~39\);

-- Location: FF_X45_Y44_N9
\movement_ctrl_inst|STAND_SPEED[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~38_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(21));

-- Location: LCCOMB_X45_Y44_N10
\movement_ctrl_inst|Add10~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~40_combout\ = (\movement_ctrl_inst|STAND_SPEED\(22) & (\movement_ctrl_inst|Add10~39\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(22) & (!\movement_ctrl_inst|Add10~39\ & VCC))
-- \movement_ctrl_inst|Add10~41\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(22) & !\movement_ctrl_inst|Add10~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(22),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~39\,
	combout => \movement_ctrl_inst|Add10~40_combout\,
	cout => \movement_ctrl_inst|Add10~41\);

-- Location: FF_X45_Y44_N11
\movement_ctrl_inst|STAND_SPEED[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~40_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(22));

-- Location: LCCOMB_X45_Y44_N12
\movement_ctrl_inst|Add10~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~42_combout\ = (\movement_ctrl_inst|STAND_SPEED\(23) & (!\movement_ctrl_inst|Add10~41\)) # (!\movement_ctrl_inst|STAND_SPEED\(23) & ((\movement_ctrl_inst|Add10~41\) # (GND)))
-- \movement_ctrl_inst|Add10~43\ = CARRY((!\movement_ctrl_inst|Add10~41\) # (!\movement_ctrl_inst|STAND_SPEED\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(23),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~41\,
	combout => \movement_ctrl_inst|Add10~42_combout\,
	cout => \movement_ctrl_inst|Add10~43\);

-- Location: FF_X45_Y44_N13
\movement_ctrl_inst|STAND_SPEED[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~42_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(23));

-- Location: LCCOMB_X45_Y44_N14
\movement_ctrl_inst|Add10~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~44_combout\ = (\movement_ctrl_inst|STAND_SPEED\(24) & (\movement_ctrl_inst|Add10~43\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(24) & (!\movement_ctrl_inst|Add10~43\ & VCC))
-- \movement_ctrl_inst|Add10~45\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(24) & !\movement_ctrl_inst|Add10~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(24),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~43\,
	combout => \movement_ctrl_inst|Add10~44_combout\,
	cout => \movement_ctrl_inst|Add10~45\);

-- Location: FF_X45_Y44_N15
\movement_ctrl_inst|STAND_SPEED[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~44_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(24));

-- Location: LCCOMB_X45_Y44_N16
\movement_ctrl_inst|Add10~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~46_combout\ = (\movement_ctrl_inst|STAND_SPEED\(25) & (!\movement_ctrl_inst|Add10~45\)) # (!\movement_ctrl_inst|STAND_SPEED\(25) & ((\movement_ctrl_inst|Add10~45\) # (GND)))
-- \movement_ctrl_inst|Add10~47\ = CARRY((!\movement_ctrl_inst|Add10~45\) # (!\movement_ctrl_inst|STAND_SPEED\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(25),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~45\,
	combout => \movement_ctrl_inst|Add10~46_combout\,
	cout => \movement_ctrl_inst|Add10~47\);

-- Location: FF_X45_Y44_N17
\movement_ctrl_inst|STAND_SPEED[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~46_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(25));

-- Location: LCCOMB_X45_Y44_N18
\movement_ctrl_inst|Add10~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~48_combout\ = (\movement_ctrl_inst|STAND_SPEED\(26) & (\movement_ctrl_inst|Add10~47\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(26) & (!\movement_ctrl_inst|Add10~47\ & VCC))
-- \movement_ctrl_inst|Add10~49\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(26) & !\movement_ctrl_inst|Add10~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(26),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~47\,
	combout => \movement_ctrl_inst|Add10~48_combout\,
	cout => \movement_ctrl_inst|Add10~49\);

-- Location: FF_X45_Y44_N19
\movement_ctrl_inst|STAND_SPEED[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~48_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(26));

-- Location: LCCOMB_X45_Y44_N20
\movement_ctrl_inst|Add10~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~50_combout\ = (\movement_ctrl_inst|STAND_SPEED\(27) & (!\movement_ctrl_inst|Add10~49\)) # (!\movement_ctrl_inst|STAND_SPEED\(27) & ((\movement_ctrl_inst|Add10~49\) # (GND)))
-- \movement_ctrl_inst|Add10~51\ = CARRY((!\movement_ctrl_inst|Add10~49\) # (!\movement_ctrl_inst|STAND_SPEED\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(27),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~49\,
	combout => \movement_ctrl_inst|Add10~50_combout\,
	cout => \movement_ctrl_inst|Add10~51\);

-- Location: FF_X45_Y44_N21
\movement_ctrl_inst|STAND_SPEED[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~50_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(27));

-- Location: LCCOMB_X45_Y44_N22
\movement_ctrl_inst|Add10~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~52_combout\ = (\movement_ctrl_inst|STAND_SPEED\(28) & (\movement_ctrl_inst|Add10~51\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(28) & (!\movement_ctrl_inst|Add10~51\ & VCC))
-- \movement_ctrl_inst|Add10~53\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(28) & !\movement_ctrl_inst|Add10~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(28),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~51\,
	combout => \movement_ctrl_inst|Add10~52_combout\,
	cout => \movement_ctrl_inst|Add10~53\);

-- Location: FF_X45_Y44_N23
\movement_ctrl_inst|STAND_SPEED[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~52_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(28));

-- Location: LCCOMB_X45_Y44_N24
\movement_ctrl_inst|Add10~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~54_combout\ = (\movement_ctrl_inst|STAND_SPEED\(29) & (!\movement_ctrl_inst|Add10~53\)) # (!\movement_ctrl_inst|STAND_SPEED\(29) & ((\movement_ctrl_inst|Add10~53\) # (GND)))
-- \movement_ctrl_inst|Add10~55\ = CARRY((!\movement_ctrl_inst|Add10~53\) # (!\movement_ctrl_inst|STAND_SPEED\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|STAND_SPEED\(29),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~53\,
	combout => \movement_ctrl_inst|Add10~54_combout\,
	cout => \movement_ctrl_inst|Add10~55\);

-- Location: FF_X45_Y44_N25
\movement_ctrl_inst|STAND_SPEED[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~54_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(29));

-- Location: LCCOMB_X45_Y44_N26
\movement_ctrl_inst|Add10~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~56_combout\ = (\movement_ctrl_inst|STAND_SPEED\(30) & (\movement_ctrl_inst|Add10~55\ $ (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(30) & (!\movement_ctrl_inst|Add10~55\ & VCC))
-- \movement_ctrl_inst|Add10~57\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(30) & !\movement_ctrl_inst|Add10~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(30),
	datad => VCC,
	cin => \movement_ctrl_inst|Add10~55\,
	combout => \movement_ctrl_inst|Add10~56_combout\,
	cout => \movement_ctrl_inst|Add10~57\);

-- Location: FF_X45_Y44_N27
\movement_ctrl_inst|STAND_SPEED[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~56_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(30));

-- Location: LCCOMB_X44_Y44_N12
\movement_ctrl_inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~0_combout\ = (!\movement_ctrl_inst|STAND_SPEED\(28) & (!\movement_ctrl_inst|STAND_SPEED\(29) & (!\movement_ctrl_inst|STAND_SPEED\(27) & !\movement_ctrl_inst|STAND_SPEED\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(28),
	datab => \movement_ctrl_inst|STAND_SPEED\(29),
	datac => \movement_ctrl_inst|STAND_SPEED\(27),
	datad => \movement_ctrl_inst|STAND_SPEED\(30),
	combout => \movement_ctrl_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X44_Y44_N8
\movement_ctrl_inst|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~3_combout\ = (!\movement_ctrl_inst|STAND_SPEED\(18) & (!\movement_ctrl_inst|STAND_SPEED\(17) & (!\movement_ctrl_inst|STAND_SPEED\(15) & !\movement_ctrl_inst|STAND_SPEED\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(18),
	datab => \movement_ctrl_inst|STAND_SPEED\(17),
	datac => \movement_ctrl_inst|STAND_SPEED\(15),
	datad => \movement_ctrl_inst|STAND_SPEED\(16),
	combout => \movement_ctrl_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X45_Y44_N30
\movement_ctrl_inst|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~2_combout\ = (!\movement_ctrl_inst|STAND_SPEED\(20) & (!\movement_ctrl_inst|STAND_SPEED\(21) & (!\movement_ctrl_inst|STAND_SPEED\(19) & !\movement_ctrl_inst|STAND_SPEED\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(20),
	datab => \movement_ctrl_inst|STAND_SPEED\(21),
	datac => \movement_ctrl_inst|STAND_SPEED\(19),
	datad => \movement_ctrl_inst|STAND_SPEED\(22),
	combout => \movement_ctrl_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X44_Y44_N18
\movement_ctrl_inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~1_combout\ = (!\movement_ctrl_inst|STAND_SPEED\(25) & (!\movement_ctrl_inst|STAND_SPEED\(23) & (!\movement_ctrl_inst|STAND_SPEED\(24) & !\movement_ctrl_inst|STAND_SPEED\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(25),
	datab => \movement_ctrl_inst|STAND_SPEED\(23),
	datac => \movement_ctrl_inst|STAND_SPEED\(24),
	datad => \movement_ctrl_inst|STAND_SPEED\(26),
	combout => \movement_ctrl_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X44_Y44_N14
\movement_ctrl_inst|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan0~4_combout\ = (\movement_ctrl_inst|LessThan0~0_combout\ & (\movement_ctrl_inst|LessThan0~3_combout\ & (\movement_ctrl_inst|LessThan0~2_combout\ & \movement_ctrl_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan0~0_combout\,
	datab => \movement_ctrl_inst|LessThan0~3_combout\,
	datac => \movement_ctrl_inst|LessThan0~2_combout\,
	datad => \movement_ctrl_inst|LessThan0~1_combout\,
	combout => \movement_ctrl_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X45_Y41_N2
\movement_ctrl_inst|x_stand[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand[9]~0_combout\ = (\movement_ctrl_inst|LessThan0~5_combout\ & (!\movement_ctrl_inst|STAND_SPEED\(12) & (\movement_ctrl_inst|LessThan0~26_combout\ & \movement_ctrl_inst|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan0~5_combout\,
	datab => \movement_ctrl_inst|STAND_SPEED\(12),
	datac => \movement_ctrl_inst|LessThan0~26_combout\,
	datad => \movement_ctrl_inst|LessThan0~4_combout\,
	combout => \movement_ctrl_inst|x_stand[9]~0_combout\);

-- Location: LCCOMB_X45_Y44_N28
\movement_ctrl_inst|Add10~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add10~58_combout\ = \movement_ctrl_inst|Add10~57\ $ (\movement_ctrl_inst|STAND_SPEED\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \movement_ctrl_inst|STAND_SPEED\(31),
	cin => \movement_ctrl_inst|Add10~57\,
	combout => \movement_ctrl_inst|Add10~58_combout\);

-- Location: FF_X45_Y44_N29
\movement_ctrl_inst|STAND_SPEED[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|Add10~58_combout\,
	ena => \movement_ctrl_inst|STAND_SPEED[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|STAND_SPEED\(31));

-- Location: LCCOMB_X45_Y41_N8
\movement_ctrl_inst|x_stand[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand[9]~1_combout\ = (\movement_ctrl_inst|update_stand_position~0_combout\ & (\movement_ctrl_inst|LessThan1~2_combout\)) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & (((!\movement_ctrl_inst|x_stand[9]~0_combout\ & 
-- !\movement_ctrl_inst|STAND_SPEED\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan1~2_combout\,
	datab => \movement_ctrl_inst|x_stand[9]~0_combout\,
	datac => \movement_ctrl_inst|update_stand_position~0_combout\,
	datad => \movement_ctrl_inst|STAND_SPEED\(31),
	combout => \movement_ctrl_inst|x_stand[9]~1_combout\);

-- Location: LCCOMB_X46_Y41_N0
\movement_ctrl_inst|x_stand~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~15_combout\ = (!\movement_ctrl_inst|x_stand[9]~1_combout\ & ((\movement_ctrl_inst|update_stand_position~0_combout\ & ((\movement_ctrl_inst|Add2~0_combout\))) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & 
-- (\movement_ctrl_inst|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add1~0_combout\,
	datab => \movement_ctrl_inst|Add2~0_combout\,
	datac => \movement_ctrl_inst|update_stand_position~0_combout\,
	datad => \movement_ctrl_inst|x_stand[9]~1_combout\,
	combout => \movement_ctrl_inst|x_stand~15_combout\);

-- Location: FF_X46_Y41_N1
\movement_ctrl_inst|x_stand[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_stand~15_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|x_stand[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_stand\(1));

-- Location: LCCOMB_X45_Y42_N4
\movement_ctrl_inst|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add2~2_combout\ = (\movement_ctrl_inst|x_stand\(2) & ((\movement_ctrl_inst|STAND_SPEED\(2) & ((\movement_ctrl_inst|Add2~1\) # (GND))) # (!\movement_ctrl_inst|STAND_SPEED\(2) & (!\movement_ctrl_inst|Add2~1\)))) # 
-- (!\movement_ctrl_inst|x_stand\(2) & ((\movement_ctrl_inst|STAND_SPEED\(2) & (!\movement_ctrl_inst|Add2~1\)) # (!\movement_ctrl_inst|STAND_SPEED\(2) & (\movement_ctrl_inst|Add2~1\ & VCC))))
-- \movement_ctrl_inst|Add2~3\ = CARRY((\movement_ctrl_inst|x_stand\(2) & ((\movement_ctrl_inst|STAND_SPEED\(2)) # (!\movement_ctrl_inst|Add2~1\))) # (!\movement_ctrl_inst|x_stand\(2) & (\movement_ctrl_inst|STAND_SPEED\(2) & !\movement_ctrl_inst|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(2),
	datab => \movement_ctrl_inst|STAND_SPEED\(2),
	datad => VCC,
	cin => \movement_ctrl_inst|Add2~1\,
	combout => \movement_ctrl_inst|Add2~2_combout\,
	cout => \movement_ctrl_inst|Add2~3\);

-- Location: LCCOMB_X45_Y41_N6
\movement_ctrl_inst|x_stand~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~8_combout\ = (\movement_ctrl_inst|LessThan0~5_combout\ & (!\movement_ctrl_inst|STAND_SPEED\(12) & (\movement_ctrl_inst|LessThan0~26_combout\ & \movement_ctrl_inst|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan0~5_combout\,
	datab => \movement_ctrl_inst|STAND_SPEED\(12),
	datac => \movement_ctrl_inst|LessThan0~26_combout\,
	datad => \movement_ctrl_inst|LessThan0~4_combout\,
	combout => \movement_ctrl_inst|x_stand~8_combout\);

-- Location: LCCOMB_X45_Y41_N0
\movement_ctrl_inst|x_stand~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~9_combout\ = (\movement_ctrl_inst|update_stand_position~0_combout\ & (!\movement_ctrl_inst|LessThan1~2_combout\)) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & (((\movement_ctrl_inst|STAND_SPEED\(31)) # 
-- (\movement_ctrl_inst|x_stand~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan1~2_combout\,
	datab => \movement_ctrl_inst|STAND_SPEED\(31),
	datac => \movement_ctrl_inst|update_stand_position~0_combout\,
	datad => \movement_ctrl_inst|x_stand~8_combout\,
	combout => \movement_ctrl_inst|x_stand~9_combout\);

-- Location: LCCOMB_X46_Y45_N2
\movement_ctrl_inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add1~2_combout\ = (\movement_ctrl_inst|x_stand\(2) & ((\movement_ctrl_inst|STAND_SPEED\(2) & (!\movement_ctrl_inst|Add1~1\)) # (!\movement_ctrl_inst|STAND_SPEED\(2) & ((\movement_ctrl_inst|Add1~1\) # (GND))))) # 
-- (!\movement_ctrl_inst|x_stand\(2) & ((\movement_ctrl_inst|STAND_SPEED\(2) & (\movement_ctrl_inst|Add1~1\ & VCC)) # (!\movement_ctrl_inst|STAND_SPEED\(2) & (!\movement_ctrl_inst|Add1~1\))))
-- \movement_ctrl_inst|Add1~3\ = CARRY((\movement_ctrl_inst|x_stand\(2) & ((!\movement_ctrl_inst|Add1~1\) # (!\movement_ctrl_inst|STAND_SPEED\(2)))) # (!\movement_ctrl_inst|x_stand\(2) & (!\movement_ctrl_inst|STAND_SPEED\(2) & !\movement_ctrl_inst|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(2),
	datab => \movement_ctrl_inst|STAND_SPEED\(2),
	datad => VCC,
	cin => \movement_ctrl_inst|Add1~1\,
	combout => \movement_ctrl_inst|Add1~2_combout\,
	cout => \movement_ctrl_inst|Add1~3\);

-- Location: LCCOMB_X46_Y41_N18
\movement_ctrl_inst|x_stand~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~14_combout\ = ((\movement_ctrl_inst|update_stand_position~0_combout\ & (!\movement_ctrl_inst|Add2~2_combout\)) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & ((!\movement_ctrl_inst|Add1~2_combout\)))) # 
-- (!\movement_ctrl_inst|x_stand~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add2~2_combout\,
	datab => \movement_ctrl_inst|update_stand_position~0_combout\,
	datac => \movement_ctrl_inst|x_stand~9_combout\,
	datad => \movement_ctrl_inst|Add1~2_combout\,
	combout => \movement_ctrl_inst|x_stand~14_combout\);

-- Location: FF_X46_Y41_N19
\movement_ctrl_inst|x_stand[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_stand~14_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|x_stand[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_stand\(2));

-- Location: LCCOMB_X45_Y42_N6
\movement_ctrl_inst|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add2~4_combout\ = ((\movement_ctrl_inst|x_stand\(3) $ (\movement_ctrl_inst|STAND_SPEED\(3) $ (!\movement_ctrl_inst|Add2~3\)))) # (GND)
-- \movement_ctrl_inst|Add2~5\ = CARRY((\movement_ctrl_inst|x_stand\(3) & ((\movement_ctrl_inst|STAND_SPEED\(3)) # (!\movement_ctrl_inst|Add2~3\))) # (!\movement_ctrl_inst|x_stand\(3) & (\movement_ctrl_inst|STAND_SPEED\(3) & !\movement_ctrl_inst|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(3),
	datab => \movement_ctrl_inst|STAND_SPEED\(3),
	datad => VCC,
	cin => \movement_ctrl_inst|Add2~3\,
	combout => \movement_ctrl_inst|Add2~4_combout\,
	cout => \movement_ctrl_inst|Add2~5\);

-- Location: LCCOMB_X46_Y45_N4
\movement_ctrl_inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add1~4_combout\ = ((\movement_ctrl_inst|x_stand\(3) $ (\movement_ctrl_inst|STAND_SPEED\(3) $ (\movement_ctrl_inst|Add1~3\)))) # (GND)
-- \movement_ctrl_inst|Add1~5\ = CARRY((\movement_ctrl_inst|x_stand\(3) & ((!\movement_ctrl_inst|Add1~3\) # (!\movement_ctrl_inst|STAND_SPEED\(3)))) # (!\movement_ctrl_inst|x_stand\(3) & (!\movement_ctrl_inst|STAND_SPEED\(3) & !\movement_ctrl_inst|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(3),
	datab => \movement_ctrl_inst|STAND_SPEED\(3),
	datad => VCC,
	cin => \movement_ctrl_inst|Add1~3\,
	combout => \movement_ctrl_inst|Add1~4_combout\,
	cout => \movement_ctrl_inst|Add1~5\);

-- Location: LCCOMB_X46_Y41_N8
\movement_ctrl_inst|x_stand~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~13_combout\ = (!\movement_ctrl_inst|x_stand[9]~1_combout\ & ((\movement_ctrl_inst|update_stand_position~0_combout\ & (\movement_ctrl_inst|Add2~4_combout\)) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & 
-- ((\movement_ctrl_inst|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add2~4_combout\,
	datab => \movement_ctrl_inst|Add1~4_combout\,
	datac => \movement_ctrl_inst|update_stand_position~0_combout\,
	datad => \movement_ctrl_inst|x_stand[9]~1_combout\,
	combout => \movement_ctrl_inst|x_stand~13_combout\);

-- Location: FF_X46_Y41_N9
\movement_ctrl_inst|x_stand[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_stand~13_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|x_stand[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_stand\(3));

-- Location: LCCOMB_X45_Y42_N8
\movement_ctrl_inst|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add2~6_combout\ = (\movement_ctrl_inst|STAND_SPEED\(4) & ((\movement_ctrl_inst|x_stand\(4) & (!\movement_ctrl_inst|Add2~5\)) # (!\movement_ctrl_inst|x_stand\(4) & ((\movement_ctrl_inst|Add2~5\) # (GND))))) # 
-- (!\movement_ctrl_inst|STAND_SPEED\(4) & ((\movement_ctrl_inst|x_stand\(4) & (\movement_ctrl_inst|Add2~5\ & VCC)) # (!\movement_ctrl_inst|x_stand\(4) & (!\movement_ctrl_inst|Add2~5\))))
-- \movement_ctrl_inst|Add2~7\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(4) & ((!\movement_ctrl_inst|Add2~5\) # (!\movement_ctrl_inst|x_stand\(4)))) # (!\movement_ctrl_inst|STAND_SPEED\(4) & (!\movement_ctrl_inst|x_stand\(4) & !\movement_ctrl_inst|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(4),
	datab => \movement_ctrl_inst|x_stand\(4),
	datad => VCC,
	cin => \movement_ctrl_inst|Add2~5\,
	combout => \movement_ctrl_inst|Add2~6_combout\,
	cout => \movement_ctrl_inst|Add2~7\);

-- Location: LCCOMB_X46_Y45_N6
\movement_ctrl_inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add1~6_combout\ = (\movement_ctrl_inst|STAND_SPEED\(4) & ((\movement_ctrl_inst|x_stand\(4) & (\movement_ctrl_inst|Add1~5\ & VCC)) # (!\movement_ctrl_inst|x_stand\(4) & (!\movement_ctrl_inst|Add1~5\)))) # 
-- (!\movement_ctrl_inst|STAND_SPEED\(4) & ((\movement_ctrl_inst|x_stand\(4) & (!\movement_ctrl_inst|Add1~5\)) # (!\movement_ctrl_inst|x_stand\(4) & ((\movement_ctrl_inst|Add1~5\) # (GND)))))
-- \movement_ctrl_inst|Add1~7\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(4) & (!\movement_ctrl_inst|x_stand\(4) & !\movement_ctrl_inst|Add1~5\)) # (!\movement_ctrl_inst|STAND_SPEED\(4) & ((!\movement_ctrl_inst|Add1~5\) # (!\movement_ctrl_inst|x_stand\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(4),
	datab => \movement_ctrl_inst|x_stand\(4),
	datad => VCC,
	cin => \movement_ctrl_inst|Add1~5\,
	combout => \movement_ctrl_inst|Add1~6_combout\,
	cout => \movement_ctrl_inst|Add1~7\);

-- Location: LCCOMB_X46_Y41_N6
\movement_ctrl_inst|x_stand~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~12_combout\ = (!\movement_ctrl_inst|x_stand[9]~1_combout\ & ((\movement_ctrl_inst|update_stand_position~0_combout\ & (\movement_ctrl_inst|Add2~6_combout\)) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & 
-- ((\movement_ctrl_inst|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add2~6_combout\,
	datab => \movement_ctrl_inst|update_stand_position~0_combout\,
	datac => \movement_ctrl_inst|Add1~6_combout\,
	datad => \movement_ctrl_inst|x_stand[9]~1_combout\,
	combout => \movement_ctrl_inst|x_stand~12_combout\);

-- Location: FF_X46_Y41_N7
\movement_ctrl_inst|x_stand[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_stand~12_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|x_stand[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_stand\(4));

-- Location: LCCOMB_X45_Y42_N10
\movement_ctrl_inst|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add2~8_combout\ = ((\movement_ctrl_inst|STAND_SPEED\(5) $ (\movement_ctrl_inst|x_stand\(5) $ (\movement_ctrl_inst|Add2~7\)))) # (GND)
-- \movement_ctrl_inst|Add2~9\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(5) & ((!\movement_ctrl_inst|Add2~7\) # (!\movement_ctrl_inst|x_stand\(5)))) # (!\movement_ctrl_inst|STAND_SPEED\(5) & (!\movement_ctrl_inst|x_stand\(5) & !\movement_ctrl_inst|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(5),
	datab => \movement_ctrl_inst|x_stand\(5),
	datad => VCC,
	cin => \movement_ctrl_inst|Add2~7\,
	combout => \movement_ctrl_inst|Add2~8_combout\,
	cout => \movement_ctrl_inst|Add2~9\);

-- Location: LCCOMB_X46_Y45_N8
\movement_ctrl_inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add1~8_combout\ = ((\movement_ctrl_inst|STAND_SPEED\(5) $ (\movement_ctrl_inst|x_stand\(5) $ (!\movement_ctrl_inst|Add1~7\)))) # (GND)
-- \movement_ctrl_inst|Add1~9\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(5) & (!\movement_ctrl_inst|x_stand\(5) & !\movement_ctrl_inst|Add1~7\)) # (!\movement_ctrl_inst|STAND_SPEED\(5) & ((!\movement_ctrl_inst|Add1~7\) # (!\movement_ctrl_inst|x_stand\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(5),
	datab => \movement_ctrl_inst|x_stand\(5),
	datad => VCC,
	cin => \movement_ctrl_inst|Add1~7\,
	combout => \movement_ctrl_inst|Add1~8_combout\,
	cout => \movement_ctrl_inst|Add1~9\);

-- Location: LCCOMB_X46_Y41_N16
\movement_ctrl_inst|x_stand~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~11_combout\ = ((\movement_ctrl_inst|update_stand_position~0_combout\ & (!\movement_ctrl_inst|Add2~8_combout\)) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & ((!\movement_ctrl_inst|Add1~8_combout\)))) # 
-- (!\movement_ctrl_inst|x_stand~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add2~8_combout\,
	datab => \movement_ctrl_inst|update_stand_position~0_combout\,
	datac => \movement_ctrl_inst|x_stand~9_combout\,
	datad => \movement_ctrl_inst|Add1~8_combout\,
	combout => \movement_ctrl_inst|x_stand~11_combout\);

-- Location: FF_X46_Y41_N17
\movement_ctrl_inst|x_stand[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_stand~11_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|x_stand[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_stand\(5));

-- Location: LCCOMB_X46_Y45_N10
\movement_ctrl_inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add1~10_combout\ = (\movement_ctrl_inst|STAND_SPEED\(6) & ((\movement_ctrl_inst|x_stand\(6) & ((\movement_ctrl_inst|Add1~9\) # (GND))) # (!\movement_ctrl_inst|x_stand\(6) & (!\movement_ctrl_inst|Add1~9\)))) # 
-- (!\movement_ctrl_inst|STAND_SPEED\(6) & ((\movement_ctrl_inst|x_stand\(6) & (!\movement_ctrl_inst|Add1~9\)) # (!\movement_ctrl_inst|x_stand\(6) & (\movement_ctrl_inst|Add1~9\ & VCC))))
-- \movement_ctrl_inst|Add1~11\ = CARRY((\movement_ctrl_inst|STAND_SPEED\(6) & ((\movement_ctrl_inst|x_stand\(6)) # (!\movement_ctrl_inst|Add1~9\))) # (!\movement_ctrl_inst|STAND_SPEED\(6) & (\movement_ctrl_inst|x_stand\(6) & !\movement_ctrl_inst|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|STAND_SPEED\(6),
	datab => \movement_ctrl_inst|x_stand\(6),
	datad => VCC,
	cin => \movement_ctrl_inst|Add1~9\,
	combout => \movement_ctrl_inst|Add1~10_combout\,
	cout => \movement_ctrl_inst|Add1~11\);

-- Location: LCCOMB_X45_Y42_N12
\movement_ctrl_inst|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add2~10_combout\ = (\movement_ctrl_inst|x_stand\(6) & ((\movement_ctrl_inst|STAND_SPEED\(6) & (!\movement_ctrl_inst|Add2~9\)) # (!\movement_ctrl_inst|STAND_SPEED\(6) & ((\movement_ctrl_inst|Add2~9\) # (GND))))) # 
-- (!\movement_ctrl_inst|x_stand\(6) & ((\movement_ctrl_inst|STAND_SPEED\(6) & (\movement_ctrl_inst|Add2~9\ & VCC)) # (!\movement_ctrl_inst|STAND_SPEED\(6) & (!\movement_ctrl_inst|Add2~9\))))
-- \movement_ctrl_inst|Add2~11\ = CARRY((\movement_ctrl_inst|x_stand\(6) & ((!\movement_ctrl_inst|Add2~9\) # (!\movement_ctrl_inst|STAND_SPEED\(6)))) # (!\movement_ctrl_inst|x_stand\(6) & (!\movement_ctrl_inst|STAND_SPEED\(6) & 
-- !\movement_ctrl_inst|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(6),
	datab => \movement_ctrl_inst|STAND_SPEED\(6),
	datad => VCC,
	cin => \movement_ctrl_inst|Add2~9\,
	combout => \movement_ctrl_inst|Add2~10_combout\,
	cout => \movement_ctrl_inst|Add2~11\);

-- Location: LCCOMB_X46_Y41_N30
\movement_ctrl_inst|x_stand~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~10_combout\ = ((\movement_ctrl_inst|update_stand_position~0_combout\ & ((!\movement_ctrl_inst|Add2~10_combout\))) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & (!\movement_ctrl_inst|Add1~10_combout\))) # 
-- (!\movement_ctrl_inst|x_stand~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|update_stand_position~0_combout\,
	datab => \movement_ctrl_inst|Add1~10_combout\,
	datac => \movement_ctrl_inst|x_stand~9_combout\,
	datad => \movement_ctrl_inst|Add2~10_combout\,
	combout => \movement_ctrl_inst|x_stand~10_combout\);

-- Location: FF_X46_Y41_N31
\movement_ctrl_inst|x_stand[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_stand~10_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|x_stand[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_stand\(6));

-- Location: LCCOMB_X46_Y45_N12
\movement_ctrl_inst|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add1~12_combout\ = ((\movement_ctrl_inst|x_stand\(7) $ (\movement_ctrl_inst|STAND_SPEED\(7) $ (\movement_ctrl_inst|Add1~11\)))) # (GND)
-- \movement_ctrl_inst|Add1~13\ = CARRY((\movement_ctrl_inst|x_stand\(7) & ((!\movement_ctrl_inst|Add1~11\) # (!\movement_ctrl_inst|STAND_SPEED\(7)))) # (!\movement_ctrl_inst|x_stand\(7) & (!\movement_ctrl_inst|STAND_SPEED\(7) & 
-- !\movement_ctrl_inst|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(7),
	datab => \movement_ctrl_inst|STAND_SPEED\(7),
	datad => VCC,
	cin => \movement_ctrl_inst|Add1~11\,
	combout => \movement_ctrl_inst|Add1~12_combout\,
	cout => \movement_ctrl_inst|Add1~13\);

-- Location: LCCOMB_X46_Y41_N28
\movement_ctrl_inst|x_stand~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~7_combout\ = (!\movement_ctrl_inst|x_stand[9]~1_combout\ & ((\movement_ctrl_inst|update_stand_position~0_combout\ & (\movement_ctrl_inst|Add2~12_combout\)) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & 
-- ((\movement_ctrl_inst|Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add2~12_combout\,
	datab => \movement_ctrl_inst|update_stand_position~0_combout\,
	datac => \movement_ctrl_inst|Add1~12_combout\,
	datad => \movement_ctrl_inst|x_stand[9]~1_combout\,
	combout => \movement_ctrl_inst|x_stand~7_combout\);

-- Location: FF_X46_Y41_N29
\movement_ctrl_inst|x_stand[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_stand~7_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|x_stand[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_stand\(7));

-- Location: LCCOMB_X46_Y41_N26
\movement_ctrl_inst|x_stand~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_stand~6_combout\ = (!\movement_ctrl_inst|x_stand[9]~1_combout\ & ((\movement_ctrl_inst|update_stand_position~0_combout\ & ((\movement_ctrl_inst|Add2~14_combout\))) # (!\movement_ctrl_inst|update_stand_position~0_combout\ & 
-- (\movement_ctrl_inst|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add1~14_combout\,
	datab => \movement_ctrl_inst|Add2~14_combout\,
	datac => \movement_ctrl_inst|update_stand_position~0_combout\,
	datad => \movement_ctrl_inst|x_stand[9]~1_combout\,
	combout => \movement_ctrl_inst|x_stand~6_combout\);

-- Location: FF_X46_Y41_N27
\movement_ctrl_inst|x_stand[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_stand~6_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|x_stand[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_stand\(8));

-- Location: LCCOMB_X45_Y37_N4
\affiche_obj_inst|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add2~1_cout\ = CARRY(!\movement_ctrl_inst|x_stand\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_stand\(2),
	datad => VCC,
	cout => \affiche_obj_inst|Add2~1_cout\);

-- Location: LCCOMB_X45_Y37_N6
\affiche_obj_inst|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add2~2_combout\ = (\movement_ctrl_inst|x_stand\(3) & (\affiche_obj_inst|Add2~1_cout\ & VCC)) # (!\movement_ctrl_inst|x_stand\(3) & (!\affiche_obj_inst|Add2~1_cout\))
-- \affiche_obj_inst|Add2~3\ = CARRY((!\movement_ctrl_inst|x_stand\(3) & !\affiche_obj_inst|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(3),
	datad => VCC,
	cin => \affiche_obj_inst|Add2~1_cout\,
	combout => \affiche_obj_inst|Add2~2_combout\,
	cout => \affiche_obj_inst|Add2~3\);

-- Location: LCCOMB_X45_Y37_N8
\affiche_obj_inst|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add2~4_combout\ = (\movement_ctrl_inst|x_stand\(4) & ((GND) # (!\affiche_obj_inst|Add2~3\))) # (!\movement_ctrl_inst|x_stand\(4) & (\affiche_obj_inst|Add2~3\ $ (GND)))
-- \affiche_obj_inst|Add2~5\ = CARRY((\movement_ctrl_inst|x_stand\(4)) # (!\affiche_obj_inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_stand\(4),
	datad => VCC,
	cin => \affiche_obj_inst|Add2~3\,
	combout => \affiche_obj_inst|Add2~4_combout\,
	cout => \affiche_obj_inst|Add2~5\);

-- Location: LCCOMB_X45_Y37_N10
\affiche_obj_inst|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add2~6_combout\ = (\movement_ctrl_inst|x_stand\(5) & (!\affiche_obj_inst|Add2~5\)) # (!\movement_ctrl_inst|x_stand\(5) & (\affiche_obj_inst|Add2~5\ & VCC))
-- \affiche_obj_inst|Add2~7\ = CARRY((\movement_ctrl_inst|x_stand\(5) & !\affiche_obj_inst|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_stand\(5),
	datad => VCC,
	cin => \affiche_obj_inst|Add2~5\,
	combout => \affiche_obj_inst|Add2~6_combout\,
	cout => \affiche_obj_inst|Add2~7\);

-- Location: LCCOMB_X45_Y37_N12
\affiche_obj_inst|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add2~8_combout\ = (\movement_ctrl_inst|x_stand\(6) & (!\affiche_obj_inst|Add2~7\ & VCC)) # (!\movement_ctrl_inst|x_stand\(6) & (\affiche_obj_inst|Add2~7\ $ (GND)))
-- \affiche_obj_inst|Add2~9\ = CARRY((!\movement_ctrl_inst|x_stand\(6) & !\affiche_obj_inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(6),
	datad => VCC,
	cin => \affiche_obj_inst|Add2~7\,
	combout => \affiche_obj_inst|Add2~8_combout\,
	cout => \affiche_obj_inst|Add2~9\);

-- Location: LCCOMB_X45_Y37_N14
\affiche_obj_inst|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add2~10_combout\ = (\movement_ctrl_inst|x_stand\(7) & (!\affiche_obj_inst|Add2~9\)) # (!\movement_ctrl_inst|x_stand\(7) & ((\affiche_obj_inst|Add2~9\) # (GND)))
-- \affiche_obj_inst|Add2~11\ = CARRY((!\affiche_obj_inst|Add2~9\) # (!\movement_ctrl_inst|x_stand\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(7),
	datad => VCC,
	cin => \affiche_obj_inst|Add2~9\,
	combout => \affiche_obj_inst|Add2~10_combout\,
	cout => \affiche_obj_inst|Add2~11\);

-- Location: LCCOMB_X45_Y37_N16
\affiche_obj_inst|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add2~12_combout\ = (\movement_ctrl_inst|x_stand\(8) & (\affiche_obj_inst|Add2~11\ $ (GND))) # (!\movement_ctrl_inst|x_stand\(8) & (!\affiche_obj_inst|Add2~11\ & VCC))
-- \affiche_obj_inst|Add2~13\ = CARRY((\movement_ctrl_inst|x_stand\(8) & !\affiche_obj_inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_stand\(8),
	datad => VCC,
	cin => \affiche_obj_inst|Add2~11\,
	combout => \affiche_obj_inst|Add2~12_combout\,
	cout => \affiche_obj_inst|Add2~13\);

-- Location: LCCOMB_X43_Y37_N0
\movement_ctrl_inst|Add3|auto_generated|_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add3|auto_generated|_~10_combout\ = \movement_ctrl_inst|x_ball_dir~q\ $ (!\movement_ctrl_inst|increment\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball_dir~q\,
	datac => \movement_ctrl_inst|increment\(1),
	combout => \movement_ctrl_inst|Add3|auto_generated|_~10_combout\);

-- Location: LCCOMB_X45_Y36_N14
\movement_ctrl_inst|Add3|auto_generated|_~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add3|auto_generated|_~11_combout\ = \movement_ctrl_inst|x_ball_dir~q\ $ (\movement_ctrl_inst|increment\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|x_ball_dir~q\,
	datad => \movement_ctrl_inst|increment\(0),
	combout => \movement_ctrl_inst|Add3|auto_generated|_~11_combout\);

-- Location: LCCOMB_X46_Y38_N2
\movement_ctrl_inst|x_ball[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[0]~13_cout\ = CARRY(\movement_ctrl_inst|x_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball_dir~q\,
	datad => VCC,
	cout => \movement_ctrl_inst|x_ball[0]~13_cout\);

-- Location: LCCOMB_X46_Y38_N4
\movement_ctrl_inst|x_ball[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[0]~14_combout\ = (\movement_ctrl_inst|x_ball\(0) & ((\movement_ctrl_inst|Add3|auto_generated|_~11_combout\ & (!\movement_ctrl_inst|x_ball[0]~13_cout\)) # (!\movement_ctrl_inst|Add3|auto_generated|_~11_combout\ & 
-- (\movement_ctrl_inst|x_ball[0]~13_cout\ & VCC)))) # (!\movement_ctrl_inst|x_ball\(0) & ((\movement_ctrl_inst|Add3|auto_generated|_~11_combout\ & ((\movement_ctrl_inst|x_ball[0]~13_cout\) # (GND))) # (!\movement_ctrl_inst|Add3|auto_generated|_~11_combout\ 
-- & (!\movement_ctrl_inst|x_ball[0]~13_cout\))))
-- \movement_ctrl_inst|x_ball[0]~15\ = CARRY((\movement_ctrl_inst|x_ball\(0) & (\movement_ctrl_inst|Add3|auto_generated|_~11_combout\ & !\movement_ctrl_inst|x_ball[0]~13_cout\)) # (!\movement_ctrl_inst|x_ball\(0) & 
-- ((\movement_ctrl_inst|Add3|auto_generated|_~11_combout\) # (!\movement_ctrl_inst|x_ball[0]~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(0),
	datab => \movement_ctrl_inst|Add3|auto_generated|_~11_combout\,
	datad => VCC,
	cin => \movement_ctrl_inst|x_ball[0]~13_cout\,
	combout => \movement_ctrl_inst|x_ball[0]~14_combout\,
	cout => \movement_ctrl_inst|x_ball[0]~15\);

-- Location: LCCOMB_X43_Y38_N18
\movement_ctrl_inst|Add3|auto_generated|_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add3|auto_generated|_~7_combout\ = \movement_ctrl_inst|x_ball_dir~q\ $ (!\movement_ctrl_inst|increment\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|x_ball_dir~q\,
	datad => \movement_ctrl_inst|increment\(4),
	combout => \movement_ctrl_inst|Add3|auto_generated|_~7_combout\);

-- Location: LCCOMB_X43_Y37_N28
\movement_ctrl_inst|Add3|auto_generated|_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add3|auto_generated|_~8_combout\ = \movement_ctrl_inst|x_ball_dir~q\ $ (!\movement_ctrl_inst|increment\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|x_ball_dir~q\,
	datad => \movement_ctrl_inst|increment\(3),
	combout => \movement_ctrl_inst|Add3|auto_generated|_~8_combout\);

-- Location: LCCOMB_X43_Y37_N2
\movement_ctrl_inst|Add3|auto_generated|_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add3|auto_generated|_~9_combout\ = \movement_ctrl_inst|x_ball_dir~q\ $ (!\movement_ctrl_inst|increment\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|x_ball_dir~q\,
	datad => \movement_ctrl_inst|increment\(2),
	combout => \movement_ctrl_inst|Add3|auto_generated|_~9_combout\);

-- Location: LCCOMB_X46_Y38_N6
\movement_ctrl_inst|x_ball[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[1]~16_combout\ = ((\movement_ctrl_inst|Add3|auto_generated|_~10_combout\ $ (\movement_ctrl_inst|x_ball\(1) $ (\movement_ctrl_inst|x_ball[0]~15\)))) # (GND)
-- \movement_ctrl_inst|x_ball[1]~17\ = CARRY((\movement_ctrl_inst|Add3|auto_generated|_~10_combout\ & (\movement_ctrl_inst|x_ball\(1) & !\movement_ctrl_inst|x_ball[0]~15\)) # (!\movement_ctrl_inst|Add3|auto_generated|_~10_combout\ & 
-- ((\movement_ctrl_inst|x_ball\(1)) # (!\movement_ctrl_inst|x_ball[0]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add3|auto_generated|_~10_combout\,
	datab => \movement_ctrl_inst|x_ball\(1),
	datad => VCC,
	cin => \movement_ctrl_inst|x_ball[0]~15\,
	combout => \movement_ctrl_inst|x_ball[1]~16_combout\,
	cout => \movement_ctrl_inst|x_ball[1]~17\);

-- Location: LCCOMB_X46_Y38_N8
\movement_ctrl_inst|x_ball[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[2]~18_combout\ = (\movement_ctrl_inst|x_ball\(2) & ((\movement_ctrl_inst|Add3|auto_generated|_~9_combout\ & (!\movement_ctrl_inst|x_ball[1]~17\)) # (!\movement_ctrl_inst|Add3|auto_generated|_~9_combout\ & 
-- (\movement_ctrl_inst|x_ball[1]~17\ & VCC)))) # (!\movement_ctrl_inst|x_ball\(2) & ((\movement_ctrl_inst|Add3|auto_generated|_~9_combout\ & ((\movement_ctrl_inst|x_ball[1]~17\) # (GND))) # (!\movement_ctrl_inst|Add3|auto_generated|_~9_combout\ & 
-- (!\movement_ctrl_inst|x_ball[1]~17\))))
-- \movement_ctrl_inst|x_ball[2]~19\ = CARRY((\movement_ctrl_inst|x_ball\(2) & (\movement_ctrl_inst|Add3|auto_generated|_~9_combout\ & !\movement_ctrl_inst|x_ball[1]~17\)) # (!\movement_ctrl_inst|x_ball\(2) & 
-- ((\movement_ctrl_inst|Add3|auto_generated|_~9_combout\) # (!\movement_ctrl_inst|x_ball[1]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(2),
	datab => \movement_ctrl_inst|Add3|auto_generated|_~9_combout\,
	datad => VCC,
	cin => \movement_ctrl_inst|x_ball[1]~17\,
	combout => \movement_ctrl_inst|x_ball[2]~18_combout\,
	cout => \movement_ctrl_inst|x_ball[2]~19\);

-- Location: FF_X46_Y38_N9
\movement_ctrl_inst|x_ball[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_ball[2]~18_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	ena => \movement_ctrl_inst|x_ball[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball\(2));

-- Location: LCCOMB_X46_Y38_N10
\movement_ctrl_inst|x_ball[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[3]~20_combout\ = ((\movement_ctrl_inst|x_ball\(3) $ (\movement_ctrl_inst|Add3|auto_generated|_~8_combout\ $ (\movement_ctrl_inst|x_ball[2]~19\)))) # (GND)
-- \movement_ctrl_inst|x_ball[3]~21\ = CARRY((\movement_ctrl_inst|x_ball\(3) & ((!\movement_ctrl_inst|x_ball[2]~19\) # (!\movement_ctrl_inst|Add3|auto_generated|_~8_combout\))) # (!\movement_ctrl_inst|x_ball\(3) & 
-- (!\movement_ctrl_inst|Add3|auto_generated|_~8_combout\ & !\movement_ctrl_inst|x_ball[2]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(3),
	datab => \movement_ctrl_inst|Add3|auto_generated|_~8_combout\,
	datad => VCC,
	cin => \movement_ctrl_inst|x_ball[2]~19\,
	combout => \movement_ctrl_inst|x_ball[3]~20_combout\,
	cout => \movement_ctrl_inst|x_ball[3]~21\);

-- Location: FF_X46_Y38_N11
\movement_ctrl_inst|x_ball[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_ball[3]~20_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	ena => \movement_ctrl_inst|x_ball[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball\(3));

-- Location: LCCOMB_X46_Y38_N12
\movement_ctrl_inst|x_ball[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[4]~22_combout\ = (\movement_ctrl_inst|x_ball\(4) & ((\movement_ctrl_inst|Add3|auto_generated|_~7_combout\ & (!\movement_ctrl_inst|x_ball[3]~21\)) # (!\movement_ctrl_inst|Add3|auto_generated|_~7_combout\ & 
-- (\movement_ctrl_inst|x_ball[3]~21\ & VCC)))) # (!\movement_ctrl_inst|x_ball\(4) & ((\movement_ctrl_inst|Add3|auto_generated|_~7_combout\ & ((\movement_ctrl_inst|x_ball[3]~21\) # (GND))) # (!\movement_ctrl_inst|Add3|auto_generated|_~7_combout\ & 
-- (!\movement_ctrl_inst|x_ball[3]~21\))))
-- \movement_ctrl_inst|x_ball[4]~23\ = CARRY((\movement_ctrl_inst|x_ball\(4) & (\movement_ctrl_inst|Add3|auto_generated|_~7_combout\ & !\movement_ctrl_inst|x_ball[3]~21\)) # (!\movement_ctrl_inst|x_ball\(4) & 
-- ((\movement_ctrl_inst|Add3|auto_generated|_~7_combout\) # (!\movement_ctrl_inst|x_ball[3]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(4),
	datab => \movement_ctrl_inst|Add3|auto_generated|_~7_combout\,
	datad => VCC,
	cin => \movement_ctrl_inst|x_ball[3]~21\,
	combout => \movement_ctrl_inst|x_ball[4]~22_combout\,
	cout => \movement_ctrl_inst|x_ball[4]~23\);

-- Location: FF_X46_Y38_N13
\movement_ctrl_inst|x_ball[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_ball[4]~22_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	ena => \movement_ctrl_inst|x_ball[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball\(4));

-- Location: LCCOMB_X43_Y38_N24
\movement_ctrl_inst|Add3|auto_generated|_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add3|auto_generated|_~6_combout\ = \movement_ctrl_inst|x_ball_dir~q\ $ (!\movement_ctrl_inst|increment\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|x_ball_dir~q\,
	datad => \movement_ctrl_inst|increment\(5),
	combout => \movement_ctrl_inst|Add3|auto_generated|_~6_combout\);

-- Location: LCCOMB_X46_Y38_N14
\movement_ctrl_inst|x_ball[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[5]~24_combout\ = ((\movement_ctrl_inst|x_ball\(5) $ (\movement_ctrl_inst|Add3|auto_generated|_~6_combout\ $ (\movement_ctrl_inst|x_ball[4]~23\)))) # (GND)
-- \movement_ctrl_inst|x_ball[5]~25\ = CARRY((\movement_ctrl_inst|x_ball\(5) & ((!\movement_ctrl_inst|x_ball[4]~23\) # (!\movement_ctrl_inst|Add3|auto_generated|_~6_combout\))) # (!\movement_ctrl_inst|x_ball\(5) & 
-- (!\movement_ctrl_inst|Add3|auto_generated|_~6_combout\ & !\movement_ctrl_inst|x_ball[4]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(5),
	datab => \movement_ctrl_inst|Add3|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \movement_ctrl_inst|x_ball[4]~23\,
	combout => \movement_ctrl_inst|x_ball[5]~24_combout\,
	cout => \movement_ctrl_inst|x_ball[5]~25\);

-- Location: FF_X45_Y35_N29
\movement_ctrl_inst|x_ball[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	asdata => \movement_ctrl_inst|x_ball[5]~24_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => VCC,
	ena => \movement_ctrl_inst|x_ball[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball\(5));

-- Location: LCCOMB_X45_Y35_N28
\movement_ctrl_inst|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan2~0_combout\ = ((!\movement_ctrl_inst|x_ball\(5) & ((!\movement_ctrl_inst|x_ball\(3)) # (!\movement_ctrl_inst|x_ball\(4))))) # (!\movement_ctrl_inst|x_ball\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(4),
	datab => \movement_ctrl_inst|x_ball\(3),
	datac => \movement_ctrl_inst|x_ball\(5),
	datad => \movement_ctrl_inst|x_ball\(6),
	combout => \movement_ctrl_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X43_Y38_N28
\movement_ctrl_inst|Add3|auto_generated|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add3|auto_generated|_~2_combout\ = \movement_ctrl_inst|increment\(9) $ (!\movement_ctrl_inst|x_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(9),
	datac => \movement_ctrl_inst|x_ball_dir~q\,
	combout => \movement_ctrl_inst|Add3|auto_generated|_~2_combout\);

-- Location: LCCOMB_X43_Y38_N26
\movement_ctrl_inst|Add3|auto_generated|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add3|auto_generated|_~3_combout\ = \movement_ctrl_inst|increment\(8) $ (!\movement_ctrl_inst|x_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(8),
	datac => \movement_ctrl_inst|x_ball_dir~q\,
	combout => \movement_ctrl_inst|Add3|auto_generated|_~3_combout\);

-- Location: LCCOMB_X43_Y38_N16
\movement_ctrl_inst|Add3|auto_generated|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add3|auto_generated|_~4_combout\ = \movement_ctrl_inst|x_ball_dir~q\ $ (!\movement_ctrl_inst|increment\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball_dir~q\,
	datac => \movement_ctrl_inst|increment\(7),
	combout => \movement_ctrl_inst|Add3|auto_generated|_~4_combout\);

-- Location: LCCOMB_X46_Y38_N16
\movement_ctrl_inst|x_ball[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[6]~26_combout\ = (\movement_ctrl_inst|x_ball\(6) & ((\movement_ctrl_inst|Add3|auto_generated|_~5_combout\ & (!\movement_ctrl_inst|x_ball[5]~25\)) # (!\movement_ctrl_inst|Add3|auto_generated|_~5_combout\ & 
-- (\movement_ctrl_inst|x_ball[5]~25\ & VCC)))) # (!\movement_ctrl_inst|x_ball\(6) & ((\movement_ctrl_inst|Add3|auto_generated|_~5_combout\ & ((\movement_ctrl_inst|x_ball[5]~25\) # (GND))) # (!\movement_ctrl_inst|Add3|auto_generated|_~5_combout\ & 
-- (!\movement_ctrl_inst|x_ball[5]~25\))))
-- \movement_ctrl_inst|x_ball[6]~27\ = CARRY((\movement_ctrl_inst|x_ball\(6) & (\movement_ctrl_inst|Add3|auto_generated|_~5_combout\ & !\movement_ctrl_inst|x_ball[5]~25\)) # (!\movement_ctrl_inst|x_ball\(6) & 
-- ((\movement_ctrl_inst|Add3|auto_generated|_~5_combout\) # (!\movement_ctrl_inst|x_ball[5]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(6),
	datab => \movement_ctrl_inst|Add3|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \movement_ctrl_inst|x_ball[5]~25\,
	combout => \movement_ctrl_inst|x_ball[6]~26_combout\,
	cout => \movement_ctrl_inst|x_ball[6]~27\);

-- Location: LCCOMB_X46_Y38_N18
\movement_ctrl_inst|x_ball[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[7]~28_combout\ = ((\movement_ctrl_inst|x_ball\(7) $ (\movement_ctrl_inst|Add3|auto_generated|_~4_combout\ $ (\movement_ctrl_inst|x_ball[6]~27\)))) # (GND)
-- \movement_ctrl_inst|x_ball[7]~29\ = CARRY((\movement_ctrl_inst|x_ball\(7) & ((!\movement_ctrl_inst|x_ball[6]~27\) # (!\movement_ctrl_inst|Add3|auto_generated|_~4_combout\))) # (!\movement_ctrl_inst|x_ball\(7) & 
-- (!\movement_ctrl_inst|Add3|auto_generated|_~4_combout\ & !\movement_ctrl_inst|x_ball[6]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(7),
	datab => \movement_ctrl_inst|Add3|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \movement_ctrl_inst|x_ball[6]~27\,
	combout => \movement_ctrl_inst|x_ball[7]~28_combout\,
	cout => \movement_ctrl_inst|x_ball[7]~29\);

-- Location: FF_X45_Y35_N5
\movement_ctrl_inst|x_ball[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	asdata => \movement_ctrl_inst|x_ball[7]~28_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => VCC,
	ena => \movement_ctrl_inst|x_ball[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball\(7));

-- Location: LCCOMB_X46_Y38_N20
\movement_ctrl_inst|x_ball[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[8]~30_combout\ = (\movement_ctrl_inst|x_ball\(8) & ((\movement_ctrl_inst|Add3|auto_generated|_~3_combout\ & (!\movement_ctrl_inst|x_ball[7]~29\)) # (!\movement_ctrl_inst|Add3|auto_generated|_~3_combout\ & 
-- (\movement_ctrl_inst|x_ball[7]~29\ & VCC)))) # (!\movement_ctrl_inst|x_ball\(8) & ((\movement_ctrl_inst|Add3|auto_generated|_~3_combout\ & ((\movement_ctrl_inst|x_ball[7]~29\) # (GND))) # (!\movement_ctrl_inst|Add3|auto_generated|_~3_combout\ & 
-- (!\movement_ctrl_inst|x_ball[7]~29\))))
-- \movement_ctrl_inst|x_ball[8]~31\ = CARRY((\movement_ctrl_inst|x_ball\(8) & (\movement_ctrl_inst|Add3|auto_generated|_~3_combout\ & !\movement_ctrl_inst|x_ball[7]~29\)) # (!\movement_ctrl_inst|x_ball\(8) & 
-- ((\movement_ctrl_inst|Add3|auto_generated|_~3_combout\) # (!\movement_ctrl_inst|x_ball[7]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(8),
	datab => \movement_ctrl_inst|Add3|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \movement_ctrl_inst|x_ball[7]~29\,
	combout => \movement_ctrl_inst|x_ball[8]~30_combout\,
	cout => \movement_ctrl_inst|x_ball[8]~31\);

-- Location: FF_X45_Y35_N15
\movement_ctrl_inst|x_ball[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	asdata => \movement_ctrl_inst|x_ball[8]~30_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => VCC,
	ena => \movement_ctrl_inst|x_ball[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball\(8));

-- Location: LCCOMB_X46_Y38_N22
\movement_ctrl_inst|x_ball[9]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[9]~32_combout\ = ((\movement_ctrl_inst|Add3|auto_generated|_~2_combout\ $ (\movement_ctrl_inst|x_ball\(9) $ (\movement_ctrl_inst|x_ball[8]~31\)))) # (GND)
-- \movement_ctrl_inst|x_ball[9]~33\ = CARRY((\movement_ctrl_inst|Add3|auto_generated|_~2_combout\ & (\movement_ctrl_inst|x_ball\(9) & !\movement_ctrl_inst|x_ball[8]~31\)) # (!\movement_ctrl_inst|Add3|auto_generated|_~2_combout\ & 
-- ((\movement_ctrl_inst|x_ball\(9)) # (!\movement_ctrl_inst|x_ball[8]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add3|auto_generated|_~2_combout\,
	datab => \movement_ctrl_inst|x_ball\(9),
	datad => VCC,
	cin => \movement_ctrl_inst|x_ball[8]~31\,
	combout => \movement_ctrl_inst|x_ball[9]~32_combout\,
	cout => \movement_ctrl_inst|x_ball[9]~33\);

-- Location: FF_X46_Y38_N23
\movement_ctrl_inst|x_ball[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_ball[9]~32_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	ena => \movement_ctrl_inst|x_ball[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball\(9));

-- Location: LCCOMB_X45_Y35_N4
\movement_ctrl_inst|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan2~1_combout\ = (!\movement_ctrl_inst|x_ball\(8) & !\movement_ctrl_inst|x_ball\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball\(8),
	datac => \movement_ctrl_inst|x_ball\(7),
	combout => \movement_ctrl_inst|LessThan2~1_combout\);

-- Location: LCCOMB_X45_Y35_N30
\movement_ctrl_inst|x_ball~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball~38_combout\ = (!\movement_ctrl_inst|x_ball_dir~q\ & (((\movement_ctrl_inst|LessThan2~0_combout\ & \movement_ctrl_inst|LessThan2~1_combout\)) # (!\movement_ctrl_inst|x_ball\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan2~0_combout\,
	datab => \movement_ctrl_inst|x_ball\(9),
	datac => \movement_ctrl_inst|LessThan2~1_combout\,
	datad => \movement_ctrl_inst|x_ball_dir~q\,
	combout => \movement_ctrl_inst|x_ball~38_combout\);

-- Location: LCCOMB_X43_Y38_N14
\movement_ctrl_inst|Add3|auto_generated|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add3|auto_generated|_~1_combout\ = \movement_ctrl_inst|x_ball_dir~q\ $ (!\movement_ctrl_inst|increment\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|x_ball_dir~q\,
	datad => \movement_ctrl_inst|increment\(10),
	combout => \movement_ctrl_inst|Add3|auto_generated|_~1_combout\);

-- Location: LCCOMB_X46_Y38_N24
\movement_ctrl_inst|x_ball[10]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[10]~34_combout\ = (\movement_ctrl_inst|Add3|auto_generated|_~1_combout\ & ((\movement_ctrl_inst|x_ball\(10) & (!\movement_ctrl_inst|x_ball[9]~33\)) # (!\movement_ctrl_inst|x_ball\(10) & ((\movement_ctrl_inst|x_ball[9]~33\) # 
-- (GND))))) # (!\movement_ctrl_inst|Add3|auto_generated|_~1_combout\ & ((\movement_ctrl_inst|x_ball\(10) & (\movement_ctrl_inst|x_ball[9]~33\ & VCC)) # (!\movement_ctrl_inst|x_ball\(10) & (!\movement_ctrl_inst|x_ball[9]~33\))))
-- \movement_ctrl_inst|x_ball[10]~35\ = CARRY((\movement_ctrl_inst|Add3|auto_generated|_~1_combout\ & ((!\movement_ctrl_inst|x_ball[9]~33\) # (!\movement_ctrl_inst|x_ball\(10)))) # (!\movement_ctrl_inst|Add3|auto_generated|_~1_combout\ & 
-- (!\movement_ctrl_inst|x_ball\(10) & !\movement_ctrl_inst|x_ball[9]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add3|auto_generated|_~1_combout\,
	datab => \movement_ctrl_inst|x_ball\(10),
	datad => VCC,
	cin => \movement_ctrl_inst|x_ball[9]~33\,
	combout => \movement_ctrl_inst|x_ball[10]~34_combout\,
	cout => \movement_ctrl_inst|x_ball[10]~35\);

-- Location: FF_X46_Y38_N25
\movement_ctrl_inst|x_ball[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_ball[10]~34_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	ena => \movement_ctrl_inst|x_ball[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball\(10));

-- Location: LCCOMB_X43_Y37_N6
\movement_ctrl_inst|x_ball~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball~39_combout\ = (!\movement_ctrl_inst|x_ball\(11) & !\movement_ctrl_inst|x_ball\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|x_ball\(11),
	datad => \movement_ctrl_inst|x_ball\(10),
	combout => \movement_ctrl_inst|x_ball~39_combout\);

-- Location: LCCOMB_X43_Y37_N16
\movement_ctrl_inst|x_ball[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[4]~40_combout\ = (\movement_ctrl_inst|x_ball~39_combout\ & ((\movement_ctrl_inst|x_ball~38_combout\) # ((\movement_ctrl_inst|LessThan3~2_combout\ & \movement_ctrl_inst|x_ball_dir~q\)))) # (!\movement_ctrl_inst|x_ball~39_combout\ 
-- & (((\movement_ctrl_inst|x_ball_dir~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan3~2_combout\,
	datab => \movement_ctrl_inst|x_ball~38_combout\,
	datac => \movement_ctrl_inst|x_ball_dir~q\,
	datad => \movement_ctrl_inst|x_ball~39_combout\,
	combout => \movement_ctrl_inst|x_ball[4]~40_combout\);

-- Location: LCCOMB_X44_Y37_N22
\movement_ctrl_inst|x_ball[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[4]~41_combout\ = (\movement_ctrl_inst|x_ball[4]~40_combout\) # (\movement_ctrl_inst|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|x_ball[4]~40_combout\,
	datad => \movement_ctrl_inst|LessThan9~2_combout\,
	combout => \movement_ctrl_inst|x_ball[4]~41_combout\);

-- Location: FF_X46_Y38_N5
\movement_ctrl_inst|x_ball[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_ball[0]~14_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	ena => \movement_ctrl_inst|x_ball[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball\(0));

-- Location: FF_X46_Y38_N7
\movement_ctrl_inst|x_ball[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_ball[1]~16_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	ena => \movement_ctrl_inst|x_ball[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball\(1));

-- Location: LCCOMB_X42_Y37_N24
\movement_ctrl_inst|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan3~0_combout\ = (\movement_ctrl_inst|x_ball\(6)) # ((\movement_ctrl_inst|x_ball\(9)) # ((\movement_ctrl_inst|x_ball\(8)) # (\movement_ctrl_inst|x_ball\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(6),
	datab => \movement_ctrl_inst|x_ball\(9),
	datac => \movement_ctrl_inst|x_ball\(8),
	datad => \movement_ctrl_inst|x_ball\(7),
	combout => \movement_ctrl_inst|LessThan3~0_combout\);

-- Location: LCCOMB_X42_Y37_N18
\movement_ctrl_inst|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan3~1_combout\ = (\movement_ctrl_inst|x_ball\(2)) # ((\movement_ctrl_inst|x_ball\(3)) # ((\movement_ctrl_inst|x_ball\(4)) # (\movement_ctrl_inst|x_ball\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(2),
	datab => \movement_ctrl_inst|x_ball\(3),
	datac => \movement_ctrl_inst|x_ball\(4),
	datad => \movement_ctrl_inst|x_ball\(5),
	combout => \movement_ctrl_inst|LessThan3~1_combout\);

-- Location: LCCOMB_X42_Y37_N16
\movement_ctrl_inst|LessThan3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan3~2_combout\ = (\movement_ctrl_inst|x_ball\(1)) # ((\movement_ctrl_inst|LessThan3~0_combout\) # ((\movement_ctrl_inst|x_ball\(0)) # (\movement_ctrl_inst|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(1),
	datab => \movement_ctrl_inst|LessThan3~0_combout\,
	datac => \movement_ctrl_inst|x_ball\(0),
	datad => \movement_ctrl_inst|LessThan3~1_combout\,
	combout => \movement_ctrl_inst|LessThan3~2_combout\);

-- Location: LCCOMB_X43_Y37_N4
\movement_ctrl_inst|x_ball_dir~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball_dir~0_combout\ = (\movement_ctrl_inst|x_ball~39_combout\ & ((\movement_ctrl_inst|x_ball~38_combout\) # ((!\movement_ctrl_inst|LessThan3~2_combout\ & \movement_ctrl_inst|x_ball_dir~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan3~2_combout\,
	datab => \movement_ctrl_inst|x_ball~38_combout\,
	datac => \movement_ctrl_inst|x_ball_dir~q\,
	datad => \movement_ctrl_inst|x_ball~39_combout\,
	combout => \movement_ctrl_inst|x_ball_dir~0_combout\);

-- Location: LCCOMB_X44_Y34_N0
\movement_ctrl_inst|x_ball_dir~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball_dir~1_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & !\movement_ctrl_inst|x_ball_dir~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|x_ball_dir~0_combout\,
	combout => \movement_ctrl_inst|x_ball_dir~1_combout\);

-- Location: FF_X44_Y34_N1
\movement_ctrl_inst|x_ball_dir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_ball_dir~1_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball_dir~q\);

-- Location: LCCOMB_X43_Y38_N10
\movement_ctrl_inst|Add3|auto_generated|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add3|auto_generated|_~5_combout\ = \movement_ctrl_inst|x_ball_dir~q\ $ (!\movement_ctrl_inst|increment\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball_dir~q\,
	datac => \movement_ctrl_inst|increment\(6),
	combout => \movement_ctrl_inst|Add3|auto_generated|_~5_combout\);

-- Location: FF_X45_Y35_N3
\movement_ctrl_inst|x_ball[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	asdata => \movement_ctrl_inst|x_ball[6]~26_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => VCC,
	ena => \movement_ctrl_inst|x_ball[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball\(6));

-- Location: LCCOMB_X46_Y41_N20
\movement_ctrl_inst|LessThan8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan8~2_combout\ = (\movement_ctrl_inst|x_stand\(2) & (((\movement_ctrl_inst|x_stand\(1) & !\movement_ctrl_inst|x_ball\(1))) # (!\movement_ctrl_inst|x_ball\(2)))) # (!\movement_ctrl_inst|x_stand\(2) & 
-- (\movement_ctrl_inst|x_stand\(1) & (!\movement_ctrl_inst|x_ball\(1) & !\movement_ctrl_inst|x_ball\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(1),
	datab => \movement_ctrl_inst|x_stand\(2),
	datac => \movement_ctrl_inst|x_ball\(1),
	datad => \movement_ctrl_inst|x_ball\(2),
	combout => \movement_ctrl_inst|LessThan8~2_combout\);

-- Location: LCCOMB_X46_Y37_N4
\movement_ctrl_inst|LessThan8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan8~3_combout\ = (\affiche_obj_inst|Add2~2_combout\ & ((\movement_ctrl_inst|LessThan8~2_combout\) # (!\movement_ctrl_inst|x_ball\(3)))) # (!\affiche_obj_inst|Add2~2_combout\ & (\movement_ctrl_inst|LessThan8~2_combout\ & 
-- !\movement_ctrl_inst|x_ball\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \affiche_obj_inst|Add2~2_combout\,
	datac => \movement_ctrl_inst|LessThan8~2_combout\,
	datad => \movement_ctrl_inst|x_ball\(3),
	combout => \movement_ctrl_inst|LessThan8~3_combout\);

-- Location: LCCOMB_X46_Y37_N14
\movement_ctrl_inst|LessThan8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan8~4_combout\ = (\affiche_obj_inst|Add2~4_combout\ & ((\movement_ctrl_inst|LessThan8~3_combout\) # (!\movement_ctrl_inst|x_ball\(4)))) # (!\affiche_obj_inst|Add2~4_combout\ & (\movement_ctrl_inst|LessThan8~3_combout\ & 
-- !\movement_ctrl_inst|x_ball\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add2~4_combout\,
	datac => \movement_ctrl_inst|LessThan8~3_combout\,
	datad => \movement_ctrl_inst|x_ball\(4),
	combout => \movement_ctrl_inst|LessThan8~4_combout\);

-- Location: LCCOMB_X46_Y37_N28
\movement_ctrl_inst|LessThan8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan8~9_combout\ = (\movement_ctrl_inst|x_ball\(5) & (\movement_ctrl_inst|LessThan8~4_combout\ & \affiche_obj_inst|Add2~6_combout\)) # (!\movement_ctrl_inst|x_ball\(5) & ((\movement_ctrl_inst|LessThan8~4_combout\) # 
-- (\affiche_obj_inst|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball\(5),
	datac => \movement_ctrl_inst|LessThan8~4_combout\,
	datad => \affiche_obj_inst|Add2~6_combout\,
	combout => \movement_ctrl_inst|LessThan8~9_combout\);

-- Location: LCCOMB_X46_Y37_N2
\movement_ctrl_inst|LessThan8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan8~10_combout\ = (\affiche_obj_inst|Add2~8_combout\ & ((\movement_ctrl_inst|LessThan8~9_combout\) # (!\movement_ctrl_inst|x_ball\(6)))) # (!\affiche_obj_inst|Add2~8_combout\ & (!\movement_ctrl_inst|x_ball\(6) & 
-- \movement_ctrl_inst|LessThan8~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add2~8_combout\,
	datab => \movement_ctrl_inst|x_ball\(6),
	datad => \movement_ctrl_inst|LessThan8~9_combout\,
	combout => \movement_ctrl_inst|LessThan8~10_combout\);

-- Location: LCCOMB_X46_Y37_N0
\movement_ctrl_inst|LessThan8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan8~7_combout\ = (\movement_ctrl_inst|LessThan8~10_combout\ & ((\affiche_obj_inst|Add2~10_combout\) # (!\movement_ctrl_inst|x_ball\(7)))) # (!\movement_ctrl_inst|LessThan8~10_combout\ & (\affiche_obj_inst|Add2~10_combout\ & 
-- !\movement_ctrl_inst|x_ball\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|LessThan8~10_combout\,
	datac => \affiche_obj_inst|Add2~10_combout\,
	datad => \movement_ctrl_inst|x_ball\(7),
	combout => \movement_ctrl_inst|LessThan8~7_combout\);

-- Location: LCCOMB_X45_Y37_N18
\affiche_obj_inst|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add2~14_combout\ = (\movement_ctrl_inst|x_stand\(9) & (!\affiche_obj_inst|Add2~13\)) # (!\movement_ctrl_inst|x_stand\(9) & ((\affiche_obj_inst|Add2~13\) # (GND)))
-- \affiche_obj_inst|Add2~15\ = CARRY((!\affiche_obj_inst|Add2~13\) # (!\movement_ctrl_inst|x_stand\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_stand\(9),
	datad => VCC,
	cin => \affiche_obj_inst|Add2~13\,
	combout => \affiche_obj_inst|Add2~14_combout\,
	cout => \affiche_obj_inst|Add2~15\);

-- Location: LCCOMB_X45_Y37_N20
\affiche_obj_inst|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add2~16_combout\ = (\movement_ctrl_inst|x_stand\(10) & (\affiche_obj_inst|Add2~15\ $ (GND))) # (!\movement_ctrl_inst|x_stand\(10) & (!\affiche_obj_inst|Add2~15\ & VCC))
-- \affiche_obj_inst|Add2~17\ = CARRY((\movement_ctrl_inst|x_stand\(10) & !\affiche_obj_inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_stand\(10),
	datad => VCC,
	cin => \affiche_obj_inst|Add2~15\,
	combout => \affiche_obj_inst|Add2~16_combout\,
	cout => \affiche_obj_inst|Add2~17\);

-- Location: LCCOMB_X45_Y37_N22
\affiche_obj_inst|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add2~18_combout\ = (\movement_ctrl_inst|x_stand\(11) & (!\affiche_obj_inst|Add2~17\)) # (!\movement_ctrl_inst|x_stand\(11) & ((\affiche_obj_inst|Add2~17\) # (GND)))
-- \affiche_obj_inst|Add2~19\ = CARRY((!\affiche_obj_inst|Add2~17\) # (!\movement_ctrl_inst|x_stand\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_stand\(11),
	datad => VCC,
	cin => \affiche_obj_inst|Add2~17\,
	combout => \affiche_obj_inst|Add2~18_combout\,
	cout => \affiche_obj_inst|Add2~19\);

-- Location: LCCOMB_X45_Y37_N26
\movement_ctrl_inst|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan8~0_combout\ = (\movement_ctrl_inst|x_ball\(10) & (\affiche_obj_inst|Add2~16_combout\ & (\movement_ctrl_inst|x_ball\(9) $ (!\affiche_obj_inst|Add2~14_combout\)))) # (!\movement_ctrl_inst|x_ball\(10) & 
-- (!\affiche_obj_inst|Add2~16_combout\ & (\movement_ctrl_inst|x_ball\(9) $ (!\affiche_obj_inst|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(10),
	datab => \affiche_obj_inst|Add2~16_combout\,
	datac => \movement_ctrl_inst|x_ball\(9),
	datad => \affiche_obj_inst|Add2~14_combout\,
	combout => \movement_ctrl_inst|LessThan8~0_combout\);

-- Location: LCCOMB_X46_Y37_N10
\movement_ctrl_inst|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan8~1_combout\ = (\movement_ctrl_inst|LessThan8~0_combout\ & (\affiche_obj_inst|Add2~18_combout\ $ (!\movement_ctrl_inst|x_ball\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add2~18_combout\,
	datab => \movement_ctrl_inst|LessThan8~0_combout\,
	datac => \movement_ctrl_inst|x_ball\(11),
	combout => \movement_ctrl_inst|LessThan8~1_combout\);

-- Location: LCCOMB_X46_Y37_N6
\movement_ctrl_inst|LessThan8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan8~8_combout\ = (\movement_ctrl_inst|LessThan8~1_combout\ & ((\affiche_obj_inst|Add2~12_combout\ & ((\movement_ctrl_inst|LessThan8~7_combout\) # (!\movement_ctrl_inst|x_ball\(8)))) # (!\affiche_obj_inst|Add2~12_combout\ & 
-- (\movement_ctrl_inst|LessThan8~7_combout\ & !\movement_ctrl_inst|x_ball\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add2~12_combout\,
	datab => \movement_ctrl_inst|LessThan8~7_combout\,
	datac => \movement_ctrl_inst|x_ball\(8),
	datad => \movement_ctrl_inst|LessThan8~1_combout\,
	combout => \movement_ctrl_inst|LessThan8~8_combout\);

-- Location: LCCOMB_X46_Y41_N10
\movement_ctrl_inst|LessThan7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan7~8_combout\ = (\movement_ctrl_inst|x_ball\(11) & (\movement_ctrl_inst|x_stand\(11) & (\movement_ctrl_inst|x_ball\(10) $ (!\movement_ctrl_inst|x_stand\(10))))) # (!\movement_ctrl_inst|x_ball\(11) & 
-- (!\movement_ctrl_inst|x_stand\(11) & (\movement_ctrl_inst|x_ball\(10) $ (!\movement_ctrl_inst|x_stand\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(11),
	datab => \movement_ctrl_inst|x_stand\(11),
	datac => \movement_ctrl_inst|x_ball\(10),
	datad => \movement_ctrl_inst|x_stand\(10),
	combout => \movement_ctrl_inst|LessThan7~8_combout\);

-- Location: LCCOMB_X46_Y38_N0
\movement_ctrl_inst|LessThan7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan7~2_combout\ = (\movement_ctrl_inst|x_stand\(2) & (((\movement_ctrl_inst|x_ball\(2)) # (\movement_ctrl_inst|x_ball\(1))) # (!\movement_ctrl_inst|x_stand\(1)))) # (!\movement_ctrl_inst|x_stand\(2) & 
-- (\movement_ctrl_inst|x_ball\(2) & ((\movement_ctrl_inst|x_ball\(1)) # (!\movement_ctrl_inst|x_stand\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(2),
	datab => \movement_ctrl_inst|x_stand\(1),
	datac => \movement_ctrl_inst|x_ball\(2),
	datad => \movement_ctrl_inst|x_ball\(1),
	combout => \movement_ctrl_inst|LessThan7~2_combout\);

-- Location: LCCOMB_X46_Y38_N28
\movement_ctrl_inst|LessThan7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan7~3_combout\ = (\movement_ctrl_inst|x_ball\(3) & ((\movement_ctrl_inst|LessThan7~2_combout\) # (!\movement_ctrl_inst|x_stand\(3)))) # (!\movement_ctrl_inst|x_ball\(3) & (!\movement_ctrl_inst|x_stand\(3) & 
-- \movement_ctrl_inst|LessThan7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(3),
	datac => \movement_ctrl_inst|x_stand\(3),
	datad => \movement_ctrl_inst|LessThan7~2_combout\,
	combout => \movement_ctrl_inst|LessThan7~3_combout\);

-- Location: LCCOMB_X46_Y38_N30
\movement_ctrl_inst|LessThan7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan7~4_combout\ = (\movement_ctrl_inst|x_ball\(4) & ((\movement_ctrl_inst|LessThan7~3_combout\) # (!\movement_ctrl_inst|x_stand\(4)))) # (!\movement_ctrl_inst|x_ball\(4) & (!\movement_ctrl_inst|x_stand\(4) & 
-- \movement_ctrl_inst|LessThan7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(4),
	datac => \movement_ctrl_inst|x_stand\(4),
	datad => \movement_ctrl_inst|LessThan7~3_combout\,
	combout => \movement_ctrl_inst|LessThan7~4_combout\);

-- Location: LCCOMB_X46_Y37_N30
\movement_ctrl_inst|LessThan7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan7~10_combout\ = (\movement_ctrl_inst|x_ball\(5) & ((\movement_ctrl_inst|x_stand\(5)) # (\movement_ctrl_inst|LessThan7~4_combout\))) # (!\movement_ctrl_inst|x_ball\(5) & (\movement_ctrl_inst|x_stand\(5) & 
-- \movement_ctrl_inst|LessThan7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball\(5),
	datac => \movement_ctrl_inst|x_stand\(5),
	datad => \movement_ctrl_inst|LessThan7~4_combout\,
	combout => \movement_ctrl_inst|LessThan7~10_combout\);

-- Location: LCCOMB_X46_Y37_N12
\movement_ctrl_inst|LessThan7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan7~5_combout\ = (\movement_ctrl_inst|x_stand\(6) & ((\movement_ctrl_inst|LessThan7~10_combout\) # (\movement_ctrl_inst|x_ball\(6)))) # (!\movement_ctrl_inst|x_stand\(6) & (\movement_ctrl_inst|LessThan7~10_combout\ & 
-- \movement_ctrl_inst|x_ball\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_stand\(6),
	datac => \movement_ctrl_inst|LessThan7~10_combout\,
	datad => \movement_ctrl_inst|x_ball\(6),
	combout => \movement_ctrl_inst|LessThan7~5_combout\);

-- Location: LCCOMB_X46_Y37_N26
\movement_ctrl_inst|LessThan7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan7~6_combout\ = (\movement_ctrl_inst|LessThan7~5_combout\ & ((\movement_ctrl_inst|x_ball\(7)) # (!\movement_ctrl_inst|x_stand\(7)))) # (!\movement_ctrl_inst|LessThan7~5_combout\ & (!\movement_ctrl_inst|x_stand\(7) & 
-- \movement_ctrl_inst|x_ball\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan7~5_combout\,
	datab => \movement_ctrl_inst|x_stand\(7),
	datad => \movement_ctrl_inst|x_ball\(7),
	combout => \movement_ctrl_inst|LessThan7~6_combout\);

-- Location: LCCOMB_X46_Y37_N16
\movement_ctrl_inst|LessThan7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan7~7_combout\ = (\movement_ctrl_inst|LessThan7~6_combout\ & (\movement_ctrl_inst|x_stand\(8) & !\movement_ctrl_inst|x_ball\(8))) # (!\movement_ctrl_inst|LessThan7~6_combout\ & ((\movement_ctrl_inst|x_stand\(8)) # 
-- (!\movement_ctrl_inst|x_ball\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan7~6_combout\,
	datab => \movement_ctrl_inst|x_stand\(8),
	datac => \movement_ctrl_inst|x_ball\(8),
	combout => \movement_ctrl_inst|LessThan7~7_combout\);

-- Location: LCCOMB_X46_Y37_N18
\movement_ctrl_inst|LessThan7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan7~9_combout\ = (\movement_ctrl_inst|LessThan7~8_combout\ & (\movement_ctrl_inst|LessThan7~7_combout\ & (\movement_ctrl_inst|x_stand\(9) $ (!\movement_ctrl_inst|x_ball\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan7~8_combout\,
	datab => \movement_ctrl_inst|LessThan7~7_combout\,
	datac => \movement_ctrl_inst|x_stand\(9),
	datad => \movement_ctrl_inst|x_ball\(9),
	combout => \movement_ctrl_inst|LessThan7~9_combout\);

-- Location: LCCOMB_X45_Y35_N8
\movement_ctrl_inst|update_ball_position~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|update_ball_position~3_combout\ = (\movement_ctrl_inst|x_stand\(10) & (((!\movement_ctrl_inst|x_ball\(9) & \movement_ctrl_inst|x_stand\(9))) # (!\movement_ctrl_inst|x_ball\(10)))) # (!\movement_ctrl_inst|x_stand\(10) & 
-- (!\movement_ctrl_inst|x_ball\(9) & (\movement_ctrl_inst|x_stand\(9) & !\movement_ctrl_inst|x_ball\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(10),
	datab => \movement_ctrl_inst|x_ball\(9),
	datac => \movement_ctrl_inst|x_stand\(9),
	datad => \movement_ctrl_inst|x_ball\(10),
	combout => \movement_ctrl_inst|update_ball_position~3_combout\);

-- Location: LCCOMB_X45_Y35_N6
\movement_ctrl_inst|update_ball_position~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|update_ball_position~7_combout\ = (\movement_ctrl_inst|y_ball\(8) & (\movement_ctrl_inst|y_ball\(7) & (\movement_ctrl_inst|LessThan9~1_combout\ & \movement_ctrl_inst|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(8),
	datab => \movement_ctrl_inst|y_ball\(7),
	datac => \movement_ctrl_inst|LessThan9~1_combout\,
	datad => \movement_ctrl_inst|LessThan9~0_combout\,
	combout => \movement_ctrl_inst|update_ball_position~7_combout\);

-- Location: LCCOMB_X45_Y35_N0
\movement_ctrl_inst|update_ball_position~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|update_ball_position~4_combout\ = (\movement_ctrl_inst|update_ball_position~7_combout\ & ((\movement_ctrl_inst|x_ball\(11) & ((!\movement_ctrl_inst|x_stand\(11)) # (!\movement_ctrl_inst|update_ball_position~3_combout\))) # 
-- (!\movement_ctrl_inst|x_ball\(11) & (!\movement_ctrl_inst|update_ball_position~3_combout\ & !\movement_ctrl_inst|x_stand\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(11),
	datab => \movement_ctrl_inst|update_ball_position~3_combout\,
	datac => \movement_ctrl_inst|x_stand\(11),
	datad => \movement_ctrl_inst|update_ball_position~7_combout\,
	combout => \movement_ctrl_inst|update_ball_position~4_combout\);

-- Location: LCCOMB_X43_Y38_N20
\movement_ctrl_inst|Add5|auto_generated|_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|_~6_combout\ = \movement_ctrl_inst|increment\(5) $ (!\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(5),
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|Add5|auto_generated|_~6_combout\);

-- Location: LCCOMB_X43_Y38_N22
\movement_ctrl_inst|Add5|auto_generated|_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|_~7_combout\ = \movement_ctrl_inst|increment\(4) $ (!\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(4),
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|Add5|auto_generated|_~7_combout\);

-- Location: LCCOMB_X43_Y37_N14
\movement_ctrl_inst|Add5|auto_generated|_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|_~9_combout\ = \movement_ctrl_inst|increment\(2) $ (!\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(2),
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|Add5|auto_generated|_~9_combout\);

-- Location: LCCOMB_X43_Y37_N12
\movement_ctrl_inst|Add5|auto_generated|_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|_~10_combout\ = \movement_ctrl_inst|increment\(1) $ (!\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|increment\(1),
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|Add5|auto_generated|_~10_combout\);

-- Location: LCCOMB_X43_Y37_N18
\movement_ctrl_inst|Add5|auto_generated|_~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|_~11_combout\ = \movement_ctrl_inst|increment\(0) $ (\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|increment\(0),
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|Add5|auto_generated|_~11_combout\);

-- Location: LCCOMB_X43_Y34_N6
\movement_ctrl_inst|Add5|auto_generated|result_int[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[0]~1_cout\ = CARRY(\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|y_ball_dir~q\,
	datad => VCC,
	cout => \movement_ctrl_inst|Add5|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X43_Y34_N8
\movement_ctrl_inst|Add5|auto_generated|result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[1]~2_combout\ = (\movement_ctrl_inst|Add5|auto_generated|_~11_combout\ & ((\movement_ctrl_inst|y_ball\(0) & (!\movement_ctrl_inst|Add5|auto_generated|result_int[0]~1_cout\)) # 
-- (!\movement_ctrl_inst|y_ball\(0) & ((\movement_ctrl_inst|Add5|auto_generated|result_int[0]~1_cout\) # (GND))))) # (!\movement_ctrl_inst|Add5|auto_generated|_~11_combout\ & ((\movement_ctrl_inst|y_ball\(0) & 
-- (\movement_ctrl_inst|Add5|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\movement_ctrl_inst|y_ball\(0) & (!\movement_ctrl_inst|Add5|auto_generated|result_int[0]~1_cout\))))
-- \movement_ctrl_inst|Add5|auto_generated|result_int[1]~3\ = CARRY((\movement_ctrl_inst|Add5|auto_generated|_~11_combout\ & ((!\movement_ctrl_inst|Add5|auto_generated|result_int[0]~1_cout\) # (!\movement_ctrl_inst|y_ball\(0)))) # 
-- (!\movement_ctrl_inst|Add5|auto_generated|_~11_combout\ & (!\movement_ctrl_inst|y_ball\(0) & !\movement_ctrl_inst|Add5|auto_generated|result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add5|auto_generated|_~11_combout\,
	datab => \movement_ctrl_inst|y_ball\(0),
	datad => VCC,
	cin => \movement_ctrl_inst|Add5|auto_generated|result_int[0]~1_cout\,
	combout => \movement_ctrl_inst|Add5|auto_generated|result_int[1]~2_combout\,
	cout => \movement_ctrl_inst|Add5|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X43_Y33_N10
\movement_ctrl_inst|y_ball~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball~12_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add5|auto_generated|result_int[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add5|auto_generated|result_int[1]~2_combout\,
	combout => \movement_ctrl_inst|y_ball~12_combout\);

-- Location: FF_X42_Y33_N31
\movement_ctrl_inst|y_ball[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	asdata => \movement_ctrl_inst|y_ball~12_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sload => VCC,
	ena => \movement_ctrl_inst|y_ball[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball\(0));

-- Location: LCCOMB_X43_Y34_N10
\movement_ctrl_inst|Add5|auto_generated|result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[2]~4_combout\ = ((\movement_ctrl_inst|Add5|auto_generated|_~10_combout\ $ (\movement_ctrl_inst|y_ball\(1) $ (\movement_ctrl_inst|Add5|auto_generated|result_int[1]~3\)))) # (GND)
-- \movement_ctrl_inst|Add5|auto_generated|result_int[2]~5\ = CARRY((\movement_ctrl_inst|Add5|auto_generated|_~10_combout\ & (\movement_ctrl_inst|y_ball\(1) & !\movement_ctrl_inst|Add5|auto_generated|result_int[1]~3\)) # 
-- (!\movement_ctrl_inst|Add5|auto_generated|_~10_combout\ & ((\movement_ctrl_inst|y_ball\(1)) # (!\movement_ctrl_inst|Add5|auto_generated|result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add5|auto_generated|_~10_combout\,
	datab => \movement_ctrl_inst|y_ball\(1),
	datad => VCC,
	cin => \movement_ctrl_inst|Add5|auto_generated|result_int[1]~3\,
	combout => \movement_ctrl_inst|Add5|auto_generated|result_int[2]~4_combout\,
	cout => \movement_ctrl_inst|Add5|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X43_Y34_N2
\movement_ctrl_inst|y_ball~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball~11_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add5|auto_generated|result_int[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add5|auto_generated|result_int[2]~4_combout\,
	combout => \movement_ctrl_inst|y_ball~11_combout\);

-- Location: FF_X43_Y34_N3
\movement_ctrl_inst|y_ball[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|y_ball~11_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|y_ball[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball\(1));

-- Location: LCCOMB_X43_Y34_N12
\movement_ctrl_inst|Add5|auto_generated|result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[3]~6_combout\ = (\movement_ctrl_inst|Add5|auto_generated|_~9_combout\ & ((\movement_ctrl_inst|y_ball\(2) & (!\movement_ctrl_inst|Add5|auto_generated|result_int[2]~5\)) # (!\movement_ctrl_inst|y_ball\(2) & 
-- ((\movement_ctrl_inst|Add5|auto_generated|result_int[2]~5\) # (GND))))) # (!\movement_ctrl_inst|Add5|auto_generated|_~9_combout\ & ((\movement_ctrl_inst|y_ball\(2) & (\movement_ctrl_inst|Add5|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\movement_ctrl_inst|y_ball\(2) & (!\movement_ctrl_inst|Add5|auto_generated|result_int[2]~5\))))
-- \movement_ctrl_inst|Add5|auto_generated|result_int[3]~7\ = CARRY((\movement_ctrl_inst|Add5|auto_generated|_~9_combout\ & ((!\movement_ctrl_inst|Add5|auto_generated|result_int[2]~5\) # (!\movement_ctrl_inst|y_ball\(2)))) # 
-- (!\movement_ctrl_inst|Add5|auto_generated|_~9_combout\ & (!\movement_ctrl_inst|y_ball\(2) & !\movement_ctrl_inst|Add5|auto_generated|result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add5|auto_generated|_~9_combout\,
	datab => \movement_ctrl_inst|y_ball\(2),
	datad => VCC,
	cin => \movement_ctrl_inst|Add5|auto_generated|result_int[2]~5\,
	combout => \movement_ctrl_inst|Add5|auto_generated|result_int[3]~6_combout\,
	cout => \movement_ctrl_inst|Add5|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X42_Y34_N6
\movement_ctrl_inst|y_ball~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball~10_combout\ = (\movement_ctrl_inst|Add5|auto_generated|result_int[3]~6_combout\ & !\movement_ctrl_inst|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|Add5|auto_generated|result_int[3]~6_combout\,
	datad => \movement_ctrl_inst|LessThan9~2_combout\,
	combout => \movement_ctrl_inst|y_ball~10_combout\);

-- Location: FF_X43_Y34_N1
\movement_ctrl_inst|y_ball[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	asdata => \movement_ctrl_inst|y_ball~10_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sload => VCC,
	ena => \movement_ctrl_inst|y_ball[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball\(2));

-- Location: LCCOMB_X43_Y34_N14
\movement_ctrl_inst|Add5|auto_generated|result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[4]~8_combout\ = ((\movement_ctrl_inst|Add5|auto_generated|_~8_combout\ $ (\movement_ctrl_inst|y_ball\(3) $ (\movement_ctrl_inst|Add5|auto_generated|result_int[3]~7\)))) # (GND)
-- \movement_ctrl_inst|Add5|auto_generated|result_int[4]~9\ = CARRY((\movement_ctrl_inst|Add5|auto_generated|_~8_combout\ & (\movement_ctrl_inst|y_ball\(3) & !\movement_ctrl_inst|Add5|auto_generated|result_int[3]~7\)) # 
-- (!\movement_ctrl_inst|Add5|auto_generated|_~8_combout\ & ((\movement_ctrl_inst|y_ball\(3)) # (!\movement_ctrl_inst|Add5|auto_generated|result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add5|auto_generated|_~8_combout\,
	datab => \movement_ctrl_inst|y_ball\(3),
	datad => VCC,
	cin => \movement_ctrl_inst|Add5|auto_generated|result_int[3]~7\,
	combout => \movement_ctrl_inst|Add5|auto_generated|result_int[4]~8_combout\,
	cout => \movement_ctrl_inst|Add5|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X43_Y34_N16
\movement_ctrl_inst|Add5|auto_generated|result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[5]~10_combout\ = (\movement_ctrl_inst|Add5|auto_generated|_~7_combout\ & ((\movement_ctrl_inst|y_ball\(4) & (!\movement_ctrl_inst|Add5|auto_generated|result_int[4]~9\)) # (!\movement_ctrl_inst|y_ball\(4) 
-- & ((\movement_ctrl_inst|Add5|auto_generated|result_int[4]~9\) # (GND))))) # (!\movement_ctrl_inst|Add5|auto_generated|_~7_combout\ & ((\movement_ctrl_inst|y_ball\(4) & (\movement_ctrl_inst|Add5|auto_generated|result_int[4]~9\ & VCC)) # 
-- (!\movement_ctrl_inst|y_ball\(4) & (!\movement_ctrl_inst|Add5|auto_generated|result_int[4]~9\))))
-- \movement_ctrl_inst|Add5|auto_generated|result_int[5]~11\ = CARRY((\movement_ctrl_inst|Add5|auto_generated|_~7_combout\ & ((!\movement_ctrl_inst|Add5|auto_generated|result_int[4]~9\) # (!\movement_ctrl_inst|y_ball\(4)))) # 
-- (!\movement_ctrl_inst|Add5|auto_generated|_~7_combout\ & (!\movement_ctrl_inst|y_ball\(4) & !\movement_ctrl_inst|Add5|auto_generated|result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add5|auto_generated|_~7_combout\,
	datab => \movement_ctrl_inst|y_ball\(4),
	datad => VCC,
	cin => \movement_ctrl_inst|Add5|auto_generated|result_int[4]~9\,
	combout => \movement_ctrl_inst|Add5|auto_generated|result_int[5]~10_combout\,
	cout => \movement_ctrl_inst|Add5|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X43_Y33_N6
\movement_ctrl_inst|y_ball~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball~9_combout\ = (\movement_ctrl_inst|Add5|auto_generated|result_int[5]~10_combout\ & !\movement_ctrl_inst|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|Add5|auto_generated|result_int[5]~10_combout\,
	datad => \movement_ctrl_inst|LessThan9~2_combout\,
	combout => \movement_ctrl_inst|y_ball~9_combout\);

-- Location: FF_X43_Y33_N7
\movement_ctrl_inst|y_ball[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|y_ball~9_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|y_ball[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball\(4));

-- Location: LCCOMB_X43_Y34_N18
\movement_ctrl_inst|Add5|auto_generated|result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[6]~12_combout\ = ((\movement_ctrl_inst|y_ball\(5) $ (\movement_ctrl_inst|Add5|auto_generated|_~6_combout\ $ (\movement_ctrl_inst|Add5|auto_generated|result_int[5]~11\)))) # (GND)
-- \movement_ctrl_inst|Add5|auto_generated|result_int[6]~13\ = CARRY((\movement_ctrl_inst|y_ball\(5) & ((!\movement_ctrl_inst|Add5|auto_generated|result_int[5]~11\) # (!\movement_ctrl_inst|Add5|auto_generated|_~6_combout\))) # 
-- (!\movement_ctrl_inst|y_ball\(5) & (!\movement_ctrl_inst|Add5|auto_generated|_~6_combout\ & !\movement_ctrl_inst|Add5|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(5),
	datab => \movement_ctrl_inst|Add5|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \movement_ctrl_inst|Add5|auto_generated|result_int[5]~11\,
	combout => \movement_ctrl_inst|Add5|auto_generated|result_int[6]~12_combout\,
	cout => \movement_ctrl_inst|Add5|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X43_Y33_N4
\movement_ctrl_inst|y_ball~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball~7_combout\ = (\movement_ctrl_inst|Add5|auto_generated|result_int[6]~12_combout\ & !\movement_ctrl_inst|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|Add5|auto_generated|result_int[6]~12_combout\,
	datad => \movement_ctrl_inst|LessThan9~2_combout\,
	combout => \movement_ctrl_inst|y_ball~7_combout\);

-- Location: FF_X43_Y33_N5
\movement_ctrl_inst|y_ball[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|y_ball~7_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|y_ball[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball\(5));

-- Location: LCCOMB_X43_Y34_N0
\movement_ctrl_inst|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan6~0_combout\ = (\movement_ctrl_inst|y_ball\(2) & ((\movement_ctrl_inst|y_ball\(1)) # (\movement_ctrl_inst|y_ball\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|y_ball\(1),
	datac => \movement_ctrl_inst|y_ball\(2),
	datad => \movement_ctrl_inst|y_ball\(0),
	combout => \movement_ctrl_inst|LessThan6~0_combout\);

-- Location: LCCOMB_X43_Y34_N4
\movement_ctrl_inst|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan6~1_combout\ = (\movement_ctrl_inst|y_ball\(5) & ((\movement_ctrl_inst|y_ball\(4)) # ((\movement_ctrl_inst|y_ball\(3)) # (\movement_ctrl_inst|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(5),
	datab => \movement_ctrl_inst|y_ball\(4),
	datac => \movement_ctrl_inst|y_ball\(3),
	datad => \movement_ctrl_inst|LessThan6~0_combout\,
	combout => \movement_ctrl_inst|LessThan6~1_combout\);

-- Location: LCCOMB_X46_Y37_N24
\movement_ctrl_inst|update_ball_position~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|update_ball_position~5_combout\ = (\movement_ctrl_inst|update_ball_position~4_combout\ & ((\movement_ctrl_inst|LessThan6~1_combout\) # (\movement_ctrl_inst|y_ball\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|update_ball_position~4_combout\,
	datac => \movement_ctrl_inst|LessThan6~1_combout\,
	datad => \movement_ctrl_inst|y_ball\(6),
	combout => \movement_ctrl_inst|update_ball_position~5_combout\);

-- Location: LCCOMB_X45_Y37_N2
\movement_ctrl_inst|LessThan8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan8~5_combout\ = (\movement_ctrl_inst|x_ball\(10) & (!\movement_ctrl_inst|x_ball\(9) & (\affiche_obj_inst|Add2~16_combout\ & \affiche_obj_inst|Add2~14_combout\))) # (!\movement_ctrl_inst|x_ball\(10) & 
-- ((\affiche_obj_inst|Add2~16_combout\) # ((!\movement_ctrl_inst|x_ball\(9) & \affiche_obj_inst|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(10),
	datab => \movement_ctrl_inst|x_ball\(9),
	datac => \affiche_obj_inst|Add2~16_combout\,
	datad => \affiche_obj_inst|Add2~14_combout\,
	combout => \movement_ctrl_inst|LessThan8~5_combout\);

-- Location: LCCOMB_X45_Y37_N24
\affiche_obj_inst|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add2~20_combout\ = !\affiche_obj_inst|Add2~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \affiche_obj_inst|Add2~19\,
	combout => \affiche_obj_inst|Add2~20_combout\);

-- Location: LCCOMB_X45_Y37_N0
\movement_ctrl_inst|LessThan8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan8~6_combout\ = (\affiche_obj_inst|Add2~20_combout\) # ((\movement_ctrl_inst|LessThan8~5_combout\ & ((\affiche_obj_inst|Add2~18_combout\) # (!\movement_ctrl_inst|x_ball\(11)))) # (!\movement_ctrl_inst|LessThan8~5_combout\ & 
-- (!\movement_ctrl_inst|x_ball\(11) & \affiche_obj_inst|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan8~5_combout\,
	datab => \movement_ctrl_inst|x_ball\(11),
	datac => \affiche_obj_inst|Add2~18_combout\,
	datad => \affiche_obj_inst|Add2~20_combout\,
	combout => \movement_ctrl_inst|LessThan8~6_combout\);

-- Location: LCCOMB_X46_Y37_N8
\movement_ctrl_inst|update_ball_position~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|update_ball_position~6_combout\ = (!\movement_ctrl_inst|LessThan7~9_combout\ & (\movement_ctrl_inst|update_ball_position~5_combout\ & ((\movement_ctrl_inst|LessThan8~8_combout\) # (\movement_ctrl_inst|LessThan8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan8~8_combout\,
	datab => \movement_ctrl_inst|LessThan7~9_combout\,
	datac => \movement_ctrl_inst|update_ball_position~5_combout\,
	datad => \movement_ctrl_inst|LessThan8~6_combout\,
	combout => \movement_ctrl_inst|update_ball_position~6_combout\);

-- Location: LCCOMB_X47_Y37_N0
\movement_ctrl_inst|bouncing_counter[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[0]~32_combout\ = (\movement_ctrl_inst|update_ball_position~6_combout\ & (\movement_ctrl_inst|bouncing_counter\(0) $ (VCC))) # (!\movement_ctrl_inst|update_ball_position~6_combout\ & 
-- (\movement_ctrl_inst|bouncing_counter\(0) & VCC))
-- \movement_ctrl_inst|bouncing_counter[0]~33\ = CARRY((\movement_ctrl_inst|update_ball_position~6_combout\ & \movement_ctrl_inst|bouncing_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|update_ball_position~6_combout\,
	datab => \movement_ctrl_inst|bouncing_counter\(0),
	datad => VCC,
	combout => \movement_ctrl_inst|bouncing_counter[0]~32_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[0]~33\);

-- Location: LCCOMB_X45_Y43_N2
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X47_Y37_N1
\movement_ctrl_inst|bouncing_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[0]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(0));

-- Location: LCCOMB_X47_Y37_N2
\movement_ctrl_inst|bouncing_counter[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[1]~34_combout\ = (\movement_ctrl_inst|bouncing_counter\(1) & (!\movement_ctrl_inst|bouncing_counter[0]~33\)) # (!\movement_ctrl_inst|bouncing_counter\(1) & ((\movement_ctrl_inst|bouncing_counter[0]~33\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[1]~35\ = CARRY((!\movement_ctrl_inst|bouncing_counter[0]~33\) # (!\movement_ctrl_inst|bouncing_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(1),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[0]~33\,
	combout => \movement_ctrl_inst|bouncing_counter[1]~34_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[1]~35\);

-- Location: FF_X47_Y37_N3
\movement_ctrl_inst|bouncing_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[1]~34_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(1));

-- Location: LCCOMB_X47_Y37_N4
\movement_ctrl_inst|bouncing_counter[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[2]~36_combout\ = (\movement_ctrl_inst|bouncing_counter\(2) & (\movement_ctrl_inst|bouncing_counter[1]~35\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(2) & (!\movement_ctrl_inst|bouncing_counter[1]~35\ & VCC))
-- \movement_ctrl_inst|bouncing_counter[2]~37\ = CARRY((\movement_ctrl_inst|bouncing_counter\(2) & !\movement_ctrl_inst|bouncing_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(2),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[1]~35\,
	combout => \movement_ctrl_inst|bouncing_counter[2]~36_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[2]~37\);

-- Location: FF_X47_Y37_N5
\movement_ctrl_inst|bouncing_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[2]~36_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(2));

-- Location: LCCOMB_X47_Y37_N6
\movement_ctrl_inst|bouncing_counter[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[3]~38_combout\ = (\movement_ctrl_inst|bouncing_counter\(3) & (!\movement_ctrl_inst|bouncing_counter[2]~37\)) # (!\movement_ctrl_inst|bouncing_counter\(3) & ((\movement_ctrl_inst|bouncing_counter[2]~37\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[3]~39\ = CARRY((!\movement_ctrl_inst|bouncing_counter[2]~37\) # (!\movement_ctrl_inst|bouncing_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(3),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[2]~37\,
	combout => \movement_ctrl_inst|bouncing_counter[3]~38_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[3]~39\);

-- Location: FF_X47_Y37_N7
\movement_ctrl_inst|bouncing_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[3]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(3));

-- Location: LCCOMB_X47_Y37_N8
\movement_ctrl_inst|bouncing_counter[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[4]~40_combout\ = (\movement_ctrl_inst|bouncing_counter\(4) & (\movement_ctrl_inst|bouncing_counter[3]~39\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(4) & (!\movement_ctrl_inst|bouncing_counter[3]~39\ & VCC))
-- \movement_ctrl_inst|bouncing_counter[4]~41\ = CARRY((\movement_ctrl_inst|bouncing_counter\(4) & !\movement_ctrl_inst|bouncing_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(4),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[3]~39\,
	combout => \movement_ctrl_inst|bouncing_counter[4]~40_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[4]~41\);

-- Location: FF_X47_Y37_N9
\movement_ctrl_inst|bouncing_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[4]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(4));

-- Location: LCCOMB_X47_Y37_N10
\movement_ctrl_inst|bouncing_counter[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[5]~42_combout\ = (\movement_ctrl_inst|bouncing_counter\(5) & (!\movement_ctrl_inst|bouncing_counter[4]~41\)) # (!\movement_ctrl_inst|bouncing_counter\(5) & ((\movement_ctrl_inst|bouncing_counter[4]~41\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[5]~43\ = CARRY((!\movement_ctrl_inst|bouncing_counter[4]~41\) # (!\movement_ctrl_inst|bouncing_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(5),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[4]~41\,
	combout => \movement_ctrl_inst|bouncing_counter[5]~42_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[5]~43\);

-- Location: FF_X47_Y37_N11
\movement_ctrl_inst|bouncing_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[5]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(5));

-- Location: LCCOMB_X47_Y37_N12
\movement_ctrl_inst|bouncing_counter[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[6]~44_combout\ = (\movement_ctrl_inst|bouncing_counter\(6) & (\movement_ctrl_inst|bouncing_counter[5]~43\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(6) & (!\movement_ctrl_inst|bouncing_counter[5]~43\ & VCC))
-- \movement_ctrl_inst|bouncing_counter[6]~45\ = CARRY((\movement_ctrl_inst|bouncing_counter\(6) & !\movement_ctrl_inst|bouncing_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(6),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[5]~43\,
	combout => \movement_ctrl_inst|bouncing_counter[6]~44_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[6]~45\);

-- Location: FF_X47_Y37_N13
\movement_ctrl_inst|bouncing_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[6]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(6));

-- Location: LCCOMB_X47_Y37_N14
\movement_ctrl_inst|bouncing_counter[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[7]~46_combout\ = (\movement_ctrl_inst|bouncing_counter\(7) & (!\movement_ctrl_inst|bouncing_counter[6]~45\)) # (!\movement_ctrl_inst|bouncing_counter\(7) & ((\movement_ctrl_inst|bouncing_counter[6]~45\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[7]~47\ = CARRY((!\movement_ctrl_inst|bouncing_counter[6]~45\) # (!\movement_ctrl_inst|bouncing_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(7),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[6]~45\,
	combout => \movement_ctrl_inst|bouncing_counter[7]~46_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[7]~47\);

-- Location: FF_X47_Y37_N15
\movement_ctrl_inst|bouncing_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[7]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(7));

-- Location: LCCOMB_X47_Y37_N16
\movement_ctrl_inst|bouncing_counter[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[8]~48_combout\ = (\movement_ctrl_inst|bouncing_counter\(8) & (\movement_ctrl_inst|bouncing_counter[7]~47\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(8) & (!\movement_ctrl_inst|bouncing_counter[7]~47\ & VCC))
-- \movement_ctrl_inst|bouncing_counter[8]~49\ = CARRY((\movement_ctrl_inst|bouncing_counter\(8) & !\movement_ctrl_inst|bouncing_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(8),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[7]~47\,
	combout => \movement_ctrl_inst|bouncing_counter[8]~48_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[8]~49\);

-- Location: FF_X47_Y37_N17
\movement_ctrl_inst|bouncing_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[8]~48_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(8));

-- Location: LCCOMB_X47_Y37_N18
\movement_ctrl_inst|bouncing_counter[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[9]~50_combout\ = (\movement_ctrl_inst|bouncing_counter\(9) & (!\movement_ctrl_inst|bouncing_counter[8]~49\)) # (!\movement_ctrl_inst|bouncing_counter\(9) & ((\movement_ctrl_inst|bouncing_counter[8]~49\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[9]~51\ = CARRY((!\movement_ctrl_inst|bouncing_counter[8]~49\) # (!\movement_ctrl_inst|bouncing_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(9),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[8]~49\,
	combout => \movement_ctrl_inst|bouncing_counter[9]~50_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[9]~51\);

-- Location: FF_X47_Y37_N19
\movement_ctrl_inst|bouncing_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[9]~50_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(9));

-- Location: LCCOMB_X47_Y37_N20
\movement_ctrl_inst|bouncing_counter[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[10]~52_combout\ = (\movement_ctrl_inst|bouncing_counter\(10) & (\movement_ctrl_inst|bouncing_counter[9]~51\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(10) & (!\movement_ctrl_inst|bouncing_counter[9]~51\ & 
-- VCC))
-- \movement_ctrl_inst|bouncing_counter[10]~53\ = CARRY((\movement_ctrl_inst|bouncing_counter\(10) & !\movement_ctrl_inst|bouncing_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(10),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[9]~51\,
	combout => \movement_ctrl_inst|bouncing_counter[10]~52_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[10]~53\);

-- Location: FF_X47_Y37_N21
\movement_ctrl_inst|bouncing_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[10]~52_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(10));

-- Location: LCCOMB_X47_Y37_N22
\movement_ctrl_inst|bouncing_counter[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[11]~54_combout\ = (\movement_ctrl_inst|bouncing_counter\(11) & (!\movement_ctrl_inst|bouncing_counter[10]~53\)) # (!\movement_ctrl_inst|bouncing_counter\(11) & ((\movement_ctrl_inst|bouncing_counter[10]~53\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[11]~55\ = CARRY((!\movement_ctrl_inst|bouncing_counter[10]~53\) # (!\movement_ctrl_inst|bouncing_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(11),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[10]~53\,
	combout => \movement_ctrl_inst|bouncing_counter[11]~54_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[11]~55\);

-- Location: FF_X47_Y37_N23
\movement_ctrl_inst|bouncing_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[11]~54_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(11));

-- Location: LCCOMB_X47_Y37_N24
\movement_ctrl_inst|bouncing_counter[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[12]~56_combout\ = (\movement_ctrl_inst|bouncing_counter\(12) & (\movement_ctrl_inst|bouncing_counter[11]~55\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(12) & (!\movement_ctrl_inst|bouncing_counter[11]~55\ & 
-- VCC))
-- \movement_ctrl_inst|bouncing_counter[12]~57\ = CARRY((\movement_ctrl_inst|bouncing_counter\(12) & !\movement_ctrl_inst|bouncing_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(12),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[11]~55\,
	combout => \movement_ctrl_inst|bouncing_counter[12]~56_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[12]~57\);

-- Location: FF_X47_Y37_N25
\movement_ctrl_inst|bouncing_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[12]~56_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(12));

-- Location: LCCOMB_X47_Y37_N26
\movement_ctrl_inst|bouncing_counter[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[13]~58_combout\ = (\movement_ctrl_inst|bouncing_counter\(13) & (!\movement_ctrl_inst|bouncing_counter[12]~57\)) # (!\movement_ctrl_inst|bouncing_counter\(13) & ((\movement_ctrl_inst|bouncing_counter[12]~57\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[13]~59\ = CARRY((!\movement_ctrl_inst|bouncing_counter[12]~57\) # (!\movement_ctrl_inst|bouncing_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(13),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[12]~57\,
	combout => \movement_ctrl_inst|bouncing_counter[13]~58_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[13]~59\);

-- Location: FF_X47_Y37_N27
\movement_ctrl_inst|bouncing_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[13]~58_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(13));

-- Location: LCCOMB_X47_Y37_N28
\movement_ctrl_inst|bouncing_counter[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[14]~60_combout\ = (\movement_ctrl_inst|bouncing_counter\(14) & (\movement_ctrl_inst|bouncing_counter[13]~59\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(14) & (!\movement_ctrl_inst|bouncing_counter[13]~59\ & 
-- VCC))
-- \movement_ctrl_inst|bouncing_counter[14]~61\ = CARRY((\movement_ctrl_inst|bouncing_counter\(14) & !\movement_ctrl_inst|bouncing_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(14),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[13]~59\,
	combout => \movement_ctrl_inst|bouncing_counter[14]~60_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[14]~61\);

-- Location: FF_X47_Y37_N29
\movement_ctrl_inst|bouncing_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[14]~60_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(14));

-- Location: LCCOMB_X47_Y37_N30
\movement_ctrl_inst|bouncing_counter[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[15]~62_combout\ = (\movement_ctrl_inst|bouncing_counter\(15) & (!\movement_ctrl_inst|bouncing_counter[14]~61\)) # (!\movement_ctrl_inst|bouncing_counter\(15) & ((\movement_ctrl_inst|bouncing_counter[14]~61\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[15]~63\ = CARRY((!\movement_ctrl_inst|bouncing_counter[14]~61\) # (!\movement_ctrl_inst|bouncing_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(15),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[14]~61\,
	combout => \movement_ctrl_inst|bouncing_counter[15]~62_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[15]~63\);

-- Location: FF_X47_Y37_N31
\movement_ctrl_inst|bouncing_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[15]~62_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(15));

-- Location: LCCOMB_X47_Y36_N0
\movement_ctrl_inst|bouncing_counter[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[16]~64_combout\ = (\movement_ctrl_inst|bouncing_counter\(16) & (\movement_ctrl_inst|bouncing_counter[15]~63\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(16) & (!\movement_ctrl_inst|bouncing_counter[15]~63\ & 
-- VCC))
-- \movement_ctrl_inst|bouncing_counter[16]~65\ = CARRY((\movement_ctrl_inst|bouncing_counter\(16) & !\movement_ctrl_inst|bouncing_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(16),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[15]~63\,
	combout => \movement_ctrl_inst|bouncing_counter[16]~64_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[16]~65\);

-- Location: FF_X47_Y36_N1
\movement_ctrl_inst|bouncing_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[16]~64_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(16));

-- Location: LCCOMB_X47_Y36_N2
\movement_ctrl_inst|bouncing_counter[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[17]~66_combout\ = (\movement_ctrl_inst|bouncing_counter\(17) & (!\movement_ctrl_inst|bouncing_counter[16]~65\)) # (!\movement_ctrl_inst|bouncing_counter\(17) & ((\movement_ctrl_inst|bouncing_counter[16]~65\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[17]~67\ = CARRY((!\movement_ctrl_inst|bouncing_counter[16]~65\) # (!\movement_ctrl_inst|bouncing_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(17),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[16]~65\,
	combout => \movement_ctrl_inst|bouncing_counter[17]~66_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[17]~67\);

-- Location: FF_X47_Y36_N3
\movement_ctrl_inst|bouncing_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[17]~66_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(17));

-- Location: LCCOMB_X47_Y36_N4
\movement_ctrl_inst|bouncing_counter[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[18]~68_combout\ = (\movement_ctrl_inst|bouncing_counter\(18) & (\movement_ctrl_inst|bouncing_counter[17]~67\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(18) & (!\movement_ctrl_inst|bouncing_counter[17]~67\ & 
-- VCC))
-- \movement_ctrl_inst|bouncing_counter[18]~69\ = CARRY((\movement_ctrl_inst|bouncing_counter\(18) & !\movement_ctrl_inst|bouncing_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(18),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[17]~67\,
	combout => \movement_ctrl_inst|bouncing_counter[18]~68_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[18]~69\);

-- Location: FF_X47_Y36_N5
\movement_ctrl_inst|bouncing_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[18]~68_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(18));

-- Location: LCCOMB_X47_Y36_N6
\movement_ctrl_inst|bouncing_counter[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[19]~70_combout\ = (\movement_ctrl_inst|bouncing_counter\(19) & (!\movement_ctrl_inst|bouncing_counter[18]~69\)) # (!\movement_ctrl_inst|bouncing_counter\(19) & ((\movement_ctrl_inst|bouncing_counter[18]~69\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[19]~71\ = CARRY((!\movement_ctrl_inst|bouncing_counter[18]~69\) # (!\movement_ctrl_inst|bouncing_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(19),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[18]~69\,
	combout => \movement_ctrl_inst|bouncing_counter[19]~70_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[19]~71\);

-- Location: FF_X47_Y36_N7
\movement_ctrl_inst|bouncing_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[19]~70_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(19));

-- Location: LCCOMB_X47_Y36_N8
\movement_ctrl_inst|bouncing_counter[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[20]~72_combout\ = (\movement_ctrl_inst|bouncing_counter\(20) & (\movement_ctrl_inst|bouncing_counter[19]~71\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(20) & (!\movement_ctrl_inst|bouncing_counter[19]~71\ & 
-- VCC))
-- \movement_ctrl_inst|bouncing_counter[20]~73\ = CARRY((\movement_ctrl_inst|bouncing_counter\(20) & !\movement_ctrl_inst|bouncing_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(20),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[19]~71\,
	combout => \movement_ctrl_inst|bouncing_counter[20]~72_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[20]~73\);

-- Location: FF_X47_Y36_N9
\movement_ctrl_inst|bouncing_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[20]~72_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(20));

-- Location: LCCOMB_X47_Y36_N10
\movement_ctrl_inst|bouncing_counter[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[21]~74_combout\ = (\movement_ctrl_inst|bouncing_counter\(21) & (!\movement_ctrl_inst|bouncing_counter[20]~73\)) # (!\movement_ctrl_inst|bouncing_counter\(21) & ((\movement_ctrl_inst|bouncing_counter[20]~73\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[21]~75\ = CARRY((!\movement_ctrl_inst|bouncing_counter[20]~73\) # (!\movement_ctrl_inst|bouncing_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(21),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[20]~73\,
	combout => \movement_ctrl_inst|bouncing_counter[21]~74_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[21]~75\);

-- Location: FF_X47_Y36_N11
\movement_ctrl_inst|bouncing_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[21]~74_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(21));

-- Location: LCCOMB_X47_Y36_N12
\movement_ctrl_inst|bouncing_counter[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[22]~76_combout\ = (\movement_ctrl_inst|bouncing_counter\(22) & (\movement_ctrl_inst|bouncing_counter[21]~75\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(22) & (!\movement_ctrl_inst|bouncing_counter[21]~75\ & 
-- VCC))
-- \movement_ctrl_inst|bouncing_counter[22]~77\ = CARRY((\movement_ctrl_inst|bouncing_counter\(22) & !\movement_ctrl_inst|bouncing_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(22),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[21]~75\,
	combout => \movement_ctrl_inst|bouncing_counter[22]~76_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[22]~77\);

-- Location: FF_X47_Y36_N13
\movement_ctrl_inst|bouncing_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[22]~76_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(22));

-- Location: LCCOMB_X47_Y36_N14
\movement_ctrl_inst|bouncing_counter[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[23]~78_combout\ = (\movement_ctrl_inst|bouncing_counter\(23) & (!\movement_ctrl_inst|bouncing_counter[22]~77\)) # (!\movement_ctrl_inst|bouncing_counter\(23) & ((\movement_ctrl_inst|bouncing_counter[22]~77\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[23]~79\ = CARRY((!\movement_ctrl_inst|bouncing_counter[22]~77\) # (!\movement_ctrl_inst|bouncing_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(23),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[22]~77\,
	combout => \movement_ctrl_inst|bouncing_counter[23]~78_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[23]~79\);

-- Location: FF_X47_Y36_N15
\movement_ctrl_inst|bouncing_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[23]~78_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(23));

-- Location: LCCOMB_X47_Y36_N16
\movement_ctrl_inst|bouncing_counter[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[24]~80_combout\ = (\movement_ctrl_inst|bouncing_counter\(24) & (\movement_ctrl_inst|bouncing_counter[23]~79\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(24) & (!\movement_ctrl_inst|bouncing_counter[23]~79\ & 
-- VCC))
-- \movement_ctrl_inst|bouncing_counter[24]~81\ = CARRY((\movement_ctrl_inst|bouncing_counter\(24) & !\movement_ctrl_inst|bouncing_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(24),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[23]~79\,
	combout => \movement_ctrl_inst|bouncing_counter[24]~80_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[24]~81\);

-- Location: FF_X47_Y36_N17
\movement_ctrl_inst|bouncing_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[24]~80_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(24));

-- Location: LCCOMB_X47_Y36_N18
\movement_ctrl_inst|bouncing_counter[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[25]~82_combout\ = (\movement_ctrl_inst|bouncing_counter\(25) & (!\movement_ctrl_inst|bouncing_counter[24]~81\)) # (!\movement_ctrl_inst|bouncing_counter\(25) & ((\movement_ctrl_inst|bouncing_counter[24]~81\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[25]~83\ = CARRY((!\movement_ctrl_inst|bouncing_counter[24]~81\) # (!\movement_ctrl_inst|bouncing_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(25),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[24]~81\,
	combout => \movement_ctrl_inst|bouncing_counter[25]~82_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[25]~83\);

-- Location: FF_X47_Y36_N19
\movement_ctrl_inst|bouncing_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[25]~82_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(25));

-- Location: LCCOMB_X47_Y36_N20
\movement_ctrl_inst|bouncing_counter[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[26]~84_combout\ = (\movement_ctrl_inst|bouncing_counter\(26) & (\movement_ctrl_inst|bouncing_counter[25]~83\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(26) & (!\movement_ctrl_inst|bouncing_counter[25]~83\ & 
-- VCC))
-- \movement_ctrl_inst|bouncing_counter[26]~85\ = CARRY((\movement_ctrl_inst|bouncing_counter\(26) & !\movement_ctrl_inst|bouncing_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(26),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[25]~83\,
	combout => \movement_ctrl_inst|bouncing_counter[26]~84_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[26]~85\);

-- Location: FF_X47_Y36_N21
\movement_ctrl_inst|bouncing_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[26]~84_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(26));

-- Location: LCCOMB_X47_Y36_N22
\movement_ctrl_inst|bouncing_counter[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[27]~86_combout\ = (\movement_ctrl_inst|bouncing_counter\(27) & (!\movement_ctrl_inst|bouncing_counter[26]~85\)) # (!\movement_ctrl_inst|bouncing_counter\(27) & ((\movement_ctrl_inst|bouncing_counter[26]~85\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[27]~87\ = CARRY((!\movement_ctrl_inst|bouncing_counter[26]~85\) # (!\movement_ctrl_inst|bouncing_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(27),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[26]~85\,
	combout => \movement_ctrl_inst|bouncing_counter[27]~86_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[27]~87\);

-- Location: FF_X47_Y36_N23
\movement_ctrl_inst|bouncing_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[27]~86_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(27));

-- Location: LCCOMB_X47_Y36_N24
\movement_ctrl_inst|bouncing_counter[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[28]~88_combout\ = (\movement_ctrl_inst|bouncing_counter\(28) & (\movement_ctrl_inst|bouncing_counter[27]~87\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(28) & (!\movement_ctrl_inst|bouncing_counter[27]~87\ & 
-- VCC))
-- \movement_ctrl_inst|bouncing_counter[28]~89\ = CARRY((\movement_ctrl_inst|bouncing_counter\(28) & !\movement_ctrl_inst|bouncing_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(28),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[27]~87\,
	combout => \movement_ctrl_inst|bouncing_counter[28]~88_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[28]~89\);

-- Location: FF_X47_Y36_N25
\movement_ctrl_inst|bouncing_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[28]~88_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(28));

-- Location: LCCOMB_X47_Y36_N26
\movement_ctrl_inst|bouncing_counter[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[29]~90_combout\ = (\movement_ctrl_inst|bouncing_counter\(29) & (!\movement_ctrl_inst|bouncing_counter[28]~89\)) # (!\movement_ctrl_inst|bouncing_counter\(29) & ((\movement_ctrl_inst|bouncing_counter[28]~89\) # (GND)))
-- \movement_ctrl_inst|bouncing_counter[29]~91\ = CARRY((!\movement_ctrl_inst|bouncing_counter[28]~89\) # (!\movement_ctrl_inst|bouncing_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(29),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[28]~89\,
	combout => \movement_ctrl_inst|bouncing_counter[29]~90_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[29]~91\);

-- Location: FF_X47_Y36_N27
\movement_ctrl_inst|bouncing_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[29]~90_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(29));

-- Location: LCCOMB_X47_Y36_N28
\movement_ctrl_inst|bouncing_counter[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[30]~92_combout\ = (\movement_ctrl_inst|bouncing_counter\(30) & (\movement_ctrl_inst|bouncing_counter[29]~91\ $ (GND))) # (!\movement_ctrl_inst|bouncing_counter\(30) & (!\movement_ctrl_inst|bouncing_counter[29]~91\ & 
-- VCC))
-- \movement_ctrl_inst|bouncing_counter[30]~93\ = CARRY((\movement_ctrl_inst|bouncing_counter\(30) & !\movement_ctrl_inst|bouncing_counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|bouncing_counter\(30),
	datad => VCC,
	cin => \movement_ctrl_inst|bouncing_counter[29]~91\,
	combout => \movement_ctrl_inst|bouncing_counter[30]~92_combout\,
	cout => \movement_ctrl_inst|bouncing_counter[30]~93\);

-- Location: FF_X47_Y36_N29
\movement_ctrl_inst|bouncing_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[30]~92_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(30));

-- Location: LCCOMB_X47_Y36_N30
\movement_ctrl_inst|bouncing_counter[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|bouncing_counter[31]~94_combout\ = \movement_ctrl_inst|bouncing_counter\(31) $ (\movement_ctrl_inst|bouncing_counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(31),
	cin => \movement_ctrl_inst|bouncing_counter[30]~93\,
	combout => \movement_ctrl_inst|bouncing_counter[31]~94_combout\);

-- Location: FF_X47_Y36_N31
\movement_ctrl_inst|bouncing_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|bouncing_counter[31]~94_combout\,
	asdata => \~GND~combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	sload => \movement_ctrl_inst|Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|bouncing_counter\(31));

-- Location: LCCOMB_X46_Y36_N10
\movement_ctrl_inst|Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal2~9_combout\ = (\movement_ctrl_inst|bouncing_counter\(29)) # ((\movement_ctrl_inst|bouncing_counter\(28)) # ((\movement_ctrl_inst|bouncing_counter\(31)) # (\movement_ctrl_inst|bouncing_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(29),
	datab => \movement_ctrl_inst|bouncing_counter\(28),
	datac => \movement_ctrl_inst|bouncing_counter\(31),
	datad => \movement_ctrl_inst|bouncing_counter\(30),
	combout => \movement_ctrl_inst|Equal2~9_combout\);

-- Location: LCCOMB_X46_Y36_N28
\movement_ctrl_inst|Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal2~8_combout\ = (\movement_ctrl_inst|bouncing_counter\(26)) # ((\movement_ctrl_inst|bouncing_counter\(25)) # ((\movement_ctrl_inst|bouncing_counter\(27)) # (\movement_ctrl_inst|bouncing_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(26),
	datab => \movement_ctrl_inst|bouncing_counter\(25),
	datac => \movement_ctrl_inst|bouncing_counter\(27),
	datad => \movement_ctrl_inst|bouncing_counter\(24),
	combout => \movement_ctrl_inst|Equal2~8_combout\);

-- Location: LCCOMB_X46_Y36_N22
\movement_ctrl_inst|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal2~1_combout\ = (\movement_ctrl_inst|bouncing_counter\(7)) # ((\movement_ctrl_inst|bouncing_counter\(5)) # ((\movement_ctrl_inst|bouncing_counter\(4)) # (\movement_ctrl_inst|bouncing_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(7),
	datab => \movement_ctrl_inst|bouncing_counter\(5),
	datac => \movement_ctrl_inst|bouncing_counter\(4),
	datad => \movement_ctrl_inst|bouncing_counter\(6),
	combout => \movement_ctrl_inst|Equal2~1_combout\);

-- Location: LCCOMB_X46_Y37_N22
\movement_ctrl_inst|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal2~2_combout\ = (\movement_ctrl_inst|bouncing_counter\(9)) # ((\movement_ctrl_inst|bouncing_counter\(8)) # ((\movement_ctrl_inst|bouncing_counter\(10)) # (\movement_ctrl_inst|bouncing_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(9),
	datab => \movement_ctrl_inst|bouncing_counter\(8),
	datac => \movement_ctrl_inst|bouncing_counter\(10),
	datad => \movement_ctrl_inst|bouncing_counter\(11),
	combout => \movement_ctrl_inst|Equal2~2_combout\);

-- Location: LCCOMB_X46_Y37_N20
\movement_ctrl_inst|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal2~3_combout\ = (\movement_ctrl_inst|bouncing_counter\(15)) # ((\movement_ctrl_inst|bouncing_counter\(14)) # ((\movement_ctrl_inst|bouncing_counter\(12)) # (\movement_ctrl_inst|bouncing_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(15),
	datab => \movement_ctrl_inst|bouncing_counter\(14),
	datac => \movement_ctrl_inst|bouncing_counter\(12),
	datad => \movement_ctrl_inst|bouncing_counter\(13),
	combout => \movement_ctrl_inst|Equal2~3_combout\);

-- Location: LCCOMB_X46_Y36_N16
\movement_ctrl_inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal2~0_combout\ = ((\movement_ctrl_inst|bouncing_counter\(3)) # ((\movement_ctrl_inst|bouncing_counter\(0)) # (\movement_ctrl_inst|bouncing_counter\(2)))) # (!\movement_ctrl_inst|bouncing_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(1),
	datab => \movement_ctrl_inst|bouncing_counter\(3),
	datac => \movement_ctrl_inst|bouncing_counter\(0),
	datad => \movement_ctrl_inst|bouncing_counter\(2),
	combout => \movement_ctrl_inst|Equal2~0_combout\);

-- Location: LCCOMB_X46_Y36_N4
\movement_ctrl_inst|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal2~4_combout\ = (\movement_ctrl_inst|Equal2~1_combout\) # ((\movement_ctrl_inst|Equal2~2_combout\) # ((\movement_ctrl_inst|Equal2~3_combout\) # (\movement_ctrl_inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Equal2~1_combout\,
	datab => \movement_ctrl_inst|Equal2~2_combout\,
	datac => \movement_ctrl_inst|Equal2~3_combout\,
	datad => \movement_ctrl_inst|Equal2~0_combout\,
	combout => \movement_ctrl_inst|Equal2~4_combout\);

-- Location: LCCOMB_X46_Y36_N12
\movement_ctrl_inst|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal2~6_combout\ = (\movement_ctrl_inst|bouncing_counter\(22)) # ((\movement_ctrl_inst|bouncing_counter\(20)) # ((\movement_ctrl_inst|bouncing_counter\(23)) # (\movement_ctrl_inst|bouncing_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(22),
	datab => \movement_ctrl_inst|bouncing_counter\(20),
	datac => \movement_ctrl_inst|bouncing_counter\(23),
	datad => \movement_ctrl_inst|bouncing_counter\(21),
	combout => \movement_ctrl_inst|Equal2~6_combout\);

-- Location: LCCOMB_X46_Y36_N18
\movement_ctrl_inst|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal2~5_combout\ = (\movement_ctrl_inst|bouncing_counter\(18)) # ((\movement_ctrl_inst|bouncing_counter\(19)) # ((\movement_ctrl_inst|bouncing_counter\(16)) # (\movement_ctrl_inst|bouncing_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|bouncing_counter\(18),
	datab => \movement_ctrl_inst|bouncing_counter\(19),
	datac => \movement_ctrl_inst|bouncing_counter\(16),
	datad => \movement_ctrl_inst|bouncing_counter\(17),
	combout => \movement_ctrl_inst|Equal2~5_combout\);

-- Location: LCCOMB_X46_Y36_N6
\movement_ctrl_inst|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal2~7_combout\ = (\movement_ctrl_inst|Equal2~6_combout\) # (\movement_ctrl_inst|Equal2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Equal2~6_combout\,
	datad => \movement_ctrl_inst|Equal2~5_combout\,
	combout => \movement_ctrl_inst|Equal2~7_combout\);

-- Location: LCCOMB_X46_Y36_N24
\movement_ctrl_inst|Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Equal2~10_combout\ = (!\movement_ctrl_inst|Equal2~9_combout\ & (!\movement_ctrl_inst|Equal2~8_combout\ & (!\movement_ctrl_inst|Equal2~4_combout\ & !\movement_ctrl_inst|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Equal2~9_combout\,
	datab => \movement_ctrl_inst|Equal2~8_combout\,
	datac => \movement_ctrl_inst|Equal2~4_combout\,
	datad => \movement_ctrl_inst|Equal2~7_combout\,
	combout => \movement_ctrl_inst|Equal2~10_combout\);

-- Location: LCCOMB_X45_Y36_N0
\movement_ctrl_inst|increment~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~12_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & ((\movement_ctrl_inst|Equal2~10_combout\ & (!\movement_ctrl_inst|Add11~0_combout\)) # (!\movement_ctrl_inst|Equal2~10_combout\ & 
-- ((\movement_ctrl_inst|increment\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add11~0_combout\,
	datab => \movement_ctrl_inst|LessThan9~2_combout\,
	datac => \movement_ctrl_inst|increment\(0),
	datad => \movement_ctrl_inst|Equal2~10_combout\,
	combout => \movement_ctrl_inst|increment~12_combout\);

-- Location: FF_X45_Y36_N1
\movement_ctrl_inst|increment[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~12_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(0));

-- Location: LCCOMB_X44_Y39_N2
\movement_ctrl_inst|Add11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~2_combout\ = (\movement_ctrl_inst|increment\(1) & (!\movement_ctrl_inst|Add11~1\)) # (!\movement_ctrl_inst|increment\(1) & ((\movement_ctrl_inst|Add11~1\) # (GND)))
-- \movement_ctrl_inst|Add11~3\ = CARRY((!\movement_ctrl_inst|Add11~1\) # (!\movement_ctrl_inst|increment\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(1),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~1\,
	combout => \movement_ctrl_inst|Add11~2_combout\,
	cout => \movement_ctrl_inst|Add11~3\);

-- Location: LCCOMB_X44_Y36_N0
\movement_ctrl_inst|increment~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~11_combout\ = (\movement_ctrl_inst|LessThan9~0_combout\ & (\movement_ctrl_inst|Add11~2_combout\ & ((\movement_ctrl_inst|LessThan9~1_combout\) # (!\movement_ctrl_inst|update_ball_position~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~0_combout\,
	datab => \movement_ctrl_inst|Add11~2_combout\,
	datac => \movement_ctrl_inst|LessThan9~1_combout\,
	datad => \movement_ctrl_inst|update_ball_position~2_combout\,
	combout => \movement_ctrl_inst|increment~11_combout\);

-- Location: FF_X44_Y36_N1
\movement_ctrl_inst|increment[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~11_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(1));

-- Location: LCCOMB_X44_Y39_N4
\movement_ctrl_inst|Add11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~4_combout\ = (\movement_ctrl_inst|increment\(2) & (\movement_ctrl_inst|Add11~3\ $ (GND))) # (!\movement_ctrl_inst|increment\(2) & (!\movement_ctrl_inst|Add11~3\ & VCC))
-- \movement_ctrl_inst|Add11~5\ = CARRY((\movement_ctrl_inst|increment\(2) & !\movement_ctrl_inst|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(2),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~3\,
	combout => \movement_ctrl_inst|Add11~4_combout\,
	cout => \movement_ctrl_inst|Add11~5\);

-- Location: LCCOMB_X44_Y36_N2
\movement_ctrl_inst|increment~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~10_combout\ = (\movement_ctrl_inst|LessThan9~0_combout\ & (\movement_ctrl_inst|Add11~4_combout\ & ((\movement_ctrl_inst|LessThan9~1_combout\) # (!\movement_ctrl_inst|update_ball_position~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~0_combout\,
	datab => \movement_ctrl_inst|LessThan9~1_combout\,
	datac => \movement_ctrl_inst|Add11~4_combout\,
	datad => \movement_ctrl_inst|update_ball_position~2_combout\,
	combout => \movement_ctrl_inst|increment~10_combout\);

-- Location: FF_X44_Y36_N3
\movement_ctrl_inst|increment[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~10_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(2));

-- Location: LCCOMB_X44_Y36_N8
\movement_ctrl_inst|increment~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~9_combout\ = (\movement_ctrl_inst|LessThan9~0_combout\ & (\movement_ctrl_inst|Add11~6_combout\ & ((\movement_ctrl_inst|LessThan9~1_combout\) # (!\movement_ctrl_inst|update_ball_position~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~0_combout\,
	datab => \movement_ctrl_inst|update_ball_position~2_combout\,
	datac => \movement_ctrl_inst|LessThan9~1_combout\,
	datad => \movement_ctrl_inst|Add11~6_combout\,
	combout => \movement_ctrl_inst|increment~9_combout\);

-- Location: FF_X44_Y36_N9
\movement_ctrl_inst|increment[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~9_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(3));

-- Location: LCCOMB_X43_Y37_N24
\movement_ctrl_inst|Add5|auto_generated|_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|_~8_combout\ = \movement_ctrl_inst|increment\(3) $ (!\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(3),
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|Add5|auto_generated|_~8_combout\);

-- Location: LCCOMB_X43_Y33_N2
\movement_ctrl_inst|y_ball~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball~8_combout\ = (\movement_ctrl_inst|Add5|auto_generated|result_int[4]~8_combout\ & !\movement_ctrl_inst|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|Add5|auto_generated|result_int[4]~8_combout\,
	datad => \movement_ctrl_inst|LessThan9~2_combout\,
	combout => \movement_ctrl_inst|y_ball~8_combout\);

-- Location: FF_X43_Y33_N3
\movement_ctrl_inst|y_ball[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|y_ball~8_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|y_ball[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball\(3));

-- Location: LCCOMB_X44_Y33_N2
\movement_ctrl_inst|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan9~1_combout\ = (!\movement_ctrl_inst|y_ball\(6) & (((!\movement_ctrl_inst|y_ball\(5)) # (!\movement_ctrl_inst|y_ball\(4))) # (!\movement_ctrl_inst|y_ball\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(3),
	datab => \movement_ctrl_inst|y_ball\(4),
	datac => \movement_ctrl_inst|y_ball\(5),
	datad => \movement_ctrl_inst|y_ball\(6),
	combout => \movement_ctrl_inst|LessThan9~1_combout\);

-- Location: LCCOMB_X44_Y39_N10
\movement_ctrl_inst|Add11~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~10_combout\ = (\movement_ctrl_inst|increment\(5) & (!\movement_ctrl_inst|Add11~9\)) # (!\movement_ctrl_inst|increment\(5) & ((\movement_ctrl_inst|Add11~9\) # (GND)))
-- \movement_ctrl_inst|Add11~11\ = CARRY((!\movement_ctrl_inst|Add11~9\) # (!\movement_ctrl_inst|increment\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(5),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~9\,
	combout => \movement_ctrl_inst|Add11~10_combout\,
	cout => \movement_ctrl_inst|Add11~11\);

-- Location: LCCOMB_X44_Y36_N24
\movement_ctrl_inst|increment~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~7_combout\ = (\movement_ctrl_inst|LessThan9~0_combout\ & (\movement_ctrl_inst|Add11~10_combout\ & ((\movement_ctrl_inst|LessThan9~1_combout\) # (!\movement_ctrl_inst|update_ball_position~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~0_combout\,
	datab => \movement_ctrl_inst|update_ball_position~2_combout\,
	datac => \movement_ctrl_inst|LessThan9~1_combout\,
	datad => \movement_ctrl_inst|Add11~10_combout\,
	combout => \movement_ctrl_inst|increment~7_combout\);

-- Location: FF_X44_Y36_N25
\movement_ctrl_inst|increment[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~7_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(5));

-- Location: LCCOMB_X44_Y39_N12
\movement_ctrl_inst|Add11~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~12_combout\ = (\movement_ctrl_inst|increment\(6) & (\movement_ctrl_inst|Add11~11\ $ (GND))) # (!\movement_ctrl_inst|increment\(6) & (!\movement_ctrl_inst|Add11~11\ & VCC))
-- \movement_ctrl_inst|Add11~13\ = CARRY((\movement_ctrl_inst|increment\(6) & !\movement_ctrl_inst|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(6),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~11\,
	combout => \movement_ctrl_inst|Add11~12_combout\,
	cout => \movement_ctrl_inst|Add11~13\);

-- Location: LCCOMB_X44_Y36_N22
\movement_ctrl_inst|increment~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~6_combout\ = (\movement_ctrl_inst|LessThan9~0_combout\ & (\movement_ctrl_inst|Add11~12_combout\ & ((\movement_ctrl_inst|LessThan9~1_combout\) # (!\movement_ctrl_inst|update_ball_position~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~0_combout\,
	datab => \movement_ctrl_inst|Add11~12_combout\,
	datac => \movement_ctrl_inst|LessThan9~1_combout\,
	datad => \movement_ctrl_inst|update_ball_position~2_combout\,
	combout => \movement_ctrl_inst|increment~6_combout\);

-- Location: FF_X44_Y36_N23
\movement_ctrl_inst|increment[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~6_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(6));

-- Location: LCCOMB_X43_Y38_N2
\movement_ctrl_inst|Add5|auto_generated|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|_~5_combout\ = \movement_ctrl_inst|increment\(6) $ (!\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(6),
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|Add5|auto_generated|_~5_combout\);

-- Location: LCCOMB_X43_Y34_N20
\movement_ctrl_inst|Add5|auto_generated|result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[7]~14_combout\ = (\movement_ctrl_inst|y_ball\(6) & ((\movement_ctrl_inst|Add5|auto_generated|_~5_combout\ & (!\movement_ctrl_inst|Add5|auto_generated|result_int[6]~13\)) # 
-- (!\movement_ctrl_inst|Add5|auto_generated|_~5_combout\ & (\movement_ctrl_inst|Add5|auto_generated|result_int[6]~13\ & VCC)))) # (!\movement_ctrl_inst|y_ball\(6) & ((\movement_ctrl_inst|Add5|auto_generated|_~5_combout\ & 
-- ((\movement_ctrl_inst|Add5|auto_generated|result_int[6]~13\) # (GND))) # (!\movement_ctrl_inst|Add5|auto_generated|_~5_combout\ & (!\movement_ctrl_inst|Add5|auto_generated|result_int[6]~13\))))
-- \movement_ctrl_inst|Add5|auto_generated|result_int[7]~15\ = CARRY((\movement_ctrl_inst|y_ball\(6) & (\movement_ctrl_inst|Add5|auto_generated|_~5_combout\ & !\movement_ctrl_inst|Add5|auto_generated|result_int[6]~13\)) # (!\movement_ctrl_inst|y_ball\(6) & 
-- ((\movement_ctrl_inst|Add5|auto_generated|_~5_combout\) # (!\movement_ctrl_inst|Add5|auto_generated|result_int[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(6),
	datab => \movement_ctrl_inst|Add5|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \movement_ctrl_inst|Add5|auto_generated|result_int[6]~13\,
	combout => \movement_ctrl_inst|Add5|auto_generated|result_int[7]~14_combout\,
	cout => \movement_ctrl_inst|Add5|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X42_Y34_N4
\movement_ctrl_inst|y_ball[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball[6]~6_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & (\movement_ctrl_inst|Add5|auto_generated|result_int[7]~14_combout\ & \movement_ctrl_inst|y_ball[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|LessThan9~2_combout\,
	datac => \movement_ctrl_inst|Add5|auto_generated|result_int[7]~14_combout\,
	datad => \movement_ctrl_inst|y_ball[0]~0_combout\,
	combout => \movement_ctrl_inst|y_ball[6]~6_combout\);

-- Location: FF_X43_Y33_N11
\movement_ctrl_inst|y_ball[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	asdata => \movement_ctrl_inst|y_ball[6]~6_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball\(6));

-- Location: LCCOMB_X43_Y38_N8
\movement_ctrl_inst|Add5|auto_generated|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|_~2_combout\ = \movement_ctrl_inst|increment\(9) $ (!\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|increment\(9),
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|Add5|auto_generated|_~2_combout\);

-- Location: LCCOMB_X43_Y34_N22
\movement_ctrl_inst|Add5|auto_generated|result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[8]~16_combout\ = ((\movement_ctrl_inst|Add5|auto_generated|_~4_combout\ $ (\movement_ctrl_inst|y_ball\(7) $ (\movement_ctrl_inst|Add5|auto_generated|result_int[7]~15\)))) # (GND)
-- \movement_ctrl_inst|Add5|auto_generated|result_int[8]~17\ = CARRY((\movement_ctrl_inst|Add5|auto_generated|_~4_combout\ & (\movement_ctrl_inst|y_ball\(7) & !\movement_ctrl_inst|Add5|auto_generated|result_int[7]~15\)) # 
-- (!\movement_ctrl_inst|Add5|auto_generated|_~4_combout\ & ((\movement_ctrl_inst|y_ball\(7)) # (!\movement_ctrl_inst|Add5|auto_generated|result_int[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add5|auto_generated|_~4_combout\,
	datab => \movement_ctrl_inst|y_ball\(7),
	datad => VCC,
	cin => \movement_ctrl_inst|Add5|auto_generated|result_int[7]~15\,
	combout => \movement_ctrl_inst|Add5|auto_generated|result_int[8]~16_combout\,
	cout => \movement_ctrl_inst|Add5|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X43_Y34_N24
\movement_ctrl_inst|Add5|auto_generated|result_int[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[9]~18_combout\ = (\movement_ctrl_inst|Add5|auto_generated|_~3_combout\ & ((\movement_ctrl_inst|y_ball\(8) & (!\movement_ctrl_inst|Add5|auto_generated|result_int[8]~17\)) # (!\movement_ctrl_inst|y_ball\(8) 
-- & ((\movement_ctrl_inst|Add5|auto_generated|result_int[8]~17\) # (GND))))) # (!\movement_ctrl_inst|Add5|auto_generated|_~3_combout\ & ((\movement_ctrl_inst|y_ball\(8) & (\movement_ctrl_inst|Add5|auto_generated|result_int[8]~17\ & VCC)) # 
-- (!\movement_ctrl_inst|y_ball\(8) & (!\movement_ctrl_inst|Add5|auto_generated|result_int[8]~17\))))
-- \movement_ctrl_inst|Add5|auto_generated|result_int[9]~19\ = CARRY((\movement_ctrl_inst|Add5|auto_generated|_~3_combout\ & ((!\movement_ctrl_inst|Add5|auto_generated|result_int[8]~17\) # (!\movement_ctrl_inst|y_ball\(8)))) # 
-- (!\movement_ctrl_inst|Add5|auto_generated|_~3_combout\ & (!\movement_ctrl_inst|y_ball\(8) & !\movement_ctrl_inst|Add5|auto_generated|result_int[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add5|auto_generated|_~3_combout\,
	datab => \movement_ctrl_inst|y_ball\(8),
	datad => VCC,
	cin => \movement_ctrl_inst|Add5|auto_generated|result_int[8]~17\,
	combout => \movement_ctrl_inst|Add5|auto_generated|result_int[9]~18_combout\,
	cout => \movement_ctrl_inst|Add5|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X43_Y34_N26
\movement_ctrl_inst|Add5|auto_generated|result_int[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[10]~20_combout\ = ((\movement_ctrl_inst|Add5|auto_generated|_~2_combout\ $ (\movement_ctrl_inst|y_ball\(9) $ (\movement_ctrl_inst|Add5|auto_generated|result_int[9]~19\)))) # (GND)
-- \movement_ctrl_inst|Add5|auto_generated|result_int[10]~21\ = CARRY((\movement_ctrl_inst|Add5|auto_generated|_~2_combout\ & (\movement_ctrl_inst|y_ball\(9) & !\movement_ctrl_inst|Add5|auto_generated|result_int[9]~19\)) # 
-- (!\movement_ctrl_inst|Add5|auto_generated|_~2_combout\ & ((\movement_ctrl_inst|y_ball\(9)) # (!\movement_ctrl_inst|Add5|auto_generated|result_int[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add5|auto_generated|_~2_combout\,
	datab => \movement_ctrl_inst|y_ball\(9),
	datad => VCC,
	cin => \movement_ctrl_inst|Add5|auto_generated|result_int[9]~19\,
	combout => \movement_ctrl_inst|Add5|auto_generated|result_int[10]~20_combout\,
	cout => \movement_ctrl_inst|Add5|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X43_Y33_N0
\movement_ctrl_inst|y_ball[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball[9]~3_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & (\movement_ctrl_inst|Add5|auto_generated|result_int[10]~20_combout\ & \movement_ctrl_inst|y_ball[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datab => \movement_ctrl_inst|Add5|auto_generated|result_int[10]~20_combout\,
	datad => \movement_ctrl_inst|y_ball[0]~0_combout\,
	combout => \movement_ctrl_inst|y_ball[9]~3_combout\);

-- Location: FF_X43_Y33_N1
\movement_ctrl_inst|y_ball[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|y_ball[9]~3_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball\(9));

-- Location: LCCOMB_X44_Y33_N30
\movement_ctrl_inst|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan5~1_combout\ = (\movement_ctrl_inst|y_ball\(6)) # ((\movement_ctrl_inst|y_ball\(7)) # ((\movement_ctrl_inst|y_ball\(9)) # (\movement_ctrl_inst|y_ball\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(6),
	datab => \movement_ctrl_inst|y_ball\(7),
	datac => \movement_ctrl_inst|y_ball\(9),
	datad => \movement_ctrl_inst|y_ball\(8),
	combout => \movement_ctrl_inst|LessThan5~1_combout\);

-- Location: LCCOMB_X44_Y33_N28
\movement_ctrl_inst|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan5~0_combout\ = (\movement_ctrl_inst|y_ball\(0)) # ((\movement_ctrl_inst|y_ball\(1)) # ((\movement_ctrl_inst|y_ball\(4)) # (\movement_ctrl_inst|y_ball\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(0),
	datab => \movement_ctrl_inst|y_ball\(1),
	datac => \movement_ctrl_inst|y_ball\(4),
	datad => \movement_ctrl_inst|y_ball\(3),
	combout => \movement_ctrl_inst|LessThan5~0_combout\);

-- Location: LCCOMB_X44_Y33_N0
\movement_ctrl_inst|LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan5~2_combout\ = (\movement_ctrl_inst|LessThan5~1_combout\) # ((\movement_ctrl_inst|y_ball\(2)) # ((\movement_ctrl_inst|y_ball\(5)) # (\movement_ctrl_inst|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan5~1_combout\,
	datab => \movement_ctrl_inst|y_ball\(2),
	datac => \movement_ctrl_inst|y_ball\(5),
	datad => \movement_ctrl_inst|LessThan5~0_combout\,
	combout => \movement_ctrl_inst|LessThan5~2_combout\);

-- Location: LCCOMB_X44_Y37_N16
\movement_ctrl_inst|y_ball_dir~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball_dir~0_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & ((\movement_ctrl_inst|update_ball_position~6_combout\) # ((\movement_ctrl_inst|LessThan5~2_combout\ & \movement_ctrl_inst|y_ball_dir~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan5~2_combout\,
	datab => \movement_ctrl_inst|update_ball_position~6_combout\,
	datac => \movement_ctrl_inst|y_ball_dir~q\,
	datad => \movement_ctrl_inst|LessThan9~2_combout\,
	combout => \movement_ctrl_inst|y_ball_dir~0_combout\);

-- Location: FF_X44_Y37_N17
\movement_ctrl_inst|y_ball_dir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|y_ball_dir~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball_dir~q\);

-- Location: LCCOMB_X43_Y38_N4
\movement_ctrl_inst|Add5|auto_generated|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|_~4_combout\ = \movement_ctrl_inst|increment\(7) $ (!\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(7),
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|Add5|auto_generated|_~4_combout\);

-- Location: LCCOMB_X43_Y33_N8
\movement_ctrl_inst|y_ball[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball[7]~5_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & (\movement_ctrl_inst|Add5|auto_generated|result_int[8]~16_combout\ & \movement_ctrl_inst|y_ball[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datac => \movement_ctrl_inst|Add5|auto_generated|result_int[8]~16_combout\,
	datad => \movement_ctrl_inst|y_ball[0]~0_combout\,
	combout => \movement_ctrl_inst|y_ball[7]~5_combout\);

-- Location: FF_X43_Y33_N9
\movement_ctrl_inst|y_ball[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|y_ball[7]~5_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball\(7));

-- Location: LCCOMB_X43_Y37_N10
\movement_ctrl_inst|update_ball_position~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|update_ball_position~2_combout\ = (\movement_ctrl_inst|y_ball\(7) & \movement_ctrl_inst|y_ball\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|y_ball\(7),
	datac => \movement_ctrl_inst|y_ball\(8),
	combout => \movement_ctrl_inst|update_ball_position~2_combout\);

-- Location: LCCOMB_X44_Y39_N14
\movement_ctrl_inst|Add11~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~14_combout\ = (\movement_ctrl_inst|increment\(7) & (!\movement_ctrl_inst|Add11~13\)) # (!\movement_ctrl_inst|increment\(7) & ((\movement_ctrl_inst|Add11~13\) # (GND)))
-- \movement_ctrl_inst|Add11~15\ = CARRY((!\movement_ctrl_inst|Add11~13\) # (!\movement_ctrl_inst|increment\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(7),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~13\,
	combout => \movement_ctrl_inst|Add11~14_combout\,
	cout => \movement_ctrl_inst|Add11~15\);

-- Location: LCCOMB_X44_Y36_N12
\movement_ctrl_inst|increment~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~5_combout\ = (\movement_ctrl_inst|LessThan9~0_combout\ & (\movement_ctrl_inst|Add11~14_combout\ & ((\movement_ctrl_inst|LessThan9~1_combout\) # (!\movement_ctrl_inst|update_ball_position~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~0_combout\,
	datab => \movement_ctrl_inst|update_ball_position~2_combout\,
	datac => \movement_ctrl_inst|LessThan9~1_combout\,
	datad => \movement_ctrl_inst|Add11~14_combout\,
	combout => \movement_ctrl_inst|increment~5_combout\);

-- Location: FF_X44_Y36_N13
\movement_ctrl_inst|increment[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~5_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(7));

-- Location: LCCOMB_X44_Y39_N16
\movement_ctrl_inst|Add11~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~16_combout\ = (\movement_ctrl_inst|increment\(8) & (\movement_ctrl_inst|Add11~15\ $ (GND))) # (!\movement_ctrl_inst|increment\(8) & (!\movement_ctrl_inst|Add11~15\ & VCC))
-- \movement_ctrl_inst|Add11~17\ = CARRY((\movement_ctrl_inst|increment\(8) & !\movement_ctrl_inst|Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(8),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~15\,
	combout => \movement_ctrl_inst|Add11~16_combout\,
	cout => \movement_ctrl_inst|Add11~17\);

-- Location: LCCOMB_X44_Y39_N18
\movement_ctrl_inst|Add11~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add11~18_combout\ = (\movement_ctrl_inst|increment\(9) & (!\movement_ctrl_inst|Add11~17\)) # (!\movement_ctrl_inst|increment\(9) & ((\movement_ctrl_inst|Add11~17\) # (GND)))
-- \movement_ctrl_inst|Add11~19\ = CARRY((!\movement_ctrl_inst|Add11~17\) # (!\movement_ctrl_inst|increment\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|increment\(9),
	datad => VCC,
	cin => \movement_ctrl_inst|Add11~17\,
	combout => \movement_ctrl_inst|Add11~18_combout\,
	cout => \movement_ctrl_inst|Add11~19\);

-- Location: LCCOMB_X44_Y36_N20
\movement_ctrl_inst|increment~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~3_combout\ = (\movement_ctrl_inst|Add11~18_combout\ & (\movement_ctrl_inst|LessThan9~0_combout\ & ((\movement_ctrl_inst|LessThan9~1_combout\) # (!\movement_ctrl_inst|update_ball_position~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|Add11~18_combout\,
	datab => \movement_ctrl_inst|update_ball_position~2_combout\,
	datac => \movement_ctrl_inst|LessThan9~1_combout\,
	datad => \movement_ctrl_inst|LessThan9~0_combout\,
	combout => \movement_ctrl_inst|increment~3_combout\);

-- Location: FF_X44_Y36_N21
\movement_ctrl_inst|increment[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~3_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(9));

-- Location: LCCOMB_X44_Y36_N26
\movement_ctrl_inst|increment~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~2_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add11~20_combout\,
	combout => \movement_ctrl_inst|increment~2_combout\);

-- Location: FF_X44_Y36_N27
\movement_ctrl_inst|increment[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~2_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(10));

-- Location: LCCOMB_X43_Y38_N30
\movement_ctrl_inst|Add5|auto_generated|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|_~1_combout\ = \movement_ctrl_inst|increment\(10) $ (!\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(10),
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|Add5|auto_generated|_~1_combout\);

-- Location: LCCOMB_X43_Y34_N28
\movement_ctrl_inst|Add5|auto_generated|result_int[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[11]~22_combout\ = (\movement_ctrl_inst|y_ball\(10) & ((\movement_ctrl_inst|Add5|auto_generated|_~1_combout\ & (!\movement_ctrl_inst|Add5|auto_generated|result_int[10]~21\)) # 
-- (!\movement_ctrl_inst|Add5|auto_generated|_~1_combout\ & (\movement_ctrl_inst|Add5|auto_generated|result_int[10]~21\ & VCC)))) # (!\movement_ctrl_inst|y_ball\(10) & ((\movement_ctrl_inst|Add5|auto_generated|_~1_combout\ & 
-- ((\movement_ctrl_inst|Add5|auto_generated|result_int[10]~21\) # (GND))) # (!\movement_ctrl_inst|Add5|auto_generated|_~1_combout\ & (!\movement_ctrl_inst|Add5|auto_generated|result_int[10]~21\))))
-- \movement_ctrl_inst|Add5|auto_generated|result_int[11]~23\ = CARRY((\movement_ctrl_inst|y_ball\(10) & (\movement_ctrl_inst|Add5|auto_generated|_~1_combout\ & !\movement_ctrl_inst|Add5|auto_generated|result_int[10]~21\)) # (!\movement_ctrl_inst|y_ball\(10) 
-- & ((\movement_ctrl_inst|Add5|auto_generated|_~1_combout\) # (!\movement_ctrl_inst|Add5|auto_generated|result_int[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(10),
	datab => \movement_ctrl_inst|Add5|auto_generated|_~1_combout\,
	datad => VCC,
	cin => \movement_ctrl_inst|Add5|auto_generated|result_int[10]~21\,
	combout => \movement_ctrl_inst|Add5|auto_generated|result_int[11]~22_combout\,
	cout => \movement_ctrl_inst|Add5|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X44_Y34_N30
\movement_ctrl_inst|y_ball[10]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball[10]~2_combout\ = (\movement_ctrl_inst|y_ball[0]~0_combout\ & (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add5|auto_generated|result_int[11]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|y_ball[0]~0_combout\,
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add5|auto_generated|result_int[11]~22_combout\,
	combout => \movement_ctrl_inst|y_ball[10]~2_combout\);

-- Location: FF_X44_Y34_N31
\movement_ctrl_inst|y_ball[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|y_ball[10]~2_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball\(10));

-- Location: LCCOMB_X44_Y34_N24
\movement_ctrl_inst|y_ball[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball[0]~0_combout\ = (\movement_ctrl_inst|y_ball\(10)) # ((\movement_ctrl_inst|y_ball\(11)) # ((\movement_ctrl_inst|LessThan5~2_combout\) # (!\movement_ctrl_inst|y_ball_dir~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(10),
	datab => \movement_ctrl_inst|y_ball\(11),
	datac => \movement_ctrl_inst|LessThan5~2_combout\,
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|y_ball[0]~0_combout\);

-- Location: LCCOMB_X43_Y38_N0
\movement_ctrl_inst|Add5|auto_generated|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|_~0_combout\ = \movement_ctrl_inst|increment\(11) $ (!\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|increment\(11),
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|Add5|auto_generated|_~0_combout\);

-- Location: LCCOMB_X43_Y34_N30
\movement_ctrl_inst|Add5|auto_generated|result_int[12]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|result_int[12]~24_combout\ = \movement_ctrl_inst|y_ball\(11) $ (\movement_ctrl_inst|Add5|auto_generated|result_int[11]~23\ $ (\movement_ctrl_inst|Add5|auto_generated|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(11),
	datad => \movement_ctrl_inst|Add5|auto_generated|_~0_combout\,
	cin => \movement_ctrl_inst|Add5|auto_generated|result_int[11]~23\,
	combout => \movement_ctrl_inst|Add5|auto_generated|result_int[12]~24_combout\);

-- Location: LCCOMB_X44_Y34_N20
\movement_ctrl_inst|y_ball[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball[11]~1_combout\ = (\movement_ctrl_inst|y_ball[0]~0_combout\ & (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add5|auto_generated|result_int[12]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|y_ball[0]~0_combout\,
	datac => \movement_ctrl_inst|LessThan9~2_combout\,
	datad => \movement_ctrl_inst|Add5|auto_generated|result_int[12]~24_combout\,
	combout => \movement_ctrl_inst|y_ball[11]~1_combout\);

-- Location: FF_X44_Y34_N21
\movement_ctrl_inst|y_ball[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|y_ball[11]~1_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball\(11));

-- Location: LCCOMB_X44_Y34_N22
\movement_ctrl_inst|LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan9~0_combout\ = (!\movement_ctrl_inst|y_ball\(11) & (!\movement_ctrl_inst|y_ball\(10) & !\movement_ctrl_inst|y_ball\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|y_ball\(11),
	datac => \movement_ctrl_inst|y_ball\(10),
	datad => \movement_ctrl_inst|y_ball\(9),
	combout => \movement_ctrl_inst|LessThan9~0_combout\);

-- Location: LCCOMB_X44_Y36_N18
\movement_ctrl_inst|increment~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~4_combout\ = (\movement_ctrl_inst|LessThan9~0_combout\ & (\movement_ctrl_inst|Add11~16_combout\ & ((\movement_ctrl_inst|LessThan9~1_combout\) # (!\movement_ctrl_inst|update_ball_position~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~0_combout\,
	datab => \movement_ctrl_inst|Add11~16_combout\,
	datac => \movement_ctrl_inst|LessThan9~1_combout\,
	datad => \movement_ctrl_inst|update_ball_position~2_combout\,
	combout => \movement_ctrl_inst|increment~4_combout\);

-- Location: FF_X44_Y36_N19
\movement_ctrl_inst|increment[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~4_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(8));

-- Location: LCCOMB_X43_Y38_N6
\movement_ctrl_inst|Add5|auto_generated|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add5|auto_generated|_~3_combout\ = \movement_ctrl_inst|increment\(8) $ (!\movement_ctrl_inst|y_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movement_ctrl_inst|increment\(8),
	datad => \movement_ctrl_inst|y_ball_dir~q\,
	combout => \movement_ctrl_inst|Add5|auto_generated|_~3_combout\);

-- Location: LCCOMB_X43_Y33_N30
\movement_ctrl_inst|y_ball[8]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|y_ball[8]~4_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & (\movement_ctrl_inst|Add5|auto_generated|result_int[9]~18_combout\ & \movement_ctrl_inst|y_ball[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datab => \movement_ctrl_inst|Add5|auto_generated|result_int[9]~18_combout\,
	datad => \movement_ctrl_inst|y_ball[0]~0_combout\,
	combout => \movement_ctrl_inst|y_ball[8]~4_combout\);

-- Location: FF_X43_Y33_N31
\movement_ctrl_inst|y_ball[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|y_ball[8]~4_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|y_ball\(8));

-- Location: LCCOMB_X44_Y36_N6
\movement_ctrl_inst|LessThan9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|LessThan9~2_combout\ = ((\movement_ctrl_inst|y_ball\(8) & (\movement_ctrl_inst|y_ball\(7) & !\movement_ctrl_inst|LessThan9~1_combout\))) # (!\movement_ctrl_inst|LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(8),
	datab => \movement_ctrl_inst|y_ball\(7),
	datac => \movement_ctrl_inst|LessThan9~1_combout\,
	datad => \movement_ctrl_inst|LessThan9~0_combout\,
	combout => \movement_ctrl_inst|LessThan9~2_combout\);

-- Location: LCCOMB_X44_Y36_N4
\movement_ctrl_inst|increment~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|increment~0_combout\ = (!\movement_ctrl_inst|LessThan9~2_combout\ & \movement_ctrl_inst|Add11~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|LessThan9~2_combout\,
	datac => \movement_ctrl_inst|Add11~22_combout\,
	combout => \movement_ctrl_inst|increment~0_combout\);

-- Location: FF_X44_Y36_N5
\movement_ctrl_inst|increment[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|increment~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	ena => \movement_ctrl_inst|increment[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|increment\(11));

-- Location: LCCOMB_X43_Y38_N12
\movement_ctrl_inst|Add3|auto_generated|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|Add3|auto_generated|_~0_combout\ = \movement_ctrl_inst|increment\(11) $ (!\movement_ctrl_inst|x_ball_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|increment\(11),
	datac => \movement_ctrl_inst|x_ball_dir~q\,
	combout => \movement_ctrl_inst|Add3|auto_generated|_~0_combout\);

-- Location: LCCOMB_X46_Y38_N26
\movement_ctrl_inst|x_ball[11]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \movement_ctrl_inst|x_ball[11]~36_combout\ = \movement_ctrl_inst|x_ball\(11) $ (\movement_ctrl_inst|Add3|auto_generated|_~0_combout\ $ (\movement_ctrl_inst|x_ball[10]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(11),
	datab => \movement_ctrl_inst|Add3|auto_generated|_~0_combout\,
	cin => \movement_ctrl_inst|x_ball[10]~35\,
	combout => \movement_ctrl_inst|x_ball[11]~36_combout\);

-- Location: FF_X46_Y38_N27
\movement_ctrl_inst|x_ball[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \movement_ctrl_inst|slow_clk~clkctrl_outclk\,
	d => \movement_ctrl_inst|x_ball[11]~36_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	sclr => \movement_ctrl_inst|LessThan9~2_combout\,
	ena => \movement_ctrl_inst|x_ball[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movement_ctrl_inst|x_ball\(11));

-- Location: LCCOMB_X45_Y35_N10
\affiche_obj_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add0~0_combout\ = (\movement_ctrl_inst|x_ball\(4) & (\movement_ctrl_inst|x_ball\(3) $ (VCC))) # (!\movement_ctrl_inst|x_ball\(4) & (\movement_ctrl_inst|x_ball\(3) & VCC))
-- \affiche_obj_inst|Add0~1\ = CARRY((\movement_ctrl_inst|x_ball\(4) & \movement_ctrl_inst|x_ball\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(4),
	datab => \movement_ctrl_inst|x_ball\(3),
	datad => VCC,
	combout => \affiche_obj_inst|Add0~0_combout\,
	cout => \affiche_obj_inst|Add0~1\);

-- Location: LCCOMB_X45_Y35_N12
\affiche_obj_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add0~2_combout\ = (\movement_ctrl_inst|x_ball\(5) & (\affiche_obj_inst|Add0~1\ & VCC)) # (!\movement_ctrl_inst|x_ball\(5) & (!\affiche_obj_inst|Add0~1\))
-- \affiche_obj_inst|Add0~3\ = CARRY((!\movement_ctrl_inst|x_ball\(5) & !\affiche_obj_inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball\(5),
	datad => VCC,
	cin => \affiche_obj_inst|Add0~1\,
	combout => \affiche_obj_inst|Add0~2_combout\,
	cout => \affiche_obj_inst|Add0~3\);

-- Location: LCCOMB_X45_Y35_N14
\affiche_obj_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add0~4_combout\ = (\movement_ctrl_inst|x_ball\(6) & (\affiche_obj_inst|Add0~3\ $ (GND))) # (!\movement_ctrl_inst|x_ball\(6) & (!\affiche_obj_inst|Add0~3\ & VCC))
-- \affiche_obj_inst|Add0~5\ = CARRY((\movement_ctrl_inst|x_ball\(6) & !\affiche_obj_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball\(6),
	datad => VCC,
	cin => \affiche_obj_inst|Add0~3\,
	combout => \affiche_obj_inst|Add0~4_combout\,
	cout => \affiche_obj_inst|Add0~5\);

-- Location: LCCOMB_X45_Y35_N16
\affiche_obj_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add0~6_combout\ = (\movement_ctrl_inst|x_ball\(7) & (!\affiche_obj_inst|Add0~5\)) # (!\movement_ctrl_inst|x_ball\(7) & ((\affiche_obj_inst|Add0~5\) # (GND)))
-- \affiche_obj_inst|Add0~7\ = CARRY((!\affiche_obj_inst|Add0~5\) # (!\movement_ctrl_inst|x_ball\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(7),
	datad => VCC,
	cin => \affiche_obj_inst|Add0~5\,
	combout => \affiche_obj_inst|Add0~6_combout\,
	cout => \affiche_obj_inst|Add0~7\);

-- Location: LCCOMB_X45_Y35_N18
\affiche_obj_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add0~8_combout\ = (\movement_ctrl_inst|x_ball\(8) & (\affiche_obj_inst|Add0~7\ $ (GND))) # (!\movement_ctrl_inst|x_ball\(8) & (!\affiche_obj_inst|Add0~7\ & VCC))
-- \affiche_obj_inst|Add0~9\ = CARRY((\movement_ctrl_inst|x_ball\(8) & !\affiche_obj_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball\(8),
	datad => VCC,
	cin => \affiche_obj_inst|Add0~7\,
	combout => \affiche_obj_inst|Add0~8_combout\,
	cout => \affiche_obj_inst|Add0~9\);

-- Location: LCCOMB_X45_Y35_N20
\affiche_obj_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add0~10_combout\ = (\movement_ctrl_inst|x_ball\(9) & (!\affiche_obj_inst|Add0~9\)) # (!\movement_ctrl_inst|x_ball\(9) & ((\affiche_obj_inst|Add0~9\) # (GND)))
-- \affiche_obj_inst|Add0~11\ = CARRY((!\affiche_obj_inst|Add0~9\) # (!\movement_ctrl_inst|x_ball\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball\(9),
	datad => VCC,
	cin => \affiche_obj_inst|Add0~9\,
	combout => \affiche_obj_inst|Add0~10_combout\,
	cout => \affiche_obj_inst|Add0~11\);

-- Location: LCCOMB_X45_Y35_N22
\affiche_obj_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add0~12_combout\ = (\movement_ctrl_inst|x_ball\(10) & (\affiche_obj_inst|Add0~11\ $ (GND))) # (!\movement_ctrl_inst|x_ball\(10) & (!\affiche_obj_inst|Add0~11\ & VCC))
-- \affiche_obj_inst|Add0~13\ = CARRY((\movement_ctrl_inst|x_ball\(10) & !\affiche_obj_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball\(10),
	datad => VCC,
	cin => \affiche_obj_inst|Add0~11\,
	combout => \affiche_obj_inst|Add0~12_combout\,
	cout => \affiche_obj_inst|Add0~13\);

-- Location: LCCOMB_X45_Y35_N24
\affiche_obj_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add0~14_combout\ = (\movement_ctrl_inst|x_ball\(11) & (!\affiche_obj_inst|Add0~13\)) # (!\movement_ctrl_inst|x_ball\(11) & ((\affiche_obj_inst|Add0~13\) # (GND)))
-- \affiche_obj_inst|Add0~15\ = CARRY((!\affiche_obj_inst|Add0~13\) # (!\movement_ctrl_inst|x_ball\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(11),
	datad => VCC,
	cin => \affiche_obj_inst|Add0~13\,
	combout => \affiche_obj_inst|Add0~14_combout\,
	cout => \affiche_obj_inst|Add0~15\);

-- Location: LCCOMB_X45_Y35_N26
\affiche_obj_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add0~16_combout\ = !\affiche_obj_inst|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \affiche_obj_inst|Add0~15\,
	combout => \affiche_obj_inst|Add0~16_combout\);

-- Location: LCCOMB_X43_Y33_N12
\affiche_obj_inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add1~0_combout\ = (\movement_ctrl_inst|y_ball\(4) & (\movement_ctrl_inst|y_ball\(3) $ (VCC))) # (!\movement_ctrl_inst|y_ball\(4) & (\movement_ctrl_inst|y_ball\(3) & VCC))
-- \affiche_obj_inst|Add1~1\ = CARRY((\movement_ctrl_inst|y_ball\(4) & \movement_ctrl_inst|y_ball\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(4),
	datab => \movement_ctrl_inst|y_ball\(3),
	datad => VCC,
	combout => \affiche_obj_inst|Add1~0_combout\,
	cout => \affiche_obj_inst|Add1~1\);

-- Location: LCCOMB_X43_Y33_N14
\affiche_obj_inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add1~2_combout\ = (\movement_ctrl_inst|y_ball\(5) & (\affiche_obj_inst|Add1~1\ & VCC)) # (!\movement_ctrl_inst|y_ball\(5) & (!\affiche_obj_inst|Add1~1\))
-- \affiche_obj_inst|Add1~3\ = CARRY((!\movement_ctrl_inst|y_ball\(5) & !\affiche_obj_inst|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|y_ball\(5),
	datad => VCC,
	cin => \affiche_obj_inst|Add1~1\,
	combout => \affiche_obj_inst|Add1~2_combout\,
	cout => \affiche_obj_inst|Add1~3\);

-- Location: LCCOMB_X43_Y33_N16
\affiche_obj_inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add1~4_combout\ = (\movement_ctrl_inst|y_ball\(6) & (\affiche_obj_inst|Add1~3\ $ (GND))) # (!\movement_ctrl_inst|y_ball\(6) & (!\affiche_obj_inst|Add1~3\ & VCC))
-- \affiche_obj_inst|Add1~5\ = CARRY((\movement_ctrl_inst|y_ball\(6) & !\affiche_obj_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(6),
	datad => VCC,
	cin => \affiche_obj_inst|Add1~3\,
	combout => \affiche_obj_inst|Add1~4_combout\,
	cout => \affiche_obj_inst|Add1~5\);

-- Location: LCCOMB_X43_Y33_N18
\affiche_obj_inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add1~6_combout\ = (\movement_ctrl_inst|y_ball\(7) & (!\affiche_obj_inst|Add1~5\)) # (!\movement_ctrl_inst|y_ball\(7) & ((\affiche_obj_inst|Add1~5\) # (GND)))
-- \affiche_obj_inst|Add1~7\ = CARRY((!\affiche_obj_inst|Add1~5\) # (!\movement_ctrl_inst|y_ball\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|y_ball\(7),
	datad => VCC,
	cin => \affiche_obj_inst|Add1~5\,
	combout => \affiche_obj_inst|Add1~6_combout\,
	cout => \affiche_obj_inst|Add1~7\);

-- Location: LCCOMB_X43_Y33_N20
\affiche_obj_inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add1~8_combout\ = (\movement_ctrl_inst|y_ball\(8) & (\affiche_obj_inst|Add1~7\ $ (GND))) # (!\movement_ctrl_inst|y_ball\(8) & (!\affiche_obj_inst|Add1~7\ & VCC))
-- \affiche_obj_inst|Add1~9\ = CARRY((\movement_ctrl_inst|y_ball\(8) & !\affiche_obj_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(8),
	datad => VCC,
	cin => \affiche_obj_inst|Add1~7\,
	combout => \affiche_obj_inst|Add1~8_combout\,
	cout => \affiche_obj_inst|Add1~9\);

-- Location: LCCOMB_X43_Y33_N22
\affiche_obj_inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add1~10_combout\ = (\movement_ctrl_inst|y_ball\(9) & (!\affiche_obj_inst|Add1~9\)) # (!\movement_ctrl_inst|y_ball\(9) & ((\affiche_obj_inst|Add1~9\) # (GND)))
-- \affiche_obj_inst|Add1~11\ = CARRY((!\affiche_obj_inst|Add1~9\) # (!\movement_ctrl_inst|y_ball\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|y_ball\(9),
	datad => VCC,
	cin => \affiche_obj_inst|Add1~9\,
	combout => \affiche_obj_inst|Add1~10_combout\,
	cout => \affiche_obj_inst|Add1~11\);

-- Location: LCCOMB_X43_Y33_N24
\affiche_obj_inst|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add1~12_combout\ = (\movement_ctrl_inst|y_ball\(10) & (\affiche_obj_inst|Add1~11\ $ (GND))) # (!\movement_ctrl_inst|y_ball\(10) & (!\affiche_obj_inst|Add1~11\ & VCC))
-- \affiche_obj_inst|Add1~13\ = CARRY((\movement_ctrl_inst|y_ball\(10) & !\affiche_obj_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|y_ball\(10),
	datad => VCC,
	cin => \affiche_obj_inst|Add1~11\,
	combout => \affiche_obj_inst|Add1~12_combout\,
	cout => \affiche_obj_inst|Add1~13\);

-- Location: LCCOMB_X43_Y33_N26
\affiche_obj_inst|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add1~14_combout\ = (\movement_ctrl_inst|y_ball\(11) & (!\affiche_obj_inst|Add1~13\)) # (!\movement_ctrl_inst|y_ball\(11) & ((\affiche_obj_inst|Add1~13\) # (GND)))
-- \affiche_obj_inst|Add1~15\ = CARRY((!\affiche_obj_inst|Add1~13\) # (!\movement_ctrl_inst|y_ball\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|y_ball\(11),
	datad => VCC,
	cin => \affiche_obj_inst|Add1~13\,
	combout => \affiche_obj_inst|Add1~14_combout\,
	cout => \affiche_obj_inst|Add1~15\);

-- Location: LCCOMB_X43_Y33_N28
\affiche_obj_inst|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|Add1~16_combout\ = !\affiche_obj_inst|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \affiche_obj_inst|Add1~15\,
	combout => \affiche_obj_inst|Add1~16_combout\);

-- Location: LCCOMB_X38_Y34_N0
\vga_ctrl_inst|hsync_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~0_combout\ = \vga_ctrl_inst|hsync_inst|counter_process:cmp[0]~q\ $ (GND)
-- \vga_ctrl_inst|hsync_inst|Add0~1\ = CARRY(!\vga_ctrl_inst|hsync_inst|counter_process:cmp[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[0]~q\,
	datad => VCC,
	combout => \vga_ctrl_inst|hsync_inst|Add0~0_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~1\);

-- Location: LCCOMB_X40_Y34_N26
\vga_ctrl_inst|hsync_inst|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal0~9_combout\ = (\vga_ctrl_inst|hsync_inst|Equal0~8_combout\ & (\vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\ & \vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Equal0~8_combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\,
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\,
	combout => \vga_ctrl_inst|hsync_inst|Equal0~9_combout\);

-- Location: LCCOMB_X44_Y31_N26
\vga_ctrl_inst|hsync_inst|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal0~10_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\ & (\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\ & \vga_ctrl_inst|hsync_inst|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Equal0~9_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Equal0~10_combout\);

-- Location: LCCOMB_X44_Y31_N28
\vga_ctrl_inst|hsync_inst|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector3~1_combout\ = ((!\vga_ctrl_inst|hsync_inst|Equal0~9_combout\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Equal0~9_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Selector3~1_combout\);

-- Location: LCCOMB_X44_Y31_N18
\vga_ctrl_inst|hsync_inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal2~0_combout\ = (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\ & \vga_ctrl_inst|hsync_inst|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Equal0~9_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Equal2~0_combout\);

-- Location: LCCOMB_X44_Y31_N24
\vga_ctrl_inst|hsync_inst|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector5~0_combout\ = (\vga_ctrl_inst|hsync_inst|Equal1~1_combout\ & ((\vga_ctrl_inst|hsync_inst|etat.fp~q\) # ((\vga_ctrl_inst|hsync_inst|etat.Sync~q\ & !\vga_ctrl_inst|hsync_inst|Equal2~0_combout\)))) # 
-- (!\vga_ctrl_inst|hsync_inst|Equal1~1_combout\ & (((\vga_ctrl_inst|hsync_inst|etat.Sync~q\ & !\vga_ctrl_inst|hsync_inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Equal1~1_combout\,
	datab => \vga_ctrl_inst|hsync_inst|etat.fp~q\,
	datac => \vga_ctrl_inst|hsync_inst|etat.Sync~q\,
	datad => \vga_ctrl_inst|hsync_inst|Equal2~0_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Selector5~0_combout\);

-- Location: FF_X44_Y31_N25
\vga_ctrl_inst|hsync_inst|etat.Sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|Selector5~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|etat.Sync~q\);

-- Location: LCCOMB_X44_Y31_N16
\vga_ctrl_inst|hsync_inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal3~0_combout\ = (\vga_ctrl_inst|hsync_inst|Equal1~0_combout\ & \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|Equal1~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\,
	combout => \vga_ctrl_inst|hsync_inst|Equal3~0_combout\);

-- Location: LCCOMB_X44_Y31_N22
\vga_ctrl_inst|hsync_inst|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector6~0_combout\ = (\vga_ctrl_inst|hsync_inst|Equal2~0_combout\ & ((\vga_ctrl_inst|hsync_inst|etat.Sync~q\) # ((\vga_ctrl_inst|hsync_inst|etat.bp~q\ & !\vga_ctrl_inst|hsync_inst|Equal3~0_combout\)))) # 
-- (!\vga_ctrl_inst|hsync_inst|Equal2~0_combout\ & (((\vga_ctrl_inst|hsync_inst|etat.bp~q\ & !\vga_ctrl_inst|hsync_inst|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Equal2~0_combout\,
	datab => \vga_ctrl_inst|hsync_inst|etat.Sync~q\,
	datac => \vga_ctrl_inst|hsync_inst|etat.bp~q\,
	datad => \vga_ctrl_inst|hsync_inst|Equal3~0_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Selector6~0_combout\);

-- Location: FF_X44_Y31_N23
\vga_ctrl_inst|hsync_inst|etat.bp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|Selector6~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|etat.bp~q\);

-- Location: LCCOMB_X51_Y37_N6
\Switch1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~0_combout\ = \Switch1|r_Debounce_Count\(0) $ (VCC)
-- \Switch1|Add0~1\ = CARRY(\Switch1|r_Debounce_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(0),
	datad => VCC,
	combout => \Switch1|Add0~0_combout\,
	cout => \Switch1|Add0~1\);

-- Location: LCCOMB_X52_Y37_N4
\Switch1|r_Debounce_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[0]~13_combout\ = (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|Add0~0_combout\ & \Switch1|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Switch_State~7_combout\,
	datac => \Switch1|Add0~0_combout\,
	datad => \Switch1|p_Debounce~1_combout\,
	combout => \Switch1|r_Debounce_Count[0]~13_combout\);

-- Location: FF_X52_Y37_N5
\Switch1|r_Debounce_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(0));

-- Location: LCCOMB_X51_Y37_N8
\Switch1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~2_combout\ = (\Switch1|r_Debounce_Count\(1) & (!\Switch1|Add0~1\)) # (!\Switch1|r_Debounce_Count\(1) & ((\Switch1|Add0~1\) # (GND)))
-- \Switch1|Add0~3\ = CARRY((!\Switch1|Add0~1\) # (!\Switch1|r_Debounce_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(1),
	datad => VCC,
	cin => \Switch1|Add0~1\,
	combout => \Switch1|Add0~2_combout\,
	cout => \Switch1|Add0~3\);

-- Location: LCCOMB_X51_Y35_N10
\Switch1|r_Debounce_Count[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[1]~14_combout\ = (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & \Switch1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~7_combout\,
	datab => \Switch1|p_Debounce~1_combout\,
	datad => \Switch1|Add0~2_combout\,
	combout => \Switch1|r_Debounce_Count[1]~14_combout\);

-- Location: FF_X51_Y35_N11
\Switch1|r_Debounce_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(1));

-- Location: LCCOMB_X51_Y37_N10
\Switch1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~4_combout\ = (\Switch1|r_Debounce_Count\(2) & (\Switch1|Add0~3\ $ (GND))) # (!\Switch1|r_Debounce_Count\(2) & (!\Switch1|Add0~3\ & VCC))
-- \Switch1|Add0~5\ = CARRY((\Switch1|r_Debounce_Count\(2) & !\Switch1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(2),
	datad => VCC,
	cin => \Switch1|Add0~3\,
	combout => \Switch1|Add0~4_combout\,
	cout => \Switch1|Add0~5\);

-- Location: LCCOMB_X51_Y37_N0
\Switch1|r_Debounce_Count[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[2]~15_combout\ = (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & \Switch1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Switch_State~7_combout\,
	datac => \Switch1|p_Debounce~1_combout\,
	datad => \Switch1|Add0~4_combout\,
	combout => \Switch1|r_Debounce_Count[2]~15_combout\);

-- Location: FF_X51_Y37_N1
\Switch1|r_Debounce_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(2));

-- Location: LCCOMB_X51_Y37_N12
\Switch1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~6_combout\ = (\Switch1|r_Debounce_Count\(3) & (!\Switch1|Add0~5\)) # (!\Switch1|r_Debounce_Count\(3) & ((\Switch1|Add0~5\) # (GND)))
-- \Switch1|Add0~7\ = CARRY((!\Switch1|Add0~5\) # (!\Switch1|r_Debounce_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(3),
	datad => VCC,
	cin => \Switch1|Add0~5\,
	combout => \Switch1|Add0~6_combout\,
	cout => \Switch1|Add0~7\);

-- Location: LCCOMB_X52_Y37_N6
\Switch1|r_Debounce_Count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[3]~16_combout\ = (\Switch1|p_Debounce~1_combout\ & (!\Switch1|r_Switch_State~7_combout\ & \Switch1|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|p_Debounce~1_combout\,
	datab => \Switch1|r_Switch_State~7_combout\,
	datad => \Switch1|Add0~6_combout\,
	combout => \Switch1|r_Debounce_Count[3]~16_combout\);

-- Location: FF_X52_Y37_N7
\Switch1|r_Debounce_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(3));

-- Location: LCCOMB_X51_Y37_N14
\Switch1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~8_combout\ = (\Switch1|r_Debounce_Count\(4) & (\Switch1|Add0~7\ $ (GND))) # (!\Switch1|r_Debounce_Count\(4) & (!\Switch1|Add0~7\ & VCC))
-- \Switch1|Add0~9\ = CARRY((\Switch1|r_Debounce_Count\(4) & !\Switch1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(4),
	datad => VCC,
	cin => \Switch1|Add0~7\,
	combout => \Switch1|Add0~8_combout\,
	cout => \Switch1|Add0~9\);

-- Location: LCCOMB_X52_Y37_N2
\Switch1|r_Debounce_Count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[4]~18_combout\ = (\Switch1|p_Debounce~1_combout\ & (!\Switch1|r_Switch_State~7_combout\ & \Switch1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|p_Debounce~1_combout\,
	datab => \Switch1|r_Switch_State~7_combout\,
	datad => \Switch1|Add0~8_combout\,
	combout => \Switch1|r_Debounce_Count[4]~18_combout\);

-- Location: FF_X52_Y37_N3
\Switch1|r_Debounce_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(4));

-- Location: LCCOMB_X51_Y37_N16
\Switch1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~10_combout\ = (\Switch1|r_Debounce_Count\(5) & (!\Switch1|Add0~9\)) # (!\Switch1|r_Debounce_Count\(5) & ((\Switch1|Add0~9\) # (GND)))
-- \Switch1|Add0~11\ = CARRY((!\Switch1|Add0~9\) # (!\Switch1|r_Debounce_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(5),
	datad => VCC,
	cin => \Switch1|Add0~9\,
	combout => \Switch1|Add0~10_combout\,
	cout => \Switch1|Add0~11\);

-- Location: LCCOMB_X52_Y37_N0
\Switch1|r_Debounce_Count[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[5]~19_combout\ = (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|Add0~10_combout\ & \Switch1|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Switch_State~7_combout\,
	datac => \Switch1|Add0~10_combout\,
	datad => \Switch1|p_Debounce~1_combout\,
	combout => \Switch1|r_Debounce_Count[5]~19_combout\);

-- Location: FF_X52_Y37_N1
\Switch1|r_Debounce_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(5));

-- Location: LCCOMB_X51_Y37_N18
\Switch1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~12_combout\ = (\Switch1|r_Debounce_Count\(6) & (\Switch1|Add0~11\ $ (GND))) # (!\Switch1|r_Debounce_Count\(6) & (!\Switch1|Add0~11\ & VCC))
-- \Switch1|Add0~13\ = CARRY((\Switch1|r_Debounce_Count\(6) & !\Switch1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(6),
	datad => VCC,
	cin => \Switch1|Add0~11\,
	combout => \Switch1|Add0~12_combout\,
	cout => \Switch1|Add0~13\);

-- Location: LCCOMB_X51_Y37_N4
\Switch1|r_Debounce_Count[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[6]~20_combout\ = (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & \Switch1|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Switch_State~7_combout\,
	datac => \Switch1|p_Debounce~1_combout\,
	datad => \Switch1|Add0~12_combout\,
	combout => \Switch1|r_Debounce_Count[6]~20_combout\);

-- Location: FF_X51_Y37_N5
\Switch1|r_Debounce_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(6));

-- Location: LCCOMB_X51_Y37_N20
\Switch1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~14_combout\ = (\Switch1|r_Debounce_Count\(7) & (!\Switch1|Add0~13\)) # (!\Switch1|r_Debounce_Count\(7) & ((\Switch1|Add0~13\) # (GND)))
-- \Switch1|Add0~15\ = CARRY((!\Switch1|Add0~13\) # (!\Switch1|r_Debounce_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(7),
	datad => VCC,
	cin => \Switch1|Add0~13\,
	combout => \Switch1|Add0~14_combout\,
	cout => \Switch1|Add0~15\);

-- Location: LCCOMB_X52_Y37_N20
\Switch1|r_Debounce_Count[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[7]~17_combout\ = (\Switch1|r_Switch_State~7_combout\ & (((\Switch1|r_Debounce_Count\(7))))) # (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & ((\Switch1|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|p_Debounce~1_combout\,
	datab => \Switch1|r_Switch_State~7_combout\,
	datac => \Switch1|r_Debounce_Count\(7),
	datad => \Switch1|Add0~14_combout\,
	combout => \Switch1|r_Debounce_Count[7]~17_combout\);

-- Location: FF_X52_Y37_N21
\Switch1|r_Debounce_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(7));

-- Location: LCCOMB_X51_Y37_N22
\Switch1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~16_combout\ = (\Switch1|r_Debounce_Count\(8) & (\Switch1|Add0~15\ $ (GND))) # (!\Switch1|r_Debounce_Count\(8) & (!\Switch1|Add0~15\ & VCC))
-- \Switch1|Add0~17\ = CARRY((\Switch1|r_Debounce_Count\(8) & !\Switch1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(8),
	datad => VCC,
	cin => \Switch1|Add0~15\,
	combout => \Switch1|Add0~16_combout\,
	cout => \Switch1|Add0~17\);

-- Location: LCCOMB_X52_Y37_N30
\Switch1|r_Debounce_Count[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[8]~9_combout\ = (\Switch1|p_Debounce~1_combout\ & (!\Switch1|r_Switch_State~7_combout\ & \Switch1|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|p_Debounce~1_combout\,
	datab => \Switch1|r_Switch_State~7_combout\,
	datad => \Switch1|Add0~16_combout\,
	combout => \Switch1|r_Debounce_Count[8]~9_combout\);

-- Location: FF_X52_Y37_N31
\Switch1|r_Debounce_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(8));

-- Location: LCCOMB_X51_Y37_N24
\Switch1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~18_combout\ = (\Switch1|r_Debounce_Count\(9) & (!\Switch1|Add0~17\)) # (!\Switch1|r_Debounce_Count\(9) & ((\Switch1|Add0~17\) # (GND)))
-- \Switch1|Add0~19\ = CARRY((!\Switch1|Add0~17\) # (!\Switch1|r_Debounce_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(9),
	datad => VCC,
	cin => \Switch1|Add0~17\,
	combout => \Switch1|Add0~18_combout\,
	cout => \Switch1|Add0~19\);

-- Location: LCCOMB_X52_Y37_N24
\Switch1|r_Debounce_Count[9]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[9]~10_combout\ = (\Switch1|p_Debounce~1_combout\ & (!\Switch1|r_Switch_State~7_combout\ & \Switch1|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|p_Debounce~1_combout\,
	datab => \Switch1|r_Switch_State~7_combout\,
	datad => \Switch1|Add0~18_combout\,
	combout => \Switch1|r_Debounce_Count[9]~10_combout\);

-- Location: FF_X52_Y37_N25
\Switch1|r_Debounce_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(9));

-- Location: LCCOMB_X51_Y37_N26
\Switch1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~20_combout\ = (\Switch1|r_Debounce_Count\(10) & (\Switch1|Add0~19\ $ (GND))) # (!\Switch1|r_Debounce_Count\(10) & (!\Switch1|Add0~19\ & VCC))
-- \Switch1|Add0~21\ = CARRY((\Switch1|r_Debounce_Count\(10) & !\Switch1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(10),
	datad => VCC,
	cin => \Switch1|Add0~19\,
	combout => \Switch1|Add0~20_combout\,
	cout => \Switch1|Add0~21\);

-- Location: LCCOMB_X52_Y37_N18
\Switch1|r_Debounce_Count[10]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[10]~11_combout\ = (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|Add0~20_combout\ & \Switch1|p_Debounce~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Switch_State~7_combout\,
	datac => \Switch1|Add0~20_combout\,
	datad => \Switch1|p_Debounce~1_combout\,
	combout => \Switch1|r_Debounce_Count[10]~11_combout\);

-- Location: FF_X52_Y37_N19
\Switch1|r_Debounce_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(10));

-- Location: LCCOMB_X51_Y37_N28
\Switch1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~22_combout\ = (\Switch1|r_Debounce_Count\(11) & (!\Switch1|Add0~21\)) # (!\Switch1|r_Debounce_Count\(11) & ((\Switch1|Add0~21\) # (GND)))
-- \Switch1|Add0~23\ = CARRY((!\Switch1|Add0~21\) # (!\Switch1|r_Debounce_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(11),
	datad => VCC,
	cin => \Switch1|Add0~21\,
	combout => \Switch1|Add0~22_combout\,
	cout => \Switch1|Add0~23\);

-- Location: LCCOMB_X52_Y37_N12
\Switch1|r_Debounce_Count[11]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[11]~12_combout\ = (\Switch1|p_Debounce~1_combout\ & (!\Switch1|r_Switch_State~7_combout\ & \Switch1|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|p_Debounce~1_combout\,
	datab => \Switch1|r_Switch_State~7_combout\,
	datad => \Switch1|Add0~22_combout\,
	combout => \Switch1|r_Debounce_Count[11]~12_combout\);

-- Location: FF_X52_Y37_N13
\Switch1|r_Debounce_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(11));

-- Location: LCCOMB_X51_Y37_N30
\Switch1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~24_combout\ = (\Switch1|r_Debounce_Count\(12) & (\Switch1|Add0~23\ $ (GND))) # (!\Switch1|r_Debounce_Count\(12) & (!\Switch1|Add0~23\ & VCC))
-- \Switch1|Add0~25\ = CARRY((\Switch1|r_Debounce_Count\(12) & !\Switch1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(12),
	datad => VCC,
	cin => \Switch1|Add0~23\,
	combout => \Switch1|Add0~24_combout\,
	cout => \Switch1|Add0~25\);

-- Location: LCCOMB_X51_Y36_N0
\Switch1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~26_combout\ = (\Switch1|r_Debounce_Count\(13) & (!\Switch1|Add0~25\)) # (!\Switch1|r_Debounce_Count\(13) & ((\Switch1|Add0~25\) # (GND)))
-- \Switch1|Add0~27\ = CARRY((!\Switch1|Add0~25\) # (!\Switch1|r_Debounce_Count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(13),
	datad => VCC,
	cin => \Switch1|Add0~25\,
	combout => \Switch1|Add0~26_combout\,
	cout => \Switch1|Add0~27\);

-- Location: LCCOMB_X51_Y36_N30
\Switch1|r_Debounce_Count[13]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[13]~6_combout\ = (\Switch1|r_Switch_State~7_combout\ & (((\Switch1|r_Debounce_Count\(13))))) # (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & ((\Switch1|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|p_Debounce~1_combout\,
	datab => \Switch1|r_Switch_State~7_combout\,
	datac => \Switch1|r_Debounce_Count\(13),
	datad => \Switch1|Add0~26_combout\,
	combout => \Switch1|r_Debounce_Count[13]~6_combout\);

-- Location: FF_X51_Y36_N31
\Switch1|r_Debounce_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(13));

-- Location: LCCOMB_X51_Y36_N2
\Switch1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~28_combout\ = (\Switch1|r_Debounce_Count\(14) & (\Switch1|Add0~27\ $ (GND))) # (!\Switch1|r_Debounce_Count\(14) & (!\Switch1|Add0~27\ & VCC))
-- \Switch1|Add0~29\ = CARRY((\Switch1|r_Debounce_Count\(14) & !\Switch1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(14),
	datad => VCC,
	cin => \Switch1|Add0~27\,
	combout => \Switch1|Add0~28_combout\,
	cout => \Switch1|Add0~29\);

-- Location: LCCOMB_X52_Y36_N0
\Switch1|r_Debounce_Count[14]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[14]~7_combout\ = (\Switch1|r_Switch_State~7_combout\ & (((\Switch1|r_Debounce_Count\(14))))) # (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & ((\Switch1|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~7_combout\,
	datab => \Switch1|p_Debounce~1_combout\,
	datac => \Switch1|r_Debounce_Count\(14),
	datad => \Switch1|Add0~28_combout\,
	combout => \Switch1|r_Debounce_Count[14]~7_combout\);

-- Location: FF_X52_Y36_N1
\Switch1|r_Debounce_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[14]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(14));

-- Location: LCCOMB_X51_Y36_N4
\Switch1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~30_combout\ = (\Switch1|r_Debounce_Count\(15) & (!\Switch1|Add0~29\)) # (!\Switch1|r_Debounce_Count\(15) & ((\Switch1|Add0~29\) # (GND)))
-- \Switch1|Add0~31\ = CARRY((!\Switch1|Add0~29\) # (!\Switch1|r_Debounce_Count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(15),
	datad => VCC,
	cin => \Switch1|Add0~29\,
	combout => \Switch1|Add0~30_combout\,
	cout => \Switch1|Add0~31\);

-- Location: LCCOMB_X52_Y36_N26
\Switch1|r_Debounce_Count[15]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[15]~8_combout\ = (\Switch1|r_Switch_State~7_combout\ & (((\Switch1|r_Debounce_Count\(15))))) # (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & ((\Switch1|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~7_combout\,
	datab => \Switch1|p_Debounce~1_combout\,
	datac => \Switch1|r_Debounce_Count\(15),
	datad => \Switch1|Add0~30_combout\,
	combout => \Switch1|r_Debounce_Count[15]~8_combout\);

-- Location: FF_X52_Y36_N27
\Switch1|r_Debounce_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(15));

-- Location: LCCOMB_X51_Y36_N6
\Switch1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~32_combout\ = (\Switch1|r_Debounce_Count\(16) & (\Switch1|Add0~31\ $ (GND))) # (!\Switch1|r_Debounce_Count\(16) & (!\Switch1|Add0~31\ & VCC))
-- \Switch1|Add0~33\ = CARRY((\Switch1|r_Debounce_Count\(16) & !\Switch1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(16),
	datad => VCC,
	cin => \Switch1|Add0~31\,
	combout => \Switch1|Add0~32_combout\,
	cout => \Switch1|Add0~33\);

-- Location: LCCOMB_X51_Y35_N18
\Switch1|r_Debounce_Count[16]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[16]~22_combout\ = (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & \Switch1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~7_combout\,
	datab => \Switch1|p_Debounce~1_combout\,
	datad => \Switch1|Add0~32_combout\,
	combout => \Switch1|r_Debounce_Count[16]~22_combout\);

-- Location: FF_X51_Y35_N19
\Switch1|r_Debounce_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(16));

-- Location: LCCOMB_X51_Y36_N8
\Switch1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~34_combout\ = (\Switch1|r_Debounce_Count\(17) & (!\Switch1|Add0~33\)) # (!\Switch1|r_Debounce_Count\(17) & ((\Switch1|Add0~33\) # (GND)))
-- \Switch1|Add0~35\ = CARRY((!\Switch1|Add0~33\) # (!\Switch1|r_Debounce_Count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(17),
	datad => VCC,
	cin => \Switch1|Add0~33\,
	combout => \Switch1|Add0~34_combout\,
	cout => \Switch1|Add0~35\);

-- Location: LCCOMB_X52_Y36_N30
\Switch1|r_Debounce_Count[17]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[17]~21_combout\ = (\Switch1|r_Switch_State~7_combout\ & (((\Switch1|r_Debounce_Count\(17))))) # (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & ((\Switch1|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~7_combout\,
	datab => \Switch1|p_Debounce~1_combout\,
	datac => \Switch1|r_Debounce_Count\(17),
	datad => \Switch1|Add0~34_combout\,
	combout => \Switch1|r_Debounce_Count[17]~21_combout\);

-- Location: FF_X52_Y36_N31
\Switch1|r_Debounce_Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[17]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(17));

-- Location: LCCOMB_X51_Y36_N10
\Switch1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~36_combout\ = (\Switch1|r_Debounce_Count\(18) & (\Switch1|Add0~35\ $ (GND))) # (!\Switch1|r_Debounce_Count\(18) & (!\Switch1|Add0~35\ & VCC))
-- \Switch1|Add0~37\ = CARRY((\Switch1|r_Debounce_Count\(18) & !\Switch1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(18),
	datad => VCC,
	cin => \Switch1|Add0~35\,
	combout => \Switch1|Add0~36_combout\,
	cout => \Switch1|Add0~37\);

-- Location: LCCOMB_X51_Y35_N0
\Switch1|r_Debounce_Count[18]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[18]~23_combout\ = (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & \Switch1|Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~7_combout\,
	datab => \Switch1|p_Debounce~1_combout\,
	datad => \Switch1|Add0~36_combout\,
	combout => \Switch1|r_Debounce_Count[18]~23_combout\);

-- Location: FF_X51_Y35_N1
\Switch1|r_Debounce_Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[18]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(18));

-- Location: LCCOMB_X51_Y36_N12
\Switch1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~38_combout\ = (\Switch1|r_Debounce_Count\(19) & (!\Switch1|Add0~37\)) # (!\Switch1|r_Debounce_Count\(19) & ((\Switch1|Add0~37\) # (GND)))
-- \Switch1|Add0~39\ = CARRY((!\Switch1|Add0~37\) # (!\Switch1|r_Debounce_Count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(19),
	datad => VCC,
	cin => \Switch1|Add0~37\,
	combout => \Switch1|Add0~38_combout\,
	cout => \Switch1|Add0~39\);

-- Location: LCCOMB_X51_Y35_N30
\Switch1|r_Debounce_Count[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[19]~1_combout\ = (\Switch1|r_Switch_State~7_combout\ & (((\Switch1|r_Debounce_Count\(19))))) # (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & ((\Switch1|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~7_combout\,
	datab => \Switch1|p_Debounce~1_combout\,
	datac => \Switch1|r_Debounce_Count\(19),
	datad => \Switch1|Add0~38_combout\,
	combout => \Switch1|r_Debounce_Count[19]~1_combout\);

-- Location: FF_X51_Y35_N31
\Switch1|r_Debounce_Count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(19));

-- Location: LCCOMB_X51_Y36_N14
\Switch1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~40_combout\ = (\Switch1|r_Debounce_Count\(20) & (\Switch1|Add0~39\ $ (GND))) # (!\Switch1|r_Debounce_Count\(20) & (!\Switch1|Add0~39\ & VCC))
-- \Switch1|Add0~41\ = CARRY((\Switch1|r_Debounce_Count\(20) & !\Switch1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(20),
	datad => VCC,
	cin => \Switch1|Add0~39\,
	combout => \Switch1|Add0~40_combout\,
	cout => \Switch1|Add0~41\);

-- Location: LCCOMB_X52_Y36_N16
\Switch1|r_Debounce_Count[20]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[20]~2_combout\ = (\Switch1|r_Switch_State~7_combout\ & (((\Switch1|r_Debounce_Count\(20))))) # (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & ((\Switch1|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~7_combout\,
	datab => \Switch1|p_Debounce~1_combout\,
	datac => \Switch1|r_Debounce_Count\(20),
	datad => \Switch1|Add0~40_combout\,
	combout => \Switch1|r_Debounce_Count[20]~2_combout\);

-- Location: FF_X52_Y36_N17
\Switch1|r_Debounce_Count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(20));

-- Location: LCCOMB_X51_Y36_N16
\Switch1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~42_combout\ = (\Switch1|r_Debounce_Count\(21) & (!\Switch1|Add0~41\)) # (!\Switch1|r_Debounce_Count\(21) & ((\Switch1|Add0~41\) # (GND)))
-- \Switch1|Add0~43\ = CARRY((!\Switch1|Add0~41\) # (!\Switch1|r_Debounce_Count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(21),
	datad => VCC,
	cin => \Switch1|Add0~41\,
	combout => \Switch1|Add0~42_combout\,
	cout => \Switch1|Add0~43\);

-- Location: LCCOMB_X51_Y36_N26
\Switch1|r_Debounce_Count[21]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[21]~3_combout\ = (\Switch1|r_Switch_State~7_combout\ & (((\Switch1|r_Debounce_Count\(21))))) # (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & ((\Switch1|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|p_Debounce~1_combout\,
	datab => \Switch1|r_Switch_State~7_combout\,
	datac => \Switch1|r_Debounce_Count\(21),
	datad => \Switch1|Add0~42_combout\,
	combout => \Switch1|r_Debounce_Count[21]~3_combout\);

-- Location: FF_X51_Y36_N27
\Switch1|r_Debounce_Count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(21));

-- Location: LCCOMB_X51_Y36_N18
\Switch1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~44_combout\ = (\Switch1|r_Debounce_Count\(22) & (\Switch1|Add0~43\ $ (GND))) # (!\Switch1|r_Debounce_Count\(22) & (!\Switch1|Add0~43\ & VCC))
-- \Switch1|Add0~45\ = CARRY((\Switch1|r_Debounce_Count\(22) & !\Switch1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(22),
	datad => VCC,
	cin => \Switch1|Add0~43\,
	combout => \Switch1|Add0~44_combout\,
	cout => \Switch1|Add0~45\);

-- Location: LCCOMB_X52_Y36_N18
\Switch1|r_Debounce_Count[22]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[22]~4_combout\ = (\Switch1|r_Switch_State~7_combout\ & (((\Switch1|r_Debounce_Count\(22))))) # (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & ((\Switch1|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~7_combout\,
	datab => \Switch1|p_Debounce~1_combout\,
	datac => \Switch1|r_Debounce_Count\(22),
	datad => \Switch1|Add0~44_combout\,
	combout => \Switch1|r_Debounce_Count[22]~4_combout\);

-- Location: FF_X52_Y36_N19
\Switch1|r_Debounce_Count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(22));

-- Location: LCCOMB_X51_Y36_N28
\Switch1|r_Switch_State~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Switch_State~0_combout\ = (\Switch1|r_Debounce_Count\(21) & (\Switch1|r_Debounce_Count\(22) & (\Switch1|r_Debounce_Count\(19) & \Switch1|r_Debounce_Count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(21),
	datab => \Switch1|r_Debounce_Count\(22),
	datac => \Switch1|r_Debounce_Count\(19),
	datad => \Switch1|r_Debounce_Count\(20),
	combout => \Switch1|r_Switch_State~0_combout\);

-- Location: LCCOMB_X51_Y36_N20
\Switch1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~46_combout\ = (\Switch1|r_Debounce_Count\(23) & (!\Switch1|Add0~45\)) # (!\Switch1|r_Debounce_Count\(23) & ((\Switch1|Add0~45\) # (GND)))
-- \Switch1|Add0~47\ = CARRY((!\Switch1|Add0~45\) # (!\Switch1|r_Debounce_Count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(23),
	datad => VCC,
	cin => \Switch1|Add0~45\,
	combout => \Switch1|Add0~46_combout\,
	cout => \Switch1|Add0~47\);

-- Location: LCCOMB_X51_Y35_N8
\Switch1|r_Debounce_Count[23]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[23]~0_combout\ = (\Switch1|r_Switch_State~7_combout\ & (((\Switch1|r_Debounce_Count\(23))))) # (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & ((\Switch1|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~7_combout\,
	datab => \Switch1|p_Debounce~1_combout\,
	datac => \Switch1|r_Debounce_Count\(23),
	datad => \Switch1|Add0~46_combout\,
	combout => \Switch1|r_Debounce_Count[23]~0_combout\);

-- Location: FF_X51_Y35_N9
\Switch1|r_Debounce_Count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(23));

-- Location: LCCOMB_X51_Y35_N16
\Switch1|r_Switch_State~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Switch_State~1_combout\ = (\Switch1|r_Switch_State~0_combout\ & \Switch1|r_Debounce_Count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~0_combout\,
	datac => \Switch1|r_Debounce_Count\(23),
	combout => \Switch1|r_Switch_State~1_combout\);

-- Location: LCCOMB_X52_Y37_N22
\Switch1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|LessThan0~0_combout\ = (!\Switch1|r_Debounce_Count\(11) & (!\Switch1|r_Debounce_Count\(10) & (!\Switch1|r_Debounce_Count\(8) & !\Switch1|r_Debounce_Count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(11),
	datab => \Switch1|r_Debounce_Count\(10),
	datac => \Switch1|r_Debounce_Count\(8),
	datad => \Switch1|r_Debounce_Count\(9),
	combout => \Switch1|LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y35_N22
\Switch1|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|LessThan0~1_combout\ = (!\Switch1|r_Debounce_Count\(16) & (((!\Switch1|r_Debounce_Count\(7) & \Switch1|LessThan0~0_combout\)) # (!\Switch1|r_Switch_State~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~2_combout\,
	datab => \Switch1|r_Debounce_Count\(16),
	datac => \Switch1|r_Debounce_Count\(7),
	datad => \Switch1|LessThan0~0_combout\,
	combout => \Switch1|LessThan0~1_combout\);

-- Location: LCCOMB_X51_Y35_N20
\Switch1|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|LessThan0~2_combout\ = ((!\Switch1|r_Debounce_Count\(18) & ((\Switch1|LessThan0~1_combout\) # (!\Switch1|r_Debounce_Count\(17))))) # (!\Switch1|r_Switch_State~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(17),
	datab => \Switch1|r_Switch_State~1_combout\,
	datac => \Switch1|LessThan0~1_combout\,
	datad => \Switch1|r_Debounce_Count\(18),
	combout => \Switch1|LessThan0~2_combout\);

-- Location: LCCOMB_X51_Y36_N22
\Switch1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~48_combout\ = (\Switch1|r_Debounce_Count\(24) & (\Switch1|Add0~47\ $ (GND))) # (!\Switch1|r_Debounce_Count\(24) & (!\Switch1|Add0~47\ & VCC))
-- \Switch1|Add0~49\ = CARRY((\Switch1|r_Debounce_Count\(24) & !\Switch1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(24),
	datad => VCC,
	cin => \Switch1|Add0~47\,
	combout => \Switch1|Add0~48_combout\,
	cout => \Switch1|Add0~49\);

-- Location: LCCOMB_X51_Y35_N14
\Switch1|Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~53_combout\ = (\Switch1|p_Debounce~1_combout\ & \Switch1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|p_Debounce~1_combout\,
	datad => \Switch1|Add0~48_combout\,
	combout => \Switch1|Add0~53_combout\);

-- Location: FF_X51_Y35_N15
\Switch1|r_Debounce_Count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(24));

-- Location: IOIBUF_X51_Y54_N29
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X41_Y32_N2
\Switch1|p_Debounce~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|p_Debounce~0_combout\ = \Switch1|r_Switch_State~q\ $ (\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Switch_State~q\,
	datad => \start~input_o\,
	combout => \Switch1|p_Debounce~0_combout\);

-- Location: LCCOMB_X51_Y36_N24
\Switch1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~50_combout\ = \Switch1|r_Debounce_Count\(25) $ (\Switch1|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Debounce_Count\(25),
	cin => \Switch1|Add0~49\,
	combout => \Switch1|Add0~50_combout\);

-- Location: LCCOMB_X51_Y35_N24
\Switch1|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|Add0~52_combout\ = (\Switch1|r_Switch_State~7_combout\) # ((\Switch1|p_Debounce~1_combout\ & \Switch1|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~7_combout\,
	datab => \Switch1|p_Debounce~1_combout\,
	datac => \Switch1|Add0~50_combout\,
	combout => \Switch1|Add0~52_combout\);

-- Location: FF_X51_Y35_N25
\Switch1|r_Debounce_Count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(25));

-- Location: LCCOMB_X51_Y35_N2
\Switch1|p_Debounce~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|p_Debounce~1_combout\ = (\Switch1|p_Debounce~0_combout\ & (((\Switch1|LessThan0~2_combout\ & !\Switch1|r_Debounce_Count\(24))) # (!\Switch1|r_Debounce_Count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|LessThan0~2_combout\,
	datab => \Switch1|r_Debounce_Count\(24),
	datac => \Switch1|p_Debounce~0_combout\,
	datad => \Switch1|r_Debounce_Count\(25),
	combout => \Switch1|p_Debounce~1_combout\);

-- Location: LCCOMB_X52_Y37_N28
\Switch1|r_Debounce_Count[12]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Debounce_Count[12]~5_combout\ = (\Switch1|r_Switch_State~7_combout\ & (((\Switch1|r_Debounce_Count\(12))))) # (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|p_Debounce~1_combout\ & ((\Switch1|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|p_Debounce~1_combout\,
	datab => \Switch1|r_Switch_State~7_combout\,
	datac => \Switch1|r_Debounce_Count\(12),
	datad => \Switch1|Add0~24_combout\,
	combout => \Switch1|r_Debounce_Count[12]~5_combout\);

-- Location: FF_X52_Y37_N29
\Switch1|r_Debounce_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Debounce_Count[12]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Debounce_Count\(12));

-- Location: LCCOMB_X52_Y36_N28
\Switch1|r_Switch_State~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Switch_State~2_combout\ = (\Switch1|r_Debounce_Count\(12) & (\Switch1|r_Debounce_Count\(13) & (\Switch1|r_Debounce_Count\(15) & \Switch1|r_Debounce_Count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(12),
	datab => \Switch1|r_Debounce_Count\(13),
	datac => \Switch1|r_Debounce_Count\(15),
	datad => \Switch1|r_Debounce_Count\(14),
	combout => \Switch1|r_Switch_State~2_combout\);

-- Location: LCCOMB_X51_Y37_N2
\Switch1|r_Switch_State~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Switch_State~3_combout\ = (!\Switch1|r_Debounce_Count\(1) & (!\Switch1|r_Debounce_Count\(2) & (!\Switch1|r_Debounce_Count\(3) & !\Switch1|r_Debounce_Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(1),
	datab => \Switch1|r_Debounce_Count\(2),
	datac => \Switch1|r_Debounce_Count\(3),
	datad => \Switch1|r_Debounce_Count\(0),
	combout => \Switch1|r_Switch_State~3_combout\);

-- Location: LCCOMB_X51_Y35_N4
\Switch1|r_Switch_State~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Switch_State~5_combout\ = (\Switch1|r_Debounce_Count\(17) & (!\Switch1|r_Debounce_Count\(18) & (!\Switch1|r_Debounce_Count\(24) & !\Switch1|r_Debounce_Count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(17),
	datab => \Switch1|r_Debounce_Count\(18),
	datac => \Switch1|r_Debounce_Count\(24),
	datad => \Switch1|r_Debounce_Count\(16),
	combout => \Switch1|r_Switch_State~5_combout\);

-- Location: LCCOMB_X52_Y37_N10
\Switch1|r_Switch_State~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Switch_State~4_combout\ = (!\Switch1|r_Debounce_Count\(5) & (\Switch1|r_Debounce_Count\(7) & (!\Switch1|r_Debounce_Count\(6) & !\Switch1|r_Debounce_Count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Debounce_Count\(5),
	datab => \Switch1|r_Debounce_Count\(7),
	datac => \Switch1|r_Debounce_Count\(6),
	datad => \Switch1|r_Debounce_Count\(4),
	combout => \Switch1|r_Switch_State~4_combout\);

-- Location: LCCOMB_X51_Y35_N26
\Switch1|r_Switch_State~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Switch_State~6_combout\ = (\Switch1|r_Switch_State~3_combout\ & (\Switch1|r_Debounce_Count\(25) & (\Switch1|r_Switch_State~5_combout\ & \Switch1|r_Switch_State~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~3_combout\,
	datab => \Switch1|r_Debounce_Count\(25),
	datac => \Switch1|r_Switch_State~5_combout\,
	datad => \Switch1|r_Switch_State~4_combout\,
	combout => \Switch1|r_Switch_State~6_combout\);

-- Location: LCCOMB_X51_Y35_N12
\Switch1|r_Switch_State~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Switch_State~7_combout\ = (\Switch1|r_Switch_State~2_combout\ & (\Switch1|r_Switch_State~1_combout\ & (\Switch1|r_Switch_State~6_combout\ & \Switch1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1|r_Switch_State~2_combout\,
	datab => \Switch1|r_Switch_State~1_combout\,
	datac => \Switch1|r_Switch_State~6_combout\,
	datad => \Switch1|LessThan0~0_combout\,
	combout => \Switch1|r_Switch_State~7_combout\);

-- Location: LCCOMB_X41_Y32_N0
\Switch1|r_Switch_State~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Switch_State~8_combout\ = (\Switch1|r_Switch_State~7_combout\ & ((\start~input_o\))) # (!\Switch1|r_Switch_State~7_combout\ & (\Switch1|r_Switch_State~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch1|r_Switch_State~q\,
	datac => \Switch1|r_Switch_State~7_combout\,
	datad => \start~input_o\,
	combout => \Switch1|r_Switch_State~8_combout\);

-- Location: LCCOMB_X41_Y33_N28
\Switch1|r_Switch_State~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Switch1|r_Switch_State~feeder_combout\ = \Switch1|r_Switch_State~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Switch1|r_Switch_State~8_combout\,
	combout => \Switch1|r_Switch_State~feeder_combout\);

-- Location: FF_X41_Y33_N29
\Switch1|r_Switch_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Switch1|r_Switch_State~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Switch1|r_Switch_State~q\);

-- Location: LCCOMB_X40_Y33_N12
\vga_ctrl_inst|hsync_inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector2~0_combout\ = (!\vga_ctrl_inst|hsync_inst|etat.init~q\ & !\Switch1|r_Switch_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|etat.init~q\,
	datad => \Switch1|r_Switch_State~q\,
	combout => \vga_ctrl_inst|hsync_inst|Selector2~0_combout\);

-- Location: LCCOMB_X40_Y33_N0
\vga_ctrl_inst|hsync_inst|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector2~1_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector2~0_combout\ & (((!\vga_ctrl_inst|hsync_inst|etat.bp~q\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\)) # (!\vga_ctrl_inst|hsync_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Equal1~0_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\,
	datac => \vga_ctrl_inst|hsync_inst|etat.bp~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector2~0_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Selector2~1_combout\);

-- Location: FF_X40_Y33_N1
\vga_ctrl_inst|hsync_inst|etat.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|Selector2~1_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|etat.init~q\);

-- Location: LCCOMB_X40_Y33_N6
\vga_ctrl_inst|hsync_inst|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector3~2_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~1_combout\ & ((\vga_ctrl_inst|hsync_inst|etat.display~q\) # ((!\vga_ctrl_inst|hsync_inst|etat.init~q\ & \Switch1|r_Switch_State~q\)))) # 
-- (!\vga_ctrl_inst|hsync_inst|Selector3~1_combout\ & (!\vga_ctrl_inst|hsync_inst|etat.init~q\ & ((\Switch1|r_Switch_State~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Selector3~1_combout\,
	datab => \vga_ctrl_inst|hsync_inst|etat.init~q\,
	datac => \vga_ctrl_inst|hsync_inst|etat.display~q\,
	datad => \Switch1|r_Switch_State~q\,
	combout => \vga_ctrl_inst|hsync_inst|Selector3~2_combout\);

-- Location: FF_X40_Y33_N7
\vga_ctrl_inst|hsync_inst|etat.display\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|Selector3~2_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|etat.display~q\);

-- Location: LCCOMB_X44_Y31_N4
\vga_ctrl_inst|hsync_inst|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector4~0_combout\ = (\vga_ctrl_inst|hsync_inst|Equal0~10_combout\ & ((\vga_ctrl_inst|hsync_inst|etat.display~q\) # ((\vga_ctrl_inst|hsync_inst|etat.fp~q\ & !\vga_ctrl_inst|hsync_inst|Equal1~1_combout\)))) # 
-- (!\vga_ctrl_inst|hsync_inst|Equal0~10_combout\ & (((\vga_ctrl_inst|hsync_inst|etat.fp~q\ & !\vga_ctrl_inst|hsync_inst|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Equal0~10_combout\,
	datab => \vga_ctrl_inst|hsync_inst|etat.display~q\,
	datac => \vga_ctrl_inst|hsync_inst|etat.fp~q\,
	datad => \vga_ctrl_inst|hsync_inst|Equal1~1_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Selector4~0_combout\);

-- Location: FF_X44_Y31_N5
\vga_ctrl_inst|hsync_inst|etat.fp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|Selector4~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|etat.fp~q\);

-- Location: LCCOMB_X44_Y31_N10
\vga_ctrl_inst|hsync_inst|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector0~2_combout\ = (\vga_ctrl_inst|hsync_inst|etat.bp~q\) # ((\vga_ctrl_inst|hsync_inst|etat.fp~q\ & !\vga_ctrl_inst|hsync_inst|etat.Sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|etat.fp~q\,
	datac => \vga_ctrl_inst|hsync_inst|etat.bp~q\,
	datad => \vga_ctrl_inst|hsync_inst|etat.Sync~q\,
	combout => \vga_ctrl_inst|hsync_inst|Selector0~2_combout\);

-- Location: LCCOMB_X44_Y31_N8
\vga_ctrl_inst|hsync_inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector0~1_combout\ = (\vga_ctrl_inst|hsync_inst|etat.bp~q\) # (\vga_ctrl_inst|hsync_inst|etat.Sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|etat.bp~q\,
	datad => \vga_ctrl_inst|hsync_inst|etat.Sync~q\,
	combout => \vga_ctrl_inst|hsync_inst|Selector0~1_combout\);

-- Location: LCCOMB_X44_Y31_N12
\vga_ctrl_inst|hsync_inst|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector0~3_combout\ = (\vga_ctrl_inst|hsync_inst|Selector0~2_combout\ & (((!\vga_ctrl_inst|hsync_inst|Selector0~1_combout\)) # (!\vga_ctrl_inst|hsync_inst|Equal3~0_combout\))) # (!\vga_ctrl_inst|hsync_inst|Selector0~2_combout\ & 
-- (((\vga_ctrl_inst|hsync_inst|Selector0~1_combout\ & !\vga_ctrl_inst|hsync_inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Selector0~2_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Equal3~0_combout\,
	datac => \vga_ctrl_inst|hsync_inst|Selector0~1_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Equal2~0_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Selector0~3_combout\);

-- Location: LCCOMB_X44_Y31_N20
\vga_ctrl_inst|hsync_inst|Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector0~4_combout\ = (\vga_ctrl_inst|hsync_inst|Selector0~3_combout\ & ((\vga_ctrl_inst|hsync_inst|etat.bp~q\) # ((!\vga_ctrl_inst|hsync_inst|Equal1~1_combout\)))) # (!\vga_ctrl_inst|hsync_inst|Selector0~3_combout\ & 
-- (!\vga_ctrl_inst|hsync_inst|etat.bp~q\ & (!\vga_ctrl_inst|hsync_inst|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Selector0~3_combout\,
	datab => \vga_ctrl_inst|hsync_inst|etat.bp~q\,
	datac => \vga_ctrl_inst|hsync_inst|Equal0~10_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Equal1~1_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Selector0~4_combout\);

-- Location: LCCOMB_X44_Y31_N14
\vga_ctrl_inst|hsync_inst|Selector0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector0~5_combout\ = (\vga_ctrl_inst|hsync_inst|etat.Sync~q\ & (\vga_ctrl_inst|hsync_inst|Selector0~3_combout\)) # (!\vga_ctrl_inst|hsync_inst|etat.Sync~q\ & ((\vga_ctrl_inst|hsync_inst|Selector0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Selector0~3_combout\,
	datab => \vga_ctrl_inst|hsync_inst|etat.Sync~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~4_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Selector0~5_combout\);

-- Location: LCCOMB_X40_Y33_N30
\vga_ctrl_inst|hsync_inst|Selector0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector0~combout\ = (\vga_ctrl_inst|hsync_inst|etat.fp~q\ & (\vga_ctrl_inst|hsync_inst|Selector0~5_combout\)) # (!\vga_ctrl_inst|hsync_inst|etat.fp~q\ & ((\vga_ctrl_inst|hsync_inst|etat.display~q\ & 
-- (\vga_ctrl_inst|hsync_inst|Selector0~5_combout\)) # (!\vga_ctrl_inst|hsync_inst|etat.display~q\ & ((\vga_ctrl_inst|hsync_inst|Selector0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|etat.fp~q\,
	datab => \vga_ctrl_inst|hsync_inst|Selector0~5_combout\,
	datac => \vga_ctrl_inst|hsync_inst|Selector0~3_combout\,
	datad => \vga_ctrl_inst|hsync_inst|etat.display~q\,
	combout => \vga_ctrl_inst|hsync_inst|Selector0~combout\);

-- Location: LCCOMB_X41_Y34_N20
\vga_ctrl_inst|hsync_inst|cmp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~3_combout\ = (\vga_ctrl_inst|hsync_inst|Selector1~combout\) # ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (!\vga_ctrl_inst|hsync_inst|Add0~0_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~0_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[0]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~3_combout\);

-- Location: FF_X41_Y34_N21
\vga_ctrl_inst|hsync_inst|counter_process:cmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[0]~q\);

-- Location: LCCOMB_X38_Y34_N2
\vga_ctrl_inst|hsync_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~2_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[1]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~1\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[1]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~1\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~3\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~1\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[1]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~1\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~2_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~3\);

-- Location: LCCOMB_X40_Y34_N16
\vga_ctrl_inst|hsync_inst|cmp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~2_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~2_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~2_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[1]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~2_combout\);

-- Location: FF_X40_Y34_N17
\vga_ctrl_inst|hsync_inst|counter_process:cmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[1]~q\);

-- Location: LCCOMB_X38_Y34_N4
\vga_ctrl_inst|hsync_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~4_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[2]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~3\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[2]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~3\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~5\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[2]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[2]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~3\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~4_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~5\);

-- Location: LCCOMB_X41_Y34_N6
\vga_ctrl_inst|hsync_inst|cmp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~1_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~4_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~4_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[2]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~1_combout\);

-- Location: FF_X41_Y34_N7
\vga_ctrl_inst|hsync_inst|counter_process:cmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[2]~q\);

-- Location: LCCOMB_X38_Y34_N6
\vga_ctrl_inst|hsync_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~6_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[3]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~5\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[3]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~5\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~7\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~5\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[3]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~5\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~6_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~7\);

-- Location: LCCOMB_X41_Y34_N16
\vga_ctrl_inst|hsync_inst|cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~0_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~6_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~6_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[3]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~0_combout\);

-- Location: FF_X41_Y34_N17
\vga_ctrl_inst|hsync_inst|counter_process:cmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[3]~q\);

-- Location: LCCOMB_X38_Y34_N8
\vga_ctrl_inst|hsync_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~8_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~7\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~7\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~9\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~7\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~8_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~9\);

-- Location: LCCOMB_X40_Y34_N28
\vga_ctrl_inst|hsync_inst|cmp~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~28_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~8_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~8_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~28_combout\);

-- Location: FF_X40_Y34_N29
\vga_ctrl_inst|hsync_inst|counter_process:cmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\);

-- Location: LCCOMB_X38_Y34_N10
\vga_ctrl_inst|hsync_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~10_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~9\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~9\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~11\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~9\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~9\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~10_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~11\);

-- Location: LCCOMB_X40_Y34_N24
\vga_ctrl_inst|hsync_inst|cmp~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~31_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~10_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~10_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~31_combout\);

-- Location: FF_X40_Y34_N25
\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\);

-- Location: LCCOMB_X38_Y34_N12
\vga_ctrl_inst|hsync_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~12_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~11\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~11\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~13\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~11\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~12_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~13\);

-- Location: LCCOMB_X40_Y34_N6
\vga_ctrl_inst|hsync_inst|cmp~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~29_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~12_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~12_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~29_combout\);

-- Location: FF_X40_Y34_N7
\vga_ctrl_inst|hsync_inst|counter_process:cmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\);

-- Location: LCCOMB_X38_Y34_N14
\vga_ctrl_inst|hsync_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~14_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[7]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~13\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[7]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~13\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~15\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~13\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[7]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~13\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~14_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~15\);

-- Location: LCCOMB_X41_Y34_N26
\vga_ctrl_inst|hsync_inst|cmp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~4_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~14_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~14_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[7]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~4_combout\);

-- Location: FF_X41_Y34_N27
\vga_ctrl_inst|hsync_inst|counter_process:cmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[7]~q\);

-- Location: LCCOMB_X38_Y34_N16
\vga_ctrl_inst|hsync_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~16_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[8]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~15\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[8]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~15\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~17\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[8]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[8]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~15\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~16_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~17\);

-- Location: LCCOMB_X41_Y34_N28
\vga_ctrl_inst|hsync_inst|cmp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~5_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~16_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~16_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[8]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~5_combout\);

-- Location: FF_X41_Y34_N29
\vga_ctrl_inst|hsync_inst|counter_process:cmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[8]~q\);

-- Location: LCCOMB_X38_Y34_N18
\vga_ctrl_inst|hsync_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~18_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~17\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~17\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~19\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~17\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~17\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~18_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~19\);

-- Location: LCCOMB_X40_Y34_N20
\vga_ctrl_inst|hsync_inst|cmp~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~30_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~18_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~18_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~30_combout\);

-- Location: FF_X40_Y34_N21
\vga_ctrl_inst|hsync_inst|counter_process:cmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\);

-- Location: LCCOMB_X38_Y34_N20
\vga_ctrl_inst|hsync_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~20_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[10]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~19\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[10]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~19\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~21\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[10]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[10]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~19\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~20_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~21\);

-- Location: LCCOMB_X41_Y34_N18
\vga_ctrl_inst|hsync_inst|cmp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~6_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~20_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~20_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[10]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~6_combout\);

-- Location: FF_X41_Y34_N19
\vga_ctrl_inst|hsync_inst|counter_process:cmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[10]~q\);

-- Location: LCCOMB_X38_Y34_N22
\vga_ctrl_inst|hsync_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~22_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[11]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~21\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[11]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~21\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~23\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~21\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[11]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~21\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~22_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~23\);

-- Location: LCCOMB_X38_Y34_N24
\vga_ctrl_inst|hsync_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~24_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[12]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~23\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[12]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~23\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~25\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[12]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[12]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~23\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~24_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~25\);

-- Location: LCCOMB_X39_Y33_N0
\vga_ctrl_inst|hsync_inst|cmp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~8_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~24_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|Add0~24_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~8_combout\);

-- Location: LCCOMB_X40_Y33_N22
\vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\ = (\vga_ctrl_inst|hsync_inst|Selector0~combout\) # (\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\);

-- Location: FF_X39_Y33_N1
\vga_ctrl_inst|hsync_inst|counter_process:cmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~8_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[12]~q\);

-- Location: LCCOMB_X38_Y34_N26
\vga_ctrl_inst|hsync_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~26_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[13]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~25\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[13]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~25\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~27\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~25\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[13]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~25\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~26_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~27\);

-- Location: LCCOMB_X39_Y33_N26
\vga_ctrl_inst|hsync_inst|cmp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~9_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~26_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|Add0~26_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~9_combout\);

-- Location: FF_X39_Y33_N27
\vga_ctrl_inst|hsync_inst|counter_process:cmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~9_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[13]~q\);

-- Location: LCCOMB_X38_Y34_N28
\vga_ctrl_inst|hsync_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~28_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[14]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~27\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[14]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~27\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~29\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[14]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[14]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~27\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~28_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~29\);

-- Location: LCCOMB_X39_Y33_N24
\vga_ctrl_inst|hsync_inst|cmp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~10_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~28_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~28_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~10_combout\);

-- Location: FF_X39_Y33_N25
\vga_ctrl_inst|hsync_inst|counter_process:cmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~10_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[14]~q\);

-- Location: LCCOMB_X38_Y34_N30
\vga_ctrl_inst|hsync_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~30_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[15]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~29\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[15]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~29\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~31\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~29\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[15]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~29\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~30_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~31\);

-- Location: LCCOMB_X39_Y33_N18
\vga_ctrl_inst|hsync_inst|cmp~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~11_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~30_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~30_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~11_combout\);

-- Location: FF_X39_Y33_N19
\vga_ctrl_inst|hsync_inst|counter_process:cmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~11_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[15]~q\);

-- Location: LCCOMB_X39_Y33_N12
\vga_ctrl_inst|hsync_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal0~2_combout\ = (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[14]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[12]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[13]~q\ & 
-- !\vga_ctrl_inst|hsync_inst|counter_process:cmp[15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[14]~q\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[12]~q\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[13]~q\,
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[15]~q\,
	combout => \vga_ctrl_inst|hsync_inst|Equal0~2_combout\);

-- Location: LCCOMB_X38_Y33_N0
\vga_ctrl_inst|hsync_inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~32_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[16]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~31\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[16]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~31\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~33\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[16]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[16]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~31\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~32_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~33\);

-- Location: LCCOMB_X39_Y33_N22
\vga_ctrl_inst|hsync_inst|cmp~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~12_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~32_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|Add0~32_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~12_combout\);

-- Location: FF_X39_Y33_N23
\vga_ctrl_inst|hsync_inst|counter_process:cmp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~12_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[16]~q\);

-- Location: LCCOMB_X38_Y33_N2
\vga_ctrl_inst|hsync_inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~34_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[17]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~33\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[17]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~33\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~35\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~33\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[17]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~33\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~34_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~35\);

-- Location: LCCOMB_X39_Y33_N4
\vga_ctrl_inst|hsync_inst|cmp~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~13_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~34_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~34_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~13_combout\);

-- Location: FF_X39_Y33_N5
\vga_ctrl_inst|hsync_inst|counter_process:cmp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~13_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[17]~q\);

-- Location: LCCOMB_X38_Y33_N4
\vga_ctrl_inst|hsync_inst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~36_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~35\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~35\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~37\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~35\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~36_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~37\);

-- Location: LCCOMB_X39_Y33_N16
\vga_ctrl_inst|hsync_inst|cmp~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~14_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~36_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|Add0~36_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~14_combout\);

-- Location: FF_X40_Y33_N23
\vga_ctrl_inst|hsync_inst|counter_process:cmp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga_ctrl_inst|hsync_inst|cmp~14_combout\,
	sload => VCC,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~q\);

-- Location: LCCOMB_X38_Y33_N6
\vga_ctrl_inst|hsync_inst|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~38_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[19]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~37\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[19]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~37\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~39\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~37\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[19]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~37\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~38_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~39\);

-- Location: LCCOMB_X39_Y33_N30
\vga_ctrl_inst|hsync_inst|cmp~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~15_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~38_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|Add0~38_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~15_combout\);

-- Location: FF_X39_Y33_N31
\vga_ctrl_inst|hsync_inst|counter_process:cmp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~15_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[19]~q\);

-- Location: LCCOMB_X39_Y33_N20
\vga_ctrl_inst|hsync_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal0~3_combout\ = (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[19]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[17]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[16]~q\ & 
-- !\vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[19]~q\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[17]~q\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[16]~q\,
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~q\,
	combout => \vga_ctrl_inst|hsync_inst|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y34_N30
\vga_ctrl_inst|hsync_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal0~0_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[2]~q\ & (\vga_ctrl_inst|hsync_inst|counter_process:cmp[1]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[0]~q\ & 
-- \vga_ctrl_inst|hsync_inst|counter_process:cmp[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[2]~q\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[1]~q\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[0]~q\,
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[3]~q\,
	combout => \vga_ctrl_inst|hsync_inst|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y34_N2
\vga_ctrl_inst|hsync_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal0~1_combout\ = (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[11]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[8]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[7]~q\ & 
-- !\vga_ctrl_inst|hsync_inst|counter_process:cmp[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[11]~q\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[8]~q\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[7]~q\,
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[10]~q\,
	combout => \vga_ctrl_inst|hsync_inst|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y33_N10
\vga_ctrl_inst|hsync_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal0~4_combout\ = (\vga_ctrl_inst|hsync_inst|Equal0~2_combout\ & (\vga_ctrl_inst|hsync_inst|Equal0~3_combout\ & (\vga_ctrl_inst|hsync_inst|Equal0~0_combout\ & \vga_ctrl_inst|hsync_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Equal0~2_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Equal0~3_combout\,
	datac => \vga_ctrl_inst|hsync_inst|Equal0~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Equal0~1_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Equal0~4_combout\);

-- Location: LCCOMB_X38_Y33_N8
\vga_ctrl_inst|hsync_inst|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~40_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[20]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~39\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[20]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~39\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~41\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[20]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[20]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~39\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~40_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~41\);

-- Location: LCCOMB_X39_Y33_N28
\vga_ctrl_inst|hsync_inst|cmp~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~16_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~40_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~40_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~16_combout\);

-- Location: FF_X39_Y33_N29
\vga_ctrl_inst|hsync_inst|counter_process:cmp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~16_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[20]~q\);

-- Location: LCCOMB_X38_Y33_N10
\vga_ctrl_inst|hsync_inst|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~42_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[21]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~41\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[21]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~41\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~43\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~41\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[21]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~41\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~42_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~43\);

-- Location: LCCOMB_X40_Y33_N28
\vga_ctrl_inst|hsync_inst|cmp~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~17_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~42_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~42_combout\,
	datac => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~17_combout\);

-- Location: FF_X40_Y33_N29
\vga_ctrl_inst|hsync_inst|counter_process:cmp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~17_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[21]~q\);

-- Location: LCCOMB_X38_Y33_N12
\vga_ctrl_inst|hsync_inst|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~44_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[22]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~43\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[22]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~43\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~45\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[22]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[22]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~43\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~44_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~45\);

-- Location: LCCOMB_X39_Y33_N6
\vga_ctrl_inst|hsync_inst|cmp~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~18_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~44_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~44_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~18_combout\);

-- Location: FF_X40_Y33_N13
\vga_ctrl_inst|hsync_inst|counter_process:cmp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga_ctrl_inst|hsync_inst|cmp~18_combout\,
	sload => VCC,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[22]~q\);

-- Location: LCCOMB_X38_Y33_N14
\vga_ctrl_inst|hsync_inst|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~46_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[23]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~45\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[23]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~45\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~47\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~45\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[23]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~45\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~46_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~47\);

-- Location: LCCOMB_X40_Y33_N14
\vga_ctrl_inst|hsync_inst|cmp~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~19_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & \vga_ctrl_inst|hsync_inst|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|Add0~46_combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~19_combout\);

-- Location: FF_X40_Y33_N15
\vga_ctrl_inst|hsync_inst|counter_process:cmp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~19_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[23]~q\);

-- Location: LCCOMB_X39_Y33_N14
\vga_ctrl_inst|hsync_inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal0~5_combout\ = (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[20]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[22]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[23]~q\ & 
-- !\vga_ctrl_inst|hsync_inst|counter_process:cmp[21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[20]~q\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[22]~q\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[23]~q\,
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[21]~q\,
	combout => \vga_ctrl_inst|hsync_inst|Equal0~5_combout\);

-- Location: LCCOMB_X38_Y33_N16
\vga_ctrl_inst|hsync_inst|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~48_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[24]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~47\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[24]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~47\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~49\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[24]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[24]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~47\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~48_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~49\);

-- Location: LCCOMB_X40_Y33_N26
\vga_ctrl_inst|hsync_inst|cmp~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~20_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~48_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|Add0~48_combout\,
	datac => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~20_combout\);

-- Location: FF_X40_Y33_N27
\vga_ctrl_inst|hsync_inst|counter_process:cmp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~20_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[24]~q\);

-- Location: LCCOMB_X38_Y33_N18
\vga_ctrl_inst|hsync_inst|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~50_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[25]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~49\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[25]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~49\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~51\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~49\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[25]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~49\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~50_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~51\);

-- Location: LCCOMB_X40_Y33_N20
\vga_ctrl_inst|hsync_inst|cmp~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~21_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & \vga_ctrl_inst|hsync_inst|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|Add0~50_combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~21_combout\);

-- Location: FF_X40_Y33_N21
\vga_ctrl_inst|hsync_inst|counter_process:cmp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~21_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[25]~q\);

-- Location: LCCOMB_X38_Y33_N20
\vga_ctrl_inst|hsync_inst|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~52_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[26]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~51\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[26]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~51\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~53\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[26]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[26]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~51\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~52_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~53\);

-- Location: LCCOMB_X40_Y33_N10
\vga_ctrl_inst|hsync_inst|cmp~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~22_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & \vga_ctrl_inst|hsync_inst|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datad => \vga_ctrl_inst|hsync_inst|Add0~52_combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~22_combout\);

-- Location: FF_X40_Y33_N11
\vga_ctrl_inst|hsync_inst|counter_process:cmp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~22_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[26]~q\);

-- Location: LCCOMB_X38_Y33_N22
\vga_ctrl_inst|hsync_inst|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~54_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[27]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~53\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[27]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~53\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~55\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~53\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[27]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~53\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~54_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~55\);

-- Location: LCCOMB_X40_Y33_N18
\vga_ctrl_inst|hsync_inst|cmp~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~23_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~54_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|Add0~54_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~23_combout\);

-- Location: FF_X40_Y33_N19
\vga_ctrl_inst|hsync_inst|counter_process:cmp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~23_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[27]~q\);

-- Location: LCCOMB_X39_Y33_N8
\vga_ctrl_inst|hsync_inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal0~6_combout\ = (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[25]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[27]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[26]~q\ & 
-- !\vga_ctrl_inst|hsync_inst|counter_process:cmp[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[25]~q\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[27]~q\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[26]~q\,
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[24]~q\,
	combout => \vga_ctrl_inst|hsync_inst|Equal0~6_combout\);

-- Location: LCCOMB_X38_Y33_N24
\vga_ctrl_inst|hsync_inst|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~56_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[28]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~55\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[28]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~55\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~57\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[28]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[28]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~55\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~56_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~57\);

-- Location: LCCOMB_X40_Y33_N16
\vga_ctrl_inst|hsync_inst|cmp~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~25_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~56_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|Add0~56_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~25_combout\);

-- Location: FF_X40_Y33_N17
\vga_ctrl_inst|hsync_inst|counter_process:cmp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~25_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[28]~q\);

-- Location: LCCOMB_X38_Y33_N26
\vga_ctrl_inst|hsync_inst|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~58_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[29]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~57\)) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[29]~q\ & ((\vga_ctrl_inst|hsync_inst|Add0~57\) # (GND)))
-- \vga_ctrl_inst|hsync_inst|Add0~59\ = CARRY((!\vga_ctrl_inst|hsync_inst|Add0~57\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[29]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~57\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~58_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~59\);

-- Location: LCCOMB_X40_Y33_N4
\vga_ctrl_inst|hsync_inst|cmp~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~26_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~58_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|Add0~58_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~26_combout\);

-- Location: FF_X40_Y33_N5
\vga_ctrl_inst|hsync_inst|counter_process:cmp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~26_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[29]~q\);

-- Location: LCCOMB_X38_Y33_N28
\vga_ctrl_inst|hsync_inst|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~60_combout\ = (\vga_ctrl_inst|hsync_inst|counter_process:cmp[30]~q\ & (\vga_ctrl_inst|hsync_inst|Add0~59\ $ (GND))) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[30]~q\ & (!\vga_ctrl_inst|hsync_inst|Add0~59\ & VCC))
-- \vga_ctrl_inst|hsync_inst|Add0~61\ = CARRY((\vga_ctrl_inst|hsync_inst|counter_process:cmp[30]~q\ & !\vga_ctrl_inst|hsync_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[30]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|hsync_inst|Add0~59\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~60_combout\,
	cout => \vga_ctrl_inst|hsync_inst|Add0~61\);

-- Location: LCCOMB_X40_Y33_N8
\vga_ctrl_inst|hsync_inst|cmp~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~27_combout\ = (\vga_ctrl_inst|hsync_inst|Add0~60_combout\ & !\vga_ctrl_inst|hsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|Add0~60_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~27_combout\);

-- Location: FF_X40_Y33_N9
\vga_ctrl_inst|hsync_inst|counter_process:cmp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~27_combout\,
	ena => \vga_ctrl_inst|hsync_inst|counter_process:cmp[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[30]~q\);

-- Location: LCCOMB_X38_Y33_N30
\vga_ctrl_inst|hsync_inst|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Add0~62_combout\ = \vga_ctrl_inst|hsync_inst|Add0~61\ $ (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[31]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[31]~q\,
	cin => \vga_ctrl_inst|hsync_inst|Add0~61\,
	combout => \vga_ctrl_inst|hsync_inst|Add0~62_combout\);

-- Location: LCCOMB_X41_Y33_N24
\vga_ctrl_inst|hsync_inst|cmp~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~24_combout\ = (\vga_ctrl_inst|hsync_inst|Selector1~combout\) # ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (!\vga_ctrl_inst|hsync_inst|Add0~62_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datab => \vga_ctrl_inst|hsync_inst|Add0~62_combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[31]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~24_combout\);

-- Location: FF_X41_Y33_N25
\vga_ctrl_inst|hsync_inst|counter_process:cmp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[31]~q\);

-- Location: LCCOMB_X41_Y33_N26
\vga_ctrl_inst|hsync_inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal0~7_combout\ = (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[28]~q\ & (\vga_ctrl_inst|hsync_inst|counter_process:cmp[31]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[29]~q\ & 
-- !\vga_ctrl_inst|hsync_inst|counter_process:cmp[30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[28]~q\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[31]~q\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[29]~q\,
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[30]~q\,
	combout => \vga_ctrl_inst|hsync_inst|Equal0~7_combout\);

-- Location: LCCOMB_X39_Y33_N2
\vga_ctrl_inst|hsync_inst|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal0~8_combout\ = (\vga_ctrl_inst|hsync_inst|Equal0~4_combout\ & (\vga_ctrl_inst|hsync_inst|Equal0~5_combout\ & (\vga_ctrl_inst|hsync_inst|Equal0~6_combout\ & \vga_ctrl_inst|hsync_inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Equal0~4_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Equal0~5_combout\,
	datac => \vga_ctrl_inst|hsync_inst|Equal0~6_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Equal0~7_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Equal0~8_combout\);

-- Location: LCCOMB_X40_Y34_N22
\vga_ctrl_inst|hsync_inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal1~0_combout\ = (\vga_ctrl_inst|hsync_inst|Equal0~8_combout\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\ & (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\ & 
-- !\vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Equal0~8_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\,
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\,
	combout => \vga_ctrl_inst|hsync_inst|Equal1~0_combout\);

-- Location: LCCOMB_X44_Y31_N6
\vga_ctrl_inst|hsync_inst|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Equal1~1_combout\ = (\vga_ctrl_inst|hsync_inst|Equal1~0_combout\ & !\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|Equal1~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\,
	combout => \vga_ctrl_inst|hsync_inst|Equal1~1_combout\);

-- Location: LCCOMB_X44_Y31_N30
\vga_ctrl_inst|hsync_inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector1~0_combout\ = (\vga_ctrl_inst|hsync_inst|Selector0~2_combout\ & (\vga_ctrl_inst|hsync_inst|Equal3~0_combout\ & (\vga_ctrl_inst|hsync_inst|Selector0~1_combout\))) # (!\vga_ctrl_inst|hsync_inst|Selector0~2_combout\ & 
-- (((\vga_ctrl_inst|hsync_inst|Equal2~0_combout\) # (!\vga_ctrl_inst|hsync_inst|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Selector0~2_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Equal3~0_combout\,
	datac => \vga_ctrl_inst|hsync_inst|Selector0~1_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Equal2~0_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Selector1~0_combout\);

-- Location: LCCOMB_X40_Y33_N24
\vga_ctrl_inst|hsync_inst|Selector0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector0~6_combout\ = (!\vga_ctrl_inst|hsync_inst|etat.Sync~q\ & (!\vga_ctrl_inst|hsync_inst|etat.bp~q\ & ((\vga_ctrl_inst|hsync_inst|etat.fp~q\) # (\vga_ctrl_inst|hsync_inst|etat.display~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|etat.fp~q\,
	datab => \vga_ctrl_inst|hsync_inst|etat.Sync~q\,
	datac => \vga_ctrl_inst|hsync_inst|etat.bp~q\,
	datad => \vga_ctrl_inst|hsync_inst|etat.display~q\,
	combout => \vga_ctrl_inst|hsync_inst|Selector0~6_combout\);

-- Location: LCCOMB_X40_Y33_N2
\vga_ctrl_inst|hsync_inst|Selector1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector1~combout\ = (\vga_ctrl_inst|hsync_inst|Selector1~0_combout\ & (((\vga_ctrl_inst|hsync_inst|Equal0~10_combout\) # (!\vga_ctrl_inst|hsync_inst|Selector0~6_combout\)))) # (!\vga_ctrl_inst|hsync_inst|Selector1~0_combout\ & 
-- (\vga_ctrl_inst|hsync_inst|Equal1~1_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Equal1~1_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Equal0~10_combout\,
	datac => \vga_ctrl_inst|hsync_inst|Selector1~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~6_combout\,
	combout => \vga_ctrl_inst|hsync_inst|Selector1~combout\);

-- Location: LCCOMB_X41_Y34_N12
\vga_ctrl_inst|hsync_inst|cmp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|cmp~7_combout\ = (!\vga_ctrl_inst|hsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~22_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~22_combout\,
	datab => \vga_ctrl_inst|hsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[11]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|cmp~7_combout\);

-- Location: FF_X41_Y34_N13
\vga_ctrl_inst|hsync_inst|counter_process:cmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|cmp~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|counter_process:cmp[11]~q\);

-- Location: LCCOMB_X40_Y34_N8
\vga_ctrl_inst|hsync_inst|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|Selector3~0_combout\ = (\vga_ctrl_inst|hsync_inst|etat.display~q\ & (((!\vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\)) # 
-- (!\vga_ctrl_inst|hsync_inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Equal0~9_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\,
	datac => \vga_ctrl_inst|hsync_inst|etat.display~q\,
	datad => \vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\,
	combout => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\);

-- Location: LCCOMB_X41_Y34_N4
\vga_ctrl_inst|hsync_inst|x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|x~0_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~22_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~22_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[11]~q\,
	datac => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|x~0_combout\);

-- Location: FF_X41_Y34_N5
\vga_ctrl_inst|hsync_inst|x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|x~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|x\(11));

-- Location: LCCOMB_X41_Y34_N30
\vga_ctrl_inst|hsync_inst|x~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|x~1_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~20_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~20_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[10]~q\,
	datac => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|x~1_combout\);

-- Location: FF_X41_Y34_N31
\vga_ctrl_inst|hsync_inst|x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|x~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|x\(10));

-- Location: LCCOMB_X40_Y34_N0
\vga_ctrl_inst|hsync_inst|x~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|x~2_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~18_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~18_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[9]~q\,
	datac => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|x~2_combout\);

-- Location: FF_X40_Y34_N1
\vga_ctrl_inst|hsync_inst|x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|x\(9));

-- Location: LCCOMB_X41_Y34_N0
\vga_ctrl_inst|hsync_inst|x~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|x~3_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~16_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~16_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[8]~q\,
	datac => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|x~3_combout\);

-- Location: FF_X41_Y34_N1
\vga_ctrl_inst|hsync_inst|x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|x~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|x\(8));

-- Location: LCCOMB_X41_Y34_N10
\vga_ctrl_inst|hsync_inst|x~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|x~4_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & ((\vga_ctrl_inst|hsync_inst|Add0~14_combout\))) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- (\vga_ctrl_inst|hsync_inst|counter_process:cmp[7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[7]~q\,
	datab => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\,
	datac => \vga_ctrl_inst|hsync_inst|Add0~14_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|x~4_combout\);

-- Location: FF_X41_Y34_N11
\vga_ctrl_inst|hsync_inst|x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|x~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|x\(7));

-- Location: LCCOMB_X40_Y34_N2
\vga_ctrl_inst|hsync_inst|x~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|x~5_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & ((\vga_ctrl_inst|hsync_inst|Add0~12_combout\))) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- (\vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|counter_process:cmp[6]~q\,
	datab => \vga_ctrl_inst|hsync_inst|Add0~12_combout\,
	datac => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|x~5_combout\);

-- Location: FF_X40_Y34_N3
\vga_ctrl_inst|hsync_inst|x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|x~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|x\(6));

-- Location: LCCOMB_X40_Y34_N12
\vga_ctrl_inst|hsync_inst|x~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|x~6_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~10_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~10_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\,
	datac => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|x~6_combout\);

-- Location: FF_X40_Y34_N13
\vga_ctrl_inst|hsync_inst|x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|x~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|x\(5));

-- Location: LCCOMB_X40_Y34_N14
\vga_ctrl_inst|hsync_inst|x~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|x~7_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~8_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~8_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[4]~q\,
	datac => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|x~7_combout\);

-- Location: FF_X40_Y34_N15
\vga_ctrl_inst|hsync_inst|x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|x~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|x\(4));

-- Location: LCCOMB_X41_Y34_N24
\vga_ctrl_inst|hsync_inst|x~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|x~8_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~6_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~6_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[3]~q\,
	datac => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|x~8_combout\);

-- Location: FF_X41_Y34_N25
\vga_ctrl_inst|hsync_inst|x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|x~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|x\(3));

-- Location: LCCOMB_X41_Y34_N14
\vga_ctrl_inst|hsync_inst|x~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|x~9_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~4_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~4_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[2]~q\,
	datac => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|x~9_combout\);

-- Location: FF_X41_Y34_N15
\vga_ctrl_inst|hsync_inst|x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|x~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|x\(2));

-- Location: LCCOMB_X41_Y34_N8
\vga_ctrl_inst|hsync_inst|x~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|x~10_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~2_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((\vga_ctrl_inst|hsync_inst|counter_process:cmp[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~2_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[1]~q\,
	datac => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|x~10_combout\);

-- Location: FF_X41_Y34_N9
\vga_ctrl_inst|hsync_inst|x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|x~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|x\(1));

-- Location: LCCOMB_X41_Y34_N22
\vga_ctrl_inst|hsync_inst|x~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hsync_inst|x~11_combout\ = (\vga_ctrl_inst|hsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|hsync_inst|Selector0~combout\ & (\vga_ctrl_inst|hsync_inst|Add0~0_combout\)) # (!\vga_ctrl_inst|hsync_inst|Selector0~combout\ & 
-- ((!\vga_ctrl_inst|hsync_inst|counter_process:cmp[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Add0~0_combout\,
	datab => \vga_ctrl_inst|hsync_inst|counter_process:cmp[0]~q\,
	datac => \vga_ctrl_inst|hsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|hsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|hsync_inst|x~11_combout\);

-- Location: FF_X41_Y34_N23
\vga_ctrl_inst|hsync_inst|x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|hsync_inst|x~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|hsync_inst|x\(0));

-- Location: LCCOMB_X44_Y35_N4
\affiche_obj_inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan1~1_cout\ = CARRY((\movement_ctrl_inst|x_ball\(0) & !\vga_ctrl_inst|hsync_inst|x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(0),
	datab => \vga_ctrl_inst|hsync_inst|x\(0),
	datad => VCC,
	cout => \affiche_obj_inst|LessThan1~1_cout\);

-- Location: LCCOMB_X44_Y35_N6
\affiche_obj_inst|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan1~3_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(1) & ((!\affiche_obj_inst|LessThan1~1_cout\) # (!\movement_ctrl_inst|x_ball\(1)))) # (!\vga_ctrl_inst|hsync_inst|x\(1) & (!\movement_ctrl_inst|x_ball\(1) & 
-- !\affiche_obj_inst|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(1),
	datab => \movement_ctrl_inst|x_ball\(1),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan1~1_cout\,
	cout => \affiche_obj_inst|LessThan1~3_cout\);

-- Location: LCCOMB_X44_Y35_N8
\affiche_obj_inst|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan1~5_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(2) & (\movement_ctrl_inst|x_ball\(2) & !\affiche_obj_inst|LessThan1~3_cout\)) # (!\vga_ctrl_inst|hsync_inst|x\(2) & ((\movement_ctrl_inst|x_ball\(2)) # 
-- (!\affiche_obj_inst|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(2),
	datab => \movement_ctrl_inst|x_ball\(2),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan1~3_cout\,
	cout => \affiche_obj_inst|LessThan1~5_cout\);

-- Location: LCCOMB_X44_Y35_N10
\affiche_obj_inst|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan1~7_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(3) & ((\movement_ctrl_inst|x_ball\(3)) # (!\affiche_obj_inst|LessThan1~5_cout\))) # (!\vga_ctrl_inst|hsync_inst|x\(3) & (\movement_ctrl_inst|x_ball\(3) & 
-- !\affiche_obj_inst|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(3),
	datab => \movement_ctrl_inst|x_ball\(3),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan1~5_cout\,
	cout => \affiche_obj_inst|LessThan1~7_cout\);

-- Location: LCCOMB_X44_Y35_N12
\affiche_obj_inst|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan1~9_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(4) & (\affiche_obj_inst|Add0~0_combout\ & !\affiche_obj_inst|LessThan1~7_cout\)) # (!\vga_ctrl_inst|hsync_inst|x\(4) & ((\affiche_obj_inst|Add0~0_combout\) # 
-- (!\affiche_obj_inst|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(4),
	datab => \affiche_obj_inst|Add0~0_combout\,
	datad => VCC,
	cin => \affiche_obj_inst|LessThan1~7_cout\,
	cout => \affiche_obj_inst|LessThan1~9_cout\);

-- Location: LCCOMB_X44_Y35_N14
\affiche_obj_inst|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan1~11_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(5) & ((!\affiche_obj_inst|LessThan1~9_cout\) # (!\affiche_obj_inst|Add0~2_combout\))) # (!\vga_ctrl_inst|hsync_inst|x\(5) & (!\affiche_obj_inst|Add0~2_combout\ & 
-- !\affiche_obj_inst|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(5),
	datab => \affiche_obj_inst|Add0~2_combout\,
	datad => VCC,
	cin => \affiche_obj_inst|LessThan1~9_cout\,
	cout => \affiche_obj_inst|LessThan1~11_cout\);

-- Location: LCCOMB_X44_Y35_N16
\affiche_obj_inst|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan1~13_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(6) & (\affiche_obj_inst|Add0~4_combout\ & !\affiche_obj_inst|LessThan1~11_cout\)) # (!\vga_ctrl_inst|hsync_inst|x\(6) & ((\affiche_obj_inst|Add0~4_combout\) # 
-- (!\affiche_obj_inst|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(6),
	datab => \affiche_obj_inst|Add0~4_combout\,
	datad => VCC,
	cin => \affiche_obj_inst|LessThan1~11_cout\,
	cout => \affiche_obj_inst|LessThan1~13_cout\);

-- Location: LCCOMB_X44_Y35_N18
\affiche_obj_inst|LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan1~15_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(7) & ((!\affiche_obj_inst|LessThan1~13_cout\) # (!\affiche_obj_inst|Add0~6_combout\))) # (!\vga_ctrl_inst|hsync_inst|x\(7) & (!\affiche_obj_inst|Add0~6_combout\ & 
-- !\affiche_obj_inst|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(7),
	datab => \affiche_obj_inst|Add0~6_combout\,
	datad => VCC,
	cin => \affiche_obj_inst|LessThan1~13_cout\,
	cout => \affiche_obj_inst|LessThan1~15_cout\);

-- Location: LCCOMB_X44_Y35_N20
\affiche_obj_inst|LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan1~17_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(8) & (\affiche_obj_inst|Add0~8_combout\ & !\affiche_obj_inst|LessThan1~15_cout\)) # (!\vga_ctrl_inst|hsync_inst|x\(8) & ((\affiche_obj_inst|Add0~8_combout\) # 
-- (!\affiche_obj_inst|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(8),
	datab => \affiche_obj_inst|Add0~8_combout\,
	datad => VCC,
	cin => \affiche_obj_inst|LessThan1~15_cout\,
	cout => \affiche_obj_inst|LessThan1~17_cout\);

-- Location: LCCOMB_X44_Y35_N22
\affiche_obj_inst|LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan1~19_cout\ = CARRY((\affiche_obj_inst|Add0~10_combout\ & (\vga_ctrl_inst|hsync_inst|x\(9) & !\affiche_obj_inst|LessThan1~17_cout\)) # (!\affiche_obj_inst|Add0~10_combout\ & ((\vga_ctrl_inst|hsync_inst|x\(9)) # 
-- (!\affiche_obj_inst|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add0~10_combout\,
	datab => \vga_ctrl_inst|hsync_inst|x\(9),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan1~17_cout\,
	cout => \affiche_obj_inst|LessThan1~19_cout\);

-- Location: LCCOMB_X44_Y35_N24
\affiche_obj_inst|LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan1~21_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(10) & (\affiche_obj_inst|Add0~12_combout\ & !\affiche_obj_inst|LessThan1~19_cout\)) # (!\vga_ctrl_inst|hsync_inst|x\(10) & ((\affiche_obj_inst|Add0~12_combout\) # 
-- (!\affiche_obj_inst|LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(10),
	datab => \affiche_obj_inst|Add0~12_combout\,
	datad => VCC,
	cin => \affiche_obj_inst|LessThan1~19_cout\,
	cout => \affiche_obj_inst|LessThan1~21_cout\);

-- Location: LCCOMB_X44_Y35_N26
\affiche_obj_inst|LessThan1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan1~22_combout\ = (\vga_ctrl_inst|hsync_inst|x\(11) & (\affiche_obj_inst|LessThan1~21_cout\ & \affiche_obj_inst|Add0~14_combout\)) # (!\vga_ctrl_inst|hsync_inst|x\(11) & ((\affiche_obj_inst|LessThan1~21_cout\) # 
-- (\affiche_obj_inst|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(11),
	datad => \affiche_obj_inst|Add0~14_combout\,
	cin => \affiche_obj_inst|LessThan1~21_cout\,
	combout => \affiche_obj_inst|LessThan1~22_combout\);

-- Location: LCCOMB_X39_Y31_N16
\vga_ctrl_inst|vsync_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~16_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~15\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~15\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~17\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~15\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~16_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~17\);

-- Location: LCCOMB_X39_Y31_N18
\vga_ctrl_inst|vsync_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~18_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~17\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~17\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~19\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~17\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~17\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~18_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~19\);

-- Location: LCCOMB_X40_Y29_N0
\vga_ctrl_inst|vsync_inst|cmp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~5_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]~q\)) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- ((\vga_ctrl_inst|vsync_inst|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datab => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]~q\,
	datad => \vga_ctrl_inst|vsync_inst|Add0~18_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~5_combout\);

-- Location: FF_X40_Y29_N1
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]~q\);

-- Location: LCCOMB_X39_Y31_N20
\vga_ctrl_inst|vsync_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~20_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~19\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~19\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~21\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~19\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~20_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~21\);

-- Location: LCCOMB_X40_Y29_N10
\vga_ctrl_inst|vsync_inst|cmp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~6_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Add0~20_combout\,
	datab => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]~q\,
	datad => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~6_combout\);

-- Location: FF_X40_Y29_N11
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]~q\);

-- Location: LCCOMB_X39_Y31_N22
\vga_ctrl_inst|vsync_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~22_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~21\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~21\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~23\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~21\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~21\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~22_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~23\);

-- Location: LCCOMB_X39_Y31_N24
\vga_ctrl_inst|vsync_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~24_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[12]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~23\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[12]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~23\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~25\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[12]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[12]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~23\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~24_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~25\);

-- Location: LCCOMB_X39_Y29_N20
\vga_ctrl_inst|vsync_inst|cmp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~8_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|vsync_inst|Add0~24_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~8_combout\);

-- Location: LCCOMB_X40_Y30_N24
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\ = (\vga_ctrl_inst|vsync_inst|Selector1~combout\) # ((\vga_ctrl_inst|hsync_inst|Equal3~0_combout\ & (\vga_ctrl_inst|hsync_inst|etat.bp~q\ & \vga_ctrl_inst|vsync_inst|Selector0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|Equal3~0_combout\,
	datab => \vga_ctrl_inst|hsync_inst|etat.bp~q\,
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datad => \vga_ctrl_inst|vsync_inst|Selector0~combout\,
	combout => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\);

-- Location: FF_X39_Y29_N21
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~8_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[12]~q\);

-- Location: LCCOMB_X39_Y31_N26
\vga_ctrl_inst|vsync_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~26_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[13]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~25\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[13]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~25\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~27\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~25\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[13]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~25\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~26_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~27\);

-- Location: LCCOMB_X39_Y29_N30
\vga_ctrl_inst|vsync_inst|cmp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~9_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|vsync_inst|Add0~26_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~9_combout\);

-- Location: FF_X39_Y29_N31
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~9_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[13]~q\);

-- Location: LCCOMB_X39_Y31_N28
\vga_ctrl_inst|vsync_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~28_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[14]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~27\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[14]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~27\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~29\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[14]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[14]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~27\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~28_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~29\);

-- Location: LCCOMB_X39_Y29_N16
\vga_ctrl_inst|vsync_inst|cmp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~10_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datad => \vga_ctrl_inst|vsync_inst|Add0~28_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~10_combout\);

-- Location: FF_X39_Y29_N17
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~10_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[14]~q\);

-- Location: LCCOMB_X39_Y31_N30
\vga_ctrl_inst|vsync_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~30_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[15]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~29\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[15]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~29\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~31\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~29\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[15]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~29\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~30_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~31\);

-- Location: LCCOMB_X39_Y29_N24
\vga_ctrl_inst|vsync_inst|cmp~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~11_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|vsync_inst|Add0~30_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~11_combout\);

-- Location: FF_X39_Y29_N25
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~11_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[15]~q\);

-- Location: LCCOMB_X39_Y30_N0
\vga_ctrl_inst|vsync_inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~32_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[16]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~31\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[16]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~31\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~33\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[16]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[16]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~31\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~32_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~33\);

-- Location: LCCOMB_X39_Y29_N2
\vga_ctrl_inst|vsync_inst|cmp~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~12_combout\ = (\vga_ctrl_inst|vsync_inst|Add0~32_combout\ & !\vga_ctrl_inst|vsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|Add0~32_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~12_combout\);

-- Location: FF_X39_Y29_N3
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~12_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[16]~q\);

-- Location: LCCOMB_X39_Y30_N2
\vga_ctrl_inst|vsync_inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~34_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[17]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~33\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[17]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~33\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~35\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~33\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[17]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~33\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~34_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~35\);

-- Location: LCCOMB_X39_Y29_N8
\vga_ctrl_inst|vsync_inst|cmp~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~13_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|vsync_inst|Add0~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~13_combout\);

-- Location: FF_X39_Y29_N9
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~13_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[17]~q\);

-- Location: LCCOMB_X39_Y30_N4
\vga_ctrl_inst|vsync_inst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~36_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[18]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~35\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[18]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~35\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~37\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[18]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[18]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~35\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~36_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~37\);

-- Location: LCCOMB_X40_Y30_N12
\vga_ctrl_inst|vsync_inst|cmp~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~14_combout\ = (\vga_ctrl_inst|vsync_inst|Add0~36_combout\ & !\vga_ctrl_inst|vsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|Add0~36_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~14_combout\);

-- Location: FF_X40_Y30_N13
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~14_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[18]~q\);

-- Location: LCCOMB_X39_Y30_N6
\vga_ctrl_inst|vsync_inst|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~38_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[19]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~37\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[19]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~37\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~39\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~37\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[19]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~37\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~38_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~39\);

-- Location: LCCOMB_X39_Y29_N12
\vga_ctrl_inst|vsync_inst|cmp~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~15_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|vsync_inst|Add0~38_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~15_combout\);

-- Location: FF_X39_Y29_N13
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~15_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[19]~q\);

-- Location: LCCOMB_X39_Y30_N8
\vga_ctrl_inst|vsync_inst|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~40_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~39\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~39\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~41\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~39\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~40_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~41\);

-- Location: LCCOMB_X39_Y29_N10
\vga_ctrl_inst|vsync_inst|cmp~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~16_combout\ = (\vga_ctrl_inst|vsync_inst|Add0~40_combout\ & !\vga_ctrl_inst|vsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|Add0~40_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~16_combout\);

-- Location: FF_X39_Y29_N11
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~16_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~q\);

-- Location: LCCOMB_X39_Y30_N10
\vga_ctrl_inst|vsync_inst|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~42_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[21]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~41\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[21]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~41\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~43\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~41\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[21]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~41\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~42_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~43\);

-- Location: LCCOMB_X39_Y29_N28
\vga_ctrl_inst|vsync_inst|cmp~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~17_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|vsync_inst|Add0~42_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~17_combout\);

-- Location: FF_X39_Y29_N29
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~17_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[21]~q\);

-- Location: LCCOMB_X39_Y30_N12
\vga_ctrl_inst|vsync_inst|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~44_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[22]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~43\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[22]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~43\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~45\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[22]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[22]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~43\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~44_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~45\);

-- Location: LCCOMB_X40_Y30_N30
\vga_ctrl_inst|vsync_inst|cmp~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~18_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datad => \vga_ctrl_inst|vsync_inst|Add0~44_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~18_combout\);

-- Location: FF_X40_Y30_N31
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~18_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[22]~q\);

-- Location: LCCOMB_X39_Y30_N14
\vga_ctrl_inst|vsync_inst|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~46_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[23]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~45\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[23]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~45\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~47\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~45\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[23]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~45\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~46_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~47\);

-- Location: LCCOMB_X40_Y30_N20
\vga_ctrl_inst|vsync_inst|cmp~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~19_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datad => \vga_ctrl_inst|vsync_inst|Add0~46_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~19_combout\);

-- Location: FF_X40_Y30_N21
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~19_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[23]~q\);

-- Location: LCCOMB_X39_Y30_N16
\vga_ctrl_inst|vsync_inst|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~48_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[24]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~47\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[24]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~47\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~49\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[24]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[24]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~47\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~48_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~49\);

-- Location: LCCOMB_X40_Y30_N2
\vga_ctrl_inst|vsync_inst|cmp~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~20_combout\ = (\vga_ctrl_inst|vsync_inst|Add0~48_combout\ & !\vga_ctrl_inst|vsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Add0~48_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~20_combout\);

-- Location: FF_X40_Y30_N3
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~20_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[24]~q\);

-- Location: LCCOMB_X39_Y30_N18
\vga_ctrl_inst|vsync_inst|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~50_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[25]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~49\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[25]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~49\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~51\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~49\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[25]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~49\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~50_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~51\);

-- Location: LCCOMB_X40_Y30_N4
\vga_ctrl_inst|vsync_inst|cmp~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~21_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datad => \vga_ctrl_inst|vsync_inst|Add0~50_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~21_combout\);

-- Location: FF_X40_Y30_N5
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~21_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[25]~q\);

-- Location: LCCOMB_X39_Y30_N20
\vga_ctrl_inst|vsync_inst|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~52_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[26]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~51\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[26]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~51\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~53\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[26]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[26]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~51\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~52_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~53\);

-- Location: LCCOMB_X40_Y30_N14
\vga_ctrl_inst|vsync_inst|cmp~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~22_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datad => \vga_ctrl_inst|vsync_inst|Add0~52_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~22_combout\);

-- Location: FF_X40_Y30_N15
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~22_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[26]~q\);

-- Location: LCCOMB_X39_Y30_N22
\vga_ctrl_inst|vsync_inst|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~54_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[27]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~53\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[27]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~53\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~55\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~53\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[27]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~53\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~54_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~55\);

-- Location: LCCOMB_X40_Y30_N8
\vga_ctrl_inst|vsync_inst|cmp~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~24_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datad => \vga_ctrl_inst|vsync_inst|Add0~54_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~24_combout\);

-- Location: FF_X40_Y30_N9
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~24_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[27]~q\);

-- Location: LCCOMB_X39_Y30_N24
\vga_ctrl_inst|vsync_inst|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~56_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[28]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~55\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[28]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~55\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~57\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[28]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[28]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~55\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~56_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~57\);

-- Location: LCCOMB_X40_Y30_N22
\vga_ctrl_inst|vsync_inst|cmp~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~25_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & \vga_ctrl_inst|vsync_inst|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datad => \vga_ctrl_inst|vsync_inst|Add0~56_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~25_combout\);

-- Location: FF_X40_Y30_N23
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~25_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[28]~q\);

-- Location: LCCOMB_X39_Y30_N26
\vga_ctrl_inst|vsync_inst|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~58_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[29]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~57\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[29]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~57\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~59\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~57\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[29]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~57\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~58_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~59\);

-- Location: LCCOMB_X40_Y30_N16
\vga_ctrl_inst|vsync_inst|cmp~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~26_combout\ = (\vga_ctrl_inst|vsync_inst|Add0~58_combout\ & !\vga_ctrl_inst|vsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Add0~58_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~26_combout\);

-- Location: FF_X40_Y30_N17
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~26_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[29]~q\);

-- Location: LCCOMB_X39_Y30_N28
\vga_ctrl_inst|vsync_inst|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~60_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[30]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~59\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[30]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~59\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~61\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[30]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[30]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~59\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~60_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~61\);

-- Location: LCCOMB_X40_Y30_N26
\vga_ctrl_inst|vsync_inst|cmp~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~27_combout\ = (\vga_ctrl_inst|vsync_inst|Add0~60_combout\ & !\vga_ctrl_inst|vsync_inst|Selector1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|Add0~60_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~27_combout\);

-- Location: FF_X40_Y30_N27
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~27_combout\,
	ena => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[30]~q\);

-- Location: LCCOMB_X39_Y30_N30
\vga_ctrl_inst|vsync_inst|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~62_combout\ = \vga_ctrl_inst|vsync_inst|Add0~61\ $ (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[31]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[31]~q\,
	cin => \vga_ctrl_inst|vsync_inst|Add0~61\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~62_combout\);

-- Location: LCCOMB_X40_Y30_N6
\vga_ctrl_inst|vsync_inst|cmp~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~23_combout\ = (\vga_ctrl_inst|vsync_inst|Selector1~combout\) # ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[31]~q\)) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- ((!\vga_ctrl_inst|vsync_inst|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[31]~q\,
	datad => \vga_ctrl_inst|vsync_inst|Add0~62_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~23_combout\);

-- Location: FF_X40_Y30_N7
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[31]~q\);

-- Location: LCCOMB_X40_Y30_N28
\vga_ctrl_inst|vsync_inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal0~5_combout\ = (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[26]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[24]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[25]~q\ & 
-- !\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[26]~q\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[24]~q\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[25]~q\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[23]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal0~5_combout\);

-- Location: LCCOMB_X39_Y29_N26
\vga_ctrl_inst|vsync_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal0~2_combout\ = (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[18]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[15]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[17]~q\ & 
-- !\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[18]~q\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[15]~q\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[17]~q\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[16]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y29_N18
\vga_ctrl_inst|vsync_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal0~3_combout\ = (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[19]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[21]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[22]~q\ & 
-- !\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[19]~q\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[21]~q\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[22]~q\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[20]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y29_N22
\vga_ctrl_inst|vsync_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal0~1_combout\ = (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[14]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[13]~q\ & 
-- !\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]~q\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[14]~q\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[13]~q\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[12]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y31_N0
\vga_ctrl_inst|vsync_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~0_combout\ = \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\ $ (GND)
-- \vga_ctrl_inst|vsync_inst|Add0~1\ = CARRY(!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\,
	datad => VCC,
	combout => \vga_ctrl_inst|vsync_inst|Add0~0_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~1\);

-- Location: LCCOMB_X41_Y31_N12
\vga_ctrl_inst|vsync_inst|cmp~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~32_combout\ = (\vga_ctrl_inst|vsync_inst|Selector1~combout\) # ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (!\vga_ctrl_inst|vsync_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Add0~0_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\,
	datad => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~32_combout\);

-- Location: FF_X41_Y31_N13
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\);

-- Location: LCCOMB_X39_Y31_N2
\vga_ctrl_inst|vsync_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~2_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~1\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~1\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~3\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~1\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~1\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~2_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~3\);

-- Location: LCCOMB_X41_Y31_N14
\vga_ctrl_inst|vsync_inst|cmp~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~28_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Add0~2_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\,
	datad => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~28_combout\);

-- Location: FF_X41_Y31_N15
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\);

-- Location: LCCOMB_X39_Y31_N4
\vga_ctrl_inst|vsync_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~4_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~3\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~3\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~5\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~3\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~4_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~5\);

-- Location: LCCOMB_X40_Y29_N4
\vga_ctrl_inst|vsync_inst|cmp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~3_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Add0~4_combout\,
	datab => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]~q\,
	datad => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~3_combout\);

-- Location: FF_X40_Y29_N5
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]~q\);

-- Location: LCCOMB_X40_Y29_N24
\vga_ctrl_inst|vsync_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal0~0_combout\ = (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]~q\ & 
-- !\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]~q\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]~q\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]~q\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y29_N0
\vga_ctrl_inst|vsync_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal0~4_combout\ = (\vga_ctrl_inst|vsync_inst|Equal0~2_combout\ & (\vga_ctrl_inst|vsync_inst|Equal0~3_combout\ & (\vga_ctrl_inst|vsync_inst|Equal0~1_combout\ & \vga_ctrl_inst|vsync_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Equal0~2_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Equal0~3_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Equal0~1_combout\,
	datad => \vga_ctrl_inst|vsync_inst|Equal0~0_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Equal0~4_combout\);

-- Location: LCCOMB_X40_Y30_N0
\vga_ctrl_inst|vsync_inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal0~6_combout\ = (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[30]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[29]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[28]~q\ & 
-- !\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[30]~q\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[29]~q\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[28]~q\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[27]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal0~6_combout\);

-- Location: LCCOMB_X40_Y30_N18
\vga_ctrl_inst|vsync_inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal0~7_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[31]~q\ & (\vga_ctrl_inst|vsync_inst|Equal0~5_combout\ & (\vga_ctrl_inst|vsync_inst|Equal0~4_combout\ & \vga_ctrl_inst|vsync_inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[31]~q\,
	datab => \vga_ctrl_inst|vsync_inst|Equal0~5_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Equal0~4_combout\,
	datad => \vga_ctrl_inst|vsync_inst|Equal0~6_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Equal0~7_combout\);

-- Location: LCCOMB_X39_Y31_N6
\vga_ctrl_inst|vsync_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~6_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~5\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~5\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~7\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~5\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~5\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~6_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~7\);

-- Location: LCCOMB_X41_Y31_N24
\vga_ctrl_inst|vsync_inst|cmp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~2_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Add0~6_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\,
	datad => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~2_combout\);

-- Location: FF_X41_Y31_N25
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\);

-- Location: LCCOMB_X41_Y31_N18
\vga_ctrl_inst|vsync_inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal2~0_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\ & (\vga_ctrl_inst|vsync_inst|Equal0~7_combout\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\ & 
-- !\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\,
	datab => \vga_ctrl_inst|vsync_inst|Equal0~7_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal2~0_combout\);

-- Location: LCCOMB_X42_Y31_N24
\vga_ctrl_inst|vsync_inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal1~0_combout\ = (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\ & 
-- \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal1~0_combout\);

-- Location: LCCOMB_X41_Y31_N20
\vga_ctrl_inst|vsync_inst|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal1~1_combout\ = (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\ & (\vga_ctrl_inst|vsync_inst|Equal1~0_combout\ & (\vga_ctrl_inst|vsync_inst|Equal0~7_combout\ & \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\,
	datab => \vga_ctrl_inst|vsync_inst|Equal1~0_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Equal0~7_combout\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal1~1_combout\);

-- Location: LCCOMB_X40_Y31_N4
\vga_ctrl_inst|vsync_inst|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal1~2_combout\ = (\vga_ctrl_inst|vsync_inst|Equal1~1_combout\ & !\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|vsync_inst|Equal1~1_combout\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal1~2_combout\);

-- Location: LCCOMB_X40_Y31_N24
\vga_ctrl_inst|vsync_inst|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector5~0_combout\ = (\vga_ctrl_inst|vsync_inst|Equal1~1_combout\ & (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\ & ((\vga_ctrl_inst|vsync_inst|etat.sync~q\) # (\vga_ctrl_inst|vsync_inst|etat.fp~q\)))) # 
-- (!\vga_ctrl_inst|vsync_inst|Equal1~1_combout\ & (((\vga_ctrl_inst|vsync_inst|etat.sync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Equal1~1_combout\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\,
	datac => \vga_ctrl_inst|vsync_inst|etat.sync~q\,
	datad => \vga_ctrl_inst|vsync_inst|etat.fp~q\,
	combout => \vga_ctrl_inst|vsync_inst|Selector5~0_combout\);

-- Location: FF_X40_Y31_N25
\vga_ctrl_inst|vsync_inst|etat.sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|Selector5~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|etat.sync~q\);

-- Location: LCCOMB_X40_Y31_N2
\vga_ctrl_inst|vsync_inst|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector6~0_combout\ = (\vga_ctrl_inst|vsync_inst|Equal2~2_combout\ & (\vga_ctrl_inst|vsync_inst|Equal1~2_combout\ & ((\vga_ctrl_inst|vsync_inst|etat.sync~q\)))) # (!\vga_ctrl_inst|vsync_inst|Equal2~2_combout\ & 
-- ((\vga_ctrl_inst|vsync_inst|etat.bp~q\) # ((\vga_ctrl_inst|vsync_inst|Equal1~2_combout\ & \vga_ctrl_inst|vsync_inst|etat.sync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Equal2~2_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Equal1~2_combout\,
	datac => \vga_ctrl_inst|vsync_inst|etat.bp~q\,
	datad => \vga_ctrl_inst|vsync_inst|etat.sync~q\,
	combout => \vga_ctrl_inst|vsync_inst|Selector6~0_combout\);

-- Location: FF_X40_Y31_N3
\vga_ctrl_inst|vsync_inst|etat.bp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|Selector6~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|etat.bp~q\);

-- Location: LCCOMB_X40_Y31_N20
\vga_ctrl_inst|vsync_inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector2~0_combout\ = (!\vga_ctrl_inst|vsync_inst|etat.init~q\ & !\Switch1|r_Switch_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|vsync_inst|etat.init~q\,
	datad => \Switch1|r_Switch_State~q\,
	combout => \vga_ctrl_inst|vsync_inst|Selector2~0_combout\);

-- Location: LCCOMB_X40_Y31_N22
\vga_ctrl_inst|vsync_inst|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector2~1_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector2~0_combout\ & (((!\vga_ctrl_inst|vsync_inst|etat.bp~q\) # (!\vga_ctrl_inst|vsync_inst|Equal2~0_combout\)) # (!\vga_ctrl_inst|vsync_inst|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Equal2~1_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Equal2~0_combout\,
	datac => \vga_ctrl_inst|vsync_inst|etat.bp~q\,
	datad => \vga_ctrl_inst|vsync_inst|Selector2~0_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Selector2~1_combout\);

-- Location: FF_X40_Y31_N23
\vga_ctrl_inst|vsync_inst|etat.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|Selector2~1_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|etat.init~q\);

-- Location: LCCOMB_X41_Y31_N4
\vga_ctrl_inst|vsync_inst|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal0~8_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\ & (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\ & (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\ & 
-- \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal0~8_combout\);

-- Location: LCCOMB_X40_Y29_N14
\vga_ctrl_inst|vsync_inst|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector3~1_combout\ = (!\vga_ctrl_inst|vsync_inst|Equal2~0_combout\) # (!\vga_ctrl_inst|vsync_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|vsync_inst|Equal0~8_combout\,
	datad => \vga_ctrl_inst|vsync_inst|Equal2~0_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Selector3~1_combout\);

-- Location: LCCOMB_X41_Y33_N20
\vga_ctrl_inst|vsync_inst|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector3~2_combout\ = (\vga_ctrl_inst|vsync_inst|etat.init~q\ & (((\vga_ctrl_inst|vsync_inst|etat.display~q\ & \vga_ctrl_inst|vsync_inst|Selector3~1_combout\)))) # (!\vga_ctrl_inst|vsync_inst|etat.init~q\ & 
-- ((\Switch1|r_Switch_State~q\) # ((\vga_ctrl_inst|vsync_inst|etat.display~q\ & \vga_ctrl_inst|vsync_inst|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|etat.init~q\,
	datab => \Switch1|r_Switch_State~q\,
	datac => \vga_ctrl_inst|vsync_inst|etat.display~q\,
	datad => \vga_ctrl_inst|vsync_inst|Selector3~1_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Selector3~2_combout\);

-- Location: FF_X41_Y33_N21
\vga_ctrl_inst|vsync_inst|etat.display\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|Selector3~2_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|etat.display~q\);

-- Location: LCCOMB_X40_Y29_N16
\vga_ctrl_inst|vsync_inst|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal0~9_combout\ = (\vga_ctrl_inst|vsync_inst|Equal0~8_combout\ & \vga_ctrl_inst|vsync_inst|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|vsync_inst|Equal0~8_combout\,
	datad => \vga_ctrl_inst|vsync_inst|Equal2~0_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Equal0~9_combout\);

-- Location: LCCOMB_X40_Y31_N0
\vga_ctrl_inst|vsync_inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal3~0_combout\ = (\vga_ctrl_inst|vsync_inst|Equal1~1_combout\ & \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|vsync_inst|Equal1~1_combout\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal3~0_combout\);

-- Location: LCCOMB_X40_Y31_N10
\vga_ctrl_inst|vsync_inst|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector4~0_combout\ = (\vga_ctrl_inst|vsync_inst|etat.display~q\ & ((\vga_ctrl_inst|vsync_inst|Equal0~9_combout\) # ((\vga_ctrl_inst|vsync_inst|etat.fp~q\ & !\vga_ctrl_inst|vsync_inst|Equal3~0_combout\)))) # 
-- (!\vga_ctrl_inst|vsync_inst|etat.display~q\ & (((\vga_ctrl_inst|vsync_inst|etat.fp~q\ & !\vga_ctrl_inst|vsync_inst|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|etat.display~q\,
	datab => \vga_ctrl_inst|vsync_inst|Equal0~9_combout\,
	datac => \vga_ctrl_inst|vsync_inst|etat.fp~q\,
	datad => \vga_ctrl_inst|vsync_inst|Equal3~0_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Selector4~0_combout\);

-- Location: FF_X40_Y31_N11
\vga_ctrl_inst|vsync_inst|etat.fp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|Selector4~0_combout\,
	clrn => \Switch2|ALT_INV_r_Switch_State~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|etat.fp~q\);

-- Location: LCCOMB_X40_Y31_N14
\vga_ctrl_inst|vsync_inst|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector0~2_combout\ = (\vga_ctrl_inst|vsync_inst|etat.fp~q\) # (\vga_ctrl_inst|vsync_inst|etat.bp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|etat.fp~q\,
	datad => \vga_ctrl_inst|vsync_inst|etat.bp~q\,
	combout => \vga_ctrl_inst|vsync_inst|Selector0~2_combout\);

-- Location: LCCOMB_X40_Y31_N8
\vga_ctrl_inst|vsync_inst|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector0~3_combout\ = (\vga_ctrl_inst|vsync_inst|etat.fp~q\) # ((!\vga_ctrl_inst|vsync_inst|etat.bp~q\ & \vga_ctrl_inst|vsync_inst|etat.sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|etat.fp~q\,
	datab => \vga_ctrl_inst|vsync_inst|etat.bp~q\,
	datad => \vga_ctrl_inst|vsync_inst|etat.sync~q\,
	combout => \vga_ctrl_inst|vsync_inst|Selector0~3_combout\);

-- Location: LCCOMB_X40_Y31_N12
\vga_ctrl_inst|vsync_inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector1~0_combout\ = (\vga_ctrl_inst|vsync_inst|Selector0~2_combout\ & ((\vga_ctrl_inst|vsync_inst|Selector0~3_combout\ & ((\vga_ctrl_inst|vsync_inst|Equal3~0_combout\))) # (!\vga_ctrl_inst|vsync_inst|Selector0~3_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Equal2~2_combout\)))) # (!\vga_ctrl_inst|vsync_inst|Selector0~2_combout\ & (((!\vga_ctrl_inst|vsync_inst|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Equal2~2_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Selector0~2_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Selector0~3_combout\,
	datad => \vga_ctrl_inst|vsync_inst|Equal3~0_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Selector1~0_combout\);

-- Location: LCCOMB_X40_Y31_N16
\vga_ctrl_inst|vsync_inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector0~1_combout\ = (!\vga_ctrl_inst|vsync_inst|etat.fp~q\ & (!\vga_ctrl_inst|vsync_inst|etat.bp~q\ & ((\vga_ctrl_inst|vsync_inst|etat.display~q\) # (\vga_ctrl_inst|vsync_inst|etat.sync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|etat.fp~q\,
	datab => \vga_ctrl_inst|vsync_inst|etat.bp~q\,
	datac => \vga_ctrl_inst|vsync_inst|etat.display~q\,
	datad => \vga_ctrl_inst|vsync_inst|etat.sync~q\,
	combout => \vga_ctrl_inst|vsync_inst|Selector0~1_combout\);

-- Location: LCCOMB_X40_Y31_N30
\vga_ctrl_inst|vsync_inst|Selector1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector1~combout\ = (\vga_ctrl_inst|vsync_inst|Selector1~0_combout\ & (((\vga_ctrl_inst|vsync_inst|Equal0~9_combout\) # (!\vga_ctrl_inst|vsync_inst|Selector0~1_combout\)))) # (!\vga_ctrl_inst|vsync_inst|Selector1~0_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Equal1~2_combout\ & ((\vga_ctrl_inst|vsync_inst|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Selector1~0_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Equal1~2_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Equal0~9_combout\,
	datad => \vga_ctrl_inst|vsync_inst|Selector0~1_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Selector1~combout\);

-- Location: LCCOMB_X39_Y31_N8
\vga_ctrl_inst|vsync_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~8_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~7\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~7\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~9\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~7\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~8_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~9\);

-- Location: LCCOMB_X40_Y29_N22
\vga_ctrl_inst|vsync_inst|cmp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~4_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datab => \vga_ctrl_inst|vsync_inst|Add0~8_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]~q\,
	datad => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~4_combout\);

-- Location: FF_X40_Y29_N23
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]~q\);

-- Location: LCCOMB_X39_Y31_N10
\vga_ctrl_inst|vsync_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~10_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~9\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~9\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~11\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~9\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~9\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~10_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~11\);

-- Location: LCCOMB_X41_Y31_N26
\vga_ctrl_inst|vsync_inst|cmp~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~33_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Add0~10_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\,
	datad => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~33_combout\);

-- Location: FF_X41_Y31_N27
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\);

-- Location: LCCOMB_X39_Y31_N12
\vga_ctrl_inst|vsync_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~12_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\ & (\vga_ctrl_inst|vsync_inst|Add0~11\ $ (GND))) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~11\ & VCC))
-- \vga_ctrl_inst|vsync_inst|Add0~13\ = CARRY((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\ & !\vga_ctrl_inst|vsync_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~11\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~12_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~13\);

-- Location: LCCOMB_X40_Y29_N8
\vga_ctrl_inst|vsync_inst|cmp~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~29_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Add0~12_combout\,
	datab => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\,
	datad => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~29_combout\);

-- Location: FF_X40_Y29_N9
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\);

-- Location: LCCOMB_X39_Y31_N14
\vga_ctrl_inst|vsync_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Add0~14_combout\ = (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\ & (!\vga_ctrl_inst|vsync_inst|Add0~13\)) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\ & ((\vga_ctrl_inst|vsync_inst|Add0~13\) # (GND)))
-- \vga_ctrl_inst|vsync_inst|Add0~15\ = CARRY((!\vga_ctrl_inst|vsync_inst|Add0~13\) # (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\,
	datad => VCC,
	cin => \vga_ctrl_inst|vsync_inst|Add0~13\,
	combout => \vga_ctrl_inst|vsync_inst|Add0~14_combout\,
	cout => \vga_ctrl_inst|vsync_inst|Add0~15\);

-- Location: LCCOMB_X41_Y31_N28
\vga_ctrl_inst|vsync_inst|cmp~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~30_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Add0~14_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\,
	datad => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~30_combout\);

-- Location: FF_X41_Y31_N29
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\);

-- Location: LCCOMB_X41_Y31_N10
\vga_ctrl_inst|vsync_inst|cmp~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~31_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Add0~16_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\,
	datad => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~31_combout\);

-- Location: FF_X41_Y31_N11
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\);

-- Location: LCCOMB_X41_Y31_N6
\vga_ctrl_inst|vsync_inst|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal2~1_combout\ = (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\ & (!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\ & 
-- !\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\,
	combout => \vga_ctrl_inst|vsync_inst|Equal2~1_combout\);

-- Location: LCCOMB_X40_Y31_N26
\vga_ctrl_inst|vsync_inst|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Equal2~2_combout\ = (\vga_ctrl_inst|vsync_inst|Equal2~1_combout\ & \vga_ctrl_inst|vsync_inst|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Equal2~1_combout\,
	datad => \vga_ctrl_inst|vsync_inst|Equal2~0_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Equal2~2_combout\);

-- Location: LCCOMB_X40_Y31_N6
\vga_ctrl_inst|vsync_inst|Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector0~4_combout\ = (\vga_ctrl_inst|vsync_inst|Selector0~2_combout\ & ((\vga_ctrl_inst|vsync_inst|Selector0~3_combout\ & ((!\vga_ctrl_inst|vsync_inst|Equal3~0_combout\))) # (!\vga_ctrl_inst|vsync_inst|Selector0~3_combout\ & 
-- (!\vga_ctrl_inst|vsync_inst|Equal2~2_combout\)))) # (!\vga_ctrl_inst|vsync_inst|Selector0~2_combout\ & (((\vga_ctrl_inst|vsync_inst|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Equal2~2_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Selector0~2_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Selector0~3_combout\,
	datad => \vga_ctrl_inst|vsync_inst|Equal3~0_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Selector0~4_combout\);

-- Location: LCCOMB_X40_Y31_N28
\vga_ctrl_inst|vsync_inst|Selector0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector0~combout\ = (\vga_ctrl_inst|vsync_inst|Selector0~4_combout\ & (((!\vga_ctrl_inst|vsync_inst|Selector0~1_combout\) # (!\vga_ctrl_inst|vsync_inst|Equal1~2_combout\)))) # (!\vga_ctrl_inst|vsync_inst|Selector0~4_combout\ & 
-- (!\vga_ctrl_inst|vsync_inst|Equal0~9_combout\ & ((\vga_ctrl_inst|vsync_inst|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Selector0~4_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Equal0~9_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Equal1~2_combout\,
	datad => \vga_ctrl_inst|vsync_inst|Selector0~1_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Selector0~combout\);

-- Location: LCCOMB_X40_Y30_N10
\vga_ctrl_inst|vsync_inst|cmp~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~34_combout\ = (((!\vga_ctrl_inst|hsync_inst|Equal1~0_combout\) # (!\vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\)) # (!\vga_ctrl_inst|hsync_inst|etat.bp~q\)) # (!\vga_ctrl_inst|vsync_inst|Selector0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Selector0~combout\,
	datab => \vga_ctrl_inst|hsync_inst|etat.bp~q\,
	datac => \vga_ctrl_inst|hsync_inst|counter_process:cmp[5]~q\,
	datad => \vga_ctrl_inst|hsync_inst|Equal1~0_combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~34_combout\);

-- Location: LCCOMB_X40_Y29_N2
\vga_ctrl_inst|vsync_inst|cmp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|cmp~7_combout\ = (!\vga_ctrl_inst|vsync_inst|Selector1~combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Add0~22_combout\,
	datab => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]~q\,
	datad => \vga_ctrl_inst|vsync_inst|Selector1~combout\,
	combout => \vga_ctrl_inst|vsync_inst|cmp~7_combout\);

-- Location: FF_X40_Y29_N3
\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|cmp~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]~q\);

-- Location: LCCOMB_X40_Y29_N26
\vga_ctrl_inst|vsync_inst|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|Selector3~0_combout\ = (\vga_ctrl_inst|vsync_inst|etat.display~q\ & ((!\vga_ctrl_inst|vsync_inst|Equal2~0_combout\) # (!\vga_ctrl_inst|vsync_inst|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Equal0~8_combout\,
	datac => \vga_ctrl_inst|vsync_inst|etat.display~q\,
	datad => \vga_ctrl_inst|vsync_inst|Equal2~0_combout\,
	combout => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\);

-- Location: LCCOMB_X40_Y29_N12
\vga_ctrl_inst|vsync_inst|y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|y~0_combout\ = (\vga_ctrl_inst|vsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Add0~22_combout\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[11]~q\,
	datac => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|y~0_combout\);

-- Location: FF_X40_Y29_N13
\vga_ctrl_inst|vsync_inst|y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|y\(11));

-- Location: LCCOMB_X40_Y29_N30
\vga_ctrl_inst|vsync_inst|y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|y~1_combout\ = (\vga_ctrl_inst|vsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]~q\)) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- ((\vga_ctrl_inst|vsync_inst|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[10]~q\,
	datab => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Add0~20_combout\,
	datad => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|y~1_combout\);

-- Location: FF_X40_Y29_N31
\vga_ctrl_inst|vsync_inst|y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|y\(10));

-- Location: LCCOMB_X40_Y29_N18
\vga_ctrl_inst|vsync_inst|y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|y~2_combout\ = (\vga_ctrl_inst|vsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]~q\)) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- ((\vga_ctrl_inst|vsync_inst|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[9]~q\,
	datab => \vga_ctrl_inst|vsync_inst|Add0~18_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|y~2_combout\);

-- Location: FF_X42_Y33_N1
\vga_ctrl_inst|vsync_inst|y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga_ctrl_inst|vsync_inst|y~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|y\(9));

-- Location: LCCOMB_X41_Y31_N0
\vga_ctrl_inst|vsync_inst|y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|y~3_combout\ = (\vga_ctrl_inst|vsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\)) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- ((\vga_ctrl_inst|vsync_inst|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[8]~q\,
	datac => \vga_ctrl_inst|vsync_inst|Add0~16_combout\,
	datad => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|y~3_combout\);

-- Location: FF_X41_Y31_N1
\vga_ctrl_inst|vsync_inst|y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|y\(8));

-- Location: LCCOMB_X41_Y31_N22
\vga_ctrl_inst|vsync_inst|y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|y~4_combout\ = (\vga_ctrl_inst|vsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\)) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- ((\vga_ctrl_inst|vsync_inst|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[7]~q\,
	datac => \vga_ctrl_inst|vsync_inst|Add0~14_combout\,
	datad => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|y~4_combout\);

-- Location: FF_X41_Y31_N23
\vga_ctrl_inst|vsync_inst|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vsync_inst|y~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|y\(7));

-- Location: LCCOMB_X40_Y29_N20
\vga_ctrl_inst|vsync_inst|y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|y~5_combout\ = (\vga_ctrl_inst|vsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Add0~12_combout\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[6]~q\,
	datac => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|y~5_combout\);

-- Location: FF_X42_Y33_N27
\vga_ctrl_inst|vsync_inst|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga_ctrl_inst|vsync_inst|y~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|y\(6));

-- Location: LCCOMB_X41_Y31_N16
\vga_ctrl_inst|vsync_inst|y~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|y~6_combout\ = (\vga_ctrl_inst|vsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Add0~10_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[5]~q\,
	datad => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|y~6_combout\);

-- Location: FF_X42_Y33_N23
\vga_ctrl_inst|vsync_inst|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga_ctrl_inst|vsync_inst|y~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|y\(5));

-- Location: LCCOMB_X40_Y29_N6
\vga_ctrl_inst|vsync_inst|y~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|y~7_combout\ = (\vga_ctrl_inst|vsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]~q\)) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- ((\vga_ctrl_inst|vsync_inst|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\,
	datab => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datac => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[4]~q\,
	datad => \vga_ctrl_inst|vsync_inst|Add0~8_combout\,
	combout => \vga_ctrl_inst|vsync_inst|y~7_combout\);

-- Location: FF_X42_Y33_N13
\vga_ctrl_inst|vsync_inst|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga_ctrl_inst|vsync_inst|y~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|y\(4));

-- Location: LCCOMB_X41_Y31_N2
\vga_ctrl_inst|vsync_inst|y~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|y~8_combout\ = (\vga_ctrl_inst|vsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\)) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- ((\vga_ctrl_inst|vsync_inst|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[3]~q\,
	datac => \vga_ctrl_inst|vsync_inst|Add0~6_combout\,
	datad => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|y~8_combout\);

-- Location: FF_X42_Y33_N15
\vga_ctrl_inst|vsync_inst|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga_ctrl_inst|vsync_inst|y~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|y\(3));

-- Location: LCCOMB_X40_Y29_N28
\vga_ctrl_inst|vsync_inst|y~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|y~9_combout\ = (\vga_ctrl_inst|vsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Add0~4_combout\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[2]~q\,
	datac => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\,
	datad => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|y~9_combout\);

-- Location: FF_X42_Y33_N3
\vga_ctrl_inst|vsync_inst|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga_ctrl_inst|vsync_inst|y~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|y\(2));

-- Location: LCCOMB_X41_Y31_N8
\vga_ctrl_inst|vsync_inst|y~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|y~10_combout\ = (\vga_ctrl_inst|vsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & (\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\)) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- ((\vga_ctrl_inst|vsync_inst|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\,
	datab => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[1]~q\,
	datac => \vga_ctrl_inst|vsync_inst|Add0~2_combout\,
	datad => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	combout => \vga_ctrl_inst|vsync_inst|y~10_combout\);

-- Location: FF_X44_Y33_N7
\vga_ctrl_inst|vsync_inst|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga_ctrl_inst|vsync_inst|y~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|y\(1));

-- Location: LCCOMB_X41_Y31_N30
\vga_ctrl_inst|vsync_inst|y~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vsync_inst|y~11_combout\ = (\vga_ctrl_inst|vsync_inst|Selector3~0_combout\ & ((\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & ((!\vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\))) # (!\vga_ctrl_inst|vsync_inst|cmp~34_combout\ & 
-- (\vga_ctrl_inst|vsync_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|cmp~34_combout\,
	datab => \vga_ctrl_inst|vsync_inst|Selector3~0_combout\,
	datac => \vga_ctrl_inst|vsync_inst|Add0~0_combout\,
	datad => \vga_ctrl_inst|vsync_inst|v_counter_process:cmp[0]~q\,
	combout => \vga_ctrl_inst|vsync_inst|y~11_combout\);

-- Location: FF_X42_Y33_N5
\vga_ctrl_inst|vsync_inst|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_frequency|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga_ctrl_inst|vsync_inst|y~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vsync_inst|y\(0));

-- Location: LCCOMB_X42_Y33_N6
\affiche_obj_inst|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan3~1_cout\ = CARRY((\movement_ctrl_inst|y_ball\(0) & !\vga_ctrl_inst|vsync_inst|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(0),
	datab => \vga_ctrl_inst|vsync_inst|y\(0),
	datad => VCC,
	cout => \affiche_obj_inst|LessThan3~1_cout\);

-- Location: LCCOMB_X42_Y33_N8
\affiche_obj_inst|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan3~3_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(1) & ((!\affiche_obj_inst|LessThan3~1_cout\) # (!\movement_ctrl_inst|y_ball\(1)))) # (!\vga_ctrl_inst|vsync_inst|y\(1) & (!\movement_ctrl_inst|y_ball\(1) & 
-- !\affiche_obj_inst|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(1),
	datab => \movement_ctrl_inst|y_ball\(1),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan3~1_cout\,
	cout => \affiche_obj_inst|LessThan3~3_cout\);

-- Location: LCCOMB_X42_Y33_N10
\affiche_obj_inst|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan3~5_cout\ = CARRY((\movement_ctrl_inst|y_ball\(2) & ((!\affiche_obj_inst|LessThan3~3_cout\) # (!\vga_ctrl_inst|vsync_inst|y\(2)))) # (!\movement_ctrl_inst|y_ball\(2) & (!\vga_ctrl_inst|vsync_inst|y\(2) & 
-- !\affiche_obj_inst|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(2),
	datab => \vga_ctrl_inst|vsync_inst|y\(2),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan3~3_cout\,
	cout => \affiche_obj_inst|LessThan3~5_cout\);

-- Location: LCCOMB_X42_Y33_N12
\affiche_obj_inst|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan3~7_cout\ = CARRY((\movement_ctrl_inst|y_ball\(3) & ((\vga_ctrl_inst|vsync_inst|y\(3)) # (!\affiche_obj_inst|LessThan3~5_cout\))) # (!\movement_ctrl_inst|y_ball\(3) & (\vga_ctrl_inst|vsync_inst|y\(3) & 
-- !\affiche_obj_inst|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(3),
	datab => \vga_ctrl_inst|vsync_inst|y\(3),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan3~5_cout\,
	cout => \affiche_obj_inst|LessThan3~7_cout\);

-- Location: LCCOMB_X42_Y33_N14
\affiche_obj_inst|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan3~9_cout\ = CARRY((\affiche_obj_inst|Add1~0_combout\ & ((!\affiche_obj_inst|LessThan3~7_cout\) # (!\vga_ctrl_inst|vsync_inst|y\(4)))) # (!\affiche_obj_inst|Add1~0_combout\ & (!\vga_ctrl_inst|vsync_inst|y\(4) & 
-- !\affiche_obj_inst|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add1~0_combout\,
	datab => \vga_ctrl_inst|vsync_inst|y\(4),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan3~7_cout\,
	cout => \affiche_obj_inst|LessThan3~9_cout\);

-- Location: LCCOMB_X42_Y33_N16
\affiche_obj_inst|LessThan3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan3~11_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(5) & ((!\affiche_obj_inst|LessThan3~9_cout\) # (!\affiche_obj_inst|Add1~2_combout\))) # (!\vga_ctrl_inst|vsync_inst|y\(5) & (!\affiche_obj_inst|Add1~2_combout\ & 
-- !\affiche_obj_inst|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(5),
	datab => \affiche_obj_inst|Add1~2_combout\,
	datad => VCC,
	cin => \affiche_obj_inst|LessThan3~9_cout\,
	cout => \affiche_obj_inst|LessThan3~11_cout\);

-- Location: LCCOMB_X42_Y33_N18
\affiche_obj_inst|LessThan3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan3~13_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(6) & (\affiche_obj_inst|Add1~4_combout\ & !\affiche_obj_inst|LessThan3~11_cout\)) # (!\vga_ctrl_inst|vsync_inst|y\(6) & ((\affiche_obj_inst|Add1~4_combout\) # 
-- (!\affiche_obj_inst|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(6),
	datab => \affiche_obj_inst|Add1~4_combout\,
	datad => VCC,
	cin => \affiche_obj_inst|LessThan3~11_cout\,
	cout => \affiche_obj_inst|LessThan3~13_cout\);

-- Location: LCCOMB_X42_Y33_N20
\affiche_obj_inst|LessThan3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan3~15_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(7) & ((!\affiche_obj_inst|LessThan3~13_cout\) # (!\affiche_obj_inst|Add1~6_combout\))) # (!\vga_ctrl_inst|vsync_inst|y\(7) & (!\affiche_obj_inst|Add1~6_combout\ & 
-- !\affiche_obj_inst|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(7),
	datab => \affiche_obj_inst|Add1~6_combout\,
	datad => VCC,
	cin => \affiche_obj_inst|LessThan3~13_cout\,
	cout => \affiche_obj_inst|LessThan3~15_cout\);

-- Location: LCCOMB_X42_Y33_N22
\affiche_obj_inst|LessThan3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan3~17_cout\ = CARRY((\affiche_obj_inst|Add1~8_combout\ & ((!\affiche_obj_inst|LessThan3~15_cout\) # (!\vga_ctrl_inst|vsync_inst|y\(8)))) # (!\affiche_obj_inst|Add1~8_combout\ & (!\vga_ctrl_inst|vsync_inst|y\(8) & 
-- !\affiche_obj_inst|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add1~8_combout\,
	datab => \vga_ctrl_inst|vsync_inst|y\(8),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan3~15_cout\,
	cout => \affiche_obj_inst|LessThan3~17_cout\);

-- Location: LCCOMB_X42_Y33_N24
\affiche_obj_inst|LessThan3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan3~19_cout\ = CARRY((\affiche_obj_inst|Add1~10_combout\ & (\vga_ctrl_inst|vsync_inst|y\(9) & !\affiche_obj_inst|LessThan3~17_cout\)) # (!\affiche_obj_inst|Add1~10_combout\ & ((\vga_ctrl_inst|vsync_inst|y\(9)) # 
-- (!\affiche_obj_inst|LessThan3~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add1~10_combout\,
	datab => \vga_ctrl_inst|vsync_inst|y\(9),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan3~17_cout\,
	cout => \affiche_obj_inst|LessThan3~19_cout\);

-- Location: LCCOMB_X42_Y33_N26
\affiche_obj_inst|LessThan3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan3~21_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(10) & (\affiche_obj_inst|Add1~12_combout\ & !\affiche_obj_inst|LessThan3~19_cout\)) # (!\vga_ctrl_inst|vsync_inst|y\(10) & ((\affiche_obj_inst|Add1~12_combout\) # 
-- (!\affiche_obj_inst|LessThan3~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(10),
	datab => \affiche_obj_inst|Add1~12_combout\,
	datad => VCC,
	cin => \affiche_obj_inst|LessThan3~19_cout\,
	cout => \affiche_obj_inst|LessThan3~21_cout\);

-- Location: LCCOMB_X42_Y33_N28
\affiche_obj_inst|LessThan3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan3~22_combout\ = (\affiche_obj_inst|Add1~14_combout\ & ((\affiche_obj_inst|LessThan3~21_cout\) # (!\vga_ctrl_inst|vsync_inst|y\(11)))) # (!\affiche_obj_inst|Add1~14_combout\ & (\affiche_obj_inst|LessThan3~21_cout\ & 
-- !\vga_ctrl_inst|vsync_inst|y\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \affiche_obj_inst|Add1~14_combout\,
	datad => \vga_ctrl_inst|vsync_inst|y\(11),
	cin => \affiche_obj_inst|LessThan3~21_cout\,
	combout => \affiche_obj_inst|LessThan3~22_combout\);

-- Location: LCCOMB_X43_Y35_N16
\affiche_obj_inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|process_0~0_combout\ = (\affiche_obj_inst|Add0~16_combout\ & ((\affiche_obj_inst|Add1~16_combout\) # ((\affiche_obj_inst|LessThan3~22_combout\)))) # (!\affiche_obj_inst|Add0~16_combout\ & (\affiche_obj_inst|LessThan1~22_combout\ & 
-- ((\affiche_obj_inst|Add1~16_combout\) # (\affiche_obj_inst|LessThan3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add0~16_combout\,
	datab => \affiche_obj_inst|Add1~16_combout\,
	datac => \affiche_obj_inst|LessThan1~22_combout\,
	datad => \affiche_obj_inst|LessThan3~22_combout\,
	combout => \affiche_obj_inst|process_0~0_combout\);

-- Location: LCCOMB_X44_Y33_N4
\affiche_obj_inst|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan2~1_cout\ = CARRY((\movement_ctrl_inst|y_ball\(0) & !\vga_ctrl_inst|vsync_inst|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(0),
	datab => \vga_ctrl_inst|vsync_inst|y\(0),
	datad => VCC,
	cout => \affiche_obj_inst|LessThan2~1_cout\);

-- Location: LCCOMB_X44_Y33_N6
\affiche_obj_inst|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan2~3_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(1) & ((!\affiche_obj_inst|LessThan2~1_cout\) # (!\movement_ctrl_inst|y_ball\(1)))) # (!\vga_ctrl_inst|vsync_inst|y\(1) & (!\movement_ctrl_inst|y_ball\(1) & 
-- !\affiche_obj_inst|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(1),
	datab => \movement_ctrl_inst|y_ball\(1),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan2~1_cout\,
	cout => \affiche_obj_inst|LessThan2~3_cout\);

-- Location: LCCOMB_X44_Y33_N8
\affiche_obj_inst|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan2~5_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(2) & (\movement_ctrl_inst|y_ball\(2) & !\affiche_obj_inst|LessThan2~3_cout\)) # (!\vga_ctrl_inst|vsync_inst|y\(2) & ((\movement_ctrl_inst|y_ball\(2)) # 
-- (!\affiche_obj_inst|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(2),
	datab => \movement_ctrl_inst|y_ball\(2),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan2~3_cout\,
	cout => \affiche_obj_inst|LessThan2~5_cout\);

-- Location: LCCOMB_X44_Y33_N10
\affiche_obj_inst|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan2~7_cout\ = CARRY((\movement_ctrl_inst|y_ball\(3) & (\vga_ctrl_inst|vsync_inst|y\(3) & !\affiche_obj_inst|LessThan2~5_cout\)) # (!\movement_ctrl_inst|y_ball\(3) & ((\vga_ctrl_inst|vsync_inst|y\(3)) # 
-- (!\affiche_obj_inst|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(3),
	datab => \vga_ctrl_inst|vsync_inst|y\(3),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan2~5_cout\,
	cout => \affiche_obj_inst|LessThan2~7_cout\);

-- Location: LCCOMB_X44_Y33_N12
\affiche_obj_inst|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan2~9_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(4) & (\movement_ctrl_inst|y_ball\(4) & !\affiche_obj_inst|LessThan2~7_cout\)) # (!\vga_ctrl_inst|vsync_inst|y\(4) & ((\movement_ctrl_inst|y_ball\(4)) # 
-- (!\affiche_obj_inst|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(4),
	datab => \movement_ctrl_inst|y_ball\(4),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan2~7_cout\,
	cout => \affiche_obj_inst|LessThan2~9_cout\);

-- Location: LCCOMB_X44_Y33_N14
\affiche_obj_inst|LessThan2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan2~11_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(5) & ((!\affiche_obj_inst|LessThan2~9_cout\) # (!\movement_ctrl_inst|y_ball\(5)))) # (!\vga_ctrl_inst|vsync_inst|y\(5) & (!\movement_ctrl_inst|y_ball\(5) & 
-- !\affiche_obj_inst|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(5),
	datab => \movement_ctrl_inst|y_ball\(5),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan2~9_cout\,
	cout => \affiche_obj_inst|LessThan2~11_cout\);

-- Location: LCCOMB_X44_Y33_N16
\affiche_obj_inst|LessThan2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan2~13_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(6) & (\movement_ctrl_inst|y_ball\(6) & !\affiche_obj_inst|LessThan2~11_cout\)) # (!\vga_ctrl_inst|vsync_inst|y\(6) & ((\movement_ctrl_inst|y_ball\(6)) # 
-- (!\affiche_obj_inst|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(6),
	datab => \movement_ctrl_inst|y_ball\(6),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan2~11_cout\,
	cout => \affiche_obj_inst|LessThan2~13_cout\);

-- Location: LCCOMB_X44_Y33_N18
\affiche_obj_inst|LessThan2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan2~15_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(7) & ((!\affiche_obj_inst|LessThan2~13_cout\) # (!\movement_ctrl_inst|y_ball\(7)))) # (!\vga_ctrl_inst|vsync_inst|y\(7) & (!\movement_ctrl_inst|y_ball\(7) & 
-- !\affiche_obj_inst|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(7),
	datab => \movement_ctrl_inst|y_ball\(7),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan2~13_cout\,
	cout => \affiche_obj_inst|LessThan2~15_cout\);

-- Location: LCCOMB_X44_Y33_N20
\affiche_obj_inst|LessThan2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan2~17_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(8) & (\movement_ctrl_inst|y_ball\(8) & !\affiche_obj_inst|LessThan2~15_cout\)) # (!\vga_ctrl_inst|vsync_inst|y\(8) & ((\movement_ctrl_inst|y_ball\(8)) # 
-- (!\affiche_obj_inst|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(8),
	datab => \movement_ctrl_inst|y_ball\(8),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan2~15_cout\,
	cout => \affiche_obj_inst|LessThan2~17_cout\);

-- Location: LCCOMB_X44_Y33_N22
\affiche_obj_inst|LessThan2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan2~19_cout\ = CARRY((\movement_ctrl_inst|y_ball\(9) & (\vga_ctrl_inst|vsync_inst|y\(9) & !\affiche_obj_inst|LessThan2~17_cout\)) # (!\movement_ctrl_inst|y_ball\(9) & ((\vga_ctrl_inst|vsync_inst|y\(9)) # 
-- (!\affiche_obj_inst|LessThan2~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|y_ball\(9),
	datab => \vga_ctrl_inst|vsync_inst|y\(9),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan2~17_cout\,
	cout => \affiche_obj_inst|LessThan2~19_cout\);

-- Location: LCCOMB_X44_Y33_N24
\affiche_obj_inst|LessThan2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan2~21_cout\ = CARRY((\vga_ctrl_inst|vsync_inst|y\(10) & (\movement_ctrl_inst|y_ball\(10) & !\affiche_obj_inst|LessThan2~19_cout\)) # (!\vga_ctrl_inst|vsync_inst|y\(10) & ((\movement_ctrl_inst|y_ball\(10)) # 
-- (!\affiche_obj_inst|LessThan2~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(10),
	datab => \movement_ctrl_inst|y_ball\(10),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan2~19_cout\,
	cout => \affiche_obj_inst|LessThan2~21_cout\);

-- Location: LCCOMB_X44_Y33_N26
\affiche_obj_inst|LessThan2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan2~22_combout\ = (\movement_ctrl_inst|y_ball\(11) & ((\affiche_obj_inst|LessThan2~21_cout\) # (!\vga_ctrl_inst|vsync_inst|y\(11)))) # (!\movement_ctrl_inst|y_ball\(11) & (\affiche_obj_inst|LessThan2~21_cout\ & 
-- !\vga_ctrl_inst|vsync_inst|y\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|y_ball\(11),
	datad => \vga_ctrl_inst|vsync_inst|y\(11),
	cin => \affiche_obj_inst|LessThan2~21_cout\,
	combout => \affiche_obj_inst|LessThan2~22_combout\);

-- Location: LCCOMB_X42_Y38_N0
\affiche_obj_inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan0~1_cout\ = CARRY((\movement_ctrl_inst|x_ball\(0) & !\vga_ctrl_inst|hsync_inst|x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(0),
	datab => \vga_ctrl_inst|hsync_inst|x\(0),
	datad => VCC,
	cout => \affiche_obj_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X42_Y38_N2
\affiche_obj_inst|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan0~3_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(1) & ((!\affiche_obj_inst|LessThan0~1_cout\) # (!\movement_ctrl_inst|x_ball\(1)))) # (!\vga_ctrl_inst|hsync_inst|x\(1) & (!\movement_ctrl_inst|x_ball\(1) & 
-- !\affiche_obj_inst|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(1),
	datab => \movement_ctrl_inst|x_ball\(1),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan0~1_cout\,
	cout => \affiche_obj_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X42_Y38_N4
\affiche_obj_inst|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan0~5_cout\ = CARRY((\movement_ctrl_inst|x_ball\(2) & ((!\affiche_obj_inst|LessThan0~3_cout\) # (!\vga_ctrl_inst|hsync_inst|x\(2)))) # (!\movement_ctrl_inst|x_ball\(2) & (!\vga_ctrl_inst|hsync_inst|x\(2) & 
-- !\affiche_obj_inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(2),
	datab => \vga_ctrl_inst|hsync_inst|x\(2),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan0~3_cout\,
	cout => \affiche_obj_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X42_Y38_N6
\affiche_obj_inst|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan0~7_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(3) & ((!\affiche_obj_inst|LessThan0~5_cout\) # (!\movement_ctrl_inst|x_ball\(3)))) # (!\vga_ctrl_inst|hsync_inst|x\(3) & (!\movement_ctrl_inst|x_ball\(3) & 
-- !\affiche_obj_inst|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(3),
	datab => \movement_ctrl_inst|x_ball\(3),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan0~5_cout\,
	cout => \affiche_obj_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X42_Y38_N8
\affiche_obj_inst|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan0~9_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(4) & (\movement_ctrl_inst|x_ball\(4) & !\affiche_obj_inst|LessThan0~7_cout\)) # (!\vga_ctrl_inst|hsync_inst|x\(4) & ((\movement_ctrl_inst|x_ball\(4)) # 
-- (!\affiche_obj_inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(4),
	datab => \movement_ctrl_inst|x_ball\(4),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan0~7_cout\,
	cout => \affiche_obj_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X42_Y38_N10
\affiche_obj_inst|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan0~11_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(5) & ((!\affiche_obj_inst|LessThan0~9_cout\) # (!\movement_ctrl_inst|x_ball\(5)))) # (!\vga_ctrl_inst|hsync_inst|x\(5) & (!\movement_ctrl_inst|x_ball\(5) & 
-- !\affiche_obj_inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(5),
	datab => \movement_ctrl_inst|x_ball\(5),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan0~9_cout\,
	cout => \affiche_obj_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X42_Y38_N12
\affiche_obj_inst|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan0~13_cout\ = CARRY((\movement_ctrl_inst|x_ball\(6) & ((!\affiche_obj_inst|LessThan0~11_cout\) # (!\vga_ctrl_inst|hsync_inst|x\(6)))) # (!\movement_ctrl_inst|x_ball\(6) & (!\vga_ctrl_inst|hsync_inst|x\(6) & 
-- !\affiche_obj_inst|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(6),
	datab => \vga_ctrl_inst|hsync_inst|x\(6),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan0~11_cout\,
	cout => \affiche_obj_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X42_Y38_N14
\affiche_obj_inst|LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan0~15_cout\ = CARRY((\vga_ctrl_inst|hsync_inst|x\(7) & ((!\affiche_obj_inst|LessThan0~13_cout\) # (!\movement_ctrl_inst|x_ball\(7)))) # (!\vga_ctrl_inst|hsync_inst|x\(7) & (!\movement_ctrl_inst|x_ball\(7) & 
-- !\affiche_obj_inst|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(7),
	datab => \movement_ctrl_inst|x_ball\(7),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan0~13_cout\,
	cout => \affiche_obj_inst|LessThan0~15_cout\);

-- Location: LCCOMB_X42_Y38_N16
\affiche_obj_inst|LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan0~17_cout\ = CARRY((\movement_ctrl_inst|x_ball\(8) & ((!\affiche_obj_inst|LessThan0~15_cout\) # (!\vga_ctrl_inst|hsync_inst|x\(8)))) # (!\movement_ctrl_inst|x_ball\(8) & (!\vga_ctrl_inst|hsync_inst|x\(8) & 
-- !\affiche_obj_inst|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(8),
	datab => \vga_ctrl_inst|hsync_inst|x\(8),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan0~15_cout\,
	cout => \affiche_obj_inst|LessThan0~17_cout\);

-- Location: LCCOMB_X42_Y38_N18
\affiche_obj_inst|LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan0~19_cout\ = CARRY((\movement_ctrl_inst|x_ball\(9) & (\vga_ctrl_inst|hsync_inst|x\(9) & !\affiche_obj_inst|LessThan0~17_cout\)) # (!\movement_ctrl_inst|x_ball\(9) & ((\vga_ctrl_inst|hsync_inst|x\(9)) # 
-- (!\affiche_obj_inst|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(9),
	datab => \vga_ctrl_inst|hsync_inst|x\(9),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan0~17_cout\,
	cout => \affiche_obj_inst|LessThan0~19_cout\);

-- Location: LCCOMB_X42_Y38_N20
\affiche_obj_inst|LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan0~21_cout\ = CARRY((\movement_ctrl_inst|x_ball\(10) & ((!\affiche_obj_inst|LessThan0~19_cout\) # (!\vga_ctrl_inst|hsync_inst|x\(10)))) # (!\movement_ctrl_inst|x_ball\(10) & (!\vga_ctrl_inst|hsync_inst|x\(10) & 
-- !\affiche_obj_inst|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_ball\(10),
	datab => \vga_ctrl_inst|hsync_inst|x\(10),
	datad => VCC,
	cin => \affiche_obj_inst|LessThan0~19_cout\,
	cout => \affiche_obj_inst|LessThan0~21_cout\);

-- Location: LCCOMB_X42_Y38_N22
\affiche_obj_inst|LessThan0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan0~22_combout\ = (\movement_ctrl_inst|x_ball\(11) & ((\affiche_obj_inst|LessThan0~21_cout\) # (!\vga_ctrl_inst|hsync_inst|x\(11)))) # (!\movement_ctrl_inst|x_ball\(11) & (\affiche_obj_inst|LessThan0~21_cout\ & 
-- !\vga_ctrl_inst|hsync_inst|x\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_ball\(11),
	datad => \vga_ctrl_inst|hsync_inst|x\(11),
	cin => \affiche_obj_inst|LessThan0~21_cout\,
	combout => \affiche_obj_inst|LessThan0~22_combout\);

-- Location: LCCOMB_X43_Y35_N30
\affiche_obj_inst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|process_0~1_combout\ = (\affiche_obj_inst|process_0~0_combout\ & (!\affiche_obj_inst|LessThan2~22_combout\ & !\affiche_obj_inst|LessThan0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|process_0~0_combout\,
	datac => \affiche_obj_inst|LessThan2~22_combout\,
	datad => \affiche_obj_inst|LessThan0~22_combout\,
	combout => \affiche_obj_inst|process_0~1_combout\);

-- Location: LCCOMB_X41_Y33_N30
\vga_ctrl_inst|display_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|display_en~combout\ = (\vga_ctrl_inst|hsync_inst|etat.display~q\ & \vga_ctrl_inst|vsync_inst|etat.display~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|hsync_inst|etat.display~q\,
	datad => \vga_ctrl_inst|vsync_inst|etat.display~q\,
	combout => \vga_ctrl_inst|display_en~combout\);

-- Location: CLKCTRL_G11
\vga_ctrl_inst|display_en~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vga_ctrl_inst|display_en~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vga_ctrl_inst|display_en~clkctrl_outclk\);

-- Location: LCCOMB_X43_Y35_N26
\affiche_obj_inst|R[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|R\(0) = (GLOBAL(\vga_ctrl_inst|display_en~clkctrl_outclk\) & ((\affiche_obj_inst|process_0~1_combout\))) # (!GLOBAL(\vga_ctrl_inst|display_en~clkctrl_outclk\) & (\affiche_obj_inst|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|R\(0),
	datac => \affiche_obj_inst|process_0~1_combout\,
	datad => \vga_ctrl_inst|display_en~clkctrl_outclk\,
	combout => \affiche_obj_inst|R\(0));

-- Location: LCCOMB_X44_Y37_N18
\affiche_obj_inst|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan4~0_combout\ = (\vga_ctrl_inst|hsync_inst|x\(2) & (\movement_ctrl_inst|x_stand\(1) & (!\movement_ctrl_inst|x_stand\(2) & !\vga_ctrl_inst|hsync_inst|x\(1)))) # (!\vga_ctrl_inst|hsync_inst|x\(2) & (((\movement_ctrl_inst|x_stand\(1) 
-- & !\vga_ctrl_inst|hsync_inst|x\(1))) # (!\movement_ctrl_inst|x_stand\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(1),
	datab => \vga_ctrl_inst|hsync_inst|x\(2),
	datac => \movement_ctrl_inst|x_stand\(2),
	datad => \vga_ctrl_inst|hsync_inst|x\(1),
	combout => \affiche_obj_inst|LessThan4~0_combout\);

-- Location: LCCOMB_X44_Y37_N20
\affiche_obj_inst|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan4~1_combout\ = (\affiche_obj_inst|LessThan4~0_combout\ & ((\movement_ctrl_inst|x_stand\(3)) # (!\vga_ctrl_inst|hsync_inst|x\(3)))) # (!\affiche_obj_inst|LessThan4~0_combout\ & (\movement_ctrl_inst|x_stand\(3) & 
-- !\vga_ctrl_inst|hsync_inst|x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \affiche_obj_inst|LessThan4~0_combout\,
	datac => \movement_ctrl_inst|x_stand\(3),
	datad => \vga_ctrl_inst|hsync_inst|x\(3),
	combout => \affiche_obj_inst|LessThan4~1_combout\);

-- Location: LCCOMB_X44_Y37_N2
\affiche_obj_inst|LessThan4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan4~2_combout\ = (\movement_ctrl_inst|x_stand\(4) & ((\affiche_obj_inst|LessThan4~1_combout\) # (!\vga_ctrl_inst|hsync_inst|x\(4)))) # (!\movement_ctrl_inst|x_stand\(4) & (\affiche_obj_inst|LessThan4~1_combout\ & 
-- !\vga_ctrl_inst|hsync_inst|x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_stand\(4),
	datac => \affiche_obj_inst|LessThan4~1_combout\,
	datad => \vga_ctrl_inst|hsync_inst|x\(4),
	combout => \affiche_obj_inst|LessThan4~2_combout\);

-- Location: LCCOMB_X44_Y37_N24
\affiche_obj_inst|LessThan4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan4~3_combout\ = (\affiche_obj_inst|LessThan4~2_combout\ & ((!\vga_ctrl_inst|hsync_inst|x\(5)) # (!\movement_ctrl_inst|x_stand\(5)))) # (!\affiche_obj_inst|LessThan4~2_combout\ & (!\movement_ctrl_inst|x_stand\(5) & 
-- !\vga_ctrl_inst|hsync_inst|x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|LessThan4~2_combout\,
	datab => \movement_ctrl_inst|x_stand\(5),
	datad => \vga_ctrl_inst|hsync_inst|x\(5),
	combout => \affiche_obj_inst|LessThan4~3_combout\);

-- Location: LCCOMB_X44_Y37_N10
\affiche_obj_inst|LessThan4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan4~4_combout\ = (\affiche_obj_inst|LessThan4~3_combout\ & ((!\vga_ctrl_inst|hsync_inst|x\(6)) # (!\movement_ctrl_inst|x_stand\(6)))) # (!\affiche_obj_inst|LessThan4~3_combout\ & (!\movement_ctrl_inst|x_stand\(6) & 
-- !\vga_ctrl_inst|hsync_inst|x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|LessThan4~3_combout\,
	datac => \movement_ctrl_inst|x_stand\(6),
	datad => \vga_ctrl_inst|hsync_inst|x\(6),
	combout => \affiche_obj_inst|LessThan4~4_combout\);

-- Location: LCCOMB_X44_Y37_N0
\affiche_obj_inst|LessThan4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan4~5_combout\ = (\affiche_obj_inst|LessThan4~4_combout\ & ((\movement_ctrl_inst|x_stand\(7)) # (!\vga_ctrl_inst|hsync_inst|x\(7)))) # (!\affiche_obj_inst|LessThan4~4_combout\ & (!\vga_ctrl_inst|hsync_inst|x\(7) & 
-- \movement_ctrl_inst|x_stand\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|LessThan4~4_combout\,
	datab => \vga_ctrl_inst|hsync_inst|x\(7),
	datad => \movement_ctrl_inst|x_stand\(7),
	combout => \affiche_obj_inst|LessThan4~5_combout\);

-- Location: LCCOMB_X44_Y37_N6
\affiche_obj_inst|LessThan4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan4~6_combout\ = (\movement_ctrl_inst|x_stand\(8) & ((\affiche_obj_inst|LessThan4~5_combout\) # (!\vga_ctrl_inst|hsync_inst|x\(8)))) # (!\movement_ctrl_inst|x_stand\(8) & (\affiche_obj_inst|LessThan4~5_combout\ & 
-- !\vga_ctrl_inst|hsync_inst|x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movement_ctrl_inst|x_stand\(8),
	datac => \affiche_obj_inst|LessThan4~5_combout\,
	datad => \vga_ctrl_inst|hsync_inst|x\(8),
	combout => \affiche_obj_inst|LessThan4~6_combout\);

-- Location: LCCOMB_X43_Y35_N4
\affiche_obj_inst|LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan5~5_combout\ = \affiche_obj_inst|Add2~18_combout\ $ (\vga_ctrl_inst|hsync_inst|x\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add2~18_combout\,
	datab => \vga_ctrl_inst|hsync_inst|x\(11),
	combout => \affiche_obj_inst|LessThan5~5_combout\);

-- Location: LCCOMB_X44_Y37_N4
\affiche_obj_inst|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan5~0_combout\ = (\vga_ctrl_inst|hsync_inst|x\(2) & (\movement_ctrl_inst|x_stand\(1) & (\movement_ctrl_inst|x_stand\(2) & !\vga_ctrl_inst|hsync_inst|x\(1)))) # (!\vga_ctrl_inst|hsync_inst|x\(2) & ((\movement_ctrl_inst|x_stand\(2)) 
-- # ((\movement_ctrl_inst|x_stand\(1) & !\vga_ctrl_inst|hsync_inst|x\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(1),
	datab => \vga_ctrl_inst|hsync_inst|x\(2),
	datac => \movement_ctrl_inst|x_stand\(2),
	datad => \vga_ctrl_inst|hsync_inst|x\(1),
	combout => \affiche_obj_inst|LessThan5~0_combout\);

-- Location: LCCOMB_X44_Y37_N14
\affiche_obj_inst|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan5~1_combout\ = (\affiche_obj_inst|Add2~2_combout\ & ((\affiche_obj_inst|LessThan5~0_combout\) # (!\vga_ctrl_inst|hsync_inst|x\(3)))) # (!\affiche_obj_inst|Add2~2_combout\ & (!\vga_ctrl_inst|hsync_inst|x\(3) & 
-- \affiche_obj_inst|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add2~2_combout\,
	datab => \vga_ctrl_inst|hsync_inst|x\(3),
	datac => \affiche_obj_inst|LessThan5~0_combout\,
	combout => \affiche_obj_inst|LessThan5~1_combout\);

-- Location: LCCOMB_X44_Y37_N28
\affiche_obj_inst|LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan5~2_combout\ = (\affiche_obj_inst|LessThan5~1_combout\ & ((\affiche_obj_inst|Add2~4_combout\) # (!\vga_ctrl_inst|hsync_inst|x\(4)))) # (!\affiche_obj_inst|LessThan5~1_combout\ & (\affiche_obj_inst|Add2~4_combout\ & 
-- !\vga_ctrl_inst|hsync_inst|x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \affiche_obj_inst|LessThan5~1_combout\,
	datac => \affiche_obj_inst|Add2~4_combout\,
	datad => \vga_ctrl_inst|hsync_inst|x\(4),
	combout => \affiche_obj_inst|LessThan5~2_combout\);

-- Location: LCCOMB_X44_Y37_N30
\affiche_obj_inst|LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan5~3_combout\ = (\affiche_obj_inst|Add2~6_combout\ & ((\affiche_obj_inst|LessThan5~2_combout\) # (!\vga_ctrl_inst|hsync_inst|x\(5)))) # (!\affiche_obj_inst|Add2~6_combout\ & (\affiche_obj_inst|LessThan5~2_combout\ & 
-- !\vga_ctrl_inst|hsync_inst|x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add2~6_combout\,
	datab => \affiche_obj_inst|LessThan5~2_combout\,
	datad => \vga_ctrl_inst|hsync_inst|x\(5),
	combout => \affiche_obj_inst|LessThan5~3_combout\);

-- Location: LCCOMB_X45_Y37_N30
\affiche_obj_inst|LessThan5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan5~7_combout\ = (\vga_ctrl_inst|hsync_inst|x\(7) & (\affiche_obj_inst|Add2~10_combout\ & (\affiche_obj_inst|Add2~12_combout\ $ (!\vga_ctrl_inst|hsync_inst|x\(8))))) # (!\vga_ctrl_inst|hsync_inst|x\(7) & 
-- (!\affiche_obj_inst|Add2~10_combout\ & (\affiche_obj_inst|Add2~12_combout\ $ (!\vga_ctrl_inst|hsync_inst|x\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(7),
	datab => \affiche_obj_inst|Add2~12_combout\,
	datac => \vga_ctrl_inst|hsync_inst|x\(8),
	datad => \affiche_obj_inst|Add2~10_combout\,
	combout => \affiche_obj_inst|LessThan5~7_combout\);

-- Location: LCCOMB_X44_Y37_N26
\affiche_obj_inst|LessThan5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan5~8_combout\ = (\affiche_obj_inst|LessThan5~7_combout\ & ((\affiche_obj_inst|Add2~8_combout\ & ((\affiche_obj_inst|LessThan5~3_combout\) # (!\vga_ctrl_inst|hsync_inst|x\(6)))) # (!\affiche_obj_inst|Add2~8_combout\ & 
-- (\affiche_obj_inst|LessThan5~3_combout\ & !\vga_ctrl_inst|hsync_inst|x\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add2~8_combout\,
	datab => \affiche_obj_inst|LessThan5~3_combout\,
	datac => \affiche_obj_inst|LessThan5~7_combout\,
	datad => \vga_ctrl_inst|hsync_inst|x\(6),
	combout => \affiche_obj_inst|LessThan5~8_combout\);

-- Location: LCCOMB_X45_Y37_N28
\affiche_obj_inst|LessThan5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan5~4_combout\ = (\affiche_obj_inst|Add2~12_combout\ & (((\affiche_obj_inst|Add2~10_combout\ & !\vga_ctrl_inst|hsync_inst|x\(7))) # (!\vga_ctrl_inst|hsync_inst|x\(8)))) # (!\affiche_obj_inst|Add2~12_combout\ & 
-- (\affiche_obj_inst|Add2~10_combout\ & (!\vga_ctrl_inst|hsync_inst|x\(8) & !\vga_ctrl_inst|hsync_inst|x\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add2~10_combout\,
	datab => \affiche_obj_inst|Add2~12_combout\,
	datac => \vga_ctrl_inst|hsync_inst|x\(8),
	datad => \vga_ctrl_inst|hsync_inst|x\(7),
	combout => \affiche_obj_inst|LessThan5~4_combout\);

-- Location: LCCOMB_X44_Y37_N12
\affiche_obj_inst|process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|process_0~8_combout\ = (\affiche_obj_inst|Add2~14_combout\ & (((\affiche_obj_inst|LessThan5~8_combout\) # (\affiche_obj_inst|LessThan5~4_combout\)) # (!\vga_ctrl_inst|hsync_inst|x\(9)))) # (!\affiche_obj_inst|Add2~14_combout\ & 
-- (!\vga_ctrl_inst|hsync_inst|x\(9) & ((\affiche_obj_inst|LessThan5~8_combout\) # (\affiche_obj_inst|LessThan5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|Add2~14_combout\,
	datab => \vga_ctrl_inst|hsync_inst|x\(9),
	datac => \affiche_obj_inst|LessThan5~8_combout\,
	datad => \affiche_obj_inst|LessThan5~4_combout\,
	combout => \affiche_obj_inst|process_0~8_combout\);

-- Location: LCCOMB_X43_Y35_N2
\affiche_obj_inst|process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|process_0~9_combout\ = (!\affiche_obj_inst|LessThan5~5_combout\ & ((\vga_ctrl_inst|hsync_inst|x\(10) & (\affiche_obj_inst|Add2~16_combout\ & \affiche_obj_inst|process_0~8_combout\)) # (!\vga_ctrl_inst|hsync_inst|x\(10) & 
-- ((\affiche_obj_inst|Add2~16_combout\) # (\affiche_obj_inst|process_0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(10),
	datab => \affiche_obj_inst|LessThan5~5_combout\,
	datac => \affiche_obj_inst|Add2~16_combout\,
	datad => \affiche_obj_inst|process_0~8_combout\,
	combout => \affiche_obj_inst|process_0~9_combout\);

-- Location: LCCOMB_X43_Y35_N8
\affiche_obj_inst|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|process_0~6_combout\ = (\vga_ctrl_inst|hsync_inst|x\(10) & (\movement_ctrl_inst|x_stand\(9) & (!\vga_ctrl_inst|hsync_inst|x\(9) & \movement_ctrl_inst|x_stand\(10)))) # (!\vga_ctrl_inst|hsync_inst|x\(10) & 
-- ((\movement_ctrl_inst|x_stand\(10)) # ((\movement_ctrl_inst|x_stand\(9) & !\vga_ctrl_inst|hsync_inst|x\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(9),
	datab => \vga_ctrl_inst|hsync_inst|x\(9),
	datac => \vga_ctrl_inst|hsync_inst|x\(10),
	datad => \movement_ctrl_inst|x_stand\(10),
	combout => \affiche_obj_inst|process_0~6_combout\);

-- Location: LCCOMB_X42_Y33_N0
\affiche_obj_inst|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|process_0~3_combout\ = (!\vga_ctrl_inst|vsync_inst|y\(10) & (\vga_ctrl_inst|vsync_inst|y\(8) & (!\vga_ctrl_inst|vsync_inst|y\(9) & !\vga_ctrl_inst|vsync_inst|y\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(10),
	datab => \vga_ctrl_inst|vsync_inst|y\(8),
	datac => \vga_ctrl_inst|vsync_inst|y\(9),
	datad => \vga_ctrl_inst|vsync_inst|y\(11),
	combout => \affiche_obj_inst|process_0~3_combout\);

-- Location: LCCOMB_X42_Y33_N2
\affiche_obj_inst|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|process_0~2_combout\ = (\vga_ctrl_inst|vsync_inst|y\(3) & (((\vga_ctrl_inst|vsync_inst|y\(2) & !\vga_ctrl_inst|vsync_inst|y\(4))))) # (!\vga_ctrl_inst|vsync_inst|y\(3) & (\vga_ctrl_inst|vsync_inst|y\(4) & 
-- ((!\vga_ctrl_inst|vsync_inst|y\(2)) # (!\vga_ctrl_inst|vsync_inst|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(1),
	datab => \vga_ctrl_inst|vsync_inst|y\(3),
	datac => \vga_ctrl_inst|vsync_inst|y\(2),
	datad => \vga_ctrl_inst|vsync_inst|y\(4),
	combout => \affiche_obj_inst|process_0~2_combout\);

-- Location: LCCOMB_X42_Y33_N30
\affiche_obj_inst|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|process_0~4_combout\ = (!\vga_ctrl_inst|vsync_inst|y\(5) & (\vga_ctrl_inst|vsync_inst|y\(7) & \vga_ctrl_inst|vsync_inst|y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vsync_inst|y\(5),
	datab => \vga_ctrl_inst|vsync_inst|y\(7),
	datad => \vga_ctrl_inst|vsync_inst|y\(6),
	combout => \affiche_obj_inst|process_0~4_combout\);

-- Location: LCCOMB_X42_Y33_N4
\affiche_obj_inst|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|process_0~5_combout\ = (\affiche_obj_inst|process_0~3_combout\ & (\affiche_obj_inst|process_0~2_combout\ & \affiche_obj_inst|process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|process_0~3_combout\,
	datab => \affiche_obj_inst|process_0~2_combout\,
	datad => \affiche_obj_inst|process_0~4_combout\,
	combout => \affiche_obj_inst|process_0~5_combout\);

-- Location: LCCOMB_X43_Y35_N6
\affiche_obj_inst|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|process_0~7_combout\ = (\affiche_obj_inst|process_0~5_combout\ & ((\movement_ctrl_inst|x_stand\(11) & (!\affiche_obj_inst|process_0~6_combout\ & \vga_ctrl_inst|hsync_inst|x\(11))) # (!\movement_ctrl_inst|x_stand\(11) & 
-- ((\vga_ctrl_inst|hsync_inst|x\(11)) # (!\affiche_obj_inst|process_0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(11),
	datab => \affiche_obj_inst|process_0~6_combout\,
	datac => \vga_ctrl_inst|hsync_inst|x\(11),
	datad => \affiche_obj_inst|process_0~5_combout\,
	combout => \affiche_obj_inst|process_0~7_combout\);

-- Location: LCCOMB_X43_Y35_N12
\affiche_obj_inst|LessThan5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan5~6_combout\ = (!\vga_ctrl_inst|hsync_inst|x\(11) & \affiche_obj_inst|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|hsync_inst|x\(11),
	datac => \affiche_obj_inst|Add2~18_combout\,
	combout => \affiche_obj_inst|LessThan5~6_combout\);

-- Location: LCCOMB_X43_Y35_N22
\affiche_obj_inst|process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|process_0~10_combout\ = (\affiche_obj_inst|process_0~7_combout\ & ((\affiche_obj_inst|process_0~9_combout\) # ((\affiche_obj_inst|Add2~20_combout\) # (\affiche_obj_inst|LessThan5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|process_0~9_combout\,
	datab => \affiche_obj_inst|Add2~20_combout\,
	datac => \affiche_obj_inst|process_0~7_combout\,
	datad => \affiche_obj_inst|LessThan5~6_combout\,
	combout => \affiche_obj_inst|process_0~10_combout\);

-- Location: LCCOMB_X43_Y35_N24
\affiche_obj_inst|LessThan4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan4~7_combout\ = (\vga_ctrl_inst|hsync_inst|x\(10) & (\movement_ctrl_inst|x_stand\(10) & (\vga_ctrl_inst|hsync_inst|x\(11) $ (!\movement_ctrl_inst|x_stand\(11))))) # (!\vga_ctrl_inst|hsync_inst|x\(10) & 
-- (!\movement_ctrl_inst|x_stand\(10) & (\vga_ctrl_inst|hsync_inst|x\(11) $ (!\movement_ctrl_inst|x_stand\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hsync_inst|x\(10),
	datab => \movement_ctrl_inst|x_stand\(10),
	datac => \vga_ctrl_inst|hsync_inst|x\(11),
	datad => \movement_ctrl_inst|x_stand\(11),
	combout => \affiche_obj_inst|LessThan4~7_combout\);

-- Location: LCCOMB_X43_Y35_N14
\affiche_obj_inst|LessThan4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|LessThan4~8_combout\ = (\affiche_obj_inst|LessThan4~7_combout\ & (\movement_ctrl_inst|x_stand\(9) $ (!\vga_ctrl_inst|hsync_inst|x\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movement_ctrl_inst|x_stand\(9),
	datac => \vga_ctrl_inst|hsync_inst|x\(9),
	datad => \affiche_obj_inst|LessThan4~7_combout\,
	combout => \affiche_obj_inst|LessThan4~8_combout\);

-- Location: LCCOMB_X43_Y35_N0
\affiche_obj_inst|G~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|G~0_combout\ = (\affiche_obj_inst|process_0~1_combout\) # ((\affiche_obj_inst|process_0~10_combout\ & ((!\affiche_obj_inst|LessThan4~8_combout\) # (!\affiche_obj_inst|LessThan4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affiche_obj_inst|LessThan4~6_combout\,
	datab => \affiche_obj_inst|process_0~10_combout\,
	datac => \affiche_obj_inst|LessThan4~8_combout\,
	datad => \affiche_obj_inst|process_0~1_combout\,
	combout => \affiche_obj_inst|G~0_combout\);

-- Location: LCCOMB_X43_Y35_N28
\affiche_obj_inst|G[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affiche_obj_inst|G\(0) = (GLOBAL(\vga_ctrl_inst|display_en~clkctrl_outclk\) & ((\affiche_obj_inst|G~0_combout\))) # (!GLOBAL(\vga_ctrl_inst|display_en~clkctrl_outclk\) & (\affiche_obj_inst|G\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \affiche_obj_inst|G\(0),
	datac => \affiche_obj_inst|G~0_combout\,
	datad => \vga_ctrl_inst|display_en~clkctrl_outclk\,
	combout => \affiche_obj_inst|G\(0));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


