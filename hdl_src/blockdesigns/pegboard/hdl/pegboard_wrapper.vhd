--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Mon May  2 09:16:53 2022
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
    a_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_0 : in STD_LOGIC;
    d_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    q_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_n_0 : in STD_LOGIC;
    y_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    y_1 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end pegboard_wrapper;

architecture STRUCTURE of pegboard_wrapper is
  component pegboard is
  port (
    reset_n_0 : in STD_LOGIC;
    a_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    d_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_0 : in STD_LOGIC;
    q_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    y_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    y_0 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component pegboard;
begin
pegboard_i: component pegboard
     port map (
      a_0(7 downto 0) => a_0(7 downto 0),
      a_1(1 downto 0) => a_1(1 downto 0),
      b_0(1 downto 0) => b_0(1 downto 0),
      b_1(7 downto 0) => b_1(7 downto 0),
      clk_0 => clk_0,
      d_0(7 downto 0) => d_0(7 downto 0),
      q_0(7 downto 0) => q_0(7 downto 0),
      reset_n_0 => reset_n_0,
      y_0(3 downto 0) => y_0(3 downto 0),
      y_1(7 downto 0) => y_1(7 downto 0)
    );
end STRUCTURE;
