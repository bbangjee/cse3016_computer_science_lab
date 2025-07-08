`timescale 1ns / 1ps

module booleanOneA(
    input a, b, c,
    output output1
    );
    
    assign output1 = (~a|~b)&~c;
endmodule