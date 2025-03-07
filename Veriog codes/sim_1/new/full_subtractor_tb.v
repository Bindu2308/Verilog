`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2024 02:54:41 PM
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb;
reg a,b,c;
wire diff,borrow;
full_subtractor out(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
initial 
begin
#20 a=0;b=0;c=0;
#20 a=0;b=0;c=1;
#20 a=0;b=1;c=0;
#20 a=0;b=1;c=1;
#20 a=1;b=0;c=0;
#20 a=1;b=0;c=1;
#20 a=1;b=1;c=0;
#20 a=1;b=1;c=1;
end
endmodule
