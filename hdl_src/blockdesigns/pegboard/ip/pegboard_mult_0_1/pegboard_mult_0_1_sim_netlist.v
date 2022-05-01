// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun May  1 12:02:21 2022
// Host        : fpgamachine running 64-bit Ubuntu 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/cody/Xilinx/2022.1/synthesisTimingAndConstraints/hdl_src/blockdesigns/pegboard/ip/pegboard_mult_0_1/pegboard_mult_0_1_sim_netlist.v
// Design      : pegboard_mult_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pegboard_mult_0_1,mult,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mult,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module pegboard_mult_0_1
   (a,
    b,
    y);
  input [1:0]a;
  input [1:0]b;
  output [3:0]y;

  wire [1:0]a;
  wire [1:0]b;
  wire [3:0]y;

  pegboard_mult_0_1_mult U0
       (.a(a),
        .b(b),
        .y(y[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \y[0]_INST_0 
       (.I0(a[0]),
        .I1(b[0]),
        .O(y[0]));
  LUT4 #(
    .INIT(16'h7000)) 
    \y[2]_INST_0 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(b[1]),
        .I3(a[1]),
        .O(y[2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \y[3]_INST_0 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(b[1]),
        .I3(a[1]),
        .O(y[3]));
endmodule

(* ORIG_REF_NAME = "mult" *) 
module pegboard_mult_0_1_mult
   (y,
    b,
    a);
  output [0:0]y;
  input [1:0]b;
  input [1:0]a;

  wire [1:0]a;
  wire [1:0]b;
  wire [0:0]y;

  LUT4 #(
    .INIT(16'h7888)) 
    multOp
       (.I0(b[0]),
        .I1(a[1]),
        .I2(b[1]),
        .I3(a[0]),
        .O(y));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
