`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2024 01:40:54 PM
// Design Name: 
// Module Name: half_subtractor
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


module half_subtractor(
input a,b,
output diff,borrow
    );
    assign diff=a^b;
    assign borrow=(~a)&b;
 
/*
xor x1(diff,a,b);
not n1(p,b);
and a1(borrow,p,b);
*/
/*
always @(*)
    begin
        diff=a^b;
        borrow=(~a)^b;
    end
 */
endmodule

