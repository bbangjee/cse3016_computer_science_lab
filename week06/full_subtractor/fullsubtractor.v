`timescale 1ns / 1ps

module fullsubtractor(
  input A, B, Borrow,
  output b, D
);

assign b = ((~A)&B)|((~(A^B))&Borrow);
assign D = A^B^Borrow;

endmodule