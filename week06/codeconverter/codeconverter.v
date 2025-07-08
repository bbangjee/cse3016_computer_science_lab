`timescale 1ns / 1ps

module codeconverter(
  input a, b, c, d,
  output A, B, C, D
);

assign A = a|(b&d)|(b&c);
assign B = a|(b&(~d))|(b&c);
assign C = a|(b&(~c)&d)|((~b)&c);
assign D = d;

endmodule
