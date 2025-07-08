`timescale 1ns / 1ps

module moore(
input clk, rst, in, 
output reg [4:0] out,
output reg z
);

initial begin
out = 5'b0;
z = 1'b0;
end

always @(posedge clk)begin
  if (rst == 1) begin
    z = 1'b0;
    out = 5'b0;
  end

  else begin
    if (out == 5'b10101)
      z = 1'b1;
    else
      z = 1'b0;
    out = out << 1;
    out[0] = in;
  end
end
endmodule