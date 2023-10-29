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

-- DATE "10/29/2023 18:08:41"

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
-- Subindo[0]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Subindo[1]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Descendo[0]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Descendo[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[1]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[2]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[3]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[4]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[5]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[6]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[3]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[2]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[0]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \Ctrl|state.s1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DPath|Reg_MA|Add0~0_combout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add0~2_combout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add0~6_combout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add1~4_combout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add1~7\ : std_logic;
SIGNAL \DPath|Reg_MA|Add1~8_combout\ : std_logic;
SIGNAL \Ctrl|comb~2_combout\ : std_logic;
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \Ctrl|state.s1~0_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \Ctrl|state.s1~regout\ : std_logic;
SIGNAL \Ctrl|state.s1~clkctrl_outclk\ : std_logic;
SIGNAL \DPath|Comparador_instance|LessThan0~3_combout\ : std_logic;
SIGNAL \Ctrl|state.s0~feeder_combout\ : std_logic;
SIGNAL \Ctrl|state.s0~regout\ : std_logic;
SIGNAL \Ctrl|WideOr0~0_combout\ : std_logic;
SIGNAL \Ctrl|Fio_Reset_MA~combout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add0~1\ : std_logic;
SIGNAL \DPath|Reg_MA|Add0~3\ : std_logic;
SIGNAL \DPath|Reg_MA|Add0~5\ : std_logic;
SIGNAL \DPath|Reg_MA|Add0~7\ : std_logic;
SIGNAL \DPath|Reg_MA|Add0~8_combout\ : std_logic;
SIGNAL \DPath|Reg_MA|var3[1]~feeder_combout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add1~1\ : std_logic;
SIGNAL \DPath|Reg_MA|Add1~3\ : std_logic;
SIGNAL \DPath|Reg_MA|Add1~5\ : std_logic;
SIGNAL \DPath|Reg_MA|Add1~6_combout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add0~4_combout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add1~2_combout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add1~0_combout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add2~1_cout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add2~3_cout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add2~5_cout\ : std_logic;
SIGNAL \DPath|Reg_MA|Add2~7_cout\ : std_logic;
SIGNAL \DPath|Reg_MA|OUTPUT[0]~1\ : std_logic;
SIGNAL \DPath|Reg_MA|OUTPUT[1]~2_combout\ : std_logic;
SIGNAL \DPath|Reg_MA|OUTPUT[0]~0_combout\ : std_logic;
SIGNAL \DPath|Comparador_instance|LessThan0~2_combout\ : std_logic;
SIGNAL \DPath|Comparador_instance|LessThan1~0_combout\ : std_logic;
SIGNAL \Ctrl|next_state.s3~0_combout\ : std_logic;
SIGNAL \Ctrl|state.s3~regout\ : std_logic;
SIGNAL \Ctrl|next_state.s4~0_combout\ : std_logic;
SIGNAL \Ctrl|state.s4~regout\ : std_logic;
SIGNAL \Ctrl|Fio_Subindo~0_combout\ : std_logic;
SIGNAL \Ctrl|Fio_Subindo~combout\ : std_logic;
SIGNAL \DPath|Comparador_instance|LessThan0~4_combout\ : std_logic;
SIGNAL \Ctrl|next_state.s2_160~combout\ : std_logic;
SIGNAL \Ctrl|state.s2~regout\ : std_logic;
SIGNAL \Ctrl|Fio_Descendo~0_combout\ : std_logic;
SIGNAL \Ctrl|Fio_Descendo~combout\ : std_logic;
SIGNAL \DPath|BCD|Mux1~0_combout\ : std_logic;
SIGNAL \DPath|BCD|Mux1~1_combout\ : std_logic;
SIGNAL \DPath|BCD|Mux1~2_combout\ : std_logic;
SIGNAL \DPath|Reg_E|registro\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DPath|Subindo|registro\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \E~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DPath|Descendo|registro\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DPath|Reg_MA|var3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DPath|Reg_MA|var4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DPath|Reg_MA|var2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DPath|Reg_MA|var1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DPath|Reg_MA|ALT_INV_OUTPUT[1]~2_combout\ : std_logic;

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

\Ctrl|state.s1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Ctrl|state.s1~regout\);

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);
\DPath|Reg_MA|ALT_INV_OUTPUT[1]~2_combout\ <= NOT \DPath|Reg_MA|OUTPUT[1]~2_combout\;

