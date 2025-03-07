`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 06:45:14 PM
// Design Name: 
// Module Name: seq_det_tb
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

module test_sequence;
reg x,clk,reset;
wire z;
seq_detector seq(x,clk,reset,z);
intial
begin
$dumpﬁle("sequence.vcd");
$dumpvars(0,test_sequence);
clk=1'b0;
reset=1'b1;
#15 reset=1'b0;
end
always #5 clk= clk
intial
#10 x=0; #10 x=0; #10 x=1;
#10 x=1;..............
end
endmodule
