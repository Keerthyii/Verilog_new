module tb_encoder_4to2;
reg D0, D1, D2, D3;
wire Y1, Y0;
encoder_4to2_gl uut(
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .Y1(Y1),
    .Y0(Y0)
);
initial begin
    $display("D3 D2 D1 D0 | Y1 Y0");
    $monitor(" %b  %b  %b  %b  |  %b  %b", D3, D2, D1, D0, Y1, Y0);

    D0=1; D1=0; D2=0; D3=0; #10;   // 00
    D0=0; D1=1; D2=0; D3=0; #10;   // 01
    D0=0; D1=0; D2=1; D3=0; #10;   // 10
    D0=0; D1=0; D2=0; D3=1; #10;   // 11

    $finish;
end

endmodule
