library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hsync is
port(
start,reset,clk: in std_logic;
h_sync,display_h_en, end_of_line: out std_logic;
x: out std_logic_vector(11 downto 0)
);
end hsync;


architecture behavioral of hsync is 
signal Ec: std_logic; 
signal Rc: std_logic;
signal CE639, CE15,CE95,CE47: std_logic;
signal counter : std_logic_vector(11 downto 0); 


type state is(init,display,fp,Sync,bp);
signal etat : state := init;
signal etat_f : state;

begin

P1: process(clk)
begin

if rising_edge(clk) then 
	etat<= etat_f;
end if ;
if(reset = '1')then 
	etat<= init;
end if; 
end process p1;

P2: process(etat)
begin

if etat = init then 
	
	h_sync<='1';
	display_h_en<='0';
	
elsif etat = display then 
	
	h_sync<='1';
	display_h_en<='1';
	
elsif etat = fp  then 
	
	h_sync<='1';
	display_h_en<='0';
	
elsif etat = sync  then 
	
	h_sync<='0';
	display_h_en<='0';
	
elsif etat = BP  then 

	h_sync<='1';
	display_h_en<='0';
	
	else
	
	h_sync<='1';
	display_h_en<='0';
end if;

end process P2;

P3: process(start ,CE639,CE15, CE95, CE47, etat)
begin
case etat is

when init => if start='0' then
					Ec<= '0';
					Rc<= '1';
					end_of_line<='0';
					etat_f<= init;
					elsif start = '1'  then
					Ec<= '0';
					Rc<= '1';
					end_of_line<='0';
					etat_f<= display; 
					else
					etat_f<= init;
					Ec<= '0';
					Rc<= '1';
					end_of_line<='0';
					end if; 
					
when display => if CE639='0'  then
					Ec<='1';
					Rc<='0';
					end_of_line<='0';
					etat_f<= etat;
				 elsif CE639='1'  then
					Ec<='0';
					Rc<='1';
					end_of_line<='0';
					etat_f<=fp;
				 else 
					Ec<='0';
					Rc<='1';
					end_of_line<='0';
					etat_f<= etat;
				end if; 
				
when fp  => if CE15='0'  then
					Ec<='1';
					Rc<='0';
					end_of_line<='0';
					etat_f<= etat;
				 elsif CE15='1'  then
					Ec<='0';
					Rc<='1';
					end_of_line<='0';
					etat_f<=sync;
				 else 
					Ec<='0';
					Rc<='1';
					end_of_line<='0';
					etat_f<= etat;
				end if; 
					
					
when sync => if CE95='0'  then
					Ec<='1';
					Rc<='0';
					end_of_line<='0';
					etat_f<= etat;
				 elsif CE95='1'  then
					Ec<='0';
					Rc<='1';
					etat_f<=bp;
					end_of_line<='0';
				 else 
					Ec<='0';
					Rc<='1';
					etat_f<= etat;
					end_of_line<='0';
				end if;  
				
when bp => if CE47='0'  then
					Ec<='1';
					Rc<='0';
					etat_f<= etat;
					end_of_line<='0';
				 elsif CE47='1'  then
					Ec<='0';
					Rc<='1';
					etat_f<=init;
					end_of_line<='1';
				 else 
					Ec<='0';
					Rc<='1';
					end_of_line<='0';
					etat_f<= etat;
				end if;  
end case; 
end process P3; 


counter_process: process(clk, Ec, Rc)
    variable cmp : integer;
begin 
    if rising_edge(clk) then 
        if Rc = '1' then 
            cmp := 0; 
        elsif Ec = '1' then 
            cmp := cmp + 1; 
        end if; 
		  if(etat = display) then 
		  x <= std_logic_vector(to_unsigned(cmp, 12));
		  else
		  x <= std_logic_vector(to_unsigned(0, 12));
		  end if;
    end if; 

if(cmp = 639) then 
 CE639 <= '1'; 
 else 
  CE639 <= '0'; 
end if; 

if(cmp = 15) then 
 CE15 <= '1'; 
 else 
  CE15 <= '0'; 
end if; 

if(cmp = 95) then 
 CE95 <= '1'; 
 else 
  CE95 <= '0'; 
end if; 

if(cmp = 47) then 
 CE47 <= '1'; 
 else 
  CE47 <= '0'; 
end if; 
 
 counter <= std_logic_vector(to_unsigned(cmp, 12));
end process counter_process;




end behavioral;

