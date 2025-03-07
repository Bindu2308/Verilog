`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 02:46:13 PM
// Design Name: 
// Module Name: johnson_counter
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
/////////////////////////////////////////////////////////////////////////////


module johnson_counter(
    input wire c,r,
    output reg [3:0]q
    );
    wire q0,q1,q2,q3;
    and (q0,~q[0],~q[1],~q[2]);
    and (q1,q[0],~q[1],~q[2]);
    and (q2,q[0],q[1],~q[2]);
    and (q3,q[0],q[1],q[2]);
    always@(posedge c or posedge r)
        begin
            if(r)
                q<=4'b0001;
            else
                q<={q3,q2,q1,q0};
        end
endmodule
