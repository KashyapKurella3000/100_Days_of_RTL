
module f_arb #(parameter NUM_PORTS = 4)
  (
    input logic[NUM_PORTS-1:0] req_i,
    output logic[NUM_PORTS-1:0] gnt_o
  );
  
  //Port-0 gets the highest priority
  assign gnt_o[0] = req_i[0];
  
  //For the next 3 ports, we check whether the previous ports were all Zero's or not ,If the previous ports are Zero's ONLY THEN we grant permission to the present port.
  genvar i;
  for( i =1;i < NUM_PORTS; i=i+1)
    begin
      assign gnt_o[i] = req_i[i] & ~(|gnt_o[i-1:0]);
    end
  
endmodule