## Priority Encoder

we are given a 8 bit number(d) and we need to encode it by giving priority to the first '1' from right.

So we made a truth table according to the priority which is given below
We will store our output in 3 bit register q.

| d[7] | d[6] | d[5] | d[4] | d[3] | d[2] | d[1] | d[0] | q[0] | q[1] | q[2] |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| x    | x    | x    | x    | x    | x    | x    | 1    | 0    | 0    | 0    |
| x    | x    | x    | x    | x    | x    | 1    | 0    | 0    | 0    | 1    |
| x    | x    | x    | x    | x    | 1    | 0    | 0    | 0    | 1    | 0    |
| x    | x    | x    | x    | 1    | 0    | 0    | 0    | 0    | 1    | 1    |
| x    | x    | x    | 1    | 0    | 0    | 1    | 0    | 1    | 0    | 0    |
| x    | x    | 1    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 1    |
| x    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 1    | 0    |
| 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 1    | 1    |

here x can be either '0' or '1'

According to this we did the gate level implementation for q[0],q[1] and q[2].

``` q[2] = ((d[7]) | (d[6]) | (d[5]) | (d[4])) & ((~d[3]) & (~d[2])) & ((~d[1]) & (~d[0]))```</br>
```
q[1] = ((d[3] | d[2]) & ((~d[1]) & (~d[0]))) | ((d[7] | d[6]) & ((~d[5]) & (~d[4]) & (~d[3]) & (~d[2]) & (~d[1]) & (~d[0])))
```
```
q[0] = (d[1] & (~d[0])) | (d[3] & (~d[2]) & (~d[1]) & (~d[0])) | (d[5] & (~d[4]) & (~d[3]) & (~d[2]) & (~d[1]) & (~d[0])) | (d[7] & (~d[6]) & (~d[5]) & (~d[4]) & (~d[3]) & (~d[2]) & (~d[1]) & (~d[0]))
```