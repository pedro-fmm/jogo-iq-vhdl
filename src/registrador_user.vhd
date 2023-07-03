library ieee;
use ieee.std_logic_1164.all;

entity registrador_user is
port(
    clock: in std_logic;
    R: in std_logic;
    E: in std_logic;
    D: in std_logic_vector(14 downto 0);
    Q: out std_logic_vector(14 downto 0)
    );

end registrador_user;

architecture arch of registrador_user is

begin
    process(clock, R, E)
    begin
        if (R = '1') then
            Q(14 downto 0) <= "000000000000000";
        elsif (clock'event and clock = '1') then
            if (E = '1') then
                Q(14 downto 0) <= D(14 downto 0);
            end if;
        end if;

    end process;

end arch;