#!/usr/bin/env python3
"""Independent exact/enumerative checks of finite-field claims and figure data.
These checks validate examples; they are not proofs of the general theorems.
Standard library only."""
from itertools import product
from fractions import Fraction as Q
import json
count=0
def check(v):
 global count
 assert v
 count+=1

def action(a,x):return tuple(sum(u*v for u,v in zip(row,x))%2 for row in a)
def span2(cols):
 return {tuple(sum(t*c[i] for t,c in zip(coeff,cols))%2 for i in range(len(cols[0]))) for coeff in product(range(2),repeat=len(cols))}
# Every 2 by 3 matrix over F2: compare column-image, row-rank, and actual fibres.
for data in product(range(2),repeat=6):
 a=(data[:3],data[3:]); cols=list(zip(*a)); im=span2(cols)
 row_span=span2(list(a)); check(len(row_span)==len(im))
 zero=(0,0); kernel=[x for x in product(range(2),repeat=3) if action(a,x)==zero]
 check(len(kernel)*len(im)==8)
 for b in product(range(2),repeat=2):
  fibre={x for x in product(range(2),repeat=3) if action(a,x)==b}
  check(bool(fibre)==(b in im))
  if fibre:
   xi=next(iter(fibre))
   check(fibre=={tuple((u+v)%2 for u,v in zip(xi,z)) for z in kernel})
# Figure coordinate-basi: x=(3,1)=2(1,1)+(1,-1).
check(tuple(2*u+v for u,v in zip((1,1),(1,-1)))==(3,1))
# Figure coordinate-oblique: affine position in its drawn scale.
check(tuple(2*u+Q(3,2)*v for u,v in zip((80,0),(40,-70)))==(220,-105))
# Figure piano-span: both independent directions satisfy the stated equation.
u=(1,-1,0);v=(0,1,-1)
check(sum(u)==sum(v)==0)
check(tuple(u[i]+2*v[i] for i in range(3))==(1,1,-2))
# Figure colonne: endpoint of b for indicated construction.
a1=(Q(2),Q(1,2));a2=(Q(1,2),Q(3,2));b=tuple(Q(3,2)*u+Q(8,5)*v for u,v in zip(a1,a2))
check(b==(Q(19,5),Q(63,20)))
# Symmetric/antisymmetric decomposition for all small 2x2 integer matrices.
for a,b,c,d in product(range(-2,3),repeat=4):
 s=(Q(a),Q(b+c,2),Q(b+c,2),Q(d));k=(Q(0),Q(b-c,2),Q(c-b,2),Q(0))
 check(tuple(u+v for u,v in zip(s,k))==(a,b,c,d))
 check(s[1]==s[2] and k[1]==-k[2] and k[0]==k[3]==0)
print(json.dumps({'independent_checks':count,'F2_matrices':64,'F2_systems':256,'symmetric_decompositions':625,'figure_examples':5},indent=2))
