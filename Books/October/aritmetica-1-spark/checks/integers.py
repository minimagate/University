#!/usr/bin/env python3
"""Independent exact checks for Spark chapters 4--8 and their answers.

Direct integer enumeration tests numeric examples, compared with formulas/text.
The broad finite sweeps check cancellation, linear congruences and CRT criterion,
including negative/zero coefficients. They do not replace the written proofs.
"""
from math import gcd, lcm, factorial, isqrt
from fractions import Fraction
from itertools import product

checks = 0
def ck(name, condition):
    global checks
    assert condition, name
    checks += 1

def divisors(n):
    return [d for d in range(1,n+1) if n % d == 0]

def euclid(a,b):
    result=[]
    while b:
        q,r=divmod(a,b)
        result.append((a,b,q,r)); a,b=b,r
    return a,result

def all_dio(a,b,c,bound):
    return {(x,y) for x in range(-bound,bound+1)
            for y in range(-bound,bound+1) if a*x+b*y==c}

ck('divisibility examples',18==6*3 and -12==3*(-4))
ck('divisions',divmod(17,5)==(3,2) and divmod(-17,5)==(-4,3))
ck('negative divisor', -17 == 4*(-5)+3 and 0 <= 3 < abs(-5))
ck('divisors 18',divisors(18)==[1,2,3,6,9,18])
ck('divisors 12',divisors(12)==[1,2,3,4,6,12])
ck('common divisors',sorted(set(divisors(18))&set(divisors(12)))==[1,2,3,6])
g,rows=euclid(45,17)
ck('Euclid45,17',g==1 and rows==[(45,17,2,11),(17,11,1,6),(11,6,1,5),(6,5,1,1),(5,1,5,0)])
ck('exercise division',divmod(-29,6)==(-5,1))
ck('exercise Euclid',euclid(84,30)==(6,[(84,30,2,24),(30,24,1,6),(24,6,4,0)]))
ck('Bezout resubstitution',1==6-5==2*6-11==2*17-3*11==8*17-3*45)
ck('Bezout products',8*17==136 and 3*45==135)
ck('combinations6,9',3==-6+9 and 15==-5*6+5*9 and gcd(6,9)==3)
ck('Euclid lemma counterexample', (4*3)%6==0 and 4%6!=0 and 3%6!=0)
ck('lemma motivating identity',1==2*3-5 and gcd(3,5)==1)
ck('factor72',72==2**3*3**2 and len(divisors(72))==12)
ck('lattice72',sorted(2**i*3**j for i in range(4) for j in range(3))==divisors(72))
ck('factor90',90==2*3**2*5)
ck('gcd lcm72 90',gcd(72,90)==18 and lcm(72,90)==360 and 18*360==72*90)
def valuation(n,p):
    k=0
    while n%p==0:
        n//=p;k+=1
    return k
