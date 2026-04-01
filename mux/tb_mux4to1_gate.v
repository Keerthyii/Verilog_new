module tb_mux4to1_gl;

reg a, b, c, d;
reg s1, s0;
wire y;
mux4to1_gl uut(a, b, c, d, s1, s0, y);
initial begin
    $monitor("a=%b b=%b c=%b d=%b s1=%b s0=%b | y=%b", a, b, c, d, s1, s0, y);
    a=0; b=1; c=0; d=1;
    s1=0; s0=0; #10;
    s1=0; s0=1; #10;
    s1=1; s0=0; #10;
    s1=1; s0=1; #10;
    a=1; b=0; c=1; d=0;
    s1=0; s0=0; #10;
    s1=0; s0=1; #10;
    s1=1; s0=0; #10;
    s1=1; s0=1; #10;

    $finish;
end

endmodule
