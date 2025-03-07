`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2024 03:53:01 PM
// Design Name: 
// Module Name: binary_bcd
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


module binary_bcd(
    input a,b,c,d,
    output [4:0]y );
   
    wire c1,c2,c3,c4,c5,c6,d1,d2,d3;
    not (d1,d);         //gate level modelling
    not (d2,c);
    not (d3,b);
    and (y[0],c1,a);
    and (c1,d,c,d3);
    and (c2,d1,b);
    or (y[1],c1,c2);
    and (c3,d1,c);
    and (c4,d,b); 
    or (y[2],c3,c4);
    and (y[3],d,d3,d2);
    and (c5,d,c);
    and (c6,d,b);
    or (y[4],c5,c6);    
   
    
    /*
    assign y[4]=(d&c)|(d&b);      
    assign y[3]=d&(~c)&(~b);
    assign y[2]=((~d)&c)|(b&c);
    assign y[1]=(d&c&(~b))|((~d)&b);
    assign y[2]=1&a;
    */
    
    
    /*
    output reg [4:0]y;
    always@(*)
        begin
            case({d,b,c,a})
                4'b0000:y=5'b00001;            //behavioural modelling
                4'b0001:y=5'b00010;
                4'b0010:y=5'b00011;
                4'b0011:y=5'b00100;
                4'b0100:y=5'b00101;
                4'b0101:y=5'b00110;
                4'b0110:y=5'b00111;
                4'b0111:y=5'b01000;
                4'b1000:y=5'b01001;
                4'b1001:y=5'b10000;
                4'b1010:y=5'b10010;
                4'b1011:y=5'b10011;
                4'b1100:y=5'b10100;
                4'b1101:y=5'b10101;
                4'b1110:y=5'b10110;
                4'b1111:y=5'b10111;
                default:y=5'b00000;
            endcase
        end
       */
endmodule
