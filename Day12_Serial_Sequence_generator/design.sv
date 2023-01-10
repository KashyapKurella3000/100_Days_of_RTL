// Code your design here

module seqD
  (
    input wire clk,
    input wire reset,
    input wire x_i,
    output wire det_o
  );
  
  //Shift Register to Store inputs and generate sequence
  logic[11:0] seq_ff;
  logic[11:0] next_seq;
  
  always@(posedge clk or posedge reset)
    if(reset)
      seq_ff <= 12'h0;
    else
      seq_ff <= next_seq;
  
  assign next_seq = {seq_ff[10:0],x_i} ;
  assign det_o = (seq_ff[11:0] == 12'h1110_1101_1011);
  
endmodule
                   