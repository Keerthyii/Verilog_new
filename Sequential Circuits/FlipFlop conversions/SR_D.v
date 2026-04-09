module SR_D(input clk, rst,D, output reg q,output qbar);

wire S,R;

assign qbar = ~q;
assign S = D;
assign R = ~D;

always @(posedge clk)
begin
    if (rst)
        q <= 1'b0;
    else if (S==0 && R==0)
        q <= q;
    else if (S==0 && R==1)
        q <= 1'b0;
    else if (S==1 && R==0)
        q <= 1'b1;
    else
        q <= 1'bx;
end

endmodule
