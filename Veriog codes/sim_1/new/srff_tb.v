`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 02:07:52 PM
// Design Name: 
// Module Name: srff_tb
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


module srff_tb;
    reg clk,rst_n,s,r;
    wire q,qbar;
      sr_ff out(clk,rst_n,s,r,q,qbar);
      always #2 clk=~clk;
      initial 
          begin
              clk=0;rst_n=0;
              $display("reset=%b-->q=%b,qbar=%b",rst_n,q,qbar);
              #3 rst_n=1;
              $display("reset=%b-->q=%b,qbar=%b",rst_n,q,qbar);
              drive(2'b00);
              drive(2'b10);
              drive(2'b01);
              drive(2'b11);
              #5 $finish;
          end  
          task drive(bit[1:0] ip);
            @(posedge clk)
            {s,r}=ip;
            #1 $display("s=%b,r=%b-->q=%b,qbar=%b",s,r,q,qbar);
          endtask
      initial
        begin
            $dumpfile("dump_vcd");
            $dumpvars(1);
        end    
endmodule
