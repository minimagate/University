#!/usr/bin/env python3
"""Controlli esatti dei conti dei capitoli 7–10; non prove dei limiti."""
from fractions import Fraction as Q
from math import comb, factorial

previous_e = Q(2)
for n in range(1, 81):
    en = Q(n + 1, n) ** n
    assert en >= previous_e
    assert en <= sum((Q(1, factorial(k)) for k in range(n + 1)), Q())
    assert en <= 3 - Q(1, 2 ** (n - 1))
    if n >= 3:
        assert en <= Q(35, 12)
    previous_e = en

    bn = comb(3 * n, n)
    next_bn = comb(3 * (n + 1), n + 1)
    ratio_formula = Q((3*n+3)*(3*n+2)*(3*n+1),
                      (2*n+2)*(2*n+1)*(n+1))
    assert Q(next_bn, bn) == ratio_formula

    dn = Q(factorial(n), n ** n)
    next_dn = Q(factorial(n+1), (n+1) ** (n+1))
    assert next_dn / dn == 1 / en

    sn = sum((Q(1, k*k) for k in range(n, 2*n+1)), Q())
    assert sn <= Q(n+1, n*n)
    hn = sum((Q(1, k) for k in range(n, 2*n+1)), Q())
    next_hn = sum((Q(1, k) for k in range(n+1, 2*n+3)), Q())
    assert next_hn - hn == Q(1, 2*n+1) + Q(1, 2*n+2) - Q(1, n)
    assert next_hn <= hn
    assert Q(n+1, 2*n) <= hn <= Q(n+1, n)

# Controllo indipendente della soluzione 7.2, sui due rami espliciti.
for k in range(80):
    even = 2*k + 2 * (-1)**(2*k)
    odd = 2*k+1 + 2 * (-1)**(2*k+1)
    assert odd - even == -3

print('Controlli esatti superati: e_n, margine 35/12, rapporti binomiali e fattoriali, somme e rami pari/dispari (80 indici).')
