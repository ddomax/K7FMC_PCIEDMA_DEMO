//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_9f1e.bd
//Design : bd_9f1e
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_9f1e,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_9f1e,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "PCIEBridge_system_ila_0_3.hwdef" *) 
module bd_9f1e
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tready,
    SLOT_1_AXIS_tvalid,
    clk,
    probe0,
    probe1,
    probe10,
    probe11,
    probe12,
    probe13,
    probe14,
    probe15,
    probe16,
    probe17,
    probe18,
    probe19,
    probe2,
    probe20,
    probe21,
    probe22,
    probe23,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN PCIEBridge_aclk, FREQ_HZ 250000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [127:0]SLOT_0_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST" *) input SLOT_0_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY" *) input SLOT_0_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID" *) input SLOT_0_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN PCIEBridge_aclk, FREQ_HZ 250000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [127:0]SLOT_1_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST" *) input SLOT_1_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY" *) input SLOT_1_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID" *) input SLOT_1_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN PCIEBridge_aclk, FREQ_HZ 250000000, PHASE 0.000" *) input clk;
  input [0:0]probe0;
  input [31:0]probe1;
  input [0:0]probe10;
  input [31:0]probe11;
  input [30:0]probe12;
  input [127:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [31:0]probe16;
  input [127:0]probe17;
  input [0:0]probe18;
  input [0:0]probe19;
  input [31:0]probe2;
  input [0:0]probe20;
  input [0:0]probe21;
  input [0:0]probe22;
  input [30:0]probe23;
  input [31:0]probe3;
  input [1:0]probe4;
  input [31:0]probe5;
  input [31:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, POLARITY ACTIVE_LOW" *) input resetn;

  wire [127:0]Conn1_TDATA;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire [127:0]Conn_TDATA;
  wire Conn_TLAST;
  wire Conn_TREADY;
  wire Conn_TVALID;
  wire clk_1;
  wire [127:0]net_slot_0_axis_tdata;
  wire net_slot_0_axis_tlast;
  wire net_slot_0_axis_tready;
  wire net_slot_0_axis_tvalid;
  wire [127:0]net_slot_1_axis_tdata;
  wire net_slot_1_axis_tlast;
  wire net_slot_1_axis_tready;
  wire net_slot_1_axis_tvalid;
  wire [0:0]probe0_1;
  wire [0:0]probe10_1;
  wire [31:0]probe11_1;
  wire [30:0]probe12_1;
  wire [127:0]probe13_1;
  wire [0:0]probe14_1;
  wire [0:0]probe15_1;
  wire [31:0]probe16_1;
  wire [127:0]probe17_1;
  wire [0:0]probe18_1;
  wire [0:0]probe19_1;
  wire [31:0]probe1_1;
  wire [0:0]probe20_1;
  wire [0:0]probe21_1;
  wire [0:0]probe22_1;
  wire [30:0]probe23_1;
  wire [31:0]probe2_1;
  wire [31:0]probe3_1;
  wire [1:0]probe4_1;
  wire [31:0]probe5_1;
  wire [31:0]probe6_1;
  wire [0:0]probe7_1;
  wire [0:0]probe8_1;
  wire [0:0]probe9_1;
  wire resetn_1;

  assign Conn1_TDATA = SLOT_1_AXIS_tdata[127:0];
  assign Conn1_TLAST = SLOT_1_AXIS_tlast;
  assign Conn1_TREADY = SLOT_1_AXIS_tready;
  assign Conn1_TVALID = SLOT_1_AXIS_tvalid;
  assign Conn_TDATA = SLOT_0_AXIS_tdata[127:0];
  assign Conn_TLAST = SLOT_0_AXIS_tlast;
  assign Conn_TREADY = SLOT_0_AXIS_tready;
  assign Conn_TVALID = SLOT_0_AXIS_tvalid;
  assign clk_1 = clk;
  assign probe0_1 = probe0[0];
  assign probe10_1 = probe10[0];
  assign probe11_1 = probe11[31:0];
  assign probe12_1 = probe12[30:0];
  assign probe13_1 = probe13[127:0];
  assign probe14_1 = probe14[0];
  assign probe15_1 = probe15[0];
  assign probe16_1 = probe16[31:0];
  assign probe17_1 = probe17[127:0];
  assign probe18_1 = probe18[0];
  assign probe19_1 = probe19[0];
  assign probe1_1 = probe1[31:0];
  assign probe20_1 = probe20[0];
  assign probe21_1 = probe21[0];
  assign probe22_1 = probe22[0];
  assign probe23_1 = probe23[30:0];
  assign probe2_1 = probe2[31:0];
  assign probe3_1 = probe3[31:0];
  assign probe4_1 = probe4[1:0];
  assign probe5_1 = probe5[31:0];
  assign probe6_1 = probe6[31:0];
  assign probe7_1 = probe7[0];
  assign probe8_1 = probe8[0];
  assign probe9_1 = probe9[0];
  assign resetn_1 = resetn;
  bd_9f1e_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axis_tdata(net_slot_0_axis_tdata),
        .m_slot_0_axis_tlast(net_slot_0_axis_tlast),
        .m_slot_0_axis_tready(net_slot_0_axis_tready),
        .m_slot_0_axis_tvalid(net_slot_0_axis_tvalid),
        .m_slot_1_axis_tdata(net_slot_1_axis_tdata),
        .m_slot_1_axis_tlast(net_slot_1_axis_tlast),
        .m_slot_1_axis_tready(net_slot_1_axis_tready),
        .m_slot_1_axis_tvalid(net_slot_1_axis_tvalid),
        .slot_0_axis_tdata(Conn_TDATA),
        .slot_0_axis_tlast(Conn_TLAST),
        .slot_0_axis_tready(Conn_TREADY),
        .slot_0_axis_tvalid(Conn_TVALID),
        .slot_1_axis_tdata(Conn1_TDATA),
        .slot_1_axis_tlast(Conn1_TLAST),
        .slot_1_axis_tready(Conn1_TREADY),
        .slot_1_axis_tvalid(Conn1_TVALID));
  bd_9f1e_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe10(probe10_1),
        .probe11(probe11_1),
        .probe12(probe12_1),
        .probe13(probe13_1),
        .probe14(probe14_1),
        .probe15(probe15_1),
        .probe16(probe16_1),
        .probe17(probe17_1),
        .probe18(probe18_1),
        .probe19(probe19_1),
        .probe2(probe2_1),
        .probe20(probe20_1),
        .probe21(probe21_1),
        .probe22(probe22_1),
        .probe23(probe23_1),
        .probe24(net_slot_0_axis_tdata),
        .probe25(net_slot_0_axis_tvalid),
        .probe26(net_slot_0_axis_tready),
        .probe27(net_slot_0_axis_tlast),
        .probe28(net_slot_1_axis_tdata),
        .probe29(net_slot_1_axis_tvalid),
        .probe3(probe3_1),
        .probe30(net_slot_1_axis_tready),
        .probe31(net_slot_1_axis_tlast),
        .probe4(probe4_1),
        .probe5(probe5_1),
        .probe6(probe6_1),
        .probe7(probe7_1),
        .probe8(probe8_1),
        .probe9(probe9_1));
endmodule
