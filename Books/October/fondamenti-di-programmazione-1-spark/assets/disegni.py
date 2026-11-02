"""Disegni del libro Fondamenti di Programmazione (settembre-ottobre 2026).

Genera gli SVG originali a tratto sottile. Lanciare:  python3 disegni.py [cartella] [sizes.json]
Poi creare le copie PDF:      swift svg-to-pdf.swift <cartella>
"""
import json, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent))
from figlib import *            # Fig, W, W_THIN, W_BOLD, GREY, MID, INK, cos, sin, pi, hypot

FIGS = []
def fig(f): FIGS.append(f); return f


def edge(F, p, q, r=13):
    """Segmento fra due nodi, accorciato di r ai due estremi."""
    (x1, y1), (x2, y2) = p, q
    d = hypot(x2 - x1, y2 - y1); ux, uy = (x2 - x1) / d, (y2 - y1) / d
    F.line(x1 + ux * r, y1 + uy * r, x2 - ux * r, y2 - uy * r, w=W)


def arc_left(F, x1, x2, y, peak):
    """Freccia curva sopra la riga, da x1 (a destra) verso x2 (a sinistra), alta 'peak'."""
    L = abs(x2 - x1)
    F.arrow(x1, y, x2, y, bend=2 * peak / L)


def state(F, x, y, cw, items):
    """Stato del programma: una cella per variabile, nome in alto, valore in basso."""
    for k, (name, val) in enumerate(items):
        xx = x + k * cw
        F.rect(xx, y, cw, 36, fill='white')
        F.text(xx + cw / 2, y + 12, name, 11)
        F.text(xx + cw / 2, y + 29, val, 15)


# ---------------------------------------------------------------- 1 fasi
@fig
def fasi():
    F = Fig('fasi', 640, 250, 'Il ciclo di sviluppo di un programma',
            'Quattro fasi in sequenza (specifica, algoritmo, codifica, esecuzione), con ritorni curvi '
            'dall’esecuzione verso le fasi precedenti, etichettati debugging.')
    names = ['specifica', 'algoritmo', 'codifica', 'esecuzione']
    notes = ['che cosa', 'come', 'in un linguaggio', 'e verifica']
    cs = [90, 245, 400, 555]
    for c, n, t in zip(cs, names, notes):
        F.rect(c - 60, 40, 120, 44, fill='white')
        F.text(c, 67, n, 14)
        F.text(c, 102, t, 12, italic=True)
    for a, b in zip(cs, cs[1:]):
        F.arrow(a + 62, 62, b - 62, 62)
    # ritorni dall'esecuzione: (inizio, fine, profondità del ritorno, etichetta)
    back = [(590, 452, 140), (600, 297, 175), (607, 142, 210)]
    for xs, xt, depth in back:
        D = (depth - 0.25 * 84) / 0.75          # punto di controllo per un arco a profondità 'depth'
        F.path(f'M{xs},84 C{xs},{D:.1f} {xt},{D:.1f} {xt},84', extra='marker-end="url(#ah)"')
        F.text((xs + xt) / 2, depth + 13, 'debugging', 12, italic=True)
    return F


# ---------------------------------------------------------------- 2 ricerca binaria
@fig
def ricerca_binaria():
    vals = [3, 7, 11, 14, 18, 21, 25, 29, 33, 38, 42, 47, 51, 56, 60, 64]
    F = Fig('ricerca-binaria', 640, 240, 'Ricerca binaria del valore 47',
            'Quattro passi di una ricerca binaria del valore 47 in una sequenza ordinata di sedici valori: '
            'l’intervallo attivo si dimezza a ogni passo, fino a trovare il valore.')
    x0, cw, ch = 70, 32, 30
    tops = [46, 92, 138, 184]
    for i in range(16):
        F.text(x0 + i * cw + cw / 2, 36, str(i), 11)
    F.text(610, 36, 'attivi', 11)
    rows = [(0, 15, 8, 16), (9, 15, 12, 7), (9, 11, 10, 3), (11, 11, 11, 1)]
    for r, (lo, hi, mid, count) in enumerate(rows):
        y = tops[r]
        F.text(8, y + 20, f'passo {r + 1}', 11, anchor='start')
        for i in range(16):
            x = x0 + i * cw
            active = lo <= i <= hi
            F.rect(x, y, cw, ch, fill='white' if active else GREY, stroke=INK,
                   sw=W_BOLD if i == mid else W)
            F.text(x + cw / 2, y + ch / 2 + 5, str(vals[i]), 13, bold=(i == mid))
        F.text(610, y + ch / 2 + 5, str(count), 14)
    return F


