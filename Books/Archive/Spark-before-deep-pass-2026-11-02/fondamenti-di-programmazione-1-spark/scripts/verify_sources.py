#!/usr/bin/env python3
"""Verify unchanged lecture sources, archive and editorial reference."""
import argparse
import hashlib
import json
from pathlib import Path

bundle = Path(__file__).resolve().parent.parent
ap = argparse.ArgumentParser(description=__doc__)
ap.add_argument('--vault', type=Path)
args = ap.parse_args()
vault = args.vault
if vault is None:
    vault = next((p for p in bundle.parents if (p / 'Notes').is_dir() and (p / 'AGENTS.md').is_file()), None)
if vault is None:
    ap.error('Provide --vault PATH for a bundle outside the University workspace')

def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

bad = []
lecture_count = 0
for row in json.loads((bundle / 'assets/fonti.json').read_text()):
    if not row['chapters']:
        bad.append('No chapter destination: ' + row['date'])
    for key, hk in (('note', 'sha256'), ('transcript', 'transcript_sha256')):
        if row.get(key):
            path = vault / row[key]
            if not path.is_file() or digest(path) != row[hk]:
                bad.append(row[key])
            lecture_count += 1
preserved = json.loads((bundle / 'assets/original-hashes.json').read_text())
for rel, expected in preserved.items():
    path = vault / rel
    if not path.is_file() or digest(path) != expected:
        bad.append(rel)
if bad:
    raise SystemExit('Missing/changed sources or destinations: ' + '\n'.join(sorted(set(bad))))
print(f'{lecture_count} lecture files intact; {len(preserved)} snapshotted source/reference files intact; 0 changes')
