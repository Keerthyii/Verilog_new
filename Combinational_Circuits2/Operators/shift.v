module shift_op(
    input  [3:0] a,
    output [3:0] left_shift,
    output [3:0] right_shift
);

assign left_shift  = a << 1;
assign right_shift = a >> 1;

endmodule
