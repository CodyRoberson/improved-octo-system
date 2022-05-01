// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun May  1 11:55:18 2022
// Host        : fpgamachine running 64-bit Ubuntu 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/cody/Xilinx/2022.1/synthesisTimingAndConstraints/hdl_src/blockdesigns/pegboard/ip/pegboard_reg_0_0/pegboard_reg_0_0_sim_netlist.v
// Design      : pegboard_reg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pegboard_reg_0_0,reg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "reg,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module pegboard_reg_0_0
   (clk,
    reset_n,
    d,
    q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pegboard_clk_0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input [7:0]d;
  output [7:0]q;

  wire clk;
  wire [7:0]d;
  wire [7:0]q;
  wire reset_n;

  pegboard_reg_0_0_reg U0
       (.clk(clk),
        .d(d),
        .q(q),
        .reset_n(reset_n));
endmodule

(* ORIG_REF_NAME = "reg" *) 
module pegboard_reg_0_0_reg
   (q,
    d,
    clk,
    reset_n);
  output [7:0]q;
  input [7:0]d;
  input clk;
  input reset_n;

  wire clk;
  wire [7:0]d;
  wire [7:0]q;
  wire reset_n;
  wire \val[7]_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \val[7]_i_1 
       (.I0(reset_n),
        .O(\val[7]_i_1_n_0 ));
  FDCE \val_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\val[7]_i_1_n_0 ),
        .D(d[0]),
        .Q(q[0]));
  FDCE \val_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\val[7]_i_1_n_0 ),
        .D(d[1]),
        .Q(q[1]));
  FDCE \val_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\val[7]_i_1_n_0 ),
        .D(d[2]),
        .Q(q[2]));
  FDCE \val_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\val[7]_i_1_n_0 ),
        .D(d[3]),
        .Q(q[3]));
  FDCE \val_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\val[7]_i_1_n_0 ),
        .D(d[4]),
        .Q(q[4]));
  FDCE \val_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\val[7]_i_1_n_0 ),
        .D(d[5]),
        .Q(q[5]));
  FDCE \val_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\val[7]_i_1_n_0 ),
        .D(d[6]),
        .Q(q[6]));
  FDCE \val_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\val[7]_i_1_n_0 ),
        .D(d[7]),
        .Q(q[7]));
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
