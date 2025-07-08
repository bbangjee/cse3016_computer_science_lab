`timescale 1ns / 1ps

module mealy_tb;
reg clk,rst, in;
wire [3:0] out;
wire z;
    
mealy test(
.clk(clk), .rst(rst), .in(in), .out(out), .z(z)
);
initial begin
clk = 1'b0;
rst = 1'b1;
in = 1'b0;
#20 in = 1'b1;
#40 in = 1'b0;
#20 in = 1'b1;
#40 in = 1'b0;
#20 in = 1'b1;
#40 in = 1'b0;
#20 in = 1'b1;
#40 in = 1'b0;
#20 in = 1'b1;
#60
$finish;
end
    
always@(clk or rst) begin
rst <= #200 ~rst;
clk <= #10 ~clk;
end
endmodule
