//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Tue May  7 12:40:36 2019
//Host        : zhatianyics-PC running 64-bit major release  (build 9200)
//Command     : generate_target axi_spi_top_wrapper.bd
//Design      : axi_spi_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi_spi_top_wrapper
   (CS,
    GBT_REFCLK_n,
    GBT_REFCLK_p,
    MISO,
    MOSI,
    diff_clock_rtl_0_clk_n,
    diff_clock_rtl_0_clk_p,
    resetn,
    rx_0_0,
    rx_sync_n,
    rx_sync_p,
    rxn,
    rxp,
    sclk,
    tx_0_0,
    PCI_EXP_TXP,
    PCI_EXP_TXN,
    PCI_EXP_RXP,
    PCI_EXP_RXN,
    
    LED,
    PCIE_REFCLK_P,
    PCIE_REFCLK_N,
    PCIE_RESET_N
    );
  inout [4:0]CS;
  input GBT_REFCLK_n;
  input GBT_REFCLK_p;
  inout MISO;
  inout MOSI;
  input diff_clock_rtl_0_clk_n;
  input diff_clock_rtl_0_clk_p;
  input resetn;
  input rx_0_0;
  output [0:0]rx_sync_n;
  output [0:0]rx_sync_p;
  input [1:0]rxn;
  input [1:0]rxp;
  inout sclk;
  output tx_0_0;
  
// Number of RIFFA Channels
parameter C_NUM_CHNL = 1;
// Number of PCIe Lanes
parameter C_NUM_LANES =  8;
// Settings from Vivado IP Generator
parameter C_PCI_DATA_WIDTH = 128;
parameter C_MAX_PAYLOAD_BYTES = 256;
parameter C_LOG_NUM_TAGS = 5;
output [(C_NUM_LANES - 1) : 0] PCI_EXP_TXP;
output [(C_NUM_LANES - 1) : 0] PCI_EXP_TXN;
input [(C_NUM_LANES - 1) : 0]  PCI_EXP_RXP;
input [(C_NUM_LANES - 1) : 0]  PCI_EXP_RXN;

output [3:0]                   LED;
input                          PCIE_REFCLK_P;
input                          PCIE_REFCLK_N;
input                          PCIE_RESET_N;

  wire [4:0]CS;
  wire GBT_REFCLK_n;
  wire GBT_REFCLK_p;
  wire MISO;
  wire MOSI;
  wire diff_clock_rtl_0_clk_n;
  wire diff_clock_rtl_0_clk_p;
  wire resetn;
  wire rx_0_0;
  wire [0:0]rx_sync_n;
  wire [0:0]rx_sync_p;
  wire [1:0]rxn;
  wire [1:0]rxp;
  wire sclk;
  wire tx_0_0;
  
  wire pcie_refclk;
  wire pcie_reset_n;
  
  wire [127:0]o_data_to_pcie;
  wire riffa_rd_clk;

  axi_spi_top axi_spi_top_i
       (.CS(CS),
        .GBT_REFCLK_n(GBT_REFCLK_n),
        .GBT_REFCLK_p(GBT_REFCLK_p),
        .MISO(MISO),
        .MOSI(MOSI),
        .diff_clock_rtl_0_clk_n(diff_clock_rtl_0_clk_n),
        .diff_clock_rtl_0_clk_p(diff_clock_rtl_0_clk_p),
        .o_data_to_pcie(o_data_to_pcie),
        .resetn(resetn),
        .riffa_rd_clk(riffa_rd_clk),
        .rx_0_0(rx_0_0),
        .rx_sync_n(rx_sync_n),
        .rx_sync_p(rx_sync_p),
        .rxn(rxn),
        .rxp(rxp),
        .sclk(sclk),
        .tx_0_0(tx_0_0));
        
    KC705_Gen2x8If128(
        .PCI_EXP_TXP(PCI_EXP_TXP),
        .PCI_EXP_TXN(PCI_EXP_TXN),
        .PCI_EXP_RXP(PCI_EXP_RXP),
        .PCI_EXP_RXN(PCI_EXP_RXN),
        
        .LED(LED),
        .PCIE_REFCLK(pcie_refclk),
        .PCIE_RESET_N(pcie_reset_n)
        );
        
    IBUF 
        #()  
    pci_reset_n_ibuf 
        (.O(pcie_reset_n), 
         .I(PCIE_RESET_N));
    
    IBUFDS_GTE2 
        #()
    refclk_ibuf 
        (.O(pcie_refclk), 
         .ODIV2(), 
         .I(PCIE_REFCLK_P), 
         .CEB(1'b0), 
         .IB(PCIE_REFCLK_N));
endmodule

