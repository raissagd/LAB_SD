library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_FlipFlopD is
end tb_FlipFlopD;

architecture teste of tb_FlipFlopD is

component FlipFlopD is
	port(
        reset: in std_logic;	
	     clock: in std_logic;
		  D: in std_logic;
	      Q: out std_logic
	    );
end FlipFlopD;


signal fio_reset, fio_clk: std_logic := '0', fio_D, out_Q;
begin
instancia_FlipFlopD: FlipFlopD port map(reset=>fio_reset,clock=>fio_clk,fio_D=>D, Q=>out_Q); 

fio_clk <= '0', '1' after 20ns, '0' after 40ns, '1' after 60ns, '0' after 80ns, '1' after 100ns;
fio_reset <= '1', '0' after 50ns, '1' after 51ns
fio_D <= '1', '1' after 55ns, '0' after '90ns'

end teste;