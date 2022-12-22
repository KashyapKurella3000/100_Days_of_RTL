// Code your design here
module ALU(
  input [7:0] a,
  input [7:0] b,
  input [2:0] op,
  output  reg [7:0] alu_o
);
  
  //Enum for ALU
  
   // Enum for ALU op
  localparam  OP_ADD = 3'b000;
  localparam  OP_SUB = 3'b001;
  localparam  OP_SLL = 3'b010;
  localparam  OP_LSR = 3'b011;
  localparam  OP_AND = 3'b100;
  localparam  OP_OR  = 3'b101;
  localparam  OP_XOR = 3'b110;
  localparam  OP_EQL = 3'b111;

  reg carry;
  
  always @(*)
  begin
    case(op)
      OP_ADD: {carry,alu_o} = a+b;
      OP_SUB: alu_o = a-b;
      OP_SLL: alu_o = a << b; 
      OP_LSR: alu_o = a >> b;
      OP_AND: alu_o = a & b;
      OP_OR:  alu_o = a | b;
      OP_XOR: alu_o = a ^ b;
      OP_EQL: alu_o = {7'h0, a == b};  
    endcase
  end
  
endmodule