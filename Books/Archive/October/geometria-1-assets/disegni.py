"""Disegni del libro Geometria 1 (ottobre 2026).

Genera gli SVG originali a tratto sottile. Copiare accanto a figlib.py nella cartella
geometria-1-assets/ e lanciare:  python3 disegni.py [cartella] [sizes.json]
Poi creare le copie PDF:         swift svg-to-pdf.swift <cartella>
"""
import json, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent))
from figlib import *            # Fig, W, W_THIN, W_BOLD, GREY, MID, INK, cos, sin, pi, hypot

FIGS = []
def fig(f): FIGS.append(f); return f

def vec(F, x1, y1, x2, y2, lab=None, lx=0, ly=0, w=1.3, size=15, dash=None, color=INK):
    F.arrow(x1, y1, x2, y2, w=w, dash=dash, color=color)
    if lab: F.m(x2 + lx, y2 + ly, lab, size)

def axes2(F, ox, oy, L, R, U, D, xl='', yl='', w=0.8):
    F.line(ox - L, oy, ox + R, oy, w=w, color=MID, arrow=True)
    F.line(ox, oy + D, ox, oy - U, w=w, color=MID, arrow=True)
    if xl: F.m(ox + R - 2, oy + 18, xl, 13)
    if yl: F.m(ox - 14, oy - U + 6, yl, 13)

# proiezione obliqua per i disegni nello spazio: (x, y, z) -> pagina
def P3(ox, oy, s=1.0):
    def p(x, y, z):
        return (ox + s * (x - y * 0.6), oy - s * (z - y * 0.45))
    return p

# ---------------------------------------------------------------- capitolo 1
@fig
def distributiva():
    F = Fig('distributiva', 600, 200, 'La proprietà distributiva con i diagrammi di Venn',
            'Due diagrammi con tre cerchi X, Y, Z: a sinistra è grigia la parte di X che sta in Y oppure in Z; a destra sono grigie X∩Y e X∩Z: le zone grigie coincidono.')
    r = 44
    for k, lab in enumerate(['X ∩ (Y ∪ Z)', '(X ∩ Y) ∪ (X ∩ Z)']):
        cx = 150 + 300 * k
        X, Y, Z = (cx, 66), (cx - 30, 116), (cx + 30, 116)
        F.raw(f'<clipPath id="cx{k}"><circle cx="{X[0]}" cy="{X[1]}" r="{r}"/></clipPath>')
        if k == 0:
            F.raw(f'<g clip-path="url(#cx{k})"><circle cx="{Y[0]}" cy="{Y[1]}" r="{r}" fill="{GREY}"/><circle cx="{Z[0]}" cy="{Z[1]}" r="{r}" fill="{GREY}"/></g>')
        else:
            F.raw(f'<circle cx="{Y[0]}" cy="{Y[1]}" r="{r}" fill="{GREY}" clip-path="url(#cx{k})"/>')
            F.raw(f'<circle cx="{Z[0]}" cy="{Z[1]}" r="{r}" fill="{GREY}" clip-path="url(#cx{k})"/>')
        for c in (X, Y, Z): F.circle(*c, r)
        F.m(cx, 16, 'X', 14); F.m(Y[0] - 56, Y[1] + 30, 'Y', 14); F.m(Z[0] + 56, Z[1] + 30, 'Z', 14)
        F.m(cx, 192, lab, 14)
    F.text(300, 110, '=', 22)
    return F

def pane(F, x0, title, nX, nY, arrows, y0=30, H=128, cross=False):
    xa, xb = x0 + 34, x0 + 96; cy = y0 + H / 2
    F.ellipse(xa, cy, 20, H / 2); F.ellipse(xb, cy, 20, H / 2)
    F.m(xa, y0 - 8, 'X', 14); F.m(xb, y0 - 8, 'Y', 14)
    def ys(n): return [cy + (i - (n - 1) / 2) * (H / (n + 0.6)) for i in range(n)]
    px, py = ys(nX), ys(nY)
    for y in px: F.dot(xa, y)
    for y in py: F.dot(xb, y)
    for i, j in arrows: F.arrow(xa, px[i], xb, py[j], shorten=(5, 6), w=0.85)
    F.text(x0 + 65, y0 + H + 24, title, 13, italic=True)

@fig
def funzioni():
    F = Fig('funzioni', 650, 186, 'Funzioni, iniettive, suriettive, biiettive',
            'Cinque diagrammi a frecce: una regola che non è una funzione, una funzione qualsiasi, una iniettiva, una suriettiva, una biiettiva.')
    pane(F, 0, 'non è funzione', 3, 3, [(0, 0), (0, 1), (2, 2)])
    pane(F, 130, 'funzione', 3, 3, [(0, 0), (1, 0), (2, 2)])
    pane(F, 260, 'iniettiva', 3, 4, [(0, 0), (1, 1), (2, 3)])
    pane(F, 390, 'suriettiva', 4, 3, [(0, 0), (1, 1), (2, 1), (3, 2)])
    pane(F, 520, 'biiettiva', 3, 3, [(0, 1), (1, 2), (2, 0)])
    return F

@fig
def grafico():
    F = Fig('grafico', 560, 200, 'Il grafico come sottoinsieme del prodotto cartesiano',
            'Due griglie X per Y: a sinistra ogni colonna contiene esattamente un punto (grafico di una funzione); a destra una colonna ha due punti e una nessuno.')
    for k, (pts, lab) in enumerate([([(0, 1), (1, 3), (2, 1), (3, 0)], 'grafico di una funzione'),
                                    ([(0, 1), (0, 3), (2, 2), (3, 0)], 'non è un grafico')]):
        ox, oy, c = 60 + 290 * k, 160, 34
        for i in range(4):
            for j in range(4): F.circle(ox + i * c, oy - j * c, 2.2, fill='white', stroke=MID, sw=0.7)
        for i, j in pts: F.dot(ox + i * c, oy - j * c, 4.6)
        F.line(ox - 16, oy + 14, ox + 4 * c - 10, oy + 14, w=0.8, arrow=True)
        F.line(ox - 16, oy + 14, ox - 16, oy - 4 * c + 10, w=0.8, arrow=True)
        F.m(ox + 4 * c, oy + 19, 'X', 14); F.m(ox - 30, oy - 4 * c + 16, 'Y', 14)
        F.text(ox + 1.5 * c, 196, lab, 13, italic=True)
        if k == 1:
            F.rect(ox - 10, oy - 3 * c - 10, 20, 3 * c + 20, rx=8, dash='3 3', sw=0.8)
            F.rect(ox + c - 10, oy - 3 * c - 10, 20, 3 * c + 20, rx=8, dash='3 3', sw=0.8)
    return F

