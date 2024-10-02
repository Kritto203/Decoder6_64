module decoder6_64 (
    input SCANINPORT,SE,
    output SCANOUTPORT,
    input wire en,
    input wire [5:0] A,
    output reg [63:0] Y
);

wire [7:0] c;

// Module decoder3_8 không có tín hi?u clk
 decoder3_8 U0(.en(en), .A(A[2:0]), .Y(c));
 decoder3_8 U1(.en(c[0]), .A(A[5:3]), .Y(Y[7:0]));
 decoder3_8 U2(.en(c[1]), .A(A[5:3]), .Y(Y[15:8]));
 decoder3_8 U3(.en(c[2]), .A(A[5:3]), .Y(Y[23:16]));
 decoder3_8 U4(.en(c[3]), .A(A[5:3]), .Y(Y[31:24]));
 decoder3_8 U5(.en(c[4]), .A(A[5:3]), .Y(Y[39:32]));
 decoder3_8 U6(.en(c[5]), .A(A[5:3]), .Y(Y[47:40]));
 decoder3_8 U7(.en(c[6]), .A(A[5:3]), .Y(Y[55:48]));
 decoder3_8 U8(.en(c[7]), .A(A[5:3]), .Y(Y[63:56]));

 endmodule
