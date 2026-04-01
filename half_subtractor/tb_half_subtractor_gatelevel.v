module tb_half_subtractor;

reg A, B;              
wire diff, borrow;     
halfsubtractor uut(A, B, diff, borrow);

initial begin
    $monitor("A=%b B=%b | Diff=%b Borrow=%b", A, B, diff, borrow);
    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end

endmodule
