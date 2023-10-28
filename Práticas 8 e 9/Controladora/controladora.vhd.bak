library ieee;
use ieee.std_logic_1164.all;

entity pseudo_mux is
	port(
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
        Q       : out   std_logic  -- data 	
    );

end entity;

architecture rtl of pseudo_mux is

	-- Build an enumerated type for the state machine
	type state_type is (s0, s1, s2, s3);

	-- Register to hold the current state
	signal state   : state_type;
	signal next_state   : state_type;

begin

	process (state, S)
	begin
		if S = '1' then
			case state is
				when s0=>
					next_state <= s1;
				when s1=>
					next_state <= s2;
				when s2=>
					next_state <= s3;
				when s3 =>
					next_state <= s0;
			end case;
		else
			next_state <= state;
		end if;
		case state is
			when s0=>
				Q <= A;
			when s1=>
				Q <= B;
			when s2=>
				Q <= C;
			when s3 =>
				Q <= D;
		end case;
	end process;
	
	
	
	process (RESET, CLOCK)
	begin
	if RESET = '1' then
		state <= s0;
	elsif rising_edge(CLOCK) then
		state <= next_state;
	else
		state <= state;
	end if;
	end process;
	
end rtl;