@fig
def inversa():
    F = Fig('inversa', 560, 170, 'La funzione inversa di una biiezione',
            'A sinistra una biiezione f da X a Y; a destra le stesse frecce rovesciate formano la funzione inversa da Y a X.')
    ys = [45, 85, 125]; perm = [1, 2, 0]
    for k in range(2):
        xa, xb, cy = 90 + 290 * k, 220 + 290 * k, 85
        F.ellipse(xa, cy, 26, 66); F.ellipse(xb, cy, 26, 66)
        F.m(xa, 12, 'X' if k == 0 else 'Y', 15); F.m(xb, 12, 'Y' if k == 0 else 'X', 15)
        for i, y in enumerate(ys):
            F.dot(xa, y); F.dot(xb, y)
        for i, y in enumerate(ys):
            if k == 0: F.arrow(xa, y, xb, ys[perm[i]], shorten=(6, 7), w=0.9)
            else: F.arrow(xa, ys[perm[i]], xb, y, shorten=(6, 7), w=0.9)
        F.m((xa + xb) / 2, 166, 'f' if k == 0 else 'f^{−1}', 15)
    return F

@fig
def piano_complesso():
    F = Fig('piano-complesso', 600, 260, 'Il piano complesso: modulo, argomento, coniugato',
            'Il numero z = a + ib è il punto (a, b); la sua distanza dall\'origine è il modulo, l\'angolo dal semiasse reale positivo è l\'argomento; il coniugato è il punto simmetrico rispetto all\'asse reale.')
    ox, oy, s = 200, 130, 40
    axes2(F, ox, oy, 150, 330, 115, 115, '`Re`', '`Im`')
    a, b = 3.2, 2.0
    zx, zy = ox + a * s, oy - b * s
    F.line(zx, zy, zx, oy, w=W_THIN, dash='4 3'); F.line(zx, zy, ox, zy, w=W_THIN, dash='4 3')
    F.line(zx, oy, zx, 2 * oy - zy, w=W_THIN, dash='4 3')
    vec(F, ox, oy, zx, zy, w=1.4)
    F.dot(zx, zy, 3.4); F.dot(zx, 2 * oy - zy, 3.4)
    F.m(zx + 18, zy - 2, 'z = a + ib', 15, anchor='start')
    F.m(zx + 18, 2 * oy - zy + 8, 'z', 15, anchor='start'); F.line(zx + 18, 2 * oy - zy - 6, zx + 26, 2 * oy - zy - 6, w=0.9); F.m(zx + 30, 2 * oy - zy + 8, ' = a − ib', 15, anchor='start')
    F.m(zx, oy + 20, 'a', 14); F.m(ox - 14, zy + 5, 'b', 14)
    F.m(ox + a * s / 2 - 10, oy - b * s / 2 - 12, '|z|', 14)
    th = atan2(b, a)
    F.path(f'M{ox + 34},{oy} A34,34 0 0,0 {ox + 34 * cos(th):.1f},{oy - 34 * sin(th):.1f}', sw=0.9)
    F.m(ox + 48, oy - 8, 'θ', 14)
    F.text(470, 245, 'il coniugio è la riflessione sull\'asse reale', 12, italic=True)
    return F

@fig
def somma_prodotto():
    F = Fig('somma-prodotto', 640, 250, 'Somma e prodotto di numeri complessi',
            'A sinistra la somma z + w come diagonale del parallelogramma. A destra il prodotto zw: i moduli si moltiplicano e gli argomenti si sommano.')
    ox, oy, s = 50, 200, 42
    axes2(F, ox, oy, 20, 260, 180, 20, '`Re`', '`Im`')
    z, w = (3.0, 1.0), (1.0, 2.4)
    S = (z[0] + w[0], z[1] + w[1])
    pt = lambda p: (ox + p[0] * s, oy - p[1] * s)
    F.polygon([pt((0, 0)), pt(z), pt(S), pt(w)], fill=GREY, stroke='none')
    F.line(*pt(z), *pt(S), w=W_THIN, dash='4 3'); F.line(*pt(w), *pt(S), w=W_THIN, dash='4 3')
    vec(F, *pt((0, 0)), *pt(z), 'z', 12, 6); vec(F, *pt((0, 0)), *pt(w), 'w', -12, 0)
    vec(F, *pt((0, 0)), *pt(S), 'z + w', 18, -6, w=W_BOLD)
    F.text(160, 245, 'somma: parallelogramma', 13, italic=True)
    # prodotto
    ox, oy, s = 450, 200, 38
    axes2(F, ox, oy, 120, 170, 185, 20, '`Re`', '`Im`')
    def polar(r, t): return (ox + r * s * cos(t), oy - r * s * sin(t))
    tz, tw = 0.35, 0.8; rz, rw = 2.2, 1.6
    vec(F, ox, oy, *polar(rz, tz), 'z', 10, 4)
    vec(F, ox, oy, *polar(rw, tw), 'w', -2, -10)
    vec(F, ox, oy, *polar(rz * rw, tz + tw), 'zw', -14, -6, w=W_BOLD)
    for r, a0, a1, lab in [(1.0, 0, tz, 'θ'), (1.0, tz, tz + tw, 'φ')]:
        x0, y0 = polar(r, a0); x1, y1 = polar(r, a1)
        F.path(f'M{x0:.1f},{y0:.1f} A{r * s:.1f},{r * s:.1f} 0 0,0 {x1:.1f},{y1:.1f}', sw=0.8)
        xm, ym = polar(r + 0.35, (a0 + a1) / 2); F.m(xm, ym + 5, lab, 13)
    F.text(470, 245, 'prodotto: moduli × , angoli +', 13, italic=True)
    return F

@fig
def quadranti():
    F = Fig('quadranti', 360, 230, 'La tangente non basta per l\'argomento',
            'I punti 1 + i e −1 − i stanno sulla stessa retta per l\'origine e hanno lo stesso rapporto b/a, ma i loro argomenti differiscono di π.')
    ox, oy, s = 180, 115, 60
    axes2(F, ox, oy, 150, 150, 100, 100, '`Re`', '`Im`')
    F.line(ox - 1.55 * s, oy + 1.55 * s, ox + 1.55 * s, oy - 1.55 * s, w=W_THIN, color=MID, dash='5 4')
    for (a, b, lab, dx, dy) in [(1, 1, '1 + i', 30, -4), (-1, -1, '−1 − i', -34, 14)]:
        vec(F, ox, oy, ox + a * s, oy - b * s, w=1.3); F.dot(ox + a * s, oy - b * s, 3.2)
        F.m(ox + a * s + dx, oy - b * s + dy, lab, 14)
    F.path(f'M{ox + 26},{oy} A26,26 0 0,0 {ox + 26 * cos(pi / 4):.1f},{oy - 26 * sin(pi / 4):.1f}', sw=0.8)
    F.m(ox + 48, oy - 8, 'π/4', 12)
    F.path(f'M{ox + 40},{oy} A40,40 0 1,0 {ox + 40 * cos(5 * pi / 4):.1f},{oy - 40 * sin(5 * pi / 4):.1f}', sw=0.8, dash='3 3')
    F.m(ox - 30, oy - 48, '5π/4', 12)
    return F

