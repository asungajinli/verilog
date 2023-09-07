`timescale 1ns / 1ps

module D_latch_tb;

    reg D;
    reg enable;

    wire Q;

    D_latch uut (
            .D(D), 
            .enable(enable), 
            .Q(Q)
        );

    initial begin
        D = 0;
        enable = 0;
        #100;
        #5 D=1'd1; enable=1'd0;
        #5 D=1'd0; enable=1'd1;
        #5 D=1'd1; enable=1'd1;
        #5 D=1'd0; enable=1'd0;
        #5 D=1'd1; enable=1'd0;
    end
endmodule