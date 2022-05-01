-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sun May  1 11:55:18 2022
-- Host        : fpgamachine running 64-bit Ubuntu 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/cody/Xilinx/2022.1/synthesisTimingAndConstraints/hdl_src/blockdesigns/pegboard/ip/pegboard_adder_0_0/pegboard_adder_0_0_sim_netlist.vhdl
-- Design      : pegboard_adder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pegboard_adder_0_0_adder is
  port (
    y : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pegboard_adder_0_0_adder : entity is "adder";
end pegboard_adder_0_0_adder;

architecture STRUCTURE of pegboard_adder_0_0_adder is
  signal \y[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_n_1\ : STD_LOGIC;
  signal \y[0]_INST_0_n_2\ : STD_LOGIC;
  signal \y[0]_INST_0_n_3\ : STD_LOGIC;
  signal \y[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \y[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \y[4]_INST_0_n_1\ : STD_LOGIC;
  signal \y[4]_INST_0_n_2\ : STD_LOGIC;
  signal \y[4]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_y[4]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \y[0]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \y[4]_INST_0\ : label is 35;
begin
\y[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y[0]_INST_0_n_0\,
      CO(2) => \y[0]_INST_0_n_1\,
      CO(1) => \y[0]_INST_0_n_2\,
      CO(0) => \y[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(3 downto 0),
      O(3 downto 0) => y(3 downto 0),
      S(3) => \y[0]_INST_0_i_1_n_0\,
      S(2) => \y[0]_INST_0_i_2_n_0\,
      S(1) => \y[0]_INST_0_i_3_n_0\,
      S(0) => \y[0]_INST_0_i_4_n_0\
    );
\y[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      O => \y[0]_INST_0_i_1_n_0\
    );
\y[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      O => \y[0]_INST_0_i_2_n_0\
    );
\y[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      O => \y[0]_INST_0_i_3_n_0\
    );
\y[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      O => \y[0]_INST_0_i_4_n_0\
    );
\y[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y[0]_INST_0_n_0\,
      CO(3) => \NLW_y[4]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \y[4]_INST_0_n_1\,
      CO(1) => \y[4]_INST_0_n_2\,
      CO(0) => \y[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => a(6 downto 4),
      O(3 downto 0) => y(7 downto 4),
      S(3) => \y[4]_INST_0_i_1_n_0\,
      S(2) => \y[4]_INST_0_i_2_n_0\,
      S(1) => \y[4]_INST_0_i_3_n_0\,
      S(0) => \y[4]_INST_0_i_4_n_0\
    );
\y[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(7),
      I1 => b(7),
      O => \y[4]_INST_0_i_1_n_0\
    );
\y[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      O => \y[4]_INST_0_i_2_n_0\
    );
\y[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(5),
      I1 => b(5),
      O => \y[4]_INST_0_i_3_n_0\
    );
\y[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(4),
      I1 => b(4),
      O => \y[4]_INST_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pegboard_adder_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pegboard_adder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pegboard_adder_0_0 : entity is "pegboard_adder_0_0,adder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pegboard_adder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pegboard_adder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pegboard_adder_0_0 : entity is "adder,Vivado 2022.1";
end pegboard_adder_0_0;

architecture STRUCTURE of pegboard_adder_0_0 is
begin
U0: entity work.pegboard_adder_0_0_adder
     port map (
      a(7 downto 0) => a(7 downto 0),
      b(7 downto 0) => b(7 downto 0),
      y(7 downto 0) => y(7 downto 0)
    );
end STRUCTURE;
