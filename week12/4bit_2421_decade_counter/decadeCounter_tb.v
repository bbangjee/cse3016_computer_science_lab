`timescale 1ns / 1ps

module decadeCounter_tb;
reg clk, rst;
wire z; 
wire [3:0] out;

decadeCounter test(
  .clk(clk),
  .rst(rst),
  
  .z(z),
  .out(out)
);

initial begin
  clk = 1'b0;
  rst = 1'b0;
  #160
  $finish;
end

always@(clk or rst) begin
  rst <= #20 ~rst;
  clk <= #1 ~clk;
end

endmodule
