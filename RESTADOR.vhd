LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY RESTADOR IS
PORT(
	A : IN STD_LOGIC_VECTOR(0 TO 2);
	B : IN STD_LOGIC_VECTOR(0 TO 2);
	S : OUT STD_LOGIC_VECTOR(0 TO 2)
);
END RESTADOR;

ARCHITECTURE BEHAVORIAL OF RESTADOR IS
	SIGNAL CA2: STD_LOGIC_VECTOR(0 TO 2);
	BEGIN
	CA2(2)<=B(2);
	CA2(1)<=B(2) XOR B(1);
	CA2(0)<=(NOT(B(0)) AND (B(1) OR B(2))) OR (B(0) AND NOT(B(1)) AND NOT(B(2)));
	S(2)<=A(2) XOR CA2(2);
	S(1)<=(A(2) AND CA2(2))XOR A(1) XOR CA2(1);
	S(0)<=(((A(2) AND CA2(2))AND A(1))  OR  (((A(2) AND CA2(2))XOR A(1))AND CA2(1)))XOR A(0) XOR CA2(0);
END BEHAVORIAL;