#!/usr/bin/env python3
"""Check native TeXmacs tag balance, including surplus > inside block bodies."""
import re,sys
from pathlib import Path
s=Path(sys.argv[1]).read_bytes().decode('latin-1')
stack=[];i=0;line=1
while i<len(s):
 c=s[i]
 if c=='\n':line+=1
 if c=='\\':i+=2;continue
 if c=='<':
  m=re.match(r'</([\w*#-]+)>',s[i:])
  if m:
   if not stack or stack[-1][0]!=m[1] or not stack[-1][1]:
    sys.exit(f'Mismatched {m[0]} at line {line}: {stack[-1:]}')
   stack.pop();i+=len(m[0]);continue
  m=re.match(r'<(\\?)([\w*#-]+)',s[i:])
  if not m:sys.exit(f'Invalid < at line {line}')
  block=bool(m[1]);stack.append([m[2],block,block,line]);i+=len(m[0]);continue
 if c=='>':
  if not stack:sys.exit(f'Surplus > at line {line}')
  if stack[-1][1]:
   if not stack[-1][2]:sys.exit(f'Surplus > inside block {stack[-1][0]} at line {line}')
   stack[-1][2]=False
  else:stack.pop()
 i+=1
if stack:sys.exit(f'Unclosed tags: {stack[-3:]}')
print('ok')
