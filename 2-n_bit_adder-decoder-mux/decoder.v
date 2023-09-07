module decoder_3x8(
    input [2:0] a,
    output [7:0] d
    );
    reg [7:0] d;
    
    always @(a)
    begin
        case(a)
            0 : d = 8'b00000001;
            1 : d = 8'b00000010;
            2 : d = 8'b00000100;
            3 : d = 8'b00001000;
            4 : d = 8'b00010000;
            5 : d = 8'b00100000;
            6 : d = 8'b01000000;
            7 : d = 8'b10000000;
            default : d = 8'bx;
        endcase
    end
endmodule

module encoder_8x3(
    input [7:0] a,
    output [2:0] d
    );
    reg [2:0] d;
    
    always @(a)
    begin
        case(a)
            8'd01 : d = 3'b000;
            8'd02 : d = 3'b001;
            8'd04 : d = 3'b010;
            8'd08 : d = 3'b011;
            8'd16 : d = 3'b100;
            8'd32 : d = 3'b101;
            8'd64 : d = 3'b110;
            8'd128 : d = 3'b111;
            default : d = 3'bx;
        endcase
    end
endmodule