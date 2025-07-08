`timescale 1ns / 1ps

module shift_tb;
reg clk, rst, in; 
wire [3:0] out;

shift test(
  .clk(clk),
  .rst(rst),
  .in(in),

  .out(out)
);

initial begin
  clk = 1'b0;
  rst = 1'b0;
  in = 1'b0;
  #160
  $finish;
end

always@(clk or rst or in) begin
  rst <= #100 ~rst;
  clk <= #1 ~clk;
  in <= #9 ~in;
end

endmodule