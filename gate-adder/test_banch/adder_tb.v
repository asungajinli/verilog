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
    end // 초기값 설정
    
    always #200 a = ~a; // 입력 a를 주기 400 ns 클럭으로 정의
    always #100 b = ~b; // 입력 b를 주기 200 ns 클럭으로 정의
    always #50 cin = ~cin; // 입력 cin을 주기 100 ns 클럭으로 정의
endmodule