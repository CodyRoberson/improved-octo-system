--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Sun May  1 12:01:51 2022
--Host        : fpgamachine running 64-bit Ubuntu 22.04 LTS
--Command     : generate_target pegboard.bd
--Design      : pegboard
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pegboard is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of pegboard : entity is "pegboard,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pegboard,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of pegboard : entity is "pegboard.hwdef";
end pegboard;

architecture STRUCTURE of pegboard is
  component pegboard_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component pegboard_reg_0_0;
  component pegboard_adder_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component pegboard_adder_0_0;
  component pegboard_mult_0_1 is
  port (
    a : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b : in STD_LOGIC_VECTOR ( 1 downto 0 );
    y : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component pegboard_mult_0_1;
  signal a_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal a_1_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adder_0_y : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal b_0_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal b_1_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal d_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mult_0_y : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reg_0_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reset_n_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN pegboard_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset_n_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_N_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_n_0 : signal is "XIL_INTERFACENAME RST.RESET_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  a_0_1(7 downto 0) <= a_0(7 downto 0);
  a_1_1(1 downto 0) <= a_1(1 downto 0);
  b_0_1(1 downto 0) <= b_0(1 downto 0);
  b_1_1(7 downto 0) <= b_1(7 downto 0);
  clk_0_1 <= clk_0;
  d_0_1(7 downto 0) <= d_0(7 downto 0);
  q_0(7 downto 0) <= reg_0_q(7 downto 0);
  reset_n_0_1 <= reset_n_0;
  y_0(3 downto 0) <= mult_0_y(3 downto 0);
  y_1(7 downto 0) <= adder_0_y(7 downto 0);
adder_0: component pegboard_adder_0_0
     port map (
      a(7 downto 0) => a_0_1(7 downto 0),
      b(7 downto 0) => b_1_1(7 downto 0),
      y(7 downto 0) => adder_0_y(7 downto 0)
    );
mult_0: component pegboard_mult_0_1
     port map (
      a(1 downto 0) => a_1_1(1 downto 0),
      b(1 downto 0) => b_0_1(1 downto 0),
      y(3 downto 0) => mult_0_y(3 downto 0)
    );
reg_0: component pegboard_reg_0_0
     port map (
      clk => clk_0_1,
      d(7 downto 0) => d_0_1(7 downto 0),
      q(7 downto 0) => reg_0_q(7 downto 0),
      reset_n => reset_n_0_1
    );
end STRUCTURE;
