`timescale 1ns / 1ps


module segment(
  input a, b, c, d,
  output A, B, C, D, E, F, G, DP, digit
);

assign A = (~a)&c|b&c|a&(~d)|(~b)&(~d)|(~a)&b&d|a&(~b)&(~c);
assign B = (~b)&(~d)|(~a)&(~b)|(~a)&(~c)&(~d)|a&(~c)&d|(~a)&c&d;
assign C = (~a)&b|a&(~b)|(~c)&d|(~a)&(~c)|(~a)&d;
assign D = (~a)&(~b)&(~d)|(~b)&c&d|a&(~c)&(~d)|b&(~c)&d|b&c&(~d);
assign E = a&b|(~b)&(~d)|c&(~d)|a&c;
assign F = (~c)&(~d)|a&(~b)|a&c|b&c&(~d)|(~a)&b&(~c);
assign G = (~b)&c|c&(~d)|a&(~b)|a&d|(~a)&b&(~c);

assign DP = 1;
assign digit = A|B|C|D|E|F|G;

endmodule
