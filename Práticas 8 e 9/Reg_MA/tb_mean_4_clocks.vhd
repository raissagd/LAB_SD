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
	signal fio_OUTPUT: std_logic_vector(3 downto 0);
	signal fio_INPUT: std_logic_vector(3 downto 0):= x"0";
	
	begin
	instancia_mean_4_clocks: mean_4_clocks 
		generic map(
			W => 4
		)
		port map(
			CLK=>fio_CLK,
			RESET=>fio_RESET,
			INPUT=>fio_INPUT, 
			OUTPUT=>fio_OUTPUT
		);
	
	process
	begin
    fio_RESET <= '0'; 
	 wait for 10 ns;
	 
    fio_INPUT <= x"1";
    wait for 10 ns;
	 
    fio_INPUT <= x"3";
    wait for 10 ns;
	 
    fio_INPUT <= x"8";
    wait for 10 ns;
	 
    fio_RESET <= '1';
	 wait for 10 ns;
	 
    fio_INPUT <= x"2";
	 wait for 10 ns;
	 
	 fio_INPUT <= x"3";
	 wait for 10 ns;
	end process;
end teste;