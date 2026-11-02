"""Independent review checks, finite models only; proofs reviewed separately."""
from itertools import product
from pathlib import Path
import re,json
nchecks=0
def ck(c):
 global nchecks
 assert c
 nchecks+=1
imp=lambda p,q:not p or q
for p,q,r in product([False,True],repeat=3):
 ck((p or(not p and q))==(p or q))
 ck((p and(not p or q))==(p and q))
 ck(imp(imp(p,q) and imp(q,r),imp(p,r)))
 ck(imp((p or q) and(not p or r),q or r))
 ck(imp((p or q) and(not p or r) and(not q or r),r))
 ck((not(p and q))==((not p)or(not q)))
 ck(imp(q and r,q))
 ck(imp(imp(p,q and r),imp(p,q)))
 ck(imp(imp(p or q,r),imp(p,r)))
 ck(imp(p,q)==imp(not q,not p))
# Actual truth table entries: P,Q,negP,and,or,imp,eq.
s=Path('/tmp/fdp-spark-2026/logic/02.tm').read_text()
rows=re.findall(r'<row\|(.*?)>(?=\|<row|>>>>>)',s)
# Avoid fragile full table parse: identify seven encoded t/f cells in each row.
for line in re.findall(r'<row\|((?:(?!<row\|).)*)',s):
 vals=re.findall(r'<math-up\|([tf])>',line)
 if len(vals)==7:
  vs=[v=='t' for v in vals];p,q=vs[:2]
  ck(vs[2:]==[not p,p and q,p or q,imp(p,q),p==q])
for n in range(1,5):
 vals=list(product([False,True],repeat=n))
 for p,q in product(vals,repeat=2):
  ck(not all(p)==any(not v for v in p))
  ck(not any(p)==all(not v for v in p))
  ck(all(a and b for a,b in zip(p,q))==(all(p)and all(q)))
  ck(any(a or b for a,b in zip(p,q))==(any(p)or any(q)))
  ck(imp(any(a and b for a,b in zip(p,q)),any(p)and any(q)))
  ck(imp(all(p)or all(q),all(a or b for a,b in zip(p,q))))
  for c in [False,True]:
   ck(all(a and c for a in p)==(all(p)and c))
   ck(any(a or c for a in p)==(any(p)or c))
for n in [1,2,3]:
 for bits in product([False,True],repeat=n*n):
  r=[bits[i*n:(i+1)*n] for i in range(n)]
  ex_all=any(all(r[x][y] for x in range(n)) for y in range(n))
  all_ex=all(any(r[x][y] for y in range(n)) for x in range(n))
  ck(imp(ex_all,all_ex))
  ck(all(all(row) for row in r)==all(all(r[x][y] for x in range(n)) for y in range(n)))
ck(all(any(x!=y for y in range(2)) for x in range(2)))
ck(not any(all(x!=y for x in range(2)) for y in range(2)))
print(json.dumps({'checks':nchecks,'result':'passed'},indent=2))
