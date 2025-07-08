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
module total(
input a3, a2, a1, a0, d,
output b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15
);
wire w01, w02, w03, w04;
demux demux01(
  .a(a3),
  .b(a2),
  .FO(d),
  .A(w01),
  .B(w02),
  .C(w03),
  .D(w04)
);
demux demux02(
  .a(a1),
  .b(a0),
  .FO(w01),
  .A(b0),
  .B(b1),
  .C(b2),
  .D(b3)
);
demux demux03(
  .a(a1),
  .b(a0),
  .FO(w02),
  .A(b4),
  .B(b5),
  .C(b6),
  .D(b7)
);
demux demux04(
  .a(a1),
  .b(a0),
  .FO(w03),
  .A(b8),
  .B(b9),
  .C(b10),
  .D(b11)
);
demux demux05(
  .a(a1),
  .b(a0),
  .FO(w04),
  .A(b12),
  .B(b13),
  .C(b14),
  .D(b15)
);
endmodule
