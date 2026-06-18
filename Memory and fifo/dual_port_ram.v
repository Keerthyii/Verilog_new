module dual_port_ram(input [7:0] data_in,
                     input [5:0] write_addr,
                     input [5:0] read_addr,
                     input clk,
                     input we,
                     output [7:0] data_out);

reg [7:0] ram [63:0];
reg [5:0]read_addr_reg;

always@(posedge clk)
begin
if(we)
  ram[write_addr]<= data_in;
read_addr_reg<=read_addr;
end
assign data_out=ram[read_addr_reg];
endmodule
                     
                  
