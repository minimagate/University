"""Disegni del libro Analisi 1 (settembre–ottobre 2026).

Genera gli SVG originali a tratto sottile:  python3 disegni.py [cartella] [sizes.json]
Poi le copie PDF:                           swift svg-to-pdf.swift <cartella>
"""
import json, sys
from math import exp, log, sqrt, atan, asin, acos, tan, cosh, sinh, tanh
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent))
from figlib import *            # Fig, W, W_THIN, W_BOLD, GREY, MID, INK, cos, sin, pi, hypot

FIGS = []
def fig(f): FIGS.append(f); return f

def ax(F, ox, oy, xmin, xmax, ymin, ymax, sx, sy, xl='x', yl='y', xt=(), yt=()):
    """Assi con tacche etichettate: xt, yt liste di (valore, etichetta)."""
    X, Y = F.axes(ox, oy, xmin, xmax, ymin, ymax, sx, sy, xl, yl)
    for v, l in xt:
        F.line(X(v), Y(0) - 4, X(v), Y(0) + 4, w=0.8); F.m(X(v), Y(0) + 18, l, 12)
    for v, l in yt:
        F.line(X(0) - 4, Y(v), X(0) + 4, Y(v), w=0.8); F.m(X(0) - 9, Y(v) + 4, l, 12, anchor='end')
    return X, Y

def poly(F, X, Y, f, a, b, n=200, **k):
    pts = [(X(a + (b - a) * i / n), Y(f(a + (b - a) * i / n))) for i in range(n + 1)]
    return pts

def fillarea(F, pts, fill=GREY):
    F.path('M' + ' L'.join(f'{x:.2f},{y:.2f}' for x, y in pts) + ' Z', fill=fill, stroke='none', sw=0)

def opendot(F, x, y, r=3.2): F.circle(x, y, r, fill='white', sw=0.9)

# ---------------------------------------------------------------- capitolo 1
@fig
def quantificatori():
    F = Fig('quantificatori', 600, 200, 'Per ogni studente esiste una birra, oppure una birra per tutti',
            'Due diagrammi con tre studenti e tre birre. A sinistra ogni studente ha una freccia verso una birra diversa; a destra tutte le frecce vanno alla stessa birra.')
    for k, (tit, tgt) in enumerate([('per ogni S esiste B', [0, 2, 1]), ('esiste B per ogni S', [1, 1, 1])]):
        x0 = 60 + 300 * k; xs, xb = x0, x0 + 170
        F.ellipse(xs, 95, 34, 70); F.ellipse(xb, 95, 34, 70)
        F.text(xs, 16, 'studenti', 13, italic=True); F.text(xb, 16, 'birre', 13, italic=True)
        ys = [55, 95, 135]
        for i, y in enumerate(ys):
            F.dot(xs, y); F.m(xs - 16, y + 5, f'S_{i+1}', 13)
            if k == 1 and i == 1: F.circle(xb, y, 9, fill=GREY, sw=0.8)
            F.dot(xb, y); F.m(xb + 18, y + 5, f'B_{i+1}', 13)
        for i, j in enumerate(tgt): F.arrow(xs, ys[i], xb, ys[j], shorten=(6, 7), w=0.9)
        F.text(x0 + 85, 190, tit, 14, italic=True)
    return F

@fig
def insiemi():
    F = Fig('insiemi', 600, 175, 'Intersezione, unione, differenza',
            'Tre coppie di cerchi A e B: in grigio A intersezione B, A unione B, A meno B.')
    r = 46
    for k, (lab, mode) in enumerate([('A ∩ B', 'i'), ('A ∪ B', 'u'), ('A ∖ B', 'd')]):
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
        F.m(cx, 160, lab, 15)
    return F

@fig
def parti():
    F = Fig('parti', 620, 250, 'Tutti i sottoinsiemi di {3, ∗, □}',
            'Albero binario: per 3, per l’asterisco e per il quadratino si sceglie dentro o fuori. Le otto foglie sono gli otto sottoinsiemi.')
    xs = lambda lvl, i: 35 + (i + 0.5) * (560 / 2 ** lvl)
    ys = [28, 82, 136, 190]
    for lvl in range(3):
        for i in range(2 ** lvl):
            x, y = xs(lvl, i), ys[lvl]
            for b in range(2):
                x2 = xs(lvl + 1, 2 * i + b)
                F.line(x, y + 4, x2, ys[lvl + 1] - 6, w=0.85)
                F.text((x + x2) / 2 + (-12 if b == 0 else 12), (y + ys[lvl + 1]) / 2 + 2, 'dentro' if b == 0 else 'fuori', 11, italic=True, color='#555')
            F.dot(x, y, 2.6)
    for lvl, l in enumerate(['3', '∗', '□']):
        F.text(10, ys[lvl] + 30, l + ' ?', 13, anchor='start')
    leaves = ['{3,∗,□}', '{3,∗}', '{3,□}', '{3}', '{∗,□}', '{∗}', '{□}', '∅']
    for i, l in enumerate(leaves): F.text(xs(3, i), ys[3] + 16, l, 13)
    F.text(310, 240, '2 · 2 · 2 = 8 sottoinsiemi', 13, italic=True)
    return F

# ---------------------------------------------------------------- capitolo 2
def pane(F, x0, title, na, nb, arrows, y0=30, H=128):
    xa, xb = x0 + 42, x0 + 118; cy = y0 + H / 2
    F.ellipse(xa, cy, 24, H / 2); F.ellipse(xb, cy, 24, H / 2)
    F.m(xa, y0 - 8, 'A', 14); F.m(xb, y0 - 8, 'B', 14)
    ys = lambda n: [cy + (i - (n - 1) / 2) * (H / (n + 0.6)) for i in range(n)]
    pa, pb = ys(na), ys(nb)
    for y in pa: F.dot(xa, y)
    for y in pb: F.dot(xb, y)
    for i, j in arrows: F.arrow(xa, pa[i], xb, pb[j], shorten=(5, 6), w=0.85)
    F.text(x0 + 80, y0 + H + 26, title, 14, italic=True)

@fig
def funzioni():
    F = Fig('funzioni', 640, 190, 'Quattro funzioni', 'Diagrammi a frecce da A a B: una funzione qualsiasi, una iniettiva, una suriettiva, una biiettiva.')
    pane(F, 0, 'una funzione', 3, 3, [(0, 0), (1, 0), (2, 2)])
    pane(F, 160, 'iniettiva', 3, 4, [(0, 0), (1, 1), (2, 3)])
    pane(F, 320, 'suriettiva', 4, 3, [(0, 0), (1, 1), (2, 1), (3, 2)])
    pane(F, 480, 'biiettiva', 3, 3, [(0, 1), (1, 2), (2, 0)])
    return F

@fig
def quadrato4():
    F = Fig('quadrato4', 640, 215, 'La parabola con quattro scelte di insiemi',
            'Quattro grafici di x al quadrato: con partenza R o semiretta positiva e arrivo R o semiretta positiva, evidenziati in grassetto sugli assi.')
    cases = [('ℝ → ℝ', False, False, 'nessuna delle due'), ('ℝ → [0,+∞)', False, True, 'suriettiva'),
             ('[0,+∞) → ℝ', True, False, 'iniettiva'), ('[0,+∞) → [0,+∞)', True, True, 'biiettiva')]
    for k, (tit, posdom, poscod, verd) in enumerate(cases):
        ox, oy = 80 + 160 * k, 140
        X, Y = F.axes(ox, oy, -1.6, 1.6, -0.6, 2.3, 40, 40, 'x', 'y')
        a = 0 if posdom else -1.45
        F.plot(X, Y, lambda t: t * t, -1.45, 1.45, w=0.6, dash='3 3')
        F.plot(X, Y, lambda t: t * t, a, 1.45, w=1.5)
        F.line(X(a), Y(0), X(1.5), Y(0), w=W_BOLD)
        F.line(X(0), Y(0 if poscod else -0.55), X(0), Y(2.2), w=W_BOLD)
        F.m(ox, 178, tit, 13); F.text(ox, 200, verd, 12, italic=True)
    return F

