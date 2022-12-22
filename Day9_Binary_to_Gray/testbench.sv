//Day-9
//Binary to Gray Convertor Test Bench

module gtob_tb();
  
  logic[3:0] Bini;
  logic[3:0] Grayo;
  
  BtoG btog(.*);
  
  initial
    begin
      for(int i=0;i<2**4;i=i+1)
        begin
        Bini = i;
        #5;
        end
      $finish();
    end
  
  initial
    begin
      $dumpfile("day9.vcd");
      $dumpvars(2,gtob_tb);    
    end            
                
 endmodule               