@fig
def radici():
    F = Fig('radici', 600, 250, 'Radici terze di −8 e radici seste di 1',
            'A sinistra le tre soluzioni di z^3 = −8 sulla circonferenza di raggio 2, vertici di un triangolo equilatero. A destra le sei soluzioni di z^6 = 1, vertici di un esagono regolare sulla circonferenza unitaria.')
    for k, (n, R, th0, labs, title) in enumerate([
        (3, 2, pi / 3, ['1 + i√3', '−2', '1 − i√3'], 'z³ = −8'),
        (6, 1, 0, ['1', 'z₁', 'z₂', '−1', 'z₄', 'z₅'], 'z⁶ = 1')]):
        ox, oy = 150 + 300 * k, 120
        s = 44 if k == 0 else 80
        axes2(F, ox, oy, 115, 115, 105, 105)
        F.circle(ox, oy, R * s, stroke=MID, sw=0.8, dash='4 3')
        pts = [(ox + R * s * cos(th0 + 2 * pi * j / n), oy - R * s * sin(th0 + 2 * pi * j / n)) for j in range(n)]
        F.polygon(pts, fill=GREY, sw=0.9)
        for j, (x, y) in enumerate(pts):
            F.dot(x, y, 3.6)
            t = th0 + 2 * pi * j / n
            real = abs(sin(t)) < 1e-9
            F.m(x + (0 if real else 26 * cos(t) + (8 if k == 0 else 0)), y + (-12 if real else -22 * sin(t) + 5), labs[j], 13)
        F.m(ox, 246, title, 14)
    return F

# ---------------------------------------------------------------- capitolo 4
@fig
def fattori():
    F = Fig('fattori', 620, 110, 'Staccare una radice alla volta',
            'Un polinomio di grado n+1: ogni radice trovata stacca un fattore lineare e lascia un polinomio di grado più basso, finché resta solo la costante a.')
    items = [('P', 'grado n + 1', 46), ('(z − z₁) Q', 'Q di grado n', 108), ('(z − z₁)(z − z₂) Q₂', 'Q₂ di grado n − 1', 160), ('a(z − z₁) ⋯ (z − z_{n+1})', 'tutto lineare', 190)]
    x = 10; prev = None
    for k, (t, sub, w) in enumerate(items):
        if prev is not None:
            F.arrow(prev + 4, 45, x - 4, 45, w=0.9)
        F.rect(x, 25, w, 40, rx=6, fill=GREY if k == 0 else 'white')
        F.m(x + w / 2, 51, t, 14); F.text(x + w / 2, 88, sub, 12, italic=True)
        prev = x + w; x = x + w + 30
    return F

@fig
def coniugate():
    F = Fig('coniugate', 360, 250, 'Le radici di un polinomio reale sono simmetriche',
            'Radici di un polinomio a coefficienti reali nel piano complesso: le radici reali stanno sull\'asse, le altre a coppie simmetriche rispetto all\'asse reale, con la stessa molteplicità.')
    ox, oy, s = 170, 125, 46
    axes2(F, ox, oy, 150, 170, 110, 110, '`Re`', '`Im`')
    pts = [(1, 0, '2'), (-2, 0, '1'), (-1, 2, '3'), (-1, -2, '3'), (2, 1, '1'), (2, -1, '1')]
    for a, b, m in pts:
        x, y = ox + a * s, oy - b * s
        F.dot(x, y, 4.2); F.text(x + 11, y - 8, m, 11, italic=True)
    for a, b in [(-1, 2), (2, 1)]:
        F.line(ox + a * s, oy - b * s + 7, ox + a * s, oy + b * s - 7, w=W_THIN, dash='3 3', color=MID)
    F.text(180, 245, 'i numeretti sono le molteplicità', 12, italic=True)
    return F

# ---------------------------------------------------------------- capitolo 5
@fig
def parallelogramma():
    F = Fig('parallelogramma', 620, 220, 'Somma di vettori e prodotto per scalare',
            'A sinistra la regola del parallelogramma per u + v, che non cambia scambiando u e v. A destra un vettore v e i suoi multipli 2v, v/2 e −v sulla stessa retta.')
    O = (40, 180); u = (190, -30); v = (70, -120)
    A = (O[0] + u[0], O[1] + u[1]); B = (O[0] + v[0], O[1] + v[1]); S = (A[0] + v[0], A[1] + v[1])
    F.polygon([O, A, S, B], fill=GREY, stroke='none')
    F.line(*A, *S, w=W_THIN, dash='4 3'); F.line(*B, *S, w=W_THIN, dash='4 3')
    vec(F, *O, *A, 'u', 4, 18); vec(F, *O, *B, 'v', -14, 0)
    vec(F, *O, *S, 'u + v = v + u', 10, -12, w=W_BOLD)
    # multipli
    O2 = (470, 120); d = (60, -36)
    F.line(O2[0] - 2.2 * d[0], O2[1] - 2.2 * d[1], O2[0] + 2.5 * d[0], O2[1] + 2.5 * d[1], w=W_THIN, color=MID, dash='5 4')
    vec(F, *O2, O2[0] + 2 * d[0], O2[1] + 2 * d[1], '2v', 10, -6, w=1.0)
    vec(F, *O2, O2[0] + d[0], O2[1] + d[1], 'v', -4, -14, w=W_BOLD)
    vec(F, O2[0], O2[1] + 26, O2[0] + d[0] / 2, O2[1] + 26 + d[1] / 2, 'v/2', 18, 12, w=1.0)
    vec(F, *O2, O2[0] - d[0], O2[1] - d[1], '−v', -8, 20, w=1.0)
    F.dot(*O2, 2.8)
    return F

@fig
def coordinate_oblique():
    F = Fig('coordinate-oblique', 460, 250, 'Coordinate rispetto a un riferimento obliquo',
            'Due vettori v1 e v2 non allineati e la griglia obliqua che generano; il vettore OP si scompone come 2 v1 + 1,5 v2 seguendo il parallelogramma.')
    O = (90, 200); v1 = (80, 0); v2 = (40, -70)
    for i in range(-1, 5):
        F.line(O[0] + i * v1[0] - 0.5 * v2[0], O[1] - 0.5 * v2[1], O[0] + i * v1[0] + 2.5 * v2[0], O[1] + 2.5 * v2[1], w=0.5, color='#c4c4c4')
    for j in range(0, 3):
        F.line(O[0] - 0.8 * v1[0] + j * v2[0], O[1] + j * v2[1], O[0] + 4.2 * v1[0] + j * v2[0], O[1] + j * v2[1], w=0.5, color='#c4c4c4')
    a, b = 2, 1.5
    A = (O[0] + a * v1[0], O[1]); Pp = (A[0] + b * v2[0], A[1] + b * v2[1])
    F.line(*A, *Pp, w=W_THIN, dash='4 3'); F.line(O[0] + b * v2[0], O[1] + b * v2[1], *Pp, w=W_THIN, dash='4 3')
    vec(F, *O, O[0] + v1[0], O[1], 'v₁', -4, 20); vec(F, *O, O[0] + v2[0], O[1] + v2[1], 'v₂', -16, 0)
    vec(F, *O, *Pp, None, w=W_BOLD); F.dot(*Pp, 3.4); F.m(Pp[0] + 14, Pp[1] - 6, 'P', 15)
    F.m(O[0] - 12, O[1] + 12, 'O', 14)
    F.text(330, 240, 'OP = 2 v₁ + 1,5 v₂', 14, italic=True)
    return F

