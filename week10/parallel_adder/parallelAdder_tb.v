`timescale 1ns / 1ps

module parallelAdder_tb;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] s;
wire cout;

parallelAdder test (
.a(a),
.b(b),
.cin(cin),
.s(s),
.cout(cout)
);
    
initial begin
a = 4'b0000;
b = 4'b0000;
cin = 1'b0;
#512
$finish;
end

always @(cin or a or b) begin
a[3] <= #256 ~a[3];
a[2] <= #128 ~a[2];
a[1] <= #64 ~a[1];
a[0] <= #32 ~a[0];
b[3] <= #16 ~b[3];
b[2] <= #8 ~b[2];
b[1] <= #4 ~b[1];
b[0] <= #2 ~b[0];
cin <= #1 ~cin;
end

endmodule