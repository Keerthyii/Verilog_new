module tb_dual_port_ram;
reg [7:0] data_in;
reg [5:0] write_addr;
reg [5:0] read_addr;
reg clk;
reg we;
wire [7:0] data_out;

dual_port_ram uut(data_in,write_addr,read_addr,clk,we,data_out);
always #5 clk=~clk;
initial
begin
$monitor("time= %b data_in=%b write_addr=%b read_addr=%b clk=%b we=%b data_out=%b",$time,data_in,write_addr,read_addr,clk,we,data_out);
clk=0;
write_addr=0;
read_addr=0;
data_in=0;

#10;data_in=8'b10101010;
we=1;
write_addr=6'd6;
read_addr=6'd12;

#10;we=0;
read_addr=6'd6;

#10;
$finish;
end
endmodule
