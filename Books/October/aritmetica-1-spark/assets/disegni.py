"""Disegni del libro Aritmetica (ottobre 2026).

Genera gli SVG originali a tratto sottile; nessuna dipendenza esterna.
Dopo averli generati, creare le copie PDF con svg-to-pdf.swift (vedi README).
"""
from html import escape
from math import cos, sin, pi, atan2, hypot
import json, re
from pathlib import Path

MM_PER_PX = 0.25          # 1 unità SVG = 0,25 mm sul libro stampato
FONT = "'STIX Two Text', 'STIX Two Math', 'Times New Roman', serif"
INK = '#111'
GREY = '#e4e4e4'          # campitura chiara
MID = '#9a9a9a'           # linee secondarie
W_THIN, W, W_BOLD = 0.7, 1.0, 1.9

def _f(v): return ('%.2f' % v).rstrip('0').rstrip('.')

def math_spans(s, size):
    """Converte una piccola sintassi: lettere in corsivo, _x / _{..} pedici, ^x / ^{..} apici, `testo` in tondo."""
    out = []; i = 0
    def run(txt, italic, shift=None, fs=None):
        if not txt: return
        attrs = []
        if italic: attrs.append('font-style="italic"')
        if shift: attrs.append(f'baseline-shift="{shift}"')
        if fs: attrs.append(f'font-size="{_f(fs)}"')
        out.append(f'<tspan {" ".join(attrs)}>{escape(txt)}</tspan>' if attrs else escape(txt))
    def chunk(txt, shift=None, fs=None):
        j = 0; buf = ''; mode = None
        while j < len(txt):
            ch = txt[j]
            if ch == '`':
                k = txt.index('`', j + 1); run(buf, mode, shift, fs); buf = ''; mode = None
                run(txt[j+1:k], False, shift, fs); j = k + 1; continue
            it = ch.isalpha() and ch.isascii() or ch in 'αβγδεζθλμπστφψωχ'
            if mode is None: mode = it
            if it != mode: run(buf, mode, shift, fs); buf = ''; mode = it
            buf += ch; j += 1
        run(buf, mode, shift, fs)
    while i < len(s):
        ch = s[i]
        if ch in '_^':
            if s[i+1] == '{':
                k = s.index('}', i); arg = s[i+2:k]; i = k + 1
            else:
                arg = s[i+1]; i += 2
            chunk(arg, '-28%' if ch == '_' else '38%', size * 0.7)
        else:
            j = i
            while j < len(s) and s[j] not in '_^': j += 1
            if j < len(s) and j > i and s[j-1] != ' ':
                # il carattere prima di _ o ^ fa parte della base
                pass
            chunk(s[i:j]); i = j
    return ''.join(out)

class Fig:
    def __init__(self, name, w, h, title, desc):
        self.name, self.w, self.h, self.title, self.desc = name, w, h, title, desc
        self.shapes = []; self.labels = []
    # --- forme
    def raw(self, s): self.shapes.append(s)
    def line(self, x1, y1, x2, y2, w=W, color=INK, dash=None, arrow=False, arrow_start=False):
        extra = f' stroke-dasharray="{dash}"' if dash else ''
        if arrow: extra += ' marker-end="url(#ah)"'
        if arrow_start: extra += ' marker-start="url(#ahs)"'
        self.raw(f'<line x1="{_f(x1)}" y1="{_f(y1)}" x2="{_f(x2)}" y2="{_f(y2)}" stroke="{color}" stroke-width="{_f(w)}"{extra}/>')
    def arrow(self, x1, y1, x2, y2, bend=0.0, w=W, shorten=(0, 0), color=INK, dash=None):
        """Freccia (eventualmente curva) da (x1,y1) a (x2,y2); shorten accorcia gli estremi."""
        dx, dy = x2 - x1, y2 - y1; L = hypot(dx, dy); ux, uy = dx / L, dy / L
        x1 += ux * shorten[0]; y1 += uy * shorten[0]; x2 -= ux * shorten[1]; y2 -= uy * shorten[1]
        extra = f' stroke-dasharray="{dash}"' if dash else ''
        if bend:
            mx, my = (x1 + x2) / 2 - uy * bend * L, (y1 + y2) / 2 + ux * bend * L
            self.raw(f'<path d="M{_f(x1)},{_f(y1)} Q{_f(mx)},{_f(my)} {_f(x2)},{_f(y2)}" fill="none" stroke="{color}" stroke-width="{_f(w)}" marker-end="url(#ah)"{extra}/>')
        else:
            self.raw(f'<line x1="{_f(x1)}" y1="{_f(y1)}" x2="{_f(x2)}" y2="{_f(y2)}" stroke="{color}" stroke-width="{_f(w)}" marker-end="url(#ah)"{extra}/>')
    def rect(self, x, y, w, h, fill='none', stroke=INK, sw=W, rx=0, dash=None):
        extra = f' rx="{_f(rx)}"' if rx else ''
        if dash: extra += f' stroke-dasharray="{dash}"'
        self.raw(f'<rect x="{_f(x)}" y="{_f(y)}" width="{_f(w)}" height="{_f(h)}" fill="{fill}" stroke="{stroke}" stroke-width="{_f(sw)}"{extra}/>')
    def circle(self, x, y, r, fill='none', stroke=INK, sw=W, dash=None):
        extra = f' stroke-dasharray="{dash}"' if dash else ''
        self.raw(f'<circle cx="{_f(x)}" cy="{_f(y)}" r="{_f(r)}" fill="{fill}" stroke="{stroke}" stroke-width="{_f(sw)}"{extra}/>')
    def dot(self, x, y, r=2.6, fill=INK): self.circle(x, y, r, fill=fill, stroke='none', sw=0)
    def ellipse(self, x, y, rx, ry, fill='none', stroke=INK, sw=W, rot=0, opacity=None):
        t = f' transform="rotate({_f(rot)} {_f(x)} {_f(y)})"' if rot else ''
        o = f' fill-opacity="{opacity}"' if opacity else ''
        self.raw(f'<ellipse cx="{_f(x)}" cy="{_f(y)}" rx="{_f(rx)}" ry="{_f(ry)}" fill="{fill}" stroke="{stroke}" stroke-width="{_f(sw)}"{t}{o}/>')
    def path(self, d, fill='none', stroke=INK, sw=W, dash=None, extra=''):
        e = f' stroke-dasharray="{dash}"' if dash else ''
        self.raw(f'<path d="{d}" fill="{fill}" stroke="{stroke}" stroke-width="{_f(sw)}"{e} {extra}/>')
    def polygon(self, pts, fill='none', stroke=INK, sw=W):
        p = ' '.join(f'{_f(x)},{_f(y)}' for x, y in pts)
        self.raw(f'<polygon points="{p}" fill="{fill}" stroke="{stroke}" stroke-width="{_f(sw)}"/>')
    # --- testo
    def text(self, x, y, s, size=14, anchor='middle', italic=False, bold=False, color=INK, math=False):
        attrs = f'x="{_f(x)}" y="{_f(y)}" font-size="{_f(size)}" text-anchor="{anchor}" fill="{color}"'
        if italic: attrs += ' font-style="italic"'
        if bold: attrs += ' font-weight="bold"'
        body = math_spans(s, size) if math else escape(str(s))
        self.labels.append(f'<text {attrs}>{body}</text>')
    def m(self, x, y, s, size=14, anchor='middle', **k): self.text(x, y, s, size, anchor, math=True, **k)
    # --- salvataggio
    def save(self, out: Path, sizes: dict):
        defs = ('<defs>'
                '<marker id="ah" viewBox="0 0 10 8" refX="9.2" refY="4" markerWidth="10" markerHeight="8" markerUnits="userSpaceOnUse" orient="auto">'
                f'<path d="M0,0.6 L10,4 L0,7.4 L2.4,4 Z" fill="{INK}"/></marker>'
                '<marker id="ahs" viewBox="0 0 10 8" refX="0.8" refY="4" markerWidth="10" markerHeight="8" markerUnits="userSpaceOnUse" orient="auto">'
                f'<path d="M10,0.6 L0,4 L10,7.4 L7.6,4 Z" fill="{INK}"/></marker></defs>')
        svg = (f'<svg xmlns="http://www.w3.org/2000/svg" width="{self.w}" height="{self.h}" viewBox="0 0 {self.w} {self.h}" role="img" aria-labelledby="title desc">\n'
               f'<title id="title">{escape(self.title)}</title><desc id="desc">{escape(self.desc)}</desc>\n{defs}\n'
               f'<g stroke-linecap="round" stroke-linejoin="round">\n' + '\n'.join(self.shapes) + '\n</g>\n'
               f'<g font-family="{FONT}">\n' + '\n'.join(self.labels) + '\n</g>\n</svg>\n')
        (out / f'{self.name}.svg').write_text(svg, encoding='utf-8')
        sizes[self.name] = [round(self.w * MM_PER_PX, 1), round(self.h * MM_PER_PX, 1)]

