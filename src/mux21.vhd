library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux21 is
port (
    A, B: in std_logic_vector(3 downto 0);
    sel: in std_logic;
    Y: out std_logic_vector(3 downto 0)
);
end mux21;

architecture multi of mux21 is

begin

Y <= A when sel = '0' else
     B;
     
end multi;