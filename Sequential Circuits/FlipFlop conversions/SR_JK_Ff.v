module SR_JK_FF(input clk,J,K,output reg q);
	reg S,R;
always@(posedge clk)begin
		S=J&~q;
		R=K&q;
	case({J,K})
		2'b00: q=q;
		2'b01: q=0;
		2'b10: q=1;
		2'b11: q=~q;
	endcase
end 
endmodule

