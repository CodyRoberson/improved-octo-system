-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sun May  1 12:02:21 2022
-- Host        : fpgamachine running 64-bit Ubuntu 22.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/cody/Xilinx/2022.1/synthesisTimingAndConstraints/hdl_src/blockdesigns/pegboard/ip/pegboard_mult_0_1/pegboard_mult_0_1_stub.vhdl
-- Design      : pegboard_mult_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pegboard_mult_0_1 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b : in STD_LOGIC_VECTOR ( 1 downto 0 );
    y : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end pegboard_mult_0_1;

architecture stub of pegboard_mult_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[1:0],b[1:0],y[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult,Vivado 2022.1";
begin
end;
