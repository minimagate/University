#!/usr/bin/env python3
"""Verify the lecture sources and the preserved reference editions. Run in the vault,
or pass --vault PATH when the bundle is elsewhere. Does not modify sources."""
import argparse,hashlib,json
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('--vault',type=Path);p.add_argument('--references',action='store_true',help='Also check historical reference editions, which may have been archived or removed separately');a=p.parse_args()
bundle=Path(__file__).resolve().parents[1]
vault=a.vault
if vault is None:
 for q in [Path.cwd(),*bundle.parents]:
  if (q/'AGENTS.md').exists() and (q/'_transcripts').is_dir(): vault=q; break
if vault is None: p.error('Cannot locate vault; pass --vault PATH')
ok=0; bad=[]
for e in json.loads((bundle/'assets/fonti.json').read_text()):
 for k,h in [('note','sha256'),('transcript','transcript_sha256')]:
  if e.get(k):
   f=vault/e[k]
   if not f.is_file() or hashlib.sha256(f.read_bytes()).hexdigest()!=e[h]:bad.append(e[k])
   else:ok+=1
print(f'Lecture sources: {ok} intact, {len(bad)} mismatches')
refs=json.loads((bundle/'assets/reference-hashes.json').read_text()) if a.references else {}; good=0
for name,h in refs.items():
 f=vault/name
 if not f.is_file() or hashlib.sha256(f.read_bytes()).hexdigest()!=h:bad.append(name)
 else:good+=1
if a.references: print(f'Historical reference files: {good} intact, {len(refs)-good} mismatches')
else: print('Historical reference editions: not checked (use --references)')
if bad: raise SystemExit('Changed or absent: '+repr(bad))