FIGS = []
def fig(f): FIGS.append(f); return f

@fig
def insiemi():
    F = Fig('insiemi', 600, 175, 'Unione, intersezione, differenza', 'Tre coppie di cerchi A e B: la parte grigia è A unione B, A intersezione B, A meno B.')
    r = 46
    for k, (lab, mode) in enumerate([('A ∪ B', 'u'), ('A ∩ B', 'i'), ('A ∖ B', 'd')]):
        cx = 100 + 200 * k; a, b, y = cx - 27, cx + 27, 78
        F.raw(f'<clipPath id="cA{k}"><circle cx="{a}" cy="{y}" r="{r}"/></clipPath>')
        if mode == 'u':
            F.circle(a, y, r, fill=GREY, stroke='none'); F.circle(b, y, r, fill=GREY, stroke='none')
        elif mode == 'i':
            F.raw(f'<circle cx="{b}" cy="{y}" r="{r}" fill="{GREY}" clip-path="url(#cA{k})"/>')
        else:
            F.circle(a, y, r, fill=GREY, stroke='none'); F.circle(b, y, r, fill='white', stroke='none')
        F.circle(a, y, r); F.circle(b, y, r)
        F.m(a - 44, y - 40, 'A', 15); F.m(b + 44, y - 40, 'B', 15)
        F.m(cx, 160, lab.replace('∪', '∪'), 15)
    return F

def pane(F, x0, title, X, Y, arrows, y0=30, H=128):
    xa, xb = x0 + 42, x0 + 118; cy = y0 + H / 2
    F.ellipse(xa, cy, 24, H / 2); F.ellipse(xb, cy, 24, H / 2)
    F.m(xa, y0 - 8, 'X', 14); F.m(xb, y0 - 8, 'Y', 14)
    def ys(n): return [cy + (i - (n - 1) / 2) * (H / (n + 0.6)) for i in range(n)]
    px, py = ys(len(X)), ys(len(Y))
    for i, y in enumerate(px): F.dot(xa, y)
    for j, y in enumerate(py): F.dot(xb, y)
    for i, j in arrows: F.arrow(xa, px[i], xb, py[j], shorten=(5, 6), w=0.85)
    F.text(x0 + 80, y0 + H + 26, title, 14, italic=True)

@fig
def funzioni():
    F = Fig('funzioni', 640, 190, 'Quattro funzioni', 'Diagrammi a frecce: una funzione qualsiasi, una iniettiva, una suriettiva, una biiettiva.')
    pane(F, 0, 'una funzione', 'abc', 'xyz', [(0, 0), (1, 0), (2, 2)])
    pane(F, 160, 'iniettiva', 'abc', 'wxyz', [(0, 0), (1, 1), (2, 3)])
    pane(F, 320, 'suriettiva', 'abcd', 'xyz', [(0, 0), (1, 1), (2, 1), (3, 2)])
    pane(F, 480, 'biiettiva', 'abc', 'xyz', [(0, 1), (1, 2), (2, 0)])
    return F

@fig
def scelte():
    F = Fig('scelte', 620, 290, 'Liste ordinate e sottoinsiemi', 'Albero delle scelte di due elementi distinti fra a, b, c: sei liste ordinate, che si raggruppano a due a due in tre sottoinsiemi.')
    root = (36, 145); L1 = [65, 145, 225]; L2 = [40, 90, 120, 170, 200, 250]
    F.dot(*root, 3)
    first = 'abc'; leaves = ['ab', 'ac', 'ba', 'bc', 'ca', 'cb']
    for i, y in enumerate(L1):
        F.line(root[0] + 4, root[1], 128, y, w=0.85); F.m(140, y + 5, first[i], 15)
        for k in range(2):
            yy = L2[2 * i + k]; F.line(152, y, 222, yy, w=0.85)
            F.m(234, yy + 5, leaves[2 * i + k][1], 15)
            F.m(290, yy + 5, leaves[2 * i + k], 15)
    groups = {'{a, b}': ('ab', 'ba'), '{a, c}': ('ac', 'ca'), '{b, c}': ('bc', 'cb')}
    gy = [85, 145, 205]
    for (name, ws), y in zip(groups.items(), gy):
        F.rect(500, y - 17, 78, 30, rx=6, sw=0.85); F.m(539, y + 5, name, 15)
        for wd in ws:
            yy = L2[leaves.index(wd)]
            F.line(312, yy, 498, y, w=0.6, color=MID)
    F.text(140, 278, '1ª scelta: 3', 13, italic=True)
    F.text(234, 278, '2ª scelta: 2', 13, italic=True)
    F.text(298, 22, '3 · 2 = 6 liste', 13, italic=True)
    F.text(539, 22, '6 / 2! = 3 insiemi', 13, italic=True)
    return F

@fig
def euclide():
    u = 12; ox, oy = 20, 20
    F = Fig('euclide', 45 * u + 40, 17 * u + 40, 'Euclide con i quadrati', 'Un rettangolo 45 per 17 riempito con quadrati sempre più piccoli: due di lato 17, uno di lato 11, uno di 6, uno di 5 e cinque di lato 1.')
    sq = [(0, 0, 17), (17, 0, 17), (34, 0, 11), (34, 11, 6), (40, 11, 5)] + [(40 + i, 16, 1) for i in range(5)]
    shade = {17: 'none', 11: GREY, 6: 'none', 5: GREY, 1: 'none'}
    for x, y, s in sq:
        F.rect(ox + x * u, oy + y * u, s * u, s * u, fill=shade[s], sw=W if s > 1 else W_THIN)
        if s >= 5: F.text(ox + (x + s / 2) * u, oy + (y + s / 2) * u + 5, str(s), 15 if s > 5 else 13)
    F.rect(ox, oy, 45 * u, 17 * u, sw=W_BOLD)
    return F


# ---------------------------------------------------------------- capitolo 1
@fig
def domino_induzione():
    F = Fig('domino-induzione', 620, 200, 'Le tessere del domino', 'Una fila di tessere: le prime sono già cadute, le altre stanno per cadere. Sotto ogni tessera c’è la proprietà P(n).')
    ground = 155; wdt, hgt = 15, 78; gap = 58; x0 = 40
    angles = [64, 52, 27, 0, 0, 0, 0, 0]
    for i, a in enumerate(angles):
        x = x0 + i * gap
        if i >= 6 and i == 6:
            F.text(x + 8, ground - 30, '…', 22)
            continue
        if i == 7: x = x0 + 7 * gap + 10
        F.raw(f'<rect x="{x}" y="{ground-hgt}" width="{wdt}" height="{hgt}" rx="2.5" fill="{GREY if a else "white"}" stroke="{INK}" stroke-width="1" transform="rotate({a} {x+wdt} {ground})"/>')
        F.raw(f'<line x1="{x+3}" y1="{ground-hgt/2}" x2="{x+wdt-3}" y2="{ground-hgt/2}" stroke="{INK}" stroke-width="0.6" transform="rotate({a} {x+wdt} {ground})"/>')
    F.line(18, ground, 600, ground, w=0.8)
    labs = ['P(0)', 'P(1)', 'P(2)', 'P(3)', 'P(4)', 'P(5)', None, 'P(n)']
    for i, l in enumerate(labs):
        if l: F.m(x0 + i * gap + 8 + (10 if i == 7 else 0), ground + 24, l, 14)
    F.arrow(30, 34, 58, 82, bend=0.3, w=0.9)
    F.text(20, 22, 'il primo cade', 13, anchor='start', italic=True)
    F.arrow(244, 66, 292, 66, bend=-0.4, w=0.9)
    F.text(300, 22, 'ogni tessera fa cadere la successiva:', 13, anchor='start', italic=True)
    F.m(300, 44, 'P(n) ⇒ P(n+1)', 14, anchor='start')
    return F

