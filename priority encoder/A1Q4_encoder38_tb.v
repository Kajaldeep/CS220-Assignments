`include "A1Q4_encoder38.v"

module encoder38_tb();
reg [7:0] d;
wire [2:0] q;

encoder38 f (.d(d), .q(q));
initial begin
  // $dumpfile("8-3encoder_tb.vcd");
  // $dumpvars(0, encoder38_tb);
  d = 8'b11000000; #5;
  d = 8'b00000001; #5;
  d = 8'b10000000; #5;
  d = 8'b00010000; #5;
  d = 8'b11111111; #5;
end
initial
begin
$monitor("    a=%b,b=%b",d,q);
end
endmodule