`timescale 1ns / 1ps

module decadeCounter(
  input clk, rst,
  output reg z,
  output reg [3:0] out
);

initial begin
  out = 4'b0;
  z = 1'b0;
end

always @(posedge clk) begin
  if (rst == 0) begin
    out <= 4'b0;
    z <= 1'b0;
  end

  else begin
    if(out == 15) begin
      z <= 1'b1;
      out <= 4'b0;
    end
    else if (out == 4) begin
      out <= ~out;  
    end
    else begin
      out <= out+1;
      z <= 1'b0;
    end
  end
end

endmodule