-- Location: LCCOMB_X2_Y4_N4
\DPath|Reg_MA|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add0~0_combout\ = (\DPath|Reg_MA|var1\(0) & (\DPath|Reg_MA|var2\(0) $ (VCC))) # (!\DPath|Reg_MA|var1\(0) & (\DPath|Reg_MA|var2\(0) & VCC))
-- \DPath|Reg_MA|Add0~1\ = CARRY((\DPath|Reg_MA|var1\(0) & \DPath|Reg_MA|var2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|var1\(0),
	datab => \DPath|Reg_MA|var2\(0),
	datad => VCC,
	combout => \DPath|Reg_MA|Add0~0_combout\,
	cout => \DPath|Reg_MA|Add0~1\);

-- Location: LCCOMB_X2_Y4_N6
\DPath|Reg_MA|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add0~2_combout\ = (\DPath|Reg_MA|var1\(1) & ((\DPath|Reg_MA|var2\(1) & (\DPath|Reg_MA|Add0~1\ & VCC)) # (!\DPath|Reg_MA|var2\(1) & (!\DPath|Reg_MA|Add0~1\)))) # (!\DPath|Reg_MA|var1\(1) & ((\DPath|Reg_MA|var2\(1) & (!\DPath|Reg_MA|Add0~1\)) 
-- # (!\DPath|Reg_MA|var2\(1) & ((\DPath|Reg_MA|Add0~1\) # (GND)))))
-- \DPath|Reg_MA|Add0~3\ = CARRY((\DPath|Reg_MA|var1\(1) & (!\DPath|Reg_MA|var2\(1) & !\DPath|Reg_MA|Add0~1\)) # (!\DPath|Reg_MA|var1\(1) & ((!\DPath|Reg_MA|Add0~1\) # (!\DPath|Reg_MA|var2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|var1\(1),
	datab => \DPath|Reg_MA|var2\(1),
	datad => VCC,
	cin => \DPath|Reg_MA|Add0~1\,
	combout => \DPath|Reg_MA|Add0~2_combout\,
	cout => \DPath|Reg_MA|Add0~3\);

-- Location: LCCOMB_X2_Y4_N10
\DPath|Reg_MA|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add0~6_combout\ = (\DPath|Reg_MA|var1\(3) & ((\DPath|Reg_MA|var2\(3) & (\DPath|Reg_MA|Add0~5\ & VCC)) # (!\DPath|Reg_MA|var2\(3) & (!\DPath|Reg_MA|Add0~5\)))) # (!\DPath|Reg_MA|var1\(3) & ((\DPath|Reg_MA|var2\(3) & (!\DPath|Reg_MA|Add0~5\)) 
-- # (!\DPath|Reg_MA|var2\(3) & ((\DPath|Reg_MA|Add0~5\) # (GND)))))
-- \DPath|Reg_MA|Add0~7\ = CARRY((\DPath|Reg_MA|var1\(3) & (!\DPath|Reg_MA|var2\(3) & !\DPath|Reg_MA|Add0~5\)) # (!\DPath|Reg_MA|var1\(3) & ((!\DPath|Reg_MA|Add0~5\) # (!\DPath|Reg_MA|var2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|var1\(3),
	datab => \DPath|Reg_MA|var2\(3),
	datad => VCC,
	cin => \DPath|Reg_MA|Add0~5\,
	combout => \DPath|Reg_MA|Add0~6_combout\,
	cout => \DPath|Reg_MA|Add0~7\);

-- Location: LCCOMB_X1_Y4_N4
\DPath|Reg_MA|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add1~4_combout\ = ((\DPath|Reg_MA|var3\(2) $ (\DPath|Reg_MA|var4\(2) $ (!\DPath|Reg_MA|Add1~3\)))) # (GND)
-- \DPath|Reg_MA|Add1~5\ = CARRY((\DPath|Reg_MA|var3\(2) & ((\DPath|Reg_MA|var4\(2)) # (!\DPath|Reg_MA|Add1~3\))) # (!\DPath|Reg_MA|var3\(2) & (\DPath|Reg_MA|var4\(2) & !\DPath|Reg_MA|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|var3\(2),
	datab => \DPath|Reg_MA|var4\(2),
	datad => VCC,
	cin => \DPath|Reg_MA|Add1~3\,
	combout => \DPath|Reg_MA|Add1~4_combout\,
	cout => \DPath|Reg_MA|Add1~5\);

-- Location: LCCOMB_X1_Y4_N6
\DPath|Reg_MA|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add1~6_combout\ = (\DPath|Reg_MA|var4\(3) & ((\DPath|Reg_MA|var3\(3) & (\DPath|Reg_MA|Add1~5\ & VCC)) # (!\DPath|Reg_MA|var3\(3) & (!\DPath|Reg_MA|Add1~5\)))) # (!\DPath|Reg_MA|var4\(3) & ((\DPath|Reg_MA|var3\(3) & (!\DPath|Reg_MA|Add1~5\)) 
-- # (!\DPath|Reg_MA|var3\(3) & ((\DPath|Reg_MA|Add1~5\) # (GND)))))
-- \DPath|Reg_MA|Add1~7\ = CARRY((\DPath|Reg_MA|var4\(3) & (!\DPath|Reg_MA|var3\(3) & !\DPath|Reg_MA|Add1~5\)) # (!\DPath|Reg_MA|var4\(3) & ((!\DPath|Reg_MA|Add1~5\) # (!\DPath|Reg_MA|var3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|var4\(3),
	datab => \DPath|Reg_MA|var3\(3),
	datad => VCC,
	cin => \DPath|Reg_MA|Add1~5\,
	combout => \DPath|Reg_MA|Add1~6_combout\,
	cout => \DPath|Reg_MA|Add1~7\);

-- Location: LCCOMB_X1_Y4_N8
\DPath|Reg_MA|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add1~8_combout\ = !\DPath|Reg_MA|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DPath|Reg_MA|Add1~7\,
	combout => \DPath|Reg_MA|Add1~8_combout\);

-- Location: LCFF_X1_Y4_N7
\DPath|Reg_MA|var4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_MA|var3\(3),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var4\(3));

-- Location: LCCOMB_X3_Y4_N10
\Ctrl|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|comb~2_combout\ = ((!\E~combout\(2) & (!\E~combout\(3) & !\DPath|Comparador_instance|LessThan0~2_combout\))) # (!\Ctrl|state.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(2),
	datab => \E~combout\(3),
	datac => \DPath|Comparador_instance|LessThan0~2_combout\,
	datad => \Ctrl|state.s1~regout\,
	combout => \Ctrl|comb~2_combout\);

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

-- Location: LCCOMB_X1_Y4_N18
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

-- Location: LCFF_X1_Y4_N19
\Ctrl|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|state.s1~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.s1~regout\);

-- Location: CLKCTRL_G0
\Ctrl|state.s1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Ctrl|state.s1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Ctrl|state.s1~clkctrl_outclk\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y4_N24
\DPath|Comparador_instance|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_instance|LessThan0~3_combout\ = (!\E~combout\(2) & !\E~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(2),
	datac => \E~combout\(3),
	combout => \DPath|Comparador_instance|LessThan0~3_combout\);

-- Location: LCCOMB_X1_Y4_N28
\DPath|Reg_E|registro[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_E|registro\(3) = (GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & ((\DPath|Reg_E|registro\(3)))) # (!GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & (\E~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(3),
	datab => \DPath|Reg_E|registro\(3),
	datad => \Ctrl|state.s1~clkctrl_outclk\,
	combout => \DPath|Reg_E|registro\(3));

-- Location: LCCOMB_X1_Y4_N22
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

-- Location: LCFF_X1_Y4_N23
\Ctrl|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|state.s0~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.s0~regout\);

-- Location: LCCOMB_X1_Y4_N24
\Ctrl|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr0~0_combout\ = (\Ctrl|state.s1~regout\) # (!\Ctrl|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|state.s1~regout\,
	datad => \Ctrl|state.s0~regout\,
	combout => \Ctrl|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y4_N14
\Ctrl|Fio_Reset_MA\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Fio_Reset_MA~combout\ = (\Ctrl|WideOr0~0_combout\ & ((!\Ctrl|state.s1~regout\))) # (!\Ctrl|WideOr0~0_combout\ & (\Ctrl|Fio_Reset_MA~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|Fio_Reset_MA~combout\,
	datac => \Ctrl|WideOr0~0_combout\,
	datad => \Ctrl|state.s1~regout\,
	combout => \Ctrl|Fio_Reset_MA~combout\);

-- Location: LCFF_X1_Y4_N29
\DPath|Reg_MA|var1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_E|registro\(3),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var1\(3));

-- Location: LCFF_X2_Y4_N11
\DPath|Reg_MA|var2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_MA|var1\(3),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var2\(3));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y4_N30
\DPath|Reg_E|registro[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_E|registro\(2) = (GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & ((\DPath|Reg_E|registro\(2)))) # (!GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & (\E~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E~combout\(2),
	datac => \Ctrl|state.s1~clkctrl_outclk\,
	datad => \DPath|Reg_E|registro\(2),
	combout => \DPath|Reg_E|registro\(2));

-- Location: LCFF_X1_Y4_N31
\DPath|Reg_MA|var1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_E|registro\(2),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var1\(2));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y4_N20
\DPath|Reg_E|registro[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_E|registro\(1) = (GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & (\DPath|Reg_E|registro\(1))) # (!GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & ((\E~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_E|registro\(1),
	datac => \E~combout\(1),
	datad => \Ctrl|state.s1~clkctrl_outclk\,
	combout => \DPath|Reg_E|registro\(1));

