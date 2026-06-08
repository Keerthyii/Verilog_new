module tb_nand_param;

reg  [3:0] a, b;
wire [3:0] y;
nand_param #(4) uut (
    a,
    b,
    y
);

initial
begin
    a = 4'b0000;
    b = 4'b1111;

    $monitor("Time=%0t a=%b b=%b y=%b", $time, a, b, y);

    #10 a = 4'b1101; b = 4'b1111;
    #10 a = 4'b1010; b = 4'b1111;
    #10 a = 4'b1111; b = 4'b1111;
    #10 a = 4'b0011; b = 4'b0101;
    #10 $finish;
end

endmodule
