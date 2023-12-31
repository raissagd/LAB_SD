library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_sinalizador is
end tb_sinalizador;

architecture sim of tb_sinalizador is
    signal sim_RESET   : std_logic := '0';
    signal sim_E       : std_logic_vector(3 downto 0) := "0000";
    signal sim_CLOCK   : std_logic := '0';
    signal sim_Subindo : std_logic_vector(1 downto 0);
	 signal sim_Descendo : std_logic_vector(1 downto 0);
	 signal sim_Display_7seg: std_logic_vector(6 downto 0);

    component sinalizador
    port (
        RESET   : in  std_logic;
        E       : in  std_logic_vector(3 downto 0);
        Subindo : out std_logic_vector(1 downto 0);
        Descendo: out std_logic_vector(1 downto 0);
        Display_7seg: out std_logic_vector(6 downto 0);
        CLOCK   : in  std_logic  -- Adicionado com base na entidade 'Sinalizador'
    );
	end component;

begin

    UUT: sinalizador
    port map(
        RESET        => sim_RESET,
        E            => sim_E,
        Subindo      => sim_Subindo,
        Descendo     => sim_Descendo,
        Display_7seg => sim_Display_7seg,
        CLOCK        => sim_CLOCK  -- Adicionado aqui
    );

    -- Clock generation process
    ClockProcess: process
    begin
        wait for 10 ns;
        sim_CLOCK <= not sim_CLOCK;
    end process ClockProcess;

    SimulationProcess: process
    begin
        sim_RESET <= '1';
        wait for 10 ns;

        sim_RESET <= '0';
        wait for 10 ns;

        sim_E <= "0001";
        wait for 10 ns;

        sim_E <= "0010";
        wait for 10 ns;

        sim_E <= "0100";
        wait for 10 ns;
		  
		  sim_E <= "0110";
		  wait for 10 ns;

        sim_E <= "1000";
        wait for 10 ns;
		  
		  sim_E <= "0001";
		  wait for 10 ns;

		  sim_E <= "0011";
		  wait for 10 ns;
        wait;
    end process SimulationProcess;

end sim;