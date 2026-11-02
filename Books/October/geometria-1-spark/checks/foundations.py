#!/usr/bin/env python3
"""Controlli esatti dei calcoli dei capp.1–3; non sostituiscono le prove."""
from fractions import Fraction as Q
from itertools import product

def add(z,w): return (z[0]+w[0],z[1]+w[1])
def mul(z,w,d=-1): return (z[0]*w[0]+d*z[1]*w[1],z[0]*w[1]+z[1]*w[0])
def power(z,n,d=-1):
    r=(Q(1),Q(0))
    for _ in range(n): r=mul(r,z,d)
    return r

def poly_mul(p,q):
    c=[Q(0)]*(len(p)+len(q)-1)
    for i,a in enumerate(p):
        for j,b in enumerate(q): c[i+j]+=a*b
    return c

# Definizione esatta di F2, con tutte le triple.
for a,b,c in product(range(2),repeat=3):
    plus=lambda x,y:(x+y)%2
    times=lambda x,y:x*y%2
    assert plus(plus(a,b),c)==plus(a,plus(b,c))
    assert times(times(a,b),c)==times(a,times(b,c))
    assert times(a,plus(b,c))==plus(times(a,b),times(a,c))
for a,b in product(range(2),repeat=2):
    assert (a+b)%2==(b+a)%2
    assert (a*b)%2==(b*a)%2
for a in range(2):
    assert (a+0)%2==a and (a+a)%2==0
    assert (a*1)%2==a and (a*0)%2==0
assert 1!=0 and (1+1)%2==0 and (1*1)%2==1
print('F2: verificati esattamente tutti i casi degli assiomi.')

# Identità di insiemi su tutte le scelte in un universo con tre elementi.
universe={0,1,2}
sets=[{k for k in universe if m>>k&1} for m in range(8)]
for x,y,z in product(sets,repeat=3):
    assert x&(y|z)==(x&y)|(x&z)
    assert x|(y&z)==(x|y)&(x|z)
print('Distributive: 512 triple finite verificate (controllo, non prova generale).')

assert add((2,1),(3,-2))==(5,-1)
assert mul((2,1),(3,-2))==(8,-1)
assert mul((Q(5,2),Q(1,2)),(1,-1))==(3,-2)
assert mul((Q(3,2),Q(-1,2)),(1,1))==(2,1)
# Qui una coppia (a,b) rappresenta a+b*i*sqrt(3), dunque d=-3.
for root in [(1,1),(-2,0),(1,-1)]: assert power(root,3,-3)==(-8,0)
for root in [(1,0),(-1,0),(Q(1,2),Q(1,2)),(Q(-1,2),Q(1,2)),
             (Q(-1,2),Q(-1,2)),(Q(1,2),Q(-1,2))]:
    assert power(root,6,-3)==(1,0)
for root in [(1,0),(0,1),(-1,0),(0,-1)]: assert power(root,4)==(1,0)
# Le radici di -1 sono sqrt(2) * (±1/2 ± i/2).
for a,b in product([-Q(1,2),Q(1,2)],repeat=2):
    fourth=power((a,b),4)
    assert (4*fourth[0],4*fourth[1])==(-1,0)
print('Complessi: prodotti, divisioni, radici cubiche/seste/quarte esatti in anelli quadratici.')

assert power((1,1),2)==(0,2)
# Quadratica complessa: radici i, -1; prodotto dei fattori.
b=(1,-1); c=(0,-1)
for z in [(0,1),(-1,0)]: assert add(add(power(z,2),mul(b,z)),c)==(0,0)
assert add((0,-1),(1,0))==b and mul((0,-1),(1,0))==c
assert poly_mul([5,-4,1],[5,-4,1])==[25,-40,26,-8,1]
assert poly_mul(poly_mul([-1,1],[1,1]),poly_mul([1,1,1],[1,-1,1]))==[-1,0,0,0,0,0,1]
assert sum([2,1,3,3,1,1])==11 # figura coniugate
print('Polinomi: quadratica corretta, fattori z^6-1, esercizio3.2 e molteplicità figura verificati.')