@fig
def dispari():
    u = 30; ox, oy = 40, 40
    F = Fig('dispari', 470, 210, 'La somma dei dispari', 'Un quadrato 5 per 5 diviso in cornici a forma di L di 1, 3, 5, 7, 9 caselle, alternativamente grigie e bianche.')
    for i in range(5):
        for j in range(5):
            k = max(i, j)
            F.rect(ox + j * u, oy + i * u, u, u, fill=GREY if k % 2 else 'white', sw=W_THIN)
    for k in range(5):
        F.text(ox + k * u + u / 2, oy - 10, str(2 * k + 1), 14)
    F.rect(ox, oy, 5 * u, 5 * u, sw=W)
    F.m(330, 95, '1 + 3 + 5 + 7 + 9', 16)
    F.m(330, 125, '= 5^2', 16)
    F.text(330, 160, 'ogni cornice aggiunge', 13, italic=True)
    F.text(330, 178, 'il dispari successivo', 13, italic=True)
    return F

@fig
def fattori():
    F = Fig('fattori', 470, 215, 'Albero dei fattori di 360', 'Il numero 360 si spezza in 12 per 30; 12 in 3 per 4 e 4 in 2 per 2; 30 in 5 per 6 e 6 in 2 per 3. Le foglie sono primi.')
    nodes = {'360': (235, 26), '12': (130, 80), '30': (340, 80), '3a': (80, 136), '4': (180, 136), '5': (290, 136), '6': (390, 136),
             '2a': (145, 190), '2b': (215, 190), '2c': (355, 190), '3b': (425, 190)}
    edges = [('360', '12'), ('360', '30'), ('12', '3a'), ('12', '4'), ('30', '5'), ('30', '6'), ('4', '2a'), ('4', '2b'), ('6', '2c'), ('6', '3b')]
    for a, b in edges:
        (x1, y1), (x2, y2) = nodes[a], nodes[b]
        F.line(x1, y1 + 8, x2, y2 - 15, w=0.85)
    primes = {'3a', '5', '2a', '2b', '2c', '3b'}
    for k, (x, y) in nodes.items():
        lab = k.rstrip('ab c')
        if k in primes: F.circle(x, y - 5, 15, sw=0.9)
        F.text(x, y, lab, 15)
    F.m(40, 200, '360 = 2^3 · 3^2 · 5', 14, anchor='start')
    return F

def person(F, x, y, s=1.0, fill='white'):
    F.circle(x, y - 22 * s, 7 * s, fill=fill, sw=0.9)
    F.path(f'M{x-11*s},{y+10*s} Q{x-11*s},{y-11*s} {x},{y-11*s} Q{x+11*s},{y-11*s} {x+11*s},{y+10*s} Z', fill=fill, sw=0.9)

@fig
def occhi():
    F = Fig('occhi', 600, 175, 'Dove si rompe il falso argomento', 'A sinistra tre persone: il primo gruppo e il secondo condividono la persona centrale. A destra due persone: i due gruppi non hanno nessuno in comune.')
    for i, x in enumerate([80, 140, 200]):
        person(F, x, 100, fill=GREY if i == 1 else 'white')
    F.path('M60,58 Q60,40 78,40 L142,40 Q160,40 160,58', sw=0.9); F.text(110, 32, 'primi 2', 13, italic=True)
    F.path('M120,140 Q120,158 138,158 L202,158 Q220,158 220,140', sw=0.9); F.text(170, 172, 'ultimi 2', 13, italic=True)
    F.text(140, 15, 'tre persone: c’è un ponte', 13, italic=True)
    for x in [420, 500]:
        person(F, x, 100)
    F.path('M400,58 Q400,40 418,40 L422,40 Q440,40 440,58', sw=0.9); F.text(420, 32, 'primo', 13, italic=True)
    F.path('M480,140 Q480,158 498,158 L502,158 Q520,158 520,140', sw=0.9); F.text(500, 172, 'ultimo', 13, italic=True)
    F.text(460, 15, 'due persone: nessun ponte', 13, italic=True)
    F.line(310, 30, 310, 160, w=0.6, color=MID, dash='3 4')
    return F

# ---------------------------------------------------------------- capitolo 2
@fig
def cassetti():
    F = Fig('cassetti', 520, 150, 'Il principio dei cassetti', 'Cinque palline in quattro cassetti: un cassetto ne contiene due.')
    counts = [1, 2, 1, 1]
    for i, c in enumerate(counts):
        x = 40 + i * 115
        F.path(f'M{x},40 L{x},110 Q{x},116 {x+6},116 L{x+84},116 Q{x+90},116 {x+90},110 L{x+90},40', sw=1)
        F.line(x + 35, 96, x + 55, 96, w=1.4)
        for k in range(c):
            cx = x + 45 + (k - (c - 1) / 2) * 26
            F.circle(cx, 70, 11, fill=GREY if c == 2 else 'white', sw=0.9)
        F.text(x + 45, 138, f'cassetto {i+1}', 13, italic=True)
    return F

@fig
def parti():
    F = Fig('parti', 620, 250, 'Tutti i sottoinsiemi di {a, b, c}', 'Un albero binario: per a, b, c si sceglie sì o no. Le otto foglie sono gli otto sottoinsiemi.')
    xs = lambda lvl, i: 35 + (i + 0.5) * (560 / 2 ** lvl)
    ys = [28, 82, 136, 190]
    for lvl in range(3):
        for i in range(2 ** lvl):
            x, y = xs(lvl, i), ys[lvl]
            for b in range(2):
                x2 = xs(lvl + 1, 2 * i + b)
                F.line(x, y + 4, x2, ys[lvl + 1] - 6, w=0.85)
                F.text((x + x2) / 2 + (-9 if b == 0 else 9), (y + ys[lvl + 1]) / 2 + 2, 'sì' if b == 0 else 'no', 11, italic=True, color='#555')
            F.dot(x, y, 2.6)
    for lvl, l in enumerate('abc'):
        F.m(14, ys[lvl] + 30, l + '?', 13, anchor='start')
    leaves = ['{a,b,c}', '{a,b}', '{a,c}', '{a}', '{b,c}', '{b}', '{c}', '∅']
    for i, l in enumerate(leaves):
        F.m(xs(3, i), ys[3] + 14, l, 14)
    F.text(310, 240, '2 · 2 · 2 = 8 sottoinsiemi', 13, italic=True)
    return F

def tile(F, x, y, ch, sub=None, s=30, fill='white'):
    F.rect(x, y, s, s, rx=4, fill=fill, sw=0.9)
    F.text(x + s / 2 - (3 if sub else 0), y + s / 2 + 6, ch, 17)
    if sub: F.text(x + s / 2 + 8, y + s / 2 + 10, sub, 10)

@fig
def anagrammi():
    F = Fig('anagrammi', 620, 200, 'Anagrammi di NONNO', 'Dodici parole con le lettere numerate diventano la stessa parola NONNO quando si cancellano i numeri.')
    rows = [('N1', 'O1', 'N2', 'N3', 'O2'), ('N2', 'O1', 'N1', 'N3', 'O2'), ('N3', 'O2', 'N1', 'N2', 'O1'), ('N1', 'O2', 'N3', 'N2', 'O1')]
    for r, row in enumerate(rows):
        for c, t in enumerate(row):
            tile(F, 30 + c * 34, 14 + r * 38, t[0], t[1])
    F.text(115, 178, '⋮', 18); F.text(115, 196, '3! · 2! = 12 versioni numerate', 12, italic=True)
    F.path('M215,14 Q228,14 228,30 L228,82 Q228,94 238,94 Q228,94 228,106 L228,158 Q228,174 215,174', sw=0.9)
    F.arrow(250, 94, 360, 94, w=1)
    F.text(305, 84, 'cancella i numeri', 12, italic=True)
    for c, t in enumerate('NONNO'):
        tile(F, 380 + c * 34, 79, t, fill=GREY)
    F.text(465, 135, 'una sola parola', 13, italic=True)
    return F

