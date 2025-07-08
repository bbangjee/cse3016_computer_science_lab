`timescale 1ns / 1ps

module paritycheck(
  input a, b, c, d, p,
  output pec
);

assign pec = a^b^c^d^p;

endmodule
