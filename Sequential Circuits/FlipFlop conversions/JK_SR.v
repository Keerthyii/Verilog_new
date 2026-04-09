module JK_SR(input clk,S,R,output reg q);
	reg J,K;
always@(posedge clk)begin
		J=S;
		K=R;
	case({S,R})
		2'b00: q=q;
		2'b01: q=0;
		2'b10: q=1;
		2'b11: q=~q;
	endcase
end 
endmodule