# ---------------------------------------------------------------- 3 quaderno
@fig
def quaderno():
    F = Fig('quaderno', 620, 170, 'Stati successivi del programma di moltiplicazione',
            'Quattro stati successivi delle variabili A, B e C: a ogni passo C cresce di A e B diminuisce di uno, '
            'finché B vale zero.')
    states = [(5, 3, 0), (5, 2, 5), (5, 1, 10), (5, 0, 15)]
    cw, y = 30, 70
    for k, st in enumerate(states):
        x = 20 + k * 162
        for j, lab in enumerate('ABC'):
            F.text(x + j * cw + cw / 2, y - 8, lab, 13, italic=True)
            F.rect(x + j * cw, y, cw, 30, fill=GREY if (k == 3 and j == 2) else 'white')
            F.text(x + j * cw + cw / 2, y + 20, str(st[j]), 14)
        F.m(x + 45, y + 52, f'σ_{k}', 14)
        if k < 3:
            F.arrow(x + 96, y + 15, x + 162 - 6, y + 15)
            F.text(x + 126, y - 14, 'C := C+A,', 11)
            F.text(x + 126, y - 2, 'B := B−1', 11)
    F.text(20 + 3 * 162 + 45, y + 84, 'B = 0: stop', 12, italic=True)
    return F


# ---------------------------------------------------------------- 4 albero della formula
@fig
def albero_formula():
    F = Fig('albero-formula', 480, 240, 'Albero sintattico della formula (p ∧ q) ∨ ¬r',
            'Albero della formula (p ∧ q) ∨ ¬r, con accanto a ogni nodo il suo valore di verità '
            'nell’interpretazione p = vero, q = falso, r = falso.')
    nodes = {
        'or': ((240, 40), '∨', 't'),
        'and': ((130, 120), '∧', 'f'),
        'not': ((350, 120), '¬', 't'),
        'p': ((80, 200), 'p', 't'),
        'q': ((180, 200), 'q', 'f'),
        'r': ((350, 200), 'r', 'f'),
    }
    for a, b in [('or', 'and'), ('or', 'not'), ('and', 'p'), ('and', 'q'), ('not', 'r')]:
        edge(F, nodes[a][0], nodes[b][0])
    for key, (pos, lab, val) in nodes.items():
        x, y = pos
        F.m(x, y + 5, lab, 15)
        F.rect(x + 20, y - 8, 18, 16, fill=GREY, stroke=MID, sw=W_THIN)
        F.text(x + 29, y + 4, val, 12)
    return F


# ---------------------------------------------------------------- 5 conseguenza logica
@fig
def conseguenza():
    F = Fig('conseguenza', 640, 300, 'Conseguenza logica: Γ ⊨ φ e Γ ⊭ φ',
            'Due pannelli dentro il rettangolo di tutte le interpretazioni. A sinistra i modelli di Γ sono contenuti '
            'nei modelli di φ, quindi Γ ⊨ φ. A destra un modello di Γ non è modello di φ, quindi Γ ⊭ φ.')
    F.rect(10, 10, 620, 275)
    F.text(24, 32, 'tutte le interpretazioni', 13, anchor='start', italic=True)
    # sinistra: Γ ⊨ φ
    F.ellipse(160, 140, 115, 75)
    F.ellipse(140, 152, 62, 40, fill=GREY, stroke=INK)
    F.text(160, 90, 'modelli di φ', 13)
    F.text(140, 157, 'modelli di Γ', 13)
    F.m(160, 254, 'Γ ⊨ φ', 14)
    # destra: Γ ⊭ φ
    F.ellipse(430, 150, 85, 55, fill=GREY)
    F.ellipse(500, 150, 85, 55, fill='white')
    F.m(378, 156, 'Γ', 15); F.m(545, 156, 'φ', 15)
    F.dot(385, 128, 3.2)
    F.line(385, 134, 385, 222, w=W_THIN)
    F.text(385, 238, 'controesempio', 12)
    F.m(430, 262, 'Γ ⊭ φ', 14)
    return F


