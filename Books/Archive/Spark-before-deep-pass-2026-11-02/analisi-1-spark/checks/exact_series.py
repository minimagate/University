#!/usr/bin/env python3
"""Serie formali a coefficienti razionali, per verificare i conti del volume.
Non dimostra la validità analitica dei resti: quella è controllata nel testo.
"""
from fractions import Fraction as Q
from math import factorial
N=8

def poly(*xs):
    return [Q(xs[i]) if i<len(xs) else Q(0) for i in range(N+1)]

def add(a,b):return [x+y for x,y in zip(a,b)]
def scale(a,c):return [Q(c)*x for x in a]
def mul(a,b):return [sum(a[j]*b[i-j] for j in range(i+1)) for i in range(N+1)]
def power(a,n):
    result=poly(1)
    for _ in range(n):result=mul(result,a)
    return result

def inv(a):
    if not a[0]:raise ValueError('Termine costante nullo')
    b=poly(1/a[0])
    for i in range(1,N+1):b[i]=-sum(a[j]*b[i-j] for j in range(1,i+1))/a[0]
    return b

def div(a,b):return mul(a,inv(b))
def compose(a,b):
    if b[0]:raise ValueError('La serie interna deve avere centro zero')
    r=poly(0)
    for c in reversed(a):r=add(mul(r,b),poly(c))
    return r

def binomial(alpha):
    a=poly(1)
    for i in range(1,N+1):a[i]=a[i-1]*(Q(alpha)-i+1)/i
    return a
X=poly(0,1)
EXP=poly(*(Q(1,factorial(i)) for i in range(N+1)))
LOG=poly(0,*(Q((-1)**(i-1),i) for i in range(1,N+1)))
SIN=poly(*(Q((-1)**((i-1)//2),factorial(i)) if i%2 else 0 for i in range(N+1)))
COS=poly(*(Q((-1)**(i//2),factorial(i)) if not i%2 else 0 for i in range(N+1)))
ATAN=poly(*(Q((-1)**((i-1)//2),i) if i%2 else 0 for i in range(N+1)))
SINH=poly(*(Q(1,factorial(i)) if i%2 else 0 for i in range(N+1)))
COSH=poly(*(Q(1,factorial(i)) if not i%2 else 0 for i in range(N+1)))