@fig
def pascal():
    F = Fig('pascal', 440, 215, 'Il triangolo di Pascal', 'Le righe da 0 a 5 del triangolo di Pascal; il 10 della quinta riga è la somma di 4 e 6 sopra di lui.')
    rows = [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1], [1, 5, 10, 10, 5, 1]]
    dx, dy = 46, 33
    pos = {}
    for n, row in enumerate(rows):
        for k, v in enumerate(row):
            x = 220 + (k - n / 2) * dx; y = 28 + n * dy; pos[(n, k)] = (x, y)
            hl = (n, k) in [(4, 1), (4, 2), (5, 2)]
            if hl: F.circle(x, y - 5, 14, fill=GREY if n == 5 else 'none', sw=0.9)
            F.text(x, y, str(v), 15)
    for a in [(4, 1), (4, 2)]:
        (x1, y1), (x2, y2) = pos[a], pos[(5, 2)]
        F.arrow(x1, y1 - 5, x2, y2 - 5, shorten=(15, 16), w=0.9)
    F.m(26, 28 + 5 * dy + 4, 'n = 5', 13, anchor='start'); F.m(26, 28 + 4, 'n = 0', 13, anchor='start')
    return F

@fig
def venn3():
    F = Fig('venn3', 600, 250, 'Inclusione-esclusione', 'Tre cerchi A, B, C. In ogni zona il conto con segni alterni dà sempre 1.')
    cA, cB, cC, r = (150, 98), (230, 98), (190, 166), 70
    F.circle(*cA, r); F.circle(*cB, r); F.circle(*cC, r)
    F.m(78, 34, 'A', 15); F.m(302, 34, 'B', 15); F.m(190, 248, 'C', 15)
    F.text(118, 92, '1', 15); F.text(262, 92, '1', 15); F.text(190, 210, '1', 15)
    F.text(190, 76, '2 − 1', 13); F.text(150, 162, '2 − 1', 13); F.text(232, 162, '2 − 1', 13)
    F.text(190, 126, '3 − 3 + 1', 12)
    x = 340
    F.text(x, 70, 'ogni elemento dell’unione', 14, anchor='start', italic=True)
    F.text(x, 90, 'viene contato esattamente una volta:', 14, anchor='start', italic=True)
    F.m(x, 130, '|A ∪ B ∪ C| = |A| + |B| + |C|', 14, anchor='start')
    F.m(x + 52, 154, '− |A ∩ B| − |A ∩ C| − |B ∩ C|', 14, anchor='start')
    F.m(x + 52, 178, '+ |A ∩ B ∩ C|', 14, anchor='start')
    return F

@fig
def regioni():
    F = Fig('regioni', 560, 240, 'Le sette zone di tre insiemi', 'Un rettangolo X contiene tre cerchi A, B, C che lo dividono in sette zone numerate più la zona esterna, che qui è vietata.')
    F.rect(20, 14, 300, 214, fill=GREY, rx=6, sw=0.9)
    cA, cB, cC, r = (135, 92), (205, 92), (170, 152), 62
    for c in (cA, cB, cC): F.circle(*c, r, fill='white', stroke='none')
    for c in (cA, cB, cC): F.circle(*c, r)
    F.m(70, 40, 'A', 15); F.m(272, 40, 'B', 15); F.m(98, 196, 'C', 15); F.m(300, 34, 'X', 15)
    for (x, y), t in zip([(108, 86), (232, 86), (170, 192), (170, 70), (138, 148), (202, 148), (170, 120)], '1234567'):
        F.text(x, y, t, 14)
    F.text(345, 70, 'ogni elemento di X', 14, anchor='start', italic=True)
    F.text(345, 90, 'sceglie una delle 7 zone', 14, anchor='start', italic=True)
    F.text(345, 130, 'la zona grigia (fuori da tutti)', 13, anchor='start', italic=True)
    F.text(345, 148, 'è vietata: A ∪ B ∪ C = X', 13, anchor='start', italic=True)
    F.m(345, 190, '7 · 7 · ⋯ · 7 = 7^n', 15, anchor='start')
    return F

def star(F, x, y, r=8):
    pts = []
    for k in range(10):
        a = -pi / 2 + k * pi / 5; rr = r if k % 2 == 0 else r * 0.45
        pts.append((x + rr * cos(a), y + rr * sin(a)))
    F.polygon(pts, fill=INK, stroke=INK, sw=0.5)

@fig
def stelle():
    F = Fig('stelle', 560, 150, 'Stelle e sbarre', 'Sei posizioni: quattro stelle e due sbarre. La configurazione stella stella sbarra stella stella sbarra rappresenta 2 + 2 + 0.')
    seq = '**|**|'; x0, dx, y = 110, 58, 70
    for i, ch in enumerate(seq):
        x = x0 + i * dx
        F.text(x, 26, str(i + 1), 12, color='#555')
        if ch == '*': star(F, x, y)
        else: F.line(x, y - 22, x, y + 22, w=2)
    for (a, b, lab) in [(0, 1, 'x_1 = 2'), (3, 4, 'x_2 = 2')]:
        xa, xb = x0 + a * dx - 12, x0 + b * dx + 12
        F.path(f'M{xa},{y+30} Q{xa},{y+40} {xa+10},{y+40} L{(xa+xb)/2-6},{y+40} Q{(xa+xb)/2},{y+40} {(xa+xb)/2},{y+48} Q{(xa+xb)/2},{y+40} {(xa+xb)/2+6},{y+40} L{xb-10},{y+40} Q{xb},{y+40} {xb},{y+30}', sw=0.8)
        F.m((xa + xb) / 2, y + 68, lab, 14)
    F.m(x0 + 5.5 * dx, y + 68, 'x_3 = 0', 14)
    F.text(60, 30, 'posti:', 12, italic=True, color='#555')
    return F

@fig
def buchi():
    F = Fig('buchi', 560, 205, 'Il trucco dello spostamento', 'Sopra, i numeri 3, 6, 8 scelti fra 1 e 12, mai consecutivi. Sotto, dopo aver tolto 0, 1, 2, diventano 3, 5, 6 fra 1 e 10.')
    def row(y, n, chosen, lab):
        F.line(40, y, 40 + (n - 1) * 44, y, w=0.7, color=MID)
        for k in range(1, n + 1):
            x = 40 + (k - 1) * 44
            if k in chosen: F.circle(x, y, 9, fill=INK, stroke=INK)
            else: F.circle(x, y, 9, fill='white', sw=0.8)
            F.text(x, y + 28, str(k), 12)
        F.text(30, y - 18 if y < 100 else y + 50, lab, 13, anchor='start', italic=True)
    row(46, 12, {3, 6, 8}, 'scelti fra 1 e 12, mai vicini')
    row(146, 10, {3, 5, 6}, 'dopo lo spostamento: fra 1 e 10, senza vincoli')
    for a, b, s in [(3, 3, '−0'), (6, 5, '−1'), (8, 6, '−2')]:
        F.arrow(40 + (a - 1) * 44, 58, 40 + (b - 1) * 44, 134, w=0.9, shorten=(2, 3))
        F.text((40 + (a - 1) * 44 + 40 + (b - 1) * 44) / 2 + 16, 100, s, 12, italic=True)
    return F

# ---------------------------------------------------------------- capitolo 3
def domino_h(F, x, y, u, fill='white'): F.rect(x + 1.5, y + 1.5, 2 * u - 3, u - 3, rx=3, fill=fill, sw=0.9)
def domino_v(F, x, y, u, fill='white'): F.rect(x + 1.5, y + 1.5, u - 3, 2 * u - 3, rx=3, fill=fill, sw=0.9)

@fig
def domino():
    u = 34
    F = Fig('domino', 620, 135, 'Le due partenze', 'In una striscia 2 per n si comincia con una tessera verticale, oppure con due tessere orizzontali una sopra l’altra.')
    for k, (x0, first) in enumerate([(20, 'v'), (330, 'h')]):
        F.path(f'M{x0},{28} L{x0+8*u},{28} M{x0},{28+2*u} L{x0+8*u},{28+2*u} M{x0},28 L{x0},{28+2*u}', sw=0.9)
        if first == 'v':
            domino_v(F, x0, 28, u, GREY); rest = 1
        else:
            domino_h(F, x0, 28, u, GREY); domino_h(F, x0, 28 + u, u, GREY); rest = 2
        F.rect(x0 + rest * u + 3, 31, (8 - rest) * u - 3, 2 * u - 6, rx=3, sw=0.7, dash='3 4')
        F.m(x0 + rest * u + (8 - rest) * u / 2, 28 + u + 5, 'T_{n−1}' if rest == 1 else 'T_{n−2}', 16)
        F.text(x0 + 4 * u, 124, 'una verticale' if rest == 1 else 'due orizzontali', 13, italic=True)
    return F

