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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "09/29/2018 13:23:02"

-- 
-- Device: Altera 10M08SAU169C8G Package UFBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MULTIPLICADOR IS
    PORT (
	S0 : OUT std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	S1 : OUT std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	S2 : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic
	);
END MULTIPLICADOR;

ARCHITECTURE structure OF MULTIPLICADOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL ww_S5 : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S4~output_o\ : std_logic;
SIGNAL \S5~output_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \A0B0~combout\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst12|inst~combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \inst12|inst1~combout\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \A2B0~combout\ : std_logic;
SIGNAL \inst9|inst2~combout\ : std_logic;
SIGNAL \inst14|inst~combout\ : std_logic;
SIGNAL \inst9|inst4~0_combout\ : std_logic;
SIGNAL \inst13|inst~combout\ : std_logic;
SIGNAL \A2B1~combout\ : std_logic;
SIGNAL \inst10|inst2~combout\ : std_logic;
SIGNAL \inst13|inst1~combout\ : std_logic;
SIGNAL \inst10|inst4~0_combout\ : std_logic;
SIGNAL \inst11|inst2~combout\ : std_logic;
SIGNAL \inst11|inst4~0_combout\ : std_logic;

BEGIN

S0 <= ww_S0;
ww_A0 <= A0;
ww_B0 <= B0;
S1 <= ww_S1;
ww_A1 <= A1;
ww_B1 <= B1;
S2 <= ww_S2;
ww_A2 <= A2;
ww_B2 <= B2;
S3 <= ww_S3;
S4 <= ww_S4;
S5 <= ww_S5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\S0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0B0~combout\,
	devoe => ww_devoe,
	o => \S0~output_o\);

\S1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst~combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

\S2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst~combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

\S3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst2~combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

\S4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst2~combout\,
	devoe => ww_devoe,
	o => \S4~output_o\);

\S5~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst4~0_combout\,
	devoe => ww_devoe,
	o => \S5~output_o\);

\A0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

\B0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

A0B0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0B0~combout\ = (\A0~input_o\ & \B0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \B0~input_o\,
	combout => \A0B0~combout\);

\A1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

\B1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

\inst12|inst\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|inst~combout\ = (\A0~input_o\ & (\B1~input_o\ $ (((\B0~input_o\ & \A1~input_o\))))) # (!\A0~input_o\ & (\B0~input_o\ & (\A1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \B0~input_o\,
	datac => \A1~input_o\,
	datad => \B1~input_o\,
	combout => \inst12|inst~combout\);

\B2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

\inst12|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|inst1~combout\ = (\A0~input_o\ & (\B0~input_o\ & (\A1~input_o\ & \B1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \B0~input_o\,
	datac => \A1~input_o\,
	datad => \B1~input_o\,
	combout => \inst12|inst1~combout\);

\A2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

A2B0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2B0~combout\ = (\B0~input_o\ & \A2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~input_o\,
	datab => \A2~input_o\,
	combout => \A2B0~combout\);

\inst9|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2~combout\ = \inst12|inst1~combout\ $ (\A2B0~combout\ $ (((\A0~input_o\ & \B2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \B2~input_o\,
	datac => \inst12|inst1~combout\,
	datad => \A2B0~combout\,
	combout => \inst9|inst2~combout\);

\inst14|inst\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst~combout\ = \inst9|inst2~combout\ $ (((\A1~input_o\ & \B1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst2~combout\,
	datac => \A1~input_o\,
	datad => \B1~input_o\,
	combout => \inst14|inst~combout\);

\inst9|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4~0_combout\ = (\inst12|inst1~combout\ & ((\A2B0~combout\) # ((\B2~input_o\ & \A0~input_o\)))) # (!\inst12|inst1~combout\ & (\B2~input_o\ & (\A0~input_o\ & \A2B0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \A0~input_o\,
	datac => \inst12|inst1~combout\,
	datad => \A2B0~combout\,
	combout => \inst9|inst4~0_combout\);

\inst13|inst\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst~combout\ = \inst9|inst4~0_combout\ $ (((\A1~input_o\ & (\B1~input_o\ & \inst9|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4~0_combout\,
	datab => \A1~input_o\,
	datac => \B1~input_o\,
	datad => \inst9|inst2~combout\,
	combout => \inst13|inst~combout\);

A2B1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2B1~combout\ = (\B1~input_o\ & \A2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~input_o\,
	datab => \A2~input_o\,
	combout => \A2B1~combout\);

\inst10|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst2~combout\ = \inst13|inst~combout\ $ (\A2B1~combout\ $ (((\A1~input_o\ & \B2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B2~input_o\,
	datac => \inst13|inst~combout\,
	datad => \A2B1~combout\,
	combout => \inst10|inst2~combout\);

\inst13|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1~combout\ = (\A1~input_o\ & (\B1~input_o\ & (\inst9|inst2~combout\ & \inst9|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B1~input_o\,
	datac => \inst9|inst2~combout\,
	datad => \inst9|inst4~0_combout\,
	combout => \inst13|inst1~combout\);

\inst10|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst4~0_combout\ = (\inst13|inst~combout\ & ((\A2B1~combout\) # ((\B2~input_o\ & \A1~input_o\)))) # (!\inst13|inst~combout\ & (\B2~input_o\ & (\A1~input_o\ & \A2B1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \A1~input_o\,
	datac => \inst13|inst~combout\,
	datad => \A2B1~combout\,
	combout => \inst10|inst4~0_combout\);

\inst11|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|inst2~combout\ = \inst13|inst1~combout\ $ (\inst10|inst4~0_combout\ $ (((\A2~input_o\ & \B2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datab => \B2~input_o\,
	datac => \inst13|inst1~combout\,
	datad => \inst10|inst4~0_combout\,
	combout => \inst11|inst2~combout\);

\inst11|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|inst4~0_combout\ = (\inst13|inst1~combout\ & ((\inst10|inst4~0_combout\) # ((\B2~input_o\ & \A2~input_o\)))) # (!\inst13|inst1~combout\ & (\B2~input_o\ & (\A2~input_o\ & \inst10|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \A2~input_o\,
	datac => \inst13|inst1~combout\,
	datad => \inst10|inst4~0_combout\,
	combout => \inst11|inst4~0_combout\);

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_S4 <= \S4~output_o\;

ww_S5 <= \S5~output_o\;
END structure;


