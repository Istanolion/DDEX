LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY fotovect IS
PORT(
	A : in STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
   d : in std_logic;
	S : OUT STD_LOGIC_VECTOR(0 TO 3)
);
END fotovect ;

ARCHITECTURE BEHAVORIAL OF fotovect  IS
	BEGIN
		S(3)<=A;
		S(2)<=B;
		S(1)<=C;
		s(0)<=d;
END BEHAVORIAL;