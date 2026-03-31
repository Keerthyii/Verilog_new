module greater_2bit(
    input [1:0] A,
    input [1:0] B,
    output G
);

assign G = (A > B);

endmodule
