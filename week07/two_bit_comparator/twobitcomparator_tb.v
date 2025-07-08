`timescale 1ns / 1ps

module twobitcomparator_tb;
reg a,b,c,d;
wire f1,f2,f3;
    
twobitcomparator test(
.a(a),
.b(b),
.c(c),
.d(d),

.f1(f1),
.f2(f2),
.f3(f3)
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