# ---------------------------------------------------------------- capitolo 3
@fig
def domino():
    F = Fig('domino', 620, 200, 'Le tessere del domino', 'Una fila di tessere: le prime cadono, le altre stanno per cadere. Sotto ogni tessera c’è P(n).')
    ground = 155; wdt, hgt = 15, 78; gap = 58; x0 = 40
    angles = [64, 52, 27, 0, 0, 0, 0, 0]
    for i, a in enumerate(angles):
        x = x0 + i * gap
        if i == 6: F.text(x + 8, ground - 30, '…', 22); continue
        if i == 7: x = x0 + 7 * gap + 10
        F.raw(f'<rect x="{x}" y="{ground-hgt}" width="{wdt}" height="{hgt}" rx="2.5" fill="{GREY if a else "white"}" stroke="{INK}" stroke-width="1" transform="rotate({a} {x+wdt} {ground})"/>')
        F.raw(f'<line x1="{x+3}" y1="{ground-hgt/2}" x2="{x+wdt-3}" y2="{ground-hgt/2}" stroke="{INK}" stroke-width="0.6" transform="rotate({a} {x+wdt} {ground})"/>')
    F.line(18, ground, 600, ground, w=0.8)
    for i, l in enumerate(['P(0)', 'P(1)', 'P(2)', 'P(3)', 'P(4)', 'P(5)', None, 'P(n)']):
        if l: F.m(x0 + i * gap + 8 + (10 if i == 7 else 0), ground + 24, l, 14)
    F.arrow(30, 34, 58, 82, bend=0.3, w=0.9)
    F.text(20, 22, 'il primo cade', 13, anchor='start', italic=True)
    F.arrow(244, 66, 292, 66, bend=-0.4, w=0.9)
    F.text(300, 22, 'ogni tessera fa cadere la successiva:', 13, anchor='start', italic=True)
    F.m(300, 44, 'P(n) ⇒ P(n+1)', 14, anchor='start')
    return F

@fig
def somme():
    F = Fig('somme', 600, 105, 'Somme parziali verso 1', 'Su una retta da 0 a 1 i punti 1/2, 2/3, 3/4, 4/5, 5/6 si addensano verso 1; tra 4/5 e 1 manca 1/5.')
    X = lambda v: 30 + 540 * v; y = 50
    F.line(X(0), y, X(1.03), y, w=0.9, arrow=True)
    for v, l in [(0, '0'), (1, '1')]:
        F.line(X(v), y - 6, X(v), y + 6, w=1); F.m(X(v), y + 24, l, 13)
    for n in range(1, 9):
        v = n / (n + 1); F.dot(X(v), y, 3)
        if n <= 5: F.m(X(v), y - 14, f'{n}/{n+1}', 12)
    F.line(X(4/5), y + 12, X(1), y + 12, w=0.8, arrow=True, arrow_start=True)
    F.text((X(0.8) + X(1)) / 2, y + 32, 'manca 1/5', 12, italic=True)
    return F

# ---------------------------------------------------------------- capitolo 4
@fig
def separazione():
    F = Fig('separazione', 620, 150, 'La completezza separa due insiemi',
            'Sopra: un insieme A a sinistra di un insieme B sulla retta reale, con un punto c fra i due. Sotto: in Q gli insiemi definiti da x^2 ≤ 2 e x^2 ≥ 2 lasciano un buco in radice di 2.')
    for row, (y, lab) in enumerate([(48, 'ℝ'), (115, 'ℚ')]):
        F.line(20, y, 600, y, w=0.9, arrow=True); F.m(608, y - 8, lab, 14)
        if row == 0:
            for a, b in [(60, 140), (170, 250)]: F.line(a, y, b, y, w=4.5, color='#777')
            F.dot(290, y, 3); F.dot(320, y, 3)
            for a, b in [(380, 470), (500, 570)]: F.line(a, y, b, y, w=4.5, color='#777')
            F.m(160, y - 14, 'A', 14); F.m(480, y - 14, 'B', 14)
            F.line(352, y - 10, 352, y + 10, w=1.4); F.m(352, y + 26, 'c', 14)
        else:
            F.line(60, y, 304, y, w=4.5, color='#777'); F.line(316, y, 570, y, w=4.5, color='#777')
            opendot(F, 310, y, 5)
            F.m(180, y - 14, 'x^2 ≤ 2', 13); F.m(450, y - 14, 'x^2 ≥ 2', 13); F.m(310, y + 26, '√2 ∉ ℚ', 13)
    return F

@fig
def sup_eps():
    F = Fig('sup-eps', 600, 110, 'Il supremo e la finestra di ampiezza epsilon',
            'Un insieme di punti che si addensa verso L da sinistra; la finestra da L meno epsilon a L contiene punti dell’insieme.')
    y = 55; F.line(20, y, 580, y, w=0.9, arrow=True)
    L = 470
    F.rect(390, y - 16, L - 390, 32, fill=GREY, stroke='none')
    F.line(60, y, 200, y, w=4.5, color='#777')
    for k in range(1, 14): F.dot(L - 260 / (k + 1) ** 1.1, y, 2.8)
    F.line(L, y - 18, L, y + 18, w=1.4); F.m(L, y + 34, 'L = sup A', 13)
    F.line(390, y - 18, 390, y + 18, w=0.8, dash='3 3'); F.m(390, y + 34, 'L − ε', 13)
    F.m(130, y - 16, 'A', 14)
    F.text(530, y - 22, 'nessun punto', 11, italic=True); F.text(530, y - 10, 'di A qui', 11, italic=True)
    return F

# ---------------------------------------------------------------- capitolo 5
@fig
def simmetrie():
    F = Fig('simmetrie', 620, 220, 'Funzione pari e funzione dispari',
            'A sinistra una funzione pari con due punti simmetrici rispetto all’asse y; a destra una dispari con due punti simmetrici rispetto all’origine.')
    X, Y = F.axes(150, 150, -2.4, 2.4, -0.8, 2.3, 55, 55, 'x', 'y')
    f = lambda t: 0.25 * t ** 4 - t * t + 1.3
    F.plot(X, Y, f, -2.3, 2.3, w=1.4, ymax=2.2)
    a = 1.6; F.dot(X(a), Y(f(a))); F.dot(X(-a), Y(f(a))); F.line(X(-a), Y(f(a)), X(a), Y(f(a)), w=0.7, dash='3 3')
    F.m(X(a) + 12, Y(f(a)) - 8, '(x, f(x))', 12, anchor='start'); F.m(X(-a) - 12, Y(f(a)) - 8, '(−x, f(x))', 12, anchor='end')
    F.text(150, 212, 'pari', 13, italic=True)
    X, Y = F.axes(470, 110, -2.4, 2.4, -1.7, 1.7, 55, 55, 'x', 'y')
    g = lambda t: 0.35 * t ** 3 - t
    F.plot(X, Y, g, -2.35, 2.35, w=1.4, ymin=-1.65, ymax=1.65)
    a = 2.0; F.dot(X(a), Y(g(a))); F.dot(X(-a), Y(-g(a))); F.line(X(-a), Y(-g(a)), X(a), Y(g(a)), w=0.7, dash='3 3')
    F.m(X(a) + 8, Y(g(a)) - 8, '(x, f(x))', 12, anchor='start'); F.m(X(-a) - 6, Y(-g(a)) + 20, '(−x, −f(x))', 12, anchor='middle')
    F.text(470, 212, 'dispari', 13, italic=True)
    return F

