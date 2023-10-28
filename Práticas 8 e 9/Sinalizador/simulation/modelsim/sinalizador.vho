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

-- DATE "10/28/2023 00:37:21"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Sinalizador IS
    PORT (
	RESET : IN std_logic;
	E : IN std_logic_vector(3 DOWNTO 0);
	Subindo : OUT std_logic_vector(1 DOWNTO 0);
	Descendo : OUT std_logic_vector(1 DOWNTO 0);
	Display_7seg : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK : IN std_logic
	);
END Sinalizador;

-- Design Ports Information
-- Subindo[0]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Subindo[1]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Descendo[0]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Descendo[1]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[0]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[1]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[2]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[3]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[4]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[5]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[6]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[3]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[2]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[1]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Sinalizador IS
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
SIGNAL ww_E : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Subindo : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Descendo : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Display_7seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK : std_logic;
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DPath|Comparador_instance|LessThan0~2_combout\ : std_logic;
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \Ctrl|state.s0~feeder_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \Ctrl|state.s0~regout\ : std_logic;
SIGNAL \Ctrl|state.s1~0_combout\ : std_logic;
SIGNAL \Ctrl|state.s1~regout\ : std_logic;
SIGNAL \DPath|Comparador_instance|LessThan0~1_combout\ : std_logic;
SIGNAL \DPath|Comparador_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \DPath|Comparador_instance|LessThan0~3_combout\ : std_logic;
SIGNAL \DPath|Comparador_instance|LessThan0~4_combout\ : std_logic;
SIGNAL \Ctrl|comb~2_combout\ : std_logic;
SIGNAL \Ctrl|next_state.s2_134~combout\ : std_logic;
SIGNAL \Ctrl|state.s2~regout\ : std_logic;
SIGNAL \Ctrl|Fio_Subindo~combout\ : std_logic;
SIGNAL \DPath|Reg_MA|var4[2]~0_combout\ : std_logic;
SIGNAL \DPath|Reg_MA|var4[3]~1_combout\ : std_logic;
SIGNAL \DPath|Comparador_instance|LessThan1~0_combout\ : std_logic;
SIGNAL \Ctrl|next_state.s3~0_combout\ : std_logic;
SIGNAL \Ctrl|state.s3~regout\ : std_logic;
SIGNAL \Ctrl|Fio_Descendo~combout\ : std_logic;
SIGNAL \DPath|BCD|Mux1~0_combout\ : std_logic;
SIGNAL \DPath|BCD|Mux1~1_combout\ : std_logic;
SIGNAL \DPath|BCD|Mux1~2_combout\ : std_logic;
SIGNAL \DPath|Descendo|registro\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DPath|Reg_E|registro\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DPath|Subindo|registro\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \E~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Ctrl|ALT_INV_state.s1~regout\ : std_logic;
SIGNAL \DPath|Reg_MA|ALT_INV_var4[3]~1_combout\ : std_logic;
SIGNAL \DPath|BCD|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \DPath|BCD|ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_RESET <= RESET;
ww_E <= E;
Subindo <= ww_Subindo;
Descendo <= ww_Descendo;
Display_7seg <= ww_Display_7seg;
ww_CLOCK <= CLOCK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~combout\);

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);
\Ctrl|ALT_INV_state.s1~regout\ <= NOT \Ctrl|state.s1~regout\;
\DPath|Reg_MA|ALT_INV_var4[3]~1_combout\ <= NOT \DPath|Reg_MA|var4[3]~1_combout\;
\DPath|BCD|ALT_INV_Mux1~1_combout\ <= NOT \DPath|BCD|Mux1~1_combout\;
\DPath|BCD|ALT_INV_Mux1~0_combout\ <= NOT \DPath|BCD|Mux1~0_combout\;

-- Location: LCCOMB_X1_Y2_N0
\DPath|Comparador_instance|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_instance|LessThan0~2_combout\ = (!\E~combout\(2) & !\E~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(2),
	datac => \E~combout\(3),
	combout => \DPath|Comparador_instance|LessThan0~2_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X1_Y2_N10
\Ctrl|state.s0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|state.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ctrl|state.s0~feeder_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X1_Y2_N11
\Ctrl|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|state.s0~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.s0~regout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[0]~I\ : cycloneii_io
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
	padio => ww_E(0),
	combout => \E~combout\(0));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[3]~I\ : cycloneii_io
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
	padio => ww_E(3),
	combout => \E~combout\(3));

-- Location: LCCOMB_X1_Y2_N24
\Ctrl|state.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|state.s1~0_combout\ = !\Ctrl|state.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.s1~regout\,
	combout => \Ctrl|state.s1~0_combout\);

-- Location: LCFF_X1_Y2_N25
\Ctrl|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|state.s1~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.s1~regout\);

