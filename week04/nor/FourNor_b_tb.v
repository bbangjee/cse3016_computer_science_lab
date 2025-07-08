`timescale 1ns / 1ps

module FourNor_b_tb;

reg aa, bb, cc, dd;
wire ee, ff, gg;

FourNor_b u_test(
.a(aa),
.b(bb),
.c(cc),
.d(dd),

.e(ee),
.f(ff),
.g(gg)
);

initial begin
  aa = 1'b0;
  bb = 1'b0;
  cc = 1'b0;
  dd = 1'b0;
  end
    
  always@(aa or bb or cc or dd) begin
  aa <= #80 ~aa;
  bb <= #40 ~bb;
  cc <= #20 ~cc;
  dd <= #10 ~dd;
  end
    
  initial begin
  #160
  $finish;
  end
  
endmodule
