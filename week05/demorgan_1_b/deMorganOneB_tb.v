`timescale 1ns / 1ps

module deMorganOneB_tb;

reg a, b;
wire output1;

deMorganOneB u_test(
.a(a),
.b(b),

.output1(output1)
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
