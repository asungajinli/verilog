module half_adder(
    input a,
    input b,
    output s,
    output c );
    
    assign s = a ^ b;
    assign c = a & b;
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
    end
endmodule