"""Independent finite checks of the examples, traces, tables and algorithm invariants.
Not a replacement for the proofs in the text. Only standard Python, exact integers.
"""
from pathlib import Path
from itertools import product, permutations
from functools import cache
from collections import Counter
from math import gcd, factorial, comb, isqrt
import json,re
S=Path(__file__).parent
counts=Counter()
def ck(group, condition):
    assert condition, group
    counts[group]+=1
I=lambda p,q:not p or q
B=[False,True]
# Read actual Boolean table entries from the book sources.
s=(S/'chapters/02.tm').read_text()
tables=re.findall(r'@TABLE\n(.*?)\n  @END',s,re.S)
for table in tables:
    rows=[re.findall(r'<(vero|falso)>',r) for r in table.splitlines()]
    rows=[r for r in rows if r]
    for r in rows:
        v=[x=='vero' for x in r]
        if len(v)==7:
            p,q=v[:2]
            for a,b in zip(v[2:],[not p,p and q,p or q,I(p,q),p==q]):ck('tavole di verità',a==b)
        elif len(v)==6:
            p,q,r=v[:3]
            for a,b in zip(v[3:],[p and q,not r,(p and q)or not r]):ck('tavole di verità',a==b)
# All schematic propositional laws and proof patterns, by truth assignments.
for p,q,r,t in product(B,repeat=4):
    laws=[p==p,(p==q)==(q==p),I((p==q)and(q==r),p==r),((p==q)==r)==(p==(q==r)),(p==True)==p,
        (p or q)==(q or p),(p and q)==(q and p),((p or q)or r)==(p or(q or r)),
        ((p and q)and r)==(p and(q and r)),(p or p)==p,(p and p)==p,
        (p and True)==p,(p or False)==p,(p and False)==False,(p or True)==True,
        (p and(q or r))==((p and q)or(p and r)),(p or(q and r))==((p or q)and(p or r)),
        (not not p)==p,p or not p,not(p and not p),(not True)==False,
        (not(p and q))==((not p)or(not q)),(not(p or q))==((not p)and(not q)),
        I(p,q)==((not p)or q),I(p,q)==(not(p and not q)),(not I(p,q))==(p and not q),
        (p==q)==(I(p,q)and I(q,p)),(p==q)==((p and q)or(not p and not q)),
        (p or(not p and q))==(p or q),(p and(not p or q))==(p and q),
        (p and(p or q))==p,(p or(p and q))==p,I(I(p,q)and p,q),I(I(p,q)and I(q,r),I(p,r)),
        I(p and q,p),I(p,p or q),I(p and q,r)==I(p and not r,not q),
        I(p,q)==I(not q,not p),p==I(not p,False),(I(p,q)and I(not p,q))==q,
        I((p or q)and(not p or r),q or r),
        I((p or q)and(not p or r)and(not q or r),r),
        I(I(p,q)and I(r,t),I(p and r,q and t)),I(I(p,q)and I(r,t),I(p or r,q or t)),
        I(I(p,q==r),I(p and r,q)),I(p,I(q,r))==I(p and q,r),
        (not(I(p,q)and I(r,p)))==((p and not q)or(r and not p)),
        I(p,I(not r,q))==((not p)or r or q),I(I(p,not r),q)==((p and r)or q),
        (not(p and p))==(not p)]
    for v in laws:ck('leggi e catene proposizionali',v)
# Counterexamples, checks and semantic examples.
ck('controesempi',not I(I(False,True)and not False,not True))
ck('controesempi',not I(I(False,not False)and not False,False))
ck('controesempi',I(False,I(not False,False)) and not I(I(False,not False),False))
ck('controesempi',((False and False)or True)!= (False and(False or True)))
for p,q,r in product(B,repeat=3):
    prem=I(r,p)and I(p,q)
    ck('amici al cinema',I(prem,I(r,q)))
for candidate in [lambda a,b,c:not a and not b and not c,lambda a,b,c:I(b,c),lambda a,b,c:I(not c,not b)]:
    ck('amici al cinema',any(I(c,a)and I(a,b)and not candidate(a,b,c) for a,b,c in product(B,repeat=3)))
