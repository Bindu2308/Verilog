`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 02:06:10 PM
// Design Name: 
// Module Name: sdown_counter_tb
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


module sdown_counter_tb;
reg c,r;
    wire [2:0] o;
    sdown_counter OUT(cl,r,o);
    initial
        begin
            c=1'b0;
            #10 r=0;
            #10 r=1;
            #10 r=0;
           
        end
endmodule
