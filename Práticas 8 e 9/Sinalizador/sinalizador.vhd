library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sinalizador is
    port (
        RESET : in std_logic;
        E : in std_logic_vector(3 downto 0);
        Subindo : out std_logic_vector(1 downto 0);
        Descendo : out std_logic_vector(1 downto 0);
        Display_7seg : out std_logic_vector(6 downto 0);
        CLOCK : in std_logic
    );
end Sinalizador;

architecture arch of Sinalizador is
    signal Fio_Load_E, Fio_Reset_MA, Fio_Atualizar: std_logic;
    signal Fio_Maior, Fio_Igual, Fio_Menor: std_logic;
    signal Fio_Descendo, Fio_Subindo: std_logic_vector(1 downto 0);
    
    component datapath
        port (
            E : in std_logic_vector(3 downto 0);
            CLOCK: in std_logic;
            Subindo_LED : out std_logic_vector(1 downto 0);
            Descendo_LED : out std_logic_vector(1 downto 0);
            MediaMovel_Display : out std_logic_vector(6 downto 0);
            Fio_Load_E: in std_logic;
            Fio_Reset_MA: in std_logic;
            Fio_Maior: out std_logic;
            Fio_Igual: out std_logic;
            Fio_Menor: out std_logic;
            Fio_Descendo: in std_logic_vector(1 downto 0);
            Fio_Subindo: in std_logic_vector(1 downto 0);
            Fio_Atualizar: in std_logic
        );
    end component;
    
    component controladora
        port(
            RESET   : in    std_logic;
            CLOCK   : in    std_logic;
            Fio_Maior, Fio_Igual, Fio_Menor: in std_logic;
            Fio_Load_E, Fio_Reset_MA, Fio_Descendo, Fio_Subindo, Fio_Atualizar: out std_logic
        );
    end component;

begin
    DPath: datapath
    port map(
        E => E,
        CLOCK => CLOCK,
        Subindo_LED => Subindo,
        Descendo_LED => Descendo,
        MediaMovel_Display => Display_7seg,
        Fio_Load_E => Fio_Load_E,
        Fio_Reset_MA => Fio_Reset_MA,
        Fio_Maior => Fio_Maior,
        Fio_Igual => Fio_Igual,
        Fio_Menor => Fio_Menor,
        Fio_Descendo => Fio_Descendo,
        Fio_Subindo => Fio_Subindo,
        Fio_Atualizar => Fio_Atualizar
    );

    Ctrl: controladora
    port map(
        RESET => RESET,
        CLOCK => CLOCK,
        Fio_Maior => Fio_Maior,
        Fio_Igual => Fio_Igual,
        Fio_Menor => Fio_Menor,
        Fio_Load_E => Fio_Load_E,
        Fio_Reset_MA => Fio_Reset_MA,
        Fio_Descendo => Fio_Descendo(1),
        Fio_Subindo => Fio_Subindo(1),
        Fio_Atualizar => Fio_Atualizar
    );

end arch;