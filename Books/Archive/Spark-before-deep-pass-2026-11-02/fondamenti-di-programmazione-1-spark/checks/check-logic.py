#!/usr/bin/env python3
"""Finite checks for printed logical examples; these do not replace general proofs."""
from itertools import product
imp = lambda p,q: not p or q
count = 0
for p,q,r in product([False,True], repeat=3):
    laws = [
        imp(p,q)==(not p or q),
        (not imp(p,q))==(p and not q),
        (p or (not p and q))==(p or q),
        (p and (not p or q))==(p and q),
        (not(p and q))==((not p)or(not q)),
        (not(p or q))==((not p)and(not q)),
        imp(p,q)==imp(not q,not p),
        imp(imp(p,q) and p,q),
        imp(imp(p,q) and not q,not p),
        imp((p or q) and (not p or r),q or r),
        imp((p or q) and (not p or r) and (not q or r),r),
        imp(imp(p,q and r),imp(p,q)),
        imp(imp(p or q,r),imp(p,r)),
        (not(imp(p,q)))==(p and not q),
    ]
    assert all(laws), (p,q,r,laws)
    count += len(laws)
assert imp(False,True) and not imp(True,False)
# Six predicate valuations on two elements; check quantifier laws and negated exercise.
for bits in product([False,True],repeat=6):
    P,Q,R = bits[:2],bits[2:4],bits[4:]
    assert (not all(P)) == any(not x for x in P)
    assert all(p and q for p,q in zip(P,Q)) == (all(P) and all(Q))
    assert any(p or q for p,q in zip(P,Q)) == (any(P) or any(Q))
    assert imp(any(p and q for p,q in zip(P,Q)),any(P)and any(Q))
    assert imp(all(P)or all(Q),all(p or q for p,q in zip(P,Q)))
    count += 5
# Check all 2x2 binary relations for direction exists-forall -> forall-exists.
for bits in product([False,True],repeat=4):
    E_A = any(all(bits[x*2+y] for x in range(2)) for y in range(2))
    A_E = all(any(bits[x*2+y] for y in range(2)) for x in range(2))
    assert imp(E_A,A_E)
    count += 1
R = lambda x,y: x!=y
assert all(any(R(x,y) for y in [0,1]) for x in [0,1])
assert not any(all(R(x,y) for x in [0,1]) for y in [0,1])
print(f'{count} finite logical checks passed; printed countermodels and quantifier example verified.')
