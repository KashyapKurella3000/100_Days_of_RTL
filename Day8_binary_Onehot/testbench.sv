// Code your testbench here
// or browse Examples
module b2o_tb();

  localparam BIN_W = 4;
  localparam ONE_HOT_W = 16;

  logic [BIN_W-1:0] bin_i;
  logic [ONE_HOT_W-1:0] one_hot_o;

  BtoO #(BIN_W, ONE_HOT_W) b2o (.*);

  initial begin
    for(int i=0; i<32; i=i+1) begin
      bin_i = $urandom_range(0, 4'hF);
      #5;
    end
    $finish();
  end

  initial begin
    $dumpfile("day8.vcd");
    $dumpvars(2, b2o_tb);
  end

endmodule