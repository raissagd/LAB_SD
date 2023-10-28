library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity tb_registrador is
end tb_registrador;

architecture testbench of tb_registrador is
    component registrador
        generic (
            W : integer := 4
        );
        port (
            reset   : in STD_LOGIC;
            clock   : in STD_LOGIC;
            load    : in STD_LOGIC; 
            enable  : in STD_LOGIC; 
            D       : in STD_LOGIC_VECTOR(W-1 downto 0);
            Q       : out STD_LOGIC_VECTOR(W-1 downto 0)
        );
    end component;
    
    constant W_VALUE: integer := 4;
    signal fio_reset, fio_clock, fio_load, fio_enable: std_logic := '0';
    signal fio_D, fio_Q: std_logic_vector(W_VALUE - 1 downto 0);

begin
    registrador_instance: registrador 
        generic map(W_VALUE) 
        port map(
            reset   => fio_reset,
            clock   => fio_clock,
            load    => fio_load,
            enable  => fio_enable,
            D       => fio_D,
            Q       => fio_Q
        );

    -- Processo para gerar os estímulos
    stimuli: process
    begin
        fio_reset <= '1';
        fio_load <= '0';
        fio_enable <= '0';
        fio_D <= x"0";
        wait for 10 ns;

        fio_reset <= '0';
        fio_load <= '1';
        fio_enable <= '1';
        fio_D <= x"2";
        wait for 10 ns;

        fio_reset <= '0';
        fio_load <= '1';
        fio_enable <= '0';
        fio_D <= x"3"; 
        wait for 10 ns;
        
        fio_reset <= '0';
        fio_load <= '0';
        fio_enable <= '1';
        fio_D <= x"4"; 
        wait for 10 ns;
        
        fio_reset <= '0';
        fio_load <= '1';
        fio_enable <= '1';
        fio_D <= x"5";
        wait for 10 ns;
    end process;
end testbench;
