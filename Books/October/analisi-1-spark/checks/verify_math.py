#!/usr/bin/env python3
"""Controlli indipendenti esatti e numerici degli esempi di Analisi 1 Spark.
Eseguire da qualunque cartella: python3 checks/verify_math.py.
Le prove e le ipotesi sui resti sono revisionate separatamente.
"""
from exact_series import *
from math import comb,sin,cos,asin,acos,atan,pi,exp,log,sqrt
import json
from pathlib import Path
counts={}
def check(group,condition):
    if not condition:raise AssertionError(group)
    counts[group]=counts.get(group,0)+1

def series(name,got,expected,degree):
    check(name,got[:degree+1]==expected[:degree+1])

# Logica: tutte le assegnazioni, non una selezione di esempi.
for p in [False,True]:
 for q in [False,True]:
  check('Logica', (not(p and q))==((not p)or(not q)))
  check('Logica', (not(p or q))==((not p)and(not q)))
  check('Logica', ((not p)or q)==(q or(not p)))
  check('Logica', (not((not p)or q))==(p and(not q)))
# Induzioni, somme e Bernoulli: esatte su casi finiti; non sostituiscono le prove.
for n in range(1,31):
 check('Somme e induzione',sum(k*k for k in range(n+1))==Q(n*(n+1)*(2*n+1),6))
 check('Somme e induzione',sum(Q(1,k*(k+1)) for k in range(1,n+1))==Q(n,n+1))
 check('Somme e induzione',factorial(n)>=2**n if n>=4 else factorial(n)<2**n)
 for t in [Q(-1),Q(-3,4),Q(-1,10),Q(0),Q(1,10),Q(1),Q(3,2)]:
  check('Bernoulli',(1+t)**n>=1+n*t)
 en=(1+Q(1,n))**n
 check('Numero e',en<3)
 if n>=2:check('Numero e',en>=(1+Q(1,n-1))**(n-1))
 if n>=3:check('Numero e',en<Q(35,12))
for a in [Q(-1),Q(0),Q(1,2),Q(2)]:
 for n in range(1,9):
  total=sum(a**k for k in range(n+1))
  check('Somma geometrica',total==((a**(n+1)-1)/(a-1) if a!=1 else n+1))
# Ratio del coefficiente binomiale nell'esercizio9.1: identità esatta.
for n in range(1,20):
 check('Rapporti fattoriali',Q(comb(3*n+3,n+1),comb(3*n,n))==Q((3*n+3)*(3*n+2)*(3*n+1),(n+1)*(2*n+2)*(2*n+1)))
 check('Rapporti fattoriali',Q((n+1)**(n+1),factorial(n+1))/Q(n**n,factorial(n))==(1+Q(1,n))**n)
# Tutti i coefficienti e le cancellazioni non banali del blocco Taylor.
series('Serie: seno per coseno',mul(SIN,COS),poly(0,1,0,Q(-2,3),0,Q(2,15)),5)
series('Serie: reciproco coseno',inv(COS),poly(1,0,Q(1,2),0,Q(5,24)),5)
series('Serie: tangente',div(SIN,COS),poly(0,1,0,Q(1,3),0,Q(2,15)),5)
series('Serie: seno del seno interno',compose(SIN,poly(0,1,0,1)),poly(0,1,0,Q(5,6)),3)
series('Serie: coseno del seno',compose(COS,SIN),poly(1,0,Q(-1,2),0,Q(5,24)),4)
series('Serie: seno meno arcotangente',add(SIN,scale(ATAN,-1)),poly(0,0,0,Q(1,6)),3)
check('Derivata quinta',power(SIN,3)[5]*factorial(5)==-60)
series('Serie: potenza variabile',compose(EXP,mul(X,compose(LOG,SIN))),poly(1,0,1,Q(-1,2)),3)
series('Serie: logaritmo di uno piu seno quadro',compose(LOG,power(SIN,2)),poly(0,0,1,0,Q(-5,6)),4)
series('Serie: seno iperbolico',scale(add(EXP,scale(compose(EXP,scale(X,-1)),-1)),Q(1,2)),SINH,8)
series('Serie: coseno iperbolico',scale(add(EXP,compose(EXP,scale(X,-1))),Q(1,2)),COSH,8)
series('Serie: identita iperbolica',add(power(COSH,2),scale(power(SINH,2),-1)),poly(1),8)
series('Serie: radice quadrata',binomial(Q(1,2)),poly(1,Q(1,2),Q(-1,8)),2)
series('Serie: due radici cubiche',add(add(binomial(Q(1,3)),compose(binomial(Q(1,3)),scale(X,-1))),poly(-2)),poly(0,0,Q(-2,9)),2)
series('Serie: esempio Hôpital Taylor',add(add(add(EXP,scale(COS,-1)),scale(SIN,-1)),power(X,2)),poly(0,0,2),2)
series('Serie: esercizio11 numeratore',add(compose(EXP,compose(ATAN,scale(X,2))),scale(binomial(Q(1,3)),-1)),poly(0,Q(5,3)),1)
series('Serie: esercizio11 denominatore',add(compose(SIN,scale(X,5)),compose(LOG,scale(X,-1))),poly(0,4),1)
# Espansione log(2+h)-log2: coefficienti razionali, costante trattata a parte.
series('Serie: centro2 logaritmo',compose(LOG,scale(X,Q(1,2))),poly(0,Q(1,2),Q(-1,8),Q(1,24)),3)
check('Limiti esercizi: rapporti esatti',Q(5,3)/4==Q(5,12))
check('Limiti esercizi: rapporti esatti',Q(-2,9)/Q(1,2)==Q(-4,9))
# Controlli numerici indipendenti per valori trigonometrici e inverse.
for got,want in [(asin(sin(2)),pi-2),(acos(cos(4)),2*pi-4),(asin(sin(5*pi/6)),pi/6),(acos(cos(7*pi/4)),pi/4)]:
 check('Trigonometria e inverse',abs(got-want)<1e-12)
for t in [-1,-.7,.3,1]:
 check('Trigonometria e inverse',abs(sin(acos(t))-sqrt(1-t*t))<1e-12)
for t in [-3,-.2,.2,3]:
 check('Trigonometria e inverse',abs(atan(t)+atan(1/t)-(pi/2 if t>0 else -pi/2))<1e-12)
# Coordinate di due successioni per nonesistenza del limite (cap10).
for n in range(1,9):
 x=1/sqrt(2*pi*n); y=1/sqrt(2*pi*n+pi/2)
 check('Successioni oscillanti',abs(cos(1/x**2)-1)<1e-12 and abs(cos(1/y**2))<1e-12)
report={'total':sum(counts.values()),'groups':counts,'scope':'Conti esatti finiti e coefficienti formali; valori trigonometrici numerici. Non sono prove dei teoremi o dei resti.'}
print(json.dumps(report,ensure_ascii=False,indent=2))
