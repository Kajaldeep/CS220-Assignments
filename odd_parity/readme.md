## 3-bit odd parity bit generator

We have implemented this FSM using Moore machine.

We are changing reset to high before each input change in order to change the current state to IDLE state.

Also, we are keeping our states as number of 0s and 1s encountered till now. 


#### Implementation

In the module ``` parity_gen ```, we are taking ``` clk ``` , ``` reset ``` and 1 bit ``` in ``` (which is part of 3 bit sequence) as the input.

Here also we have used 3 diffrenet always blocks like in the ``` Sequence Detector``` to work out the next state and the output.