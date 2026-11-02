#!/bin/sh
# Compile macOS PDF review helpers; keep Swift's module cache in the supplied BIN.
set -eu
HERE=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
BIN=${1:-./bin}
mkdir -p "$BIN"
BIN=$(CDPATH= cd -- "$BIN" && pwd)
mkdir -p "$BIN/swift-cache"
for tool in pdfrender contact pdftext; do
  candidate="$BIN/.$tool.pending"
  trap 'rm -f "$candidate"' EXIT HUP INT TERM
  swiftc -O -module-cache-path "$BIN/swift-cache" "$HERE/$tool.swift" -o "$candidate"
  mv "$candidate" "$BIN/$tool"
done
trap - EXIT HUP INT TERM
printf 'tools in %s\n' "$BIN"
