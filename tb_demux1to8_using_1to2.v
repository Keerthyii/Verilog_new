module tb_demux1to8; 

reg a, s2, s1, s0;
wire y0, y1, y2, y3, y4, y5, y6, y7;

demux1to8 uut (
    .a(a),
    .s2(s2),
    .s1(s1),
    .s0(s0),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6),
    .y7(y7)
);

initial begin
    $display("a s2 s1 s0 | y0 y1 y2 y3 y4 y5 y6 y7");
    $monitor("%b  %b  %b  %b | %b  %b  %b  %b  %b  %b  %b  %b",
              a, s2, s1, s0, y0, y1, y2, y3, y4, y5, y6, y7);

    a = 1; s2 = 0; s1 = 0; s0 = 0;   // y0 = 1
    #10 a = 1; s2 = 0; s1 = 0; s0 = 1; // y1 = 1
    #10 a = 1; s2 = 0; s1 = 1; s0 = 0; // y2 = 1
    #10 a = 1; s2 = 0; s1 = 1; s0 = 1; // y3 = 1
    #10 a = 1; s2 = 1; s1 = 0; s0 = 0; // y4 = 1
    #10 a = 1; s2 = 1; s1 = 0; s0 = 1; // y5 = 1
    #10 a = 1; s2 = 1; s1 = 1; s0 = 0; // y6 = 1
    #10 a = 1; s2 = 1; s1 = 1; s0 = 1; // y7 = 1

    // check input 0 case
    #10 a = 0; s2 = 0; s1 = 0; s0 = 0;
    #10 a = 0; s2 = 1; s1 = 1; s0 = 1;

    #10 $finish;
end

endmodule
