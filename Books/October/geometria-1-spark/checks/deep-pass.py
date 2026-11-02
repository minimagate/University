#!/usr/bin/env python3
"""Exact checks for the examples added in the deep editorial pass.
These computations check finite examples, not the general proofs.
"""
from fractions import Fraction as Q
from itertools import product
from pathlib import Path
import re


def add(u, v): return tuple(a+b for a, b in zip(u, v))
def scale(a, u): return tuple(a*b for b in u)
def combine(a, u, b, v): return add(scale(a, u), scale(b, v))
def mv(a, x): return tuple(sum(v*t for v, t in zip(row, x)) for row in a)
def transpose(a): return tuple(zip(*a))
def rank(a):
    a=[list(map(Q, row)) for row in a]
    if not a:return 0
    r=0
    for j in range(len(a[0])):
        p=next((i for i in range(r,len(a)) if a[i][j]), None)
        if p is None:continue
        a[r],a[p]=a[p],a[r]
        a[r]=[x/a[r][j] for x in a[r]]
        for i in range(r+1,len(a)):
            c=a[i][j];a[i]=[x-c*y for x,y in zip(a[i],a[r])]
        r+=1
        if r==len(a):break
    return r

# 3. The two preparatory polynomial factorizations (ascending coefficients).
def poly_mul(a,b):
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]+=x*y
    return tuple(c)
assert poly_mul((-1,1),poly_mul((-2,1),(-2,1)))==(-4,8,-5,1)
assert poly_mul((1,0,1),(1,0,1))==(1,0,2,0,1)
# z^2+1=(z-i)(z+i); pairing the two copies preserves multiplicity two.
assert (-1j)*(1j)==1 and (-1j)+(1j)==0
print('3: exact expansions for the multiplicity and conjugate-pair examples')

# 5. Reachability of targets; the identity describes the whole line.
u,v=(1,2),(2,4)
for a,b in product(map(Q,range(-4,5)),repeat=2):
    assert combine(a,u,b,v)==scale(a+2*b,u)
assert combine(1,u,1,v)==combine(3,u,0,v)==(3,6)
assert (1,0)[1]!=2*(1,0)[0]
print('5: span identity, two representations of (3,6), obstruction for (1,0)')

# 6. Extraction and both successive exchanges.
e1,e2=(1,0),(0,1); w,z=(2,1),(1,1)
assert rank([e1,e2,add(e1,e2)])==rank([e1,e2])==2
assert scale(Q(1,2),add(w,scale(-1,e2)))==e1
assert combine(Q(1,2),w,Q(1,2),e2)==z
assert combine(2,z,-1,w)==e2
assert rank([w,e2])==rank([w,z])==2
f1,f2=(Q(1,2),1,0),(Q(-3,2),0,1)
assert rank([f1,f2])==2
for y,z0 in product(map(Q,range(-3,4)),repeat=2):
    x=combine(y,f1,z0,f2)
    assert 2*x[0]-x[1]+3*x[2]==0
print('6: extracted base, two exchanges, explicit base of 2x-y+3z=0')

# 7. Two coordinate planes, their common line, and sum.
e1,e2,e3=(1,0,0),(0,1,0),(0,0,1)
U,W=(e1,e2),(e1,e3)
assert rank(U)==rank(W)==2 and rank(U+W)==3
assert rank(U)+rank(W)-rank(U+W)==1
for x,y,z0 in product(range(-2,3),repeat=3):
    assert add((x,y,0),(0,0,z0))==(x,y,z0)
    t=(0,0,z0)
    assert (t[2]==0)==(z0==0) # t belongs to U only for beta=0.
print('7: common line, whole-space sum and Grassmann dimensions 2+2-1=3')

# 8. Complete the kernel base using e1,e3, then map it.
A=((1,1,0),(0,1,1));k=(1,-1,1)
assert mv(A,k)==(0,0) and rank([k,e1,e3])==3
assert mv(A,e1)==(1,0) and mv(A,e3)==(0,1)
assert add(add(k,e1),scale(2,e3))==(2,-1,3)
assert mv(A,(2,-1,3))==(1,2)
assert rank(A)==2 and 3-rank(A)==1
print('8: adapted base (k,e1,e3), kernel and image dimensions, vector reconstruction')

# 10. Concrete reduction and original pivot columns.
A=((1,2,3),(2,5,7),(1,3,4))
a=[list(r) for r in A]
a[1]=[x-2*y for x,y in zip(a[1],a[0])]
a[2]=[x-y for x,y in zip(a[2],a[0])]
a[2]=[x-y for x,y in zip(a[2],a[1])]
S=((1,2,3),(0,1,1),(0,0,0))
assert tuple(map(tuple,a))==S
assert rank(A)==rank(transpose(A))==rank(S)==rank(transpose(S))==2
for M in (A,S):
    c1,c2,c3=transpose(M)
    assert add(c1,c2)==c3 and rank((c1,c2))==2
plane=((1,0),(0,1),(0,0))
assert rank(plane)==2
assert rank(tuple(r+(b,) for r,b in zip(plane,(2,3,0))))==2
assert rank(tuple(r+(b,) for r,b in zip(plane,(0,0,1))))==3
print('10: exact row operations, equal row/column rank, original pivot columns, compatibility examples')

# Editorial structure: one opening orientation in each numbered chapter.
source=Path(__file__).resolve().parents[1]/'source'
for n in range(1,11):
    s=(source/f'{n:02}.tm').read_text()
    assert s.count('<\\inbreve>')==s.count('</inbreve>')==1
    assert re.match(r'<chapter\|[^\n]+>\s*<\\inbreve>',s)
print('Structure: all 10 main chapters have one In breve immediately after the title')
print('All exact deep-pass checks passed. General proofs require separate review.')
