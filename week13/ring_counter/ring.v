`timescale 1ns / 1ps

module ring(
input clk, rst,
output reg [3:0] out
);

initial begin
out = 4'b1010;
end

always@(posedge clk) begin
  if (rst == 0)
    out <= 4'b1010;
  else begin
    out <= out >> 1;
    out[3] <= out[0];
  end
end
endmodule