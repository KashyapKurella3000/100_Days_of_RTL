// Code your design here
module odd_counter(
  input clk,
  input reset,
  output  reg[7:0] cnt);
  
  logic [7:0] nxt_cnt;
  
  always@(posedge clk or posedge reset)
    if(reset)
      cnt <=0;
  else
    cnt <= nxt_cnt;
  
  assign nxt_cnt = cnt + 8'h2;
  
endmodule