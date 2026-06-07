module param_ff#(parameter N=4)
(input clk,
input [N-1:0]d,
output reg [N-1:0]q);
always@(posedge clk)
q<=d;
endmodule 
