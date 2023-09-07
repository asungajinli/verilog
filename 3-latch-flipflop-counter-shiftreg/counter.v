module cnt4(pr_b,clr_b,clk,q);
    input pr_b;
    input clr_b;
    input clk;
    output [3:0] q;
    reg [3:0] q;
    always @(posedge clk or negedge pr_b or negedge clr_b)
    begin
        if (pr_b == 0) q <= 4'b1111;
        else if (clr_b == 0) q <= 4'b0000;
        else
        begin
            if (q == 4'b1111) q <= 4'b0000;
            else q <= q + 1;
        end
    end
endmodule