# ---------------------------------------------------------------- 6 polarità
@fig
def polarita():
    F = Fig('polarita', 600, 370, 'Polarità delle occorrenze di P, R e Q',
            'Due alberi affiancati: in P ⇒ (¬R ⇒ Q) la lettera P è in posizione negativa, R e Q positive; '
            'in (P ⇒ ¬R) ⇒ Q la lettera P è positiva, R positiva e Q positiva.')
    def ed(a, b, neg=False):
        edge(F, a, b, 13)
        if neg:
            F.text((a[0] + b[0]) / 2 - 9, (a[1] + b[1]) / 2 + 2, '−', 14)
    def leaf(x, y, lab):
        F.m(x, y + 5, lab, 15)
    def sign(x, y, s):
        F.circle(x, y, 9, fill='white', sw=W_THIN); F.text(x, y + 4, s, 12)
    # albero di sinistra: P ⇒ (¬R ⇒ Q)
    r1 = (130, 40); P1 = (50, 120); I1 = (200, 120); N1 = (150, 200); Q1 = (250, 200); R1 = (150, 280)
    F.m(r1[0], r1[1] + 5, '⇒', 15)
    ed(r1, P1, neg=True); ed(r1, I1); ed(I1, N1, neg=True); ed(I1, Q1); ed(N1, R1, neg=True)
    F.m(I1[0], I1[1] + 5, '⇒', 15)
    F.m(N1[0], N1[1] + 5, '¬', 15)
    leaf(P1[0], P1[1], 'P'); leaf(Q1[0], Q1[1], 'Q'); leaf(R1[0], R1[1], 'R')
    sign(50, 158, '−'); sign(250, 232, '+'); sign(150, 308, '+')
    F.m(130, 344, 'P ⇒ (¬R ⇒ Q)', 14)
    # albero di destra: (P ⇒ ¬R) ⇒ Q
    ox = 340
    r2 = (ox + 130, 40); I2 = (ox + 60, 120); Q2 = (ox + 200, 120)
    P2 = (ox + 20, 200); N2 = (ox + 100, 200); R2 = (ox + 100, 280)
    F.m(r2[0], r2[1] + 5, '⇒', 15)
    ed(r2, I2, neg=True); ed(r2, Q2)
    ed(I2, P2, neg=True); ed(I2, N2); ed(N2, R2, neg=True)
    F.m(I2[0], I2[1] + 5, '⇒', 15)
    F.m(N2[0], N2[1] + 5, '¬', 15)
    leaf(P2[0], P2[1], 'P'); leaf(Q2[0], Q2[1], 'Q'); leaf(R2[0], R2[1], 'R')
    sign(ox + 20, 232, '+'); sign(ox + 200, 152, '+'); sign(ox + 100, 308, '+')
    F.m(ox + 60, 344, '(P ⇒ ¬R) ⇒ Q', 14)
    return F


# ---------------------------------------------------------------- 7 portata dei quantificatori
def _tw(t, s):
    if t in '∀∃∧∨=': return 0.85 * s
    if t in '()': return 0.4 * s
    if t == '.': return 0.3 * s
    return 0.55 * s

