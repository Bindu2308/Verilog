`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2024 03:21:35 PM
// Design Name: 
// Module Name: mult_2x2_tb
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


module mult_2x2_tb;
    reg [1:0]a,b;
    wire [3:0]product;
    mult_2x2 OUT(a,b,product);
    always
        begin
            a=2'b00;  b=2'b00;
      #10   a=2'b01;  b=2'b01;
      #10   a=2'b10;  b=2'b10;
      #10   a=2'b11;  b=2'b00;
      $finish;
      end
endmodule
