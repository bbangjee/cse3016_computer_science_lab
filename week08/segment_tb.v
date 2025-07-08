`timescale 1ns / 1ps

module segment_tb;

reg a,b,c,d;
wire A,B,C,D,E,F,G,DP,digit;
    
segment test(
.a(a),
.b(b),
.c(c),
.d(d),

.A(A),
.B(B),
.C(C),
.D(D),
.E(E),
.F(F),
.G(G),
.DP(DP),
.digit(digit)
);
    
        
initial begin
a = 1'b0;
b = 1'b0;
c = 1'b0;
d = 1'b0;
#160
$finish;
end
    
always@(a or b or c or d) begin
a <= #80 ~a;
b <= #40 ~b;
c <= #20 ~c;
d <= #10 ~d;
end
    
endmodule
