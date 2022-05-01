-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sun May  1 11:55:18 2022
-- Host        : fpgamachine running 64-bit Ubuntu 22.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/cody/Xilinx/2022.1/synthesisTimingAndConstraints/hdl_src/blockdesigns/pegboard/ip/pegboard_adder_0_0/pegboard_adder_0_0_stub.vhdl
-- Design      : pegboard_adder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pegboard_adder_0_0 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end pegboard_adder_0_0;

architecture stub of pegboard_adder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[7:0],b[7:0],y[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "adder,Vivado 2022.1";
begin
end;
