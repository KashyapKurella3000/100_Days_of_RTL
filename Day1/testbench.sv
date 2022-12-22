// Code your testbench here
// or browse Examples
`timescale 1ns/1ps 

module day1_tb();
  reg [7:0] a;
  reg [7:0] b;
  reg sel;
  wire [7:0] y;
  integer i;
  
  day1 DAY1(.a(a),.b(b),.sel(sel),.y(y));
  
  initial
    begin
      for( i=0 ;i<10 ;i=i+1)
        begin
          a   = $urandom_range(0,8'hFF);
          b   = $urandom_range(0,8'hFF);
         sel  = $random%2;
        end
    end
    
  initial 
    begin
    $dumpfile("day1.vcd");
    $dumpvars(0,day1_tb);
    #2000 $finish;
  end
endmodule
      
