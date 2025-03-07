`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 03:43:10 PM
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_tb;
reg c,r;
wire [3:0]q;
ring_counter(c,r,q);
    always #5 c=~c;
    initial 
        begin
              r=1;
          #10 r=0;
        end
        always @(posedge c or posedge r)
            begin 
                $display("q=%b",q);
            end
        initial
            begin
                #50 $finish;
            end
            endmodule