-- Location: LCFF_X1_Y4_N21
\DPath|Reg_MA|var1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_E|registro\(1),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var1\(1));

-- Location: LCFF_X2_Y4_N7
\DPath|Reg_MA|var2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_MA|var1\(1),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var2\(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y4_N0
\DPath|Reg_E|registro[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_E|registro\(0) = (GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & (\DPath|Reg_E|registro\(0))) # (!GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & ((\E~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_E|registro\(0),
	datac => \E~combout\(0),
	datad => \Ctrl|state.s1~clkctrl_outclk\,
	combout => \DPath|Reg_E|registro\(0));

-- Location: LCFF_X2_Y4_N1
\DPath|Reg_MA|var1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_E|registro\(0),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var1\(0));

-- Location: LCFF_X2_Y4_N5
\DPath|Reg_MA|var2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_MA|var1\(0),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var2\(0));

-- Location: LCCOMB_X2_Y4_N8
\DPath|Reg_MA|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add0~4_combout\ = ((\DPath|Reg_MA|var2\(2) $ (\DPath|Reg_MA|var1\(2) $ (!\DPath|Reg_MA|Add0~3\)))) # (GND)
-- \DPath|Reg_MA|Add0~5\ = CARRY((\DPath|Reg_MA|var2\(2) & ((\DPath|Reg_MA|var1\(2)) # (!\DPath|Reg_MA|Add0~3\))) # (!\DPath|Reg_MA|var2\(2) & (\DPath|Reg_MA|var1\(2) & !\DPath|Reg_MA|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|var2\(2),
	datab => \DPath|Reg_MA|var1\(2),
	datad => VCC,
	cin => \DPath|Reg_MA|Add0~3\,
	combout => \DPath|Reg_MA|Add0~4_combout\,
	cout => \DPath|Reg_MA|Add0~5\);

-- Location: LCCOMB_X2_Y4_N12
\DPath|Reg_MA|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add0~8_combout\ = !\DPath|Reg_MA|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DPath|Reg_MA|Add0~7\,
	combout => \DPath|Reg_MA|Add0~8_combout\);

-- Location: LCFF_X1_Y4_N27
\DPath|Reg_MA|var3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_MA|var2\(3),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var3\(3));

