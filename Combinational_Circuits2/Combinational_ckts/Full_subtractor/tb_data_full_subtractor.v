module tb_data_full_subtractor;
reg a,bin,cin;
wire d,bout;
data_full_subtractor uut(a,bin,cin,d,bout);
initial
begin
$monitor("a=%b bin=%b cin=%b d=%b bout=%b",a,bin,cin,d,bout);
#10;a=0;bin=0;cin=0;
#10;a=0;bin=0;cin=1;
#10;a=0;bin=1;cin=0;
#10;a=0;bin=1;cin=1;
#10;a=1;bin=0;cin=0;
#10;a=1;bin=0;cin=1;
#10;a=1;bin=1;cin=0;
#10;a=1;bin=1;cin=1;
$finish;
end
endmodule