@fig
def tassellazioni():
    u = 22
    F = Fig('tassellazioni', 620, 92, 'Le cinque tassellazioni di 2×4', 'Tutti i cinque modi di coprire una striscia 2 per 4 con tessere 2 per 1.')
    tilings = ['vvvv', 'vvh', 'vhv', 'hvv', 'hh']
    for t_i, t in enumerate(tilings):
        x = 20 + t_i * 120; y = 20; col = 0
        for ch in t:
            if ch == 'v': domino_v(F, x + col * u, y, u); col += 1
            else: domino_h(F, x + col * u, y, u); domino_h(F, x + col * u, y + u, u); col += 2
    return F

@fig
def fibonacci():
    u = 17
    F = Fig('fibonacci', 330, 190, 'La spirale di Fibonacci', 'Quadrati di lato 1, 1, 2, 3, 5, 8 affiancati in un rettangolo 13 per 8, con un quarto di cerchio in ciascuno.')
    ox, oy = 50, 20
    # quadrati: (x, y, lato) in unità, rettangolo 13×8
    sq = [(5, 3, 1), (5, 2, 1), (6, 2, 2), (5, 4, 3), (0, 2, 5), (0, -6 + 6, 8)]
    sq = [(5, 5, 1), (6, 5, 1), (6, 6, 2), (3, 5, 3), (3, 0, 5), (8, 0, 8)]
    sq = [(8, 5, 1), (8, 6, 1), (6, 5, 2), (6, 7, 3)]
    # disposizione standard (in senso orario), verificata a mano
    sq = [(5, 5, 1), (5, 6, 1), (6, 5, 2), (5, 7, 3)] 
    sq = [(5, 3, 1), (6, 3, 1), (5, 4, 2), (7, 3, 3), (5, 6, 5)]
    sq = [(0, 0, 8), (8, 0, 5), (10, 5, 3), (8, 6, 2), (8, 5, 1), (9, 5, 1)]
    arcs = {8: ('M{x},{y2} A{r},{r} 0 0 1 {x2},{y}'), }
    for (x, y, s) in sq:
        F.rect(ox + x * u, oy + y * u, s * u, s * u, sw=0.9)
        if s > 1: F.text(ox + (x + s / 2) * u, oy + (y + s / 2) * u + 5, str(s), 13 if s > 2 else 11, color='#555')
    # quarti di cerchio (senso orario): 8 da basso-sinistra ad alto-destra, ecc.
    def arc(x1, y1, x2, y2, r): F.path(f'M{ox+x1*u},{oy+y1*u} A{r*u},{r*u} 0 0 1 {ox+x2*u},{oy+y2*u}', sw=1.3)
    arc(0, 8, 8, 0, 8); arc(8, 0, 13, 5, 5); arc(13, 5, 10, 8, 3); arc(10, 8, 8, 6, 2); arc(8, 6, 9, 5, 1); arc(9, 5, 10, 6, 1)
    return F

# ---------------------------------------------------------------- capitolo 4
@fig
def divisione():
    F = Fig('divisione', 620, 120, 'La divisione di −17 per 5', 'Sulla retta dei numeri i multipli di 5; −17 cade fra −20 e −15 e dista 3 da −20.')
    s = 16; x0 = 454   # posizione dello zero
    X = lambda v: x0 + v * s
    F.line(X(-27), 60, X(7), 60, w=0.8, arrow=True)
    for v in range(-25, 6, 5):
        F.line(X(v), 52, X(v), 68, w=1.1); F.text(X(v), 90, str(v).replace('-', '−'), 13)
    for v in range(-26, 7):
        if v % 5: F.line(X(v), 56, X(v), 64, w=0.5, color=MID)
    F.circle(X(-17), 60, 5.5, fill=INK)
    F.text(X(-17), 40, '−17', 14, bold=False)
    F.path(f'M{X(-20)},{74} Q{X(-20)},{80} {X(-20)+6},{80} L{X(-18.5)-4},{80} Q{X(-18.5)},{80} {X(-18.5)},{86} Q{X(-18.5)},{80} {X(-18.5)+4},{80} L{X(-17)-6},{80} Q{X(-17)},{80} {X(-17)},{74}', sw=0.8)
    F.m(X(-18.5), 108, 'r = 3', 13)
    F.m(X(-20), 22, 'q · 5', 13)
    F.arrow(X(-20), 26, X(-20), 50, w=0.7)
    return F

@fig
def divisori72():
    F = Fig('divisori72', 470, 250, 'I divisori di 72', 'Una griglia 4 per 3: andando a destra si moltiplica per 2, salendo per 3. I dodici nodi sono i divisori di 72.')
    dx, dy, ox, oy = 95, 72, 70, 200
    for a in range(4):
        for b in range(3):
            x, y = ox + a * dx, oy - b * dy
            if a < 3: F.line(x + 18, y, x + dx - 18, y, w=0.85)
            if b < 2: F.line(x, y - 14, x, y - dy + 14, w=0.85)
            F.circle(x, y, 16, fill=GREY if (a, b) in [(2, 1), (1, 2)] else 'white', sw=0.9)
            if (a, b) in [(1, 1), (2, 2)]: F.circle(x, y, 20.5, sw=0.7, dash='3 3')
            F.text(x, y + 5, str(2 ** a * 3 ** b), 14)
    F.text(ox + 1.5 * dx, oy + 40, '× 2  →', 13, italic=True)
    F.text(ox - 46, oy - dy, '× 3', 13, italic=True); F.text(ox - 46, oy - dy + 18, '↑', 13)
    F.text(ox + dx - 26, oy - dy + 34, 'MCD', 11, italic=True, anchor='end'); F.text(ox + 2 * dx + 26, oy - 2 * dy - 22, 'mcm', 11, italic=True, anchor='start')
    return F

@fig
def legendre():
    F = Fig('legendre', 620, 200, 'Contare i fattori 2 in 19!', 'Sopra ogni numero da 1 a 19 una pila di gettoni, tanti quanti i fattori 2 del numero. Le righe contano 9, 4, 2, 1 gettoni.')
    dx, ox, base = 25, 40, 150
    for m in range(1, 20):
        x = ox + (m - 1) * dx; v = 0; t = m
        while t % 2 == 0: t //= 2; v += 1
        for j in range(1, v + 1):
            F.circle(x, base - j * 26 + 8, 8.5, fill=GREY if j == 1 else 'white', sw=0.9)
        F.text(x, base + 26, str(m), 12)
    F.line(ox - 14, base + 8, ox + 18 * dx + 14, base + 8, w=0.8)
    for j, (lab, c) in enumerate([('multipli di 2', 9), ('multipli di 4', 4), ('multipli di 8', 2), ('multipli di 16', 1)], start=1):
        y = base - j * 26 + 13
        F.text(ox + 18 * dx + 30, y, f'{lab}: {c}', 13, anchor='start', italic=True)
    return F

# ---------------------------------------------------------------- capitolo 5
@fig
def reticolo():
    F = Fig('reticolo', 560, 300, 'Soluzioni intere su una retta', 'La retta 2x + 3y = 9 nel piano a quadretti; i punti interi (0,3), (3,1), (6,−1) distano fra loro di un passo (3, −2).')
    s = 38; ox, oy = 90, 190
    X = lambda v: ox + v * s; Y = lambda v: oy - v * s
    for a in range(-1, 11): F.line(X(a), Y(-2.4), X(a), Y(4.3), w=0.45, color='#bbb')
    for b in range(-2, 5): F.line(X(-1.4), Y(b), X(10.4), Y(b), w=0.45, color='#bbb')
    F.line(X(-1.6), Y(0), X(10.8), Y(0), w=0.9, arrow=True); F.line(X(0), Y(-2.6), X(0), Y(4.6), w=0.9, arrow=True)
    F.m(X(10.8), Y(0) + 20, 'x', 14); F.m(X(0) - 14, Y(4.5), 'y', 14)
    F.line(X(-1.2), Y(3.8), X(9.6), Y(-3.4 + 0.0), w=1.2) if False else F.line(X(-1.2), Y((9 + 2.4) / 3), X(10.2), Y((9 - 20.4) / 3), w=1.2)
    pts = [(0, 3), (3, 1), (6, -1), (9, -3)]
    for i, (a, b) in enumerate(pts[:3]):
        F.dot(X(a), Y(b), 4.2)
        F.m(X(a) + 10, Y(b) - 10, f'({a}, {b})'.replace('-', '−'), 13, anchor='start')
    for (a, b), (c, d) in zip(pts[:2], pts[1:3]):
        F.arrow(X(a), Y(b), X(c), Y(b), w=0.8, shorten=(6, 1), dash='3 3')
        F.arrow(X(c), Y(b), X(c), Y(d), w=0.8, shorten=(1, 6), dash='3 3')
    F.text(X(1.5), Y(3.25), '+3', 12, italic=True); F.text(X(3.4) + 6, Y(2), '−2', 12, italic=True)
    F.m(X(6.5), Y(3.6), '2x + 3y = 9', 15)
    return F

