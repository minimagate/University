#!/usr/bin/env python3
"""Verifica note, trascrizioni e riferimenti conservati dalla radice del vault."""
import argparse,hashlib,json
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('--vault',type=Path,default=None);a=p.parse_args()
b=Path(__file__).resolve().parents[1];v=a.vault or b.parents[2]
if not (v/'Notes').is_dir():raise SystemExit('Specificare --vault con la radice University')
checks=[]
for e in json.loads((b/'assets/fonti.json').read_text()):
 for k,h in [('note','sha256'),('transcript','transcript_sha256')]:
  if e.get(k):checks.append((e[k],e[h]))
checks+=list(json.loads((b/'checks/preserved-files.json').read_text()).items())
bad=[]
for name,want in checks:
 f=v/name
 if not f.is_file() or hashlib.sha256(f.read_bytes()).hexdigest()!=want:bad.append(name)
print(f'{len(checks)-len(bad)} file intatti, {len(bad)} modificati o assenti')
for name in bad:print(name)
raise SystemExit(bool(bad))
