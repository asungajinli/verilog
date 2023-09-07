//and게이트
`timescale 1ns / 1ps

module and_tb();
    reg a, b;
    wire y;
    
    and_gate uut( //uut로 and_gate 인스턴스화
        .a(a), .b(b),
        .y(y));
    
    initial begin
        a = 0; b = 0; // a와 b를 초기화
        #1000 $stop; end //1000시간동안 실행 후 멈추고 시뮬레이션 중지
    always #50 a = ~a; //50시간마다 a를 반전
    always #100 b = ~b;//100시간마다 b를 반전
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