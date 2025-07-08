`timescale 1ns / 1ps

module paritygen_tb;
reg a , b, c, d;
wire e;

paritygen test(
  .a(a),
  .b(b),
  .c(c),
  .d(d),

  .e(e)      
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
