module tb_fullsubtractor;

reg a, bin, c;
wire d, bout;

// Instantiate the design
full_subtractor uut(a, bin, c, d, bout);

initial begin
    $monitor("A=%b Bin=%b C=%b | D=%b Bout=%b", a, bin, c, d, bout);

    a=0; bin=0; c=0; #10;
    a=0; bin=0; c=1; #10;
    a=0; bin=1; c=0; #10;
    a=0; bin=1; c=1; #10;
    a=1; bin=0; c=0; #10;
    a=1; bin=0; c=1; #10;
    a=1; bin=1; c=0; #10;
    a=1; bin=1; c=1; #10;

    $finish;
end

endmodule
