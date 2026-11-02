#!/usr/bin/env python3
"""Check all figure references in editable chapters and their vector originals."""
import json,re
from pathlib import Path
b=Path(__file__).resolve().parents[1]; a=b/'assets'; sizes=json.loads((a/'sizes.json').read_text())
used={}
for p in sorted((b/'source').glob('*.tm')):
 for stem,scale in re.findall(r'@IMG\(([\w-]+)(?:,([\d.]+))?\)',p.read_text()):
  assert stem in sizes,(p,stem,'missing size')
  for ext in ['.svg','.pdf']:assert (a/(stem+ext)).is_file(),(stem,ext)
  svg=(a/(stem+'.svg')).read_text();assert re.search(r'<title(?:\s[^>]*)?>',svg) and re.search(r'<desc(?:\s[^>]*)?>',svg),stem
  w,h=sizes[stem];assert 0<w*float(scale or 1)<=162,(stem,w,scale)
  assert (a/(stem+'.pdf')).read_bytes().startswith(b'%PDF-'),stem
  used.setdefault(stem,[]).append(p.name)
print(json.dumps({'used_figures':len(used),'references':used},ensure_ascii=False,indent=2))
