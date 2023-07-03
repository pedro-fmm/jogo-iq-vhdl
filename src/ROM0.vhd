library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM0 is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(31 downto 0)
);
end ROM0;

architecture arc_ROM0 of ROM0 is
begin

--         HEX7      HEX6     HEX5     HEX4     HEX3     HEX2     HEX1     HEX0               round

output <= "1000" & "1111" & "0011" & "0100" & "1111" & "1111" & "1111" & "1111" when address = "0000" else
--8      des      3      4      des      des      des      des

"1111" & "1111" & "0100" & "1111" & "0001" & "1111" & "1111" & "1011" when address = "0001" else
--des      des      4      des      1      des      des      B

"1111" & "1111" & "1111" & "1100" & "1010" & "0100" & "1111" & "1111" when address = "0010" else
--des      des      des      C      A      4      des      des

"0001" & "1110" & "1111" & "1111" & "1111" & "1011" & "1111" & "1111" when address = "0011" else
--1      E      des      des      des      B      des      des

"0100" & "1111" & "1111" & "1111" & "0101" & "1111" & "1111" & "1000" when address = "0100" else
--4      des      des      des      5      des      des      8

"1111" & "1111" & "1001" & "1111" & "0101" & "1111" & "0111" & "1111" when address = "0101" else
--des      des      9      des      5      des      7      des

"1111" & "0100" & "0001" & "1111" & "1111" & "0000" & "1111" & "1111" when address = "0110" else
--des      4      1      des      des      0      des      des

"1111" & "1111" & "0111" & "1111" & "1111" & "1010" & "1111" & "1100" when address = "0111" else
--des      des      7      des      des      A      des      C

"1111" & "0000" & "1011" & "1111" & "1111" & "1111" & "1100" & "1111" when address = "1000" else
--des      0      B      des      des      des      C      des

"1111" & "1001" & "0101" & "1111" & "1111" & "1111" & "1100" & "1111" when address = "1001" else
--des      9      5      des      des      des      C      des

"1111" & "1111" & "1101" & "0110" & "1111" & "1111" & "1111" & "0011" when address = "1010" else
--des      des      D      6      des      des      des      3

"1101" & "0001" & "1111" & "1111" & "1111" & "0000" & "1111" & "1111" when address = "1011" else
--D      1      des      des      des      0      des      des

"1111" & "1010" & "1111" & "0110" & "0000" & "1111" & "1111" & "1111" when address = "1100" else
--des      A      des      6      0      des      des      des

"0111" & "1111" & "0001" & "1111" & "1111" & "1111" & "1111" & "1010" when address = "1101" else
--7      des      1      des      des      des      des      A

"1111" & "1111" & "1100" & "1111" & "1010" & "1111" & "0010" & "1111" when address = "1110" else
--des      des      C      des      A      des      2      des

"1111" & "1111" & "1111" & "1111" & "1111" & "0110" & "1010" & "0010";
--des      des      des      des      des      6      A      2

end arc_ROM0;