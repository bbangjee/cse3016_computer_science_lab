`timescale 1ns / 1ps

module deMorganTwoB(
  input a, b,
  output c
);
  
assign c = ~(a&b);

endmodule
