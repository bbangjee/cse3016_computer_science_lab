`timescale 1ns / 1ps

module fulladder_tb;
reg a, b, cin;
wire s, cout;
    
fulladder test(
  .a(a),
  .b(b),
  .cin(cin),

  .s(s),
  .cout(cout)
);

initial begin
  cin = 1'b0;
  b = 1'b0;
  a = 1'b0;
  #160
  $finish;
end
        
always@(cin or b or a)begin
  cin <= #80 ~cin;
  b <= #40 ~b;
  a <= #20 ~a;
end
    
endmodule