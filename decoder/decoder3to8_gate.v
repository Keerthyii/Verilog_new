module decoder3to8_gate (
    input A,
    input B,
    input C,
    output Y0,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5,
    output Y6,
    output Y7
);

wire A_n, B_n, C_n;

not (A_n, A);
not (B_n, B);
not (C_n, C);

and (Y0, A_n, B_n, C_n);
and (Y1, A_n, B_n, C);
and (Y2, A_n, B,   C_n);
and (Y3, A_n, B,   C);
and (Y4, A,   B_n, C_n);
and (Y5, A,   B_n, C);
and (Y6, A,   B,   C_n);
and (Y7, A,   B,   C);

endmodule
