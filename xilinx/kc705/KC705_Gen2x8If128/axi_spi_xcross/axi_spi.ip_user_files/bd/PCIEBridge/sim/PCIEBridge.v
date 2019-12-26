//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Thu Dec 19 17:07:57 2019
//Host        : zhatianyics-PC running 64-bit major release  (build 9200)
//Command     : generate_target PCIEBridge.bd
//Design      : PCIEBridge
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "PCIEBridge,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PCIEBridge,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=0,numReposBlks=0,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "PCIEBridge.hwdef" *) 
module PCIEBridge
   (FIFO_DATA_CLK,
    FIFO_RX_DATA,
    FIFO_TX_DATA,
    STATUS_rCount,
    STATUS_rLen,
    STATUS_rState);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FIFO_DATA_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FIFO_DATA_CLK, CLK_DOMAIN PCIEBridge_FIFO_DATA_CLK, FREQ_HZ 250000000, PHASE 0.000" *) input FIFO_DATA_CLK;
  input [127:0]FIFO_RX_DATA;
  input [127:0]FIFO_TX_DATA;
  input STATUS_rCount;
  input STATUS_rLen;
  input STATUS_rState;


endmodule
