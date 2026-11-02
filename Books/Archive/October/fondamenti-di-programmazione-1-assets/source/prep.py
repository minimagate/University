#!/usr/bin/env python3
"""Book-local pre-processor (Fondamenti di Programmazione 1), run before build.py.

@CODE ... @END       code listing: one line per paragraph, typewriter, indentation kept.
@CHAIN ... @END      proof chain: first line a formula, then "conn formula ;; justification".
@TABLE ... @END      centered table; cells separated by ' & ', first row is the header.
<tt|...>             inline code, also inside math (letters are not split).
"""
import re, sys
from pathlib import Path

def code_line(l):
    n = len(l) - len(l.lstrip(' '))
    body = l.strip().replace('<', '‹').replace('>', '›').replace('|', '\\|')
    pad = f'<hspace|{n*0.525:.3f}em>' if n else ''
    return pad + body if body else '<vspace|0.3fn>'

def code_block(lines, ind):
    out = [ind + '<\\codice>']
    for k, l in enumerate(lines):
        if k: out.append('')
        out.append(ind + '  ' + code_line(l))
    out.append(ind + '</codice>')
    return out

def table_block(lines, ind, wide=False):
    rows = [[c.strip() for c in l.strip().split(' & ')] for l in lines if l.strip()]
    nc = max(len(r) for r in rows)
    if wide:
        rows = [[c.replace(', <space|0.3em>', '<new-line>') for c in r] for r in rows]
    fmt = ('<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-lsep|0.55em>|<cwith|1|-1|1|-1|cell-rsep|0.55em>'
           '|<cwith|1|-1|1|-1|cell-tsep|0.22fn>|<cwith|1|-1|1|-1|cell-bsep|0.22fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>')
    if wide:
        fmt = ('<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|2|2|cell-width|0.71par>|<cwith|1|-1|2|2|cell-hmode|exact>'
               '|<cwith|1|-1|1|1|cell-width|0.27par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|2|2|cell-hyphen|t>'
               '|<cwith|1|-1|1|-1|cell-tsep|0.3fn>|<cwith|1|-1|1|-1|cell-bsep|0.3fn>|<cwith|1|-1|1|1|cell-lsep|0fn>'
               '|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>')
    body = '|'.join('<row|' + '|'.join(f'<cell|{c}>' for c in r + [''] * (nc - len(r))) + '>' for r in rows)
    return [ind + '<\\with|par-mode|center>', ind + f'  <tabular|<tformat|{fmt}|<table|{body}>>>', ind + '</with>']

def chain_block(lines, ind):
    """First line: starting formula. Next lines: 'conn formula ;; justification' (justification optional)."""
    rows = []
    for k, l in enumerate(x for x in lines if x.strip()):
        l = l.strip()
        just = ''
        if ';;' in l: l, just = [t.strip() for t in l.split(';;', 1)]
        if k == 0: conn, f = '', l
        else: conn, f = l.split(' ', 1)
        j = f'<text|{{{just}}}>' if just else ''
        rows.append(f'<row|<cell|{conn}>|<cell|{f.strip()}>|<cell|{j}>>')
    fmt = ('<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|3|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|0.2em>'
           '|<cwith|1|-1|1|-1|cell-rsep|0.2em>|<cwith|1|-1|3|3|cell-lsep|1.4em>|<cwith|1|-1|1|-1|cell-bsep|0.12fn>|<cwith|1|-1|1|-1|cell-tsep|0.12fn>')
    return [ind + '<\\equation*>', ind + f'  <tabular|<tformat|{fmt}|<table|' + '|'.join(rows) + '>>>', ind + '</equation*>']

def main(src, out):
    lines = Path(src).read_text(encoding='utf-8').split('\n')
    res = []; i = 0
    while i < len(lines):
        s = lines[i].strip()
        if s.split(' ')[0] in ('@CODE', '@TABLE', '@CHAIN'):
            ind = lines[i][:len(lines[i]) - len(lines[i].lstrip())]
            j = i + 1
            while lines[j].strip() != '@END': j += 1
            block = [l[len(ind):] if l.startswith(ind) else l.lstrip() for l in lines[i+1:j]]
            if s == '@CODE':
                base = min((len(l) - len(l.lstrip(' ')) for l in block if l.strip()), default=0)
                res += code_block([l[base:] for l in block], ind)
            elif s == '@CHAIN':
                res += chain_block(block, ind)
            else:
                res += table_block(block, ind, wide=s.endswith('wide'))
            i = j + 1; continue
        res.append(lines[i]); i += 1
    txt = '\n'.join(res)
    txt = re.sub(r'<tt\|((?:[^<>]|<[^<>]*>)*)>', r'<text|<with|font-family|tt|\1>>', txt)
    for k, v in {'ℐ': 'cal-I', '⟦': 'llbracket', '⟧': 'rrbracket', '⊨': 'vDash', '⊢': 'vdash', '↑': 'uparrow',
                 '⊥': 'bot', '𝒱': 'cal-V', '𝒞': 'cal-C', '𝓕': 'cal-F', 'ℰ': 'cal-E', '𝒞': 'cal-C'}.items():
        txt = txt.replace(k, '\\<' + v + '\\>')
    Path(out).write_text(txt, encoding='utf-8')

if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
