library ieee;
use ieee.std_logic_1164.all;

entity registrador_bonus is
port(
    clock: in std_logic;
    S: in std_logic;
    E: in std_logic;
    D: in std_logic_vector(3 downto 0);
    Q: out std_logic_vector(3 downto 0)
    );

end registrador_bonus;

architecture arch of registrador_bonus is

begin
    process(clock, S)
    begin
        if (S = '1') then
            Q(3 downto 0) <= "1001";
        elsif (clock'event and clock = '1') then
            if (E = '1') then
                Q(3 downto 0) <= D(3 downto 0);
            end if;
        end if;

    end process;

end arch;