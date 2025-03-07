`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 06:43:51 PM
// Design Name: 
// Module Name: seq_det
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

module seq_detector(x,clk,reset,z);
input x,clk,reset;
output reg z;
parameters s0=0,s1=1,s2=2,s3=3;
reg [0:1] ps,ns;
always @(ps,x)
case(ps)
s0:begin
z=x?0:0;
ns=x?s0:s1;
end
s1:begin
z=x?0:0;
ns=x?s2:s1;
end
s2:begin
z=x?0:0;
ns=x?s3:s1;
end
s3:begin
z=x?0:1;
ns=x?s0:s1;
end
endcase
endmodule
