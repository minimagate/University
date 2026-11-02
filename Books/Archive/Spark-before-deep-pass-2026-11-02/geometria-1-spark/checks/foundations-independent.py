#!/usr/bin/env python3
"""Independent exact expansion audit of chapters 1–3 (standard library).

Multivariate polynomial dictionaries check the displayed complex field identities.
They do not certify the theorem proofs; those were read separately.
"""
from fractions import Fraction as F
from collections import defaultdict

D=6
ZERO=(0,)*D

def const(n): return {ZERO:F(n)} if n else {}
def var(i):
    m=[0]*D;m[i]=1;return {tuple(m):F(1)}
def plus(*ps):
    r=defaultdict(F)
    for p in ps:
        for m,c in p.items():r[m]+=c
    return {m:c for m,c in r.items() if c}
def neg(p):return {m:-c for m,c in p.items()}
def prod(p,q):
    r=defaultdict(F)
    for m,c in p.items():
        for n,d in q.items():r[tuple(a+b for a,b in zip(m,n))]+=c*d
    return {m:c for m,c in r.items() if c}
def scale(c,p):return prod(const(c),p)
def cp(z,w):
    return plus(prod(z[0],w[0]),neg(prod(z[1],w[1]))),plus(prod(z[0],w[1]),prod(z[1],w[0]))
def conj(z):return z[0],neg(z[1])
a,b,c,d,e,f=[var(i) for i in range(D)]
z=(a,b);w=(c,d);v=(e,f)
left=cp(cp(z,w),v);right=cp(z,cp(w,v))
assert left==right
assert left[0]==plus(prod(prod(a,c),e),neg(prod(prod(b,d),e)),neg(prod(prod(a,d),f)),neg(prod(prod(b,c),f)))
assert left[1]==plus(prod(prod(a,c),f),neg(prod(prod(b,d),f)),prod(prod(a,d),e),prod(prod(b,c),e))
assert conj(cp(z,w))==cp(conj(z),conj(w))
assert cp(z,conj(z))==(plus(prod(a,a),prod(b,b)),{})
# Quadratic conjugate pairing: (z-(a+ib))(z-(a-ib)). Use e as z.
assert cp((plus(e,neg(a)),neg(b)),(plus(e,neg(a)),b))==(plus(prod(e,e),scale(-2,prod(a,e)),prod(a,a),prod(b,b)),{})
# Scalar quadratic-completion identity (2az+b)^2 - (b^2-4ac)=4a(az^2+bz+c).
zv=d
lhs=plus(prod(plus(scale(2,prod(a,zv)),b),plus(scale(2,prod(a,zv)),b)),neg(prod(b,b)),scale(4,prod(a,c)))
rhs=scale(4,prod(a,plus(prod(a,prod(zv,zv)),prod(b,zv),c)))
assert lhs==rhs
# Exercise3.2 expanded independently through the four complex linear factors.
def coeff_product(p,q):
    out=[(F(0),F(0)) for _ in range(len(p)+len(q)-1)]
    for i,x in enumerate(p):
        for j,y in enumerate(q):
            r=(x[0]*y[0]-x[1]*y[1],x[0]*y[1]+x[1]*y[0])
            u=out[i+j];out[i+j]=(u[0]+r[0],u[1]+r[1])
    return out
p=[(F(1),F(0))]
for im in [1,1,-1,-1]:p=coeff_product(p,[(F(-2),F(-im)),(F(1),F(0))])
assert p==[(25,0),(-40,0),(26,0),(-8,0),(1,0)]
print('PASS: symbolic complex associativity, conjugation, norm/inverse numerator, real conjugate-pair factor, quadratic completion, expanded exercise3.2.')
