// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Dec 23 16:04:53 2019
// Host        : zhatianyics-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/K7_FMC_PCIE/K7FMC_PCIEDMA_DEMO/xilinx/kc705/KC705_Gen2x8If128/axi_spi_xcross/axi_spi.srcs/sources_1/bd/PCIEBridge/ip/PCIEBridge_system_ila_0_3/PCIEBridge_system_ila_0_3_stub.v
// Design      : PCIEBridge_system_ila_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_9f1e,Vivado 2018.1" *)
module PCIEBridge_system_ila_0_3(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18, probe19, probe20, probe21, probe22, probe23, SLOT_0_AXIS_tdata, SLOT_0_AXIS_tlast, 
  SLOT_0_AXIS_tvalid, SLOT_0_AXIS_tready, SLOT_1_AXIS_tdata, SLOT_1_AXIS_tlast, 
  SLOT_1_AXIS_tvalid, SLOT_1_AXIS_tready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[31:0],probe2[31:0],probe3[31:0],probe4[1:0],probe5[31:0],probe6[31:0],probe7[0:0],probe8[0:0],probe9[0:0],probe10[0:0],probe11[31:0],probe12[30:0],probe13[127:0],probe14[0:0],probe15[0:0],probe16[31:0],probe17[127:0],probe18[0:0],probe19[0:0],probe20[0:0],probe21[0:0],probe22[0:0],probe23[30:0],SLOT_0_AXIS_tdata[127:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,SLOT_1_AXIS_tdata[127:0],SLOT_1_AXIS_tlast,SLOT_1_AXIS_tvalid,SLOT_1_AXIS_tready,resetn" */;
  input clk;
  input [0:0]probe0;
  input [31:0]probe1;
  input [31:0]probe2;
  input [31:0]probe3;
  input [1:0]probe4;
  input [31:0]probe5;
  input [31:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
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
  input [0:0]probe20;
  input [0:0]probe21;
  input [0:0]probe22;
  input [30:0]probe23;
  input [127:0]SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tvalid;
  input SLOT_0_AXIS_tready;
  input [127:0]SLOT_1_AXIS_tdata;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tvalid;
  input SLOT_1_AXIS_tready;
  input resetn;
endmodule
