## Johnson Counter

We have kept our reset as low in our program so that we can get all the states of the counter.

If one change it to high, the output will be reset to 0.


#### Implementation

In the module ``` johnson_counter ```, we are taking ``` clk ``` and ``` reset ``` as the input.
We are storing the state of the counter in an 8 bit register ``` out ``` which is initially set to 0.
And then on each rising edge of the clock we are changing the state  of the counter as described in the report.


