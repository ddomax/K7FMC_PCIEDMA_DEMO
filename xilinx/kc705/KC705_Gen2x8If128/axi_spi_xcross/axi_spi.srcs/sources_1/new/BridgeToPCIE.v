`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/11 05:13:37
// Design Name: 
// Module Name: BridgeToPCIE
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


module BridgeToPCIE#(
    parameter I_WIDTH = 14,
    parameter O_WIDTH = 128
    )(
    input [I_WIDTH-1:0]     i_data0,
    output [O_WIDTH-1:0]    o_data

    );
    wire    [31:0]  datapack;
    assign  datapack    =   {i_data0,18'd0};
    assign  o_data   =   {4{datapack}};

endmodule
