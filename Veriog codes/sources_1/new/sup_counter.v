`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 01:38:30 PM
// Design Name: 
// Module Name: sup_counter
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


module sup_counter(
    input cl,r,
    output reg [2:0]c0
    );
    wire [2:0]nc0;
    assign nc0=(r)?3'b000:(c0==3'b111)?3'b000:c0+1;
    always@(posedge cl)
        begin
            c0<=nc0;
        end
    
endmodule
