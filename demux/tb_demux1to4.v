module tb_demux1to4;

reg a, s0, s1;
wire y0, y1, y2, y3;
demux1to4 uut (
    .a(a),
    .s0(s0),
    .s1(s1),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin
    $display("a s1 s0 | y0 y1 y2 y3");
    $monitor("%b %b  %b | %b  %b  %b  %b", a, s0, s1, y0, y1, y2, y3);

    a = 1; s0 = 0; s1 = 0;   
    #10 a = 1; s0 = 0; s1 = 1; 
    #10 a = 1; s0 = 1; s1 = 0; 
    #10 a = 1; s0 = 1; s1 = 1; 
    #10 a = 0; s0 = 0; s1 = 0;
    #10 a = 0; s0 = 1; s1 = 1;

    #10 $finish;
end

endmodule
