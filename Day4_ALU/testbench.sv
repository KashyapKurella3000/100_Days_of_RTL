// Code your testbench here
// or browse Examples
module ALU_Tb();
  reg [7:0] a,b;
  reg [2:0] op;
  wire [7:0] alu_o;
  integer i,j;
  
  ALU alu (.a(a),.b(b),.op(op),.alu_o(alu_o));
  
  initial
    begin
      for(j=0;j<3;j=j+1)
        begin
        for(i=0;i<7;i=i+1)
          begin
          a = $urandom_range(0,8'hFF);
          b = $urandom_range(0,8'hFF);
          op = i;
          #5;
    	end
  	end
  end
  
  initial begin
    $dumpfile("day4.vcd");
    $dumpvars(0, ALU_Tb);
  end
endmodule