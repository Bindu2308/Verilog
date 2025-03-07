`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 01:56:51 PM
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(input s,r,clk,output q,qbar);
    wire nand1_out,nand2_out;
    nand (nand1_out,clk);
    nand (nand2_out,clk,r);
    nand (q,nand1_out,qbar);
    nand (qbar,nand2_out,q);
    
    /*
    assign q=clk?(s+((~r)&q):q;       //data flow modelling
    assign qbar=~q;
    */
    /*
    reg q,qbar;
    always@(posedge clk)
        begin
            if(s==1)
                begin
                    q=1;qbar=0;
                end
            elseif(r==1)
                begin
                    q=0;qbar=1;
                end
            elseif(s==0&r==0)
                begin
                    q<=q;qbar<=qbar
                end
 endmodule
*/
    endmodule
