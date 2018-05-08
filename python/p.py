#!/usr/local/bin/python3

def fibon(n):
    a = b = 1
    for i in range(n):
        yield a
        a, b = b, a + b
    
fi = fibon(10)
print(fi)

for x in fi:
    print(x)
for x in fi:
    print(x)