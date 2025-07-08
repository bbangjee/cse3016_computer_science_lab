`timescale 1ns / 1ps

module sum(
input a, b, cin,
output sum, cout
);

assign sum = a^b^cin;
assign cout = a&b|((a^b)&cin);
endmodule

module parallelAdder(
input [3:0] a, b,
input cin,
output [3:0] s,
output cout
);
wire [3:1] c;

sum module00(
  .a(a[0]),
  .b(b[0]),
  .cin(cin),

  .sum(s[0]),
  .cout(c[1])
);

sum module01(
  .a(a[1]),
  .b(b[1]),
  .cin(c[1]),

  .sum(s[1]),
  .cout(c[2])
);

sum module02(
  .a(a[2]),
  .b(b[2]),
  .cin(c[2]),

  .sum(s[2]),
  .cout(c[3])
);

sum module03(
  .a(a[3]),
  .b(b[3]),
  .cin(c[3]),

  .sum(s[3]),
  .cout(cout)
);
endmodule