`timescale 1ns / 1ps

module fullsubtractor_tb;
reg A, B, Borrow;
wire b, D;
    
fullsubtractor test(
  .A(A),
  .B(B),
  .Borrow(Borrow),

  .b(b),
  .D(D)
);

initial begin
  A = 1'b0;
  B = 1'b0;
  Borrow = 1'b0;
  #160
  $finish;
end
        
always@(A or B or Borrow)begin
  A <= #80 ~A;
  B <= #40 ~B;
  Borrow <= #20 ~Borrow;
end
    
endmodule
