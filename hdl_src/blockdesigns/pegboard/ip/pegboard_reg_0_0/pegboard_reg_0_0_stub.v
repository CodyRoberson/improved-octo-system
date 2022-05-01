// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun May  1 11:55:18 2022
// Host        : fpgamachine running 64-bit Ubuntu 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/cody/Xilinx/2022.1/synthesisTimingAndConstraints/hdl_src/blockdesigns/pegboard/ip/pegboard_reg_0_0/pegboard_reg_0_0_stub.v
// Design      : pegboard_reg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "reg,Vivado 2022.1" *)
module pegboard_reg_0_0(clk, reset_n, d, q)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_n,d[7:0],q[7:0]" */;
  input clk;
  input reset_n;
  input [7:0]d;
  output [7:0]q;
endmodule
