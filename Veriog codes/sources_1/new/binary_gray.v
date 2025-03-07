`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2024 10:06:59 PM
// Design Name: 
// Module Name: binary_gray
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


module binary_gray(
    output g3,g2,g1,g0,
    input b3,b2,b1,b0
    );
   /* buf (g3,b3);         //gate level modelling 
    xor (g2,b3,b2);
    xor (g1,b2,b1);
    xor (g0,b1,b0);*/
    
    
    assign g3=b3;
    assign g2=b3^b2;
    assign g1=b2^b1;
    assign g0=b1^b0;
    
    
    /* 
     reg g0,g1,g2,g3;
         always @(*)
             begin 
               case({b3,b2,b1,b0})
                4'b0000:y=4'b0000;            //behavioural modelling
                4'b0001:y=4'b0001;
                4'b0010:y=4'b0011;
                4'b0011:y=4'b0010;
                4'b0100:y=4'b0110;
                4'b0101:y=4'b0111;
                4'b0110:y=4'b0101;
                4'b0111:y=4'b0100;
                4'b1000:y=4'b1100;
                4'b1001:y=4'b1101;
                4'b1010:y=4'b1111;
                4'b1011:y=4'b1110;
                4'b1100:y=4'b1010;
                4'b1101:y=4'b1011;
                4'b1110:y=4'b1001;
                4'b1111:y=4'b1000;
                default:y=4'xxxx;
            endcase
        end
    */
    
endmodule
