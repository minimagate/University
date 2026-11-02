#!/usr/bin/env python3
from pathlib import Path
import hashlib,json,sys
book=Path(__file__).resolve().parent.parent
if len(sys.argv)>1:
    vault=Path(sys.argv[1]).resolve()
else:
    vault=next((p for p in book.parents if (p/'Notes').is_dir() and (p/'_transcripts').is_dir()),None)
    if vault is None:raise SystemExit('Indicare la radice del vault: python3 scripts/verify_sources.py /percorso/University')
count=0
for entry in json.loads((book/'assets/fonti.json').read_text()):
    for key,hkey in [('note','sha256'),('transcript','transcript_sha256')]:
        if entry.get(key):
            path=vault/entry[key]
            assert hashlib.sha256(path.read_bytes()).hexdigest()==entry[hkey],f'Fonte modificata: {path}'
            count+=1
original=json.loads((book/'assets/original-hashes.json').read_text())
relocations_path=vault/'Books/Archive/relocations.json'
relocations={entry['from']:entry['to'] for entry in json.loads(relocations_path.read_text())['files']} if relocations_path.exists() else {}
archived=0
for name,expected in original.items():
    resolved=relocations.get(name,name)
    archived+=int(resolved!=name)
    path=vault/resolved
    assert hashlib.sha256(path.read_bytes()).hexdigest()==expected,f'Originale modificato: {resolved}'
print(f'{count} fonti e {len(original)} file del volume precedente intatti ({archived} in archivio); 0 modifiche.')
