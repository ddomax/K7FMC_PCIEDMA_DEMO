//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_9f1e_wrapper.bd
//Design : bd_9f1e_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_9f1e_wrapper
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
  input [127:0]SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tready;
  input SLOT_0_AXIS_tvalid;
  input [127:0]SLOT_1_AXIS_tdata;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tready;
  input SLOT_1_AXIS_tvalid;
  input clk;
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
  input resetn;

  wire [127:0]SLOT_0_AXIS_tdata;
  wire SLOT_0_AXIS_tlast;
  wire SLOT_0_AXIS_tready;
  wire SLOT_0_AXIS_tvalid;
  wire [127:0]SLOT_1_AXIS_tdata;
  wire SLOT_1_AXIS_tlast;
  wire SLOT_1_AXIS_tready;
  wire SLOT_1_AXIS_tvalid;
  wire clk;
  wire [0:0]probe0;
  wire [31:0]probe1;
  wire [0:0]probe10;
  wire [31:0]probe11;
  wire [30:0]probe12;
  wire [127:0]probe13;
  wire [0:0]probe14;
  wire [0:0]probe15;
  wire [31:0]probe16;
  wire [127:0]probe17;
  wire [0:0]probe18;
  wire [0:0]probe19;
  wire [31:0]probe2;
  wire [0:0]probe20;
  wire [0:0]probe21;
  wire [0:0]probe22;
  wire [30:0]probe23;
  wire [31:0]probe3;
  wire [1:0]probe4;
  wire [31:0]probe5;
  wire [31:0]probe6;
  wire [0:0]probe7;
  wire [0:0]probe8;
  wire [0:0]probe9;
  wire resetn;

  bd_9f1e bd_9f1e_i
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .SLOT_1_AXIS_tdata(SLOT_1_AXIS_tdata),
        .SLOT_1_AXIS_tlast(SLOT_1_AXIS_tlast),
        .SLOT_1_AXIS_tready(SLOT_1_AXIS_tready),
        .SLOT_1_AXIS_tvalid(SLOT_1_AXIS_tvalid),
        .clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe10(probe10),
        .probe11(probe11),
        .probe12(probe12),
        .probe13(probe13),
        .probe14(probe14),
        .probe15(probe15),
        .probe16(probe16),
        .probe17(probe17),
        .probe18(probe18),
        .probe19(probe19),
        .probe2(probe2),
        .probe20(probe20),
        .probe21(probe21),
        .probe22(probe22),
        .probe23(probe23),
        .probe3(probe3),
        .probe4(probe4),
        .probe5(probe5),
        .probe6(probe6),
        .probe7(probe7),
        .probe8(probe8),
        .probe9(probe9),
        .resetn(resetn));
endmodule
