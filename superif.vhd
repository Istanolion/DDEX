LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY superif IS
PORT(
	A : IN STD_LOGIC_VECTOR(0 TO 5);
	selec: in Std_logic_vector(0 to 2);
	bcd: out std_logic_vector(0 to 3);
	bcd2: out std_logic_vector(0 to 3);
	minusled: out std_logic;
	ledcomp: out std_logic
);
END superif;
ARCHITECTURE BEHAVORIAL OF superif IS
BEGIN
	PROCESS(A,SELEC)
	BEGIN
		IF (SELEC="000") THEN
		minusled<='0';
		ledcomp<='0';
			if A="001010" THEN
				bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="001011" THEN
				bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="001100" THEN
				bcd(3)<='0';
				bcd(2)<='1';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="001101" THEN
				bcd(3)<='1';
				bcd(2)<='1';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="001110" THEN
				bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			else
			 bcd(3)<=A(5);
			 bcd(2)<=A(4);
			 bcd(1)<=A(3);
			 bcd(0)<=a(2);
			 bcd2(3)<='0';
			 bcd2(2)<='0';
			 bcd2(1)<='0';
			 bcd2(0)<='0';
			end if;
		ELSIF (SELEC="001") THEN
		   ledcomp<='0';
			bcd2(3)<='0';
			bcd2(2)<='0';
			bcd2(1)<='0';
			bcd2(0)<='0';
			bcd(3)<=A(5);
			bcd(2)<=A(4);
			bcd(1)<=A(3);
			bcd(0)<='0';
			minusled<=A(2);
		ELSIF (SELEC="010") THEN
			bcd(3)<=A(5);
			bcd(2)<=A(4);
			bcd(1)<=A(3);
			bcd(0)<='0';
			bcd2(3)<='0';
			bcd2(2)<='0';
			bcd2(1)<='0';
			bcd2(0)<='0';
			minusled<='0';
		   ledcomp<='0';
		ELSIF (SELEC="011") THEN
			bcd(3)<=A(5);
			bcd(2)<=A(4);
			bcd(1)<=A(3);
			bcd(0)<='0';
			bcd2(3)<='0';
			bcd2(2)<='0';
			bcd2(1)<='0';
			bcd2(0)<='0';
			minusled<='0';
		   ledcomp<='0';
		ELSIF (SELEC="100") THEN
			bcd(3)<=A(5);
			bcd(2)<=A(4);
			bcd(1)<=A(3);
			bcd(0)<='0';
			bcd2(3)<='0';
			bcd2(2)<='0';
			bcd2(1)<='0';
			bcd2(0)<='0';
			minusled<='0';
		   ledcomp<='0';
		ELSIF (SELEC="101") THEN
			ledcomp<=A(5);
			bcd2(3)<='0';
			bcd2(2)<='0';
			bcd2(1)<='0';
			bcd2(0)<='0';
			bcd(3)<='0';
			bcd(2)<='0';
			bcd(1)<='0';
			bcd(0)<='0';
			minusled<='0';
		ELSIF (SELEC="110") THEN
			if A="001010" THEN
				bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="001011" THEN
				bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="001100" THEN
				bcd(3)<='0';
				bcd(2)<='1';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="001101" THEN
				bcd(3)<='1';
				bcd(2)<='1';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="001110" THEN
				bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="001111" THEN
				bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="010000" THEN
				bcd(3)<='0';
				bcd(2)<='1';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="010001" THEN
				bcd(3)<='1';
				bcd(2)<='1';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="010010" THEN
				bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='1';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="010011" THEN
				bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='1';
				bcd2(3)<='1';
				bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="010100" THEN
				bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="010101" THEN
			   bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="010110" THEN
			   bcd(3)<='0';
				bcd(2)<='1';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="010111" THEN
			   bcd(3)<='1';
				bcd(2)<='1';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="011000" THEN
			   bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="011001" THEN
			   bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="011010" THEN
			   bcd(3)<='0';
				bcd(2)<='1';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="011011" THEN
			   bcd(3)<='1';
				bcd(2)<='1';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="011100" THEN
			   bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='1';
				bcd2(3)<='0';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="011101" THEN
			   bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='1';
				bcd2(3)<='0';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="011110" THEN
			   bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="011111" THEN
			   bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="100000" THEN
			   bcd(3)<='0';
				bcd(2)<='1';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="100001" THEN
			   bcd(3)<='1';
				bcd(2)<='1';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="100010" THEN
			   bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="100011" THEN
			   bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="100100" THEN
			   bcd(3)<='0';
				bcd(2)<='1';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="100101" THEN
			   bcd(3)<='1';
				bcd(2)<='1';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='1';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="100110" THEN
			   bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='1';
				bcd2(3)<='1';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="100111" THEN
			   bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='1';
				bcd2(3)<='1';
				bcd2(2)<='1';
				bcd2(1)<='0';
				bcd2(0)<='0';
			elsif A="101000" THEN
			   bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='0';
				bcd2(1)<='1';
				bcd2(0)<='0';
			elsif A="101001" THEN
			   bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='0';
				bcd2(1)<='1';
				bcd2(0)<='0';
			elsif A="101010" THEN
			   bcd(3)<='0';
				bcd(2)<='1';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='0';
				bcd2(1)<='1';
				bcd2(0)<='0';
			elsif A="101011" THEN
			   bcd(3)<='1';
				bcd(2)<='1';
				bcd(1)<='0';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='0';
				bcd2(1)<='1';
				bcd2(0)<='0';
			elsif A="101100" THEN
			   bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='0';
				bcd2(1)<='1';
				bcd2(0)<='0';
			elsif A="101101" THEN
			   bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='0';
				bcd2(1)<='1';
				bcd2(0)<='0';
			elsif A="101110" THEN
			   bcd(3)<='0';
				bcd(2)<='1';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='0';
				bcd2(1)<='1';
				bcd2(0)<='0';
			elsif A="101111" THEN
			   bcd(3)<='1';
				bcd(2)<='1';
				bcd(1)<='1';
				bcd(0)<='0';
				bcd2(3)<='0';
				bcd2(2)<='0';
				bcd2(1)<='1';
				bcd2(0)<='0';
			elsif A="110000" THEN
				bcd(3)<='0';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='1';
				bcd2(3)<='0';
				bcd2(2)<='0';
				bcd2(1)<='1';
				bcd2(0)<='0';
			elsif A="110001" THEN
				bcd(3)<='1';
				bcd(2)<='0';
				bcd(1)<='0';
				bcd(0)<='1';
				bcd2(3)<='0';
				bcd2(2)<='0';
				bcd2(1)<='1';
				bcd2(0)<='0';
			ELSE
				bcd(3)<=A(5);
				bcd(2)<=A(4);
				bcd(1)<=A(3);
				bcd(0)<=A(2);
				bcd2(3)<='0';
			   bcd2(2)<='0';
				bcd2(1)<='0';
				bcd2(0)<='0';
			END IF;
			ledcomp<='0';
			minusled<='0';
		ELSIF (SELEC="111") THEN
			bcd(3)<=A(5);
			bcd(2)<=a(4);
			bcd(1)<=a(3);
			bcd(0)<='0';
			bcd2(3)<='0';
			bcd2(2)<='0';
			bcd2(1)<='0';
			bcd2(0)<='0';
			minusled<='1';
			ledcomp<='0';
		END IF;
	END PROCESS;
END BEHAVORIAL;