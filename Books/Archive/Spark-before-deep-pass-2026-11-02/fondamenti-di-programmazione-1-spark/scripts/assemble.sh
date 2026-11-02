#!/bin/sh
# Usage: assemble.sh OUT.src [--preamble FILE] [--tail FILE] source/*.tm
set -eu
HERE=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
exec python3 - "$HERE" "$@" <<'ASSEMBLE'
import argparse
from pathlib import Path
import os
import sys
import tempfile

root = Path(sys.argv[1])
parser = argparse.ArgumentParser()
parser.add_argument('out', type=Path)
parser.add_argument('--preamble', type=Path, default=root / 'templates/preamble.tm')
parser.add_argument('--tail', type=Path, default=root / 'templates/tail.tm')
parser.add_argument('fragments', nargs='+', type=Path)
args = parser.parse_intermixed_args(sys.argv[2:])
# A blank line is a TeXmacs paragraph boundary, even without a final newline.
parts = ['<TeXmacs|2.1.5>', '<style|book>', r'<\body>']
parts += [p.read_text(encoding='utf-8').strip() for p in
          [args.preamble, *args.fragments, args.tail]]
with tempfile.NamedTemporaryFile(mode='w', encoding='utf-8', dir=args.out.parent,
                                 prefix='.assemble-', delete=False) as stream:
    temporary = Path(stream.name)
    try:
        stream.write('\n\n'.join(parts) + '\n')
        stream.flush()
        os.replace(temporary, args.out)
    finally:
        temporary.unlink(missing_ok=True)
ASSEMBLE
