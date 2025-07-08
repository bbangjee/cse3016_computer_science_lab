`timescale 1ns / 1ps

module fulladder(
  input a, b, cin,
  output s, cout
);

assign s = a^b^cin;
assign cout = (a&b)|((a^b)&cin);

endmodule