-- Location: LCFF_X1_Y2_N1
\DPath|Reg_E|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \E~combout\(3),
	sload => VCC,
	ena => \Ctrl|ALT_INV_state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_E|registro\(3));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[2]~I\ : cycloneii_io
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
	padio => ww_E(2),
	combout => \E~combout\(2));

-- Location: LCFF_X1_Y2_N21
\DPath|Reg_E|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \E~combout\(2),
	sload => VCC,
	ena => \Ctrl|ALT_INV_state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_E|registro\(2));

-- Location: LCCOMB_X1_Y2_N16
\DPath|Comparador_instance|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_instance|LessThan0~1_combout\ = (\Ctrl|state.s0~regout\ & (!\DPath|Reg_E|registro\(2) & (\E~combout\(1) $ (!\DPath|Reg_E|registro\(3))))) # (!\Ctrl|state.s0~regout\ & (!\E~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(1),
	datab => \DPath|Reg_E|registro\(3),
	datac => \DPath|Reg_E|registro\(2),
	datad => \Ctrl|state.s0~regout\,
	combout => \DPath|Comparador_instance|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y2_N26
\DPath|Comparador_instance|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_instance|LessThan0~0_combout\ = (\E~combout\(1) & ((!\Ctrl|state.s0~regout\) # (!\DPath|Reg_E|registro\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(1),
	datab => \DPath|Reg_E|registro\(3),
	datad => \Ctrl|state.s0~regout\,
	combout => \DPath|Comparador_instance|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y2_N30
\DPath|Comparador_instance|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_instance|LessThan0~3_combout\ = ((\DPath|Comparador_instance|LessThan0~0_combout\) # ((\E~combout\(0) & \DPath|Comparador_instance|LessThan0~1_combout\))) # (!\DPath|Comparador_instance|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Comparador_instance|LessThan0~2_combout\,
	datab => \E~combout\(0),
	datac => \DPath|Comparador_instance|LessThan0~1_combout\,
	datad => \DPath|Comparador_instance|LessThan0~0_combout\,
	combout => \DPath|Comparador_instance|LessThan0~3_combout\);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[1]~I\ : cycloneii_io
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
	padio => ww_E(1),
	combout => \E~combout\(1));

-- Location: LCCOMB_X1_Y2_N20
\DPath|Comparador_instance|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_instance|LessThan0~4_combout\ = (\DPath|Reg_E|registro\(3) & (\E~combout\(0) & (!\DPath|Reg_E|registro\(2) & \E~combout\(1)))) # (!\DPath|Reg_E|registro\(3) & ((\E~combout\(1)) # ((\E~combout\(0) & !\DPath|Reg_E|registro\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_E|registro\(3),
	datab => \E~combout\(0),
	datac => \DPath|Reg_E|registro\(2),
	datad => \E~combout\(1),
	combout => \DPath|Comparador_instance|LessThan0~4_combout\);

-- Location: LCCOMB_X1_Y2_N6
\Ctrl|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|comb~2_combout\ = ((!\E~combout\(3) & (!\DPath|Comparador_instance|LessThan0~4_combout\ & !\E~combout\(2)))) # (!\Ctrl|state.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(3),
	datab => \DPath|Comparador_instance|LessThan0~4_combout\,
	datac => \Ctrl|state.s1~regout\,
	datad => \E~combout\(2),
	combout => \Ctrl|comb~2_combout\);

-- Location: LCCOMB_X1_Y2_N4
\Ctrl|next_state.s2_134\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|next_state.s2_134~combout\ = (!\Ctrl|comb~2_combout\ & ((\DPath|Comparador_instance|LessThan0~3_combout\) # (\Ctrl|next_state.s2_134~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Comparador_instance|LessThan0~3_combout\,
	datac => \Ctrl|next_state.s2_134~combout\,
	datad => \Ctrl|comb~2_combout\,
	combout => \Ctrl|next_state.s2_134~combout\);

-- Location: LCFF_X1_Y2_N27
\Ctrl|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \Ctrl|next_state.s2_134~combout\,
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.s2~regout\);

-- Location: LCCOMB_X1_Y2_N8
\Ctrl|Fio_Subindo\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Fio_Subindo~combout\ = (\Ctrl|state.s2~regout\) # (!\Ctrl|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|state.s0~regout\,
	datac => \Ctrl|state.s2~regout\,
	combout => \Ctrl|Fio_Subindo~combout\);

-- Location: LCFF_X1_Y2_N9
\DPath|Subindo|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Fio_Subindo~combout\,
	ena => \Ctrl|ALT_INV_state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Subindo|registro\(1));

