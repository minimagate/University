#!/usr/bin/env python3
"""Finite exact checks of chapters 8–9. Mathematical proofs remain in the text.
References use standard arithmetic, independent recurrences and multiset comparison.
"""
from collections import Counter
from functools import lru_cache
from itertools import product
from math import factorial, gcd
import json
counts=Counter()
def check(group, condition):
    assert condition,group
    counts[group]+=1
for n in range(31):
    fatt,x=1,1
    while x<=n:
        old=n+1-x
        check('factorial invariant',fatt==factorial(x-1) and 1<=x<=n+1)
        fatt*=x;x+=1
        check('factorial descent',0<=n+1-x<old)
    check('factorial output',fatt==factorial(n) and x==n+1)
for a,b in product(range(1,51),repeat=2):
    x,y=a,b
    while x!=y:
        check('gcd invariant',x>0 and y>0 and gcd(x,y)==gcd(a,b))
        old=x+y
        if x>y:x-=y
        else:y-=x
        check('gcd descent',0<x+y<old)
    check('gcd output',x==gcd(a,b))
for x in range(1001):
    a=b=y=0
    while y<=x:
        old=x+1-(b-1)**3
        y=y+3*a+3*b+1;a=a+2*b+1;b+=1
        check('cube invariant',a==b*b and y==b**3 and (b-1)**3<=x)
        check('cube descent',0<=x+1-(b-1)**3<old)
    r=b-1
    check('cube output',r>=0 and r**3<=x<(r+1)**3)
# Compensation includes zero/negative coefficients; execute assignments in sequence.
for x,y,p,q in product(range(-3,4),repeat=4):
    n=x*y+p*q
    x=x-p;q=q+y
    check('compensation',x*y+p*q==n)
@lru_cache(None)
def fib(n):return n if n<2 else fib(n-1)+fib(n-2)
for k in range(1,101):
    x,i,y=1,1,0
    while i!=k:
        temp=x;x=x+y;y=temp;i+=1
        check('fibonacci invariant',x==fib(i) and y==fib(i-1) and 1<=i<=k)
    check('fibonacci output',x==fib(k))
for k in range(101):
    x,i,y=1,0,0
    while i!=k:
        temp=x;x=x+y;y=temp;i+=1
        check('fibonacci-zero invariant',x==fib(i+1) and y==fib(i) and 0<=i<=k)
    check('fibonacci-zero output',y==fib(k))
@lru_cache(None)
def f(n):return n if n<2 else f(n//2) if n%2==0 else f(n//2)+f(n//2+1)
for n in range(1001):
    x,k,h=n,1,0
    while x:
        old=x
        if x%2==0:k+=h
        else:h+=k
        x//=2
        check('halving invariant',f(n)==k*f(x)+h*f(x+1) and 0<=x<=n)
        check('halving descent',0<=x<old)
    check('halving output',h==f(n))
check('halving example',f(19)==f(9)+f(10)==f(4)+2*f(5)==3*f(2)+2*f(3)==5*f(1)+2*f(2)==7)
a=[2,1,10,6]
check('nested read',a[a[0]+a[1]]==6)
a[a[0]]=a[0]+a[1]
check('selective update',a==[2,1,3,6])
a[a[2]]=0
check('second update',a==[2,1,3,0])
for k in range(1,21):
    a=[i*(i+1)//2 for i in range(k)]+[999]
    a[k]=a[k-1]+k
    check('prefix sums',all(a[i]==sum(range(i+1)) for i in range(k+1)))
for n in range(7):
    for original in product([-2,0,3],repeat=n):
        a=list(original);x=0
        while x<n:
            check('increment bounds',0<=x<n)
            a[x]+=1;x+=1
            check('increment invariant',a[:x]==[v+1 for v in original[:x]] and a[x:]==list(original[x:]))
        check('increment output',a==[v+1 for v in original])
        s=x=0
        while x!=n:
            check('sum bounds',0<=x<n)
            s+=original[x];x+=1
            check('sum invariant',s==sum(original[:x]) and 0<=x<=n)
        check('sum output',s==sum(original))
        c=x=0
        while x!=n:
            if original[x]<0:c+=1
            x+=1
            check('count invariant',c==sum(v<0 for v in original[:x]))
        check('count output',c==sum(v<0 for v in original))
        a=list(original);x=0;y=n
        while x!=y:
            check('two-color bounds',0<=x<y<=n and 0<=y-1<n)
            old=y-x
            if a[x]<0:x+=1
            else:temp=a[y-1];a[y-1]=a[x];a[x]=temp;y-=1
            check('two-color invariant',Counter(a)==Counter(original) and all(v<0 for v in a[:x]) and all(v>=0 for v in a[y:]))
            check('two-color descent',0<=y-x<old)
        check('two-color output',all(v<0 for v in a[:x]) and all(v>=0 for v in a[x:]))
        a=list(original);x=z=0;y=n
        while z!=y:
            check('three-color bounds',0<=x<=z<y<=n)
            old=y-z
            if a[z]<0:temp=a[x];a[x]=a[z];a[z]=temp;x+=1;z+=1
            elif a[z]==0:z+=1
            else:y-=1;temp=a[y];a[y]=a[z];a[z]=temp
            check('three-color invariant',Counter(a)==Counter(original) and 0<=x<=z<=y<=n and all(v<0 for v in a[:x]) and all(v==0 for v in a[x:z]) and all(v>0 for v in a[y:]))
            check('three-color descent',0<=y-z<old)
        check('three-color output',a==sorted(original))
print(json.dumps({'checks':sum(counts.values()),'groups':dict(counts)},ensure_ascii=False,indent=2))
