#!/bin/sh
# Print-to-file keeps white pages even with a dark TeXmacs screen theme.
# Usage: export.sh BOOK.tm BOOK.pdf (Python 3 + GNU TeXmacs; no GNU timeout).
set -eu
HERE=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
exec python3 "$HERE/export.py" "$@"
