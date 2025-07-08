`timescale 1ns / 1ps

module decoder_tb;
reg a, b; 
wire d0, d1, d2, d3;
    
decoder test(
.a(a),
.b(b),

.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3)
);
initial begin
a = 1'b0;
b = 1'b0;
#40
$finish; 
end
 
always@(a or b) begin
a <= #20 ~a;
b <= #10 ~b;
end
    
endmodule

