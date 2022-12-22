// Code your design here
module ED(input clk,a,reset,output  rising_edge,falling_edge);
 
  reg ai;
  
  always@(posedge clk or posedge reset)
   begin
	if(reset)
      ai <= 1'b0;
     else
      ai <= a;
    end
  
  // Rising edge when delayed signal is 0 but current is 1
  
  assign rising_edge = ~ai & a;
  
  // Falling edge when delayed signal is 1 but current is 0
  
  assign falling_edge = ai & a; 
  
	endmodule
  
  
