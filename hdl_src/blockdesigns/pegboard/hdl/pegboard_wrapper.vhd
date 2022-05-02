--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Mon May  2 11:55:43 2022
--Host        : fpgamachine running 64-bit Ubuntu 22.04 LTS
--Command     : generate_target pegboard_wrapper.bd
--Design      : pegboard_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pegboard_wrapper is
  port (
    pcode_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    r_0 : in STD_LOGIC_VECTOR ( 4 downto 1 )
  );
end pegboard_wrapper;

architecture STRUCTURE of pegboard_wrapper is
  component pegboard is
  port (
    r_0 : in STD_LOGIC_VECTOR ( 4 downto 1 );
    pcode_0 : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component pegboard;
begin
pegboard_i: component pegboard
     port map (
      pcode_0(2 downto 0) => pcode_0(2 downto 0),
      r_0(4 downto 1) => r_0(4 downto 1)
    );
end STRUCTURE;
