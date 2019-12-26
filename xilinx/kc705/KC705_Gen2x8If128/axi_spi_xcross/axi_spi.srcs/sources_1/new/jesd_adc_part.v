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

module jesd_adc_part
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
  
  wire m_axis_aclk;
  
  //M_AXIS Interface
  wire m_axis_tvalid;
  wire m_axis_tready;
  wire [C_PCI_DATA_WIDTH-1:0] m_axis_tdata;
  
  //S_AXIS Interface
  wire s_axis_tvalid;
  wire s_axis_tready;
  wire [C_PCI_DATA_WIDTH-1:0] s_axis_tdata;
  
  //Status Interface
  wire [(C_NUM_CHNL*32)-1:0]         status_rlen; 
  wire [(C_NUM_CHNL*32)-1:0]         status_rcount;
  wire [(C_NUM_CHNL*2)-1:0]          status_rstate;
  
  //Debug Signals
  wire                               rst_out;
  wire [C_NUM_CHNL-1:0]              chnl_rx_clk; 
  wire [C_NUM_CHNL-1:0]              chnl_rx; 
  wire [C_NUM_CHNL-1:0]              chnl_rx_ack; 
  wire [C_NUM_CHNL-1:0]              chnl_rx_last; 
  wire [(C_NUM_CHNL*`SIG_CHNL_LENGTH_W)-1:0] chnl_rx_len; 
  wire [(C_NUM_CHNL*`SIG_CHNL_OFFSET_W)-1:0] chnl_rx_off; 
  wire [(C_NUM_CHNL*C_PCI_DATA_WIDTH)-1:0]   chnl_rx_data; 
  wire [C_NUM_CHNL-1:0]                      chnl_rx_data_valid; 
  wire [C_NUM_CHNL-1:0]                      chnl_rx_data_ren;

  wire [C_NUM_CHNL-1:0]                      chnl_tx_clk; 
  wire [C_NUM_CHNL-1:0]                      chnl_tx; 
  wire [C_NUM_CHNL-1:0]                      chnl_tx_ack;
  wire [C_NUM_CHNL-1:0]                      chnl_tx_last; 
  wire [(C_NUM_CHNL*`SIG_CHNL_LENGTH_W)-1:0] chnl_tx_len; 
  wire [(C_NUM_CHNL*`SIG_CHNL_OFFSET_W)-1:0] chnl_tx_off; 
  wire [(C_NUM_CHNL*C_PCI_DATA_WIDTH)-1:0]   chnl_tx_data; 
  wire [C_NUM_CHNL-1:0]                      chnl_tx_data_valid; 
  wire [C_NUM_CHNL-1:0]                      chnl_tx_data_ren;

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
        
    integer chnl = 0; //!

    KC705_Gen2x8If128    #(// Number of RIFFA Channels
          .C_NUM_CHNL(C_NUM_CHNL),
          // Number of PCIe Lanes
          .C_NUM_LANES(C_NUM_LANES),
          // Settings from Vivado IP Generator
          .C_PCI_DATA_WIDTH(C_PCI_DATA_WIDTH),
          .C_MAX_PAYLOAD_BYTES(C_MAX_PAYLOAD_BYTES),
          .C_LOG_NUM_TAGS(C_LOG_NUM_TAGS)
          ) KC705_Gen2x8If128_riffa_inst0(
        .PCI_EXP_TXP(PCI_EXP_TXP),
        .PCI_EXP_TXN(PCI_EXP_TXN),
        .PCI_EXP_RXP(PCI_EXP_RXP),
        .PCI_EXP_RXN(PCI_EXP_RXN),
        
        .LED(LED),
        .PCIE_REFCLK(pcie_refclk),
        .PCIE_RESET_N(pcie_reset_n),
        
        .m_axis_aclk(m_axis_aclk),
        
        //M_AXIS Interface
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tdata(m_axis_tdata),
        
        //S_AXIS Interface
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        
        //Status Interface
        .STATUS_rLen(status_rlen[32*chnl +:32]),
        .STATUS_rCount(status_rcount[32*chnl +:32]),
        .STATUS_rState(status_rstate[2*chnl +:2]),
        
        .RST(rst_out),    // riffa_reset includes riffa_endpoint resets
        // Rx interface
        .CHNL_RX_CLK(chnl_rx_clk[chnl]), 
        .CHNL_RX(chnl_rx[chnl]), 
        .CHNL_RX_ACK(chnl_rx_ack[chnl]), 
        .CHNL_RX_LAST(chnl_rx_last[chnl]), 
        .CHNL_RX_LEN(chnl_rx_len[32*chnl +:32]), 
        .CHNL_RX_OFF(chnl_rx_off[31*chnl +:31]), 
        .CHNL_RX_DATA(chnl_rx_data[C_PCI_DATA_WIDTH*chnl +:C_PCI_DATA_WIDTH]), 
        .CHNL_RX_DATA_VALID(chnl_rx_data_valid[chnl]), 
        .CHNL_RX_DATA_REN(chnl_rx_data_ren[chnl]),
        // Tx interface
        .CHNL_TX_CLK(chnl_tx_clk[chnl]), 
        .CHNL_TX(chnl_tx[chnl]), 
        .CHNL_TX_ACK(chnl_tx_ack[chnl]), 
        .CHNL_TX_LAST(chnl_tx_last[chnl]), 
        .CHNL_TX_LEN(chnl_tx_len[32*chnl +:32]), 
        .CHNL_TX_OFF(chnl_tx_off[31*chnl +:31]), 
        .CHNL_TX_DATA(chnl_tx_data[C_PCI_DATA_WIDTH*chnl +:C_PCI_DATA_WIDTH]), 
        .CHNL_TX_DATA_VALID(chnl_tx_data_valid[chnl]), 
        .CHNL_TX_DATA_REN(chnl_tx_data_ren[chnl])
        );
        
        
      PCIEBridge PCIEBridge_i
         (.M_AXIS_tdata(s_axis_tdata),
          .M_AXIS_tready(s_axis_tready),
          .M_AXIS_tvalid(s_axis_tvalid),
          .STATUS_rCount(status_rcount),
          .STATUS_rLen(status_rlen),
          .STATUS_rState(status_rstate),
          .S_AXIS_tdata(m_axis_tdata),
          .S_AXIS_tready(m_axis_tready),
          .S_AXIS_tvalid(m_axis_tvalid),
          .aclk(m_axis_aclk),
          .s_axis_aresetn(!rst_out),
          
          .RST(rst_out),    // riffa_reset includes riffa_endpoint resets
          // Rx interface
          .CHNL_RX_CLK(chnl_rx_clk[chnl]), 
          .CHNL_RX(chnl_rx[chnl]), 
          .CHNL_RX_ACK(chnl_rx_ack[chnl]), 
          .CHNL_RX_LAST(chnl_rx_last[chnl]), 
          .CHNL_RX_LEN(chnl_rx_len[32*chnl +:32]), 
          .CHNL_RX_OFF(chnl_rx_off[31*chnl +:31]), 
          .CHNL_RX_DATA(chnl_rx_data[C_PCI_DATA_WIDTH*chnl +:C_PCI_DATA_WIDTH]), 
          .CHNL_RX_DATA_VALID(chnl_rx_data_valid[chnl]), 
          .CHNL_RX_DATA_REN(chnl_rx_data_ren[chnl]),
          // Tx interface
          .CHNL_TX_CLK(chnl_tx_clk[chnl]), 
          .CHNL_TX(chnl_tx[chnl]), 
          .CHNL_TX_ACK(chnl_tx_ack[chnl]), 
          .CHNL_TX_LAST(chnl_tx_last[chnl]), 
          .CHNL_TX_LEN(chnl_tx_len[32*chnl +:32]), 
          .CHNL_TX_OFF(chnl_tx_off[31*chnl +:31]), 
          .CHNL_TX_DATA(chnl_tx_data[C_PCI_DATA_WIDTH*chnl +:C_PCI_DATA_WIDTH]), 
          .CHNL_TX_DATA_VALID(chnl_tx_data_valid[chnl]), 
          .CHNL_TX_DATA_REN(chnl_tx_data_ren[chnl])
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

