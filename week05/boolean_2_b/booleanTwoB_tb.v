`timescale 1ns / 1ps

module booleanTwoB_tb;

reg a, b, c;
wire output4;

booleanTwoB u_test(
.a(a),
.b(b),
.c(c),

.output4(output4)
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

