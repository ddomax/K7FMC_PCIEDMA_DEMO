// ----------------------------------------------------------------------
// Copyright (c) 2016, The Regents of the University of California All
// rights reserved.
// 
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
// 
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
// 
//     * Redistributions in binary form must reproduce the above
//       copyright notice, this list of conditions and the following
//       disclaimer in the documentation and/or other materials provided
//       with the distribution.
// 
//     * Neither the name of The Regents of the University of California
//       nor the names of its contributors may be used to endorse or
//       promote products derived from this software without specific
//       prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL REGENTS OF THE
// UNIVERSITY OF CALIFORNIA BE LIABLE FOR ANY DIRECT, INDIRECT,
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
// BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
// OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
// TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
// USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
// DAMAGE.
// ----------------------------------------------------------------------
//----------------------------------------------------------------------------
// Filename:			chnl_tester.v
// Version:				1.00.a
// Verilog Standard:	Verilog-2001
// Description:			Sample RIFFA channel user module. Designed to exercise
// 						the RIFFA TX and RX interfaces. Receives data on the
//						RX interface and saves the last value received. Sends
//						the same amount of data back on the TX interface. The
//						returned data starts with the last value received, 
//						resets and increments to end with a value equal to the
//						number of (4 byte) words sent back on the TX interface.
// Author:				Matt Jacobsen
// History:				@mattj: Version 2.0
//-----------------------------------------------------------------------------
`timescale 1ns/1ns
`define DIRECT_TX_MODE 1
module chnl_tester #(
	parameter C_PCI_DATA_WIDTH = 9'd32
)
(
	input CLK,
	input RST,
	output CHNL_RX_CLK, 
	input CHNL_RX, 
	output CHNL_RX_ACK, 
	input CHNL_RX_LAST, 
	input [31:0] CHNL_RX_LEN, 
	input [30:0] CHNL_RX_OFF, 
	input [C_PCI_DATA_WIDTH-1:0] CHNL_RX_DATA, 
	input CHNL_RX_DATA_VALID, 
	output CHNL_RX_DATA_REN,
	
	output CHNL_TX_CLK, 
	output CHNL_TX, 
	input CHNL_TX_ACK, 
	output CHNL_TX_LAST, 
	output [31:0] CHNL_TX_LEN, 
	output [30:0] CHNL_TX_OFF, 
	output [C_PCI_DATA_WIDTH-1:0] CHNL_TX_DATA, 
	output CHNL_TX_DATA_VALID, 
	input CHNL_TX_DATA_REN,
	
	output m_axis_aclk,
	
	//M_AXIS Interface
	output m_axis_tvalid,
	input m_axis_tready,
	output [C_PCI_DATA_WIDTH-1:0] m_axis_tdata,
	
	//S_AXIS Interface
	input s_axis_tvalid,
	output s_axis_tready,
	input [C_PCI_DATA_WIDTH-1:0] s_axis_tdata,
	
	//Status Interface
	output [31:0] STATUS_rLen,
    output [31:0] STATUS_rCount,
    output [1:0] STATUS_rState
	
);

