library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM2a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(14 downto 0)
);
end ROM2a;

architecture arc_ROM2a of ROM2a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= 
"001000011000011" when address = "0000" else
"000000111001010" when address = "0001" else
"000000101001110" when address = "0010" else
"000010110011000" when address = "0011" else
"001000010101100" when address = "0100" else
"000100110100010" when address = "0101" else
"110001001000100" when address = "0110" else
"100111100000000" when address = "0111" else
"101100000001001" when address = "1000" else
"110000001100010" when address = "1001" else
"000100110010001" when address = "1010" else
"000000100111010" when address = "1011" else
"001000100110001" when address = "1100" else
"011100100001000" when address = "1101" else
"101001011000000" when address = "1110" else
"100001010000011";
			 
end arc_ROM2a;
