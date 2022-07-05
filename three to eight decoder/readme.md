## 3 to 8 decoder

### 1) 2-4 decoder 

Here we give en,a and b as input and our output is 4 bit register d.

The gate level implementatio being
```
d[0] = (~a) & (~b) & (en)
```
```
d[1] = (~a) & b & (en)
```
```
d[2] = a & (~b) & (en)
```
```
d[3] = a & b & (en)
```

Now we will use 3 two-to-four decoders to make a 3-8 decoder

Truth table for 3 to 8 decoder is

| a[0] | a[1] | a[2] | b[7] | b[6] | b[5] | b[4] | b[3] | b[2] | b[1] | b[0] |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    |
| 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    |
| 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    |
| 0    | 1    | 1    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    |
| 1    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 1    | 0    |
| 1    | 0    | 1    | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    |
| 1    | 1    | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    |
| 1    | 1    | 1    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    |

### 2) 3-8 decoder

here we will take enable,a and b as our input and 8 bit wire b as output.

First 2-4 decoder will take enable along with c which we take as '0' and a[2] as input and the output(d).
Second decoder will take d[0] as enable and (a[1], a[0]) as input and will feed first 4 bits of output.
Third decoder will take d[1] as enable and (a[1],a[0]) as input to feed the next 4 bits of output.