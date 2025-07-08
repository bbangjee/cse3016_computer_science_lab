`timescale 1ns / 1ps

module paritycheck_odd_tb;
reg a, b, c, d, p;
wire pec;

paritycheck_odd test(
  .a(a),
  .b(b),
  .c(c),
  .d(d), 
  .p(p),

  .pec(pec)
);
    
initial begin
a = 1'b0;
b = 1'b0;
c = 1'b0;
d = 1'b0;
p = 1'b0;
#320
$finish;
end

always@(a or b or c or d or p) begin
a <= #160 ~a;
b <= #80 ~b;
c <= #40 ~c;
d <= #20 ~d;
p <= #10 ~p;
end
endmodule
