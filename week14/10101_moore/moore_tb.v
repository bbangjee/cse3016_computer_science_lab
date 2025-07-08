`timescale 1ns / 1ps

module moore_tb;
reg clk, rst, in;
wire [4:0] out;
wire z;

moore test (.clk(clk), .rst(rst), .in(in), .out(out), .z(z));

initial begin
clk = 1'b0;
rst = 1'b0;
in = 1'b0;
#10 in = 1'b1;
#20 in = 1'b0;
#20 in = 1'b1;
#20 in = 1'b0;
#20 in = 1'b1;
#20 in = 1'b0;
#40 in = 1'b0; rst = 1'b1;
#10 in = 1'b1; rst = 1'b0;
#20 in = 1'b0;
#20 in = 1'b1;
#20 in = 1'b0;
#20 in = 1'b1;
#20 in = 1'b0;
#20 in = 1'b1;
#20 in = 1'b0;
$finish;
end

always@(clk) begin
  clk <= #10 ~clk;
end
endmodule