@fig
def potenze():
    F = Fig('potenze', 620, 230, 'Potenze pari e dispari',
            'A sinistra x^2, x^4, x^6; a destra x^3 e x^5. Tutte passano per (1,1).')
    X, Y = ax(F, 150, 180, -1.5, 1.5, -0.2, 1.75, 85, 85, xt=[(1, '1'), (-1, '−1')], yt=[(1, '1')])
    for k, d in [(2, None), (4, '6 3'), (6, '2 3')]:
        F.plot(X, Y, lambda t, k=k: t ** k, -1.25, 1.25, w=1.3, dash=d, ymax=1.7)
    F.m(X(1.12) + 18, Y(1.12 ** 2) + 4, 'x^2', 12, anchor='start'); F.m(X(1.08) - 4, Y(1.6), 'x^6', 12, anchor='end')
    F.m(X(0.62), Y(0.62 ** 2) - 8, 'x^2', 12); F.m(X(0.75), Y(0.75 ** 6) + 16, 'x^6', 12)
    X, Y = ax(F, 470, 115, -1.5, 1.5, -1.2, 1.2, 85, 85, xt=[(1, '1')], yt=[(1, '1')])
    for k, d in [(3, None), (5, '6 3')]:
        F.plot(X, Y, lambda t, k=k: t ** k, -1.15, 1.15, w=1.3, dash=d, ymin=-1.15, ymax=1.15)
    F.m(X(-0.75) - 6, Y(-0.75 ** 3) + 4, 'x^3', 12, anchor='end'); F.m(X(1.02) - 6, Y(1.1), 'x^5', 12, anchor='end')
    F.dot(X(1), Y(1)); F.dot(X(-1), Y(-1))
    return F

@fig
def inversa():
    F = Fig('inversa', 420, 300, 'Grafico dell’inversa', 'Il ramo destro della parabola e la radice quadrata, simmetrici rispetto alla bisettrice; un punto (a,b) e il suo gemello (b,a).')
    X, Y = F.axes(50, 260, -0.2, 2.6, -0.2, 2.6, 130, 100, 'x', 'y')
    F.plot(X, Y, lambda t: t * t, 0, 1.6, w=1.4); F.plot(X, Y, sqrt, 0, 2.55, w=1.4, dash='6 3')
    F.line(X(0), Y(0), X(2.5), Y(2.5), w=0.7, color=MID)
    a, b = 1.3, 1.69
    F.dot(X(a), Y(b)); F.dot(X(b), Y(a)); F.line(X(a), Y(b), X(b), Y(a), w=0.7, dash='3 3')
    F.m(X(a) - 8, Y(b) - 8, '(a, b)', 13, anchor='end'); F.m(X(b) + 10, Y(a) + 16, '(b, a)', 13, anchor='start')
    F.m(X(1.55) - 8, Y(2.4), 'y = x^2', 13, anchor='end'); F.m(X(2.5), Y(sqrt(2.5)) + 20, 'y = √x', 13); F.m(X(2.5) + 4, Y(2.5) - 6, 'y = x', 12, anchor='start')
    return F

@fig
def trasformazioni():
    F = Fig('trasformazioni', 420, 270, 'Da x^2 − 4 al suo valore assoluto',
            'Il grafico di x^2 − 4 tratteggiato sotto l’asse e il grafico di |x^2 − 4| con la parte centrale ribaltata sopra.')
    X, Y = ax(F, 210, 160, -3, 3, -4.6, 5.2, 60, 22, xt=[(-2, '−2'), (2, '2')], yt=[(4, '4'), (-4, '−4')])
    F.plot(X, Y, lambda t: t * t - 4, -2, 2, w=0.8, dash='4 3')
    F.plot(X, Y, lambda t: abs(t * t - 4), -2.95, 2.95, w=1.5, ymax=5.1)
    F.m(X(2.6), Y(5.0), '|x^2 − 4|', 13, anchor='start'); F.m(X(0.9), Y(-3.4), 'x^2 − 4', 12, anchor='start')
    return F

@fig
def livelli():
    F = Fig('livelli', 520, 250, 'Quante intersezioni', 'Il grafico a W di |x^2 − c| tagliato da cinque rette orizzontali, con il numero di intersezioni scritto a destra.')
    X, Y = F.axes(220, 200, -3.1, 3.1, -1, 5.9, 58, 30, 'x', 'y')
    F.plot(X, Y, lambda t: abs(t * t - 4), -3, 3, w=1.5, ymax=5.6)
    for lv, cnt in [(-0.6, '0'), (0, '2'), (2, '4'), (4, '3'), (5.2, '2')]:
        F.line(X(-3.1), Y(lv), X(3.3), Y(lv), w=0.7, dash='4 3', color='#555'); F.text(X(3.3) + 34, Y(lv) + 4, cnt, 13)
    F.text(X(3.3) + 34, 22, 'intersezioni', 11, italic=True)
    F.m(X(0) - 6, Y(4) - 6, 'c', 12, anchor='end')
    return F

@fig
def radice_retta():
    F = Fig('radice-retta', 520, 280, 'Radice contro retta', 'Il grafico di radice di x+6, il ramo fantasma tratteggiato, la retta y=x; si incontrano in x=3; il candidato estraneo x=−2 sta sul ramo fantasma.')
    X, Y = ax(F, 330, 150, -6.6, 4.5, -3.6, 3.9, 40, 30, xt=[(-6, '−6'), (3, '3'), (-2, '−2')])
    F.plot(X, Y, lambda t: sqrt(t + 6), -6, 4.3, w=1.5)
    F.plot(X, Y, lambda t: -sqrt(t + 6), -6, 4.3, w=0.8, dash='4 3', ymin=-3.5)
    F.plot(X, Y, lambda t: t, -3.5, 3.8, w=1.0)
    F.dot(X(3), Y(3)); opendot(F, X(-2), Y(-2))
    F.line(X(-6), Y(0), X(3), Y(0), w=W_BOLD)
    F.m(X(-4.4), Y(sqrt(1.6)) - 10, 'y = √(x+6)', 13); F.m(X(3.8) + 4, Y(3.8) + 2, 'y = x', 12, anchor='start')
    F.text(X(-4.2), Y(-sqrt(1.8)) + 22, 'ramo fantasma', 11, italic=True)
    return F

@fig
def immagine():
    F = Fig('immagine', 640, 290, 'Immagine e controimmagine',
            'Due grafici di |x^2 − 4|. A sinistra il tratto sopra [1,4] proiettato sull’asse y dà [0,12]. A destra la striscia 0 ≤ y ≤ 1 taglia il grafico in due tratti che si proiettano su due intervalli.')
    f = lambda t: abs(t * t - 4)
    X, Y = ax(F, 90, 255, -2.4, 4.4, -0.5, 13, 42, 17, xt=[(1, '1'), (2, '2'), (4, '4')], yt=[(3, '3'), (12, '12')])
    F.plot(X, Y, f, -2.3, 4.15, w=0.7, dash='3 3', ymax=12.8)
    F.plot(X, Y, f, 1, 4, w=W_BOLD)
    F.line(X(1), Y(0), X(4), Y(0), w=W_BOLD); F.line(X(0), Y(0), X(0), Y(12), w=W_BOLD)
    F.line(X(4), Y(12), X(0), Y(12), w=0.6, dash='3 3')
    F.m(X(2.6), 22, 'f([1,4]) = [0,12]', 13)
    X, Y = ax(F, 470, 220, -3, 3, -0.6, 5, 48, 38, xt=[(-sqrt(5), '−√5'), (sqrt(5), '√5')], yt=[(1, '1'), (4, '4')])
    F.rect(X(-3), Y(1), X(3) - X(-3), Y(0) - Y(1), fill=GREY, stroke='none')
    F.plot(X, Y, f, -2.95, 2.95, w=1.3, ymax=4.9)
    for s in (-1, 1):
        F.line(X(s * sqrt(3)), Y(0), X(s * sqrt(5)), Y(0), w=W_BOLD)
        F.line(X(s * sqrt(3)), Y(1), X(s * sqrt(3)), Y(0), w=0.6, dash='2 2'); F.line(X(s * sqrt(5)), Y(1), X(s * sqrt(5)), Y(0), w=0.6, dash='2 2')
    F.m(470, 22, 'f^{−1}([−2,1])', 13)
    return F

