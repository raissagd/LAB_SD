library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registrador is
    generic (
        W : integer := 4 
    );
    port (
        reset   : in STD_LOGIC;
        clock   : in STD_LOGIC;
        D       : in STD_LOGIC_VECTOR(W-1 downto 0);
        Q       : out STD_LOGIC_VECTOR(W-1 downto 0)
    );
end registrador;

architecture RTL of registrador is
    signal registro : STD_LOGIC_VECTOR(W-1 downto 0) := (others => '0');
begin
    process (clock, reset)
    begin
        if reset = '1' then
            registro <= (others => '0');
        elsif rising_edge(clock) then
            registro <= D;
        end if;
    end process;

    Q <= registro;
end RTL;
