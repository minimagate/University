from fractions import Fraction as Q
from math import factorial
for n in range(1,81):
 assert sum(k*k for k in range(n+1))==n*(n+1)*(2*n+1)//6
 assert sum((Q(1,k*(k+1)) for k in range(1,n+1)),Q())==Q(n,n+1)
 assert (factorial(n)>=2**n)==(n>=4)
 for a in [Q(-2),Q(-1,2),Q(0),Q(1,2),Q(2)]:
  assert sum((a**k for k in range(n+1)),Q())==(a**(n+1)-1)/(a-1)
 for x in [Q(-1),Q(-3,4),Q(-1,2),Q(0),Q(1,2),Q(2)]:
  assert (1+x)**n>=1+n*x
assert factorial(0)==2**0
for lam,count in [(Q(-1),0),(Q(0),2),(Q(1),4),(Q(4),3),(Q(5),2)]:
 # Solve |x²−4|=λ by distinct nonnegative values of x².
 squares={4+lam,4-lam} if lam>=0 else set()
 actual=sum(2 if s>0 else 1 if s==0 else 0 for s in squares)
 assert actual==count
print('Somma quadrati, geometrica, telescopica, Bernoulli, fattoriali: 1120 controlli esatti; livelli grafico:5 casi. OK')
