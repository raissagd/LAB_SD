LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity FlipFlopD is
	port(
        reset: in std_logic;	
	     clock: in std_logic;
		  D: in std_logic;
	      Q: out std_logic
	    );
end FlipFlopD;

architecture RTL of FlipFlopD is
begin
	Q <= '0' when reset='0' else D when clock='1' and clock'event;
end RTL;