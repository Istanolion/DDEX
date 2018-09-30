LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY CLOCK IS
PORT(
	S : OUT STD_LOGIC
);
END CLOCK;
ARCHITECTURE BEHAVORIAL OF CLOCK IS
	signal output: std_logic:='1';
BEGIN
	process(output) 
	variable i: integer;
	begin
	i:=0;
	WHILE(i<1000) loop
		s <= output;
		output<=not(output);
		i:=i+1;
	end loop;
end process;
END BEHAVORIAL;