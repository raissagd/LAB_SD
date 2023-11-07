library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity datapath is
    port (
        E : in std_logic_vector(3 downto 0); -- Entrada E de 4 bits
		  CLOCK: in std_logic;
		  Fio_Load_E: in std_logic;
		  Fio_Reset_MA: in std_logic;
		  Fio_Descendo: in std_logic_vector(1 downto 0);
		  Fio_Subindo: in std_logic_vector(1 downto 0);
		  Fio_Atualizar: in std_logic;
		  Fio_Maior: out std_logic;
		  Fio_Igual: out std_logic;
		  Fio_Menor: out std_logic;
		  Subindo_LED : out std_logic_vector(1 downto 0);
        Descendo_LED : out std_logic_vector(1 downto 0);
        MediaMovel_Display : out std_logic_vector(6 downto 0)
    );
end datapath;

architecture arch of datapath is
    -- Instância dos componentes
    component mean_4_clocks
        generic (
            W : integer := 32
        );
        port (
            CLK : in std_logic;
            RESET : in std_logic;
            INPUT : in std_logic_vector(W - 1 downto 0);
            OUTPUT : out std_logic_vector(W - 1 downto 0)
        );
    end component;

    component comparador
			generic (
					DATA_WIDTH : natural := 16
				);
				port (
					a	: in std_logic_vector	((DATA_WIDTH-1) downto 0);
					b	: in std_logic_vector	((DATA_WIDTH-1) downto 0);
					maior	: out std_logic;
					menor	: out std_logic;
					igual	: out std_logic
				);
    end component;

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

    component BCD_7seg
			port (
				entrada: in std_logic_vector (3 downto 0);
				saida: out std_logic_vector (6 downto 0)
			);
    end component;
	 
	 signal MediaMovel : std_logic_vector(3 downto 0);
	 signal Fio_Valor_Atual:  std_logic_vector(3 downto 0);
begin
   -- Instância dos componentes
	Reg_MA: mean_4_clocks
        generic map(
            W => 4
        )
        port map(
            CLK => CLOCK,
            RESET => Fio_Reset_MA,
            INPUT => Fio_Valor_Atual,
            OUTPUT => MediaMovel
        );

   Comparador_instance: comparador 
		generic map(
			DATA_WIDTH => 4
		)
		port map(
			a => E,
			b => MediaMovel,
			maior	=> Fio_Maior,
			menor	=> Fio_Menor,
			igual	=> Fio_Igual
		);


   Reg_E: registrador
		 generic map (
			W => 4
		 )
		 port map(
			reset => '0',
			clock => CLOCK,
			load => Fio_Load_E,
			enable => '1',
			D => E,
			Q => Fio_Valor_Atual
		 );

   BCD: BCD_7seg 
		port map (
        entrada => MediaMovel,
		  saida => MediaMovel_Display
		);
	 
	Subindo: registrador
    generic map (
        W => 2
    )
    port map (
        reset => '0',
        clock => CLOCK,
        load => '1',
        enable => Fio_Atualizar,
        D => Fio_Subindo,
        Q => Subindo_LED
    );

	Descendo: registrador
		 generic map (
			  W => 2
		 )
		 port map (
			  reset => '0',
			  clock => CLOCK,
			  load => '1',
			  enable => Fio_Atualizar,
			  D => Fio_Descendo,
			  Q => Descendo_LED
		 );

end arch;
