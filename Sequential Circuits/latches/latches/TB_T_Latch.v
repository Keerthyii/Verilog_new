module t_latch_tb;

reg T, EN,rst;     // inputs
wire Q;        // output

// Instantiate the design
T_Latch uut (
    .t(T),
    .EN(EN),
    .rst(rst),
    .q(Q)
);

initial
begin
    $display(" rst EN T | Q");

    rst=0;EN = 0; T = 0; #10;
    rst=1;EN = 0; T = 1; #10;
    EN = 1; T = 0; #10; 
    EN = 1; T = 1; #10; 
    EN = 1; T = 1; #10;
    EN = 1; T = 0; #10; 

    EN = 0; T = 1; #10; 

    $finish;
end

initial
begin
    $monitor("%b %b  %b | %b",rst, EN, T, Q);
end

endmodule
