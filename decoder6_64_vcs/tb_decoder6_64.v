module tb_decoder6_64;

parameter CLK_HALF_PERIOD   = 1;
parameter CLK_PERIOD        = 2 * CLK_HALF_PERIOD;

reg clk;
reg en;
reg [5:0] A;
wire [63:0] Y;
decoder6_64 DUT(
    .en(en),
    .A(A),
    .Y(Y)
);

// T?o xung d?ng h?
always begin
    #CLK_HALF_PERIOD clk = ~clk;
end
initial begin
    // Kh?i t?o tín hi?u
    clk = 0;
    en = 0;
    A = 6'b000000;
    
    // Ki?m tra các tru?ng h?p d?u vào
    #(4*CLK_PERIOD) en = 1;
    #(CLK_PERIOD) A = 6'b000000;
    #(CLK_PERIOD) A = 6'b000001;
    #(CLK_PERIOD) A = 6'b000010;
    #(CLK_PERIOD) A = 6'b000011;
    #(2*CLK_PERIOD) en = 0;

    #(2*CLK_PERIOD) A = 6'b000100;
    #(CLK_PERIOD) A = 6'b000101;
    #(CLK_PERIOD) A = 6'b000110;
    #(CLK_PERIOD) A = 6'b000111;

    #(CLK_PERIOD)$finish;
end

endmodule : tb_decoder6_64
