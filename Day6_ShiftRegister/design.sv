// Code your design here

module Shift_Register(
   input  clk,
  input  reset,
    input  din,
   output reg [3:0] out);
  
  reg[3:0] present;
  reg[3:0] next;
  
  
  always@(posedge clk)
    begin 
    if(reset)
      present <=4'b0;
    else
      present <= next;
    end
  assign next = {present[2:0],din};
  assign  out = present;
endmodule
  