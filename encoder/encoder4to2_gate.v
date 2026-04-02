module encoder_4to2_gl (
    input D0, D1, D2, D3,
    output Y1, Y0
);

// OR gates
or g1 (Y1, D2, D3);
or g2 (Y0, D1, D3);

endmodule
