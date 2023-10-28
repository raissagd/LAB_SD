library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_BCD_7seg is
end tb_BCD_7seg;

architecture sim of tb_BCD_7seg is
  signal entrada_tb: std_logic_vector(3 downto 0);
  signal saida_tb: std_logic_vector(6 downto 0);

  component BCD_7seg
    port (
      entrada: in std_logic_vector(3 downto 0);
      saida: out std_logic_vector(6 downto 0)
    );
  end component;

begin
  UUT: BCD_7seg 
  port map (
	entrada => entrada_tb, 
	saida => saida_tb
	);

  -- Estímulos de teste
  test: process
  begin
    entrada_tb <= "0000"; -- Testando o número 0
    wait for 10 ns;
    
    entrada_tb <= "0001"; -- Testando o número 1
    wait for 10 ns;

    entrada_tb <= "0010"; -- Testando o número 2
    wait for 10 ns;

    -- Adicione mais testes aqui para os números restantes

    wait;
  end process;
end sim;

