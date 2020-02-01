-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "02/01/2020 16:48:00"

-- 
-- Device: Altera EP4CE30F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fpga_exercicio5 IS
    PORT (
	LEDM_C : OUT std_logic_vector(3 DOWNTO 0);
	GPIO0_SA : IN std_logic_vector(3 DOWNTO 0);
	GPIO0_SB : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDM_R : OUT std_logic_vector(0 DOWNTO 0)
	);
END fpga_exercicio5;

-- Design Ports Information
-- LEDM_C[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDM_C[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDM_C[1]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDM_C[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDM_R[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_SA[3]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_SB[3]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_SB[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_SA[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_SB[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_SA[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_SB[0]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_SA[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fpga_exercicio5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDM_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_GPIO0_SA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_GPIO0_SB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDM_R : std_logic_vector(0 DOWNTO 0);
SIGNAL \LEDM_C[3]~output_o\ : std_logic;
SIGNAL \LEDM_C[2]~output_o\ : std_logic;
SIGNAL \LEDM_C[1]~output_o\ : std_logic;
SIGNAL \LEDM_C[0]~output_o\ : std_logic;
SIGNAL \LEDM_R[0]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \GPIO0_SB[3]~input_o\ : std_logic;
SIGNAL \GPIO0_SA[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \GPIO0_SB[0]~input_o\ : std_logic;
SIGNAL \inst|inst|inst|inst5~0_combout\ : std_logic;
SIGNAL \GPIO0_SB[1]~input_o\ : std_logic;
SIGNAL \GPIO0_SA[1]~input_o\ : std_logic;
SIGNAL \inst|inst|inst|inst5~1_combout\ : std_logic;
SIGNAL \GPIO0_SA[2]~input_o\ : std_logic;
SIGNAL \inst|inst3|inst7|5~0_combout\ : std_logic;
SIGNAL \GPIO0_SB[2]~input_o\ : std_logic;
SIGNAL \inst|inst3|inst7|5~1_combout\ : std_logic;
SIGNAL \GPIO0_SA[3]~input_o\ : std_logic;
SIGNAL \inst|inst3|inst7|5~2_combout\ : std_logic;
SIGNAL \inst|inst2|inst7|5~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst7|5~1_combout\ : std_logic;
SIGNAL \inst|inst|inst7|5~0_combout\ : std_logic;
SIGNAL \inst|inst|inst7|5~1_combout\ : std_logic;
SIGNAL \inst|inst4|inst7|5~0_combout\ : std_logic;

BEGIN

LEDM_C <= ww_LEDM_C;
ww_GPIO0_SA <= GPIO0_SA;
ww_GPIO0_SB <= GPIO0_SB;
ww_SW <= SW;
LEDM_R <= ww_LEDM_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y34_N16
\LEDM_C[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst7|5~2_combout\,
	devoe => ww_devoe,
	o => \LEDM_C[3]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\LEDM_C[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst7|5~1_combout\,
	devoe => ww_devoe,
	o => \LEDM_C[2]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\LEDM_C[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst7|5~1_combout\,
	devoe => ww_devoe,
	o => \LEDM_C[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\LEDM_C[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst7|5~0_combout\,
	devoe => ww_devoe,
	o => \LEDM_C[0]~output_o\);

-- Location: IOOBUF_X9_Y43_N2
\LEDM_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDM_R[0]~output_o\);

-- Location: IOIBUF_X67_Y7_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X67_Y35_N1
\GPIO0_SB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO0_SB(3),
	o => \GPIO0_SB[3]~input_o\);

-- Location: IOIBUF_X65_Y43_N29
\GPIO0_SA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO0_SA(0),
	o => \GPIO0_SA[0]~input_o\);

-- Location: IOIBUF_X67_Y10_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X67_Y28_N15
\GPIO0_SB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO0_SB(0),
	o => \GPIO0_SB[0]~input_o\);

-- Location: LCCOMB_X66_Y30_N16
\inst|inst|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst5~0_combout\ = (\GPIO0_SB[0]~input_o\ & ((!\SW[0]~input_o\))) # (!\GPIO0_SB[0]~input_o\ & (\GPIO0_SA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO0_SA[0]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \GPIO0_SB[0]~input_o\,
	combout => \inst|inst|inst|inst5~0_combout\);

-- Location: IOIBUF_X67_Y27_N15
\GPIO0_SB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO0_SB(1),
	o => \GPIO0_SB[1]~input_o\);

-- Location: IOIBUF_X67_Y28_N8
\GPIO0_SA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO0_SA(1),
	o => \GPIO0_SA[1]~input_o\);

-- Location: LCCOMB_X66_Y30_N10
\inst|inst|inst|inst5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst5~1_combout\ = (\inst|inst|inst|inst5~0_combout\ & ((\GPIO0_SA[1]~input_o\ & ((!\SW[0]~input_o\))) # (!\GPIO0_SA[1]~input_o\ & (\GPIO0_SB[1]~input_o\)))) # (!\inst|inst|inst|inst5~0_combout\ & ((\GPIO0_SA[1]~input_o\ & 
-- (\GPIO0_SB[1]~input_o\)) # (!\GPIO0_SA[1]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst5~0_combout\,
	datab => \GPIO0_SB[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \GPIO0_SA[1]~input_o\,
	combout => \inst|inst|inst|inst5~1_combout\);

-- Location: IOIBUF_X65_Y43_N22
\GPIO0_SA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO0_SA(2),
	o => \GPIO0_SA[2]~input_o\);

-- Location: LCCOMB_X66_Y30_N4
\inst|inst3|inst7|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst7|5~0_combout\ = \SW[0]~input_o\ $ (((\GPIO0_SA[2]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO0_SA[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \inst|inst3|inst7|5~0_combout\);

-- Location: IOIBUF_X67_Y34_N22
\GPIO0_SB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO0_SB(2),
	o => \GPIO0_SB[2]~input_o\);

-- Location: LCCOMB_X66_Y30_N14
\inst|inst3|inst7|5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst7|5~1_combout\ = (\inst|inst|inst|inst5~1_combout\ & ((\inst|inst3|inst7|5~0_combout\) # ((!\SW[1]~input_o\ & \GPIO0_SB[2]~input_o\)))) # (!\inst|inst|inst|inst5~1_combout\ & (\inst|inst3|inst7|5~0_combout\ & ((\SW[1]~input_o\) # 
-- (\GPIO0_SB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst5~1_combout\,
	datab => \inst|inst3|inst7|5~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \GPIO0_SB[2]~input_o\,
	combout => \inst|inst3|inst7|5~1_combout\);

-- Location: IOIBUF_X67_Y37_N15
\GPIO0_SA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO0_SA(3),
	o => \GPIO0_SA[3]~input_o\);

-- Location: LCCOMB_X66_Y34_N24
\inst|inst3|inst7|5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst7|5~2_combout\ = (\SW[1]~input_o\ & ((\GPIO0_SB[3]~input_o\ & ((\GPIO0_SA[3]~input_o\) # (!\inst|inst3|inst7|5~1_combout\))) # (!\GPIO0_SB[3]~input_o\ & (!\inst|inst3|inst7|5~1_combout\ & \GPIO0_SA[3]~input_o\)))) # (!\SW[1]~input_o\ & 
-- (\GPIO0_SB[3]~input_o\ $ (\inst|inst3|inst7|5~1_combout\ $ (\GPIO0_SA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \GPIO0_SB[3]~input_o\,
	datac => \inst|inst3|inst7|5~1_combout\,
	datad => \GPIO0_SA[3]~input_o\,
	combout => \inst|inst3|inst7|5~2_combout\);

-- Location: LCCOMB_X66_Y30_N0
\inst|inst2|inst7|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst7|5~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[1]~input_o\ & (\inst|inst|inst|inst5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst5~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \inst|inst2|inst7|5~0_combout\);

-- Location: LCCOMB_X66_Y30_N26
\inst|inst2|inst7|5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst7|5~1_combout\ = (\GPIO0_SA[2]~input_o\ & ((\inst|inst2|inst7|5~0_combout\ & ((\GPIO0_SB[2]~input_o\))) # (!\inst|inst2|inst7|5~0_combout\ & ((\SW[1]~input_o\) # (!\GPIO0_SB[2]~input_o\))))) # (!\GPIO0_SA[2]~input_o\ & 
-- ((\inst|inst2|inst7|5~0_combout\ & (!\SW[1]~input_o\ & !\GPIO0_SB[2]~input_o\)) # (!\inst|inst2|inst7|5~0_combout\ & ((\GPIO0_SB[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO0_SA[2]~input_o\,
	datab => \inst|inst2|inst7|5~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \GPIO0_SB[2]~input_o\,
	combout => \inst|inst2|inst7|5~1_combout\);

-- Location: LCCOMB_X66_Y30_N12
\inst|inst|inst7|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst7|5~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\GPIO0_SB[0]~input_o\) # (\GPIO0_SA[0]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO0_SA[0]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \GPIO0_SB[0]~input_o\,
	combout => \inst|inst|inst7|5~0_combout\);

-- Location: LCCOMB_X66_Y30_N6
\inst|inst|inst7|5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst7|5~1_combout\ = (\inst|inst|inst7|5~0_combout\ & ((\GPIO0_SB[1]~input_o\ & ((\GPIO0_SA[1]~input_o\))) # (!\GPIO0_SB[1]~input_o\ & (!\SW[1]~input_o\ & !\GPIO0_SA[1]~input_o\)))) # (!\inst|inst|inst7|5~0_combout\ & ((\GPIO0_SB[1]~input_o\ & 
-- ((\SW[1]~input_o\) # (!\GPIO0_SA[1]~input_o\))) # (!\GPIO0_SB[1]~input_o\ & ((\GPIO0_SA[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst7|5~0_combout\,
	datab => \GPIO0_SB[1]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \GPIO0_SA[1]~input_o\,
	combout => \inst|inst|inst7|5~1_combout\);

-- Location: LCCOMB_X66_Y30_N24
\inst|inst4|inst7|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst7|5~0_combout\ = (\GPIO0_SA[0]~input_o\ & ((\GPIO0_SB[0]~input_o\) # ((!\SW[0]~input_o\ & \SW[1]~input_o\)))) # (!\GPIO0_SA[0]~input_o\ & ((\SW[1]~input_o\ & (!\SW[0]~input_o\ & \GPIO0_SB[0]~input_o\)) # (!\SW[1]~input_o\ & 
-- ((!\GPIO0_SB[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO0_SA[0]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \GPIO0_SB[0]~input_o\,
	combout => \inst|inst4|inst7|5~0_combout\);

ww_LEDM_C(3) <= \LEDM_C[3]~output_o\;

ww_LEDM_C(2) <= \LEDM_C[2]~output_o\;

ww_LEDM_C(1) <= \LEDM_C[1]~output_o\;

ww_LEDM_C(0) <= \LEDM_C[0]~output_o\;

ww_LEDM_R(0) <= \LEDM_R[0]~output_o\;
END structure;


