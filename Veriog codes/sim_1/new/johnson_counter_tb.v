`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 03:01:08 PM
// Design Name: 
// Module Name: johnson_counter_tb
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


module johnson_counter_tb;
parameter c_p=10;
reg c,r;
wire [3:0]q;
johnson_counter(c,r,q);
    always #(c_p/2) c=~c;
        initial
          begin
              r=1;
          #10 r10;
          end
        initial
            repeat(20)
                begin
                    #c_p;
                end
endmodule
