module tb_sr_latch;
reg S,R;
wire q;
sr_latch uut(S,R,q);
initial
begin
S=0;R=0;#10;
S=0;R=1;#10;
S=1;R=0;#10;
S=1;R=1;#10;
end
initial begin

$monitor("%bS %bR %bq",S,R,q);
end 
endmodule
