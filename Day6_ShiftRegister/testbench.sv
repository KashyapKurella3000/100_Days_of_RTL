// Code your testbench here
// or browse Examples

module Shift_Tb();
  reg clk;
  reg reset;
  reg din;
  wire [3:0] out;
  
  Shift_Register sr(.clk(clk),.reset(reset),.din(din),.out(out));
  
  //Clock Generation
  
  always begin
    clk = 1'b1;
    #5;
    clk = 1'b0;
    #5;
  end
  
  //Stimulus
  initial
    begin
      reset = 1'b1;
      din   =1'b0;
      @(posedge clk)
      reset =1'b0;
      @(posedge clk)
      for(int i=0; i<16;i=1+1)
        begin
        din <= $random%2;
          @(posedge clk);
        end
    end
  
   // Dump VCD
  initial begin
    $dumpfile("day6.vcd");
    $dumpvars(0, Shift_Tb);
    $monitor("clk = %b,reset =%b, input = %b, output = %4b",clk,reset,din,out);
    #300 $finish;
  end

endmodule
      
        
        
  
  