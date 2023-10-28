library ieee;
use ieee.std_logic_1164.all;

entity controladora is
    port(
        RESET   : in    std_logic;      -- reset input
        CLOCK   : in    std_logic;      -- clock input
        Fio_Maior, Fio_Igual, Fio_Menor: in std_logic;
        Fio_Load_E, Fio_Reset_MA, Fio_Descendo, Fio_Subindo, Fio_Atualizar: out std_logic
    );
end entity;

architecture rtl of controladora is
    -- Build an enumerated type for the state machine
    type state_type is (s0, s1, s2, s3, s4);

    -- Register to hold the current state
    signal state   : state_type;
    signal next_state   : state_type;

begin
    process (state)
    begin
        -- Default assignments
        Fio_Load_E <= '0';
        Fio_Reset_MA <= '0';
        Fio_Descendo <= '0';
        Fio_Subindo <= '0';
        Fio_Atualizar <= '0';

        case state is
            when s0 =>
                next_state <= s1;
                Fio_Load_E <= '1';
                Fio_Reset_MA <= '1';
                Fio_Atualizar <= '1';
                Fio_Descendo <= '1';
                Fio_Subindo <= '1';

            when s1 =>
                if Fio_Maior = '1' then
                    next_state <= s2;
                elsif Fio_Menor = '1' then
                    next_state <= s3;
                elsif Fio_Igual = '1' then
                    next_state <= s4;    
                end if;

            when s2 =>
                next_state <= s1;
                Fio_Load_E <= '1';
                Fio_Atualizar <= '1';
                Fio_Descendo <= '0';
                Fio_Subindo <= '1';

            when s3 =>
                next_state <= s1;
                Fio_Load_E <= '1';
                Fio_Atualizar <= '1';
                Fio_Descendo <= '1';
                Fio_Subindo <= '0';

            when s4 =>
                next_state <= s1;
                Fio_Load_E <= '1';
                Fio_Atualizar <= '1';
                Fio_Descendo <= '0';
                Fio_Subindo <= '0';
        end case;
    end process;

    process (RESET, CLOCK)
    begin
        if RESET = '1' then
            state <= s0;
        elsif rising_edge(CLOCK) then
            state <= next_state;
        end if;
    end process;

end rtl;