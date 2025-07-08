`timescale 1ns / 1ps

module ring_tb;
reg clk, rst;
wire [3:0]out;

ring test(
  .clk(clk),
  .rst(rst),

  .out(out)
);

initial begin
  clk = 1'b0;
  rst = 1'b1;
  #200
  $finish;
end

always@(clk or rst) begin
  rst <= #100 ~rst;
  clk <= #10 ~clk;
end
endmodule
