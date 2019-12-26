//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Mon Dec 23 15:59:53 2019
//Host        : zhatianyics-PC running 64-bit major release  (build 9200)
//Command     : generate_target PCIEBridge_wrapper.bd
//Design      : PCIEBridge_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PCIEBridge_wrapper
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
  output [127:0]M_AXIS_tdata;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input RST;
  input [31:0]STATUS_rCount;
  input [31:0]STATUS_rLen;
  input [1:0]STATUS_rState;
  input [127:0]S_AXIS_tdata;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input aclk;
  input s_axis_aresetn;

  wire CHNL_RX;
  wire CHNL_RX_ACK;
  wire CHNL_RX_CLK;
  wire [127:0]CHNL_RX_DATA;
  wire CHNL_RX_DATA_REN;
  wire CHNL_RX_DATA_VALID;
  wire CHNL_RX_LAST;
  wire [31:0]CHNL_RX_LEN;
  wire [30:0]CHNL_RX_OFF;
  wire CHNL_TX;
  wire CHNL_TX_ACK;
  wire CHNL_TX_CLK;
  wire [127:0]CHNL_TX_DATA;
  wire CHNL_TX_DATA_REN;
  wire CHNL_TX_DATA_VALID;
  wire CHNL_TX_LAST;
  wire [31:0]CHNL_TX_LEN;
  wire [30:0]CHNL_TX_OFF;
  wire [127:0]M_AXIS_tdata;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire RST;
  wire [31:0]STATUS_rCount;
  wire [31:0]STATUS_rLen;
  wire [1:0]STATUS_rState;
  wire [127:0]S_AXIS_tdata;
  wire S_AXIS_tready;
  wire S_AXIS_tvalid;
  wire aclk;
  wire s_axis_aresetn;

  PCIEBridge PCIEBridge_i
       (.CHNL_RX(CHNL_RX),
        .CHNL_RX_ACK(CHNL_RX_ACK),
        .CHNL_RX_CLK(CHNL_RX_CLK),
        .CHNL_RX_DATA(CHNL_RX_DATA),
        .CHNL_RX_DATA_REN(CHNL_RX_DATA_REN),
        .CHNL_RX_DATA_VALID(CHNL_RX_DATA_VALID),
        .CHNL_RX_LAST(CHNL_RX_LAST),
        .CHNL_RX_LEN(CHNL_RX_LEN),
        .CHNL_RX_OFF(CHNL_RX_OFF),
        .CHNL_TX(CHNL_TX),
        .CHNL_TX_ACK(CHNL_TX_ACK),
        .CHNL_TX_CLK(CHNL_TX_CLK),
        .CHNL_TX_DATA(CHNL_TX_DATA),
        .CHNL_TX_DATA_REN(CHNL_TX_DATA_REN),
        .CHNL_TX_DATA_VALID(CHNL_TX_DATA_VALID),
        .CHNL_TX_LAST(CHNL_TX_LAST),
        .CHNL_TX_LEN(CHNL_TX_LEN),
        .CHNL_TX_OFF(CHNL_TX_OFF),
        .M_AXIS_tdata(M_AXIS_tdata),
        .M_AXIS_tready(M_AXIS_tready),
        .M_AXIS_tvalid(M_AXIS_tvalid),
        .RST(RST),
        .STATUS_rCount(STATUS_rCount),
        .STATUS_rLen(STATUS_rLen),
        .STATUS_rState(STATUS_rState),
        .S_AXIS_tdata(S_AXIS_tdata),
        .S_AXIS_tready(S_AXIS_tready),
        .S_AXIS_tvalid(S_AXIS_tvalid),
        .aclk(aclk),
        .s_axis_aresetn(s_axis_aresetn));
endmodule
