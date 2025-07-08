`timescale 1ns / 1ps

module srffnand_tb;
reg s, r, e;
wire q, qb;

srffnand test(
.s(s),
.r(r),
.e(e),
.q(q),
.qb(qb)
);

initial begin
s = 1'b0;
r = 1'b0;
e = 1'b0;
r = 1'b0; s = 1'b1; #20; 
r = 1'b0; s = 1'b0; #20; 
r = 1'b1; s = 1'b0; #20;
r = 1'b0; s = 1'b0; #20;
r = 1'b1; s = 1'b0; #20;
r = 1'b1; s = 1'b1; #20;
$finish;
end
  
always@(e) begin
e <= #3 ~e;
end

endmodule