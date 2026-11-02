"""Exact checks for the introductory examples; not proofs of universal claims."""
from math import gcd
checks = 0
for a in range(31):
    for b in range(31):
        A,B,C = a,b,0
        assert C+A*B == a*b; checks+=1
        while B>0:
            C+=A; B-=1
            assert C+A*B == a*b and B>=0; checks+=1
        assert C==a*b; checks+=1
for a in range(1,50):
    for b in range(1,50):
        x,y,z=a,b,0
        while x>1:
            if x%2: z+=y; x-=1
            else: x//=2; y*=2
            assert x*y+z == a*b; checks+=1
        assert y+z==a*b; checks+=1
vals=[3,7,11,14,18,21,25,29,33,38,42,47,51,56,60,64]
lo,hi=0,15; trace=[]
while lo<=hi:
    mid=(lo+hi+1)//2; trace.append(vals[mid])
    if vals[mid]==47:break
    if vals[mid]>47:hi=mid-1
    else:lo=mid+1
assert trace==[33,51,42,47];checks+=1
assert gcd(12,18)==6 and 13*11==143;checks+=2
print(f'{checks} exact assertions passed')
