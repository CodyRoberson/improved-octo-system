-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sun May  1 11:55:18 2022
-- Host        : fpgamachine running 64-bit Ubuntu 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/cody/Xilinx/2022.1/synthesisTimingAndConstraints/hdl_src/blockdesigns/pegboard/ip/pegboard_reg_0_0/pegboard_reg_0_0_sim_netlist.vhdl
-- Design      : pegboard_reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pegboard_reg_0_0_reg is
  port (
    q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pegboard_reg_0_0_reg : entity is "reg";
end pegboard_reg_0_0_reg;

architecture STRUCTURE of pegboard_reg_0_0_reg is
  signal \val[7]_i_1_n_0\ : STD_LOGIC;
begin
\val[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \val[7]_i_1_n_0\
    );
\val_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \val[7]_i_1_n_0\,
      D => d(0),
      Q => q(0)
    );
\val_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \val[7]_i_1_n_0\,
      D => d(1),
      Q => q(1)
    );
\val_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \val[7]_i_1_n_0\,
      D => d(2),
      Q => q(2)
    );
\val_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \val[7]_i_1_n_0\,
      D => d(3),
      Q => q(3)
    );
\val_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \val[7]_i_1_n_0\,
      D => d(4),
      Q => q(4)
    );
\val_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \val[7]_i_1_n_0\,
      D => d(5),
      Q => q(5)
    );
\val_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \val[7]_i_1_n_0\,
      D => d(6),
      Q => q(6)
    );
\val_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \val[7]_i_1_n_0\,
      D => d(7),
      Q => q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pegboard_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pegboard_reg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pegboard_reg_0_0 : entity is "pegboard_reg_0_0,reg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pegboard_reg_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pegboard_reg_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pegboard_reg_0_0 : entity is "reg,Vivado 2022.1";
end pegboard_reg_0_0;

architecture STRUCTURE of pegboard_reg_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pegboard_clk_0, INSERT_VIP 0";
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.pegboard_reg_0_0_reg
     port map (
      clk => clk,
      d(7 downto 0) => d(7 downto 0),
      q(7 downto 0) => q(7 downto 0),
      reset_n => reset_n
    );
end STRUCTURE;
