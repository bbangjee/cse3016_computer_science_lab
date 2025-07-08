`timescale 1ns / 1ps

module shift(
input clk, rst, in,
output reg [3:0] out
);

initial begin
out = 4'b0;
end

always@(posedge clk) begin
  if(rst == 0)
    out <= 4'b0;
  else begin
    out <= out >> 1;
    out[3] <= in;
  end
end
endmodule
