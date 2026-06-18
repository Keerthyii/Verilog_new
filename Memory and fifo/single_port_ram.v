module single_port_ram(input [7:0] data_in,
                       input [5:0] addr,
                       input clk,
                       input we,
                       output [7:0] data_out);
reg [5:0] addr_reg;
reg [7:0] Ram [63:0];
always @(posedge clk)
if(we)
Ram[addr]<=data_in;
else 
addr_reg<=addr;
assign data_out=addr_reg;
endmodule