@fig
def portata():
    F = Fig('portata', 640, 190, 'Portata dei quantificatori',
            'La formula ∀y.( z = y ∧ ( x = y ∨ ( ∃x. x = z ∨ z = y ) ) ): le tre occorrenze di y sono legate da ∀y, '
            'l’x di x = z è legata da ∃x, le z e l’x di x = y sono libere e campite in grigio.')
    toks = ['∀', 'y', '.', '(', 'z', '=', 'y', '∧', '(', 'x', '=', 'y', '∨', '(', '∃', 'x', '.', 'x', '=', 'z',
            '∨', 'z', '=', 'y', ')', ')', ')']
    s, gap, base, x = 15, 5, 100, 30
    xs, ws = [], []
    for t in toks:
        w = _tw(t, s)
        xs.append(x); ws.append(w)
        x += w + gap + (4 if t in '∧∨=' else 0)
    free = {4, 9, 19, 21}
    for i in free:
        F.rect(xs[i] - 2, base - 14, ws[i] + 4, 20, fill=GREY, stroke='none')
    for i, t in enumerate(toks):
        F.m(xs[i], base, t, s, anchor='start')
    cx = [xs[i] + ws[i] / 2 for i in range(len(toks))]
    # legami: y(6), y(11), y(23) → ∀ (0); x(17) → ∃ (14 è il quantificatore ∃, la x legata è il token 15)
    arc_left(F, cx[6], cx[0], base - 18, 16)
    arc_left(F, cx[11], cx[0], base - 18, 26)
    arc_left(F, cx[23], cx[0], base - 18, 36)
    arc_left(F, cx[17], cx[15], base - 18, 12)
    # ambiti
    yb1, yb2 = 118, 150
    x1, x2 = xs[3], xs[26] + ws[26]
    F.path(f'M{x1},{yb1 - 6} V{yb1} H{x2} V{yb1 - 6}', sw=W_THIN)
    F.text((x1 + x2) / 2, yb1 + 16, 'ambito di ∀y', 12, italic=True)
    x3, x4 = xs[17], xs[23] + ws[23]
    F.path(f'M{x3},{yb2 - 6} V{yb2} H{x4} V{yb2 - 6}', sw=W_THIN)
    F.text((x3 + x4) / 2, yb2 + 16, 'ambito di ∃x', 12, italic=True)
    return F


# ---------------------------------------------------------------- 8 tre interpretazioni
@fig
def tre_interpretazioni():
    F = Fig('tre-interpretazioni', 640, 250, 'Tre interpretazioni del predicato p(x)',
            'Tre pannelli: nel primo i punti sono città italiane e p(x) dice che sono capoluoghi di provincia; '
            'nel secondo il dominio è {5, 10, 15} e p è sempre vero; nel terzo sono i numeri da 0 a 15 e p dice che sono multipli di 5.')
    panels = [(10, 'I_1', '∀x.p(x): f'), (220, 'I_2', '∀x.p(x): t'), (430, 'I_3', '∀x.p(x): f')]
    for ox, lab, res in panels:
        F.rect(ox, 34, 200, 165, stroke=MID, sw=W_THIN)
        F.m(ox + 100, 26, lab, 15)
        F.m(ox + 100, 222, res, 14)
    # I_1: città italiane
    ox, oy = 10, 34
    cities = [('Milano (a)', 78, 52, 'end', True), ('Roma (b)', 130, 58, 'start', True),
              ('Firenze', 100, 78, 'start', True), ('Pisa', 62, 92, 'end', True),
              ('Lucca', 98, 108, 'end', True), ('Pontedera (c)', 140, 100, 'middle', False),
              ('Empoli', 60, 122, 'end', False)]
    for name, px, py, anc, cap in cities:
        F.circle(ox + px, oy + py, 5.5, fill=GREY if cap else 'white')
        dx = {'end': -9, 'start': 9, 'middle': 0}[anc]
        dy = 20 if anc == 'middle' else 4
        F.text(ox + px + dx, oy + py + dy, name, 12, anchor=anc)
    # I_2: dominio {5, 10, 15}, tutti capoluoghi (p vero per tutti)
    ox = 220
    F.ellipse(ox + 100, oy + 88, 84, 58)
    for k, (v, lab) in enumerate([(5, 'a'), (10, 'b'), (15, 'c')]):
        cx = ox + 50 + 50 * k
        F.circle(cx, oy + 88, 15, fill=GREY)
        F.text(cx, oy + 92, str(v), 13)
        F.m(cx, oy + 124, lab, 14)
    # I_3: numeri 0..15, multipli di 5 in grigio
    ox = 430
    for n in range(16):
        r_, c_ = divmod(n, 8)
        x = ox + 14 + 22 * c_
        y = oy + 32 + 40 * r_
        if n % 5 == 0:
            F.rect(x - 2, y - 14, 22, 18, fill=GREY, stroke='none')
        F.text(x + 9, y, str(n), 12)
        if n in (5, 10, 15):
            lab = {5: 'a', 10: 'b', 15: 'c'}[n]
            F.m(x + 9, y + 15, lab, 13)
    F.text(ox + 100, oy + 146, '…', 16)
    return F


