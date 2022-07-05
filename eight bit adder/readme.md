## 8-bit ripple carry adder



A module named “B8_Adder()” is used in testbench to give inputs in 8 bits as register named “a” and “b” and output in wire as the “sum” and “cout” for carry out after summation.
This module uses the module “eightBit_rippleCarryAdder g(a,b,cin,sum,cout);”  stated in file named “A1Q1_eightBit_rippleCarryAdder.v” to give the output sum and cout by taking input a,b and cin=0 (taking carry input to be zero initaily).

The module “eightBit_rippleCarryAdder” takes 8-bit input a and b and gives result using the module “oneBit_fullAdder” from file “A1Q1_oneBit_fullAdder.v” which gives result in format of “sum and carry out” this sum is bit wise addition of 1-bit inputs and carry out of the same.
This “eightBit_rippleCarryAdder” runs the loop  to store each bit sum into the “sum” and each bit carryout into “ct” the last one carryout is taken as output “cout” and total 8-bit sum as output “sum”.