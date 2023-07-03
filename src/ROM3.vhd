library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM3 is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(31 downto 0)
);
end ROM3;

architecture arc_ROM3 of ROM3 is
begin

--         HEX7      HEX6     HEX5     HEX4     HEX3     HEX2     HEX1     HEX0               round

output <="1111" & "1101" & "1011" & "0000" & "1010" & "1111" & "0010" & "1110" when address = "0000" else
--des      D      B      0      A      des      2      E

"0000" & "1111" & "0110" & "0111" & "0011" & "1110" & "1111" & "1100" when address = "0001" else
--0      des      6      7      3      E      des      C

"1111" & "1000" & "0010" & "0011" & "1100" & "1110" & "0000" & "1111" when address = "0010" else
--des      8      2      3      C      E      0      des

"0010" & "0001" & "1010" & "1111" & "1111" & "1001" & "1000" & "0111" when address = "0011" else
--2      1      A      des      des      9      8      7

"0010" & "0101" & "1111" & "0100" & "1111" & "1010" & "0111" & "0001" when address = "0100" else
--2      5      des      4      des      A      7      1

"0101" & "0000" & "0111" & "1111" & "0001" & "0110" & "1111" & "1100" when address = "0101" else
--5      0      7      des      1      6      des      C

"0010" & "1000" & "0001" & "1110" & "0110" & "1111" & "0101" & "1111" when address = "0110" else
--2      8      1      E      6      des      5      des

"1111" & "1111" & "1000" & "0101" & "1001" & "0111" & "0001" & "1011" when address = "0111" else
--des      des      8      5      9      7      1      B

"1111" & "1001" & "1000" & "0100" & "1010" & "0101" & "1111" & "0011" when address = "1000" else
--des      9      8      4      A      5      des      3

"1111" & "1100" & "0111" & "1011" & "1101" & "1111" & "0100" & "1000" when address = "1001" else
--des      C      7      B      D      des      4      8

"1111" & "1110" & "1111" & "0011" & "0111" & "1100" & "0001" & "1001" when address = "1010" else
--des      E      des      3      7      C      1      9

"0110" & "0000" & "1011" & "0101" & "1111" & "1101" & "1111" & "1001" when address = "1011" else
--6      0      B      5      des      D      des      9

"1101" & "1110" & "1001" & "1111" & "0111" & "0001" & "0101" & "1111" when address = "1100" else
--D      E      9      des      7      1      5      des

"1111" & "1101" & "1100" & "0011" & "1001" & "0110" & "1111" & "1011" when address = "1101" else
--des      D      C      3      9      6      des      B

"0101" & "0010" & "0100" & "0111" & "1111" & "1001" & "1111" & "0011" when address = "1110" else
--5      2      4      7      des      9      des      3

"1110" & "1111" & "1001" & "1111" & "0111" & "1101" & "0001" & "0011";
--E      des      9      des      7      D      1      3
			 
end arc_ROM3;
