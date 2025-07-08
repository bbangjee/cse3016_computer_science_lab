`timescale 1ns / 1ps

module d_ff_tb;
reg d, e;
wire q, qb;
    
dff test(
.e(e),
.d(d),

.q(q),
.qb(qb)
);
initial begin
e = 1'b0;
d = 1'b0; #20
d = 1'b0; #20
d = 1'b1; #20
d = 1'b0; #20
d = 1'b1; #20
d = 1'b1; #20
$finish;
end

always@(e) begin
e <= #3 ~e;
end
endmodule