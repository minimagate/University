"""Checks for the narrative revision of 2 November 2026.

Covers the computations touched or introduced in this pass: the new
polarity exercise 2.2, the traces quoted in the text and the identities
used in the rewritten explanations. Exhaustive on small domains.
"""
from itertools import product
from math import floor

def imp(a, b):
    return (not a) or b

# Exercise 2.2: polarities in (P or not Q) => not R.
# An occurrence is positive iff the formula is monotone (f -> t never
# turns the formula from true to false) in that letter.
def phi(P, Q, R):
    return imp(P or not Q, not R)

def polarity(i):
    up = down = True
    for v in product([False, True], repeat=3):
        lo, hi = list(v), list(v)
        lo[i], hi[i] = False, True
        if phi(*lo) and not phi(*hi):
            up = False
        if phi(*hi) and not phi(*lo):
            down = False
    return 'positive' if up and not down else 'negative' if down and not up else 'mixed'

assert [polarity(i) for i in range(3)] == ['negative', 'positive', 'negative']
for P, Q, R in product([False, True], repeat=3):
    assert phi(P, Q, R) == (((not P) and Q) or (not R))
    assert (P and ((not P) or Q)) == (P and Q)

# Chapter 1: product by sums, invariant C + A*B = a*b at every guard check.
for a, b in product(range(8), range(8)):
    A, B, C = a, b, 0
    while True:
        assert C + A * B == a * b
        if not B > 0:
            break
        C += A
        B -= 1
    assert C == a * b
assert 88 + 44 + 11 == 13 * 11

# Chapter 5: power trace and three-assignment swap.
ris, esp, seen = 1, 3, []
while True:
    seen.append((ris, esp))
    if not esp > 0:
        break
    ris *= 2
    esp -= 1
assert seen == [(1, 3), (2, 2), (4, 1), (8, 0)]
for A, B in product(range(-5, 6), repeat=2):
    x, y = A, B
    x = x + y; y = x - y; x = x - y
    assert (x, y) == (B, A)
# div/mod convention with floor
for a, b in product(range(-9, 10), [-4, -3, -1, 1, 2, 5]):
    q = floor(a / b)
    assert a == b * q + (a - b * q)
assert (17 // 5, 17 % 5) == (3, 2)

# Chapter 6: x div y > 0 iff x >= y for x >= 0, y > 0; swap backward table.
for x, y in product(range(0, 30), range(1, 12)):
    assert (x // y > 0) == (x >= y)
for x, y in product(range(-6, 7), repeat=2):
    if x >= y - 1:
        assert x + 1 > y - 1
assert all((2 * x > 10) == (x >= 6) for x in range(-20, 21))

# Chapter 7: division and sums.
for x, y in product(range(0, 40), range(1, 9)):
    q, r = 0, x
    while r >= y:
        assert x == q * y + r and r >= 0
        q, r = q + 1, r - y
    assert x == q * y + r and 0 <= r < y
for n in range(0, 15):
    x = s = 0
    while x < n:
        assert s == sum(range(x)) and 0 <= x <= n
        s += x; x += 1
    assert s == sum(range(n))
    x = s = 0
    while x < n:
        x += 1; s += x
        assert s == sum(range(1, x + 1))
    assert s == n * (n + 1) // 2

# Chapter 8: factorial, gcd, cube root, Fibonacci, halving recurrence.
from math import factorial, gcd
for n in range(0, 10):
    fatt, x = 1, 1
    while x <= n:
        assert fatt == factorial(x - 1) and 1 <= x <= n + 1
        fatt *= x; x += 1
    assert x == n + 1 and fatt == factorial(n)
for a, b in product(range(1, 30), repeat=2):
    x, y = a, b
    while x != y:
        if x > y: x -= y
        else: y -= x
    assert x == gcd(a, b)
for X in range(0, 200):
    a = b = y = 0
    t_prev = None
    while True:
        assert a == b * b and y == b ** 3 and (b - 1) ** 3 <= X
        t = X + 1 - (b - 1) ** 3
        assert t >= 1 and (t_prev is None or t < t_prev)
        t_prev = t
        if not y <= X:
            break
        y = y + 3 * a + 3 * b + 1; a = a + 2 * b + 1; b = b + 1
    assert (b - 1) ** 3 <= X < b ** 3 and b >= 1
for b in range(0, 50):
    assert b ** 3 - (b - 1) ** 3 == 3 * b * (b - 1) + 1
fib = [0, 1]
for _ in range(40):
    fib.append(fib[-1] + fib[-2])
for k in range(1, 20):
    x, i, y = 1, 1, 0
    while i != k:
        temp = x; x = x + y; y = temp; i += 1
    assert x == fib[k]
for k in range(0, 20):
    x, i, y = 1, 0, 0
    while i != k:
        temp = x; x = x + y; y = temp; i += 1
    assert y == fib[k] and x == fib[k + 1]
def f(j, memo={0: 0, 1: 1}):
    if j not in memo:
        memo[j] = f(j // 2) if j % 2 == 0 else f((j - 1) // 2) + f((j + 1) // 2)
    return memo[j]
assert f(9) + f(10) == f(4) + 2 * f(5) == 3 * f(2) + 2 * f(3) == 5 * f(1) + 2 * f(2) == f(19) == 7
for n in range(0, 300):
    x, k, h = n, 1, 0
    while x != 0:
        assert f(n) == k * f(x) + h * f(x + 1)
        if x % 2 == 0: k = h + k
        else: h = h + k
        x //= 2
    assert h == f(n)
# exercise 8.1
for x, y, p, q in product(range(-3, 4), repeat=4):
    n = x * y + p * q
    x2 = x - p; q2 = q + y
    assert x2 * y + p * q2 == n

# Chapter 9: array traces and flags.
v = [2, 1, 10, 6]
assert v[v[0] + v[1]] == 6
v[v[0]] = v[1] + 5
assert v == [2, 1, 6, 6]
v = [2, 1, 10, 6]
v[v[0]] = v[0] + v[1]
assert v == [2, 1, 3, 6]
v[v[2]] = 0
assert v == [2, 1, 3, 0]
def flag2(a):
    a = list(a); x, y = 0, len(a); trace = [(list(a), x, y)]
    while x != y:
        if a[x] < 0: x += 1
        else:
            a[y - 1], a[x] = a[x], a[y - 1]; y -= 1
        trace.append((list(a), x, y))
    return a, x, trace
a, x, tr = flag2([4, -2, 0, 7])
assert tr[:3] == [([4, -2, 0, 7], 0, 4), ([7, -2, 0, 4], 0, 3), ([0, -2, 7, 4], 0, 2)]
def flag3(a):
    a = list(a); x = z = 0; y = len(a)
    while z != y:
        if a[z] < 0:
            a[x], a[z] = a[z], a[x]; x += 1; z += 1
        elif a[z] == 0: z += 1
        else:
            y -= 1; a[y], a[z] = a[z], a[y]
    return a, x, z
for n in range(0, 6):
    for arr in product([-2, -1, 0, 1, 3], repeat=n):
        out, x, tr = flag2(arr)
        assert sorted(out) == sorted(arr) and all(e < 0 for e in out[:x]) and all(e >= 0 for e in out[x:])
        out, x, z = flag3(arr)
        assert sorted(out) == sorted(arr)
        assert all(e < 0 for e in out[:x]) and all(e == 0 for e in out[x:z]) and all(e > 0 for e in out[z:])
        c = 0
        for i in range(n):
            if arr[i] < 0: c += 1
        assert c == sum(1 for e in arr if e < 0)

print('narrative-pass: all checks passed')
