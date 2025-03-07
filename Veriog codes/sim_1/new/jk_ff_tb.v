`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 03:36:01 PM
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb;
    reg j,k,clk;
    always #5 clk=~clk;
    jk_ff OUT(j,k,clk,q);
        initial 
            begin
                j<=0;k<=0;
            #10 j<=0;k<=1;
            #10 j<=1;k<=0;
            #10 j<=1;k<=1; 
            #10 $finish;
            end 
endmodule
