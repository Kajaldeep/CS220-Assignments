module encoder38 (d,q);

output [2:0] q;
input [7:0] d;
//assigning values from truth table for 3-bit output using gates
assign q[2] = ((d[7]) | (d[6]) | (d[5]) | (d[4])) & ((~d[3]) & (~d[2])) & ((~d[1]) & (~d[0]));
assign q[1] = ((d[3] | d[2]) & ((~d[1]) & (~d[0]))) | ((d[7] | d[6]) & ((~d[5]) & (~d[4]) & (~d[3]) & (~d[2]) & (~d[1]) & (~d[0])));
assign q[0] = (d[1] & (~d[0])) | (d[3] & (~d[2]) & (~d[1]) & (~d[0])) | (d[5] & (~d[4]) & (~d[3]) & (~d[2]) & (~d[1]) & (~d[0])) | (d[7] & (~d[6]) & (~d[5]) & (~d[4]) & (~d[3]) & (~d[2]) & (~d[1]) & (~d[0]));

endmodule