@fig
def somma_funzioni():
    F = Fig('somma-funzioni', 520, 240, 'Somma di funzioni punto per punto',
            'I grafici di f, g e f + g: in ogni punto x il valore di f + g è la somma dei valori; in x = 3 si legge 5 + 7 = 12.')
    X, Y = F.axes(50, 210, 0, 5.6, 0, 13.5, 80, 14.5, 'x', 'y', ticks=[1, 2, 3, 4, 5], yticks=[5, 7, 12])
    f = lambda t: 2 + t; g = lambda t: 7 - 0.4 * (t - 3) ** 2; h = lambda t: f(t) + g(t)
    F.plot(X, Y, f, 0, 5.4, w=1.0); F.plot(X, Y, g, 0, 5.4, w=1.0, dash='5 4'); F.plot(X, Y, h, 0, 5.4, w=W_BOLD)
    for v in (f(3), g(3), h(3)): F.dot(X(3), Y(v), 3.2)
    F.line(X(3), Y(0), X(3), Y(12), w=W_THIN, color=MID, dash='3 3')
    F.m(X(5.4) + 14, Y(f(5.4)) + 4, 'f', 14); F.m(X(5.4) + 14, Y(g(5.4)) + 4, 'g', 14); F.m(X(5.4) + 22, Y(h(5.4)) + 4, 'f + g', 14)
    return F

# ---------------------------------------------------------------- capitolo 6
@fig
def rette():
    F = Fig('rette', 600, 230, 'Una retta per l\'origine è un sottospazio, una retta spostata no',
            'A sinistra una retta per l\'origine: somme e multipli dei suoi vettori restano sulla retta. A destra una retta che non passa per l\'origine: la somma di due suoi vettori esce dalla retta e il vettore nullo non vi appartiene.')
    ox, oy = 150, 125
    axes2(F, ox, oy, 120, 130, 100, 95)
    d = (1, -0.6)
    F.line(ox - 120 * d[0], oy - 120 * d[1], ox + 130 * d[0], oy + 130 * d[1], w=W_BOLD)
    vec(F, ox, oy, ox + 50 * d[0], oy + 50 * d[1], 'u', 0, -12, w=1.1)
    vec(F, ox, oy, ox + 100 * d[0], oy + 100 * d[1], 'u + u′', 18, -14, w=1.1)
    F.dot(ox, oy, 3.4); F.text(150, 222, 'sottospazio', 13, italic=True)
    ox, oy = 450, 150
    axes2(F, ox, oy, 120, 130, 125, 70)
    # retta y = 60 - 0.5 x (in pixel relativi)
    yl = lambda x: -60 + 0.45 * x
    F.line(ox - 110, oy + yl(-110), ox + 130, oy + yl(130), w=W_BOLD)
    p, q = (-40, yl(-40)), (60, yl(60))
    vec(F, ox, oy, ox + p[0], oy + p[1], 'p', -10, -6, w=1.1)
    vec(F, ox, oy, ox + q[0], oy + q[1], 'q', 6, -10, w=1.1)
    s = (p[0] + q[0], p[1] + q[1])
    F.line(ox + p[0], oy + p[1], ox + s[0], oy + s[1], w=W_THIN, dash='4 3'); F.line(ox + q[0], oy + q[1], ox + s[0], oy + s[1], w=W_THIN, dash='4 3')
    vec(F, ox, oy, ox + s[0], oy + s[1], 'p + q', 30, 4, w=1.1)
    F.circle(ox, oy, 4, fill='white'); F.text(450, 222, 'non è un sottospazio', 13, italic=True)
    return F

def box3(F, p, a=2.2, fill='none'):
    c = [p(0, 0, 0), p(a, 0, 0), p(a, a, 0), p(0, a, 0)]
    return c

@fig
def sottospazi_r3():
    F = Fig('sottospazi-r3', 640, 190, 'I sottospazi di R^3',
            'Quattro disegni: il solo vettore nullo, una retta per l\'origine, un piano per l\'origine, tutto lo spazio.')
    titles = ['{0}', 'retta per 0', 'piano per 0', 'tutto R³']
    for k in range(4):
        ox, oy = 80 + 160 * k, 105; p = P3(ox, oy, 30)
        for e in [(2.2, 0, 0), (0, 2.6, 0), (0, 0, 2.3)]:
            F.line(*p(0, 0, 0), *p(*e), w=0.7, color=MID, arrow=True)
        if k == 1:
            F.line(*p(-1.6, -1.6, -1.0), *p(1.8, 1.8, 1.1), w=W_BOLD)
        if k == 2:
            pts = [p(-1.6, -1.6, 0.4), p(1.9, -1.6, -0.5), p(1.9, 2.0, -0.5), p(-1.6, 2.0, 0.4)]
            F.polygon(pts, fill=GREY, sw=0.9)
            for e in [(2.2, 0, 0), (0, 2.6, 0), (0, 0, 2.3)]:
                F.line(*p(0, 0, 0), *p(*e), w=0.7, color=MID, arrow=True)
        if k == 3:
            q = [(-1.3, -1.3, -1.3), (1.6, -1.3, -1.3), (1.6, 1.6, -1.3), (-1.3, 1.6, -1.3)]
            top = [(x, y, 1.6) for x, y, _ in q]
            F.polygon([p(*c) for c in q], fill=GREY, sw=0.6, stroke=MID)
            F.polygon([p(*c) for c in top], fill=GREY, sw=0.6, stroke=MID)
            for a, b in zip(q, top): F.line(*p(*a), *p(*b), w=0.6, color=MID)
            F.text(ox + 4, oy - 4, '', 12)
        F.dot(*p(0, 0, 0), 3.4)
        F.text(ox, 180, titles[k], 13, italic=True)
    return F

@fig
def unione():
    F = Fig('unione', 330, 250, 'L\'unione di due rette non è un sottospazio',
            'Due rette U e W per l\'origine; u sta su U, w su W, ma u + w sta su una terza direzione e non appartiene all\'unione.')
    ox, oy = 140, 150
    for (dx, dy, lab) in [(1, -0.25, 'U'), (0.35, -1, 'W')]:
        L = hypot(dx, dy); dx, dy = dx / L, dy / L
        F.line(ox - 120 * dx, oy - 120 * dy, ox + 140 * dx, oy + 140 * dy, w=1.3)
        F.m(ox + 150 * dx + 6, oy + 150 * dy + 4, lab, 15)
    u = (90, -22.5); w = (32, -92)
    s = (u[0] + w[0], u[1] + w[1])
    vec(F, ox, oy, ox + u[0], oy + u[1], 'u', 6, 16, w=1.2); vec(F, ox, oy, ox + w[0], oy + w[1], 'w', -14, 4, w=1.2)
    F.line(ox + u[0], oy + u[1], ox + s[0], oy + s[1], w=W_THIN, dash='4 3'); F.line(ox + w[0], oy + w[1], ox + s[0], oy + s[1], w=W_THIN, dash='4 3')
    vec(F, ox, oy, ox + s[0], oy + s[1], 'u + w', 26, 0, w=W_BOLD)
    F.dot(ox, oy, 3)
    return F

