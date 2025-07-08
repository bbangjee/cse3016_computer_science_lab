`timescale 1ns / 1ps

module twoBitCounter(
  input clk, rst,
  output reg z, reg [1:0] out
);

initial begin
  out = 2'b0;
  z = 1'b0;
end

always @(posedge clk) begin
  if (rst == 0) begin
    out <= 2'b0;
    z <= 1'b0;
  end

  else begin
    if((out[0] && out[1])) begin
      // output a, b가 둘 다 1, 1일 경우
      z <= 1'b1;
      out <= 2'b0;
    end

    else begin
      out <= out+1;
      z <= 1'b0;
    end
  end
end

endmodule