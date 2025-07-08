`timescale 1ns / 1ps

module halfsubtractor_tb;
reg A, B;
wire b, D;
    
halfsubtractor test(
  .A(A),
  .B(B),

  .b(b),
  .D(D)
);

initial begin
  A = 1'b0;
  B = 1'b0;
  #160
  $finish;
end
        
always@(A or B)begin
  A <= #80 ~A;
  B <= #40 ~B;
end
    
endmodule