reg [C_PCI_DATA_WIDTH-1:0] rData={C_PCI_DATA_WIDTH{1'b0}};
reg [C_PCI_DATA_WIDTH-1:0] tData={C_PCI_DATA_WIDTH{1'b0}};
reg [31:0] rLen=0;
reg [31:0] rCount=0;
reg [31:0] rSuccessCnt=0;
reg [31:0] tSuccessCnt=0;
reg [1:0] rState=0;
reg tReady = 0;
reg rValid = 0;
reg chnlTxValid = 0;

assign m_axis_tvalid = rValid;
assign m_axis_tdata = rData;

`ifndef DIRECT_TX_MODE
assign s_axis_tready = tReady;
`else
assign s_axis_tready = CHNL_TX_DATA_REN;
`endif

assign STATUS_rLen = rLen;
assign STATUS_rCount = tSuccessCnt;  //rCount
assign STATUS_rState = rState;

assign CHNL_RX_CLK = CLK;
assign CHNL_RX_ACK = (rState == 2'd1);
assign CHNL_RX_DATA_REN = (rState == 2'd1);

assign CHNL_TX_CLK = CLK;
assign CHNL_TX = (rState == 2'd3);
assign CHNL_TX_LAST = 1'd1;
assign CHNL_TX_LEN = rLen; // in words
assign CHNL_TX_OFF = 0;
`ifndef DIRECT_TX_MODE
assign CHNL_TX_DATA = tData;
assign CHNL_TX_DATA_VALID = chnlTxValid;
`else
assign CHNL_TX_DATA = s_axis_tdata;
assign CHNL_TX_DATA_VALID = s_axis_tvalid;
`endif


assign m_axis_aclk = CLK;

always @(posedge CLK or posedge RST) begin
	if (RST) begin
		rLen <=  0;
		rCount <=  0;
		rState <=  0;
		rData <=  0;
		rValid <=  0;
		rSuccessCnt <=  0;
		tSuccessCnt <=  0;
		chnlTxValid <=  0;
	end
	else begin
		case (rState)
		
		2'd0: begin // Wait for start of RX, save length
			if (CHNL_RX) begin
				rLen <=  CHNL_RX_LEN;
				rCount <=  0;
				rSuccessCnt <=  0;
				rState <=  2'd1;
			end
		end
		
		2'd1: begin // Wait for last data in RX, save value
			if (CHNL_RX_DATA_VALID) 
                begin
                    rData <=  CHNL_RX_DATA;
                    rValid <=  1'b1;
                    rCount <=  rCount + (C_PCI_DATA_WIDTH/32);
                    if(m_axis_tready)
                        rSuccessCnt <= rSuccessCnt + (C_PCI_DATA_WIDTH/32);
                end
			else
                rValid <=  1'b0;
			if (rCount >= rLen)
				rState <=  2'd2;
		end

		2'd2: begin // Prepare for TX
			rCount <=  (C_PCI_DATA_WIDTH/32);
			tSuccessCnt <=  0;
			rState <=  2'd3;
		end
`ifndef DIRECT_TX_MODE
		2'd3: begin // Start TX with save length and data value
            if (CHNL_TX_DATA_REN) begin
                tReady <=  1'b1;
                if(s_axis_tvalid) begin
                    tData <= s_axis_tdata;
                    chnlTxValid <= 1'b1;
                    tSuccessCnt = tSuccessCnt + (C_PCI_DATA_WIDTH/32);
                end
                else begin
                    chnlTxValid <= 1'b0;
                end
                rCount <=  rCount + (C_PCI_DATA_WIDTH/32);
                if (tSuccessCnt >= (rLen + 1)) begin
                    rState <=  2'd0;
                    tReady <= 1'b0;
                    chnlTxValid <= 1'b0;
                end
            end
            else begin
                tReady <=  1'b0;
                chnlTxValid <= 1'b0;
            end
        end
`else
		2'd3: begin // Start TX with save length and data value
            if (CHNL_TX_DATA_REN) begin
                tSuccessCnt = tSuccessCnt + (C_PCI_DATA_WIDTH/32);
                if (tSuccessCnt >= (rLen + 10*(C_PCI_DATA_WIDTH/32))) begin
                    rState <=  2'd0;
                    tReady <= 1'b0;
                end
            end
        end
`endif		 

		endcase
	end
end

/*
wire [35:0] wControl0;
chipscope_icon_1 cs_icon(
	.CONTROL0(wControl0)
);

chipscope_ila_t8_512 a0(
	.CLK(CLK), 
	.CONTROL(wControl0), 
	.TRIG0({3'd0, (rCount >= 800), CHNL_RX, CHNL_RX_DATA_VALID, rState}),
	.DATA({442'd0,
			CHNL_TX_DATA_REN, // 1
			CHNL_TX_ACK, // 1
			CHNL_RX_DATA, // 64
			CHNL_RX_DATA_VALID, // 1
			CHNL_RX, // 1
			rState}) // 2
);
*/

endmodule
