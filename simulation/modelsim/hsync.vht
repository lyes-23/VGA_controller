
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hsync_vhd_tst IS
END hsync_vhd_tst;
ARCHITECTURE hsync_arch OF hsync_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL display_h_en : STD_LOGIC;
SIGNAL h_sync : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL x : STD_LOGIC_VECTOR(11 DOWNTO 0);
COMPONENT hsync
	PORT (
	clk : IN STD_LOGIC;
	display_h_en : OUT STD_LOGIC;
	h_sync : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC;
	x : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;


 constant clk_period : time := 10 ns;
 
BEGIN
	i1 : hsync
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	display_h_en => display_h_en,
	h_sync => h_sync,
	reset => reset,
	start => start,
	x => x
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

       
        start <= '1';

        -- Wait and observe the behavior
        wait for clk_period*1000;

        -- Finish simulation
        wait;
    end process;                                         
END hsync_arch;
