library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_sync is
end tb_sync;

architecture behavioral of tb_sync is

    -- Component Declaration for the Unit Under Test (UUT)
    component hsync
    port(
        start : in std_logic;
        reset : in std_logic;
        clk : in std_logic;
        h_sync : out std_logic;
        display_h_en : out std_logic;
        x : out std_logic_vector(11 downto 0);
        end_of_line : out std_logic
    );
    end component;
    
    component vsync
    port(
        start : in std_logic;
        reset : in std_logic;
        clk : in std_logic;
        end_of_line : in std_logic;
        v_sync : out std_logic;
        display_v_en : out std_logic;
        y : out std_logic_vector(11 downto 0)
    );
    end component;

    -- Testbench signals
    signal start : std_logic := '0';
    signal reset : std_logic := '0';
    signal clk : std_logic := '0';
    signal h_sync : std_logic;
    signal display_h_en : std_logic;
    signal x : std_logic_vector(11 downto 0);
    signal end_of_line : std_logic;
    signal v_sync : std_logic;
    signal display_v_en : std_logic;
    signal y : std_logic_vector(11 downto 0);

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    hsync_uut: hsync
    port map (
        start => start,
        reset => reset,
        clk => clk,
        h_sync => h_sync,
        display_h_en => display_h_en,
        x => x,
        end_of_line => end_of_line
    );

    vsync_uut: vsync
    port map (
        start => start,
        reset => reset,
        clk => clk,
        end_of_line => end_of_line,
        v_sync => v_sync,
        display_v_en => display_v_en,
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
        wait for clk_period*2;
        start <= '0';

        -- Wait and observe the behavior
        wait for clk_period*2000;

        -- Finish simulation
        wait;
    end process;

end behavioral;
