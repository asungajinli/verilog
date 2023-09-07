`timescale 1ns / 1ps

module D_latch(
    input D,
    input enable,
    output reg Q
    );

    always @(D or enable)
        begin 
            if(enable) Q=D;
            else Q=Q;
        end
endmodule