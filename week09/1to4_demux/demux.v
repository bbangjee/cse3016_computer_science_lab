`timescale 1ns / 1ps

module demux(
input a, b, FO,
output A, B, C, D
);
assign A = ~a&~b&FO;
assign B = ~a&b&FO;
assign C = a&~b&FO;
assign D = a&b&FO;

endmodule
