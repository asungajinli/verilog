module mux_4x1 (s, a1, a2, a3, a4, d);
    input [1:0] s;
    input [3:0] a1, a2, a3, a4;
    output [3:0] d;
    reg [3:0] d;
    
    always @(s or a1 or a2 or a3 or a4)
    begin
        case (s)
            0 : d = a1;
            1 : d = a2;
            2 : d = a3;
            3 : d = a4;
            default: d = 4'bx;
        endcase
    end
endmodule

module demux_1x4 (s, a, d1, d2, d3, d4);
    input [1:0] s;
    input [3:0] a;
    output [3:0] d1, d2, d3, d4;
    reg [3:0] d1, d2, d3, d4;
    
    always @(s or a)
    begin
        case (s)
            0 : begin d1 = a; d2 = 4'b0; d3 = 4'b0;d4 = 4'b0; end
            1 : begin d1 = 4'b0; d2 = a; d3 = 4'b0; d4 = 4'b0; end
            2 : begin d1 = 4'b0; d2 = 4'b0; d3 = a; d4 = 4'b0; end
            3 : begin d1 = 4'b0; d2 = 4'b0; d3 = 4'b0; d4 = a; end
        endcase
    end
endmodule
