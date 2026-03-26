module gl_g(
    input A,
    input B,
    output AND1,
    output OR1,
    output NAND1,
    output NOR1,
    output XOR1,
    output XNOR1,
    output NOTA,
    output NOTB
);

and   g1 (AND1, A, B);
or    g2 (OR1, A, B);
nand  g3 (NAND1, A, B);
nor   g4 (NOR1, A, B);
xor   g5 (XOR1, A, B);
xnor  g6 (XNOR1, A, B);
not   g7 (NOTA, A);
not   g8 (NOTB, B);

endmodule
