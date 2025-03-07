`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 03:24:00 PM
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(
    input wire c,r,
    output [3:0]q
    );
    assign q[0]=q[3];
    assign q[1]=q[0];
    assign q[2]=q[1];
    assign q[3]=q[2];
    always @(posedge clk)
        begin
            if(r)
                q<=4'b00001;
        end
endmodule
