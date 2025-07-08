`timescale 1ns / 1ps

module demux_tb;
reg a3, a2, a1, a0, d;
wire b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15;

total uut (
  .a3(a3),
  .a2(a2),
  .a1(a1),
  .a0(a0),
  .d(d),

  .b0(b0),
  .b1(b1),
  .b2(b2),
  .b3(b3),
  .b4(b4),
  .b5(b5),
  .b6(b6),
  .b7(b7),
  .b8(b8),
  .b9(b9),
  .b10(b10),
  .b11(b11),
  .b12(b12),
  .b13(b13),
  .b14(b14),
  .b15(b15)
);

initial begin
a3 = 1'b0;
a2 = 1'b0;
a1 = 1'b0;
a0 = 1'b0;
d = 1'b0;
#512
$finish;
end

always@(a3 or a2 or a1 or a0 or d) begin
a3 <= #256 ~a3;
a2 <= #128 ~a2;
a1 <= #64 ~a1;  
a0 <= #32 ~a0;
d <= #16 ~d;

end
endmodule