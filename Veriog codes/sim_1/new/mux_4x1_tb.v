`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 03:01:13 PM
// Design Name: 
// Module Name: mux_4x1_tb
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


module mux_4x1_tb;
    reg io,i1,i2,i3,s0,s1;
    wire out;
    mux_4x1 OUT(i0,i1,i2,i3,s0,s1,out);
    initial
        begin
            s0=0;s1=0;
            s0=0;s1=1;
            s0=1;s1=0;
            s0=1;s1=1;
        end
endmodule
