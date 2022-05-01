// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun May  1 11:55:18 2022
// Host        : fpgamachine running 64-bit Ubuntu 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/cody/Xilinx/2022.1/synthesisTimingAndConstraints/hdl_src/blockdesigns/pegboard/ip/pegboard_adder_0_0/pegboard_adder_0_0_sim_netlist.v
// Design      : pegboard_adder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pegboard_adder_0_0,adder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "adder,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module pegboard_adder_0_0
   (a,
    b,
    y);
  input [7:0]a;
  input [7:0]b;
  output [7:0]y;

  wire [7:0]a;
  wire [7:0]b;
  wire [7:0]y;

  pegboard_adder_0_0_adder U0
       (.a(a),
        .b(b),
        .y(y));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module pegboard_adder_0_0_adder
   (y,
    a,
    b);
  output [7:0]y;
  input [7:0]a;
  input [7:0]b;

  wire [7:0]a;
  wire [7:0]b;
  wire [7:0]y;
  wire \y[0]_INST_0_i_1_n_0 ;
  wire \y[0]_INST_0_i_2_n_0 ;
  wire \y[0]_INST_0_i_3_n_0 ;
  wire \y[0]_INST_0_i_4_n_0 ;
  wire \y[0]_INST_0_n_0 ;
  wire \y[0]_INST_0_n_1 ;
  wire \y[0]_INST_0_n_2 ;
  wire \y[0]_INST_0_n_3 ;
  wire \y[4]_INST_0_i_1_n_0 ;
  wire \y[4]_INST_0_i_2_n_0 ;
  wire \y[4]_INST_0_i_3_n_0 ;
  wire \y[4]_INST_0_i_4_n_0 ;
  wire \y[4]_INST_0_n_1 ;
  wire \y[4]_INST_0_n_2 ;
  wire \y[4]_INST_0_n_3 ;
  wire [3:3]\NLW_y[4]_INST_0_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y[0]_INST_0 
       (.CI(1'b0),
        .CO({\y[0]_INST_0_n_0 ,\y[0]_INST_0_n_1 ,\y[0]_INST_0_n_2 ,\y[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[3:0]),
        .O(y[3:0]),
        .S({\y[0]_INST_0_i_1_n_0 ,\y[0]_INST_0_i_2_n_0 ,\y[0]_INST_0_i_3_n_0 ,\y[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \y[0]_INST_0_i_1 
       (.I0(a[3]),
        .I1(b[3]),
        .O(\y[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[0]_INST_0_i_2 
       (.I0(a[2]),
        .I1(b[2]),
        .O(\y[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[0]_INST_0_i_3 
       (.I0(a[1]),
        .I1(b[1]),
        .O(\y[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[0]_INST_0_i_4 
       (.I0(a[0]),
        .I1(b[0]),
        .O(\y[0]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y[4]_INST_0 
       (.CI(\y[0]_INST_0_n_0 ),
        .CO({\NLW_y[4]_INST_0_CO_UNCONNECTED [3],\y[4]_INST_0_n_1 ,\y[4]_INST_0_n_2 ,\y[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,a[6:4]}),
        .O(y[7:4]),
        .S({\y[4]_INST_0_i_1_n_0 ,\y[4]_INST_0_i_2_n_0 ,\y[4]_INST_0_i_3_n_0 ,\y[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \y[4]_INST_0_i_1 
       (.I0(a[7]),
        .I1(b[7]),
        .O(\y[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[4]_INST_0_i_2 
       (.I0(a[6]),
        .I1(b[6]),
        .O(\y[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[4]_INST_0_i_3 
       (.I0(a[5]),
        .I1(b[5]),
        .O(\y[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[4]_INST_0_i_4 
       (.I0(a[4]),
        .I1(b[4]),
        .O(\y[4]_INST_0_i_4_n_0 ));
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