ck('Legendre19',valuation(factorial(19),2)==16 and [19//2**j for j in range(1,5)]==[9,4,2,1])
ck('Bezout30,18',euclid(30,18)[0]==6 and 2*18-30==6 and 4*18-2*30==12)
ck('factor180 divisors',180==2**2*3**2*5 and len(divisors(180))==18)
ck('gcd lcm18048',48==2**4*3 and gcd(180,48)==12 and lcm(180,48)==720 and 12*720==180*48)
ck('dio examples',6*1+9*1==15 and 6*4+9*(-1)==15 and Fraction(14,6)*6==14)
ck('dio14 impossible',not all_dio(6,9,14,30))
expected={(1+3*t,1-2*t) for t in range(-100,101)
          if abs(1+3*t)<=30 and abs(1-2*t)<=30}
ck('dio15 parameter exhaustive',all_dio(6,9,15,30)==expected)
ck('dio15 nonnegative',[(x,y) for x,y in all_dio(6,9,15,30) if x>=0 and y>=0]==[(1,1)])
ck('lattice figure',[2*x+3*y for x,y in [(0,3),(3,1),(6,-1)]]==[9,9,9])
for n,expected in [(15,{(8,7),(8,-7),(4,1),(4,-1),(-8,-7),(-8,7),(-4,-1),(-4,1)}),
                   (26,set()),(8,{(3,1),(3,-1),(-3,1),(-3,-1)})]:
    got={(x,y) for x in range(-30,31) for y in range(-30,31) if x*x-y*y==n}
    ck(f'squares {n}',got==expected)
ck('dio exercise particular',4*2+6==14)
expected={(2+3*t,1-2*t) for t in range(-100,101)
          if abs(2+3*t)<=30 and abs(1-2*t)<=30}
ck('dio14 exercise exhaustive',all_dio(4,6,14,30)==expected)
ck('dio14 nonnegative',[p for p in expected if min(p)>=0]==[(2,1)])
ck('rest examples',all(a%5==2 for a in [-8,-3,2,7,12,17]))
ck('mod reduction',85%7==1 and 38%7==3 and (85*38)%7==3)
ck('power example',2**5==32 and pow(2,5,33)==32 and pow(2,10,33)==1)
ck('digit criteria',345==3*10**2+4*10+5 and 345%3==0 and 345%9!=0 and 345%11==4)
ck('fraction examples',Fraction(1,2)==Fraction(2,4)==Fraction(3,6))
ck('ch7 representatives',[-2%7,5%7,12%7]==[5,5,5])
ck('ch7 ops',(12+17)%7==1 and (12*17)%7==1 and 12%7==5 and 17%7==3)
ck('inverse3mod7',[x for x in range(7) if 3*x%7==1]==[5])
ck('inverse17mod45',[x for x in range(45) if 17*x%45==1]==[8])
ck('cancellation counterexample',2*1%6==2*4%6 and 1%6!=4%6 and 1%3==4%3)
ck('linear6mod15',[x for x in range(15) if 6*x%15==9]==[4,9,14])
ck('reduced inverse2mod5',[x for x in range(5) if 2*x%5==1]==[3])
ck('linear6mod15 impossible',not [x for x in range(15) if 6*x%15==8])
ck('CRT3,5',[x for x in range(15) if x%3==2 and x%5==3]==[8])
ck('CRT4,6',[x for x in range(12) if x%4==1 and x%6==3]==[9])
ck('CRT4,6 impossible',not [x for x in range(12) if x%4==1 and x%6==2])
ck('CRT grid3,5',len({(x%3,x%5) for x in range(15)})==15)
ck('CRT grid2,4',len({(x%2,x%4) for x in range(8)})==4)
ck('inverse5mod12',[x for x in range(12) if 5*x%12==1]==[5])
ck('linear8mod12',[x for x in range(12) if 8*x%12==4]==[2,5,8,11])
ck('CRT6,9',[x for x in range(18) if x%6==2 and x%9==5]==[14])
ck('CRT6,9 impossible',not [x for x in range(18) if x%6==2 and x%9==4])

# Exhaustive finite sweeps validate the formulas independently by direct search.
for n in range(1,16):
    for a,b in product(range(-8,9),repeat=2):
        sols=[x for x in range(n) if (a*x-b)%n==0]
        d=gcd(a,n)
        ck('linear criterion/count',len(sols)==(d if b%d==0 else 0))
    for c,x,y in product(range(-5,6),repeat=3):
        ck('cancellation formula', ((c*(x-y))%n==0)==((x-y)%(n//gcd(c,n))==0))
for m,n in product(range(1,10),repeat=2):
    for a,b in product(range(m),range(n)):
        sols=[x for x in range(lcm(m,n)) if x%m==a and x%n==b]
        ck('CRT criterion/uniqueness',len(sols)==int((b-a)%gcd(m,n)==0))

print(f'{checks} controlli esatti superati (capitoli 4–8).')