for n in range(1,4):
    for pv,qv,rv in product(list(product(B,repeat=n)),repeat=3):
        laws=[not all(pv)==any(not x for x in pv),not any(pv)==all(not x for x in pv),
          all(x and y for x,y in zip(pv,qv))==(all(pv)and all(qv)),
          any(x or y for x,y in zip(pv,qv))==(any(pv)or any(qv)),
          I(all(pv)or all(qv),all(x or y for x,y in zip(pv,qv))),
          I(any(x and y for x,y in zip(pv,qv)),any(pv)and any(qv)),
          all(I(p or q,r) for p,q,r in zip(pv,qv,rv))==(all(I(p,r) for p,r in zip(pv,rv))and all(I(q,r) for q,r in zip(qv,rv)))]
        ck('quantificatori su domini finiti',all(laws))
ck('quantificatori su domini finiti',any(all(x!=y for x in range(2)) for y in range(2))==False)
ck('quantificatori su domini finiti',all(any(x!=y for y in range(2)) for x in range(2)))
ck('quantificatori su domini finiti',not all([I(True,True and False),I(True,False and True),I(False,True and False)]))
# Explicit numerical traces from text and figures.
a,b,c=5,3,0;trace=[(a,b,c)]
while b>0:c+=a;b-=1;trace.append((a,b,c))
ck('tracce numeriche',trace==[(5,3,0),(5,2,5),(5,1,10),(5,0,15)])
ck('tracce numeriche',13*11==12*11+11==88+44+11==143)
ck('tracce numeriche',12*11==6*22==3*44 and 3*44==2*44+44==88+44)
x,y=12,18;trace=[(x,y)]
while x!=y:
    if x>y:x-=y
    else:y-=x
    trace.append((x,y))
ck('tracce numeriche',trace==[(12,18),(12,6),(6,6)] and x==gcd(12,18)==6)
ris,esp=1,3;trace=[(ris,esp)]
while esp>0:ris*=2;esp-=1;trace.append((ris,esp))
ck('tracce numeriche',trace==[(1,3),(2,2),(4,1),(8,0)] and ris==2**3)
x,y=3,7;x=x+y;y=x-y;x=x-y
ck('tracce numeriche',(x,y)==(7,3))
ck('tracce numeriche',[5-2*k for k in range(5)]==[5,3,1,-1,-3])
ck('tracce numeriche',2**9<1000<=2**10)
vals=[3,7,11,14,18,21,25,29,33,38,42,47,51,56,60,64]
lo,hi=0,15;trace=[]
while lo<=hi:
    mid=(lo+hi+1)//2;trace.append((lo,hi,mid,hi-lo+1))
    if vals[mid]==47:break
    if vals[mid]<47:lo=mid+1
    else:hi=mid-1
ck('tracce numeriche',trace==[(0,15,8,16),(9,15,12,7),(9,11,10,3),(11,11,11,1)] and vals.index(47)+1==12)
for a,b in product(range(-5,6),repeat=2):
    ck('algebra e assegnamenti',(a+b)*(a-b)==a*a-b*b)
    ck('algebra e assegnamenti',I(a>=b-1,a+1>b-1))
    ck('algebra e assegnamenti',max(a,b)==(b if a<b else a))
    for p,q in [(0,2),(-3,4),(2,-1)]:ck('algebra e assegnamenti',(a-p)*b+p*(q+b)==a*b+p*q)
