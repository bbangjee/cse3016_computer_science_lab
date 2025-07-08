`timescale 1ns / 1ps

module booleanOneB(
    input a, b, c,
    output output2
    );
    
    assign output2 = ~((a&b)|c);
endmodule