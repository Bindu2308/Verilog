`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2024 03:11:07 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
reg a,b,c;
wire sum,cout;
full_adder out(.a(a),.b(b),.c(c),.sum(sum),.cout(cout));
initial 
begin
#20 a=0;b=0;c=0;
#20 a=0;b=0;c=1;
#20 a=0;b=1;c=0;#20 a=0;b=1;c=1;
#20 a=1;b=0;c=0;
#20 a=1;b=0;c=1;
#20 a=1;b=1;c=0;
#20 a=1;b=1;c=1;
end
endmodule
