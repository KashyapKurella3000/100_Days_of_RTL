 // Code your testbench here
// or browse Examples
module seqd_tb();
  logic clk;
  logic reset;
  logic x_i;
  logic det_o;
  
  seqD s1(.*);
  
  //Clock generation
  always
    begin
      clk = 1'b1;
      #5;
      clk = 1'b0;
      #5;
    end
  
  //Stimulus Generation
  logic [11:0] seq = 12'b1110_1101_1011;
  
  initial 
   begin
   reset <= 1'b1;
    x_i <= 1'b1;
     @(posedge clk);
     reset <= 1'b0;
     @(posedge clk);
     
     //Actual Sequence
     for(int i =0; i <12;i=i+1)
       begin
         x_i <= seq[i];
         @(posedge clk);
       end
     
     //Random Sequence
     for(int i =0; i<12; i=i+1)
       begin
         x_i <= $random%2;
         @(posedge clk);
       end
     $finish();
   end
  
   //VCD
  initial 
   begin
    $dumpfile("Day12.vcd");
    $dumpvars(0,seqd_tb);
   end
    
endmodule                  