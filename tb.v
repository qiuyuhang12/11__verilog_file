/*
    ans:
    00000000000000000000000000000011
*/

`include "test.v"

module top_module();
    reg     [31:0]      in0;
    reg     [31:0]      in1;
    wire    [31:0]      sum;
    wire    [31:0]      ddsf;


    parameter aa=32'b101010101010;
    parameter bb=32'b010101010011;

    // parameter aa=32'b10;
    // parameter bb=32'b11;

    initial begin
        assign in0 = aa;
        assign in1 = bb;
    end

    Add a(
        .a          (in0),
        .b          (in1),
        .sum        (sum)
    );

    initial begin
        #10; // 等待 10 个时间单位
        $display("%b", sum);
        $display("%b", aa + bb);
    end
endmodule