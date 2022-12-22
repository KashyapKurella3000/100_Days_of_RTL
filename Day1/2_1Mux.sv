// Code your design here
module day1( input [7:0] a, input  [7:0] b, input  sel, output [7:0] y);
  
  assign y = sel ? a : b ;
  
endmodule
