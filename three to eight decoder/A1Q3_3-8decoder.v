`include "A1Q3_2-4decoder.v"

module decoder38(en, a, b);
input [2:0] a;
input en;
wire [3:0] d;
output [7:0] b;
reg c = 0;
decoder24 f1 (en, c, a[2], d); //to get d output for using next two 2-4decoder
decoder24 f2 (d[0], a[1], a[0], b[3:0]);
decoder24 f3 (d[1], a[1], a[0], b[7:4]);

endmodule