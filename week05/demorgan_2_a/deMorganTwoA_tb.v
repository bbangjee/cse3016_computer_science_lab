`timescale 1ns / 1ps

module deMorganTwoA_tb;

reg a, b;
wire c;

deMorganTwoA test(
.a(a),
.b(b),

.c(c)
);

initial begin
  a = 1'b0;
  b = 1'b0;
  #160
  $finish;
end

always@(a or b) begin
  a <= #80 ~a;
  b <= #40 ~b;
end
    
endmodule
