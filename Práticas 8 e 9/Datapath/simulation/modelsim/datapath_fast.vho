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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/28/2023 00:18:59"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	controladora IS
    PORT (
	RESET : IN std_logic;
	CLOCK : IN std_logic;
	Fio_Maior : IN std_logic;
	Fio_Igual : IN std_logic;
	Fio_Menor : IN std_logic;
	Fio_Load_E : OUT std_logic;
	Fio_Reset_MA : OUT std_logic;
	Fio_Descendo : OUT std_logic;
	Fio_Subindo : OUT std_logic;
	Fio_Atualizar : OUT std_logic
	);
END controladora;

-- Design Ports Information
-- Fio_Load_E	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fio_Reset_MA	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fio_Descendo	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fio_Subindo	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fio_Atualizar	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Maior	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Igual	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Menor	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF controladora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_Fio_Maior : std_logic;
SIGNAL ww_Fio_Igual : std_logic;
SIGNAL ww_Fio_Menor : std_logic;
SIGNAL ww_Fio_Load_E : std_logic;
SIGNAL ww_Fio_Reset_MA : std_logic;
SIGNAL ww_Fio_Descendo : std_logic;
SIGNAL ww_Fio_Subindo : std_logic;
SIGNAL ww_Fio_Atualizar : std_logic;
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Fio_Igual~combout\ : std_logic;
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \Fio_Menor~combout\ : std_logic;
SIGNAL \Fio_Maior~combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \next_state.s1_144~combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \state.s1~regout\ : std_logic;
SIGNAL \state.s0~feeder_combout\ : std_logic;
SIGNAL \state.s0~regout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \next_state.s3~0_combout\ : std_logic;
SIGNAL \next_state.s3_124~combout\ : std_logic;
SIGNAL \state.s3~regout\ : std_logic;
SIGNAL \Fio_Descendo~2_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \next_state.s2_134~combout\ : std_logic;
SIGNAL \state.s2~regout\ : std_logic;
SIGNAL \Fio_Subindo~1_combout\ : std_logic;
SIGNAL \ALT_INV_state.s0~regout\ : std_logic;
SIGNAL \ALT_INV_state.s1~regout\ : std_logic;

BEGIN

ww_RESET <= RESET;
ww_CLOCK <= CLOCK;
ww_Fio_Maior <= Fio_Maior;
ww_Fio_Igual <= Fio_Igual;
ww_Fio_Menor <= Fio_Menor;
Fio_Load_E <= ww_Fio_Load_E;
Fio_Reset_MA <= ww_Fio_Reset_MA;
Fio_Descendo <= ww_Fio_Descendo;
Fio_Subindo <= ww_Fio_Subindo;
Fio_Atualizar <= ww_Fio_Atualizar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~combout\);
\ALT_INV_state.s0~regout\ <= NOT \state.s0~regout\;
\ALT_INV_state.s1~regout\ <= NOT \state.s1~regout\;

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Igual~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Fio_Igual,
	combout => \Fio_Igual~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK,
	combout => \CLOCK~combout\);

-- Location: CLKCTRL_G3
\CLOCK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~clkctrl_outclk\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Menor~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Fio_Menor,
	combout => \Fio_Menor~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Maior~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Fio_Maior,
	combout => \Fio_Maior~combout\);

-- Location: LCCOMB_X28_Y35_N20
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\state.s1~regout\ & ((\Fio_Igual~combout\) # ((\Fio_Menor~combout\) # (\Fio_Maior~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fio_Igual~combout\,
	datab => \state.s1~regout\,
	datac => \Fio_Menor~combout\,
	datad => \Fio_Maior~combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X28_Y35_N0
\next_state.s1_144\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s1_144~combout\ = (!\comb~0_combout\ & ((\next_state.s1_144~combout\) # (!\state.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \state.s1~regout\,
	datad => \next_state.s1_144~combout\,
	combout => \next_state.s1_144~combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: CLKCTRL_G1
\RESET~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~clkctrl_outclk\);

-- Location: LCFF_X28_Y35_N1
\state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \next_state.s1_144~combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s1~regout\);

-- Location: LCCOMB_X28_Y35_N18
\state.s0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state.s0~feeder_combout\);

-- Location: LCFF_X28_Y35_N19
\state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \state.s0~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s0~regout\);

-- Location: LCCOMB_X28_Y35_N30
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ((\Fio_Maior~combout\) # ((\Fio_Igual~combout\ & !\Fio_Menor~combout\))) # (!\state.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fio_Igual~combout\,
	datab => \state.s1~regout\,
	datac => \Fio_Menor~combout\,
	datad => \Fio_Maior~combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X28_Y35_N8
\next_state.s3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s3~0_combout\ = (\state.s1~regout\ & (\Fio_Menor~combout\ & !\Fio_Maior~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s1~regout\,
	datac => \Fio_Menor~combout\,
	datad => \Fio_Maior~combout\,
	combout => \next_state.s3~0_combout\);

-- Location: LCCOMB_X28_Y35_N12
\next_state.s3_124\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s3_124~combout\ = (!\comb~1_combout\ & ((\next_state.s3~0_combout\) # (\next_state.s3_124~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~1_combout\,
	datac => \next_state.s3~0_combout\,
	datad => \next_state.s3_124~combout\,
	combout => \next_state.s3_124~combout\);

-- Location: LCFF_X28_Y35_N13
\state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \next_state.s3_124~combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s3~regout\);

-- Location: LCCOMB_X28_Y35_N22
\Fio_Descendo~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Fio_Descendo~2_combout\ = (\state.s3~regout\) # (!\state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s3~regout\,
	datad => \state.s0~regout\,
	combout => \Fio_Descendo~2_combout\);

-- Location: LCCOMB_X28_Y35_N2
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ((!\Fio_Maior~combout\ & ((\Fio_Igual~combout\) # (\Fio_Menor~combout\)))) # (!\state.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fio_Igual~combout\,
	datab => \state.s1~regout\,
	datac => \Fio_Menor~combout\,
	datad => \Fio_Maior~combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X28_Y35_N24
\next_state.s2_134\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s2_134~combout\ = (!\comb~2_combout\ & ((\next_state.s2_134~combout\) # (\Fio_Maior~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~2_combout\,
	datac => \next_state.s2_134~combout\,
	datad => \Fio_Maior~combout\,
	combout => \next_state.s2_134~combout\);

-- Location: LCFF_X28_Y35_N25
\state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \next_state.s2_134~combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s2~regout\);

-- Location: LCCOMB_X28_Y35_N26
\Fio_Subindo~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Fio_Subindo~1_combout\ = (\state.s2~regout\) # (!\state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s2~regout\,
	datad => \state.s0~regout\,
	combout => \Fio_Subindo~1_combout\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fio_Load_E~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Load_E);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fio_Reset_MA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Reset_MA);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fio_Descendo~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Fio_Descendo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Descendo);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fio_Subindo~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Fio_Subindo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Subindo);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fio_Atualizar~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Atualizar);
END structure;


