library ieee;
use ieee.std_logic_1164.all;

entity tb_controladora is
end tb_controladora;

architecture teste of tb_controladora is

  signal RESET, CLOCK, S, A, B, C, D, Q: std_logic;

  component controladora is
	port (
  	RESET   : in	std_logic; -- reset input
  	CLOCK   : in	std_logic; -- clock input
  	S   	: in	std_logic; -- control input
  	A, B, C, D : in std_logic; -- data inputs
  	Q   	: out   std_logic  -- data output
	);
  end component;

begin

  uut: controladora port map (
	RESET => RESET,
	CLOCK => CLOCK,
	S => S,
	A => A,
	B => B,
	C => C,
	D => D,
	Q => Q
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
	wait for 10 ns;
	RESET <= '0';
	wait;
  end process;

  -- Test Case Generation
  process
  begin
   S <= '0';
	wait for 14 ns; -- A
	S <= '1'; -- B - 10ns - C - 10ns
	wait for 20 ns;
	S <= '0';
	wait for 20 ns;
	S <= '1'; -- D - 10ns - A - 10ns
	wait for 20 ns;
	S <= '0';
	
	wait;
  end process;

  -- Stimulus Generation
  process
  begin
	A <= '1', '0' after 15 ns, '1' after 65 ns;
	B <= '0', '1' after 15 ns, '0' after 25 ns;
	 C <= '0', '1' after 25 ns, '0' after 55 ns;
	D <= '0', '1' after 55 ns, '0' after 65 ns;
   wait;
  end process;

end teste;