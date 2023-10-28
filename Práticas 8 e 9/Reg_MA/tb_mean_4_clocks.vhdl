library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_mean_4_clocks is
end tb_mean_4_clocks;

architecture teste of tb_mean_4_clocks is

component mean_4_clocks is 

	generic (
        W       :       integer := 32
    );
    port (
        CLK     : in    std_logic;
        RESET   : in    std_logic;
        INPUT   : in    std_logic_vector(W - 1 downto 0);
        OUTPUT  : out   std_logic_vector(W - 1 downto 0)
    );

end component;

signal fio_CLK: std_logic := '0';
signal fio_RESET: std_logic := '1';
signal fio_OUTPUT: std_logic_vector(31 downto 0);
signal fio_INPUT: std_logic_vector(31 downto 0) := x"FFFFFFFF";
begin

instancia_comparador: mean_4_clocks port map(CLK=>fio_CLK,RESET=>fio_RESET,INPUT=>fio_INPUT, OUTPUT=>fio_OUTPUT);

fio_CLK <= not fio_CLK after 1 ns;
fio_RESET <= '0' after 5 ns;
fio_INPUT <= x"00000001" after 60 ns; -- Mudança para 0x00000001 após 60 ns

end teste;