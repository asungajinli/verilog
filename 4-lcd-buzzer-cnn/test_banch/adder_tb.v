`timescale 1ns / 1ps

module half_adder_tb();
    reg a, b;
    wire s, c;
    
    half_adder uut (
        .a(a), .b(b),
        .s(s), .c(c)
    );
    
    initial begin
        a = 0; b = 0;
    #1000 $stop;
    end
    
    always #50 a = ~a;
    always #100 b = ~b;
endmodule

`timescale 1ns/1ps

module full_adder_tb();
    reg a; reg b; reg cin;
    wire s; wire cout;
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .cout(cout)
        );
    initial begin
        a = 0; b = 0; cin = 0; #1000 $stop ;
    end
    
    always #200 a = ~a;
    always #100 b = ~b;
    always #50 cin = ~cin;
endmodule