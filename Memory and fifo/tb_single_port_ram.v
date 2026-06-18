module tb_single_port_ram;
reg [7:0]data_in;
reg  [5:0] addr;
reg clk;
reg we;
wire [7:0] data_out;
single_port_ram uut(data_in,addr,clk,we,data_out);
always #5 clk=~clk;
initial
begin

$monitor("time =%b data_in=%b addr=%b we=%b data_out=%b",$time,data_in,addr,we,data_out);

clk=0;
addr=0;
we=0;
data_in=0;

#10;clk=1;
addr=6'd8;
data_in=8'b10001000;
we=1;

#10;clk=1;
we=0;
addr=6'd8;
end
endmodule
