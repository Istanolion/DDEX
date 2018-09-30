LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY MUXbcd IS 
PORT(
	A : IN STD_LOGIC_VECTOR(0 TO 3);
	B : IN STD_LOGIC_VECTOR(0 TO 3);
	SEL : IN STD_LOGIC;
	s0: out std_logic;
	s1: out std_logic;
	s2: out std_logic;
	s3: out std_logic
);
END MUXbcd;

ARCHITECTURE BEHAVIORAL OF MUXbcd IS
BEGIN
	PROCESS(A,B,SEL)
	BEGIN
		IF SEL='0' THEN
			s0<=A(3);
			s1<=A(2);
			s2<=A(1);
			s3<=A(0);
		ELSE
			s0<=b(3);
			s1<=b(2);
			s2<=b(1);
			s3<=b(0);
		END IF;
	END PROCESS;
END BEHAVIORAL;