module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
 wire w1;
    add16 a1(a[15:0],b[15:0],0,sum[15:0],w1);
    //no need for cout in the second adder, so no initialisation for the cout
    add16 a2(a[31:16],b[31:16],w1,sum[31:16]);   
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
assign sum = a+b+cin;
    assign cout = cin&(a^b)|(a&b);
endmodule
