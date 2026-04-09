module tb_sr_ff;
reg S,R,clk;
wire q;
SR_FF uut(S,R,clk,q);
initial
begin
S=0;R=0;#10;
S=0;R=1;#10;
S=1;R=0;#10;
S=1;R=1;#10;
end
endmodule