# ---------------------------------------------------------------- 9 quantificatori su due elementi
@fig
def quantificatori():
    F = Fig('quantificatori', 480, 200, 'Tabella di P(x, y) su due elementi',
            'Griglia 2 per 2 dei valori di P(x, y) per x e y in {a, b}: la riga x = a è vera in entrambe le colonne, '
            'la riga x = b è falsa. Quindi x = a è un testimone di ∃x∀y P(x, y).')
    x0, y0, cw, ch = 170, 70, 70, 48
    F.m(20, 40, 'P(x,y)', 15, anchor='start')
    for j, lab in enumerate(['y = a', 'y = b']):
        F.m(x0 + cw * j + cw / 2, y0 - 12, lab, 13)
    rows = [('x = a', 'tt'), ('x = b', 'ff')]
    for i, (lab, vals) in enumerate(rows):
        y = y0 + ch * i
        if i == 0:
            F.rect(x0, y, 2 * cw, ch, fill=GREY, stroke='none')
        for j in range(2):
            F.rect(x0 + cw * j, y, cw, ch, fill='none')
            F.text(x0 + cw * j + cw / 2, y + ch / 2 + 5, vals[j], 15)
        F.m(x0 - 14, y + ch / 2 + 5, lab, 13, anchor='end')
    F.text(x0 + 2 * cw + 16, y0 + ch / 2 + 5, 'testimone: x = a', 12, anchor='start')
    return F


# ---------------------------------------------------------------- 10 while srotolato
@fig
def while_srotolato():
    F = Fig('while-srotolato', 640, 140, 'Il ciclo while srotolato in una sequenza di stati',
            'Stati σ0, σ1, σ2, …, σn collegati da un’esecuzione del corpo C; la guardia E vale vero negli stati '
            'da cui si continua e falso in σn, da cui si esce.')
    xs = [60, 170, 280, 390, 500]
    labs = ['σ_0', 'σ_1', 'σ_2', None, 'σ_n']
    guards = ['E: t', 'E: t', 'E: t', None, 'E: f']
    for x, lab, g in zip(xs, labs, guards):
        if lab:
            F.circle(x, 96, 20, fill='white')
            F.m(x, 101, lab, 14)
        if g:
            F.m(x, 56, g, 13)
    F.text(390, 101, '…', 18)
    for a, b in zip(xs, xs[1:]):
        F.arrow(a + 22, 96, b - 22, 96)
        F.text((a + b) / 2, 88, 'C', 13, italic=True)
    F.arrow(520, 96, 606, 96)
    F.text(563, 88, 'fine', 12, italic=True)
    return F


# ---------------------------------------------------------------- 11 scambio di variabili
@fig
def scambio():
    F = Fig('scambio', 620, 250, 'Scambio di due variabili',
            'Due modi di scambiare i valori di x e y: con due sole istruzioni il valore 10 di x va perso; '
            'con una variabile temporanea i valori si scambiano senza perdite.')
    # riga 1: x := y; y := x
    F.text(30, 64, 'x := y; y := x', 14, anchor='start')
    y1 = 80
    xs1 = [30, 196, 362]
    s1 = [[('x', '10'), ('y', '20')], [('x', '20'), ('y', '20')], [('x', '20'), ('y', '20')]]
    for x, items in zip(xs1, s1):
        state(F, x, y1, 48, items)
    F.arrow(132, y1 + 18, 190, y1 + 18); F.text(161, y1 + 12, 'x := y', 11)
    F.arrow(298, y1 + 18, 356, y1 + 18); F.text(327, y1 + 12, 'y := x', 11)
    F.rect(196, 128, 30, 20, fill='white', stroke=MID, sw=W_THIN)
    F.text(211, 142, '10', 13, color=MID)
    F.line(198, 146, 224, 130, w=W)
    F.text(236, 143, 'il valore 10 è perso', 12, anchor='start', italic=True)
    # riga 2: temp := x; x := y; y := temp
    F.text(20, 176, 'temp := x; x := y; y := temp', 14, anchor='start')
    y2 = 190
    xs2 = [20, 180, 340, 500]
    s2 = [[('x', '10'), ('y', '20'), ('temp', '–')],
          [('x', '10'), ('y', '20'), ('temp', '10')],
          [('x', '20'), ('y', '20'), ('temp', '10')],
          [('x', '20'), ('y', '10'), ('temp', '10')]]
    for x, items in zip(xs2, s2):
        state(F, x, y2, 34, items)
    for a, b, lab in zip(xs2, xs2[1:], ['temp := x', 'x := y', 'y := temp']):
        F.arrow(a + 102 + 6, y2 + 18, b - 6, y2 + 18)
        F.text((a + 102 + b) / 2, y2 + 12, lab, 11)
    return F


