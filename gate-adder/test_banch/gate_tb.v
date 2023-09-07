//and게이트
`timescale 1ns / 1ps

module and_tb();
    reg a, b;
    wire y;
    
    and_gate uut(
        .a(a), .b(b),
        .y(y));
    
    initial begin
        a = 0; b = 0;
        #1000 $stop; end
    always #50 a = ~a;
    always #100 b = ~b;
endmodule

//or게이트
`timescale 1ns / 1ps

module or_tb();
    reg a, b;
    wire y;
    
    or_gate uut(
        .a(a), .b(b),
        .y(y));
        
    initial begin
        a = 0; b = 0;        
        #1000 $stop; end
    always #50 a = ~a;
    always #100 b = ~b;
endmodule

//not게이트
`timescale 1ns / 1ps

module not_tb();
    reg a;
    wire y;
    
    not_gate uut(
        .a(a),
        .y(y));
        
    initial begin
        a = 0;        
        #1000 $stop; end
    always #50 a = ~a;
endmodule