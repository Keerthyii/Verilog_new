module tb_SR_JK_FF;
reg clk,J, K;
wire q;
integer x,y;
SR_JK_FF2 uut (
    .clk(clk),
    .J(J),
    .K(K),
    .q(q)
);
always #5 clk=~clk;
initial begin
    clk =0;
    J=0;
    K=0;
    #10;
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_SR_JK_FF);
    $display("clk  J K | q");
    $monitor("%b  %b %b | %b",clk,J,K,q);
    for(x=0;x<2;x=x+1) begin
	    J=x;
	    for(y=0;y<2;y=y+1) begin
		K=y;
		#10;
	    end
    end
    #20 $finish;

end

endmodule 
