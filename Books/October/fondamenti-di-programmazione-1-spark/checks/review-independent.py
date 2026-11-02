#!/usr/bin/env python3
from itertools import product
from math import gcd, factorial
checks=0
# Independent transition checks for invariants. Exhaust small full states, not outputs alone.
for n in range(12):
    for x in range(n+1):
        s=sum(range(x))
        if x<n:
            assert s+x==sum(range(x+1)) and n-(x+1)<n-x
            checks+=1
for a,b in product(range(1,20),repeat=2):
    u,v=(a-b,b) if a>b else (a,b-a)
    if a!=b:
        assert u>0 and v>0 and gcd(u,v)==gcd(a,b) and u+v<a+b
        checks+=1
for n in range(12):
    for x in range(1,n+1):
        f=factorial(x-1)
        assert f*x==factorial(x) and n+1-(x+1)<n+1-x
        checks+=1
for x in range(100):
    b=a=y=0
    while y<=x:
        assert a==b*b and y==b**3 and (b-1)**3<=x
        t=x+1-(b-1)**3
        y,a,b=y+3*a+3*b+1,a+2*b+1,b+1
        assert a==b*b and y==b**3 and (b-1)**3<=x and x+1-(b-1)**3<t
        checks+=1
    assert b>=1 and (b-1)**3<=x<b**3
    checks+=1
for n in range(6):
    for initial in product([-1,0,1],repeat=n):
        a=list(initial); x=0;y=n
        while x!=y:
            assert all(v<0 for v in a[:x]) and all(v>=0 for v in a[y:])
            old=y-x
            if a[x]<0:x+=1
            else:
                a[x],a[y-1]=a[y-1],a[x];y-=1
            assert sorted(a)==sorted(initial) and y-x==old-1
            checks+=1
        assert all(v<0 for v in a[:x]) and all(v>=0 for v in a[x:])
        a=list(initial);x=z=0;y=n
        while z!=y:
            assert 0<=x<=z<=y<=n and all(v<0 for v in a[:x]) and all(v==0 for v in a[x:z]) and all(v>0 for v in a[y:])
            old=y-z
            if a[z]<0:a[x],a[z]=a[z],a[x];x+=1;z+=1
            elif a[z]==0:z+=1
            else:y-=1;a[y],a[z]=a[z],a[y]
            assert sorted(a)==sorted(initial) and y-z==old-1
            checks+=1
        assert all(v<0 for v in a[:x]) and all(v==0 for v in a[x:y]) and all(v>0 for v in a[y:])
        checks+=2
print(f'Independent review: {checks} checks passed (sum, gcd, factorial, cube, two/three-color classification).')