# ---------------------------------------------------------------- 12 calcolo all'indietro
@fig
def allindietro():
    F = Fig('allindietro', 480, 290, 'Calcolo della precondizione all’indietro',
            'Programma con asserzioni calcolate dal basso verso l’alto: da {x > y} si risale a {x > y − 1} con '
            'y := y − 1, poi a {x ≥ y − 1} con x := x + 1.')
    rows = [('a', '{x ≥ y−1}'), ('c', 'x := x+1'), ('a', '{x > y−1}'), ('c', 'y := y−1'), ('a', '{x > y}')]
    for i, (kind, t) in enumerate(rows):
        y = 40 + i * 56
        if kind == 'a':
            F.m(40, y, t, 15, anchor='start')
        else:
            F.text(70, y, t, 14, anchor='start')
    # frecce verso l'alto a destra
    F.arrow(330, 256, 330, 160)
    F.m(342, 210, '[y−1/y]', 13, anchor='start')
    F.arrow(330, 144, 330, 48)
    F.m(342, 98, '[x+1/x]', 13, anchor='start')
    F.m(342, 124, 'x+1 > y−1  ⇐  x ≥ y−1', 12, anchor='start')
    return F


# ---------------------------------------------------------------- 13 precondizione e postcondizione
@fig
def pre_post():
    F = Fig('pre-post', 640, 250, 'Rafforzare la precondizione e indebolire la postcondizione',
            'A sinistra {P} è contenuta in {P′}, a destra {R′} è contenuta in {R}: la tripla {P′} C {R′} '
            'implica {P} C {R} grazie alle due regole della conseguenza.')
    F.ellipse(150, 120, 115, 80)
    F.ellipse(150, 125, 60, 38)
    F.m(60, 70, '{P′}', 14)
    F.m(150, 130, '{P}', 14)
    F.ellipse(490, 120, 115, 80)
    F.ellipse(490, 125, 60, 38)
    F.m(580, 70, '{R}', 14)
    F.m(490, 130, '{R′}', 14)
    F.arrow(268, 120, 428, 120)
    F.m(348, 112, 'C', 14)
    F.text(150, 228, 'rafforzare la precondizione', 13, italic=True)
    F.text(490, 228, 'indebolire la postcondizione', 13, italic=True)
    return F


# ---------------------------------------------------------------- 14 invariante di ciclo
@fig
def invariante():
    F = Fig('invariante', 430, 220, 'Schema di un ciclo con invariante',
            'Diagramma di un ciclo: si entra con Inv, si controlla la guardia E; se è vera si esegue C e si torna '
            'al controllo con Inv; se è falsa si esce con Inv ∧ ¬E.')
    F.arrow(240, 18, 240, 62)
    F.text(252, 42, 'Inv', 13, anchor='start', italic=True)
    F.polygon([(240, 62), (300, 92), (240, 122), (180, 92)], fill='white')
    F.text(240, 97, 'E ?', 14)
    F.arrow(240, 122, 240, 159)
    F.text(232, 146, 'sì', 12, anchor='end')
    F.m(250, 146, 'Inv ∧ E', 13, anchor='start')
    F.rect(205, 159, 70, 34, fill='white')
    F.m(240, 181, 'C', 15)
    F.line(205, 176, 160, 176)
    F.line(160, 176, 160, 92)
    F.arrow(160, 92, 178, 92)
    F.m(150, 134, 'Inv', 13, anchor='end')
    F.arrow(300, 92, 410, 92)
    F.text(355, 86, 'no', 12)
    F.m(355, 112, 'Inv ∧ ¬E', 13)
    return F