# ---------------------------------------------------------------- capitolo 6
@fig
def circonferenza():
    F = Fig('circonferenza', 420, 330, 'Seno, coseno e tangente sulla circonferenza',
            'Circonferenza unitaria, punto P all’angolo alfa, proiezioni cos alfa e sin alfa, retta tangente x=1 e punto Q all’altezza tan alfa.')
    R = 120; ox, oy = 150, 200
    F.line(20, oy, 400, oy, w=0.9, arrow=True); F.line(ox, 320, ox, 20, w=0.9, arrow=True)
    F.circle(ox, oy, R)
    a = 0.72; px, py = ox + R * cos(a), oy - R * sin(a); qx, qy = ox + R, oy - R * tan(a)
    F.path(f'M{ox},{oy} L{ox+R},{oy} A{R},{R} 0 0 0 {px:.2f},{py:.2f} Z', fill=GREY, stroke='none')
    F.line(ox + R, 30, ox + R, 310, w=0.8, color=MID)
    F.line(ox, oy, qx, qy, w=1.0)
    F.line(px, py, px, oy, w=0.8, dash='3 3')
    F.line(ox, oy + 2, px, oy + 2, w=W_BOLD); F.line(px, py, px, oy, w=W_BOLD)
    F.line(qx, oy, qx, qy, w=W_BOLD)
    F.dot(px, py); F.dot(qx, qy); F.dot(ox + R, oy)
    F.m(px - 8, py - 10, 'P', 14); F.m(qx + 12, qy, 'Q', 14, anchor='start'); F.m(ox + R + 8, oy + 18, 'A', 14, anchor='start'); F.m(ox - 10, oy + 18, 'O', 14)
    F.m((ox + px) / 2, oy + 22, 'cos α', 13); F.m(px - 6, (py + oy) / 2 + 4, 'sin α', 13, anchor='end')
    F.m(qx + 10, (qy + oy) / 2 + 4, 'tan α', 13, anchor='start'); F.m(ox + 40, oy - 12, 'α', 13)
    F.m(ox + R + 6, 40, 'x = 1', 12, anchor='start')
    return F

def piticks(F, X, Y, vals):
    for v, l in vals:
        F.line(X(v), Y(0) - 4, X(v), Y(0) + 4, w=0.8); F.m(X(v), Y(0) + 18, l, 12)

@fig
def trig_grafici():
    F = Fig('trig-grafici', 640, 385, 'Grafici di seno, coseno e tangente',
            'Sopra seno (pieno) e coseno (tratteggiato) fra −1 e 1. Sotto la tangente con asintoti verticali in −π/2, π/2, 3π/2.')
    X, Y = F.axes(110, 80, -1.8, 7.3, -1.3, 1.4, 66, 46, 'x', 'y')
    piticks(F, X, Y, [(pi / 2, 'π/2'), (pi, 'π'), (3 * pi / 2, '3π/2'), (2 * pi, '2π')])
    F.plot(X, Y, sin, -1.7, 7.2, w=1.4); F.plot(X, Y, cos, -1.7, 7.2, w=1.2, dash='6 3')
    F.m(X(1.57), Y(1) - 8, 'sin', 12); F.m(X(0) + 16, Y(1) - 8, 'cos', 12)
    X, Y = F.axes(110, 255, -1.8, 7.3, -1.9, 1.9, 66, 46, 'x', 'y')
    piticks(F, X, Y, [(pi, 'π'), (2 * pi, '2π')])
    for c in (-pi / 2, pi / 2, 3 * pi / 2, 5 * pi / 2 - 0.0001):
        if c < 7.2: F.line(X(c), Y(-1.9), X(c), Y(1.9), w=0.6, dash='3 3', color='#555')
    for k in range(-1, 3):
        F.plot(X, Y, tan, -pi / 2 + k * pi + 0.02, pi / 2 + k * pi - 0.02, w=1.4, ymin=-1.85, ymax=1.85)
    F.m(X(-pi / 2), Y(-1.9) + 16, '−π/2', 12); F.m(X(pi / 2), Y(-1.9) + 16, 'π/2', 12); F.m(X(3 * pi / 2), Y(-1.9) + 16, '3π/2', 12)
    F.m(X(5.6), Y(1.7), 'tan', 12)
    return F

@fig
def inverse_trig():
    F = Fig('inverse-trig', 640, 230, 'Arcoseno, arcocoseno, arcotangente',
            'Tre grafici: arcsin da [−1,1] a [−π/2,π/2]; arccos da [−1,1] a [0,π]; arctan su tutta la retta con asintoti orizzontali ±π/2.')
    X, Y = ax(F, 95, 120, -1.5, 1.5, -1.8, 1.8, 50, 50, xt=[(-1, '−1'), (1, '1')], yt=[(pi / 2, 'π/2'), (-pi / 2, '−π/2')])
    F.plot(X, Y, asin, -1, 1, w=1.5); F.dot(X(1), Y(pi / 2), 2.4); F.dot(X(-1), Y(-pi / 2), 2.4)
    F.text(95, 222, 'arcsin', 13, italic=True)
    X, Y = ax(F, 300, 190, -1.5, 1.5, -0.3, 3.4, 50, 50, xt=[(-1, '−1'), (1, '1')], yt=[(pi, 'π'), (pi / 2, 'π/2')])
    F.plot(X, Y, acos, -1, 1, w=1.5); F.dot(X(1), Y(0), 2.4); F.dot(X(-1), Y(pi), 2.4)
    F.text(300, 222, 'arccos', 13, italic=True)
    X, Y = ax(F, 510, 120, -2.4, 2.4, -1.9, 1.9, 24, 50, yt=[(pi / 2, 'π/2'), (-pi / 2, '−π/2')])
    for c in (pi / 2, -pi / 2): F.line(X(-2.4), Y(c), X(2.4), Y(c), w=0.6, dash='3 3', color='#555')
    F.plot(X, Y, atan, -2.35, 2.35, w=1.5)
    F.text(510, 222, 'arctan', 13, italic=True)
    return F

@fig
def dente():
    F = Fig('dente', 620, 170, 'Il dente di sega arccos(sin x)', 'Grafico a zig-zag di arccos(sin x) fra 0 e π, con periodo 2π.')
    X, Y = ax(F, 310, 130, -7, 7.2, -0.3, 3.5, 40, 32, yt=[(pi, 'π'), (pi / 2, 'π/2')])
    piticks(F, X, Y, [(-2 * pi, '−2π'), (-pi, '−π'), (pi / 2, 'π/2'), (pi, 'π'), (2 * pi, '2π')])
    F.plot(X, Y, lambda t: acos(max(-1, min(1, sin(t)))), -6.9, 7.0, n=600, w=1.5)
    return F

