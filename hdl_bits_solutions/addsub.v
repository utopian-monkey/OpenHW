module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire w;
    wire [31:0] w1;
    assign w1 = b^{32{sub}};
    add16 a1(a[15:0],w1[15:0],sub,sum[15:0],w);
    add16 a2(a[31:16],w1[31:16],w,sum[31:16]);
endmodule
