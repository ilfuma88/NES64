1:
when I compute the per hop delay for for a stream. I can store it casue it will be the same for all the other streams in the shaped queue.

2:
0 is the highest priority 7 the lowest

3:
assuming the minimum frame length and maximum burst size are the same.
(if its not the case the code changes required are not too complicated)

4:
the reserved rate for a stream ois equal to te committed rate which is size/perios for the file specification we have now
