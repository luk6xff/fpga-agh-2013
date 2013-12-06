-- WARNING: Do NOT edit the input and output ports in this file in a text
-- editor if you plan to continue editing the block that represents it in
-- the Block Editor! File corruption is VERY likely to occur.

-- Copyright (C) 1991-2010 Altera Corporation
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


-- Generated by Quartus II Version 9.1 (Build Build 304 01/25/2010)
-- Created on Fri Nov 29 10:44:32 2013

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

--  Entity Declaration

ENTITY dekoder IS
-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
PORT
(
  Q_licz : IN STD_LOGIC_VECTOR(3 downto 0);
  HEX0 : OUT STD_LOGIC_VECTOR(6 downto 0)
);
-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!

END dekoder;


--  Architecture Body

ARCHITECTURE dekoder_architecture OF dekoder IS


BEGIN
dekoder:
PROCESS (Q_licz)

BEGIN
IF Q_licz="0000" THEN
HEX0<="1000000";
ELSE IF Q_licz="0001" THEN
HEX0<="1111001";
ELSE IF Q_licz="0010" THEN
HEX0<="0100100";
ELSE IF Q_licz="0011" THEN
HEX0<="0110000";
ELSE IF Q_licz="0100" THEN
HEX0<="0011001";  
ELSE IF Q_licz="0101" THEN
HEX0<="0010010";
ELSE IF Q_licz="0110" THEN
HEX0<="0000010";
ELSE IF Q_licz="0111" THEN
HEX0<="1111000";
ELSE IF Q_licz="1000" THEN
HEX0<="0000000";
ELSE IF Q_licz="1001" THEN
HEX0<="0010000";
ELSE HEX0<="1111111";
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;

END PROCESS;

END dekoder_architecture;