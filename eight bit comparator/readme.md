## 8-bit Comparator

8-bit comparator : The input of the comparator, i.e. the two 8-bit numbers to be compared are stored in 8-bit wide register vectors a and b respectively. The comparator gives output as g ( a>b), e (a=b) and l (a< b). It has been implemented using eight 1-bit comparators. A module named eightBit_comparator is defined which is the top-level module. 

Clearly, a > b, if a[i] > b[i] and (a[j]=0 and b[j]=0 ∀ j>i). The for loop compares each bit of a and b using oneBit_comparator and stores the result in x, y and z i.e, x,y and z are assigned 1 in case (a[i]>b[i]), (a[i]=b[i]) and (a[i]< b[i]) respectively. 

x is assigned 1 if (a>b), y if (a=b) and z if (a< b). Again a for loop is run, where a flag named k is defined with value 0. In each loop, the values of y and k are checked. If value of y is 0, it implies that either a>b or a< b. In this case, k is assigned value 1. The result temporarily stored in registers p, q and r are then assigned to g, e, and l for final output after the loop ends.