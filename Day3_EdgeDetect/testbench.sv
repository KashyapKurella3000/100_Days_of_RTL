// Code your testbench here
// or browse Examples

module Edge_Tb();
  reg clk,a,reset;
  wire rising_edge,falling_edge;
  integer i;
  
  ED ed(.clk(clk),.a(a),.reset(reset),.rising_edge(rising_edge),.falling_edge(falling_edge));
  
  //CLK
  always
    begin
      clk = 1'b1;
      #5;
      clk = 1'b0;
      #5;
    end
  
  //Stimulus
  initial 
    begin
    reset <=1'b1;
    a <= 1'b1;
   	 @(posedge clk);
    reset <= 1'b0;
     @(posedge clk);
    for ( i=0; i<32; i=i+1) 
          	begin
     		a <= $random%2;
    	    @(posedge clk);
    		end
    $finish();
  	end
  
  // Dump VCD
  initial begin
    $dumpfile("day3.vcd");
    $dumpvars(0, Edge_Tb);
  end
  
endmodule
  
  
  