-- Location: LCCOMB_X1_Y2_N14
\DPath|Reg_MA|var4[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|var4[2]~0_combout\ = (\DPath|Reg_E|registro\(2) & \Ctrl|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DPath|Reg_E|registro\(2),
	datad => \Ctrl|state.s0~regout\,
	combout => \DPath|Reg_MA|var4[2]~0_combout\);

-- Location: LCCOMB_X1_Y2_N12
\DPath|Reg_MA|var4[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|var4[3]~1_combout\ = (\DPath|Reg_E|registro\(3) & \Ctrl|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_E|registro\(3),
	datad => \Ctrl|state.s0~regout\,
	combout => \DPath|Reg_MA|var4[3]~1_combout\);

-- Location: LCCOMB_X1_Y2_N28
\DPath|Comparador_instance|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_instance|LessThan1~0_combout\ = (\E~combout\(1) & (!\E~combout\(0) & (\DPath|Reg_MA|var4[2]~0_combout\ & \DPath|Reg_MA|var4[3]~1_combout\))) # (!\E~combout\(1) & ((\DPath|Reg_MA|var4[3]~1_combout\) # ((!\E~combout\(0) & 
-- \DPath|Reg_MA|var4[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(0),
	datab => \E~combout\(1),
	datac => \DPath|Reg_MA|var4[2]~0_combout\,
	datad => \DPath|Reg_MA|var4[3]~1_combout\,
	combout => \DPath|Comparador_instance|LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y2_N18
\Ctrl|next_state.s3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|next_state.s3~0_combout\ = (\DPath|Comparador_instance|LessThan0~2_combout\ & (\DPath|Comparador_instance|LessThan1~0_combout\ & (\Ctrl|state.s1~regout\ & !\DPath|Comparador_instance|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Comparador_instance|LessThan0~2_combout\,
	datab => \DPath|Comparador_instance|LessThan1~0_combout\,
	datac => \Ctrl|state.s1~regout\,
	datad => \DPath|Comparador_instance|LessThan0~3_combout\,
	combout => \Ctrl|next_state.s3~0_combout\);

-- Location: LCFF_X1_Y2_N19
\Ctrl|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|next_state.s3~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.s3~regout\);

-- Location: LCCOMB_X1_Y2_N22
\Ctrl|Fio_Descendo\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Fio_Descendo~combout\ = (\Ctrl|state.s3~regout\) # (!\Ctrl|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.s0~regout\,
	datad => \Ctrl|state.s3~regout\,
	combout => \Ctrl|Fio_Descendo~combout\);

-- Location: LCFF_X1_Y2_N23
\DPath|Descendo|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Fio_Descendo~combout\,
	ena => \Ctrl|ALT_INV_state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Descendo|registro\(1));

-- Location: LCCOMB_X2_Y2_N0
\DPath|BCD|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD|Mux1~0_combout\ = ((\DPath|Reg_E|registro\(3)) # (!\Ctrl|state.s0~regout\)) # (!\DPath|Reg_E|registro\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_E|registro\(2),
	datac => \DPath|Reg_E|registro\(3),
	datad => \Ctrl|state.s0~regout\,
	combout => \DPath|BCD|Mux1~0_combout\);

-- Location: LCCOMB_X2_Y2_N18
\DPath|BCD|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD|Mux1~1_combout\ = (\DPath|Reg_E|registro\(2)) # ((!\Ctrl|state.s0~regout\) # (!\DPath|Reg_E|registro\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_E|registro\(2),
	datac => \DPath|Reg_E|registro\(3),
	datad => \Ctrl|state.s0~regout\,
	combout => \DPath|BCD|Mux1~1_combout\);

-- Location: LCCOMB_X2_Y2_N28
\DPath|BCD|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD|Mux1~2_combout\ = (\Ctrl|state.s0~regout\ & ((\DPath|Reg_E|registro\(2)) # (\DPath|Reg_E|registro\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_E|registro\(2),
	datac => \DPath|Reg_E|registro\(3),
	datad => \Ctrl|state.s0~regout\,
	combout => \DPath|BCD|Mux1~2_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Subindo[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Subindo(0));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Subindo[1]~I\ : cycloneii_io
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
	datain => \DPath|Subindo|registro\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Subindo(1));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Descendo[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Descendo(0));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Descendo[1]~I\ : cycloneii_io
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
	datain => \DPath|Descendo|registro\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Descendo(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[0]~I\ : cycloneii_io
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
	datain => \DPath|BCD|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(0));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(1));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[2]~I\ : cycloneii_io
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
	datain => \DPath|BCD|ALT_INV_Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(2));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[3]~I\ : cycloneii_io
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
	datain => \DPath|BCD|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(3));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[4]~I\ : cycloneii_io
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
	datain => \DPath|Reg_MA|var4[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(4));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[5]~I\ : cycloneii_io
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
	datain => \DPath|BCD|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(5));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[6]~I\ : cycloneii_io
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
	datain => \DPath|Reg_MA|ALT_INV_var4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(6));
END structure;


