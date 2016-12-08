library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is 

generic(n: natural := 4);
port(Q: out std_logic_vector(1 downto 0);
	  CLK: in std_logic;
	  ENABLE: in std_logic;
	  CLEAR: in std_logic);	 
end entity;



architecture behavior of counter is		 	  
	
    signal Pre_Q: std_logic_vector(1 downto 0);

begin

    -- behavior describe the counter

    process(CLK, ENABLE, CLEAR)
    begin
	if CLEAR = '1' then		 
 	    Pre_Q <= Pre_Q - Pre_Q;
	elsif (CLK='1' and CLK'event) then
	    if ENABLE = '1' then	
			if Pre_Q <= "11" then
				Pre_Q <= Pre_Q + 1;
			else
				Pre_Q <= Pre_Q - Pre_Q;
			end if;		 
	    end if;
	end if;
    end process;	
	
    -- concurrent assignment statement
    Q <= Pre_Q;

end behavior;									