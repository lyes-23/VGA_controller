library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity movement_control is
    port(
        clk, reset: in std_logic;
        push_button_left, push_button_right: in std_logic;
        x, y: in std_logic_vector(11 downto 0);
        xstand: out std_logic_vector(11 downto 0) := std_logic_vector(to_unsigned(100, 12));
        xball, yball: out std_logic_vector(11 downto 0);
        level_out, score_out: out integer
    );
end movement_control;

architecture behave of movement_control is
    signal STAND_SPEED : integer := 20;
    constant BALL_INITIAL_INCREMENT : integer := 1;
    constant BALL_MAX_X : integer := 600;
    constant BALL_MAX_Y : integer := 440;
    constant STAND_WIDTH : integer := 60;
    constant STAND_INITIAL_POSITION : integer := 100;
    constant CLK_DIVISION_FACTOR : unsigned(31 downto 0) := to_unsigned(200000, 32); -- Adjust this value based on your clock frequency

    signal x_stand : std_logic_vector(11 downto 0);
    signal x_ball_dir, y_ball_dir : std_logic := '1'; -- Direction control for the ball
    signal x_ball, y_ball: std_logic_vector(11 downto 0);
    signal push_button_left_prev : std_logic := '1';
    signal push_button_right_prev : std_logic := '1';
    signal clk_divider : unsigned(31 downto 0) := (others => '0');
    signal slow_clk : std_logic := '0';
    signal increment : integer := BALL_INITIAL_INCREMENT;
    signal bouncing_counter : integer := 0;
    signal level : integer := 1;
    signal score : integer := 0;

    procedure reset_game is
    begin
        x_ball <= (others => '0');
        y_ball <= (others => '0');
        x_ball_dir <= '1';
        y_ball_dir <= '1';
        increment <= BALL_INITIAL_INCREMENT;
        bouncing_counter <= 0;
        level <= 1;
        score <= 0;
    end procedure;

    procedure update_stand_position is
    begin
        -- Edge detection for left push button
        if push_button_left = '0' and push_button_left_prev = '1' then
            if to_integer(unsigned(x_stand)) > STAND_SPEED then
                x_stand <= std_logic_vector(unsigned(x_stand) - STAND_SPEED);
            else
                x_stand <= (others => '0');
            end if;
        end if;

        -- Edge detection for right push button
        if push_button_right = '0' and push_button_right_prev = '1' then
            if to_integer(unsigned(x_stand)) < BALL_MAX_X - STAND_WIDTH then
                x_stand <= std_logic_vector(unsigned(x_stand) + STAND_SPEED);
            else
                x_stand <= (others => '0'); -- Reset to 0 if x_stand exceeds the limit
            end if;
        end if;
			
        -- Store the previous state of the push buttons
        push_button_left_prev <= push_button_left;
        push_button_right_prev <= push_button_right;
    end procedure;

    procedure update_ball_position is
    begin
        -- Move the ball in the current direction
        if x_ball_dir = '1' then
            if to_integer(unsigned(x_ball)) < BALL_MAX_X  then
				 x_ball <= std_logic_vector(unsigned(x_ball) + increment);
				 else
                x_ball_dir <= '0'; -- Change direction
            end if;
        else
            if to_integer(unsigned(x_ball)) > 0 then
					 x_ball <= std_logic_vector(unsigned(x_ball) - increment);
					 else
                x_ball_dir <= '1'; -- Change direction
            end if;
        end if;

        if y_ball_dir = '1' then
            if to_integer(unsigned(y_ball)) < BALL_MAX_Y  then
                y_ball <= std_logic_vector(unsigned(y_ball) + increment);
					 else
					 y_ball_dir <= '0'; -- Change direction
					 end if; 
           
        else
            if to_integer(unsigned(y_ball)) > 0 then
                y_ball <= std_logic_vector(unsigned(y_ball) - increment);
            else
                y_ball_dir <= '1'; -- Change direction
            end if;
        end if;

        -- Check collision with stand
        if to_integer(unsigned(y_ball)) > BALL_MAX_Y - 20 and
			  to_integer(unsigned(y_ball)) < BALL_MAX_Y  and
           to_integer(unsigned(x_ball)) >= to_integer(unsigned(x_stand)) and
           to_integer(unsigned(x_ball)) < to_integer(unsigned(x_stand)) + STAND_WIDTH then
            y_ball_dir <= '0'; -- Ball bounces back
            bouncing_counter <= bouncing_counter + 1;
            score <= score + 1;
				if(level = 2) then 
				STAND_SPEED <= STAND_SPEED + 10;
				end if;
        end if;

        -- Increment speed and level after certain number of bounces
        if bouncing_counter = 2 then 
            increment <= increment + 1; 
            level <= level + 1;
            bouncing_counter <= 0;
				
        end if; 

        -- Check if ball hits the end of the screen
        if to_integer(unsigned(y_ball)) >= BALL_MAX_Y  then
            reset_game;
        end if;
    end procedure;

begin
    -- Clock divider process
    process(clk, reset)
    begin
        if reset = '1' then
            clk_divider <= (others => '0');
            slow_clk <= '0';
        elsif rising_edge(clk) then
            if clk_divider = CLK_DIVISION_FACTOR - 1 then
                clk_divider <= (others => '0');
                slow_clk <= not slow_clk;
            else
                clk_divider <= clk_divider + 1;
            end if;
        end if;
    end process;

    -- Process to control the stand's movement
    process(clk, reset)
    begin
        if reset = '1' then
            x_stand <= std_logic_vector(to_unsigned(STAND_INITIAL_POSITION, x_stand'length));
            push_button_left_prev <= '1';
            push_button_right_prev <= '1';
        elsif rising_edge(clk) then
            update_stand_position;
        end if;
        xstand <= x_stand;
    end process;

    -- Process to control the ball movement
    process(slow_clk, reset)
    begin
        if reset = '1' then
            reset_game;
        elsif rising_edge(slow_clk) then
            update_ball_position;
        end if;
        yball <= y_ball;
        xball <= x_ball;
        level_out <= level;
        score_out <= score;
    end process;
end behave;
