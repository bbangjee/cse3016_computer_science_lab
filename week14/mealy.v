`timescale 1ns / 1ps

module mealy(
input clk,rst, in,
output reg [3:0] out,
output reg z
);

initial begin
out = 4'b0;
z = 1'b0;
end

always@(posedge clk) begin
  if (rst == 0) begin
    out <= 4'b0;
    z <= 1'b0;
  end

  else begin
    out <= out >> 1;
    out[3] <= in;
    if (out == 4'b0110 && in == 1) 
      z <= 1'b1;
    else
      z <= 1'b0;
  end
end

endmodule