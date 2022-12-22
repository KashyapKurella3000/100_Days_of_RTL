// Code your testbench here
// or browse Examples
module odd_tb();
  logic clk;
  logic reset;
  logic [7:0] cnt;
  
  odd_counter oc(.*);
    
  always begin
    clk = 1'b0;
    #5;
    clk = 1'b1;
    #5;
  end
  
   initial begin
    reset <= 1'b1;
    @(posedge clk);
    @(posedge clk);
    reset <= 1'b0;
    for (int i=0; i<128; i++)
      @(posedge clk);
    $finish();
  end

  initial begin
    $dumpfile("day5.vcd");
    $dumpvars(0, odd_tb);
  end
  
endmodule

