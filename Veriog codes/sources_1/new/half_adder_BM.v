`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2024 02:27:36 PM
// Design Name: 
// Module Name: half_adder_BM
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


module half_adder_BM(
input a,b,
output reg sum,carry
    );
    always @(*)
    begin
    sum=a^b;
    carry=a&b; 
    end   
endmodule
