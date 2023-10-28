LIBRARY ieee;
USE ieee.std_logic_1164.all;


entity tb_fulladder is
end tb_fulladder;

architecture teste of tb_fulladder is

component fulladder is
    port ( Cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           Cout : out std_logic
        );
end component;


signal fio_Cin, fio_x, fio_y, out_s, out_Cout: std_logic;
begin
instancia_fulladder: fulladder port map(Cin=>fio_Cin,x=>fio_x, y=>fio_y, s=>out_s, Cout=>out_Cout);

fio_y <= '0', '1' after 10ns, '0' after 20ns, '1' after 30ns, '0' after 40ns, '1' after 50ns, '0' after 60ns, '1' after 70ns, '0' after 80ns;
fio_x <= '0', '1' after 20ns, '0' after 40ns, '1' after 60ns, '0' after 80ns;
fio_Cin <= '0', '1' after 40ns, '0' after 80ns;

end teste;