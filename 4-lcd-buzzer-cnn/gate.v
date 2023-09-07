//and게이트
module and_gate(a,b,y);
    input a, b;
    output y;
    
    assign y = a & b;
endmodule

//or게이트
module or_gate(a,b,y);
    input a, b;
    output y;
    
    assign y = a | b;
endmodule

//not게이트
module not_gate(a,y);
    input a;
    output y;
    
    assign y = ~a;
endmodule