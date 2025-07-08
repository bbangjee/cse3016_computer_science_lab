`timescale 1ns / 1ps

module booleanOneB_tb;

reg a, b, c;
wire output2;

booleanOneB u_test(
.a(a),
.b(b),
.c(c),

.output2(output2)
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

