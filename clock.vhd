LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY CLOCK IS
PORT(
	clk: in std_logic;
	S : OUT STD_LOGIC
);
END CLOCK;
ARCHITECTURE BEHAVORIAL OF CLOCK IS
signal output: std_logic:='0';
BEGIN
	process(clk) begin
		if rising_edge(clk) then
			s<=output;
			output<=not(output);
		end if;
	end process;
END BEHAVORIAL;