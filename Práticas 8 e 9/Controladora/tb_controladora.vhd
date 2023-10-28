library ieee;
use ieee.std_logic_1164.all;

entity tb_controladora is
end tb_controladora;

architecture teste of tb_controladora is

  signal RESET, CLOCK: std_logic;
  signal Fio_Maior, Fio_Igual, Fio_Menor: std_logic;
  signal Fio_Load_E, Fio_Reset_MA, Fio_Descendo, Fio_Subindo, Fio_Atualizar: std_logic;

  component controladora is
    port(
        RESET   : in    std_logic; 
        CLOCK   : in    std_logic; 
        Fio_Maior, Fio_Igual, Fio_Menor: in std_logic;
        Fio_Load_E, Fio_Reset_MA, Fio_Descendo, Fio_Subindo, Fio_Atualizar: out std_logic
    );
  end component;

begin

  uut: controladora port map (
    RESET => RESET,
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

  -- Clock Generation
  process
  begin
    CLOCK <= '0', '1' after 5 ns;
    wait for 10 ns;
  end process;

  -- Reset Generation
  process
  begin
    RESET <= '1';
    wait for 20 ns;
    RESET <= '0';
    wait;
  end process;

  -- Test Case Generation
  process
  begin
    -- Test for Fio_Maior
    Fio_Maior <= '1'; Fio_Igual <= '0'; Fio_Menor <= '0';
    wait for 40 ns;
    
    -- Test for Fio_Menor
    Fio_Maior <= '0'; Fio_Igual <= '0'; Fio_Menor <= '1';
    wait for 40 ns;

    -- Test for Fio_Igual
    Fio_Maior <= '0'; Fio_Igual <= '1'; Fio_Menor <= '0';
    wait for 40 ns;

    -- Return to initial state
    Fio_Maior <= '0'; Fio_Igual <= '0'; Fio_Menor <= '0';
    wait;
  end process;

end teste;
