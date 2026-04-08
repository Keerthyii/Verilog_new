module gated_sr_latch_tb;

reg S, R, EN;     
wire Q;           
gated_sr_latch uut (
    .S(S),
    .R(R),
    .EN(EN),
    .q(Q)
);

initial
begin
    EN = 0; S = 0; R = 0; #10;
    EN = 0; S = 1; R = 0; #10;

    EN = 1; S = 1; R = 0; #10; 
    EN = 1; S = 0; R = 0; #10; 
    EN = 1; S = 0; R = 1; #10;  
    EN = 1; S = 0; R = 0; #10; 

    EN = 1; S = 1; R = 1; #10;

    $finish;
end

// Monitor output
initial
begin
    $monitor("%b  %b %b | %b", EN, S, R, Q);
end

endmodule
