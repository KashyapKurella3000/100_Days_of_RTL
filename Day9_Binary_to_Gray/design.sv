
// Day-9 Binary to Gray Convertor

module BtoG
  ( input [3:0] Bini,
   output reg[3:0] Grayo
  );
  parameter length = 4;
  assign Grayo[3] = Bini[3];
  
  genvar i;
  for(i= length-2;i>=0;i=i-1)
    assign Grayo[i] = Bini[i+1] ^ Bini[i];
  
endmodule
  

