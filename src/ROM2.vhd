library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM2 is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(31 downto 0)
);
end ROM2;

architecture arc_ROM2 of ROM2 is
begin

--         HEX7      HEX6     HEX5     HEX4     HEX3     HEX2     HEX1     HEX0               round

output <= "1111" & "1100" & "1111" & "0001" & "1111" & "0111" & "0110" & "0000" when address = "0000" else
--des      C      des      1      des      7      6      0

"0011" & "1111" & "1000" & "0001" & "1111" & "0110" & "1111" & "0111" when address = "0001" else
--3      des      8      1      des      6      des      7

"1000" & "0010" & "0001" & "0110" & "1111" & "1111" & "0011" & "1111" when address = "0010" else
--8      2      1      6      des      des      3      des

"0100" & "1010" & "1111" & "1000" & "1111" & "1111" & "0111" & "0011" when address = "0011" else
--4      A      des      8      des      des      7      3

"1111" & "1100" & "0010" & "0101" & "1111" & "1111" & "0111" & "0011" when address = "0100" else
--des      C      2      5      des      des      7      3

"1111" & "0111" & "1000" & "1011" & "1111" & "0101" & "1111" & "0001" when address = "0101" else
--des      7      8      B      des      5      des      1

"1001" & "1111" & "0110" & "1111" & "1101" & "1110" & "0010" & "1111" when address = "0110" else
--9      des      6      des      D      E      2      des

"1111" & "1110" & "1011" & "1010" & "1111" & "1111" & "1001" & "1000" when address = "0111" else
--des      E      B      A      des      des      9      8

"1011" & "0000" & "1111" & "1111" & "0011" & "1111" & "1110" & "1100" when address = "1000" else
--B      0      des      des      3      des      E      C

"1111" & "1111" & "1110" & "0101" & "0110" & "1101" & "1111" & "0001" when address = "1001" else
--des      des      E      5      6      D      des      1

"1111" & "0111" & "1111" & "1011" & "1000" & "1111" & "0100" & "0000" when address = "1010" else
--des      7      des      B      8      des      4      0

"0100" & "1111" & "1111" & "0001" & "1000" & "0101" & "1111" & "0011" when address = "1011" else
--4      des      des      1      8      5      des      3

"1111" & "0101" & "1111" & "1111" & "1000" & "1100" & "0100" & "0000" when address = "1100" else
--des      5      des      des      8      C      4      0

"1101" & "1011" & "1111" & "1111" & "1000" & "1111" & "1100" & "0011" when address = "1101" else
--D      B      des      des      8      des      C      3

"0111" & "1111" & "1111" & "1100" & "1111" & "1110" & "1001" & "0110" when address = "1110" else
--7      des      des      C      des      E      9      6

"1111" & "1111" & "0000" & "1111" & "0001" & "1110" & "0111" & "1001";
--des      des      0      des      1      E      7      9
			 
end arc_ROM2;
