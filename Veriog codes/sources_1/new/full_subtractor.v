`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2024 02:19:38 PM
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
input a,b,c,
output diff,borrow
    );
  /*  wire w1,c1,c2,c3,b2,out1;
    xor x1(w1,a,b);
    xor x2(diff,w1,c);
    not n1(b1,a);
    and a1(c1,b1,b);
    and a2(c2,b1,c);
    and a3(c3,b,c);
    or o1(out1,c1,c2);
    or o1(borrow,out1,c3);
  */
  assign w1=a^b;
  assign diff=w1^c;
  assign c1=(~a)&b;
  assign c2=(~a)&c;
  assign c3=b&c;
  assign out1=c1|c2;
  assign borrow=out1|c3;
  /*
  input a,b;
  output reg diff,borrow;
  always @(*)
  begin
  case({a,b,c})
  3'b000:diff=0;
  3'b001:diff=1;
  3'b010:diff=1;
  3'b011:diff=0;
  3'b100:diff=1;
  3'b101:diff=0;
  3'b110:diff=0;
  3'b111:diff=1;
  default:diff=0;
  endcase
  case({a,b,c})
  3'b000:borrow=0;
  3'b001:borrow=0;
  3'b010:borrow=0;
  3'b011:borrow=1;
  3'b100:borrow=0;
  3'b101:borrow=1;
  3'b110:borrow=1;
  3'b111:borrow=1;
  default:borrow=0;
  endcase
  end
  */
  
endmodule