# ---------------------------------------------------------------- capitolo 7
@fig
def span():
    F = Fig('span', 640, 200, 'Che cosa genera una famiglia di vettori',
            'Tre disegni: un vettore non nullo genera una retta; due vettori non paralleli generano un piano; tre vettori complanari generano soltanto il loro piano.')
    # 1: retta
    ox, oy = 90, 110
    F.line(ox - 70, oy + 45, ox + 80, oy - 51, w=W_BOLD, color=MID)
    vec(F, ox, oy, ox + 40, oy - 25.6, 'v', 4, -10, w=1.5); F.dot(ox, oy, 3)
    F.text(90, 190, 'span(v): una retta', 13, italic=True)
    # 2: piano
    ox, oy = 320, 105; p = P3(ox, oy, 40)
    F.polygon([p(-1.5, -1.5, 0), p(2, -1.5, 0), p(2, 2, 0), p(-1.5, 2, 0)], fill=GREY, sw=0.8)
    vec(F, *p(0, 0, 0), *p(1.4, 0, 0), 'u', 4, 16, w=1.5); vec(F, *p(0, 0, 0), *p(0, 1.6, 0), 'v', -12, -2, w=1.5)
    F.dot(*p(0, 0, 0), 3); F.text(320, 190, 'span(u, v): un piano', 13, italic=True)
    # 3: tre complanari
    ox, oy = 535, 105; p = P3(ox, oy, 36)
    F.polygon([p(-1.3, -1.2, 0), p(1.7, -1.2, 0), p(1.7, 1.7, 0), p(-1.3, 1.7, 0)], fill=GREY, sw=0.8)
    vec(F, *p(0, 0, 0), *p(1.4, 0, 0), 'u', 4, 16, w=1.5); vec(F, *p(0, 0, 0), *p(0, 1.6, 0), 'v', -12, -2, w=1.5)
    vec(F, *p(0, 0, 0), *p(1.2, 1.4, 0), 'w', 12, -2, w=1.5)
    F.line(*p(0, 0, 0), *p(0, 0, 1.9), w=0.7, color=MID, dash='4 3')
    F.dot(*p(0, 0, 0), 3); F.text(540, 190, 'u, v, w complanari: ancora il piano', 13, italic=True)
    return F

@fig
def coordinate_basi():
    F = Fig('coordinate-basi', 440, 170, 'Lo stesso vettore in due basi',
            'Il vettore x = (3, 1). A sinistra nella base canonica ha coordinate (3, 1). A destra nella base v1 = (1, 1), v2 = (1, −1) ha coordinate (2, 1), perché x = 2 v1 + v2.')
    for k in range(2):
        ox, oy, s = 30 + 220 * k, 95, 36
        axes2(F, ox, oy, 20, 170, 75, 50)
        x = (ox + 3 * s, oy - 1 * s)
        if k == 0:
            F.line(ox + 3 * s, oy, *x, w=W_THIN, dash='4 3')
            vec(F, ox, oy, ox + s, oy, 'e₁', 0, 18, w=1.1); vec(F, ox, oy, ox, oy - s, 'e₂', -14, 4, w=1.1)
            F.m(ox + 80, 164, '[x]_E = (3, 1)', 14)
        else:
            v1 = (s, -s); v2 = (s, s)
            A = (ox + 2 * v1[0], oy + 2 * v1[1])
            F.line(*A, *x, w=W_THIN, dash='4 3')
            vec(F, ox, oy, ox + v1[0], oy + v1[1], 'v₁', -12, -2, w=1.1); vec(F, ox, oy, ox + v2[0], oy + v2[1], 'v₂', 14, 8, w=1.1)
            F.line(ox, oy, *A, w=W_THIN, color=MID, dash='2 3')
            F.m(ox + 80, 164, '[x]_B = (2, 1)', 14)
        vec(F, ox, oy, *x, 'x', 12, 0, w=W_BOLD); F.dot(*x, 3)
    return F

@fig
def scambio():
    F = Fig('scambio', 560, 200, 'Il lemma di scambio',
            'Righe di caselle: una base u1, ..., u4; a ogni passo un vettore w della famiglia indipendente entra al posto di un u, e si ottiene ancora una base.')
    rows = [['u₁', 'u₂', 'u₃', 'u₄'], ['w₁', 'u₂', 'u₃', 'u₄'], ['w₁', 'u₂', 'w₂', 'u₄'], ['w₁', 'w₃', 'w₂', 'u₄']]
    for r, row in enumerate(rows):
        y = 20 + r * 44
        for c, t in enumerate(row):
            x = 150 + c * 60
            F.rect(x, y, 48, 32, rx=4, fill=GREY if t[0] == 'w' else 'white')
            F.m(x + 24, y + 22, t, 15)
        F.text(130, y + 22, ['base iniziale', 'entra w₁', 'entra w₂', 'entra w₃'][r], 12, anchor='end', italic=True)
        F.text(410, y + 22, 'ancora una base', 12, anchor='start', italic=True)
    for r, c in [(1, 0), (2, 2), (3, 1)]:
        F.arrow(174 + c * 60, 20 + r * 44 - 13, 174 + c * 60, 20 + r * 44 - 1, w=0.9)
    return F

@fig
def contare():
    F = Fig('contare', 440, 104, 'Indipendenti al più n, generatori almeno n',
            'Una scala dei numeri di vettori: le famiglie indipendenti stanno a sinistra di n, quelle di generatori a destra; le basi stanno esattamente in n.')
    y = 50; x0, dx = 30, 50
    F.line(x0 - 20, y, x0 + 8 * dx, y, w=0.9, arrow=True)
    for k in range(8):
        lab = ['0', '1', '2', '…', 'n', '…', 'n+1', ''][k]
        F.line(x0 + k * dx, y - 5, x0 + k * dx, y + 5, w=0.8)
        if lab: F.m(x0 + k * dx, y + 22, lab, 14)
    F.rect(x0 - 10, y - 38, 4 * dx + 20, 22, rx=11, fill=GREY, stroke='none')
    F.text(x0 + 2 * dx, y - 22, 'indipendenti', 13, italic=True)
    F.rect(x0 + 4 * dx - 10, y + 30, 3.8 * dx, 22, rx=11, fill=GREY, stroke='none')
    F.text(x0 + 5.8 * dx, y + 46, 'generatori', 13, italic=True)
    F.circle(x0 + 4 * dx, y, 8, sw=W_BOLD)
    F.text(x0 + 4 * dx + 14, y - 12, 'basi', 13, italic=True, anchor='start')
    return F

