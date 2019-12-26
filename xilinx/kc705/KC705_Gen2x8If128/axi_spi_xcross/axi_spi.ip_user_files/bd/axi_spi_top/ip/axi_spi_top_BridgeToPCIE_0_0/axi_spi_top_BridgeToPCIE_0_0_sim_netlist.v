// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Dec 11 05:38:43 2019
// Host        : zhatianyics-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/K7_FMC_PCIE/K7FMC_PCIEDMA_DEMO/xilinx/kc705/KC705_Gen2x8If128/axi_spi_xcross/axi_spi.srcs/sources_1/bd/axi_spi_top/ip/axi_spi_top_BridgeToPCIE_0_0/axi_spi_top_BridgeToPCIE_0_0_sim_netlist.v
// Design      : axi_spi_top_BridgeToPCIE_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_spi_top_BridgeToPCIE_0_0,BridgeToPCIE,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "BridgeToPCIE,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module axi_spi_top_BridgeToPCIE_0_0
   (i_data0,
    o_data);
  input [13:0]i_data0;
  output [127:0]o_data;

  wire \<const0> ;
  wire [13:0]i_data0;

  assign o_data[127:114] = i_data0;
  assign o_data[113] = \<const0> ;
  assign o_data[112] = \<const0> ;
  assign o_data[111] = \<const0> ;
  assign o_data[110] = \<const0> ;
  assign o_data[109] = \<const0> ;
  assign o_data[108] = \<const0> ;
  assign o_data[107] = \<const0> ;
  assign o_data[106] = \<const0> ;
  assign o_data[105] = \<const0> ;
  assign o_data[104] = \<const0> ;
  assign o_data[103] = \<const0> ;
  assign o_data[102] = \<const0> ;
  assign o_data[101] = \<const0> ;
  assign o_data[100] = \<const0> ;
  assign o_data[99] = \<const0> ;
  assign o_data[98] = \<const0> ;
  assign o_data[97] = \<const0> ;
  assign o_data[96] = \<const0> ;
  assign o_data[95:82] = i_data0;
  assign o_data[81] = \<const0> ;
  assign o_data[80] = \<const0> ;
  assign o_data[79] = \<const0> ;
  assign o_data[78] = \<const0> ;
  assign o_data[77] = \<const0> ;
  assign o_data[76] = \<const0> ;
  assign o_data[75] = \<const0> ;
  assign o_data[74] = \<const0> ;
  assign o_data[73] = \<const0> ;
  assign o_data[72] = \<const0> ;
  assign o_data[71] = \<const0> ;
  assign o_data[70] = \<const0> ;
  assign o_data[69] = \<const0> ;
  assign o_data[68] = \<const0> ;
  assign o_data[67] = \<const0> ;
  assign o_data[66] = \<const0> ;
  assign o_data[65] = \<const0> ;
  assign o_data[64] = \<const0> ;
  assign o_data[63:50] = i_data0;
  assign o_data[49] = \<const0> ;
  assign o_data[48] = \<const0> ;
  assign o_data[47] = \<const0> ;
  assign o_data[46] = \<const0> ;
  assign o_data[45] = \<const0> ;
  assign o_data[44] = \<const0> ;
  assign o_data[43] = \<const0> ;
  assign o_data[42] = \<const0> ;
  assign o_data[41] = \<const0> ;
  assign o_data[40] = \<const0> ;
  assign o_data[39] = \<const0> ;
  assign o_data[38] = \<const0> ;
  assign o_data[37] = \<const0> ;
  assign o_data[36] = \<const0> ;
  assign o_data[35] = \<const0> ;
  assign o_data[34] = \<const0> ;
  assign o_data[33] = \<const0> ;
  assign o_data[32] = \<const0> ;
  assign o_data[31:18] = i_data0;
  assign o_data[17] = \<const0> ;
  assign o_data[16] = \<const0> ;
  assign o_data[15] = \<const0> ;
  assign o_data[14] = \<const0> ;
  assign o_data[13] = \<const0> ;
  assign o_data[12] = \<const0> ;
  assign o_data[11] = \<const0> ;
  assign o_data[10] = \<const0> ;
  assign o_data[9] = \<const0> ;
  assign o_data[8] = \<const0> ;
  assign o_data[7] = \<const0> ;
  assign o_data[6] = \<const0> ;
  assign o_data[5] = \<const0> ;
  assign o_data[4] = \<const0> ;
  assign o_data[3] = \<const0> ;
  assign o_data[2] = \<const0> ;
  assign o_data[1] = \<const0> ;
  assign o_data[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
