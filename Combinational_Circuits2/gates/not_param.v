module not_param#(parameter N=4)
(input [N-1:0] a,
output [N-1:0]y);
assign y=~a;
endmodule 
