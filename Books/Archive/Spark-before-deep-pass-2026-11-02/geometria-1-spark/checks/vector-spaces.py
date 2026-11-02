#!/usr/bin/env python3
"""Controlli esatti degli esempi e soluzioni capp. 4-7; non prova dei teoremi.
Solo libreria standard. Eseguire con python3 checks/vector-spaces.py.
"""
from fractions import Fraction as Q
from itertools import product


def add(u,v): return tuple(a+b for a,b in zip(u,v))
def scale(a,u): return tuple(a*x for x in u)
def lin(a,u,b,v): return add(scale(a,u),scale(b,v))
def dot(u,v): return sum(a*b for a,b in zip(u,v))
def rank(rows):
    a=[list(map(Q,row)) for row in rows]
    if not a: return 0
    r=0
    for j in range(len(a[0])):
        p=next((i for i in range(r,len(a)) if a[i][j]),None)
        if p is None: continue
        a[r],a[p]=a[p],a[r]
        t=a[r][j];a[r]=[v/t for v in a[r]]
        for i in range(len(a)):
            if i!=r:
                t=a[i][j];a[i]=[x-t*y for x,y in zip(a[i],a[r])]
        r+=1
        if r==len(a): break
    return r

def poly_mul(a,b):
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b): c[i+j]+=x*y
    return c

def val(a,t): return sum(x*t**i for i,x in enumerate(a))

checks=[]
def done(s): checks.append(s)
assert add((1,2),(3,-1))==(4,1) and scale(2,(1,2))==(2,4)
for s,t in product(range(-4,5),repeat=2):
    v=lin(s,(1,2,0),t,(0,3,1)); assert v==(s,2*s+3*t,t) and dot((2,-1,3),v)==0
    h=lin(s,(1,0,-1),t,(0,1,-1)); assert h==(s,t,-s-t) and sum(h)==0
assert lin(1,(1,0,-1),1,(0,1,-1))==(1,1,-2)
done('4: operazioni, parametrizzazione 2x-y+3z=0 e soluzione 4.2')
assert rank([(-1,1,0),(-2,1,1)])==2
assert rank([(1,2),(2,4)])==1
assert lin(3,(1,2),0,(2,4))==lin(1,(1,2),1,(2,4))==(3,6)
for p,q in product(range(-4,5),repeat=2):
    assert lin(Q(p+q,2),(1,1),Q(p-q,2),(1,-1))==(p,q)
assert lin(2,(1,1),1,(1,-1))==(3,1)
assert lin(2,(1,1),3,(1,-1))==(5,-1)
# Dipendenza complessa w=i v; le colonne reali corrispondenti sono indipendenti.
assert tuple(1j*z for z in (1,1j))==(1j,-1)
assert rank([(1,0,0,1),(0,1,-1,0)])==2
assert (1%2,1%2)==(1%2,(-1)%2)
done('5: indipendenza, coordinate; dipendenza complessa/indipendenza reale e caso F2')
# Coefficienti dei polinomi, per potenze crescenti.
W0=[[0,1,0,0],[0,0,1,0],[0,0,0,1]]
W1=[poly_mul([-1,1],x) for x in ([1],[0,1],[0,0,1])]
W01=[poly_mul([0,-1,1],x) for x in ([1],[0,1])]
Weq=[[1],*W01]
def pad(a): return a+[0]*(4-len(a))
assert rank(W0)==3
assert all(val(a,0)==0 for a in W0)
assert rank(list(map(pad,W1)))==3 and all(val(a,1)==0 for a in W1)
assert rank(list(map(pad,W01)))==2 and all(val(a,0)==val(a,1)==0 for a in W01)
assert rank(list(map(pad,Weq)))==3 and all(val(a,0)==val(a,1) for a in Weq)
Wp=[[-2,1,0],[0,-2,1]]
assert rank(Wp)==2 and all(val(a,2)==0 for a in Wp)
assert rank([(2,3),(0,1)])==2
assert lin(Q(1,2),(2,1),Q(-1,2),(0,1))==(1,0)
done('6: scambio concreto, tutte basi dei polinomi, esercizi 6.1-6.2')
E=[tuple(int(i==j) for j in range(4)) for i in range(4)]
U=[E[0],E[1],E[2]];W=[E[0],E[1],E[3]]
assert rank(U)==rank(W)==3 and rank(U+W)==4
assert rank(U)+rank(W)-rank(U+W)==2
assert rank(U)+rank(U)-rank(U+U)==3
M=((1,2),(4,3));S=((Q(1),Q(3)),(Q(3),Q(3)));A=((Q(0),Q(-1)),(Q(1),Q(0)))
for i,j in product(range(2),repeat=2):
    assert S[i][j]==S[j][i] and A[i][j]==-A[j][i] and S[i][j]+A[i][j]==M[i][j]
assert rank([(1,1),(1,-1)])==2
assert lin(2,(1,1),1,(1,-1))==(3,1)
done('7: esempi Grassmann, scomposizione simmetrica/antisimmetrica, soluzioni 7.1-7.2')
print('\n'.join('OK '+s for s in checks))
