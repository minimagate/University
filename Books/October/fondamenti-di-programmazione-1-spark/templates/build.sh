#!/bin/sh
# Copy to the bundle root. Its directory name is also the PDF/TM stem.
set -eu
BOOK_ROOT=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
cd "$BOOK_ROOT"
STEM=${BOOK_STEM:-$(basename "$BOOK_ROOT")}
sh scripts/assemble.sh "$STEM.src" --preamble templates/preamble.tm --tail templates/tail.tm source/*.tm
# Keep the published .tm until a checked candidate has exported successfully.
CANDIDATE=$(python3 -c 'import os, sys, tempfile; fd, name = tempfile.mkstemp(prefix=".build-", suffix=".tm", dir=sys.argv[1]); os.close(fd); print(name)' "$BOOK_ROOT")
trap 'rm -f "$CANDIDATE"' EXIT HUP INT TERM
python3 scripts/build.py "$STEM.src" "$CANDIDATE" --assets assets --sizes assets/sizes.json
python3 scripts/check.py "$CANDIDATE"
sh scripts/export.sh "$CANDIDATE" "$BOOK_ROOT/$STEM.pdf"
mv "$CANDIDATE" "$STEM.tm"
trap - EXIT HUP INT TERM
