`timescale 1ns / 1ps

module booleanTwoB(
    input a, b, c,
    output output4
    );
    
    assign output4 = ~((a|b)&c);
endmodule