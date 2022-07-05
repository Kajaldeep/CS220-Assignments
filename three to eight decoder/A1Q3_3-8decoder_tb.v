`include "A1Q3_3-8decoder.v"

module decoder38_tb();
reg [2:0] a;
reg en;
wire [7:0] b;

decoder38 f (.en(en),.a(a), .b(b));
initial begin
  // $dumpfile("3-8decoder_tb.vcd");
  // $dumpvars(0, decoder38_tb);
  a=000; en=1; #5;
  a=001; en=1; #5;
  a=010; en=1; #5;
  a=011; en=1; #5;
  a=100; en=1; #5;
  a=101; en=1; #5;
  a=110; en=1; #5;
  a=111; en=1; #5;
end
initial
begin
$monitor("input=%b output=%b",a,b); 
end
endmodule