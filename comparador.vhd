library ieee;
use ieee.std_logic_1164.all;

entity comparador is
port (
	A, B : in std_logic_vector (3 downto 0);
	salida : out std_logic
);

end comparador;

architecture LEQ of comparador is

begin 
	salida <= '1' when (A<B) else '0';

end LEQ;