# ---------------------------------------------------------------- capitolo 7
@fig
def tre_viste():
    F = Fig('tre-viste', 640, 210, 'Una successione come grafico e come fotografia',
            'A sinistra i punti (n, 1/n) per n da 1 a 10; a destra gli stessi valori segnati su una retta con l’indice accanto.')
    X, Y = ax(F, 40, 175, -0.3, 11, -0.1, 1.15, 26, 140, 'n', 'a_n', xt=[(5, '5'), (10, '10')], yt=[(1, '1')])
    for n in range(1, 11): F.dot(X(n), Y(1 / n), 2.8)
    y = 120; Xr = lambda v: 380 + 230 * v
    F.line(Xr(-0.05), y, Xr(1.08), y, w=0.9, arrow=True)
    F.line(Xr(0), y - 5, Xr(0), y + 5); F.m(Xr(0), y + 22, '0', 12)
    for n in range(1, 11):
        F.dot(Xr(1 / n), y, 2.8)
        if n <= 4: F.m(Xr(1 / n), y - 12, f'a_{n}', 12)
    F.text(Xr(0.06), y - 12, '…', 13)
    return F

@fig
def striscia():
    F = Fig('striscia', 620, 230, 'La striscia attorno al limite', 'Punti di una successione che oscillano attorno a ℓ; da n0 in poi stanno tutti nella striscia grigia fra ℓ − ε e ℓ + ε.')
    X, Y = F.axes(40, 200, -0.3, 21, -0.2, 3.1, 26, 60, 'n', 'a_n')
    l, e = 1.6, 0.35
    F.rect(X(0), Y(l + e), X(20.5) - X(0), Y(l - e) - Y(l + e), fill=GREY, stroke='none')
    F.line(X(0), Y(l), X(20.5), Y(l), w=0.7, dash='4 3')
    for n in range(1, 21): F.dot(X(n), Y(l + (-1) ** n * 1.35 / n ** 0.8), 2.8)
    F.line(X(7), Y(0), X(7), Y(3.0), w=0.7, dash='3 3'); F.m(X(7), Y(0) + 18, 'n_0', 13)
    F.m(X(20.6) + 4, Y(l) + 4, 'ℓ', 14, anchor='start'); F.m(X(20.6) + 4, Y(l + e) + 4, 'ℓ + ε', 12, anchor='start'); F.m(X(20.6) + 4, Y(l - e) + 4, 'ℓ − ε', 12, anchor='start')
    return F

@fig
def oscilla():
    F = Fig('oscilla', 520, 200, 'Divergere senza crescere', 'I punti 0, 2, 1, 3, 2, 4, … salgono a zig-zag; una soglia M tratteggiata viene superata definitivamente.')
    X, Y = F.axes(40, 170, -0.3, 14, -0.3, 8.3, 32, 18, 'n', 'a_n')
    vals = [0, 2, 1, 3, 2, 4, 3, 5, 4, 6, 5, 7, 6, 8]
    F.path('M' + ' L'.join(f'{X(n):.1f},{Y(v):.1f}' for n, v in enumerate(vals)), stroke=MID, sw=0.6)
    for n, v in enumerate(vals): F.dot(X(n), Y(v), 2.8)
    F.line(X(0), Y(4.5), X(13.8), Y(4.5), w=0.7, dash='4 3'); F.m(X(13.9) + 4, Y(4.5) + 4, 'M', 13, anchor='start')
    return F

@fig
def carabinieri():
    F = Fig('carabinieri', 620, 220, 'Il teorema dei carabinieri', 'Due successioni di punti vuoti, una sopra e una sotto, convergono a ℓ; i punti pieni stanno fra le due.')
    X, Y = F.axes(40, 195, -0.3, 21, -0.2, 3.2, 26, 55, 'n', '')
    l = 1.6
    F.line(X(0), Y(l), X(20.5), Y(l), w=0.7, dash='4 3'); F.m(X(20.6) + 4, Y(l) + 4, 'ℓ', 14, anchor='start')
    A = [l - 1.3 / n ** 0.85 for n in range(1, 21)]; C = [l + 1.5 / n ** 0.85 for n in range(1, 21)]
    for n in range(1, 21):
        a, c = A[n - 1], C[n - 1]; t = 0.5 + 0.45 * sin(1.7 * n)
        opendot(F, X(n), Y(a), 2.8); opendot(F, X(n), Y(c), 2.8); F.dot(X(n), Y(a + t * (c - a)), 2.6)
    F.m(X(1) + 10, Y(C[0]), 'c_n', 13, anchor='start'); F.m(X(1) + 10, Y(A[0]) + 6, 'a_n', 13, anchor='start'); F.m(X(3) + 10, Y(l + 0.15), 'b_n', 13, anchor='start')
    return F

# ---------------------------------------------------------------- capitolo 8
@fig
def monotona():
    F = Fig('monotona', 600, 210, 'Una successione crescente e limitata', 'Punti crescenti che salgono verso la retta ℓ; da n0 in poi stanno sopra ℓ − ε.')
    X, Y = F.axes(40, 185, -0.3, 21, -0.2, 3.0, 25, 60, 'n', 'a_n')
    l, e = 2.4, 0.35
    F.rect(X(0), Y(l), X(20.5) - X(0), Y(l - e) - Y(l), fill=GREY, stroke='none')
    F.line(X(0), Y(l), X(20.5), Y(l), w=0.8, dash='4 3'); F.line(X(0), Y(l - e), X(20.5), Y(l - e), w=0.6, dash='2 3')
    for n in range(1, 21): F.dot(X(n), Y(l - 2.1 / n ** 0.9), 2.8)
    n0 = next(n for n in range(1, 21) if l - 2.1 / n ** 0.9 >= l - e)
    F.line(X(n0), Y(0), X(n0), Y(l + 0.3), w=0.6, dash='3 3'); F.m(X(n0), Y(0) + 18, 'n_0', 13)
    F.m(X(20.6) + 4, Y(l) + 4, 'ℓ = sup', 12, anchor='start'); F.m(X(20.6) + 4, Y(l - e) + 6, 'ℓ − ε', 12, anchor='start')
    return F

@fig
def nepero():
    F = Fig('nepero', 560, 220, 'La successione di Nepero', 'I valori (1+1/n)^n per n da 1 a 12 crescono fra 2 e 3, sotto la retta tratteggiata di quota e.')
    ox, oy, sx, sy = 50, 195, 36, 160
    X = lambda v: ox + v * sx; Y = lambda v: oy - (v - 2) * sy
    F.line(X(0), Y(2), X(13.3), Y(2), w=0.9, arrow=True); F.line(X(0), Y(2), X(0), Y(3.15), w=0.9, arrow=True)
    F.m(X(13.3), Y(2) + 20, 'n', 14)
    for v, l in [(2, '2'), (2.5, '2,5'), (3, '3')]:
        F.line(X(0) - 4, Y(v), X(0) + 4, Y(v), w=0.8); F.text(X(0) - 9, Y(v) + 4, l, 12, anchor='end')
    for n in (1, 5, 10): F.line(X(n), Y(2) - 4, X(n), Y(2) + 4, w=0.8); F.text(X(n), Y(2) + 18, str(n), 12)
    F.line(X(0), Y(exp(1)), X(13), Y(exp(1)), w=0.8, dash='4 3'); F.m(X(13) + 4, Y(exp(1)) + 4, 'e', 14, anchor='start')
    F.line(X(0), Y(3), X(13), Y(3), w=0.6, dash='2 3', color=MID)
    for n in range(1, 13): F.dot(X(n), Y((1 + 1 / n) ** n), 3)
    return F

