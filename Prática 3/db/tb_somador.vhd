library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_somador is
end tb_somador;

architecture teste of tb_somador is

component Somador is 
port (	a, b  : in std_logic_vector(3 downto 0);
	result: out std_logic_vector(3 downto 0));
end component;

signal fio_a, fio_b, fio_soma: std_logic_vector(3 downto 0);
begin
instancia_somador: somador port map(a=>fio_a,b=>fio_b,result=>fio_soma); 
-- x nas próximas linhas: os vetores de bits estão expressos em base hexadecimal
fio_a <= x"0", x"A" after 20 ns, x"2" after 40 ns, x"4" after 60 ns;
fio_b <= x"0", x"4" after 10 ns, x"3" after 30 ns, x"1" after 50 ns;
end teste;