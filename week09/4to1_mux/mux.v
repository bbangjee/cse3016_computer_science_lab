`timescale 1ns / 1ps

module mux(
input a, b, A, B, C, D,
output E
);

assign E = (~a&~b&A)|(~a&b&B)|(a&~b&C)|(a&b&D);
    
endmodule
