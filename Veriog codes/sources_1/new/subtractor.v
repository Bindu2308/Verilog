`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2024 04:18:29 PM
// Design Name: 
// Module Name: subtractor
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


module subtractor(
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
endmodule