# ---------------------------------------------------------------- capitolo 9
@fig
def geometrica():
    F = Fig('geometrica', 620, 210, 'Confronto con una progressione geometrica', 'A sinistra punti sopra la curva C q^n con q>1; a destra punti sotto la curva C q^n con q<1.')
    X, Y = F.axes(40, 180, -0.3, 12, -0.2, 5.2, 21, 30, 'n', '')
    F.plot(X, Y, lambda t: 0.4 * 1.25 ** t, 0, 11.5, w=1.0, dash='5 3')
    for n in range(1, 12): F.dot(X(n), Y(0.4 * 1.25 ** n * (1.15 + 0.25 * sin(2 * n))), 2.8)
    F.m(X(11.5), Y(0.4 * 1.25 ** 11.5) + 22, 'C q^n', 12, anchor='start'); F.m(X(1), 22, 'q > 1', 13, anchor='start')
    X, Y = F.axes(350, 180, -0.3, 12, -0.2, 5.2, 21, 30, 'n', '')
    F.plot(X, Y, lambda t: 4.8 * 0.75 ** t, 0, 11.5, w=1.0, dash='5 3')
    for n in range(1, 12): F.dot(X(n), Y(4.8 * 0.75 ** n * (0.7 - 0.2 * sin(2 * n))), 2.8)
    F.m(X(2.6), Y(4.8 * 0.75 ** 2.6) - 6, 'C q^n', 12, anchor='start'); F.m(X(6), 22, 'q < 1', 13, anchor='start')
    return F

# ---------------------------------------------------------------- capitolo 10
@fig
def accumulazione():
    F = Fig('accumulazione', 560, 105, 'Punto di accumulazione e punto isolato', 'Sulla retta l’insieme D = (0,1] unito a {2}; intorni di 0 e di 2 tratteggiati.')
    y = 50; X = lambda v: 70 + 190 * v
    F.line(20, y, 540, y, w=0.9, arrow=True)
    F.line(X(0), y, X(1), y, w=4, color='#777'); opendot(F, X(0), y, 4); F.dot(X(1), y, 4); F.dot(X(2), y, 4)
    for c in (0, 2):
        d = 0.22; F.path(f'M{X(c-d):.1f},{y-14} L{X(c-d):.1f},{y+14}', sw=0.8, dash='3 2'); F.path(f'M{X(c+d):.1f},{y-14} L{X(c+d):.1f},{y+14}', sw=0.8, dash='3 2')
    F.m(X(0), y + 30, '0', 13); F.m(X(1), y + 30, '1', 13); F.m(X(2), y + 30, '2', 13)
    F.text(X(0), y - 22, 'di accumulazione', 11, italic=True); F.text(X(2), y - 22, 'isolato', 11, italic=True)
    F.m(X(0.5), y - 12, 'D', 13)
    return F

@fig
def epsilon_delta():
    F = Fig('epsilon-delta', 520, 290, 'Epsilon e delta', 'Il grafico di una funzione vicino a x0 con un buco; striscia orizzontale grigia fra ℓ−ε e ℓ+ε, striscia verticale fra x0−δ e x0+δ.')
    X, Y = F.axes(50, 255, -0.2, 6.2, -0.2, 5.2, 72, 48, 'x', 'y')
    f = lambda t: 1.2 + 0.55 * t + 0.12 * sin(2 * t)
    x0, d, e = 3.0, 0.62, 0.45; l = f(x0)
    F.rect(X(0), Y(l + e), X(6) - X(0), Y(l - e) - Y(l + e), fill=GREY, stroke='none')
    F.rect(X(x0 - d), Y(l + e), X(x0 + d) - X(x0 - d), Y(l - e) - Y(l + e), fill='none', sw=0.8)
    for xx in (x0 - d, x0 + d): F.line(X(xx), Y(0), X(xx), Y(5), w=0.6, dash='3 3')
    F.plot(X, Y, f, 0.2, 5.9, w=1.5)
    opendot(F, X(x0), Y(l), 3.5); F.dot(X(x0), Y(l + 1.3), 3)
    F.line(X(0), Y(l), X(x0), Y(l), w=0.5, dash='2 2', color=MID)
    F.m(X(0) - 8, Y(l) + 4, 'ℓ', 13, anchor='end'); F.m(X(0) - 8, Y(l + e) + 4, 'ℓ + ε', 12, anchor='end'); F.m(X(0) - 8, Y(l - e) + 4, 'ℓ − ε', 12, anchor='end')
    F.m(X(x0), Y(0) + 18, 'x_0', 13); F.m(X(x0 - d), Y(0) + 18, 'x_0 − δ', 11); F.m(X(x0 + d), Y(0) + 18, 'x_0 + δ', 11)
    F.text(X(x0) + 10, Y(l + 1.3) + 4, 'f(x₀): non conta', 11, anchor='start', italic=True)
    return F

@fig
def composizione_cont():
    F = Fig('composizione-cont', 600, 170, 'La catena delle tolleranze', 'Tre rette verticali: un intervallo di raggio δ2 attorno a x0 è mandato da f dentro quello di raggio δ1 attorno a f(x0), che g manda dentro quello di raggio ε.')
    cols = [(90, 'x_0', 'δ_2', 28), (300, 'f(x_0)', 'δ_1', 42), (510, 'g(f(x_0))', 'ε', 36)]
    for x, lab, r, h in cols:
        F.line(x, 20, x, 150, w=0.8)
        F.rect(x - 7, 85 - h, 14, 2 * h, fill=GREY, sw=0.8)
        F.dot(x, 85); F.m(x + 16, 90, lab, 13, anchor='start'); F.m(x - 14, 85 - h / 2 + 4, r, 12, anchor='end')
    F.arrow(110, 42, 280, 42, bend=-0.25, w=0.9); F.m(195, 14, 'f', 14)
    F.arrow(320, 42, 490, 42, bend=-0.25, w=0.9); F.m(405, 14, 'g', 14)
    F.text(300, 165, 'la sfida ε su g diventa la sfida δ₁ su f', 12, italic=True)
    return F

# ---------------------------------------------------------------- capitolo 11
@fig
def seno_x_tan():
    F = Fig('seno-x-tan', 620, 280, 'sin x ≤ x ≤ tan x', 'A sinistra la corda PP’ più corta dell’arco. A destra il settore circolare grigio dentro il triangolo OSQ.')
    R = 150; x = 0.62
    ox, oy = 50, 140
    px, py = ox + R * cos(x), oy - R * sin(x); qy = oy + R * sin(x)
    F.path(f'M{px:.2f},{py:.2f} A{R},{R} 0 0 1 {px:.2f},{qy:.2f}', sw=W_BOLD)
    F.line(px, py, px, qy, w=1.2, dash='5 3')
    F.line(ox, oy, px, py, w=0.7); F.line(ox, oy, px, qy, w=0.7); F.line(ox - 10, oy, ox + R + 20, oy, w=0.7, color=MID)
    F.dot(ox, oy); F.dot(px, py); F.dot(px, qy)
    F.m(ox - 8, oy + 4, 'O', 13, anchor='end'); F.m(px + 4, py - 8, 'P', 13); F.m(px + 4, qy + 18, 'P′', 13)
    F.m(px - 10, oy - 6, '2 sin x', 12, anchor='end'); F.m(ox + R + 14, oy - 30, 'arco 2x', 12, anchor='start')
    ox = 340
    px, py = ox + R * cos(x), oy - R * sin(x); sx, qy2 = ox + R, oy - R * tan(x)
    F.path(f'M{ox},{oy} L{sx},{oy} A{R},{R} 0 0 0 {px:.2f},{py:.2f} Z', fill=GREY, stroke='none')
    F.polygon([(ox, oy), (sx, oy), (sx, qy2)], sw=1.2)
    F.path(f'M{sx},{oy} A{R},{R} 0 0 0 {ox + R*cos(1.3):.2f},{oy - R*sin(1.3):.2f}', sw=0.7, stroke=MID)
    F.line(ox, oy, px, py, w=0.7)
    F.dot(px, py); F.dot(sx, qy2); F.dot(sx, oy); F.dot(ox, oy)
    F.m(ox - 8, oy + 4, 'O', 13, anchor='end'); F.m(sx + 8, oy + 4, 'S', 13, anchor='start'); F.m(sx + 8, qy2 + 4, 'Q', 13, anchor='start'); F.m(px - 6, py - 8, 'P', 13)
    F.m(ox + 70, oy + 30, 'settore x/2 ≤ triangolo (tan x)/2', 12)
    return F

