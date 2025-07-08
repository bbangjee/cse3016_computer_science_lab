`timescale 1ns / 1ps

module mux_tb;
reg a,b,A,B,C,D;
wire E;


mux test(
.a(a),
.b(b),
.A(A),
.B(B),
.C(C),
.D(D),

.E(E)
);
    
initial begin
a = 1'b0; 
b = 1'b0;
A = 1'b0;
B = 1'b0;
C = 1'b0; 
D = 1'b0;
#640
$finish;
end

always@(a or b or A or B or C or D)begin
a <= #320 ~a;
b <= #160 ~b;
A <= #80 ~A;
B <= #40 ~B;
C <= #20 ~C;
D <= #10 ~D;
end
endmodule
