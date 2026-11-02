#!/usr/bin/env python3
"""Independent exact/enumerative checks for Spark chapters 1-3 and answers.

No third-party dependencies. Enumerates small finite families instead of merely
repeating the algebra printed in the book. Proofs themselves are reviewed in text.
"""
from collections import Counter
from fractions import Fraction
from itertools import combinations, permutations, product
from math import comb, factorial, isqrt

checks = 0
def check(condition, label):
    global checks
    assert condition, label
    checks += 1

# 1. Examples, induction formulas, and the reused factor-tree figure.
check(Fraction(1, 2) * 2 == 1, "rational solution 2x=1")
check(all(2*x != 1 for x in range(-100, 101)), "no small integer candidate")
check([sum(range(1, 2*n, 2)) for n in range(1, 5)] == [1, 4, 9, 16], "odd sums shown")
for n in range(1, 101):
    check(sum(range(1, 2*n, 2)) == n*n, f"odd sum n={n}")
    check(sum(range(1, n+1)) == n*(n+1)//2, f"natural sum n={n}")
    check((2*n)**2 % 2 == 0, f"square even n={n}")
check(12 == 3*4, "strong induction example")
check(360 == 12*30 == (3*2*2)*(5*2*3), "factor-tree labels")
check(Counter([3, 2, 2, 5, 2, 3]) == Counter([2,2,2,3,3,5]), "factor-tree prime leaves")
check([2*k for k in range(5)] == [0, 2, 4, 6, 8], "exercise1.2 reachable indices")

# 2. Counting: actual function lists, permutations and subsets.
functions32 = list(product(range(2), repeat=3))
check(len(functions32) == 8, "all functions 3 to2")
check(sum(len(set(f))==2 for f in functions32) == 6, "surjections3to2")
check(len(list(product(range(3), range(2)))) == 6, "product choices")
check(len(set(range(3)))+len(set(range(3,5))) == 5, "sum disjoint choices")
check(len(list(permutations('abc',2))) == 6, "ordered two of three figure")
check(len(list(combinations('abc',2))) == 3, "unordered two of three figure")
check(len(list(combinations(range(5),2))) == 10, "two people five")
check(len(list(permutations(range(5),2))) == 20, "two roles five")
check(len(set(permutations('NONNO'))) == 10, "NONNO anagrams")
check(factorial(5)//(factorial(3)*factorial(2)) == 10, "multinomial displayed")
check(len({x for x in range(1,13) if x%2==0}) == 6, "IE multiples2")
check(len({x for x in range(1,13) if x%3==0}) == 4, "IE multiples3")
check({x for x in range(1,13) if x%2==0 and x%3==0} == {6,12}, "IE overlap")
check(len({x for x in range(1,13) if x%2==0 or x%3==0}) == 8, "IE union")
for n in range(1,8):
    subsets = [set(s) for k in range(n+1) for s in combinations(range(n),k)]
    check(len(subsets) == 2**n, f"all subsets n={n}")
    check(sum(len(s) for s in subsets) == n*2**(n-1), f"marked-member identity n={n}")
    check(sum(len(s)%2==0 for s in subsets) == 2**(n-1), f"even subsets n={n}")
    check(sum(len(s)%2==1 for s in subsets) == 2**(n-1), f"odd subsets n={n}")
    for k in range(n+1):
        check(sum(len(s)==k for s in subsets)==comb(n,k), f"binomial n={n} k={k}")
        check(comb(n,k)==comb(n,n-k), f"complement symmetry n={n} k={k}")
        rhs=(comb(n-1,k-1) if 0<=k-1<=n-1 else 0)+(comb(n-1,k) if k<=n-1 else 0)
        check(comb(n,k)==rhs, f"Pascal n={n} k={k}")
    for a,b in product(range(-2,3),repeat=2):
        check((a+b)**n == sum(comb(n,k)*a**k*b**(n-k) for k in range(n+1)), f"Newton n={n} a={a} b={b}")
for n in range(1,6):
    for m in range(1,5):
        funcs=list(product(range(m),repeat=n))
        check(len(funcs)==m**n, f"functions n={n} m={m}")
        actual=sum(len(set(f))==m for f in funcs)
        expected=sum((-1)**k*comb(m,k)*(m-k)**n for k in range(m+1))
        check(actual==expected, f"IE surjection n={n} m={m}")
        injective=sum(len(set(f))==n for f in funcs)
        check(injective==(factorial(m)//factorial(m-n) if n<=m else 0), f"injection n={n} m={m}")
check(sum(len(set(f))==3 for f in product(range(3),repeat=4))==36, "exercise2.1")
check(len(list(product(range(3),repeat=4)))==81, "exercise2.1 total")
check(len(list(product(range(2),repeat=4)))==16, "exercise2.1 missed value")
check(sum(x+y+z==4 for x,y,z in product(range(5),repeat=3))==15, "starsbars4 three")
positive_triples=[t for t in product(range(1,8),repeat=3) if sum(t)==7]
check(len(positive_triples)==15, "exercise2.2 count")
check(len(set(permutations((1,2,4))))==6, "exercise2.2 distinct orbit")
check(len(set(permutations((1,1,5))))==3, "exercise2.2 repeated orbit")
for r in range(1,5):
    for n in range(7):
        check(sum(sum(t)==n for t in product(range(n+1),repeat=r))==comb(n+r-1,r-1), f"starsbars n={n} r={r}")

# 3. Count domino coverings by enumerating board placements, not recurrence.
def coverings(n):
    board=frozenset(product(range(2),range(n)))
    def fill(left):
        if not left: return 1
        row,col=min(left)
        result=0
        for other in ((row+1,col),(row,col+1)):
            if other in left:
                result += fill(left-{(row,col),other})
        return result
    return fill(board)
check([coverings(n) for n in range(7)] == [1,1,2,3,5,8,13], "all shown tiling counts")
for n in range(11):
    check(coverings(n)==sum(comb(n-k,k) for k in range(n//2+1)), f"tiling binomial n={n}")
check([comb(6-k,k) for k in range(4)] == [1,5,6,1], "exercise3.2 components")
base=[0,1]
other=[5,7]
for n in range(20):
    base.append(3*base[-1]-2*base[-2])
    other.append(3*other[-1]-2*other[-2])
check(base[:6] == [0,1,3,7,15,31], "recurrence terms")
check(all(a==2**n-1 for n,a in enumerate(base)), "explicit base recurrence")
check(all(a==3+2**(n+1) for n,a in enumerate(other)), "exercise3.1 explicit recurrence")
check(other[:3]==[5,7,11], "exercise3.1 shown initial terms")

# Exact Q(sqrt5) arithmetic for Binet: pairs represent a+b*sqrt(5).
def mul(x,y):
    a,b=x; c,d=y
    return a*c+5*b*d, a*d+b*c
phi=(Fraction(1,2),Fraction(1,2)); psi=(Fraction(1,2),Fraction(-1,2))
xp=yp=(Fraction(1),Fraction(0))
fib=[0,1]
for n in range(2,22): fib.append(fib[-1]+fib[-2])
for n in range(22):
    diff=(xp[0]-yp[0],xp[1]-yp[1])
    # Dividing a+b*sqrt5 by sqrt5 gives b+(a/5)*sqrt5.
    check(diff[1]==fib[n] and diff[0]==0, f"exact Binet n={n}")
    xp=mul(xp,phi); yp=mul(yp,psi)
check(fib[:7]==[0,1,1,2,3,5,8], "Fibonacci terms")
check(all(coverings(n)==fib[n+1] for n in range(11)), "tiling shift Fibonacci")
print(f"Foundations: {checks} independent checks passed.")
