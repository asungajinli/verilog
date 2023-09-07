module D_ff (
    input clk,
    input d,
    input pr_b,
    input clr_b,
    output q );
    reg q;
    always @(posedge clk or negedge pr_b or negedge clr_b)
    begin
        if (pr_b == 0) q <= 1;
        else if (clr_b == 0) q <= 0;
        else q <= d;
    end
endmodule