`timescale 1ns / 1ps

module dff(
  input e,  
  input d,
  output q, 
  output qb
);

assign q  = ~((~(d&e))&qb);
assign qb = ~((~((~d)&e))&q);

endmodule