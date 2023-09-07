`timescale 1ns/1ps
module mux_4x1_tb();
    reg [3:0] a1, a2, a3, a4; reg [1:0] s;
    wire [3:0] d;
    
    mux_4x1 uut (
        .a1(a1), .a2(a2), .a3(a3), .a4(a4),
        .s(s),
        .d(d)
    );
    initial
        begin
            a1 = 0; a2 = 0; a3 = 0; a4 = 0; s = 0;
            #100;
            s = 2'b00; a1 = 3; a2 = 4; a3 = 5; a4 = 6; #200;
            s = 2'b01; a1 = 4; a2 = 5; a3 = 6; a4 = 7; #200;
            s = 2'b10; a1 = 5; a2 = 6; a3 = 7; a4 = 8; #200;
            s = 2'b11; a1 = 6; a2 = 7; a3 = 8; a4 = 9; #200;
            $finish;
        end
endmodule

`timescale 1ns/1ps
module demux_1x4_tb();
    reg [3:0] a; reg [1:0] s;
    wire [3:0] d1, d2, d3, d4;
    demux_1x4 uut (
        .a(a),
        .s(s),
        .d1(d1), .d2(d2), .d3(d3), .d4(d4)
    );
    initial
        begin
            a = 0; s = 0;
            #100;
            s = 2'b00; a = 3; #200;
            s = 2'b01; a = 4; #200;
            s = 2'b10; a = 5; #200;
            s = 2'b11; a = 6; #200;
            $finish;
        end
endmodule