"""Disegni selezionati per Analisi 1 Spark (ottobre 2026).
Derivati dalla biblioteca del volume archiviato, conservata immutata.

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


# ---------------------------------------------------------------- capitolo 4

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
def trasformazioni():
    F = Fig('trasformazioni', 420, 270, 'Da x^2 − 4 al suo valore assoluto',
            'Il grafico di x^2 − 4 tratteggiato sotto l’asse e il grafico di |x^2 − 4| con la parte centrale ribaltata sopra.')
    X, Y = ax(F, 210, 160, -3, 3, -4.6, 5.2, 60, 22, xt=[(-2, '−2'), (2, '2')], yt=[(4, '4'), (-4, '−4')])
    F.plot(X, Y, lambda t: t * t - 4, -2, 2, w=0.8, dash='4 3')
    F.plot(X, Y, lambda t: abs(t * t - 4), -2.95, 2.95, w=1.5, ymax=5.1)
    F.m(X(2.6), Y(5.0), '|x^2 − 4|', 13, anchor='start'); F.m(X(0.9), Y(-3.4), 'x^2 − 4', 12, anchor='start')
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
