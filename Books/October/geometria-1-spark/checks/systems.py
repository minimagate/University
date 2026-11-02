#!/usr/bin/env python3
"""Exact independent arithmetic checks for chapters 8–10; standard library only.

Rational elimination derives ranks independently of the manual presentation.
Finite field enumeration tests the counting example, not a general theorem.
"""
from fractions import Fraction as Q
from itertools import product
import json

def mul(a,b):
    return [[sum((Q(x)*Q(y) for x,y in zip(row,col)),Q(0)) for col in zip(*b)] for row in a]
def vec(a,v):
    return [sum((Q(x)*Q(y) for x,y in zip(row,v)),Q(0)) for row in a]
def add(*vs): return [sum(xs) for xs in zip(*vs)]
def times(t,v): return [t*x for x in v]
def eye(n): return [[int(i==j) for j in range(n)] for i in range(n)]
def transpose(a): return [list(c) for c in zip(*a)]
def rank(a):
    a=[[Q(x) for x in row] for row in a]; r=0
    for j in range(len(a[0])):
        piv=next((i for i in range(r,len(a)) if a[i][j]),None)
        if piv is None: continue
        a[r],a[piv]=a[piv],a[r]
        p=a[r][j]; a[r]=[x/p for x in a[r]]
        for i in range(len(a)):
            if i!=r:
                t=a[i][j]; a[i]=[x-t*y for x,y in zip(a[i],a[r])]
        r+=1
        if r==len(a): break
    return r

a=[[1,1,0],[0,1,1]]
assert vec(a,[2,-1,3])==[1,2]
assert vec(a,[1,-1,1])==[0,0]
assert rank(a)==rank(transpose(a))==2
p=[[1,1],[0,1]];q=[[0,1],[1,0]]
assert mul(p,q)==[[1,1],[1,0]]
assert mul(q,p)==[[0,1],[1,1]]
assert rank(p)==rank(q)==2
for s,t,h in product(range(-2,3),repeat=3):
    assert vec(a,add([s,0,t],times(h,[1,-1,1])))==[s,t]

nine=[[1,2,3],[4,5,6],[7,8,9]]
assert rank(nine)==2 and vec(nine,[1,-2,1])==[0,0,0]
assert rank([[1,2],[4,5],[7,8]])==2
assert [r[2] for r in nine]==[2*r[1]-r[0] for r in nine]
assert vec([[1,-2,1]],list(zip(*nine))[0])==[0]
assert vec([[1,-2,1]],list(zip(*nine))[1])==[0]
for t in range(-5,6):
    assert vec(nine,[1+t,-2*t,t])==[1,4,7]

g=[[0,1,1],[1,2,1],[2,3,1]]; b=[1,2,3]
assert rank(g)==2
for t in [Q(-7,3),Q(0),Q(5,2)]:
    assert vec(g,[t,1-t,t])==b
    assert vec([[2,1,-2],[0,1,-2]],[Q(-1,2),3+2*t,t])==[2,3]

four=[[1,1,-1,2],[0,0,1,1]]
assert rank(four)==2
for s,t in product([Q(-2,3),Q(0),Q(5,2)],repeat=2):
    assert vec(four,[1-s-3*t,s,-1-t,t])==[2,-1]
for prime in [2,3,5]:
    count=sum(all((sum(x*y for x,y in zip(r,v))-b)%prime==0 for r,b in zip(four,[2,-1])) for v in product(range(prime),repeat=4))
    assert count==prime**2

w=[[1,1,1,1],[0,0,1,-1]]
assert rank(w)==2
for v in [[-1,1,0,0],[-2,0,1,1]]: assert vec(w,v)==[0,0]
assert rank([[-1,-2],[1,0],[0,1],[0,1]])==2
v1=[1,-1,0];v2=[0,1,-1]
for x,y in product(range(-3,4),repeat=2):
    z=-x-y
    assert add(times(x,v1),times(x+y,v2))==[x,y,z]

exercise=[[0,1,1],[1,1,0],[2,2,0]]
assert rank(exercise)==2
for t in [Q(-3,2),Q(0),Q(9,7)]:
    assert vec(exercise,[t-1,2-t,t])==[2,1,2]
intersection=[[1,1,1],[1,0,-1]]
assert rank(intersection)==2
assert vec(intersection,[1,-2,1])==[0,0]
assert rank([[1,0,0],[-1,1,1],[0,-1,0]])==3

coeff=[[1,1],[2,2]]
assert rank(coeff)==1
for h in range(-5,6):
    aug=[[1,1,1],[2,2,h]]
    assert rank(aug)==(1 if h==2 else 2)
left=[[1,0],[-4,1]]
assert mul(left,[[1,2],[4,5]])==[[1,2],[0,-3]]
assert mul(left,[[1,0],[4,1]])==eye(2)
a=[[1,1],[1,2]];e1=[[1,0],[-1,1]];e2=[[1,-1],[0,1]]
inv=mul(e2,e1)
assert inv==[[2,-1],[-1,1]]
assert mul(inv,a)==mul(a,inv)==eye(2)
print(json.dumps({'status':'PASS','chapters':[8,9,10],'exact_rational_examples':True,'finite_field_counts':{'fields':[2,3,5],'count':'q^2'},'exercise_answers':'8.1–10.2 checked','proofs':'Not certified by finite tests; review separately'},ensure_ascii=False,indent=2))
