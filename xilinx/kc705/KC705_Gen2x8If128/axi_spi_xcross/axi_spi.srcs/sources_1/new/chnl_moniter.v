`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/19 17:19:09
// Design Name: 
// Module Name: chnl_moniter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module chnl_moniter(
    input FIFO_DATA_CLK,
    input [127:0]FIFO_RX_DATA,
    output [127:0]FIFO_TX_DATA,
    input [31:0] STATUS_rCount,
    input [31:0] STATUS_rLen,
    input [1:0] STATUS_rState
    );
     
    reg [127:0] fifo_tx_data;
    assign FIFO_TX_DATA = fifo_tx_data;
    always @(posedge FIFO_DATA_CLK) begin
        fifo_tx_data <= 127'd1905;
    end
    
endmodule
