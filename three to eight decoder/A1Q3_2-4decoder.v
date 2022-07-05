module decoder24 (en,a,b,d);

output [3:0] d;
input a,b,en;
//assigning values from truth table for 4-bit output using gates
assign d[0] = (~a) & (~b) & (en); 
assign d[1] = (~a) & b & (en);
assign d[2] = a & (~b) & (en);
assign d[3] = a & b & (en);
endmodule