`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 01:55:24 PM
// Design Name: 
// Module Name: sdown_counter
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


module sdown_counter(
    input c,r,
    output reg [2:0]c0
    );
    wire [2:0]nc;
    assign nc=(r)?3'b111:(c0==3'b000)?3'b111:c0-1;
    always@(posedge c)
        begin
            c0<=nc;
        end
            
endmodule