@fig
def gradini():
    F = Fig('gradini', 560, 260, 'La funzione fra due gradini', 'Grafico di (1+1/x)^x per x fra 1 e 9, compreso fra due funzioni a gradini; la retta y=e tratteggiata.')
    ox, oy, sx, sy = 50, 230, 55, 75
    X = lambda v: ox + (v - 0.5) * sx; Y = lambda v: oy - (v - 1.3) * sy
    F.line(X(0.5), Y(1.3), X(9.6), Y(1.3), w=0.9, arrow=True); F.line(X(0.5), Y(1.3), X(0.5), Y(4.2), w=0.9, arrow=True)
    F.m(X(9.6), Y(1.3) + 20, 'x', 14)
    for n in range(1, 10): F.line(X(n), Y(1.3) - 4, X(n), Y(1.3) + 4, w=0.8); F.text(X(n), Y(1.3) + 18, str(n), 12)
    for v, l in [(2, '2'), (3, '3'), (4, '4')]: F.line(X(0.5) - 4, Y(v), X(0.5) + 4, Y(v), w=0.8); F.text(X(0.5) - 9, Y(v) + 4, l, 12, anchor='end')
    F.line(X(0.5), Y(exp(1)), X(9.4), Y(exp(1)), w=0.7, dash='4 3'); F.m(X(9.4) + 4, Y(exp(1)) + 4, 'e', 14, anchor='start')
    for n in range(1, 9):
        lo, hi = (1 + 1 / (n + 1)) ** n, (1 + 1 / n) ** (n + 1)
        F.line(X(n), Y(lo), X(n + 1), Y(lo), w=1.0); F.line(X(n), Y(hi), X(n + 1), Y(hi), w=1.0)
    F.plot(X, Y, lambda t: (1 + 1 / t) ** t, 1, 9, w=1.6)
    return F

# ---------------------------------------------------------------- capitolo 12
@fig
def sottosucc():
    F = Fig('sottosucc', 560, 150, 'Una sottosuccessione', 'I punti (−1)^n per n da 0 a 11; quelli di indice pari sono cerchiati.')
    X, Y = ax(F, 40, 75, -0.3, 12.3, -1.4, 1.4, 40, 45, 'n', 'a_n', yt=[(1, '1'), (-1, '−1')])
    for n in range(12):
        v = (-1) ** n; F.dot(X(n), Y(v), 2.8)
        if n % 2 == 0: F.circle(X(n), Y(v), 8, sw=0.9)
    F.text(X(6), 148, 'cerchiati: a₀, a₂, a₄, … (indici pari)', 12, italic=True)
    return F

@fig
def oscillazione():
    F = Fig('oscillazione', 600, 200, 'Il coseno di 1/x^2 vicino a zero', 'Grafico di cos(1/x^2) per x positivo vicino a 0: oscillazioni sempre più fitte fra −1 e 1, con punti dove vale 1 e punti dove vale 0.')
    X, Y = ax(F, 40, 100, -0.02, 1.25, -1.35, 1.35, 440, 60, yt=[(1, '1'), (-1, '−1')])
    F.plot(X, Y, lambda t: cos(1 / (t * t)), 0.13, 1.2, n=3000, w=0.9)
    for n in range(1, 6):
        a = 1 / sqrt(2 * n * pi); b = 1 / sqrt(2 * n * pi + pi / 2)
        if a > 0.13: F.circle(X(a), Y(1), 4, sw=0.9)
        if b > 0.13: F.rect(X(b) - 3.5, Y(0) - 3.5, 7, 7, fill='white', sw=0.9)
    F.circle(X(0.93), 186, 4, sw=0.9); F.m(X(0.93) + 10, 190, 'a_n', 12, anchor='start'); F.text(X(0.93) + 30, 190, ': vale 1', 12, anchor='start', italic=True)
    F.rect(X(0.55) - 3.5, 182.5, 7, 7, fill='white', sw=0.9); F.m(X(0.55) + 10, 190, 'b_n', 12, anchor='start'); F.text(X(0.55) + 30, 190, ': vale 0', 12, anchor='start', italic=True)
    return F

@fig
def somme_stime():
    F = Fig('somme-stime', 520, 220, 'Stimare una somma', 'Sette colonne di altezza 1/k per k da 6 a 12, comprese fra un rettangolo basso di altezza 1/12 e uno alto di altezza 1/6.')
    ox, oy, cw, sy = 70, 190, 52, 900
    F.line(ox - 10, oy, ox + 7 * cw + 30, oy, w=0.9)
    for i, k in enumerate(range(6, 13)):
        F.rect(ox + i * cw + 4, oy - sy / k, cw - 8, sy / k, fill=GREY, sw=0.8); F.text(ox + i * cw + cw / 2, oy + 18, str(k), 12)
    F.rect(ox, oy - sy / 6, 7 * cw, sy / 6, sw=1.0, dash='5 3'); F.rect(ox, oy - sy / 12, 7 * cw, sy / 12, sw=1.0, dash='2 2')
    F.m(ox - 14, oy - sy / 6 + 4, '1/6', 12, anchor='end'); F.m(ox - 14, oy - sy / 12 + 4, '1/12', 12, anchor='end')
    F.m(ox + 7 * cw + 10, oy + 18, 'k', 13, anchor='start')
    return F

# ---------------------------------------------------------------- capitolo 13
@fig
def potenze_zero():
    F = Fig('potenze-zero', 420, 250, 'Potenze vicino a zero', 'Grafici di x, x^2, x^3 fra 0 e 1: vicino a zero x^3 sta sotto x^2 che sta sotto x.')
    X, Y = ax(F, 50, 220, -0.05, 1.15, -0.05, 1.15, 300, 180, xt=[(1, '1')], yt=[(1, '1')])
    for k, d in [(1, None), (2, '6 3'), (3, '2 3')]: F.plot(X, Y, lambda t, k=k: t ** k, 0, 1.08, w=1.4, dash=d, ymax=1.12)
    F.m(X(0.55), Y(0.55) - 10, 'x', 13); F.m(X(0.72), Y(0.72 ** 2) - 6, 'x^2', 13, anchor='end'); F.m(X(0.8), Y(0.8 ** 3) + 18, 'x^3', 13)
    return F

# ---------------------------------------------------------------- capitolo 14
f14 = lambda t: 0.18 * t * t + 0.4 * sin(t) + 0.8

@fig
def secante():
    F = Fig('secante', 520, 280, 'Dalle secanti alla tangente', 'Una curva, il punto A e tre punti B sempre più vicini; le secanti AB sottili e la tangente in A spessa.')
    X, Y = F.axes(40, 250, -0.2, 5.5, -0.2, 5.3, 85, 44, 'x', 'y')
    F.plot(X, Y, f14, 0.1, 5.3, w=1.5, ymax=5.2)
    x0 = 1.6; d = 0.36 * x0 + 0.4 * cos(x0)
    for h in (2.8, 1.8, 0.9):
        s = (f14(x0 + h) - f14(x0)) / h
        F.line(X(0.2), Y(f14(x0) + s * (0.2 - x0)), X(5.3), Y(f14(x0) + s * (5.3 - x0)), w=0.6, color='#666')
        F.dot(X(x0 + h), Y(f14(x0 + h)), 2.6)
    F.line(X(0.2), Y(f14(x0) + d * (0.2 - x0)), X(5.3), Y(f14(x0) + d * (5.3 - x0)), w=W_BOLD)
    F.dot(X(x0), Y(f14(x0)), 3.2); F.m(X(x0) - 4, Y(f14(x0)) + 20, 'A', 13)
    F.m(X(x0 + 2.8) + 10, Y(f14(x0 + 2.8)) + 4, 'B', 13, anchor='start')
    return F

