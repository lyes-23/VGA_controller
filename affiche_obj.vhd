library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;



entity affiche_obj is 
port(
x,y : in std_logic_vector(11 downto 0);
disp_en: in std_logic; 

--objects 
x_ball, y_ball, x_stand : in std_logic_vector(11 downto 0);

--- to the monitor 
R,G,B: out std_logic_vector(3 downto 0 )
); 
end affiche_obj; 


architecture behave of affiche_obj is



begin 
process(x,y,disp_en,x_ball, y_ball, x_stand)
begin 

 if (disp_en = '1') then 
          
            if (to_integer(unsigned(x)) >= to_integer(unsigned(x_ball)) and 
                to_integer(unsigned(x)) < to_integer(unsigned(x_ball)) + 40 and 
                to_integer(unsigned(y)) >= to_integer(unsigned(y_ball)) and 
                to_integer(unsigned(y)) < to_integer(unsigned(y_ball)) + 40) then
                
                R <= "1111";  
                G <= "1111";
                B <= "1111";
                
          
            elsif (to_integer(unsigned(x)) >= to_integer(unsigned(x_stand)) and 
                   to_integer(unsigned(x)) < to_integer(unsigned(x_stand)) + 60 and 
                   to_integer(unsigned(y)) >= 460 and 
                   to_integer(unsigned(y)) <  470 ) then
                
                R <= "0000";  
                G <= "1111";
                B <= "0000";
                
            else
               
                R <= "0000"; 
                G <= "0000"; 
                B <= "0000";
            end if; 
		end if;
				
				
			


end process; 

end architecture; 




