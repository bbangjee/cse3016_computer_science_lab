`timescale 1ns / 1ps

module booleanOneA_tb;

reg a, b, c;
wire output1;

booleanOneA u_test(
.a(a),
.b(b),
.c(c),

.output1(output1)
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

