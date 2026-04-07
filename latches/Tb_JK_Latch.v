module JK;
reg J,K,EN;
wire q;
JK_Latch uut(J,K,EN,q);
initial
begin
EN=0;J=0;K=0;#10;
EN=0;J=0;K=1;#10;
EN=1;J=0;K=0;#10;
EN=1;J=0;K=1;#10;
EN=1;J=1;K=0;#10;
EN=1;J=1;K=1;#10;
end
initial
begin
$monitor("%b %b %b %b",EN,J,K,q);
end
endmodule
