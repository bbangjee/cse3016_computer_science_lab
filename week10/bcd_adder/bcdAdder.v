`timescale 1ns / 1ps
module sum(
input a, b, cin,
output sum, cout);
assign sum = a^b^cin;
assign cout = a&b|((a^b)&cin);
endmodule

module bcdAdder(
input [3:0] a, b,
input cin,
output [3:0] sum,
output cout);
wire [4:1]c;
wire [4:1]cc;
wire [3:0]s;
sum sum01(
.a(a[0]),
.b(b[0]),
.cin(cin),
.sum(s[0]),
.cout(c[1]));
sum sum02(
.a(a[1]),
.b(b[1]),        
.cin(c[1]),
.sum(s[1]),        
.cout(c[2]));
sum sum03(
.a(a[2]),
.b(b[2]),
.cin(c[2]),
.sum(s[2]),
.cout(c[3]));
sum sum04(
.a(a[3]),
.b(b[3]),
.cin(c[3]),
.sum(s[3]),
.cout(c[4]));
assign cout = c[4]|(s[3]&s[2])|(s[3]&s[1]);
sum sum05(
.a(s[0]),
.b(0),
.cin(0),
.sum(sum[0]),
.cout(cc[1]));
sum sum06(
.a(s[1]),
.b(cout),
.cin(cc[1]),
.sum(sum[1]),
.cout(cc[2]));
sum sum07(
.a(s[2]),
.b(cout),
.cin(cc[2]),
.sum(sum[2]),
.cout(cc[3]));
sum sum08(
.a(s[3]),
.b(0),
.cin(cc[3]),
.sum(sum[3]),
.cout(cc[4]));
endmodule