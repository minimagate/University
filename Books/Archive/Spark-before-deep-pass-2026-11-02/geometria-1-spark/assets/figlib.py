"""Fine-line SVG drawings for the study books (no external dependencies).

Scale: 1 SVG unit = 0.25 mm on the printed page (MM_PER_PX). Labels at 14 units ≈ text size,
13 for secondary labels, 11–12 for small annotations. Lines: W_THIN 0.7, W 1.0, W_BOLD 1.9.
Colours: INK (black), GREY (light fill), MID (secondary lines). Labels use STIX Two.

Fig(name, w, h, title, desc) -> shapes: line, arrow (straight or bent), rect, circle, dot, ellipse,
path, polygon; labels: text(...) and m(...) for math-like labels ("a_n", "2^{n-1}", "`mod` 5":
letters italic, _x/^x sub/superscripts, backticks for upright words). Graph helpers: axes(), plot().
F.save(out_dir, sizes) writes name.svg and records [width_mm, height_mm] in sizes.
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
    # --- grafici (per analisi, geometria, ...)
    def axes(self, ox, oy, xmin, xmax, ymin, ymax, sx, sy, xlabel='x', ylabel='y', ticks=(), yticks=(), grid=False):
        """Draw axes with origin at pixel (ox, oy) and scale sx, sy pixels per unit; returns (X, Y) maps."""
        X = lambda v: ox + v * sx; Y = lambda v: oy - v * sy
        if grid:
            for a in range(int(xmin), int(xmax) + 1): self.line(X(a), Y(ymin), X(a), Y(ymax), w=0.45, color='#bbb')
            for b in range(int(ymin), int(ymax) + 1): self.line(X(xmin), Y(b), X(xmax), Y(b), w=0.45, color='#bbb')
        self.line(X(xmin), Y(0), X(xmax), Y(0), w=0.9, arrow=True); self.line(X(0), Y(ymin), X(0), Y(ymax), w=0.9, arrow=True)
        self.m(X(xmax), Y(0) + 20, xlabel, 14); self.m(X(0) - 14, Y(ymax) + 4, ylabel, 14)
        for t in ticks:
            self.line(X(t), Y(0) - 4, X(t), Y(0) + 4, w=0.8); self.text(X(t), Y(0) + 18, str(t).replace('-', '−'), 12)
        for t in yticks:
            self.line(X(0) - 4, Y(t), X(0) + 4, Y(t), w=0.8); self.text(X(0) - 10, Y(t) + 4, str(t).replace('-', '−'), 12, anchor='end')
        return X, Y
    def plot(self, X, Y, f, a, b, n=200, w=1.3, dash=None, ymin=None, ymax=None):
        """Graph of f on [a, b] (maps X, Y from axes()); points outside [ymin, ymax] break the curve."""
        d = []; pen = False
        for k in range(n + 1):
            t = a + (b - a) * k / n
            try: v = f(t)
            except (ValueError, ZeroDivisionError): pen = False; continue
            if (ymin is not None and v < ymin) or (ymax is not None and v > ymax): pen = False; continue
            d.append(('L' if pen else 'M') + f'{X(t):.2f},{Y(v):.2f}'); pen = True
        self.path(' '.join(d), sw=w, dash=dash)
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
