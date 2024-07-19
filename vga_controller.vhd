library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_controller is
    port(
        start : in std_logic;
        reset : in std_logic;
        clk : in std_logic;
        h_sync : out std_logic;
        v_sync : out std_logic;
        display_en : out std_logic;
        x : out std_logic_vector(11 downto 0);
        y : out std_logic_vector(11 downto 0)
    );
end vga_controller;

architecture behavioral of vga_controller is
    signal end_of_line : std_logic;
    signal display_h_en : std_logic;
    signal display_v_en : std_logic;

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

begin

    -- Instantiate the horizontal synchronization module
    hsync_inst: hsync
        port map (
            start => start,
            reset => reset,
            clk => clk,
            h_sync => h_sync,
            display_h_en => display_h_en,
            x => x,
            end_of_line => end_of_line
        );

    -- Instantiate the vertical synchronization module
    vsync_inst: vsync
        port map (
            start => start,
            reset => reset,
            clk => clk,
            end_of_line => end_of_line,
            v_sync => v_sync,
            display_v_en => display_v_en,
            y => y
        );

    -- Combine horizontal and vertical display enable signals
    display_en <= display_h_en and display_v_en;

end behavioral;
