## Sequence Detector (1010):

We have implemented this FSM using Mealy machine.

The FSM is implemented using three always blocks, one block for changing the state on
getting input ( combinational logic ), one for changing the current state whenever the
clock (clk) has positive edge (sequential logic) and one for giving output ( output logic)
#### Implementation

In the module ``` seq_detector ```, we are taking``` clk, reset ``` and 1 bit ``` in ```(which is part of 8 bit input)  as the input and then 

We are using 3 different always blocks as described above to work out the next state and the output.