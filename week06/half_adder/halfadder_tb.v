`timescale 1ns / 1ps

module halfadder_tb;
reg a, b;
wire s, c;
    
halfadder test(
  .a(a),
  .b(b),
  .s(s),
  .c(c)
);

initial begin
  a = 1'b0;
  b = 1'b0;
  #160
  $finish;
end
        
always@(a or b)begin
  a <= #80 ~a;
  b <= #40 ~b;
end
    
endmodule
