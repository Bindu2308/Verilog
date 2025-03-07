`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2024 02:39:06 PM
// Design Name: 
// Module Name: full_adder
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

//GATE level modelling.
module full_adder(
input a,b,c,
output sum,cout
    );
  /*  wire w1,c1,c2,c3,out1;
    xor x1(w1,a,b);
    xor x2(sum,w1,c);
    and a1(c1,a,b);
    and a2(c2,b,c);
    and a3(c3,c,a);
    or o1(out1,c1,c2);
    or o2(cout,out1,c3);
  */
  assign w1=a^b;
  assign sum=w1^c;
  assign c1=a&b;
  assign c2=b&c;
  assign c3=a&c;
  assign out1=c1|c2;
  assign cout=out1|c3;
  /*
  input a,b;
  output reg sum,carry;
  always @(*)
  begin
  case({a,b,c})
  3'b000:sum=0;
  3'b001:sum=1;
  3'b010:sum=1;
  3'b011:sum=0;
  3'b100:sum=1;
  3'b101:sum=0;
  3'b110:sum=0;
  3'b111:sum=1;
  default:sum=0;
  endcase
  case({a,b,c})
  3'b000:cout=0;
  3'b001:cout=0;
  3'b010:cout=0;
  3'b011:cout=1;
  3'b100:cout=0;
  3'b101:cout=1;
  3'b110:cout=1;
  3'b111:cout=1;
  default:cout=0;
  endcase
  end
  */
  
  
 endmodule

