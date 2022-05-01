-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sun May  1 12:02:21 2022
-- Host        : fpgamachine running 64-bit Ubuntu 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/cody/Xilinx/2022.1/synthesisTimingAndConstraints/hdl_src/blockdesigns/pegboard/ip/pegboard_mult_0_1/pegboard_mult_0_1_sim_netlist.vhdl
-- Design      : pegboard_mult_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pegboard_mult_0_1_mult is
  port (
    y : out STD_LOGIC_VECTOR ( 0 to 0 );
    b : in STD_LOGIC_VECTOR ( 1 downto 0 );
    a : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pegboard_mult_0_1_mult : entity is "mult";
end pegboard_mult_0_1_mult;

architecture STRUCTURE of pegboard_mult_0_1_mult is
begin
multOp: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => b(0),
      I1 => a(1),
      I2 => b(1),
      I3 => a(0),
      O => y(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pegboard_mult_0_1 is
  port (
    a : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b : in STD_LOGIC_VECTOR ( 1 downto 0 );
    y : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pegboard_mult_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pegboard_mult_0_1 : entity is "pegboard_mult_0_1,mult,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pegboard_mult_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pegboard_mult_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pegboard_mult_0_1 : entity is "mult,Vivado 2022.1";
end pegboard_mult_0_1;

architecture STRUCTURE of pegboard_mult_0_1 is
begin
U0: entity work.pegboard_mult_0_1_mult
     port map (
      a(1 downto 0) => a(1 downto 0),
      b(1 downto 0) => b(1 downto 0),
      y(0) => y(1)
    );
\y[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      O => y(0)
    );
\y[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => b(1),
      I3 => a(1),
      O => y(2)
    );
\y[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => b(1),
      I3 => a(1),
      O => y(3)
    );
end STRUCTURE;
