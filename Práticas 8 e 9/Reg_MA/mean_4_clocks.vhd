library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mean_4_clocks is
    generic (
        W       :       integer := 32);
    port (
        CLK     : in    std_logic;
        RESET   : in    std_logic;
        INPUT   : in    std_logic_vector(W - 1 downto 0);
        OUTPUT  : out   std_logic_vector(W - 1 downto 0));
end mean_4_clocks;

architecture arch of mean_4_clocks is
begin
    process(INPUT) is
        variable var1 : unsigned(W - 1 downto 0);
        variable var2 : unsigned(W - 1 downto 0);
        variable var3 : unsigned(W - 1 downto 0);
        variable var4 : unsigned(W - 1 downto 0);
		  variable sum : unsigned(W + 1 downto 0);
    begin
        if (RESET = '1') then
            var1 := to_unsigned(0,W);
            var2 := to_unsigned(0,W);
            var3 := to_unsigned(0,W);
            var4 := to_unsigned(0,W);
        else 
            var4 := var3;
            var3 := var2;
            var2 := var1;
            var1 := unsigned(INPUT(W-1 downto 0));
        end if;
		  sum := ("00" & var1) + ("00" & var2) + ("00" & var3) + ("00" &var4);
        OUTPUT <= std_logic_vector(sum(W + 1 downto 2) srl 2);
    end process;
end arch;