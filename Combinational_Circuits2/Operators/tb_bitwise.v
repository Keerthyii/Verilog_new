module tb_bitwise;

reg  [3:0] a,b;
wire [3:0] andd,orr,nott;
bitwise uut(a,b,andd,orr,nott);
initial
begin
    $dumpfile("bitwise.vcd");
    $dumpvars(0,tb_bitwise);

    $monitor("a=%b b=%b and=%b or=%b not=%b",
              a,b,andd,orr,nott);

    #10 a=4'b1010; b=4'b1100;
    #10 a=4'b1111; b=4'b0011;
    #10 a=4'b0101; b=4'b1010;
    #10 $finish;
end

endmodule
