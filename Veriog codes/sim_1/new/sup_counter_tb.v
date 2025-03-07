`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 01:43:43 PM
// Design Name: 
// Module Name: sup_counter_tb
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


module sup_counter_tb;
    reg cl,r;
    wire [3:0] o;
    sup_counter OUT(cl,r,o);
    initial
        begin
            cl=1'b0;
            #10 r=0;
            #10 r=1;
            #10 r=0;
           
        end
endmodule
