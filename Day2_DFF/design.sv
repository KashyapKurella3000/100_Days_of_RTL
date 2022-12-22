// Code your design here
module Day2(input logic clk,input logic din,input rst,output logic adout,output logic qnr,output logic qar,output logic qsr);

  //No reset
  always@(posedge clk)
    qnr <= din;
  
  //syn Reset
  
  always@(posedge clk)
    if(rst)
      qsr <=0;
   else
     qsr <=din;
  
  //Asyn Reser
  
  always@(posedge clk or posedge rst)
    if(rst)
      qar <= 0;
   else
     qar <= din;
  
endmodule
    