@fig
def polinomi01():
    F = Fig('polinomi01', 330, 122, 'Polinomi che si annullano in 0 e in 1',
            'I grafici di x(x−1) e x^2(x−1), base del sottospazio dei polinomi di grado al più 3 che si annullano in 0 e in 1; passano entrambi per 0 e 1.')
    X, Y = F.axes(100, 76, -0.55, 1.6, -0.55, 1.2, 120, 48, 'x', 'y', ticks=[1])
    F.plot(X, Y, lambda t: t * (t - 1), -0.5, 1.5, w=1.3)
    F.plot(X, Y, lambda t: t * t * (t - 1), -0.5, 1.45, w=1.3, dash='5 4')
    F.dot(X(0), Y(0), 3.4); F.dot(X(1), Y(0), 3.4)
    F.m(X(-0.5) - 4, Y(0.75) - 4, 'x(x − 1)', 13, anchor='start')
    F.m(X(1.45) + 6, Y(1.45 * 1.45 * 0.45) + 14, 'x²(x − 1)', 13, anchor='start')
    return F

@fig
def somma_diretta():
    F = Fig('somma-diretta', 620, 220, 'Somma diretta e somma non diretta in R^3',
            'A sinistra un piano U e una retta W che lo incontra solo nell\'origine: R^3 = U ⊕ W. A destra due piani distinti che si tagliano in una retta: la loro somma è R^3 ma non è diretta.')
    ox, oy = 150, 120; p = P3(ox, oy, 34)
    F.line(*p(0, 0, 0), *p(-0.35, 0.15, -1.9), w=W_BOLD, dash='4 3')
    F.polygon([p(-1.8, -1.6, 0), p(2, -1.6, 0), p(2, 2, 0), p(-1.8, 2, 0)], fill=GREY, sw=0.9)
    F.line(*p(0, 0, 0), *p(0.55, -0.25, 2.4), w=W_BOLD)
    F.dot(*p(0, 0, 0), 3.4); F.m(*p(2.3, -1.4, 0.2), 'U', 15); F.m(*p(0.7, -0.3, 2.6), 'W', 15)
    F.text(150, 212, 'U ∩ W = {0}: somma diretta', 13, italic=True)
    ox, oy = 460, 120; p = P3(ox, oy, 34)
    F.polygon([p(-1.8, -1.6, 0), p(2, -1.6, 0), p(2, 2, 0), p(-1.8, 2, 0)], fill=GREY, sw=0.9)
    F.raw(f'<polygon points="' + ' '.join('%.1f,%.1f' % p(*c) for c in [(-1.8, 0, -1.6), (2, 0, -1.6), (2, 0, 1.9), (-1.8, 0, 1.9)]) + f'" fill="white" fill-opacity="0.55" stroke="{INK}" stroke-width="0.9"/>')
    F.line(*p(-1.8, 0, 0), *p(2, 0, 0), w=W_BOLD)
    F.dot(*p(0, 0, 0), 3.4); F.m(*p(2.3, -1.4, 0.2), 'U', 15); F.m(*p(2.25, 0, 1.75), 'W', 15)
    F.text(460, 212, 'U ∩ W è una retta: non diretta', 13, italic=True)
    return F

@fig
def grassmann():
    F = Fig('grassmann', 520, 200, 'La formula di Grassmann',
            'Due ovali U e W che si sovrappongono: nella parte comune la base v1, ..., vq di U ∩ W; nella parte solo di U i vettori u che completano la base di U; nella parte solo di W i vettori w che completano quella di W.')
    F.ellipse(200, 95, 150, 75, fill='none'); F.ellipse(320, 95, 150, 75, fill='none')
    F.raw('<clipPath id="cg"><ellipse cx="200" cy="95" rx="150" ry="75"/></clipPath>')
    F.raw(f'<ellipse cx="320" cy="95" rx="150" ry="75" fill="{GREY}" clip-path="url(#cg)"/>')
    F.ellipse(200, 95, 150, 75); F.ellipse(320, 95, 150, 75)
    F.m(70, 30, 'U', 16); F.m(450, 30, 'W', 16)
    F.m(260, 80, 'v₁, …, v_q', 15); F.text(260, 106, 'base di U ∩ W', 12, italic=True)
    F.m(120, 90, 'u_{q+1}, …, u_n', 14); F.m(400, 90, 'w_{q+1}, …, w_p', 14)
    F.text(260, 192, 'q + (n − q) + (p − q) = n + p − q vettori', 13, italic=True)
    return F

@fig
def decomposizione():
    F = Fig('decomposizione', 360, 220, 'Scomporre un vettore lungo due rette',
            'Due rette U e W per l\'origine in R^2: ogni vettore z si scrive in un solo modo come u + w con u su U e w su W, tracciando le parallele.')
    ox, oy = 110, 160
    d1 = (1, 0.1); d2 = (0.45, -1)
    for d, lab in [(d1, 'U'), (d2, 'W')]:
        L = hypot(*d); dx, dy = d[0] / L, d[1] / L
        F.line(ox - 80 * dx, oy - 80 * dy, ox + 230 * dx, oy + 230 * dy, w=1.1)
        F.m(ox + 240 * dx + 8, oy + 240 * dy + 4, lab, 15)
    u = (140, 14); w = (50, -110)
    z = (ox + u[0] + w[0], oy + u[1] + w[1])
    F.line(ox + u[0], oy + u[1], *z, w=W_THIN, dash='4 3'); F.line(ox + w[0], oy + w[1], *z, w=W_THIN, dash='4 3')
    vec(F, ox, oy, ox + u[0], oy + u[1], 'u', 0, 20, w=1.2); vec(F, ox, oy, ox + w[0], oy + w[1], 'w', -14, 0, w=1.2)
    vec(F, ox, oy, *z, 'z = u + w', 30, -6, w=W_BOLD)
    F.dot(ox, oy, 3)
    return F

