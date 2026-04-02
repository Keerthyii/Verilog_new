module tb_decoder3to8;

reg a2, a1, a0;
wire y0,y1,y2,y3,y4,y5,y6,y7;

decoder3to8 uut(a2, a1, a0, y0,y1,y2,y3,y4,y5,y6,y7);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_decoder3to8);
    a2=0; a1=0; a0=0; #10;
    a2=0; a1=0; a0=1; #10;
    a2=0; a1=1; a0=0; #10;
    a2=0; a1=1; a0=1; #10;
    a2=1; a1=0; a0=0; #10;
    a2=1; a1=0; a0=1; #10;
    a2=1; a1=1; a0=0; #10;
    a2=1; a1=1; a0=1; #10;

    $finish;
end

initial begin
    $monitor("a2=%b a1=%b a0=%b | y0=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b",
              a2,a1,a0,y0,y1,y2,y3,y4,y5,y6,y7);
end

endmodule
