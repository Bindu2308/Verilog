`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 02:35:42 PM
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    input j,k,clk,
    output q,qbar
    );
    wire nand1_out,nand2_out;
    nand (nand1_out,j,clk,qbar);
    nand (nand2_out,k,clk,q);
    nand (q,qbar,nand1_out);
    nand (qbar,q,nand2_out);
    
    /*
    reg q,qbar;
    always@(posedge clk)
        begin
            if(k=0)
              begin
                q<=0;qbar<=1;
              end
            elseif(j=1)
                begin q<=0;qbar<=0;  end
            elseif(j=0&k=0)
                begin q<=q;qbar<=qbar;  end
            elseif(j=1&k=1)
                 begin q<=~q;qbar<=~qbar; end
        end
    */
    /*
    assign q=(j&q&qbar)|(~k&q);
    assign qbar=(k&(~q))|((~j)&);
    always@(posedge clk)
        begin 
            q<=q;qbar<=qbar;
        end
        */
    
endmodule
