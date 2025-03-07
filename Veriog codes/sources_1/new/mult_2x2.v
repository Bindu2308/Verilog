`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2024 03:08:40 PM
// Design Name: 
// Module Name: mult_2x2
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


module mult_2x2(
    output [3:0]product,
    input [1:0]a,b
    );
    and (product[0],a[0],b[0]);  //gate level modelling
    and (product[1],a[1],b[0]);
    and (product[2],a[0],b[1]);
    and (product[3],a[1],b[1]);
    
    
    /*
    assign product=a*b;    //data flow modelling
    */
    /*
    output reg [3:0]product);    //behavioural modelling
    always @(*)
        begin
            product=a*b;
        end
    */
endmodule
