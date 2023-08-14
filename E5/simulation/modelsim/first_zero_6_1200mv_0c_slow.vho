-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/10/2023 01:20:43"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	first_zero IS
    PORT (
	\in\ : IN std_logic_vector(3 DOWNTO 0);
	index : OUT std_logic_vector(2 DOWNTO 0)
	);
END first_zero;

-- Design Ports Information
-- index[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[3]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF first_zero IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_in\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_index : std_logic_vector(2 DOWNTO 0);
SIGNAL \index[0]~output_o\ : std_logic;
SIGNAL \index[1]~output_o\ : std_logic;
SIGNAL \index[2]~output_o\ : std_logic;
SIGNAL \in[0]~input_o\ : std_logic;
SIGNAL \in[2]~input_o\ : std_logic;
SIGNAL \in[1]~input_o\ : std_logic;
SIGNAL \index~0_combout\ : std_logic;
SIGNAL \in[3]~input_o\ : std_logic;
SIGNAL \index~1_combout\ : std_logic;
SIGNAL \index~2_combout\ : std_logic;

BEGIN

\ww_in\ <= \in\;
index <= ww_index;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\index[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \index~0_combout\,
	devoe => ww_devoe,
	o => \index[0]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\index[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \index~1_combout\,
	devoe => ww_devoe,
	o => \index[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\index[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \index~2_combout\,
	devoe => ww_devoe,
	o => \index[2]~output_o\);

-- Location: IOIBUF_X12_Y0_N8
\in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(0),
	o => \in[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(2),
	o => \in[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(1),
	o => \in[1]~input_o\);

-- Location: LCCOMB_X9_Y1_N24
\index~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \index~0_combout\ = (\in[0]~input_o\ & ((\in[2]~input_o\) # (!\in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \in[2]~input_o\,
	datac => \in[1]~input_o\,
	combout => \index~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(3),
	o => \in[3]~input_o\);

-- Location: LCCOMB_X9_Y1_N18
\index~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \index~1_combout\ = (\in[0]~input_o\ & (\in[1]~input_o\ & ((!\in[3]~input_o\) # (!\in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \in[2]~input_o\,
	datac => \in[1]~input_o\,
	datad => \in[3]~input_o\,
	combout => \index~1_combout\);

-- Location: LCCOMB_X9_Y1_N4
\index~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \index~2_combout\ = (\in[0]~input_o\ & (\in[2]~input_o\ & (\in[1]~input_o\ & \in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \in[2]~input_o\,
	datac => \in[1]~input_o\,
	datad => \in[3]~input_o\,
	combout => \index~2_combout\);

ww_index(0) <= \index[0]~output_o\;

ww_index(1) <= \index[1]~output_o\;

ww_index(2) <= \index[2]~output_o\;
END structure;


