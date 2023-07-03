library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM0a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(14 downto 0)
);
end ROM0a;

architecture arc_ROM0a of ROM0a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= 
"000000100011000" when address = "0000" else
"000100000010010" when address = "0001" else
"001010000010000" when address = "0010" else
"100100000000010" when address = "0011" else
"000000100110000" when address = "0100" else
"000001010100000" when address = "0101" else
"000000000010011" when address = "0110" else
"001010010000000" when address = "0111" else
"001100000000001" when address = "1000" else
"001001000100000" when address = "1001" else
"010000001001000" when address = "1010" else
"010000000000011" when address = "1011" else
"000010001000001" when address = "1100" else
"000010010000010" when address = "1101" else
"001010000000100" when address = "1110" else
"000010001000100";



end arc_ROM0a;