# ---------------------------------------------------------------- 15 funzione di terminazione
@fig
def scala():
    F = Fig('scala', 640, 290, 'Funzione di terminazione della divisione',
            'Istogramma dei valori della funzione di terminazione r = x − k·y per x = 17 e y = 5: i valori 17, 12, 7, 2 '
            'decrescono di cinque a ogni giro e restano sopra zero.')
    Y0, sy, xa = 230, 10, 90
    Y = lambda v: Y0 - v * sy
    for v in [5, 10, 15]:
        F.line(xa - 4, Y(v), xa + 4, Y(v), w=0.8)
        F.text(xa - 10, Y(v) + 4, str(v), 12, anchor='end')
    F.line(xa, Y0, xa, 52, w=0.9, arrow=True)
    F.m(xa - 12, 48, 'r', 14)
    F.line(xa, Y(5), 548, Y(5), w=W_THIN, color=MID, dash='4,3')
    F.text(552, Y(5) + 4, 'y = 5', 12, anchor='start')
    for k, v in enumerate([17, 12, 7, 2]):
        cx = 170 + 100 * k
        F.rect(cx - 28, Y(v), 56, v * sy, fill=GREY)
        F.text(cx, Y(v) - 6, str(v), 13)
        F.m(cx, Y0 + 18, f'k = {k}', 12)
    F.text(470, Y0 + 40, 'r < y: guardia falsa', 11, italic=True)
    F.text(330, 100, 'ogni giro: −5', 13)
    F.line(xa, Y0, 560, Y0, w=W_BOLD)
    F.m(568, Y0 + 5, 't ≥ 0', 14, anchor='start')
    return F


# ---------------------------------------------------------------- 16 incroci
@fig
def incroci():
    F = Fig('incroci', 600, 260, 'Segmenti che si incrociano e segmenti che no',
            'A sinistra i segmenti AB e CD si incrociano nel punto E, che forma il triangolo grigio AED; a destra '
            'gli stessi quattro punti collegati da AD e CB non si incrociano.')
    def pts(ox):
        A, D, C, B = (ox + 60, 50), (ox + 220, 50), (ox + 60, 160), (ox + 220, 160)
        for (x, y), lab, filled, dx, dy, anc in [(A, 'A', True, -12, -8, 'end'), (D, 'D', False, 12, -8, 'start'),
                                                 (C, 'C', True, -12, 18, 'end'), (B, 'B', False, 12, 18, 'start')]:
            if filled: F.dot(x, y, 4.5)
            else: F.circle(x, y, 4.5, fill='white')
            F.m(x + dx, y + dy, lab, 14, anchor=anc)
        return A, B, C, D
    # sinistra
    A, B, C, D = pts(0)
    E = (140, 105)
    F.polygon([A, E, D], fill=GREY, stroke='none')
    F.line(A[0], A[1], B[0], B[1]); F.line(C[0], C[1], D[0], D[1])
    F.dot(E[0], E[1], 2.2); F.m(E[0], E[1] - 9, 'E', 13)
    F.text(130, 214, 'AB e CD si incrociano', 13)
    # destra
    A, B, C, D = pts(320)
    F.line(A[0], A[1], B[0], B[1], w=W_THIN, color=MID, dash='4,3')
    F.line(C[0], C[1], D[0], D[1], w=W_THIN, color=MID, dash='4,3')
    F.line(A[0], A[1], D[0], D[1]); F.line(C[0], C[1], B[0], B[1])
    F.text(450, 214, 'AD e CB non si incrociano', 13)
    F.text(300, 246, '● A, C     ○ B, D', 12)
    return F


