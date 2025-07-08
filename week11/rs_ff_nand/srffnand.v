`timescale 1ns / 1ps

module srffnand(
  input e,  
  input r,  
  input s,  
  output q, 
  output qb
);

assign q  = ~((~(s&e))&qb);
assign qb = ~((~(r&e))&q);

endmodule