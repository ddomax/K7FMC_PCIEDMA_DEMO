// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:data_rearrange:1.0
// IP Revision: 1

(* X_CORE_INFO = "data_rearrange,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "axi_spi_top_data_rearrange_0_0,data_rearrange,{}" *)
(* CORE_GENERATION_INFO = "axi_spi_top_data_rearrange_0_0,data_rearrange,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=data_rearrange,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module axi_spi_top_data_rearrange_0_0 (
  rx_tdata,
  rx_core_clk,
  rx_tvalid,
  adc0_sample0,
  adc0_sample1,
  adc1_sample0,
  adc1_sample1
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx TDATA" *)
input wire [63 : 0] rx_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_core_clk, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN axi_spi_top_jesd204_0_0_rx_core_clk_out" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_core_clk CLK" *)
input wire rx_core_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx TVALID" *)
input wire rx_tvalid;
output wire [13 : 0] adc0_sample0;
output wire [13 : 0] adc0_sample1;
output wire [13 : 0] adc1_sample0;
output wire [13 : 0] adc1_sample1;

  data_rearrange inst (
    .rx_tdata(rx_tdata),
    .rx_core_clk(rx_core_clk),
    .rx_tvalid(rx_tvalid),
    .adc0_sample0(adc0_sample0),
    .adc0_sample1(adc0_sample1),
    .adc1_sample0(adc1_sample0),
    .adc1_sample1(adc1_sample1)
  );
endmodule