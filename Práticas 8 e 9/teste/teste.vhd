-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"
-- CREATED		"Tue Oct 24 15:46:33 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY teste IS 
	PORT
	(
		pin_name1 :  IN  STD_LOGIC;
		pin_name2 :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END teste;

ARCHITECTURE bdf_type OF teste IS 

COMPONENT registrador
GENERIC (W : INTEGER
			);
	PORT(reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;



BEGIN 



b2v_teste : registrador
GENERIC MAP(W => 4
			)
PORT MAP(reset => pin_name1,
		 clock => pin_name2,
		 D => D,
		 Q => q);


END bdf_type;