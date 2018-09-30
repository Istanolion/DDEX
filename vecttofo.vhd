LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY vecttofo IS
PORT(
	A : out STD_LOGIC;
	B : out STD_LOGIC;
	C : out STD_LOGIC;
   d : out std_logic;
	S : in STD_LOGIC_VECTOR(0 TO 3)
);
END vecttofo;

ARCHITECTURE BEHAVORIAL OF vecttofo IS
	BEGIN
		a<=s(3);
		b<=s(2);
		c<=s(1);
		d<=s(0);
END BEHAVORIAL;