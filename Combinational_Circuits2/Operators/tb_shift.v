module tb_shift_op;
reg  [3:0] a;
wire [3:0] left_shift;
wire [3:0] right_shift;
shift_op uut(a,left_shift,right_shift);
initial
begin
    $dumpfile("shift.vcd");
    $dumpvars(0,tb_shift_op);

    $monitor("a=%b left_shift=%b right_shift=%b",
              a,left_shift,right_shift);
    #10 a = 4'b1010;
    #10 a = 4'b1100;
    #10 a = 4'b0111;
    #10 a = 4'b1001;
    #10 $finish;
end

endmodule