-- Location: LCFF_X2_Y4_N9
\DPath|Reg_MA|var2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_MA|var1\(2),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var2\(2));

-- Location: LCFF_X1_Y4_N13
\DPath|Reg_MA|var3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_MA|var2\(2),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var3\(2));

-- Location: LCFF_X1_Y4_N5
\DPath|Reg_MA|var4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_MA|var3\(2),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var4\(2));

-- Location: LCCOMB_X1_Y4_N16
\DPath|Reg_MA|var3[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|var3[1]~feeder_combout\ = \DPath|Reg_MA|var2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DPath|Reg_MA|var2\(1),
	combout => \DPath|Reg_MA|var3[1]~feeder_combout\);

-- Location: LCFF_X1_Y4_N17
\DPath|Reg_MA|var3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_MA|var3[1]~feeder_combout\,
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var3\(1));

-- Location: LCFF_X1_Y4_N3
\DPath|Reg_MA|var4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_MA|var3\(1),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var4\(1));

-- Location: LCFF_X1_Y4_N11
\DPath|Reg_MA|var3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_MA|var2\(0),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var3\(0));

-- Location: LCFF_X1_Y4_N1
\DPath|Reg_MA|var4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_MA|var3\(0),
	aclr => \Ctrl|Fio_Reset_MA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_MA|var4\(0));