# ---------------------------------------------------------------- capitolo 10
@fig
def colonne():
    F = Fig('colonne', 620, 230, 'Risolvere Ax = b vuol dire combinare le colonne',
            'A sinistra le colonne A1 e A2 non sono parallele: b si ottiene come x1 A1 + x2 A2. A destra le colonne sono parallele e generano solo una retta: se b è fuori dalla retta il sistema non ha soluzione.')
    ox, oy, s = 60, 190, 40
    axes2(F, ox, oy, 20, 250, 170, 20)
    A1, A2 = (2, 0.5), (0.5, 1.5); x1, x2 = 1.5, 1.6
    pt = lambda a, b: (ox + a * s, oy - b * s)
    B = (x1 * A1[0] + x2 * A2[0], x1 * A1[1] + x2 * A2[1])
    F.line(*pt(x1 * A1[0], x1 * A1[1]), *pt(*B), w=W_THIN, dash='4 3'); F.line(*pt(x2 * A2[0], x2 * A2[1]), *pt(*B), w=W_THIN, dash='4 3')
    F.line(*pt(0, 0), *pt(x1 * A1[0], x1 * A1[1]), w=W_THIN, color=MID); F.line(*pt(0, 0), *pt(x2 * A2[0], x2 * A2[1]), w=W_THIN, color=MID)
    vec(F, *pt(0, 0), *pt(*A1), 'A₁', 4, 18, w=1.2); vec(F, *pt(0, 0), *pt(*A2), 'A₂', -16, 0, w=1.2)
    vec(F, *pt(0, 0), *pt(*B), 'b', 10, -4, w=W_BOLD)
    F.text(170, 225, 'b = x₁A₁ + x₂A₂: c\'è soluzione', 13, italic=True)
    ox, oy = 370, 190
    axes2(F, ox, oy, 20, 240, 170, 20)
    pt = lambda a, b: (ox + a * s, oy - b * s)
    F.line(*pt(-0.4, -0.2), *pt(5.6, 2.8), w=W_THIN, color=MID, dash='5 4')
    vec(F, *pt(0, 0), *pt(2, 1), 'A₁', 4, 18, w=1.2); vec(F, *pt(0, 0), *pt(3.4, 1.7), 'A₂', 2, 18, w=1.2)
    vec(F, *pt(0, 0), *pt(1.6, 3.2), 'b', 10, -4, w=W_BOLD)
    F.text(480, 225, 'colonne parallele: b irraggiungibile', 13, italic=True)
    return F

@fig
def tre_casi():
    F = Fig('tre-casi', 620, 180, 'Due equazioni in due incognite: tre casi',
            'Tre coppie di rette: incidenti (una soluzione), parallele distinte (nessuna soluzione), coincidenti (infinite soluzioni).')
    for k, title in enumerate(['una soluzione', 'nessuna soluzione', 'infinite soluzioni']):
        ox, oy = 100 + 210 * k, 85
        axes2(F, ox, oy, 80, 90, 70, 70)
        if k == 0:
            F.line(ox - 75, oy + 40, ox + 85, oy - 46, w=1.3); F.line(ox - 70, oy - 55, ox + 80, oy + 50, w=1.3)
            F.dot(ox + 2, oy - 1, 4)
        elif k == 1:
            F.line(ox - 75, oy + 25, ox + 85, oy - 55, w=1.3); F.line(ox - 75, oy + 60, ox + 85, oy - 20, w=1.3)
        else:
            F.line(ox - 75, oy + 40, ox + 85, oy - 40, w=2.6, color=MID); F.line(ox - 75, oy + 40, ox + 85, oy - 40, w=0.9)
        F.text(ox, 176, title, 13, italic=True)
    return F

@fig
def traslato():
    F = Fig('traslato', 340, 158, 'Le soluzioni di Ax = b: un traslato del nucleo',
            'La retta S0 delle soluzioni del sistema omogeneo passa per l\'origine; la retta S delle soluzioni di Ax = b è parallela e passa per una soluzione particolare ξ.')
    ox, oy = 110, 112
    axes2(F, ox, oy, 95, 215, 104, 42)
    d = (1, -0.35); L = hypot(*d); d = (d[0] / L, d[1] / L)
    F.line(ox - 90 * d[0], oy - 90 * d[1], ox + 210 * d[0], oy + 210 * d[1], w=1.2)
    xi = (-28, -54)
    X0 = (ox + xi[0], oy + xi[1])
    F.line(X0[0] - 60 * d[0], X0[1] - 60 * d[1], X0[0] + 220 * d[0], X0[1] + 220 * d[1], w=W_BOLD)
    vec(F, ox, oy, *X0, 'ξ', -14, 4, w=1.1); F.dot(*X0, 3.4)
    x0v = (90 * d[0], 90 * d[1])
    vec(F, ox, oy, ox + x0v[0], oy + x0v[1], 'x₀', 2, 18, w=1.0)
    vec(F, *X0, X0[0] + x0v[0], X0[1] + x0v[1], None, w=1.0)
    F.dot(X0[0] + x0v[0], X0[1] + x0v[1], 3.2); F.m(X0[0] + x0v[0] + 14, X0[1] + x0v[1] + 22, 'ξ + x₀', 14)
    F.m(ox + 170 * d[0], oy + 170 * d[1] + 22, 'S₀ = ker A', 14)
    F.m(X0[0] + 170 * d[0], X0[1] + 170 * d[1] - 16, 'S = ξ + S₀', 14)
    return F

@fig
def rango_nullita():
    F = Fig('rango-nullita', 440, 160, 'Perché dim V = dim ker F + dim Im F',
            'Una base di V divisa in due blocchi: v1, ..., vk base del nucleo, mandati tutti in 0; v(k+1), ..., vn mandati nei vettori F(v(k+1)), ..., F(vn), che formano una base dell\'immagine.')
    F.rect(10, 20, 150, 122, rx=12); F.m(85, 14, 'V', 15)
    F.rect(270, 20, 160, 122, rx=12); F.m(350, 14, 'V′', 15)
    F.rect(22, 32, 126, 52, rx=8, fill=GREY, stroke='none'); F.text(85, 100, 'ker F', 12, italic=True)
    F.m(85, 63, 'v₁, …, v_k', 14)
    F.m(85, 120, 'v_{k+1}, …, v_n', 14)
    F.dot(298, 58, 4); F.m(312, 64, '0', 15)
    F.rect(282, 96, 138, 36, rx=8, fill=GREY, stroke='none'); F.text(350, 90, 'Im F', 12, italic=True)
    F.m(351, 119, 'F(v_{k+1}), …, F(v_n)', 13)
    F.arrow(150, 58, 292, 58, w=1.0); F.arrow(150, 116, 280, 116, w=1.0)
    F.m(220, 50, 'F', 14); F.m(220, 108, 'F', 14)
    F.text(220, 158, 'k + (n − k) = n', 13, italic=True)
    return F

@fig
def scala():
    F = Fig('scala', 380, 200, 'Una matrice a scala',
            'Una griglia 4 per 6: i pivot sono cerchiati e scendono a gradini verso destra; sotto la linea a gradini ci sono solo zeri; l\'ultima riga è nulla.')
    c = 46; ox, oy = 40, 14
    piv = {0: 0, 1: 1, 2: 4}
    for i in range(4):
        for j in range(6):
            x, y = ox + j * c + c / 2, oy + i * c + c / 2 + 6
            pr = piv.get(i)
            if pr is not None and j == pr:
                F.circle(x, y - 5, 15, fill=GREY, sw=1.1); F.text(x, y, 'p', 15, italic=True)
            elif pr is None or j < pr:
                F.text(x, y, '0', 14, color='#666')
            else:
                F.text(x, y, '∗', 15)
    steps = [(0, 1), (1, 1), (1, 2), (4, 2), (4, 3), (6, 3)]
    d = f'M{ox},{oy + c}'
    for j, i in steps:
        d += f' L{ox + j * c},{oy + i * c}'
    F.path(f'M{ox},{oy} L{ox},{oy + c} L{ox + c},{oy + c} L{ox + c},{oy + 2 * c} L{ox + 4 * c},{oy + 2 * c} L{ox + 4 * c},{oy + 3 * c} L{ox + 6 * c},{oy + 3 * c}', sw=W_BOLD)
    F.rect(ox, oy, 6 * c, 4 * c, sw=0.7, stroke=MID)
    return F

