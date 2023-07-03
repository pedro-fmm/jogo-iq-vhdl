library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM1a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(14 downto 0)
);
end ROM1a;

architecture arc_ROM1a of ROM1a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= 
"000001010001010" when address = "0000" else
"001001010001000" when address = "0001" else
"100000001000101" when address = "0010" else
"001011001000000" when address = "0011" else
"001000110010000" when address = "0100" else
"000110000100100" when address = "0101" else
"100100010100000" when address = "0110" else
"000010100001100" when address = "0111" else
"000100011000100" when address = "1000" else
"100000011000001" when address = "1001" else
"100000100000110" when address = "1010" else
"000000010110001" when address = "1011" else
"001000010001100" when address = "1100" else
"011000010000100" when address = "1101" else
"001000001011000" when address = "1110" else
"101010001000000";

			 
end arc_ROM1a;
