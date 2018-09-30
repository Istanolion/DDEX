-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/29/2018 13:23:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MULTIPLICADOR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MULTIPLICADOR_vhd_vec_tst IS
END MULTIPLICADOR_vhd_vec_tst;
ARCHITECTURE MULTIPLICADOR_arch OF MULTIPLICADOR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL B0 : STD_LOGIC;
SIGNAL B1 : STD_LOGIC;
SIGNAL B2 : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL S3 : STD_LOGIC;
SIGNAL S4 : STD_LOGIC;
SIGNAL S5 : STD_LOGIC;
COMPONENT MULTIPLICADOR
	PORT (
	A0 : IN STD_LOGIC;
	A1 : IN STD_LOGIC;
	A2 : IN STD_LOGIC;
	B0 : IN STD_LOGIC;
	B1 : IN STD_LOGIC;
	B2 : IN STD_LOGIC;
	S0 : OUT STD_LOGIC;
	S1 : OUT STD_LOGIC;
	S2 : OUT STD_LOGIC;
	S3 : OUT STD_LOGIC;
	S4 : OUT STD_LOGIC;
	S5 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MULTIPLICADOR
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	A2 => A2,
	B0 => B0,
	B1 => B1,
	B2 => B2,
	S0 => S0,
	S1 => S1,
	S2 => S2,
	S3 => S3,
	S4 => S4,
	S5 => S5
	);

-- A0
t_prcs_A0: PROCESS
BEGIN
LOOP
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A0;

-- A1
t_prcs_A1: PROCESS
BEGIN
LOOP
	A1 <= '0';
	WAIT FOR 20000 ps;
	A1 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A1;

-- A2
t_prcs_A2: PROCESS
BEGIN
LOOP
	A2 <= '0';
	WAIT FOR 40000 ps;
	A2 <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A2;

-- B0
t_prcs_B0: PROCESS
BEGIN
LOOP
	B0 <= '0';
	WAIT FOR 80000 ps;
	B0 <= '1';
	WAIT FOR 80000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B0;

-- B1
t_prcs_B1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		B1 <= '0';
		WAIT FOR 160000 ps;
		B1 <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	B1 <= '0';
WAIT;
END PROCESS t_prcs_B1;

-- B2
t_prcs_B2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		B2 <= '0';
		WAIT FOR 320000 ps;
		B2 <= '1';
		WAIT FOR 320000 ps;
	END LOOP;
	B2 <= '0';
WAIT;
END PROCESS t_prcs_B2;
END MULTIPLICADOR_arch;