@fig
def quadrati():
    u = 20
    F = Fig('quadrati', 600, 225, 'Differenza di quadrati', 'A sinistra un quadrato di lato x privato di un quadrato di lato y; i due pezzi rimasti si ricompongono a destra in un rettangolo di lati x + y e x − y.')
    x, y = 7, 3; ox, oy = 46, 18
    F.rect(ox, oy, (x - y) * u, x * u, fill=GREY, sw=0.9)
    F.rect(ox + (x - y) * u, oy + y * u, y * u, (x - y) * u, fill='white', sw=0.9)
    F.rect(ox + (x - y) * u, oy, y * u, y * u, sw=0.7, dash='3 4')
    F.m(ox + (x - y + y / 2) * u, oy + y * u / 2 + 5, 'y^2', 13)
    F.m(ox + x * u / 2, oy + x * u + 22, 'x', 14); F.m(ox - 16, oy + x * u / 2 + 5, 'x', 14)
    F.m(ox + x * u / 2, oy + x * u + 40, 'x^2 − y^2', 14)
    F.arrow(225, 90, 285, 90, w=1)
    bx, by = 305, 18 + y * u
    F.rect(bx, by, x * u, (x - y) * u, fill=GREY, sw=0.9)
    F.rect(bx + x * u, by, y * u, (x - y) * u, fill='white', sw=0.9)
    F.m(bx + (x + y) * u / 2, by + (x - y) * u + 22, 'x + y', 14)
    F.m(bx + (x + y) * u + 30, by + (x - y) * u / 2 + 5, 'x − y', 14)
    F.m(bx + (x + y) * u / 2, by + (x - y) * u + 40 + 18, '(x + y)(x − y)', 14)
    return F

# ---------------------------------------------------------------- capitolo 6
@fig
def spirale5():
    F = Fig('spirale5', 470, 460, 'Gli interi avvolti su cinque raggi', 'Gli interi da 0 a 19 disposti su una spirale che fa un giro ogni cinque numeri: i numeri sullo stesso raggio hanno lo stesso resto modulo 5.')
    cx, cy = 235, 232
    for c in range(5):
        a = -pi / 2 + c * 2 * pi / 5
        F.line(cx + 22 * cos(a), cy + 22 * sin(a), cx + 182 * cos(a), cy + 182 * sin(a), w=0.6, color='#bbb')
        F.m(cx + 210 * cos(a), cy + 210 * sin(a) + 5, f'[{c}]', 15)
    pts = []
    for k in range(0, 20):
        a = -pi / 2 + k * 2 * pi / 5; r = 38 + k * 7.4
        pts.append((cx + r * cos(a), cy + r * sin(a)))
    d = 'M' + ' L'.join(f'{x:.1f},{y:.1f}' for x, y in pts)
    # spirale morbida
    sp = []
    for t in range(0, 19 * 20 + 1):
        k = t / 20; a = -pi / 2 + k * 2 * pi / 5; r = 38 + k * 7.4
        sp.append((cx + r * cos(a), cy + r * sin(a)))
    F.path('M' + ' L'.join(f'{x:.1f},{y:.1f}' for x, y in sp), sw=0.7, color=MID) if False else F.path('M' + ' L'.join(f'{x:.1f},{y:.1f}' for x, y in sp), stroke=MID, sw=0.7)
    for k, (x, y) in enumerate(pts):
        F.circle(x, y, 11, fill='white', sw=0.8)
        F.text(x, y + 4.5, str(k), 12)
    return F

@fig
def frazioni():
    F = Fig('frazioni', 470, 280, 'Frazioni come rette', 'Il punto (b, a) rappresenta la coppia a su b. Le coppie equivalenti 1/2, 2/4, 3/6 stanno sulla stessa retta per l’origine; 2/3 e 4/6 su un’altra.')
    s = 52; ox, oy = 50, 240
    X = lambda v: ox + v * s; Y = lambda v: oy - v * s
    for i in range(0, 8):
        for j in range(0, 5):
            F.dot(X(i), Y(j), 1.6, fill='#aaa')
    F.line(X(0), Y(0), X(7.6), Y(0), w=0.9, arrow=True); F.line(X(0), Y(0), X(0), Y(4.4), w=0.9, arrow=True)
    F.text(X(7.6), Y(0) + 22, 'denominatore b', 12, anchor='end', italic=True)
    F.text(X(0) + 8, Y(4.4) + 4, 'numeratore a', 12, anchor='start', italic=True)
    F.line(X(0), Y(0), X(7.4), Y(3.7), w=1.1); F.line(X(0), Y(0), X(6.3), Y(4.2), w=1.1, dash='5 4')
    for (b, a) in [(2, 1), (4, 2), (6, 3)]:
        F.dot(X(b), Y(a), 4.5); F.m(X(b) + 6, Y(a) + 20, f'{a}/{b}', 13, anchor='start')
    for (b, a) in [(3, 2), (6, 4)]:
        F.circle(X(b), Y(a), 4.5, fill='white', sw=1.1); F.m(X(b) - 8, Y(a) - 10, f'{a}/{b}', 13, anchor='end')
    F.text(X(0) - 12, Y(0) + 16, '0', 12)
    return F

def table_mod(F, n, ox, oy, c=24):
    F.m(ox + (n + 1) * c / 2, oy - 12, f'· `mod` {n}', 14)
    for i in range(n + 1):
        for j in range(n + 1):
            x, y = ox + j * c, oy + i * c
            if i == 0 and j == 0: F.text(x + c / 2, y + c / 2 + 5, '·', 14); continue
            if i == 0: F.text(x + c / 2, y + c / 2 + 5, str(j - 1), 13, bold=True); continue
            if j == 0: F.text(x + c / 2, y + c / 2 + 5, str(i - 1), 13, bold=True); continue
            v = (i - 1) * (j - 1) % n
            zero_div = v == 0 and i > 1 and j > 1
            F.rect(x, y, c, c, fill=GREY if zero_div else 'white', sw=0.5)
            if v == 1: F.circle(x + c / 2, y + c / 2, 9.5, sw=0.9)
            F.text(x + c / 2, y + c / 2 + 5, str(v), 13)
    F.line(ox + c, oy, ox + c, oy + (n + 1) * c, w=0.9); F.line(ox, oy + c, ox + (n + 1) * c, oy + c, w=0.9)

@fig
def tabelle():
    F = Fig('tabelle', 560, 215, 'Tabelline modulo 5 e modulo 6', 'Le tabelle di moltiplicazione modulo 5 e modulo 6. Gli 1 sono cerchiati: indicano coppie di inversi. In grigio i prodotti nulli di due classi non nulle, che compaiono solo modulo 6.')
    table_mod(F, 5, 30, 34); table_mod(F, 6, 290, 34)
    return F

@fig
def griglia8():
    c = 26
    F = Fig('griglia8', 420, 290, 'Le coppie con xy = 0 modulo 8', 'Una tabella 8 per 8: in ogni casella (x, y) c’è un punto nero quando xy è multiplo di 8. Le righe dei dispari hanno un solo punto, la riga dello 0 ne ha otto.')
    ox, oy = 40, 40
    F.text(ox + 4.5 * c, 16, 'y', 14, italic=True); F.text(14, oy + 4.5 * c, 'x', 14, italic=True)
    for i in range(8):
        F.text(ox + (i + 1.5) * c, oy - 6 + 0, str(i), 12, color='#555') if False else None
    for i in range(8):
        F.text(ox + (i + 0.5) * c + c, oy + c * 0.5 + 4 - c + 4, '', 1)
    for i in range(8):
        F.text(ox + i * c + c / 2, oy - 8, str(i), 12, color='#444')
        F.text(ox - 10, oy + i * c + c / 2 + 4, str(i), 12, color='#444')
    tot = {}
    for x in range(8):
        cnt = 0
        for y in range(8):
            F.rect(ox + y * c, oy + x * c, c, c, sw=0.45, stroke='#999')
            if x * y % 8 == 0: F.dot(ox + y * c + c / 2, oy + x * c + c / 2, 5.2); cnt += 1
        F.text(ox + 8 * c + 14, oy + x * c + c / 2 + 4, str(cnt), 12, anchor='start')
    F.rect(ox, oy, 8 * c, 8 * c, sw=0.9)
    F.text(ox + 8 * c + 50, oy + 4 * c, 'punti', 12, anchor='start', italic=True)
    F.text(ox + 8 * c + 50, oy + 4 * c + 16, 'per riga', 12, anchor='start', italic=True)
    F.text(ox + 8 * c + 16, oy + 8 * c + 22, 'totale 20', 12, anchor='start', italic=True)
    return F

