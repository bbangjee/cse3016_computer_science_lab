`timescale 1ns / 1ps

module updown_tb;
reg clk, rst, updown;
wire [3:0] out;
wire a, b, c, d, e, f, g, dp, digit;

updown test(
.clk(clk), .rst(rst), .updown(updown),

.out(out), .a(a), .b(b), .c(c), .d(d),
.e(e), .f(f), .g(g), .dp(dp), .digit(digit)
);

initial begin
clk = 1'b0;
rst = 1'b1;
updown = 1'b0;
#160
$finish;
end
    
always@(clk or rst or updown) begin
rst <= #140 ~rst;
clk <= #1 ~clk;
updown <= #40 ~updown;
end
endmodule
