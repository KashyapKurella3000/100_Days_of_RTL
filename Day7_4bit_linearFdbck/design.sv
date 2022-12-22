// Code your design here
module xorsf(
  input wire clk,
  input wire reset,
  output wire[3:0] out);
  
  logic[3:0] present;
  logic[3:0] next;
  
  always@(posedge clk or posedge reset)
    begin
    if(reset)
      present <= 4'hE;
    else
      present <= next;
    end
  assign next = {present[2:0],present[1] ^ present[3]};
  assign out = present;
  
endmodule
    
  