# ---------------------------------------------------------------- capitolo 7
def crt_grid(F, ox, oy, m, n, c, title):
    F.text(ox + n * c / 2, oy - 34, title, 14, italic=True)
    for j in range(n): F.text(ox + j * c + c / 2, oy - 8, str(j), 12, color='#444')
    for i in range(m): F.text(ox - 12, oy + i * c + c / 2 + 4, str(i), 12, color='#444')
    cells = {}
    for k in range(m * n if (m, n) == (3, 5) else 8):
        cells.setdefault((k % m, k % n), []).append(k)
    for i in range(m):
        for j in range(n):
            ks = cells.get((i, j))
            F.rect(ox + j * c, oy + i * c, c, c, fill='white' if ks else GREY, sw=0.7)
            if ks: F.text(ox + j * c + c / 2, oy + i * c + c / 2 + 5, ', '.join(map(str, ks)), 14 if len(ks) == 1 else 12)
    F.rect(ox, oy, n * c, m * c, sw=1)

@fig
def cinese():
    F = Fig('cinese', 620, 240, 'Riempire la griglia dei resti', 'A sinistra una griglia 3 per 5: i numeri da 0 a 14, messi nella casella dei loro resti, la riempiono tutta. A destra una griglia 2 per 4: i numeri da 0 a 7 cadono a coppie in metà delle caselle e le altre restano vuote.')
    crt_grid(F, 40, 70, 3, 5, 44, 'resto mod 5 →')
    F.text(22, 70 + 66, '', 1)
    F.text(18, 58, 'mod 3', 11, italic=True, anchor='start')
    crt_grid(F, 380, 70, 2, 4, 50, 'resto mod 4 →')
    F.text(358, 58, 'mod 2', 11, italic=True, anchor='start')
    F.text(150, 232, '0, …, 14: tutte le 15 caselle', 13, italic=True)
    F.text(480, 232, '0, …, 7: solo 4 caselle su 8', 13, italic=True)
    return F

# ---------------------------------------------------------------- capitolo 8
def node(F, x, y, t, r=17, fill='white'):
    F.circle(x, y, r, fill=fill, sw=0.95); F.text(x, y + 5, str(t), 15)

@fig
def potenze():
    F = Fig('potenze', 620, 215, 'Cicli di potenze', 'A sinistra le potenze di 3 modulo 13 girano in un ciclo 1, 3, 9. A destra le potenze di 2 modulo 12: 1, 2 formano una coda e poi 4, 8 si ripetono.')
    cx, cy, R = 150, 112, 62
    pts = [(cx + R * cos(-pi / 2 + k * 2 * pi / 3), cy + R * sin(-pi / 2 + k * 2 * pi / 3)) for k in range(3)]
    for k, v in enumerate([1, 3, 9]):
        node(F, *pts[k], v, fill=GREY if v == 1 else 'white')
        F.arrow(*pts[k], *pts[(k + 1) % 3], bend=-0.18, shorten=(19, 20), w=0.95)
    F.text(cx, cy + 5, '× 3', 14, italic=True)
    F.text(cx, 205, 'modulo 13: ritorna a 1 dopo 3 passi', 13, italic=True)
    xs = [340, 410, 480, 560]
    for x, v in zip(xs, [1, 2, 4, 8]):
        node(F, x, 112, v, fill=GREY if v == 1 else 'white')
    for a, b in zip(xs, xs[1:]): F.arrow(a, 112, b, 112, shorten=(19, 20), w=0.95)
    F.path('M560,93 C560,48 480,48 480,90', sw=0.95, extra='marker-end="url(#ah)"')
    F.text(375, 92, '× 2', 13, italic=True)
    F.text(450, 205, 'modulo 12: una coda, poi il ciclo 4, 8', 13, italic=True)
    return F

@fig
def resti7():
    F = Fig('resti7', 380, 290, 'I resti della divisione di 1 per 7', 'Sei resti 1, 3, 2, 6, 4, 5 disposti in cerchio; le frecce portano le cifre 1, 4, 2, 8, 5, 7 del periodo di 1/7.')
    cx, cy, R = 190, 140, 100
    rs = [1, 3, 2, 6, 4, 5]; ds = [1, 4, 2, 8, 5, 7]
    pts = [(cx + R * cos(-pi / 2 + k * pi / 3), cy + R * sin(-pi / 2 + k * pi / 3)) for k in range(6)]
    for k in range(6):
        node(F, *pts[k], rs[k], fill=GREY if k == 0 else 'white')
        (x1, y1), (x2, y2) = pts[k], pts[(k + 1) % 6]
        F.arrow(x1, y1, x2, y2, bend=-0.15, shorten=(19, 20), w=0.9)
        a = -pi / 2 + (k + 0.5) * pi / 3
        F.text(cx + (R + 36) * cos(a), cy + (R + 36) * sin(a) + 5, str(ds[k]), 15, bold=True)
    F.text(cx, cy - 4, 'resti', 13, italic=True); F.text(cx, cy + 14, 'cifre fuori', 12, italic=True, color='#555')
    F.m(cx, 284, '1/7 = 0,142857 142857 …', 14)
    return F

# ---------------------------------------------------------------- capitolo 9
@fig
def triangolo():
    F = Fig('triangolo', 330, 270, 'Le simmetrie del triangolo', 'Un triangolo equilatero con vertici 1, 2, 3, tre assi di riflessione tratteggiati e una freccia di rotazione di un terzo di giro attorno al centro.')
    cx, cy, R = 165, 150, 92
    V = [(cx + R * cos(-pi / 2 + k * 2 * pi / 3), cy + R * sin(-pi / 2 + k * 2 * pi / 3)) for k in range(3)]
    for k in range(3):
        x, y = V[k]; ox, oy = (V[(k + 1) % 3][0] + V[(k + 2) % 3][0]) / 2, (V[(k + 1) % 3][1] + V[(k + 2) % 3][1]) / 2
        F.line(x + (x - ox) * 0.18, y + (y - oy) * 0.18, ox - (x - ox) * 0.18, oy - (y - oy) * 0.18, w=0.6, dash='4 4', color='#666')
    F.polygon(V, fill=GREY, sw=1.1)
    for k, (x, y) in enumerate(V):
        F.text(cx + (R + 22) * cos(-pi / 2 + k * 2 * pi / 3), cy + (R + 22) * sin(-pi / 2 + k * 2 * pi / 3) + 5, str(k + 1), 15)
    r = 30
    a1, a2 = -pi / 2 + 0.25, pi / 6 - 0.15
    F.path(f'M{cx + r * cos(a1):.1f},{cy + r * sin(a1):.1f} A{r},{r} 0 0 1 {cx + r * cos(a2):.1f},{cy + r * sin(a2):.1f}', sw=1, extra='marker-end="url(#ah)"')
    F.dot(cx, cy, 2.2)
    F.text(cx - 6, cy + 24, '120°', 12, italic=True, anchor='end')
    return F

