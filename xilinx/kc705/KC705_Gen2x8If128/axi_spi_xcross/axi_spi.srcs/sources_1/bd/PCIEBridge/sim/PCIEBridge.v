//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Mon Dec 23 15:59:53 2019
//Host        : zhatianyics-PC running 64-bit major release  (build 9200)
//Command     : generate_target PCIEBridge.bd
//Design      : PCIEBridge
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "PCIEBridge,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PCIEBridge,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "PCIEBridge.hwdef" *) 
module PCIEBridge
   (CHNL_RX,
    CHNL_RX_ACK,
    CHNL_RX_CLK,
    CHNL_RX_DATA,
    CHNL_RX_DATA_REN,
    CHNL_RX_DATA_VALID,
    CHNL_RX_LAST,
    CHNL_RX_LEN,
    CHNL_RX_OFF,
    CHNL_TX,
    CHNL_TX_ACK,
    CHNL_TX_CLK,
    CHNL_TX_DATA,
    CHNL_TX_DATA_REN,
    CHNL_TX_DATA_VALID,
    CHNL_TX_LAST,
    CHNL_TX_LEN,
    CHNL_TX_OFF,
    M_AXIS_tdata,
    M_AXIS_tready,
    M_AXIS_tvalid,
    RST,
    STATUS_rCount,
    STATUS_rLen,
    STATUS_rState,
    S_AXIS_tdata,
    S_AXIS_tready,
    S_AXIS_tvalid,
    aclk,
    s_axis_aresetn);
  input CHNL_RX;
  input CHNL_RX_ACK;
  input CHNL_RX_CLK;
  input [127:0]CHNL_RX_DATA;
  input CHNL_RX_DATA_REN;
  input CHNL_RX_DATA_VALID;
  input CHNL_RX_LAST;
  input [31:0]CHNL_RX_LEN;
  input [30:0]CHNL_RX_OFF;
  input CHNL_TX;
  input CHNL_TX_ACK;
  input CHNL_TX_CLK;
  input [127:0]CHNL_TX_DATA;
  input CHNL_TX_DATA_REN;
  input CHNL_TX_DATA_VALID;
  input CHNL_TX_LAST;
  input [31:0]CHNL_TX_LEN;
  input [30:0]CHNL_TX_OFF;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, CLK_DOMAIN PCIEBridge_aclk, FREQ_HZ 250000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [127:0]M_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_tvalid;
  input RST;
  input [31:0]STATUS_rCount;
  input [31:0]STATUS_rLen;
  input [1:0]STATUS_rState;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, CLK_DOMAIN PCIEBridge_aclk, FREQ_HZ 250000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [127:0]S_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET s_axis_aresetn, CLK_DOMAIN PCIEBridge_aclk, FREQ_HZ 250000000, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_ARESETN, POLARITY ACTIVE_LOW" *) input s_axis_aresetn;

  wire CHNL_RX_1;
  wire CHNL_RX_ACK_1;
  wire [127:0]CHNL_RX_DATA_1;
  wire CHNL_RX_DATA_REN_1;
  wire CHNL_RX_DATA_VALID_1;
  wire CHNL_RX_LAST_1;
  wire [31:0]CHNL_RX_LEN_1;
  wire [30:0]CHNL_RX_OFF_1;
  wire CHNL_TX_1;
  wire CHNL_TX_ACK_1;
  wire [127:0]CHNL_TX_DATA_1;
  wire CHNL_TX_DATA_REN_1;
  wire CHNL_TX_DATA_VALID_1;
  wire CHNL_TX_LAST_1;
  wire [31:0]CHNL_TX_LEN_1;
  wire [30:0]CHNL_TX_OFF_1;
  wire RST_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]STATUS_rCount_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]STATUS_rLen_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]STATUS_rState_1;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]S_AXIS_1_TDATA;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S_AXIS_1_TREADY;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S_AXIS_1_TVALID;
  wire aclk_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axis_data_count;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]axis_data_fifo_0_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_data_fifo_0_M_AXIS_TREADY;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_data_fifo_0_M_AXIS_TVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axis_rd_data_count;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axis_wr_data_count;
  wire [0:0]rst_aclk_250M_peripheral_aresetn;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire s_axis_aresetn_1;

  assign CHNL_RX_1 = CHNL_RX;
  assign CHNL_RX_ACK_1 = CHNL_RX_ACK;
  assign CHNL_RX_DATA_1 = CHNL_RX_DATA[127:0];
  assign CHNL_RX_DATA_REN_1 = CHNL_RX_DATA_REN;
  assign CHNL_RX_DATA_VALID_1 = CHNL_RX_DATA_VALID;
  assign CHNL_RX_LAST_1 = CHNL_RX_LAST;
  assign CHNL_RX_LEN_1 = CHNL_RX_LEN[31:0];
  assign CHNL_RX_OFF_1 = CHNL_RX_OFF[30:0];
  assign CHNL_TX_1 = CHNL_TX;
  assign CHNL_TX_ACK_1 = CHNL_TX_ACK;
  assign CHNL_TX_DATA_1 = CHNL_TX_DATA[127:0];
  assign CHNL_TX_DATA_REN_1 = CHNL_TX_DATA_REN;
  assign CHNL_TX_DATA_VALID_1 = CHNL_TX_DATA_VALID;
  assign CHNL_TX_LAST_1 = CHNL_TX_LAST;
  assign CHNL_TX_LEN_1 = CHNL_TX_LEN[31:0];
  assign CHNL_TX_OFF_1 = CHNL_TX_OFF[30:0];
  assign M_AXIS_tdata[127:0] = axis_data_fifo_0_M_AXIS_TDATA;
  assign M_AXIS_tvalid = axis_data_fifo_0_M_AXIS_TVALID;
  assign RST_1 = RST;
  assign STATUS_rCount_1 = STATUS_rCount[31:0];
  assign STATUS_rLen_1 = STATUS_rLen[31:0];
  assign STATUS_rState_1 = STATUS_rState[1:0];
  assign S_AXIS_1_TDATA = S_AXIS_tdata[127:0];
  assign S_AXIS_1_TVALID = S_AXIS_tvalid;
  assign S_AXIS_tready = S_AXIS_1_TREADY;
  assign aclk_1 = aclk;
  assign axis_data_fifo_0_M_AXIS_TREADY = M_AXIS_tready;
  assign s_axis_aresetn_1 = s_axis_aresetn;
  PCIEBridge_axis_data_fifo_0_0 axis_data_fifo_0
       (.axis_data_count(axis_data_count),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(aclk_1),
        .s_axis_aresetn(s_axis_aresetn_1),
        .s_axis_tdata(S_AXIS_1_TDATA),
        .s_axis_tready(S_AXIS_1_TREADY),
        .s_axis_tvalid(S_AXIS_1_TVALID));
  PCIEBridge_rst_aclk_250M_2 rst_aclk_250M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(s_axis_aresetn_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_aclk_250M_peripheral_aresetn),
        .slowest_sync_clk(aclk_1));
  PCIEBridge_system_ila_0_3 system_ila_0
       (.SLOT_0_AXIS_tdata(S_AXIS_1_TDATA),
        .SLOT_0_AXIS_tlast(1'b0),
        .SLOT_0_AXIS_tready(S_AXIS_1_TREADY),
        .SLOT_0_AXIS_tvalid(S_AXIS_1_TVALID),
        .SLOT_1_AXIS_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .SLOT_1_AXIS_tlast(1'b0),
        .SLOT_1_AXIS_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .SLOT_1_AXIS_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .clk(aclk_1),
        .probe0(s_axis_aresetn_1),
        .probe1(axis_data_count),
        .probe10(CHNL_RX_LAST_1),
        .probe11(CHNL_RX_LEN_1),
        .probe12(CHNL_RX_OFF_1),
        .probe13(CHNL_RX_DATA_1),
        .probe14(CHNL_RX_DATA_VALID_1),
        .probe15(CHNL_RX_DATA_REN_1),
        .probe16(CHNL_TX_LEN_1),
        .probe17(CHNL_TX_DATA_1),
        .probe18(CHNL_TX_DATA_VALID_1),
        .probe19(CHNL_TX_ACK_1),
        .probe2(axis_wr_data_count),
        .probe20(CHNL_TX_LAST_1),
        .probe21(CHNL_TX_1),
        .probe22(CHNL_TX_DATA_REN_1),
        .probe23(CHNL_TX_OFF_1),
        .probe3(axis_rd_data_count),
        .probe4(STATUS_rState_1),
        .probe5(STATUS_rLen_1),
        .probe6(STATUS_rCount_1),
        .probe7(RST_1),
        .probe8(CHNL_RX_1),
        .probe9(CHNL_RX_ACK_1),
        .resetn(rst_aclk_250M_peripheral_aresetn));
endmodule
