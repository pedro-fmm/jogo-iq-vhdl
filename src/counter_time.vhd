library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity counter_time is
port(
    R, E, clock: in std_logic;
    Q: out std_logic_vector(3 downto 0);
    tc: out std_logic
    );

end counter_time;

architecture arch of counter_time is
signal count: std_logic_vector(3 downto 0);

begin
    process(clock, r, e, count)
    begin
        if (r = '1') then
            count <= "1010";
            tc <= '0';
        elsif (clock'event and clock = '1' ) then
            if (E = '1') then
                count <= count - "0001";
                if (count = "0000") then
                    count <= "0000";
                    tc <= '1';
                else
                    tc <= '0';
                end if;
            end if;
        end if;
    end process;

Q <= count;

end arch;