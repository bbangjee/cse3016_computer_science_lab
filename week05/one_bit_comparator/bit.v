`timescale 1ns / 1ps

module bit(
  input a, b,
  output equal, notequal, leftbig, rightbig
  );

assign equal = ~(a^b);
assign notequal = a^b;
assign leftbig = a&(~b);
assign rightbig = (~a)&b;

endmodule
