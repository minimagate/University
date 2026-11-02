#!/usr/bin/env python3
"""Controlla corrispondenza esercizi/soluzioni, figure e destinazioni delle fonti."""
from pathlib import Path
import json,re,xml.etree.ElementTree as ET
b=Path(__file__).resolve().parents[1]
questions=set();chapters=[]
for p in sorted((b/'source').glob('[0-9][0-9].tm')):
 s=p.read_text();m=re.search(r'<chapter\|',s)
 if not m:continue
 c=int(p.stem);chapters.append(c)
 for group in re.findall(r'<\\verifica\|\d+>(.*?)</verifica>',s,re.S):
  for n in re.findall(r'<strong\|(\d+)\.>',group):questions.add((c,int(n)))
solutions=re.findall(r'<strong\|(\d+)\.(\d+)\.>',(b/'source/99-app.tm').read_text())
assert len(solutions)==len(set(solutions))
assert questions==set((int(c),int(n)) for c,n in solutions)
assert chapters==list(range(1,15))
src='\n'.join(p.read_text() for p in (b/'source').glob('*.tm'))
used=set(re.findall(r'@IMG\(([\w-]+)',src));sizes=json.loads((b/'assets/sizes.json').read_text())
assert used==set(sizes)
for stem in used:
 p=b/'assets'/(stem+'.svg');root=ET.parse(p).getroot();ns={'s':'http://www.w3.org/2000/svg'}
 assert root.find('s:title',ns) is not None and root.find('s:desc',ns) is not None
 assert (b/'assets'/(stem+'.pdf')).read_bytes().startswith(b'%PDF-')
 w=float(root.attrib['width'].replace('px','').replace('mm',''))*.25
 h=float(root.attrib['height'].replace('px','').replace('mm',''))*.25
 assert sizes[stem]==[w,h]
manifest=json.loads((b/'assets/fonti.json').read_text())
assert len(manifest)==16 and sum(bool(e.get('transcript')) for e in manifest)==5
for e in manifest:
 assert e['chapters'] and all(c in chapters for c in e['chapters'])
 assert all((b/p).is_file() for p in e['destination_files'])
print(f'{len(chapters)} capitoli; {len(questions)} esercizi con {len(solutions)} soluzioni; {len(used)} figure complete;16 note e5 trascrizioni mappate: PASS')
