#!/usr/bin/env python3
"""Exact finite checks of examples; general proofs remain in the text."""
from itertools import product
from math import factorial
checks = 0
for A, B in product(range(-20,21), repeat=2):
    x, y = A, B
    x = x+y; y = x-y; x = x-y
    assert (x,y) == (B,A)
    temp=A; x=B; y=temp
    assert (x,y)==(B,A)
    checks += 2
for x,y in product(range(-20,21),repeat=2):
    if x>=y-1:
        xx=x+1; yy=y-1
        assert xx>yy
        checks+=1
    m = y if x<y else x
    assert m==max(x,y)
    checks+=1
for x in range(101):
    for y in range(1,21):
        assert (x//y>0)==(x>=y)
        m=x if x//y>0 else y
        assert m==max(x,y)
        q=0; r=x
        assert x==q*y+r and r>=0
        while r>=y:
            old=r
            q+=1; r-=y
            assert x==q*y+r and r>=0 and r<old
        assert (q,r)==divmod(x,y)
        checks+=3
for n in range(101):
    x=s=0
    while x<n:
        assert s==sum(range(x)) and 0<=x<=n
        old=n-x
        s+=x; x+=1
        assert s==sum(range(x)) and 0<=x<=n and n-x<old
    assert x==n and s==n*(n-1)//2
    x=s=0
    while x<n:
        x+=1; s+=x
        assert s==sum(range(1,x+1))
    assert s==n*(n+1)//2
    checks+=2
for base in range(1,11):
    for exponent in range(21):
        res=1; esp=exponent
        while esp>0:
            res*=base; esp-=1
        assert res==base**exponent
        checks+=1
x=5
for i in range(1000):
    assert x!=0 and x%2==1
    x-=2
# Geometric length argument remains a proof; finite matching count exact for n<=8.
for n in range(9):
    from itertools import permutations
    assert sum(1 for _ in permutations(range(n)))==factorial(n)
print(f'PASS: {checks} checked cases; exact integer arithmetic. General proofs reviewed separately.')
