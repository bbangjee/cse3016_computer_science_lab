`timescale 1ns / 1ps

module bit_tb;

reg a, b;
wire equal, notequal, leftbig, rightbig;

bit u_test(
.a(a),
.b(b),

.equal(equal),
.notequal(notequal),
.leftbig(leftbig),
.rightbig(rightbig)
);

initial begin
  a = 1'b0;
  b = 1'b0;
  end
    
  always@(a or b) begin
  a <= #80 ~a;
  b <= #40 ~b;
  end
    
  initial begin
  #160
  $finish;
  end
 
endmodule
