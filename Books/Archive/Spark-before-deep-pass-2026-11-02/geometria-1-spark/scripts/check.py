#!/usr/bin/env python3
"""Check tag balance of a .tm file (TeXmacs silently loads an EMPTY document on a syntax error).
Usage: check.py FILE.tm   -> prints 'ok' or the first problem with its line number."""
import re, sys
s = open(sys.argv[1], encoding='latin-1').read()
stack = []; i = 0; line = 1
while i < len(s):
    c = s[i]
    if c == '\n': line += 1
    if c == '\\': i += 2; continue
    if c == '<':
        if s.startswith('<\\', i):
            m = re.match(r'<\\([\w*-]+)', s[i:]); stack.append(('B' + m.group(1), line)); i += len(m.group(0)); continue
        if s.startswith('</', i):
            m = re.match(r'</([\w*-]+)>', s[i:]); t = stack.pop() if stack else None
            if not t or t[0] != 'B' + m.group(1):
                sys.exit(f'mismatched </{m.group(1)}> at line {line}, open: {t}')
            i += len(m.group(0)); continue
        m = re.match(r'<([\w*#-]+)', s[i:])
        if not m: sys.exit(f'bad "<" at line {line}: {s[i:i+30]!r}')
        stack.append(('I' + m.group(1), line)); i += len(m.group(0)); continue
    if c == '>':
        if stack and stack[-1][0][0] == 'B': pass
        elif not stack: sys.exit(f'extra ">" at line {line}')
        else: stack.pop()
    i += 1
if stack: sys.exit(f'unclosed tags, last opened: {stack[-3:]}')
print('ok')
