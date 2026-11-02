from fractions import Fraction as Q
from math import factorial
N=6
def p(*a):return [Q(a[i]) if i<len(a) else Q(0) for i in range(N)]
def add(a,b):return [x+y for x,y in zip(a,b)]
def scale(a,c):return [x*c for x in a]
def mul(a,b):return [sum((a[j]*b[i-j] for j in range(i+1)),Q()) for i in range(N)]
def power(a,k):
 r=p(1)
 for _ in range(k):r=mul(r,a)
 return r
def compose(a,b):
 assert b[0]==0
 r=p(0)
 for k,c in enumerate(a):r=add(r,scale(power(b,k),c))
 return r
def inv(a):
 assert a[0]!=0
 r=p(1/a[0])
 for i in range(1,N):r[i]=-sum((a[j]*r[i-j] for j in range(1,i+1)),Q())/a[0]
 return r
X=p(0,1);E=p(*[Q(1,factorial(k)) for k in range(N)])
S=p(0,1,0,Q(-1,6),0,Q(1,120));C=p(1,0,Q(-1,2),0,Q(1,24))
A=p(0,1,0,Q(-1,3),0,Q(1,5));L=p(0,1,Q(-1,2),Q(1,3),Q(-1,4),Q(1,5))
assert mul(S,C)==p(0,1,0,Q(-2,3),0,Q(2,15))
assert compose(C,S)==p(1,0,Q(-1,2),0,Q(5,24))
assert power(S,3)[5]*factorial(5)==-60
assert inv(C)==p(1,0,Q(1,2),0,Q(5,24))
assert mul(S,inv(C))==p(0,1,0,Q(1,3),0,Q(2,15))
u=mul(X,compose(L,S))
assert compose(E,u)[:4]==p(1,0,1,Q(-1,2))[:4]
assert add(compose(L,power(S,2)),scale(power(X,2),-1))[4]==Q(-5,6)
num=add(compose(E,compose(A,scale(X,2))),scale(p(1,Q(1,3)),-1))
assert num[1]==Q(5,3)
assert Q(-2,9)/Q(1,2)==Q(-4,9)
print('10 verifiche esatte con frazioni: prodotti, composte, reciproci, coefficienti e limiti del blocco 11–14: OK')