ck('tracce numeriche',2+1==3 and [2,1,10,6][2+1]==6)
ck('tracce numeriche',(0+1)+1==2 and (2+1)+1==4 and (10+1)+1==12)
# Execute loops, independently compare with mathematical Python operations.
for n in range(31):
    s=x=0;st=[s]
    while x<n:s+=x;x+=1;st.append(s)
    ck('somma e fattoriale',s==n*(n-1)//2)
    if n==4:ck('tracce numeriche',st==[0,0,1,3,6])
    fatt,x=1,1
    while x<=n:
        ck('somma e fattoriale',fatt==factorial(x-1) and n+1-x>=0)
        fatt*=x;x+=1
    ck('somma e fattoriale',fatt==factorial(n) and x==n+1 and n+1-x==0)
for x,y in product(range(31),range(1,11)):
    q,r=0,x;trace=[r]
    while r>=y:q+=1;r-=y;trace.append(r)
    ck('divisione intera',(q,r)==divmod(x,y) and x==q*y+r)
    if (x,y)==(17,5):ck('tracce numeriche',trace==[17,12,7,2] and q==3)
for x in range(101):
    a=b=y=0;trace=[(a,b,y)]
    while y<=x:
        ft=x+1-(b-1)**3
        y=y+3*a+3*b+1;a=a+2*b+1;b+=1;trace.append((a,b,y))
        ck('radice cubica',a==b*b and y==b**3 and (b-1)**3<=x and 0<=x+1-(b-1)**3<ft)
    root=max(k for k in range(x+1) if k**3<=x)
    ck('radice cubica',b-1==root and (b-1)**3<=x<b**3)
    if x==10:ck('tracce numeriche',trace==[(0,0,0),(1,1,1),(4,2,8),(9,3,27)] and b-1==2)
    if x in (0,8):ck('tracce numeriche',b=={0:1,8:3}[x])
for a,b in product(range(1,21),repeat=2):
    x,y=a,b
    while x!=y:
        old=x+y
        if x>y:x-=y
        else:y-=x
        assert x+y<old and x>0 and y>0
    ck('MCD per sottrazioni',x==gcd(a,b))
@cache
def fib(n):return n if n<2 else fib(n-1)+fib(n-2)
ck('Fibonacci', [fib(i) for i in range(8)]==[0,1,1,2,3,5,8,13])
for k in range(1,31):
    x,i,y=1,1,0
    while i!=k:temp=x;x=x+y;y=temp;i+=1
    ck('Fibonacci',x==fib(k) and y==fib(k-1))
@cache
def f(n):return n if n<2 else f(n//2) if n%2==0 else f(n//2)+f(n//2+1)
for n in range(201):
    x,k,h=n,1,0;trace=[(x,k,h)]
    while x:
        if x%2==0:k=h+k
        else:h=h+k
        x//=2;trace.append((x,k,h))
        assert f(n)==k*f(x)+h*f(x+1)
    ck('successione per dimezzamento',h==f(n))
    if n==19:ck('tracce numeriche',trace==[(19,1,0),(9,1,1),(4,1,2),(2,3,2),(1,5,2),(0,5,7)])
ck('tracce numeriche',f(19)==f(9)+f(10)==f(4)+2*f(5)==3*f(2)+2*f(3)==5*f(1)+2*f(2)==7)
ck('tracce numeriche',f(6)==f(3)==f(1)+f(2)==2)
for n in range(6):
    for orig in product([-1,0,1],repeat=n):
        a=list(orig);x=0;y=n
        while x!=y:
            if a[x]<0:x+=1
            else:temp=a[y-1];a[y-1]=a[x];a[x]=temp;y-=1
            assert all(v<0 for v in a[:x])and all(v>=0 for v in a[y:])
        ck('bandiere e array',Counter(a)==Counter(orig)and all(v<0 for v in a[:x])and all(v>=0 for v in a[x:]))
        a=list(orig);x=z=0;y=n
        while z!=y:
            if a[z]<0:temp=a[x];a[x]=a[z];a[z]=temp;x+=1;z+=1
            elif a[z]==0:z+=1
            else:y-=1;temp=a[y];a[y]=a[z];a[z]=temp
            assert 0<=x<=z<=y<=n and all(v<0 for v in a[:x])and all(v==0 for v in a[x:z])and all(v>0 for v in a[y:])
        ck('bandiere e array',Counter(a)==Counter(orig)and a==sorted(orig))
        a=list(orig)
        for x in range(n):a[x]+=1
        ck('bandiere e array',a==[v+1 for v in orig])
        s=0
        for x in range(n):s+=orig[x]
        ck('bandiere e array',s==sum(orig))
for k in range(1,11):
    a=[sum(range(j+1))for j in range(k)]+[-999];a[k]=a[k-1]+k
    ck('bandiere e array',all(a[j]==j*(j+1)//2 for j in range(k+1)))
# Geometry figure: 2 crossing diagonals (160,110), replaced by 2 edges of length 160.
ck('geometria',2*160<2*(160**2+110**2)**0.5)
for n in range(7):ck('geometria',len(list(permutations(range(n))))==factorial(n))
print(json.dumps({'total':sum(counts.values()),'categories':dict(counts)},ensure_ascii=False,indent=2))
