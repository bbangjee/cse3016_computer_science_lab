`timescale 1ns / 1ps
module updown(
input clk, rst, updown,
output reg [3:0] out,
output reg a, b, c, d, e, f, g, dp, digit
);
initial begin
  a = 0;
  b = 1;
  c = 1;
  d = 1;
  e = 1;
  f = 0;
  g = 1;
  dp = 0;
  digit = 1;
  out = 4'b0;
end
always@(posedge clk) begin
  if(rst == 0) begin
    out <= 0;
    f <= 0;
    g <= 1;
  end
  else if(updown) begin
    // up mode
    f <= 1;
    g <= 0;
    out <= out + 1;
  end
  else begin
    // down mode
    f <= 0;
    g <= 1;
    out <= out - 1;
  end
end
endmodule