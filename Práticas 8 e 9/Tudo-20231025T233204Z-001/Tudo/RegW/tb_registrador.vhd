library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Testbench_RegistradorGenerico is
end Testbench_RegistradorGenerico;

architecture TB of Testbench_RegistradorGenerico is
    component RegistradorGenerico
        generic (
            W : integer := 8
        );
        port (
            reset   : in STD_LOGIC;
            clock   : in STD_LOGIC;
            D       : in STD_LOGIC_VECTOR(W-1 downto 0);
            Q       : out STD_LOGIC_VECTOR(W-1 downto 0)
        );
    end component;

    signal reset_tb : STD_LOGIC := '0';
    signal clock_tb : STD_LOGIC := '0';
    signal D_tb : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal Q_tb : STD_LOGIC_VECTOR(7 downto 0);

begin
    UUT : RegistradorGenerico
        generic map (
            W => 8
        )
        port map (
            reset => reset_tb,
            clock => clock_tb,
            D => D_tb(7 downto 0),
            Q => Q_tb
        );

    -- Processo de clock
    process
    begin
        while true loop
            clock_tb <= '0';
            wait for 5 ns;
            clock_tb <= '1';
            wait for 5 ns;
        end loop;
    end process;

    -- Processo de estímulo
    process
    begin
        reset_tb <= '1';  -- Ativa o reset inicialmente
        D_tb <= "10101010";  -- Exemplo de dados de entrada
        wait for 10 ns;
        reset_tb <= '0';  -- Desativa o reset
        wait for 100 ns;  -- Mantém os dados por um tempo
        D_tb <= "11001100";  -- Novos dados de entrada
        wait for 10 ns;
        -- Adicione mais estímulos conforme necessário

        wait;
    end process;

    -- Processo de verificação
    process
    begin
        wait for 10 ns;  -- Pequeno atraso para evitar conflitos iniciais
        while true loop
            report "D = " & to_string(D_tb) & ", Q = " & to_string(Q_tb);
            wait for 10 ns;  -- Intervalo entre verificações
        end loop;
    end process;

end TB;
