`timescale 1ns / 1ps

module sub(
input a, b, bin,
output diff, bout
);
assign diff = a^b^bin;
assign bout = b&(~a)|(~(a^b))&bin;
endmodule
module parallelSubtractor(
input [3:0] a, b,
input bin,
output [3:0] d,
output bout
);
wire [3:1] bb;
sub sub00 (
.a(a[0]),
.b(b[0]),
.bin(bin),
.diff(d[0]),
.bout(bb[1])
);
sub sub01 (
.a(a[1]),
.b(b[1]),
.bin(bb[1]),
.diff(d[1]),
.bout(bb[2])
);
sub sub02 (
.a(a[2]),
.b(b[2]),
.bin(bb[2]),
.diff(d[2]),
.bout(bb[3])
);
sub sub03 (
.a(a[3]),
.b(b[3]),
.bin(bb[3]),
.diff(d[3]),
.bout(bout)
);
endmodule