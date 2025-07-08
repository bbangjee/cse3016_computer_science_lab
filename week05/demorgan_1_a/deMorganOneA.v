`timescale 1ns / 1ps

module deMorganOneA(
  input a, b,
  output output1
  );
  
  assign output1 = ~(a|b);

endmodule