// Code your testbench here
// or browse Examples
module day2_tb();
  logic clk;
  logic din;
  logic rst;
  logic adout;
  logic qnr;
  logic qar;
  logic qsr;
  
  Day2 day2(.*);
  
 //generate clk
  always
    begin
      clk =1'b1;
      #5;
      clk =1'b0;
      #5;
    end
  
  // Stimulus
  initial begin
    rst = 1'b1;
    din = 1'b0;
    @(posedge clk);
    rst = 1'b0;
    @(posedge clk);
    din = 1'b1;
    @(posedge clk);
    @(posedge clk);
    @(negedge clk);
    rst = 1'b1;
    @(posedge clk);
    @(posedge clk);
    rst = 1'b0;
    @(posedge clk);
    @(posedge clk);
    $finish();
  end

  // Dump VCD
  initial begin
    $dumpfile("day2.vcd");
    $dumpvars(0, day2_tb);
  end
  


endmodule