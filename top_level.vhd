library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;  



entity top_level is 
port(
clk_50: in std_logic ;
start : in std_logic;
reset : in std_logic;

push_button_left: in std_logic;
push_button_right: in std_logic;

R,G,B: out std_logic_vector(3 downto 0 );

h_sync : out std_logic;
v_sync : out std_logic
);
end top_level; 



architecture behave of top_level is 



signal x, y : std_logic_vector(11 downto 0);
signal disp_en : std_logic;
signal x_ball, y_ball, x_stand, y_stand : std_logic_vector(11 downto 0); 
signal clk: std_logic; 
signal reset_db, start_db : std_logic;
signal push_button_left_db,push_button_right_db:  std_logic;


component affiche_obj 
port(
x,y : in std_logic_vector(11 downto 0);
disp_en: in std_logic; 

--objects 
x_ball, y_ball, x_stand : in std_logic_vector(11 downto 0);

--- to the monitor 
R,G,B: out std_logic_vector(3 downto 0 )
); 
end component; 



component vga_controller 
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
end component;


component movement_control
        port(
            clk: in std_logic;
            reset: in std_logic;
            push_button_left: in std_logic;
            push_button_right: in std_logic;
            x, y: in std_logic_vector(11 downto 0);
				xstand : out std_logic_vector(11 downto 0) := std_logic_vector(to_unsigned(100,12));
            xball, yball: out std_logic_vector(11 downto 0)
        );
    end component;
	 
component Debounce_Single_Input 
  generic (
    DEBOUNCE_LIMIT : integer := 200000);
  port (
    i_Clk    : in  std_logic;
    i_Switch : in  std_logic;
    o_Switch : out std_logic
    );
end component;
	 


component PLL 
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC 
	);
END component;
	 

begin

   
    vga_ctrl_inst : vga_controller
        port map (
            start => start_db,
            reset => reset_db,
            clk => clk,
            h_sync => h_sync,
            v_sync => v_sync,
            display_en => disp_en,
            x => x,
            y => y
        );

   
    affiche_obj_inst : affiche_obj
        port map (
            x => x,
            y => y,
            disp_en => disp_en,
            x_ball => x_ball,
            y_ball => y_ball,
            x_stand => x_stand,
            R => R,
            G => G,
            B => B
        );
		  
		movement_ctrl_inst: movement_control
        port map (
            clk => clk,
            reset => reset_db,
            push_button_left =>  push_button_left_db,
            push_button_right => push_button_right_db,
            x => x,
            y => y,
            xstand => x_stand,
            xball => x_ball,
            yball => y_ball
        );

		PLL_frequency: PLL
		port map(
		inclk0 => clk_50,
		c0	    => clk
		);
    
	 
	 -- debounncing the switches
	  -- Debouncing the switches
  Switch1: Debounce_Single_Input
  generic map(
    DEBOUNCE_LIMIT => 50000000
  )
  port map(
    i_Clk    => clk_50,
    i_Switch => start,
    o_Switch => start_db
  );

  Switch2: Debounce_Single_Input
  generic map(
    DEBOUNCE_LIMIT => 50000000
  )
  port map(
    i_Clk    => clk_50,
    i_Switch => reset,
    o_Switch => reset_db
  );
  
  
  
  Switchleft: Debounce_Single_Input
  generic map(
    DEBOUNCE_LIMIT => 50000000
  )
  port map(
    i_Clk    => clk_50,
    i_Switch => push_button_left,
    o_Switch => push_button_left_db
  );
  
  Switchright: Debounce_Single_Input
  generic map(
    DEBOUNCE_LIMIT => 50000000
  )
  port map(
    i_Clk    => clk_50,
    i_Switch => push_button_right,
    o_Switch => push_button_right_db
  );
  

end behave;