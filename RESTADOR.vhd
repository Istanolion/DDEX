LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY RESTADOR IS
PORT(
	A : IN STD_LOGIC_VECTOR(0 TO 2);
	B : IN STD_LOGIC_VECTOR(0 TO 2);
	S : OUT STD_LOGIC_VECTOR(0 TO 3)
);
END RESTADOR;

ARCHITECTURE BEHAVORIAL OF RESTADOR IS
	SIGNAL CA2: STD_LOGIC_VECTOR(0 TO 2);
	signal negado: STD_LOGIC_VECTOR(0 TO 3);
	signal normal: STD_LOGIC_VECTOR(0 TO 3);
	BEGIN
	CA2(2)<=B(2);
	CA2(1)<=B(2) XOR B(1);
	CA2(0)<=(NOT(B(0)) AND (B(1) OR B(2))) OR (B(0) AND NOT(B(1)) AND NOT(B(2)));
	negado(3)<=A(2) XOR CA2(2);
	negado(2)<=(A(2) AND CA2(2))XOR A(1) XOR CA2(1);
	negado(1)<=(((A(2) AND CA2(2))AND A(1))  OR  (((A(2) AND CA2(2))XOR A(1))AND CA2(1)))XOR A(0) XOR CA2(0);
   negado(0)<='0' when (b="000") else NOT(((((A(2) AND ca2(2))AND A(1))  OR  (((A(2) AND ca2(2))XOR A(1))AND ca2(1)))AND A(0))OR(((((A(2) AND ca2(2))AND A(1))  OR  (((A(2) AND ca2(2))XOR A(1))AND ca2(1)))XOR A(0)) AND ca2(0)));
   process(negado,normal)
	begin
	if negado(0)='1' then
	   normal(3)<=negado(3);
	   normal(2)<=negado(3) xor negado(2);
		normal(1)<=(NOT(negado(1)) AND (negado(2) OR negado(3))) OR (negado(1) AND NOT(negado(2)) AND NOT(negado(3)));
		normal(0)<=negado(0);
		s<=normal;
	
	else 
		s<=negado;
	end if;
	end process;
END BEHAVORIAL;