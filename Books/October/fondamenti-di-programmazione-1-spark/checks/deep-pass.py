#!/usr/bin/env python3
"""Exact checks for examples added in the 2 November editorial revision.

Finite computations check the printed examples and small instances. They do not
replace the general arguments for polarity, quantifiers, or termination.
"""
from collections import Counter
from itertools import product

checks = 0

def require(condition):
    global checks
    assert condition
    checks += 1

def implies(a, b):
    return not a or b

# The first implication/negation example and its printed counterexample.
for x in range(-20, 31):
    require(implies(x > 10, x > 0))
    require(implies(not x > 0, not x > 10))
require(not implies(not 5 > 10, not 5 > 0))

# Walked formula: Phi = not(P => Q) and R; the three occurrence signs.
F = lambda p, q, r: not implies(p, q) and r
for p, q, r in product((False, True), repeat=3):
    require(F(p, q, r) == ((p and not q) and r))
    require(implies(F(False, q, r), F(True, q, r)))
    require(implies(F(p, True, r), F(p, False, r)))
    require(implies(F(p, q, False), F(p, q, True)))

# The derivation with a local existential witness, on all unary relations on D.
for bits in product((False, True), repeat=8):
    P, Q = bits[:4], bits[4:]
    premises = all(implies(p, q) for p, q in zip(P, Q)) and any(P)
    require(implies(premises, any(Q)))

# Backward-derived swap with the same numerical input printed in chapter 6.
x, y = 3, 7
N, M = x, y
require(y == M and x == N)
t = x
require(y == M and t == N)
x = y
require(x == M and t == N)
y = t
require(x == M and y == N)

# Cube-root trace for x=10, including the previous-cube distance.
input_x = 10
a = b = y = 0
trace = []
while True:
    variant = input_x + 1 - (b-1)**3
    trace.append((b, a, y, variant))
    require(a == b*b and y == b**3 and (b-1)**3 <= input_x)
    require(variant >= 1)
    if y > input_x:
        break
    a_before, b_before, y_before = a, b, y
    y = y + 3*a + 3*b + 1
    a = a + 2*b + 1
    b = b + 1
    require(input_x + 1 - (b-1)**3 < variant)
    require(variant - (input_x + 1 - (b-1)**3) == 3*b_before*(b_before-1)+1)
require(trace == [(0,0,0,12), (1,1,1,11), (2,4,8,10), (3,9,27,3)])
require((a_before, b_before, y_before) == (4, 2, 8))
require(b - 1 == 2)

# Independent small-input checks of the same integer loop and invariant.
for input_x in range(1001):
    a = b = y = 0
    while y <= input_x:
        old_variant = input_x + 1 - (b-1)**3
        y = y + 3*a + 3*b + 1
        a = a + 2*b + 1
        b += 1
        require(a == b*b and y == b**3 and (b-1)**3 <= input_x)
        require(1 <= input_x + 1 - (b-1)**3 < old_variant)
    require(b >= 1 and (b-1)**3 <= input_x < b**3)

# Four-element two-colour trace, including why x must remain fixed.
a = [4,-2,0,7]
initial = tuple(a)
x, y = 0, len(a)
trace = [(tuple(a), x, y)]
while x != y:
    old_width = y-x
    if a[x] < 0:
        x += 1
    else:
        temp = a[y-1]
        a[y-1] = a[x]
        a[x] = temp
        y -= 1
    require(Counter(a) == Counter(initial))
    require(all(v < 0 for v in a[:x]) and all(v >= 0 for v in a[y:]))
    require(y-x == old_width-1)
    trace.append((tuple(a), x, y))
require(trace[:3] == [((4,-2,0,7),0,4), ((7,-2,0,4),0,3), ((0,-2,7,4),0,2)])
require(trace[1][0][0] >= 0)  # Incrementing x here would break the prefix assertion.
require(x == y and a == [-2,0,7,4])
print(f'{checks} exact editorial-example checks passed.')
