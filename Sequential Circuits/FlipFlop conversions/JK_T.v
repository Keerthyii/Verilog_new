module JK_T(input clk,rst,T,output reg q,output qbar);

	reg J,K;
        assign qbar=~q;
always@(posedge clk)begin
		J=T;
		K=T;
	case ({J,K})
        2'b00: q <= q;    
        2'b01: q <= 1'b0;
        2'b10: q <= 1'b1; 
        2'b11: q <= ~q;   
	endcase
end 
endmodule

