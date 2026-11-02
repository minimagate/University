#!/usr/bin/env python3
"""Independent checks of numerical examples in the algebra block 09--12."""
from fractions import Fraction
from math import gcd, lcm
checks=0
def ck(label,condition):
    global checks
    assert condition,label
    checks+=1
def roots(a,n): return [x for x in range(n) if x*x%n==a%n]
def order(a,n):
    assert gcd(a,n)==1
    x=a%n;k=1
    while x!=1:
        x=x*a%n;k+=1
    return k
def comp(p,q): return tuple(p[q[i]-1] for i in range(len(q)))
def power(p,k):
    result=tuple(range(1,len(p)+1))
    for _ in range(k): result=comp(p,result)
    return result
ck('units12',[x for x in range(12) if gcd(x,12)==1]==[1,5,7,11])
ck('units5 inverses',[next(y for y in range(1,5) if x*y%5==1) for x in range(1,5)]==[1,3,2,4])
ck('subgroup3mod12',{3*k%12 for k in range(12)}=={0,3,6,9})
ck('subgroup4mod12',{4*k%12 for k in range(12)}=={0,4,8})
ck('subgroups intersection',{3*k%12 for k in range(12)} & {4*k%12 for k in range(12)}=={0})
sig=(2,3,1); tau=(2,1,3)
ck('permutation products',comp(sig,tau)==(3,2,1) and comp(tau,sig)==(1,3,2))
rho=(2,3,1,5,4)
ck('rho squared',power(rho,2)==(3,1,2,4,5))
ck('rho order',next(k for k in range(1,7) if power(rho,k)==(1,2,3,4,5))==6)
ck('rho inverse',comp(rho,(3,1,2,5,4))==(1,2,3,4,5))
ck('subgroup8mod12',{8*k%12 for k in range(12)}=={0,4,8})
ck('order4mod17',order(4,17)==4 and [pow(4,k,17) for k in range(5)]==[1,4,16,13,1])
ck('exponential4mod17',[k for k in range(12) if pow(4,k,17)==16]==[2,6,10])
ck('exponential impossibility',2 not in [pow(4,k,17) for k in range(4)])
ck('3mod7 cycle',[pow(3,k,7) for k in range(7)]==[1,3,2,6,4,5,1])
ck('3mod13 cycle',[pow(3,k,13) for k in range(4)]==[1,3,9,1])
ck('3exp61mod91',[k for k in range(18) if pow(3,k,91)==61]==[5,11,17])
ck('exp check',3**5==243==2*91+61)
ck('1/7 decimal',Fraction(142857,999999)==Fraction(1,7))
ck('rest cycle 1/7',[(10*r)//7 for r in [1,3,2,6,4,5]]==[1,4,2,8,5,7])
ck('rest next 1/7',[(10*r)%7 for r in [1,3,2,6,4,5]]==[3,2,6,4,5,1])
ck('34 repeat',Fraction(34,99)*99==34)
ck('mixed repeat1/6',Fraction(15,90)==Fraction(1,6))
ck('decimal3/40',Fraction(3,40)==Fraction(75,1000))
ck('order10mod3',order(10,3)==1)
ck('exponential exercise',[k for k in range(12) if pow(2,k,7)==4]==[2,5,8,11])
ck('decimal exercise',Fraction(7,80)==Fraction(875,10000) and 80==2**4*5)
ck('repeat exercise',Fraction(27-2,90)==Fraction(5,18))
ck('roots1mod5',roots(1,5)==[1,4])
ck('nonresidue2mod5',roots(2,5)==[])
ck('roots1mod15',roots(1,15)==[1,4,11,14])
ck('discriminant',5*5-4*3==13 and 13%11==2)
ck('quad discriminant squares',[x*x%11 for x in range(6)]==[0,1,4,9,5,3])
ck('quad11 impossible',not [x for x in range(11) if (x*x+5*x+3)%11==0])
ck('lift6mod25',roots(6,25)==[9,16])
ck('lift1 correction',[h for h in range(5) if ((1+5*h)**2-6)%25==0]==[3])
ck('lift4 correction',[h for h in range(5) if ((4+5*h)**2-6)%25==0]==[1])
ck('lift checks',9**2==3*25+6 and 16**2==10*25+6)
ck('singular all lifts',roots(0,9)==[0,3,6])
ck('singular no lifts',roots(3,9)==[])
ck('roots6mod75',roots(6,75)==[9,66])
ck('quadratic exercise25',roots(4,25)==[2,23])
ck('quadratic exercise12',roots(1,12)==[1,5,7,11])
for n in range(2,101):
    distinct_primes=sum(n%p==0 and all(p%d for d in range(2,int(p**0.5)+1)) for p in range(2,n+1))
    ck('idempotent count',sum(x*(x-1)%n==0 for x in range(n))==2**distinct_primes)
print(f'{checks} controlli indipendenti superati (capitoli 9–12).')
