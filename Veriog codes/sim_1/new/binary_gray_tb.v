`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2024 10:23:18 PM
// Design Name: 
// Module Name: binary_gray_tb
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


module binary_gray_tb;
    reg  b3,b2,b1,b0;
    wire  g3,g2,g1,g0; 
binary_gray out(g3,g2,g1,g0,b3,b2,b1,b0);
initial
    begin
            b3=0;b2=0;b1=0;b0=0; 
       #10  b3=0;b2=0;b1=0;b0=1;
       #10  b3=0;b2=0;b1=1;b0=0;
       #10  b3=0;b2=0;b1=1;b0=1;
       #10  b3=0;b2=1;b1=0;b0=0;
       #10  b3=0;b2=1;b1=0;b0=1;
       #10  b3=0;b2=1;b1=1;b0=0;
       #10  b3=0;b2=1;b1=1;b0=1;
       #10  b3=1;b2=0;b1=0;b0=0;
       #10  b3=1;b2=0;b1=0;b0=1;
       #10  b3=1;b2=0;b1=1;b0=0;
       #10  b3=1;b2=0;b1=1;b0=1;
       #10  b3=1;b2=1;b1=0;b0=0;
       #10  b3=1;b2=1;b1=0;b0=1;
       #10  b3=1;b2=1;b1=1;b0=0;
       #10  b3=1;b2=1;b1=1;b0=1;
       
   $finish;
   end
endmodule

