library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sinalizador is
    generic (
        W : integer := 8
    );
    port (
        E : in std_logic_vector(3 downto 0); -- Entrada E de 4 bits
        CLOCK: in std_logic;
        Subindo_LED : out std_logic_vector(1 downto 0);
        Descendo_LED : out std_logic_vector(1 downto 0);
        MediaMovel_Display : out std_logic_vector(6 downto 0);
        Reset_MA: in std_logic
    );
end entity sinalizador;

architecture Main of sinalizador is

    signal Fio_Maior, Fio_Igual, Fio_Menor: std_logic;
    signal Fio_Load_E, Fio_Reset_MA, Fio_Descendo, Fio_Subindo, Fio_Atualizar: std_logic;

    -- Instância dos componentes
    component Controladora is
        port (
            RESET: in std_logic; -- reset input
            CLOCK: in std_logic; -- clock input
            Fio_Maior, Fio_Igual, Fio_Menor: in std_logic;
            Fio_Load_E, Fio_Reset_MA, Fio_Descendo, Fio_Subindo, Fio_Atualizar: out std_logic
        );
    end component;

    component Datapath is
        generic (
            W : integer := 4
        );
        port (
            E: in std_logic_vector(3 downto 0); -- Entrada E de 4 bits
            CLOCK: in std_logic;
            Subindo_LED: out std_logic_vector(1 downto 0);
            Descendo_LED: out std_logic_vector(1 downto 0);
            MediaMovel_Display: out std_logic_vector(6 downto 0);
            Fio_Load_E, Fio_Reset_MA: in std_logic;
            Fio_Maior, Fio_Igual, Fio_Menor: out std_logic;
            Fio_Descendo, Fio_Subindo, Fio_Atualizar: in std_logic
        );
    end component;

begin
    -- Instância do componente Controladora
    Controladora_inst: Controladora
    port map (
        RESET => Fio_Reset_MA,
        CLOCK => CLOCK,
        Fio_Maior => Fio_Maior,
        Fio_Igual => Fio_Igual,
        Fio_Menor => Fio_Menor,
        Fio_Load_E => Fio_Load_E,
        Fio_Reset_MA => Fio_Reset_MA,
        Fio_Descendo => Fio_Descendo,
        Fio_Subindo => Fio_Subindo,
        Fio_Atualizar => Fio_Atualizar
    );

    -- Instância do componente Datapath
    Datapath_inst: Datapath
    port map (
        E => E,
        CLOCK => CLOCK,
        Subindo_LED => Subindo_LED,
        Descendo_LED => Descendo_LED,
        MediaMovel_Display => MediaMovel_Display,
        Fio_Load_E => Fio_Load_E,
        Fio_Reset_MA => Fio_Reset_MA,
        Fio_Maior => Fio_Maior,
        Fio_Igual => Fio_Igual,
        Fio_Menor => Fio_Menor,
        Fio_Descendo => Fio_Descendo,
        Fio_Subindo => Fio_Subindo,
        Fio_Atualizar => Fio_Atualizar
    );

end Main;
