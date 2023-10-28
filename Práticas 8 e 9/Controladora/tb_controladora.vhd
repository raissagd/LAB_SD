library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- se necessário para operações aritméticas

entity tb_controladora is
end entity;

architecture sim of tb_controladora is

    -- Declaração dos sinais que serão usados para a entidade em teste (UUT - Unit Under Test)
    signal tb_RESET   : std_logic;
    signal tb_CLOCK   : std_logic := '0'; -- importante inicializar o clock
    signal tb_Fio_Maior, tb_Fio_Igual, tb_Fio_Menor: std_logic;
    signal tb_Fio_Load_E, tb_Fio_Reset_MA, tb_Fio_Descendo, tb_Fio_Subindo, tb_Fio_Atualizar: std_logic;

    -- Constante para definir o período do clock, se necessário
    constant clock_period : time := 10 ns; 

begin

    -- Instanciar a unidade sob teste (UUT)
    UUT: entity work.controladora
        port map (
            RESET   => tb_RESET,
            CLOCK   => tb_CLOCK,
            Fio_Maior => tb_Fio_Maior,
            Fio_Igual => tb_Fio_Igual,
            Fio_Menor => tb_Fio_Menor,
            Fio_Load_E => tb_Fio_Load_E,
            Fio_Reset_MA => tb_Fio_Reset_MA,
            Fio_Descendo => tb_Fio_Descendo,
            Fio_Subindo => tb_Fio_Subindo,
            Fio_Atualizar => tb_Fio_Atualizar
        );

    -- Processo para simular o clock
    ClockProcess : process
    begin
        while true loop -- gera um clock contínuo
            tb_CLOCK <= '0';
            wait for clock_period/2;  -- Espera meio período do clock
            tb_CLOCK <= '1';
            wait for clock_period/2;  -- Espera o próximo meio período do clock
        end loop;
    end process ClockProcess;

    -- Processo de estímulo para simular as entradas e testar o comportamento do UUT
    StimulusProcess : process
    begin
        -- Inicializa as entradas e o RESET
        tb_RESET <= '1';
        tb_Fio_Maior <= '0';
        tb_Fio_Igual <= '0';
        tb_Fio_Menor <= '0';
        wait for 50 ns; -- ou algum tempo relevante para o seu caso
        
        -- Liberar o RESET
        tb_RESET <= '0';
        wait for 20 ns; -- aguarda próximo ciclo de clock
        
        -- Aqui você pode incluir diferentes cenários para testar o comportamento de sua máquina de estados
        -- Por exemplo, variar os sinais tb_Fio_Maior, tb_Fio_Igual, e tb_Fio_Menor
        -- e observar as reações correspondentes nas saídas e estados da máquina.
        
        tb_Fio_Maior <= '1'; -- Testa a condição de "maior"
        wait for 100 ns;
        
        tb_Fio_Maior <= '0'; -- Garantir que apenas um sinal está ativo por vez
        tb_Fio_Menor <= '1'; -- Testa a condição de "menor"
        wait for 100 ns;
        
        -- Continue com outros cenários conforme necessário...
        
        wait; -- finaliza o processo (simulação irá parar aqui se não houver outros processos ativos)
    end process StimulusProcess;

end architecture sim;