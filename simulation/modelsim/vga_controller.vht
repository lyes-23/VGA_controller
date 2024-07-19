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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "06/25/2024 22:04:26"
                                                            
-- Vhdl Test Bench template for design  :  vga_controller
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY vga_controller_vhd_tst IS
END vga_controller_vhd_tst;
ARCHITECTURE vga_controller_arch OF vga_controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL display_en : STD_LOGIC;
SIGNAL h_sync : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL v_sync : STD_LOGIC;
SIGNAL x : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(11 DOWNTO 0);
COMPONENT vga_controller
	PORT (
	clk : IN STD_LOGIC;
	display_en : OUT STD_LOGIC;
	h_sync : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC;
	v_sync : OUT STD_LOGIC;
	x : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	y : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;

 constant clk_period : time := 10 ns;
 
BEGIN
	i1 : vga_controller
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	display_en => display_en,
	h_sync => h_sync,
	reset => reset,
	start => start,
	v_sync => v_sync,
	x => x,
	y => y
	);
    -- Clock process definitions
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize Inputs
        start <= '0';
        reset <= '0';

        -- Wait for global reset to finish
        wait for clk_period*10;

        -- Reset the UUT
        reset <= '1';
        wait for clk_period*2;
        reset <= '0';
        wait for clk_period*2;

        -- Start the UUT
        start <= '1';
       

        -- Wait and observe the behavior
        wait for clk_period*2000;

        -- Finish simulation
        wait;
    end process;
                                          
END vga_controller_arch;
