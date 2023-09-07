`timescale 1ns / 1ps
module decoder_3x8_tb();
    reg [2:0] a;
    wire [7:0] d;
    decoder_3x8 uut (
        .a(a), .d(d)
        );
    initial
        begin
            a = 0;
            #1000 $stop;
        end
    always #200 a[2] = ~a[2];
    always #100 a[1] = ~a[1];
    always #50 a[0] = ~a[0];
endmodule

`timescale 1ns / 1ps
module encoder_8x3_tb();
    reg [7:0] a;
    wire [2:0] d;
    encoder_8x3 uut (
        .a(a), .d(d)
        );
    initial begin
        // Initialize Inputs
        a = 8'b00000000;
        // 
        #100;
        a = 8'b00000001; #100;
        a = 8'b00000010; #100;
        a = 8'b00000100; #100;
        a = 8'b00001000; #100;
        a = 8'b00010000; #100;
        a = 8'b00100000; #100;
        a = 8'b01000000; #100;
        a = 8'b10000000; #100;
        $finish;
    end	
endmodule