@fig
def orologio12():
    F = Fig('orologio12', 330, 300, 'Due sottogruppi di ℤ/12', 'Un orologio con le classi da 0 a 11. Un quadrato unisce 0, 3, 6, 9; un triangolo tratteggiato unisce 0, 4, 8.')
    cx, cy, R = 165, 150, 108
    P = lambda k, r=R: (cx + r * sin(k * pi / 6), cy - r * cos(k * pi / 6))
    F.circle(cx, cy, R, sw=0.6, stroke='#999')
    F.polygon([P(k) for k in (0, 3, 6, 9)], fill=GREY, sw=1.1)
    F.path('M' + ' L'.join(f'{P(k)[0]:.1f},{P(k)[1]:.1f}' for k in (0, 4, 8)) + ' Z', sw=1.1, dash='5 4')
    for k in range(12):
        x, y = P(k); F.circle(x, y, 13, fill='white', sw=0.9); F.text(x, y + 5, str(k), 13)
    F.m(cx, cy - 4, '⟨3⟩', 14); F.m(cx + 34, cy + 40, '⟨4⟩', 14)
    return F

@fig
def radici():
    F = Fig('radici', 340, 300, 'Le radici seste dell’unità', 'Sei punti equidistanti sul cerchio di raggio 1, da 1 a ζ alla quinta; una freccia mostra la rotazione di 60 gradi da 1 a ζ.')
    cx, cy, R = 170, 150, 100
    F.line(cx - 140, cy, cx + 145, cy, w=0.6, color='#999', arrow=True); F.line(cx, cy + 128, cx, cy - 135, w=0.6, color='#999', arrow=True)
    F.circle(cx, cy, R, sw=0.9)
    pts = [(cx + R * cos(k * pi / 3), cy - R * sin(k * pi / 3)) for k in range(6)]
    F.polygon(pts, sw=0.6, stroke='#777')
    labs = ['1', 'ζ', 'ζ^2', 'ζ^3 = −1', 'ζ^4', 'ζ^5']
    for k, (x, y) in enumerate(pts):
        F.dot(x, y, 4.2)
        a = k * pi / 3; lx, ly = cx + (R + 24) * cos(a), cy - (R + 22) * sin(a) + 5
        F.m(lx - (22 if k == 3 else 0), ly, labs[k], 14, anchor='middle')
    r = 42
    F.path(f'M{cx + r},{cy} A{r},{r} 0 0 0 {cx + r * cos(pi / 3):.1f},{cy - r * sin(pi / 3):.1f}', sw=1, extra='marker-end="url(#ah)"')
    F.text(cx + 50, cy - 18, '60°', 12, italic=True, anchor='start')
    return F

def strands(F, ox, oy, perms, labels, title):
    dy, dx = 62, 52
    rows = len(perms) + 1
    for r in range(rows):
        for i in range(3): F.dot(ox + i * dx, oy + r * dy, 3.4)
    for i in range(3): F.text(ox + i * dx, oy - 12, str(i + 1), 14)
    comp = {i: i for i in (1, 2, 3)}
    for r, p in enumerate(perms):
        for c in (1, 2, 3):
            F.arrow(ox + (c - 1) * dx, oy + r * dy, ox + (p[c] - 1) * dx, oy + (r + 1) * dy, shorten=(5, 6), w=0.9)
        F.m(ox + 2 * dx + 30, oy + r * dy + dy / 2 + 5, labels[r], 14, anchor='start')
        comp = {i: p[comp[i]] for i in comp}
    for c in (1, 2, 3): F.text(ox + (c - 1) * dx, oy + (rows - 1) * dy + 24, str(c), 13, color='#555')
    F.m(ox + dx, oy + (rows - 1) * dy + 50, title, 14)

@fig
def permutazioni():
    F = Fig('permutazioni', 600, 250, 'Comporre due permutazioni', 'Due diagrammi a fili. A sinistra si applica prima τ = (12) e poi σ = (123): il risultato scambia 1 e 3. A destra prima σ e poi τ: il risultato scambia 2 e 3.')
    sigma = {1: 2, 2: 3, 3: 1}; tau = {1: 2, 2: 1, 3: 3}
    strands(F, 60, 40, [tau, sigma], ['prima τ', 'poi σ'], 'στ = (13)')
    strands(F, 360, 40, [sigma, tau], ['prima σ', 'poi τ'], 'τσ = (23)')
    F.text(300, 236, '', 1)
    return F

@fig
def strutture():
    F = Fig('strutture', 620, 175, 'Gruppi, anelli, campi', 'Tre riquadri collegati da frecce: gruppo, anello, campo, con le regole aggiunte a ogni passo ed esempi.')
    boxes = [(14, 'Gruppo', ['un’operazione', 'neutro e inversi'], '(ℤ, +),  ℤ/n,  S_n'),
             (222, 'Anello', ['somma e prodotto', 'distributività'], 'ℤ,  ℤ/6,  ℤ/8'),
             (430, 'Campo', ['si divide per ogni', 'elemento non nullo'], 'ℚ,  ℝ,  ℤ/5,  ℤ/p')]
    for x, t, lines, ex in boxes:
        F.rect(x, 20, 176, 100, rx=8, sw=1)
        F.text(x + 88, 46, t, 16, bold=True)
        for i, l in enumerate(lines): F.text(x + 88, 70 + i * 18, l, 13, italic=True)
        F.m(x + 88, 150, ex, 13)
    F.text(118 + 88, 150, '', 1)
    for x in (190, 398):
        F.arrow(x + 2, 70, x + 30, 70, w=1)
    F.text(206, 140, '', 1)
    return F

# ---------------------------------------------------------------- capitolo 10
def lift_tree(F, ox, title, root, kids, dead=False, sub=''):
    F.text(ox + 80, 22, title, 13, italic=True)
    rx, ry = ox + 80, 70
    node(F, rx, ry, root, r=18)
    F.text(ox - 4, ry + 5, 'mod 3' if 'mod' not in sub else sub.split('|')[0], 12, italic=True, anchor='end')
    if dead:
        F.line(rx, ry + 20, rx, ry + 58, w=0.9, dash='3 4')
        F.text(rx, ry + 82, '×', 26)
        F.text(ox + 80, 196, 'nessun sollevamento', 12, italic=True)
        return
    n = len(kids)
    for i, k in enumerate(kids):
        x = rx + (i - (n - 1) / 2) * 52
        F.arrow(rx, ry, x, ry + 80, shorten=(19, 19), w=0.9)
        node(F, x, ry + 80, k, r=18)
    F.text(ox + 80, 196, 'un ramo' if n == 1 else f'{n} rami', 12, italic=True)

@fig
def sollevamento():
    F = Fig('sollevamento', 620, 210, 'Tre destini di una radice', 'Tre alberi. x² ≡ 6: le radici 1 e 4 modulo 5 hanno un solo sollevamento, 16 e 9 modulo 25. x² ≡ 0 modulo 9: la radice 0 modulo 3 ha tre sollevamenti. x² ≡ 3 modulo 9: la radice 0 non si solleva.')
    # albero 1: due radici, un ramo ciascuna
    F.text(110, 22, 'x² ≡ 6: da mod 5 a mod 25', 13, italic=True)
    for i, (a, b) in enumerate([(1, 16), (4, 9)]):
        x = 70 + i * 80
        node(F, x, 70, a, r=18); F.arrow(x, 70, x, 150, shorten=(19, 19), w=0.9); node(F, x, 150, b, r=18)
    F.text(110, 196, 'un ramo per radice', 12, italic=True)
    F.line(230, 30, 230, 190, w=0.5, color='#bbb', dash='3 4')
    F.text(330, 22, 'x² ≡ 0: da mod 3 a mod 9', 13, italic=True)
    node(F, 330, 70, 0, r=18)
    for i, k in enumerate([0, 3, 6]):
        x = 330 + (i - 1) * 56
        F.arrow(330, 70, x, 150, shorten=(19, 19), w=0.9); node(F, x, 150, k, r=18)
    F.text(330, 196, 'tre rami', 12, italic=True)
    F.line(430, 30, 430, 190, w=0.5, color='#bbb', dash='3 4')
    F.text(525, 22, 'x² ≡ 3: da mod 3 a mod 9', 13, italic=True)
    node(F, 525, 70, 0, r=18)
    F.line(525, 89, 525, 128, w=0.9, dash='3 4')
    F.text(525, 152, '×', 26)
    F.text(525, 196, 'nessun ramo', 12, italic=True)
    return F

if __name__ == '__main__':
    import sys
    # Uso: python3 disegni.py [cartella]   (predefinita: la cartella di questo script)
    out = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).resolve().parent
    out.mkdir(exist_ok=True); sizes = {}
    for f in FIGS: f().save(out, sizes)
    if len(sys.argv) > 2: Path(sys.argv[2]).write_text(json.dumps(sizes, indent=1))
    print(len(FIGS), 'SVG generati in', out)
