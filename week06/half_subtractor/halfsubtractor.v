`timescale 1ns / 1ps

module halfsubtractor(
  input A, B,
  output b, D
);

assign D = A^B;
assign b = B&(~A);

endmodule
