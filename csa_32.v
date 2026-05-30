module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
wire c1,c2,cout;
wire [15:0]sum0,sum1;
add16 t1(a[15:0],b[15:0],1'b0,sum[15:0],cout);
add16 t2(a[31:16],b[31:16],1'b0,sum0,c1);
add16 t3(a[31:16],b[31:16],1'b1,sum1,c2);

assign sum[31:16] = cout ? sum1 : sum0;
		

endmodule


