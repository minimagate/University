#!/usr/bin/env python3
"""Verifica le fonti delle lezioni e, con --references, le impronte dell'edizione precedente.
Non modifica nulla."""
import argparse, hashlib, json, sys
from pathlib import Path


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('vault', nargs='?', type=Path,
                   help="radice del vault; se omessa, cercata fra le cartelle genitrici del libro")
    p.add_argument('--references', action='store_true',
                   help="verifica anche l'edizione precedente (file che possono non essere più nel vault)")
    a = p.parse_args()

    book = Path(__file__).resolve().parent.parent
    if a.vault:
        vault = a.vault.resolve()
    else:
        vault = next((q for q in book.parents if (q / 'Notes').is_dir() and (q / '_transcripts').is_dir()), None)
        if vault is None:
            p.error('Indicare la radice del vault: python3 scripts/verify_sources.py /percorso/University')

    bad = []
    ok = 0
    for entry in json.loads((book / 'assets/fonti.json').read_text()):
        for key, hkey in [('note', 'sha256'), ('transcript', 'transcript_sha256')]:
            if entry.get(key):
                path = vault / entry[key]
                if path.is_file() and sha(path) == entry[hkey]:
                    ok += 1
                else:
                    bad.append(entry[key])
    print(f'{ok} fonti delle lezioni intatte, {len(bad)} modificate o assenti')

    if a.references:
        original = json.loads((book / 'assets/original-hashes.json').read_text())
        relocations_path = vault / 'Books/Archive/relocations.json'
        relocations = ({e['from']: e['to'] for e in json.loads(relocations_path.read_text())['files']}
                       if relocations_path.exists() else {})
        ref_bad = []
        ref_ok = 0
        for name, expected in original.items():
            resolved = relocations.get(name, name)
            path = vault / resolved
            if path.is_file() and sha(path) == expected:
                ref_ok += 1
            else:
                ref_bad.append(resolved)
        print(f'{ref_ok} file dell\'edizione precedente intatti, {len(ref_bad)} modificati o assenti')
        bad += ref_bad
    else:
        print('Edizione precedente: non verificata (usare --references)')

    if bad:
        print('Modificati o assenti: ' + ', '.join(bad), file=sys.stderr)
        sys.exit(1)


if __name__ == '__main__':
    main()
