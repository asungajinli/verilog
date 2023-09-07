/*
module fulladder_2bit(a, b, carry_in, sum, carry_out);
input a;
input b;
input carry_in;
output sum;
output carry_out;
wire [2:0] d_in;
reg [1:0] d_out;
assign d_in= {carry_in, a, b};
assign carry_out= d_out[1];
assign sum= d_out[0];
always@(d_in)
	case(d_in)
	3'b000 : d_out= 2'b00;
	3'b001 : d_out= 2'b01;
	3'b010 : d_out= 2'b01;
	3'b011 : d_out= 2'b10;
	3'b100 : d_out= 2'b01;
	3'b101 : d_out= 2'b10;
	3'b110 : d_out= 2'b10;
	default: d_out= 2'b11;
	endcase
endmodule
*/
module fulladder_2bit(
    input a,
    input b,
    input cin,
    output s,
    output cout );
    reg s, cout;
    
    always @(a, b, cin)
    begin
        if (a == 0 && b == 0 && cin == 0) begin s = 0; cout = 0; end
        else if (a == 0 && b == 0 && cin == 1) begin s = 1; cout = 0; end
        else if (a == 0 && b == 1 && cin == 0) begin s = 1; cout = 0; end
        else if (a == 0 && b == 1 && cin == 1) begin s = 0; cout = 1; end
        else if (a == 1 && b == 0 && cin == 0) begin s = 1; cout = 0; end
        else if (a == 1 && b == 0 && cin == 1) begin s = 0; cout = 1; end
        else if (a == 1 && b == 1 && cin == 0) begin s = 0; cout = 1; end
        else if (a == 1 && b == 1 && cin == 1) begin s = 1; cout = 1; end
    end
endmodule

module fulladder_4bit(a, b, s, c);
    input [3:0] a;
    input [3:0] b;
    output [3:0] s;
    output c;
    wire [4:0] TmpCarry;
    wire [3:0] TmpSum;
    
    assign TmpCarry[0] = 0;
    fulladder_2bit Bit_one(.a(a[0]), .b(b[0]), .cin(TmpCarry[0]), .s(TmpSum[0]), .cout(TmpCarry[1]));
    fulladder_2bit Bit_two(.a(a[1]), .b(b[1]), .cin(TmpCarry[1]), .s(TmpSum[1]), .cout(TmpCarry[2]));
    fulladder_2bit Bit_three(.a(a[2]), .b(b[2]), .cin(TmpCarry[2]), .s(TmpSum[2]), .cout(TmpCarry[3]));
    fulladder_2bit Bit_four(.a(a[3]), .b(b[3]), .cin(TmpCarry[3]), .s(TmpSum[3]), .cout(TmpCarry[4]));
    
    assign s = TmpSum;
    assign c = TmpCarry[4];

endmodule