@fig
def gauss_passi():
    F = Fig('gauss-passi', 620, 150, 'Gauss lavora su rettangoli sempre più piccoli',
            'Quattro fotografie dell\'algoritmo: si sistema il primo pivot e si annulla la colonna sotto di esso, poi si ripete sul rettangolo grigio rimasto in basso a destra, fino alla forma a scala.')
    W0, H0 = 120, 96
    for k in range(4):
        ox, oy = 20 + 155 * k, 20
        F.rect(ox, oy, W0, H0, sw=0.9)
        cw, ch = W0 / 5, H0 / 4
        # sotto-rettangolo attivo
        cols = [0, 1, 2, 4][k]; rows = [0, 1, 2, 3][k]
        if k < 3:
            F.rect(ox + cols * cw, oy + rows * ch, W0 - cols * cw, H0 - rows * ch, fill=GREY, stroke='none')
        pivs = [(0, 0), (1, 1), (2, 3)][:k] if k < 3 else [(0, 0), (1, 1), (2, 3)]
        for (i, j) in pivs:
            F.circle(ox + j * cw + cw / 2, oy + i * ch + ch / 2, 7, fill='white', sw=1.0)
            for ii in range(i + 1, 4): F.text(ox + j * cw + cw / 2, oy + ii * ch + ch / 2 + 4, '0', 11, color='#555')
        F.rect(ox, oy, W0, H0, sw=0.9)
        F.text(ox + W0 / 2, 140, ['matrice di partenza', 'primo pivot', 'secondo pivot', 'forma a scala'][k], 12, italic=True)
        if k < 3: F.arrow(ox + W0 + 6, oy + H0 / 2, ox + W0 + 30, oy + H0 / 2, w=0.9)
    return F

@fig
def piano_span():
    F = Fig('piano-span', 360, 240, 'Dai generatori all\'equazione',
            'Il piano generato da v1 = (1, −1, 0) e v2 = (0, 1, −1) in R^3: è il piano x + y + z = 0, che contiene anche il vettore (1, 1, −2).')
    ox, oy = 180, 110; p = P3(ox, oy, 44)
    for e, lab in [((2.4, 0, 0), 'x'), ((0, 2.6, 0), 'y'), ((0, 0, 2.2), 'z')]:
        F.line(*p(0, 0, 0), *p(*e), w=0.7, color=MID, arrow=True); F.m(*[a + b for a, b in zip(p(*e), (8, 4))], lab, 13)
    # piano x + y + z = 0: parametrizza con v1, v2
    v1 = (1, -1, 0); v2 = (0, 1, -1)
    def comb(s, t): return tuple(s * a + t * b for a, b in zip(v1, v2))
    corners = [comb(-0.95, -0.95), comb(1.2, -0.95), comb(1.2, 1.2), comb(-0.95, 1.2)]
    F.polygon([p(*c) for c in corners], fill=GREY, sw=0.8)
    vec(F, *p(0, 0, 0), *p(*v1), 'v₁', 10, 10, w=1.4); vec(F, *p(0, 0, 0), *p(*v2), 'v₂', -6, 16, w=1.4)
    F.dot(*p(0, 0, 0), 3)
    F.text(180, 234, 'span(v₁, v₂) = { x + y + z = 0 }', 13, italic=True)
    return F

# ---------------------------------------------------------------- capitolo 12
@fig
def rouche():
    F = Fig('rouche', 600, 210, 'Rouché–Capelli: aggiungere b non deve far crescere il rango',
            'A sinistra b sta nel piano generato dalle colonne: aggiungendolo il rango resta 2 e il sistema ha soluzione. A destra b esce dal piano: il rango sale a 3 e il sistema non ha soluzione.')
    for k in range(2):
        ox, oy = 150 + 300 * k, 125; p = P3(ox, oy, 34)
        F.polygon([p(-1.8, -1.8, 0), p(2.1, -1.8, 0), p(2.1, 2.2, 0), p(-1.8, 2.2, 0)], fill=GREY, sw=0.8)
        vec(F, *p(0, 0, 0), *p(1.5, 0, 0), 'a₁', 6, 16, w=1.2); vec(F, *p(0, 0, 0), *p(0, 1.7, 0), 'a₂', -14, -4, w=1.2)
        if k == 0:
            vec(F, *p(0, 0, 0), *p(1.4, 1.5, 0), 'b', 12, 0, w=W_BOLD)
            F.text(ox, 205, 'b nel piano: rango 2 = 2, compatibile', 13, italic=True)
        else:
            vec(F, *p(0, 0, 0), *p(0.6, 0.5, 2.1), 'b', 12, 0, w=W_BOLD)
            F.line(*p(0.6, 0.5, 2.1), *p(0.6, 0.5, 0), w=W_THIN, dash='3 3', color=MID)
            F.text(ox, 205, 'b fuori dal piano: rango 2 → 3, impossibile', 13, italic=True)
        F.dot(*p(0, 0, 0), 3)
    return F

@fig
def elementari():
    F = Fig('elementari', 640, 150, 'Le tre operazioni elementari di riga',
            'Tre schemi di una matrice a tre righe: scambio di due righe, moltiplicazione di una riga per λ diverso da zero, somma a una riga di un multiplo di un\'altra.')
    titles = ['scambio', 'una riga per λ ≠ 0', 'riga più λ volte un\'altra']
    labs = [['R_i', 'R_2', 'R_j'], ['R_1', 'R_i', 'R_3'], ['R_i', 'R_2', 'R_j']]
    after = [['R_j', 'R_2', 'R_i'], ['R_1', 'λR_i', 'R_3'], ['R_i + λR_j', 'R_2', 'R_j']]
    for k in range(3):
        ox, oy = 10 + 212 * k, 14; w, h = 60, 26
        for r in range(3):
            y = oy + r * (h + 6)
            F.rect(ox, y, w, h, rx=4); F.m(ox + w / 2, y + 18, labs[k][r], 14)
            ch = after[k][r] != labs[k][r]
            F.rect(ox + w + 34, y, 94, h, rx=4, fill=GREY if ch else 'white'); F.m(ox + w + 34 + 47, y + 18, after[k][r], 14)
        F.arrow(ox + w + 6, oy + 45, ox + w + 28, oy + 45, w=0.9)
        F.text(ox + 94, 134, titles[k], 13, italic=True)
    return F

if __name__ == '__main__':
    out = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).resolve().parent
    out.mkdir(exist_ok=True); sizes = {}
    for f in FIGS: f().save(out, sizes)
    if len(sys.argv) > 2: Path(sys.argv[2]).write_text(json.dumps(sizes, indent=1))
    print(len(FIGS), 'SVG generati in', out)
