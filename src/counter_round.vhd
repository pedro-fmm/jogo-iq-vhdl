library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity counter_round is
port(
    R, E, clock: in std_logic;
    Q: out std_logic_vector(3 downto 0);
    tc: out std_logic
    );

end counter_round;

architecture arch of counter_round is
signal count: std_logic_vector(3 downto 0) := "0000";
signal y: std_logic;

begin
    process(clock, r)
    begin
        if (r = '1') then
            count <= "0000";
            y <= '0';
        elsif (clock'event and clock = '1' ) then
            if (e = '1') then
                if (count = "1111") then
                    y <= '1';
                    count <= "1111";
                else
                    count <= count + "0001";
                    y <= '0';
                end if;
            end if;
        end if;
    end process;

tc <= y;
Q <= count;

end arch;