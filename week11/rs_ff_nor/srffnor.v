`timescale 1ns / 1ps

module srffnor(
  input e,  
  input r,  
  input s,  
  output q, 
  output qb
);

assign q  = ~((r&e)|qb);
assign qb = ~((s&e)|q);

endmodule