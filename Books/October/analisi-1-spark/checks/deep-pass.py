#!/usr/bin/env python3
"""Exact checks for the examples added by the deep editorial revision.
These finite checks test computations, not theorems or analytic remainder claims.
Run from any directory: python3 checks/deep-pass.py.
"""
from fractions import Fraction as Q
from math import comb, factorial
from pathlib import Path
import json
import re
import subprocess
import sys

from exact_series import poly, power, mul, add, scale, compose, SIN, COS, X

B = Path(__file__).resolve().parents[1]
counts = {}

def check(group, condition):
    if not condition:
        raise AssertionError(group)
    counts[group] = counts.get(group, 0) + 1

# Section 5.2: the chosen h is obtained from, and satisfies, the two bounds.
for numerator in range(80, 161):
    c = Q(numerator, 80)
    if c*c < 2:
        d = 2-c*c
        h = min(Q(1), d/5)/2
        check('Square root: step to the right', 0 < h < 1 and 5*h < d)
        check('Square root: step to the right', 2*c*h+h*h <= 5*h)
        check('Square root: step to the right', (c+h)**2 < 2)
    elif c*c > 2:
        d = c*c-2
        h = min(Q(1, 2), d/4)/2
        check('Square root: lower barrier', c-h > 0 and 4*h < d)
        check('Square root: lower barrier', c*c-(c-h)**2 <= 4*h)
        check('Square root: lower barrier', (c-h)**2 > 2)

# Section 8.2: the small n=3 example, counting and general transformed identity.
check('e: common cube', Q(3, 2)**3*Q(2, 3) == Q(9, 4))
check('e: common cube', Q(3, 2)**3*Q(8, 9)**3 == Q(64, 27))
check('e: common cube', Q(8, 9)**3 >= Q(2, 3))
check('e: expansion at n=3', 1+3*Q(1, 3)+3*Q(1, 9)+Q(1, 27) == Q(64, 27))
check('e: expansion at n=3', comb(3, 2) == 3*2//factorial(2) == 3)
for n in range(2, 61):
    en = (1+Q(1, n))**n
    previous = (1+Q(1, n-1))**(n-1)
    base = Q(n, n-1)**n
    check('e: transformed identity', en/base == (1-Q(1, n*n))**n)
    check('e: transformed identity', previous/base == 1-Q(1, n))
    check('e: transformed identity', (1-Q(1, n*n))**n >= 1-Q(1, n))
    if n >= 3:
        check('e: strict bound', en < Q(35, 12) < 3)
    for k in range(n+1):
        check('e: coefficient bound', Q(comb(n, k), n**k) <= Q(1, factorial(k)))

# Section 10.2: the concrete chain x -> x+1 -> (x+1)^2.
for numerator in range(-30, 31):
    x = Q(numerator, 900)
    y = x+1
    check('Continuity: concrete tolerance', abs(y-1) <= Q(1, 30))
    check('Continuity: concrete tolerance', abs(y*y-1) <= 3*abs(y-1) <= Q(1, 10))

# Section 13.3: quadratic coefficients and denominator chain used in the proof.
for A, B1, C in [(Q(1), Q(1), Q(1, 2)), (Q(1), Q(0), Q(-1, 2)), (Q(3), Q(-2), Q(7, 4))]:
    polynomial = poly(A, B1, C)
    check('Taylor: quadratic coefficients', polynomial[0] == A and polynomial[1] == B1 and 2*polynomial[2] == 2*C)
for n in range(2, 13):
    for j in range(n-1):
        denominator_coefficient = Q(factorial(n), factorial(n-j))
        next_coefficient = Q(factorial(n), factorial(n-j-1))
        check('Taylor: denominator chain', denominator_coefficient*(n-j) == next_coefficient)
    check('Taylor: last denominator', Q(factorial(n), factorial(1)) == factorial(n))

# Section 14.3: full cube identity, truncation, and composite coefficients.
# Work to degree 9 independently of the existing degree-8 formal-series helper.
def multiply9(a, b):
    return [sum(a[j]*b[i-j] for j in range(i+1)) for i in range(10)]
u = [Q(0)]*10
u[1] = u[3] = Q(1)
cube = multiply9(multiply9(u, u), u)
expected_cube = [Q(0)]*10
for degree, coefficient in [(3, 1), (5, 3), (7, 3), (9, 1)]:
    expected_cube[degree] = Q(coefficient)
check('Composition: full cube', cube == expected_cube)
check('Composition: sine of x+x^3', compose(SIN, poly(0, 1, 0, 1))[:4] == poly(0, 1, 0, Q(5, 6))[:4])
check('Composition: cosine of sine', compose(COS, SIN)[:5] == poly(1, 0, Q(-1, 2), 0, Q(5, 24))[:5])
check('Products: mixed terms', Q(-1, 2)+Q(-1, 6) == Q(-2, 3))
check('Products: mixed terms', Q(1, 24)+Q(1, 12)+Q(1, 120) == Q(2, 15))
check('Reciprocal: quadratic contribution', Q(-1, 24)+Q(1, 4) == Q(5, 24))
check('Cubic sine: multiplicity', power(SIN, 3)[5] == 3*Q(-1, 6) == Q(-1, 2))
for z in [Q(1), Q(3, 2), Q(2), Q(3)]:
    for w in [z+Q(1, 10), z+Q(1), z+Q(3)]:
        check('Hyperbolic cosine: monotonicity', w+1/w-z-1/z == (w-z)*(1-1/(w*z)) > 0)

# Parse every fragment separately: check.py accepts one path, not a wildcard list.
for path in sorted((B/'source').glob('*.tm')):
    result = subprocess.run([sys.executable, str(B/'scripts/check.py'), str(path)], capture_output=True, text=True)
    check('TeXmacs syntax', result.returncode == 0)
for chapter in range(1, 15):
    text = (B/'source'/f'{chapter:02d}.tm').read_text()
    check('Chapter openings', text.count('<\\inbreve>') == 1)
    check('Chapter openings', re.match(r'<chapter\|[^\n]+>\n\n<\\inbreve>', text) is not None)

report = {
    'total': sum(counts.values()),
    'groups': counts,
    'scope': 'Exact finite computations, all fragment syntax, 14 immediate In breve openings. No PDF or analytic-proof certification.'
}
print(json.dumps(report, ensure_ascii=False, indent=2))
