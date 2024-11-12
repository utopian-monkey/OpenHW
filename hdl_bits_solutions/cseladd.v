module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w;
    wire [15:0] w1,w2;
    
    add16 a1(a[15:0], b[15:0] , 0, sum[15:0], w);
    add16 a2(a[31:16], b[31:16], 0, w1);
    add16 a3 (a[31:16], b[31:16], 1,w2);
    
    always @(*) begin
        if(w==0)
            sum[31:16] = w1;
        else 
            sum[31:16] = w2;
    end
endmodule
