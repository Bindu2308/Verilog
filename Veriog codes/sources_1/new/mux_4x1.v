`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2024 02:36:52 PM
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
  output out,
  input i0,i1,i2,i3,s0,s1
      );
    wire s01,s11,y0,y1,y2,y3;
    not (s01,s0);
    not (s11,s1);
    and (y0,i0,s01,s11);
    and (y1,i1,s01,s1);
    and (y2,i2,s0,s11);
    and (y3,i3,s0,s1);
    or (out,y0,y1,y2,y3);
    
    /*
    assign s01=~s0;
    assign s11=~s1;         //data flow modelling
    assign y0=(s01&s11&i0);
    assign y1=(s01,s1,i1);
    assign y2=(s1&s11&i2);
    assign y3=(s1&s1&i3 );
    */
    /*
    reg out;
    always@(*)
        case({s0,s1})
            2'boo:out=io;
            2'bo1:out=i1;
            2'b1o:out=i2;
            2'b11:out=i3;
        endcase
    */
endmodule
