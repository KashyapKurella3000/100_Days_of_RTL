
module f_arb_tb();
  localparam NUM_PORTS = 4;
  
  logic[NUM_PORTS-1:0] req_i;
  logic[NUM_PORTS-1:0] gnt_o;
  
  f_arb f(.*);
  
  //Stimulus Generation using Loop
  
  initial
    begin
      for(int i =0;i< 32;i=i+1) 
        begin
        req_i = $urandom_range(0,2**NUM_PORTS -1);
        #5;
        end
    end
  
  //VCD Generation
  initial
    begin
      $dumpfile("Day14.vcd");
      $dumpvars(0,f_arb_tb);
    end
  
endmodule