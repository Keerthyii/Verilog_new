module tb_half_subtractor_data;
reg a,bin;
wire d,bout;
half_subtractor_data dut(
    .a(a),
    .bin(bin),
    .d(d),
    .bout(bout)
);

initial
begin
    $display("a bin | d bout");
    $monitor("%b  %b  | %b   %b", a, bin, d, bout);

    a=0; bin=0; #10;
    a=0; bin=1; #10;
    a=1; bin=0; #10;
    a=1; bin=1; #10;
    $finish;
end

initial
begin
    $dumpfile("half_subtractor_data.vcd");
    $dumpvars(0, tb_half_subtractor_data);
end

endmodule