@fig
def differenziale():
    F = Fig('differenziale', 520, 290, 'Le tre parti di f(x0+h)', 'Curva e tangente in x0; sulla verticale x0+h i punti A sull’asse, B alla quota f(x0), C sulla tangente, D sulla curva.')
    X, Y = F.axes(40, 255, -0.2, 5.5, -0.2, 5.3, 85, 44, 'x', 'y')
    F.plot(X, Y, f14, 0.1, 5.3, w=1.5, ymax=5.2)
    x0 = 1.6; d = 0.36 * x0 + 0.4 * cos(x0); h = 2.4; x1 = x0 + h
    F.line(X(0.2), Y(f14(x0) + d * (0.2 - x0)), X(5.3), Y(f14(x0) + d * (5.3 - x0)), w=1.0)
    F.line(X(x0), Y(f14(x0)), X(x1), Y(f14(x0)), w=0.6, dash='3 3')
    F.line(X(x0), Y(0), X(x0), Y(f14(x0)), w=0.6, dash='3 3')
    F.line(X(x1), Y(0), X(x1), Y(f14(x1)), w=0.7)
    pts = [('A', 0), ('B', f14(x0)), ('C', f14(x0) + d * h), ('D', f14(x1))]
    for lab, v in pts: F.dot(X(x1), Y(v), 3); F.m(X(x1) + 10, Y(v) + 5, lab, 13, anchor='start')
    F.m(X(x0), Y(0) + 18, 'x_0', 13); F.m(X(x1), Y(0) + 18, 'x_0 + h', 13)
    F.m(X(x1) - 10, Y((pts[1][1] + pts[2][1]) / 2) + 4, 'αh', 12, anchor='end'); F.m(X(x1) - 10, Y((pts[2][1] + pts[3][1]) / 2) + 4, 'o(h)', 12, anchor='end')
    F.m(X(x1) - 10, Y(pts[1][1] / 2) + 4, 'f(x_0)', 12, anchor='end'); F.m(X((x0 + x1) / 2), Y(f14(x0)) + 16, 'h', 12)
    return F

# ---------------------------------------------------------------- capitolo 15
@fig
def taylor_cos():
    F = Fig('taylor-cos', 620, 240, 'Il coseno e i suoi polinomi di Taylor', 'Il grafico di cos x fra −6 e 6 e i polinomi di grado 2, 4, 6 che lo seguono sempre più a lungo vicino a zero.')
    X, Y = ax(F, 310, 120, -6.4, 6.4, -2.1, 2.1, 45, 48, xt=[(-pi, '−π'), (pi, 'π')], yt=[(1, '1'), (-1, '−1')])
    F.plot(X, Y, cos, -6.2, 6.2, w=W_BOLD)
    P = [lambda t: 1 - t * t / 2, lambda t: 1 - t * t / 2 + t ** 4 / 24, lambda t: 1 - t * t / 2 + t ** 4 / 24 - t ** 6 / 720]
    for p, d, lab in zip(P, ['2 3', '6 3', '10 3 2 3'], ['P_2', 'P_4', 'P_6']):
        F.plot(X, Y, p, -6.2, 6.2, w=0.9, dash=d, ymin=-2.05, ymax=2.05)
    F.m(X(2.0) + 6, Y(-1.0) + 4, 'P_2', 12, anchor='start'); F.m(X(3.6) + 8, Y(2.0) + 4, 'P_4', 12, anchor='start'); F.m(X(4.4) + 8, Y(-1.9) + 4, 'P_6', 12, anchor='start')
    return F

# ---------------------------------------------------------------- capitolo 16
@fig
def iperboliche():
    F = Fig('iperboliche', 520, 290, 'Le funzioni iperboliche', 'Grafici di cosh (minimo 1), sinh (crescente per l’origine) e tanh (tratteggiata, fra gli asintoti y=±1).')
    X, Y = ax(F, 260, 150, -3, 3, -3.1, 3.3, 75, 40, xt=[(-2, '−2'), (2, '2')], yt=[(1, '1'), (-1, '−1')])
    for c in (1, -1): F.line(X(-3), Y(c), X(3), Y(c), w=0.5, dash='2 3', color=MID)
    F.plot(X, Y, cosh, -2.9, 2.9, w=1.5, ymax=3.2); F.plot(X, Y, sinh, -2.9, 2.9, w=1.5, ymin=-3.0, ymax=3.2)
    F.plot(X, Y, tanh, -2.9, 2.9, w=1.2, dash='6 3')
    F.m(X(-1.75) - 6, Y(cosh(1.75)), 'cosh', 12, anchor='end'); F.m(X(1.6) + 8, Y(sinh(1.6)) + 6, 'sinh', 12, anchor='start'); F.m(X(2.5), Y(1) + 18, 'tanh', 12)
    return F

@fig
def iperbole():
    F = Fig('iperbole', 620, 260, 'Settore circolare e settore iperbolico', 'A sinistra la circonferenza con un settore grigio di area α/2; a destra il ramo destro dell’iperbole x^2 − y^2 = 1 con il settore grigio da (1,0) al punto (cosh α, sinh α).')
    R = 80; ox, oy = 140, 130; a = 0.9
    F.line(30, oy, 260, oy, w=0.8, arrow=True); F.line(ox, 240, ox, 20, w=0.8, arrow=True)
    px, py = ox + R * cos(a), oy - R * sin(a)
    F.path(f'M{ox},{oy} L{ox+R},{oy} A{R},{R} 0 0 0 {px:.2f},{py:.2f} Z', fill=GREY, stroke='none')
    F.circle(ox, oy, R); F.line(ox, oy, px, py, w=0.8); F.dot(px, py)
    F.m(px + 6, py - 8, '(cos α, sin α)', 12, anchor='start')
    s = 70; ox, oy = 360, 175; al = 1.1
    X = lambda v: ox + v * s; Y = lambda v: oy - v * s
    F.line(X(-0.4), Y(0), X(3.4), Y(0), w=0.8, arrow=True); F.line(X(0), Y(-0.9), X(0), Y(2.3), w=0.8, arrow=True)
    pts = [(X(cosh(t)), Y(sinh(t))) for t in [al * i / 60 for i in range(61)]]
    fillarea(F, [(X(0), Y(0))] + pts)
    F.path('M' + ' L'.join(f'{X(cosh(t)):.2f},{Y(sinh(t)):.2f}' for t in [-0.75 + (1.45 + 0.75) * i / 120 for i in range(121)]), sw=1.4)
    F.line(X(0), Y(0), X(cosh(al)), Y(sinh(al)), w=0.8); F.dot(X(cosh(al)), Y(sinh(al)))
    F.m(X(cosh(al)) + 8, Y(sinh(al)) + 4, '(cosh α, sinh α)', 12, anchor='start'); F.m(X(1) + 4, Y(0) + 18, '1', 12)
    F.m(X(2.1), Y(-0.6), 'x^2 − y^2 = 1', 12)
    return F

if __name__ == '__main__':
    out = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).resolve().parent
    out.mkdir(exist_ok=True); sizes = {}
    for f in FIGS: f().save(out, sizes)
    if len(sys.argv) > 2: Path(sys.argv[2]).write_text(json.dumps(sizes, indent=1))
    print(len(FIGS), 'SVG generati in', out)