-- Location: LCCOMB_X1_Y4_N0
\DPath|Reg_MA|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add1~0_combout\ = (\DPath|Reg_MA|var3\(0) & (\DPath|Reg_MA|var4\(0) $ (VCC))) # (!\DPath|Reg_MA|var3\(0) & (\DPath|Reg_MA|var4\(0) & VCC))
-- \DPath|Reg_MA|Add1~1\ = CARRY((\DPath|Reg_MA|var3\(0) & \DPath|Reg_MA|var4\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|var3\(0),
	datab => \DPath|Reg_MA|var4\(0),
	datad => VCC,
	combout => \DPath|Reg_MA|Add1~0_combout\,
	cout => \DPath|Reg_MA|Add1~1\);

-- Location: LCCOMB_X1_Y4_N2
\DPath|Reg_MA|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add1~2_combout\ = (\DPath|Reg_MA|var3\(1) & ((\DPath|Reg_MA|var4\(1) & (\DPath|Reg_MA|Add1~1\ & VCC)) # (!\DPath|Reg_MA|var4\(1) & (!\DPath|Reg_MA|Add1~1\)))) # (!\DPath|Reg_MA|var3\(1) & ((\DPath|Reg_MA|var4\(1) & (!\DPath|Reg_MA|Add1~1\)) 
-- # (!\DPath|Reg_MA|var4\(1) & ((\DPath|Reg_MA|Add1~1\) # (GND)))))
-- \DPath|Reg_MA|Add1~3\ = CARRY((\DPath|Reg_MA|var3\(1) & (!\DPath|Reg_MA|var4\(1) & !\DPath|Reg_MA|Add1~1\)) # (!\DPath|Reg_MA|var3\(1) & ((!\DPath|Reg_MA|Add1~1\) # (!\DPath|Reg_MA|var4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|var3\(1),
	datab => \DPath|Reg_MA|var4\(1),
	datad => VCC,
	cin => \DPath|Reg_MA|Add1~1\,
	combout => \DPath|Reg_MA|Add1~2_combout\,
	cout => \DPath|Reg_MA|Add1~3\);

-- Location: LCCOMB_X2_Y4_N18
\DPath|Reg_MA|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add2~1_cout\ = CARRY((\DPath|Reg_MA|Add0~0_combout\ & \DPath|Reg_MA|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|Add0~0_combout\,
	datab => \DPath|Reg_MA|Add1~0_combout\,
	datad => VCC,
	cout => \DPath|Reg_MA|Add2~1_cout\);

-- Location: LCCOMB_X2_Y4_N20
\DPath|Reg_MA|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add2~3_cout\ = CARRY((\DPath|Reg_MA|Add0~2_combout\ & (!\DPath|Reg_MA|Add1~2_combout\ & !\DPath|Reg_MA|Add2~1_cout\)) # (!\DPath|Reg_MA|Add0~2_combout\ & ((!\DPath|Reg_MA|Add2~1_cout\) # (!\DPath|Reg_MA|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|Add0~2_combout\,
	datab => \DPath|Reg_MA|Add1~2_combout\,
	datad => VCC,
	cin => \DPath|Reg_MA|Add2~1_cout\,
	cout => \DPath|Reg_MA|Add2~3_cout\);

-- Location: LCCOMB_X2_Y4_N22
\DPath|Reg_MA|Add2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add2~5_cout\ = CARRY((\DPath|Reg_MA|Add1~4_combout\ & ((\DPath|Reg_MA|Add0~4_combout\) # (!\DPath|Reg_MA|Add2~3_cout\))) # (!\DPath|Reg_MA|Add1~4_combout\ & (\DPath|Reg_MA|Add0~4_combout\ & !\DPath|Reg_MA|Add2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|Add1~4_combout\,
	datab => \DPath|Reg_MA|Add0~4_combout\,
	datad => VCC,
	cin => \DPath|Reg_MA|Add2~3_cout\,
	cout => \DPath|Reg_MA|Add2~5_cout\);

-- Location: LCCOMB_X2_Y4_N24
\DPath|Reg_MA|Add2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|Add2~7_cout\ = CARRY((\DPath|Reg_MA|Add0~6_combout\ & (!\DPath|Reg_MA|Add1~6_combout\ & !\DPath|Reg_MA|Add2~5_cout\)) # (!\DPath|Reg_MA|Add0~6_combout\ & ((!\DPath|Reg_MA|Add2~5_cout\) # (!\DPath|Reg_MA|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|Add0~6_combout\,
	datab => \DPath|Reg_MA|Add1~6_combout\,
	datad => VCC,
	cin => \DPath|Reg_MA|Add2~5_cout\,
	cout => \DPath|Reg_MA|Add2~7_cout\);

-- Location: LCCOMB_X2_Y4_N26
\DPath|Reg_MA|OUTPUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|OUTPUT[0]~0_combout\ = ((\DPath|Reg_MA|Add1~8_combout\ $ (\DPath|Reg_MA|Add0~8_combout\ $ (!\DPath|Reg_MA|Add2~7_cout\)))) # (GND)
-- \DPath|Reg_MA|OUTPUT[0]~1\ = CARRY((\DPath|Reg_MA|Add1~8_combout\ & ((\DPath|Reg_MA|Add0~8_combout\) # (!\DPath|Reg_MA|Add2~7_cout\))) # (!\DPath|Reg_MA|Add1~8_combout\ & (\DPath|Reg_MA|Add0~8_combout\ & !\DPath|Reg_MA|Add2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_MA|Add1~8_combout\,
	datab => \DPath|Reg_MA|Add0~8_combout\,
	datad => VCC,
	cin => \DPath|Reg_MA|Add2~7_cout\,
	combout => \DPath|Reg_MA|OUTPUT[0]~0_combout\,
	cout => \DPath|Reg_MA|OUTPUT[0]~1\);

-- Location: LCCOMB_X2_Y4_N28
\DPath|Reg_MA|OUTPUT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_MA|OUTPUT[1]~2_combout\ = \DPath|Reg_MA|OUTPUT[0]~1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DPath|Reg_MA|OUTPUT[0]~1\,
	combout => \DPath|Reg_MA|OUTPUT[1]~2_combout\);

-- Location: LCCOMB_X2_Y4_N16
\DPath|Comparador_instance|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_instance|LessThan0~2_combout\ = (\DPath|Reg_MA|OUTPUT[1]~2_combout\ & (\E~combout\(0) & (\E~combout\(1) & !\DPath|Reg_MA|OUTPUT[0]~0_combout\))) # (!\DPath|Reg_MA|OUTPUT[1]~2_combout\ & ((\E~combout\(1)) # ((\E~combout\(0) & 
-- !\DPath|Reg_MA|OUTPUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(0),
	datab => \DPath|Reg_MA|OUTPUT[1]~2_combout\,
	datac => \E~combout\(1),
	datad => \DPath|Reg_MA|OUTPUT[0]~0_combout\,
	combout => \DPath|Comparador_instance|LessThan0~2_combout\);

-- Location: LCCOMB_X2_Y4_N2
\DPath|Comparador_instance|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_instance|LessThan1~0_combout\ = (\E~combout\(1) & (!\E~combout\(0) & (\DPath|Reg_MA|OUTPUT[0]~0_combout\ & \DPath|Reg_MA|OUTPUT[1]~2_combout\))) # (!\E~combout\(1) & ((\DPath|Reg_MA|OUTPUT[1]~2_combout\) # ((!\E~combout\(0) & 
-- \DPath|Reg_MA|OUTPUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(0),
	datab => \DPath|Reg_MA|OUTPUT[0]~0_combout\,
	datac => \E~combout\(1),
	datad => \DPath|Reg_MA|OUTPUT[1]~2_combout\,
	combout => \DPath|Comparador_instance|LessThan1~0_combout\);

-- Location: LCCOMB_X2_Y4_N30
\Ctrl|next_state.s3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|next_state.s3~0_combout\ = (\Ctrl|state.s1~regout\ & (\DPath|Comparador_instance|LessThan0~3_combout\ & (!\DPath|Comparador_instance|LessThan0~2_combout\ & \DPath|Comparador_instance|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.s1~regout\,
	datab => \DPath|Comparador_instance|LessThan0~3_combout\,
	datac => \DPath|Comparador_instance|LessThan0~2_combout\,
	datad => \DPath|Comparador_instance|LessThan1~0_combout\,
	combout => \Ctrl|next_state.s3~0_combout\);

-- Location: LCFF_X2_Y4_N31
\Ctrl|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|next_state.s3~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.s3~regout\);

-- Location: LCCOMB_X2_Y4_N14
\Ctrl|next_state.s4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|next_state.s4~0_combout\ = (\Ctrl|state.s1~regout\ & (\DPath|Comparador_instance|LessThan0~3_combout\ & (!\DPath|Comparador_instance|LessThan0~2_combout\ & !\DPath|Comparador_instance|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.s1~regout\,
	datab => \DPath|Comparador_instance|LessThan0~3_combout\,
	datac => \DPath|Comparador_instance|LessThan0~2_combout\,
	datad => \DPath|Comparador_instance|LessThan1~0_combout\,
	combout => \Ctrl|next_state.s4~0_combout\);

-- Location: LCFF_X2_Y4_N15
\Ctrl|state.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|next_state.s4~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.s4~regout\);

-- Location: LCCOMB_X3_Y4_N12
\Ctrl|Fio_Subindo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Fio_Subindo~0_combout\ = (\Ctrl|state.s3~regout\) # (\Ctrl|state.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.s3~regout\,
	datad => \Ctrl|state.s4~regout\,
	combout => \Ctrl|Fio_Subindo~0_combout\);

-- Location: LCCOMB_X3_Y4_N26
\Ctrl|Fio_Subindo\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Fio_Subindo~combout\ = (GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & (\Ctrl|Fio_Subindo~combout\)) # (!GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & ((!\Ctrl|Fio_Subindo~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|Fio_Subindo~combout\,
	datac => \Ctrl|state.s1~clkctrl_outclk\,
	datad => \Ctrl|Fio_Subindo~0_combout\,
	combout => \Ctrl|Fio_Subindo~combout\);

-- Location: LCCOMB_X3_Y4_N14
\DPath|Subindo|registro[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Subindo|registro\(1) = (GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & (\DPath|Subindo|registro\(1))) # (!GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & ((\Ctrl|Fio_Subindo~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Subindo|registro\(1),
	datac => \Ctrl|state.s1~clkctrl_outclk\,
	datad => \Ctrl|Fio_Subindo~combout\,
	combout => \DPath|Subindo|registro\(1));

-- Location: LCCOMB_X3_Y4_N20
\DPath|Comparador_instance|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_instance|LessThan0~4_combout\ = (\E~combout\(2)) # ((\E~combout\(3)) # (\DPath|Comparador_instance|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(2),
	datab => \E~combout\(3),
	datad => \DPath|Comparador_instance|LessThan0~2_combout\,
	combout => \DPath|Comparador_instance|LessThan0~4_combout\);

-- Location: LCCOMB_X3_Y4_N22
\Ctrl|next_state.s2_160\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|next_state.s2_160~combout\ = (!\Ctrl|comb~2_combout\ & ((\DPath|Comparador_instance|LessThan0~4_combout\) # (\Ctrl|next_state.s2_160~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|comb~2_combout\,
	datac => \DPath|Comparador_instance|LessThan0~4_combout\,
	datad => \Ctrl|next_state.s2_160~combout\,
	combout => \Ctrl|next_state.s2_160~combout\);

-- Location: LCFF_X3_Y4_N19
\Ctrl|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \Ctrl|next_state.s2_160~combout\,
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.s2~regout\);

-- Location: LCCOMB_X3_Y4_N18
\Ctrl|Fio_Descendo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Fio_Descendo~0_combout\ = (\Ctrl|state.s2~regout\) # (\Ctrl|state.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.s2~regout\,
	datad => \Ctrl|state.s4~regout\,
	combout => \Ctrl|Fio_Descendo~0_combout\);

-- Location: LCCOMB_X3_Y4_N28
\Ctrl|Fio_Descendo\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Fio_Descendo~combout\ = (GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & (\Ctrl|Fio_Descendo~combout\)) # (!GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & ((!\Ctrl|Fio_Descendo~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|Fio_Descendo~combout\,
	datac => \Ctrl|state.s1~clkctrl_outclk\,
	datad => \Ctrl|Fio_Descendo~0_combout\,
	combout => \Ctrl|Fio_Descendo~combout\);

-- Location: LCCOMB_X3_Y4_N16
\DPath|Descendo|registro[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Descendo|registro\(1) = (GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & (\DPath|Descendo|registro\(1))) # (!GLOBAL(\Ctrl|state.s1~clkctrl_outclk\) & ((\Ctrl|Fio_Descendo~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Descendo|registro\(1),
	datac => \Ctrl|state.s1~clkctrl_outclk\,
	datad => \Ctrl|Fio_Descendo~combout\,
	combout => \DPath|Descendo|registro\(1));

-- Location: LCCOMB_X1_Y2_N28
\DPath|BCD|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD|Mux1~0_combout\ = (\DPath|Reg_MA|OUTPUT[0]~0_combout\ & !\DPath|Reg_MA|OUTPUT[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_MA|OUTPUT[0]~0_combout\,
	datad => \DPath|Reg_MA|OUTPUT[1]~2_combout\,
	combout => \DPath|BCD|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y2_N26
\DPath|BCD|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD|Mux1~1_combout\ = (!\DPath|Reg_MA|OUTPUT[0]~0_combout\ & \DPath|Reg_MA|OUTPUT[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_MA|OUTPUT[0]~0_combout\,
	datad => \DPath|Reg_MA|OUTPUT[1]~2_combout\,
	combout => \DPath|BCD|Mux1~1_combout\);

-- Location: LCCOMB_X1_Y2_N20
\DPath|BCD|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD|Mux1~2_combout\ = (\DPath|Reg_MA|OUTPUT[0]~0_combout\) # (\DPath|Reg_MA|OUTPUT[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_MA|OUTPUT[0]~0_combout\,
	datad => \DPath|Reg_MA|OUTPUT[1]~2_combout\,
	combout => \DPath|BCD|Mux1~2_combout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \DPath|BCD|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(0));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \DPath|BCD|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(2));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \DPath|BCD|Mux1~0_combout\,
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
	datain => \DPath|Reg_MA|OUTPUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(4));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \DPath|Reg_MA|ALT_INV_OUTPUT[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(6));
END structure;


