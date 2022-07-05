## 3-bit gray code Counter


### Input: clk and reset

Whenever the 8th posedge is reached output is high otherwise zero

Finite state machine is used for implementation in which whoever posedge is detected current state is changed as transitions: S0: 000, S1:001, S2:011, S3:010, S4:110, S5:111, S6:101, S7:100 --> S0

Testbench “A4Q1_gray_counter_tb.v” calls for gray_counter in file “A4Q1_gray_counter.v”

Thus output is high i.e., 1 only in transition S7->S0 otherwise low i.e., 0.
