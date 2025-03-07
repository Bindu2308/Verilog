`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2024 09:32:50 PM
// Design Name: 
// Module Name: binary_bcd_tb
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


module binary_bcd_tb;
    reg  a,b,c,d;
    wire [3:0]y;
binary_bcd out(a,b,c,d,y);
initial
    begin
            d=0;c=0;b=0;a=0; 
       #10  d=0;c=0;b=0;a=1;
       #10  d=0;c=0;b=1;a=0;
       #10  d=0;c=0;b=1;a=1;
       #10  d=0;c=1;b=0;a=0;
       #10  d=0;c=1;b=0;a=1;
       #10  d=0;c=1;b=1;a=0;
       #10  d=0;c=1;b=1;a=1;
       #10  d=1;c=0;b=0;a=0;
       #10  d=1;c=0;b=0;a=1;
       #10  d=1;c=0;b=1;a=0;
       #10  d=1;c=0;b=1;a=1;
       #10  d=1;c=1;b=0;a=0;
       #10  d=1;c=1;b=0;a=1;
       #10  d=1;c=1;b=1;a=0;
       #10  d=1;c=1;b=1;a=1;
       
   $finish;
   end
endmodule
