library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM1 is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(31 downto 0)
);
end ROM1;

architecture arc_ROM1 of ROM1 is
begin

--         HEX7      HEX6     HEX5     HEX4     HEX3     HEX2     HEX1     HEX0               round

output <= "1111" & "1111" & "0111" & "0011" & "0001" & "1111" & "1111" & "1001" when address = "0000" else
--des      des      7      3      1      des      des      9

"1111" & "1111" & "0011" & "1001" & "1111" & "0111" & "1111" & "1100" when address = "0001" else
--des      des      3      9      des      7      des      C

"0010" & "0110" & "1110" & "0000" & "1111" & "1111" & "1111" & "1111" when address = "0010" else
--2      6      E      0      des      des      des      des

"1100" & "1010" & "0110" & "1111" & "1001" & "1111" & "1111" & "1111" when address = "0011" else
--C      A      6      des      9      des      des      des

"1111" & "1100" & "0100" & "1111" & "1111" & "1111" & "1000" & "0111" when address = "0100" else
--des      C      4      des      des      des      8      7

"1111" & "1111" & "1111" & "1010" & "1011" & "1111" & "0010" & "0101" when address = "0101" else
--des      des      des      A      B      des      2      5

"0101" & "1011" & "1111" & "0111" & "1110" & "1111" & "1111" & "1111" when address = "0110" else
--5      B      des      7      E      des      des      des

"1010" & "0011" & "1000" & "0010" & "1111" & "1111" & "1111" & "1111" when address = "0111" else
--A      3      8      2      des      des      des      des

"0111" & "1111" & "1111" & "1111" & "1111" & "0110" & "1011" & "0010" when address = "1000" else
--7      des      des      des      des      6      B      2

"0111" & "0110" & "0000" & "1110" & "1111" & "1111" & "1111" & "1111" when address = "1001" else
--7      6      0      E      des      des      des      des

"1000" & "0001" & "1111" & "0010" & "1111" & "1111" & "1110" & "1111" when address = "1010" else
--8      1      des      2      des      des      E      des

"0111" & "1111" & "1111" & "1111" & "0000" & "1111" & "0100" & "0101" when address = "1011" else
--7      des      des      des      0      des      4      5

"0010" & "1111" & "1111" & "0111" & "1100" & "1111" & "1111" & "0011" when address = "1100" else
--2      des      des      7      C      des      des      3

"1111" & "1111" & "0111" & "1100" & "1111" & "0010" & "1111" & "1101" when address = "1101" else
--des      des      7      C      des      2      des      D

"1111" & "1111" & "1100" & "1111" & "0110" & "0011" & "1111" & "0100" when address = "1110" else
--des      des      C      des      6      3      des      4

"1111" & "1111" & "1100" & "1110" & "1010" & "1111" & "1111" & "0110";
--des      des      C      E      A      des      des      6

end arc_ROM1;
