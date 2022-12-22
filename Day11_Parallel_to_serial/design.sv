// Code your design here
// Parallel to serial with valid and empty

module day11 (
  input     wire      clk,
  input     wire      reset,

  output    reg      empty_o,
  input     wire[3:0] parallel_i,
  
  output    reg      serial_o,
  output    reg      valid_o
);

  // Shift register for the conversion
   reg[3:0] shift_ff;
   reg[3:0] nxt_shift;

  always @(posedge clk or posedge reset)
    if (reset)
      shift_ff <= 4'h0;
    else
      shift_ff <= nxt_shift;

  // Take the parallel input when empty
  // Otherwise give the data out serially
  assign nxt_shift = empty_o ? parallel_i :
                               {1'b0, shift_ff[3:1]};

  assign serial_o = shift_ff[0];

  // Maintain a counter to drive valid and empty
  reg [2:0] count_ff;
  reg [2:0] nxt_count;

  always @(posedge clk or posedge reset)
    if (reset)
      count_ff <= 3'h0;
    else
      count_ff <= nxt_count;

  // Count goes to zero when it reaches 4 (as all data given out)
  assign nxt_count = (count_ff == 3'h4) ? 3'h0 :
                                          count_ff + 3'h1;

  // Valid when count greater than 0
  assign valid_o = |count_ff;

  // Empty when count_ff == 0
  assign empty_o = (count_ff == 3'h0);

endmodule