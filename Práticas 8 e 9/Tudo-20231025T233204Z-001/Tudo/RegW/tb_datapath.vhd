library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_datapath is
end tb_datapath;

architecture testbench of tb_datapath is
    -- Sinais de estímulo
    signal CLK : std_logic := '0';
    signal RESET : std_logic := '0';
    signal E : std_logic_vector(3 downto 0) := (others => '0');

    -- Sinais de saída
    signal Subindo_LED : std_logic;
    signal Descendo_LED : std_logic;
    signal MediaMovel_Display : std_logic_vector(6 downto 0);

    -- Componentes necessários para o teste
    component datapath
        port (
            E : in std_logic_vector(3 downto 0),
            Subindo_LED : out std_logic,
            Descendo_LED : out std_logic,
            MediaMovel_Display : out std_logic_vector(6 downto 0)
        );
    end component;

    -- Clock de simulação
    constant PERIOD : time := 10 ns;

begin
    -- Instância da entidade datapath
    DUT: datapath
    port map (
        E => E,
        Subindo_LED => Subindo_LED,
        Descendo_LED => Descendo_LED,
        MediaMovel_Display => MediaMovel_Display
    );

    -- Processo de clock
    process
    begin
        while not stop_simulation loop
            CLK <= not CLK after PERIOD / 2;
            wait for PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Estímulo
    stim_proc: process
    begin
        RESET <= '1';
        wait for 10 ns;
        RESET <= '0';

        -- Envie valores para E e aguarde um tempo
        E <= "0010"; -- Exemplo de valores para E
        wait for 10 ns;

        E <= "1100"; -- Outro exemplo de valores para E
        wait for 10 ns;

        -- Adicione mais estímulos conforme necessário

        wait for 10 ns;
        -- Encerre a simulação
        stop_simulation <= true;
    end process;

    -- Processo de exibição
    display_proc: process
    begin
        wait until CLK'event and CLK = '1';

        -- Exibir os valores das saídas
        if Subindo_LED = '1' then
            report "Subindo_LED = '1'";
        end if;

        if Descendo_LED = '1' then
            report "Descendo_LED = '1'";
        end if;

        report "MediaMovel_Display = " & to_string(MediaMovel_Display);

        -- Adicione mais saídas para exibição conforme necessário
    end process;

    -- Encerrar a simulação
    stop_simulation <= false;
    wait;
end testbench;
