// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun May  1 12:02:20 2022
// Host        : fpgamachine running 64-bit Ubuntu 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/cody/Xilinx/2022.1/synthesisTimingAndConstraints/hdl_src/blockdesigns/pegboard/ip/pegboard_mult_0_1/pegboard_mult_0_1_stub.v
// Design      : pegboard_mult_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult,Vivado 2022.1" *)
module pegboard_mult_0_1(a, b, y)
/* synthesis syn_black_box black_box_pad_pin="a[1:0],b[1:0],y[3:0]" */;
  input [1:0]a;
  input [1:0]b;
  output [3:0]y;
endmodule
