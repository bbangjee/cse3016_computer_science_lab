`timescale 1ns / 1ps

module demux_tb;
reg a, b, FO;
wire A, B, C, D;

demux test(
.a(a),
.b(b),
.FO(FO),

.A(A),
.B(B),
.C(C),
.D(D)
);
    
initial begin
a = 1'b0; 
b = 1'b0;
FO = 1'b0;
#80
$finish;
end

always@(a or b or FO)begin
a <= #40 ~a;
b <= #20 ~b;
FO <= #10 ~FO;
end

endmodule
