LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY CA2 IS
PORT(
	A : IN STD_LOGIC_VECTOR(0 TO 2);
	S : OUT STD_LOGIC_VECTOR(0 TO 2)
);
END CA2;

ARCHITECTURE BEHAVORIAL OF CA2 IS
	BEGIN
		S(2)<=A(2);
		S(1)<=A(2) XOR A(1);
		S(0)<=(NOT(A(0)) AND (A(1) OR a(2))) OR (A(0) AND NOT(A(1)) AND NOT(A(2)));
END BEHAVORIAL;