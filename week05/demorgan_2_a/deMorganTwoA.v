`timescale 1ns / 1ps

module deMorganTwoA(
  input a, b,
  output c
);
  
assign c = (~a)|(~b);

endmodule
