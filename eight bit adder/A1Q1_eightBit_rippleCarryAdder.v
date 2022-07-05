`include "A1Q1_oneBit_fullAdder.v"

module eightBit_rippleCarryAdder(a,b,cin,sum,cout);
    genvar i;

    input [7:0]a,b; //the 8-bit inputs to get sum
    input cin; //the carry input
    output [7:0]sum; // to store bitwise sum
    wire [7:0]ct; //to store carry out for different bits
    output cout; //to store last bit carry out

  generate
    for(i=0;i<8;i=i+1)
    begin : gen_loop
      if(i==0)
        oneBit_fullAdder s(a[i], b[i],cin,sum[i],ct[i]); //for adding first bit using carry input=0 initialy
      else if (i==7)
        oneBit_fullAdder t(a[i], b[i],ct[i-1],sum[i],cout); //for adding last bit and storing carry out in cout
      else 
        oneBit_fullAdder g(a[i], b[i],ct[i-1],sum[i],ct[i]); // for adding rest bits and storing sum with ripple carries
    end
  endgenerate
endmodule