library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Debounce_Single_Input is
  generic (
    DEBOUNCE_LIMIT : integer := 200000);
  port (
    i_Clk    : in  std_logic;
    i_Switch : in  std_logic;
    o_Switch : out std_logic
    );
end entity Debounce_Single_Input;

architecture RTL of Debounce_Single_Input is

  signal r_Debounce_Count : integer range 0 to DEBOUNCE_LIMIT := 0;

  signal r_Switch_State : std_logic;

begin

  p_Debounce : process (i_Clk) is
  begin
    if rising_edge(i_Clk) then

      if (i_Switch /= r_Switch_State and
          r_Debounce_Count < DEBOUNCE_LIMIT) then
        r_Debounce_Count <= r_Debounce_Count + 1;

      elsif r_Debounce_Count = DEBOUNCE_LIMIT then
        r_Switch_State <= i_Switch;
      else
        r_Debounce_Count <= 0;

      end if;
    end if;
  end process p_Debounce;
  
    -- Assign internal register to output (debounced!)
  o_Switch <= r_Switch_State;


end architecture rtl;