# ---------------------------------------------------------------- 17 zona dell'array
@fig
def array_zone():
    F = Fig('array-zone', 540, 175, 'Zona già elaborata di un array',
            'Array di otto celle con indici da 0 a 7 e x = 3: le celle prima di x sono state già incrementate, '
            'quelle da x in poi non ancora.')
    x0, cw, top, h = 60, 52, 62, 40
    for i in range(8):
        x = x0 + i * cw
        if i < 3:
            F.rect(x, top, cw, h, fill=GREY)
            F.m(x + cw / 2, top + 25, 'V[k]+1', 13)
        else:
            F.rect(x, top, cw, h, fill='white')
            F.m(x + cw / 2, top + 25, 'V[k]', 13)
        F.text(x + cw / 2, top + h + 16, str(i), 12)
    cx3 = x0 + 3 * cw
    F.arrow(cx3, top - 24, cx3, top - 3)
    F.m(cx3, top - 30, 'x', 15)
    yb = top + h + 30
    F.path(f'M{x0 + 4},{yb - 6} V{yb} H{cx3 - 4} V{yb - 6}', sw=W_THIN)
    F.m((x0 + cx3) / 2, yb + 16, '[0,x)', 13)
    F.path(f'M{cx3 + 4},{yb - 6} V{yb} H{x0 + 8 * cw - 4} V{yb - 6}', sw=W_THIN)
    F.m((cx3 + x0 + 8 * cw) / 2, yb + 16, '[x,n)', 13)
    return F


# ---------------------------------------------------------------- 18 bandiera olandese
@fig
def bandiera():
    F = Fig('bandiera', 480, 240, 'Le regioni dell’algoritmo a bandiera',
            'Due stati dell’array: nel primo le regioni sono minore di zero, non ancora esaminati e maggiore o uguale a zero; '
            'nel secondo ci sono quattro regioni, con i valori uguali a zero e maggiori di zero separati.')
    F.raw('<pattern id="hp" width="5" height="5" patternUnits="userSpaceOnUse" patternTransform="rotate(45)">'
          f'<line x1="0" y1="0" x2="0" y2="5" stroke="{MID}" stroke-width="1"/></pattern>')
    x0, cw, h = 50, 40, 40
    def region(a, b, top, fill, label):
        F.rect(x0 + a * cw, top, (b - a) * cw, h, fill=fill)
        F.text(x0 + (a + b) / 2 * cw, top + h / 2 + 5, label, 13) if label else None
    def marker(i, top, lab):
        xx = x0 + i * cw
        F.line(xx, top - 6, xx, top, w=W)
        F.m(xx, top - 12, lab, 14)
    # riga 1
    t1 = 70
    region(0, 3, t1, GREY, '< 0')
    region(3, 6, t1, 'white', '?')
    F.rect(x0 + 6 * cw, t1, 4 * cw, h, fill='url(#hp)')
    F.text(x0 + 8 * cw, t1 + h / 2 + 5, '≥ 0', 13)
    F.rect(x0, t1, 10 * cw, h)
    marker(3, t1, 'x'); marker(6, t1, 'y'); marker(10, t1, 'n')
    # riga 2
    t2 = 170
    region(0, 2, t2, GREY, '< 0')
    region(2, 4, t2, 'white', '= 0')
    region(4, 7, t2, 'white', '?')
    F.rect(x0 + 7 * cw, t2, 3 * cw, h, fill='url(#hp)')
    F.text(x0 + 8.5 * cw, t2 + h / 2 + 5, '> 0', 13)
    F.rect(x0, t2, 10 * cw, h)
    marker(2, t2, 'x'); marker(4, t2, 'z'); marker(7, t2, 'y'); marker(10, t2, 'n')
    return F


# ---------------------------------------------------------------- 19 fibonacci iterativo
@fig
def fibonacci():
    F = Fig('fibonacci', 560, 155, 'Due termini consecutivi in un passo di Fibonacci',
            'Prima x vale 3 e y vale 2. Dopo il passo x vale 5 e y vale 3. '
            'Il temporaneo conserva il vecchio x, che diventa il nuovo y.')
    F.text(130, 30, 'prima', 14)
    F.text(430, 30, 'dopo', 14)
    state(F, 60, 58, 70, [('x', '3'), ('y', '2')])
    state(F, 360, 58, 70, [('x', '5'), ('y', '3')])
    F.arrow(214, 76, 346, 76)
    F.m(280, 64, 'x+y', 14)
    F.text(280, 126, 'temp conserva il vecchio x = 3', 14)
    return F


if __name__ == '__main__':
    out = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).resolve().parent
    out.mkdir(exist_ok=True); sizes = {}
    for f in FIGS: f().save(out, sizes)
    if len(sys.argv) > 2: Path(sys.argv[2]).write_text(json.dumps(sizes, indent=1))
    print(len(FIGS), 'SVG generati in', out)
