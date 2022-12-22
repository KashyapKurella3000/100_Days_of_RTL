// Code your testbench here
// or browse Examples
module sftb();
  logic clk;
  logic reset;
  logic[3:0] out;
  
  xorsf x1(.*);
  
 //Clock Generation 
  always
    begin
      clk = 1'b1;
      #5;
      clk = 1'b0;
      #5;
    end
  
  //Stimulus Generation
  
 initial 
   begin
     reset <=1'b1;
     @(posedge clk);
     reset <=1'b0;
     for(int i=0;i<32;i=i+1)
       @(posedge clk);
     $finish();
   end
  
   initial 
    begin
    $dumpfile("day7.vcd");
      $dumpvars(0, sftb);
  	end

endmodule
     