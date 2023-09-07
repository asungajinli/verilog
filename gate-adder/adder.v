module half_adder(
    input a,
    input b,
    output s,
    output c );
    
    assign s = a ^ b; // 입력 a과 b를 XOR하여 s에 출력
    assign c = a & b; // 입력 a과 b를 AND하여 c에 출력
endmodule

module full_adder (
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
    end // 조건문을 통해 각각의 입력 값 상황에 따라 출력 값을 기술
endmodule