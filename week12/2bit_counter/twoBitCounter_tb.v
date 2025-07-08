`timescale 1ns / 1ps

module twoBitCounter_tb;
reg clk, rst;
wire z; 
wire [1:0] out;

twoBitCounter test(
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
