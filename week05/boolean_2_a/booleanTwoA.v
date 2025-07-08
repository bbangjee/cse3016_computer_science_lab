`timescale 1ns / 1ps

module booleanTwoA(
    input a, b, c,
    output output3
    );
    
    assign output3 = (~a&~b)|~c;
endmodule