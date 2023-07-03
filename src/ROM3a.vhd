library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM3a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(14 downto 0)
);
end ROM3a;

architecture arc_ROM3a of ROM3a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= 
"110110000000101" when address = "0000" else
"101000011001001" when address = "0001" else
"101000100001101" when address = "0010" else
"000011110000110" when address = "0011" else
"000010010110110" when address = "0100" else
"001000011100011" when address = "0101" else
"100000101100110" when address = "0110" else
"000101110100010" when address = "0111" else
"000011100111000" when address = "1000" else
"011100110010000" when address = "1001" else
"101001010001010" when address = "1010" else
"010101001100001" when address = "1011" else
"110001010100010" when address = "1100" else
"011101001001000" when address = "1101" else
"000001010111100" when address = "1110" else
"110001010001010";

			 
end arc_ROM3a;
