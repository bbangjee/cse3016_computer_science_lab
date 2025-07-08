`timescale 1ns / 1ps

module booleanTwoA_tb;

reg a, b, c;
wire output3;

booleanTwoA u_test(
.a(a),
.b(b),
.c(c),

.output3(output3)
);

initial begin
  a = 1'b0;
  b = 1'b0;
  c = 1'b0;
  end
    
  always@(a or b or c) begin
  a <= #80 ~a;
  b <= #40 ~b;
  c <= #20 ~c;
  end
    
  initial begin
  #160
  $finish;
  end
  
endmodule

