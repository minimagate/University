"""Disegni del libro <MATERIA> (<mese anno>).

Genera gli SVG originali a tratto sottile. Copiare accanto a figlib.py nella cartella
Books/<EnglishMonth>/<book-slug>-<N>-spark/assets/ e lanciare:  python3 disegni.py [cartella] [sizes.json]
Poi creare le copie PDF:      swift svg-to-pdf.swift <cartella>
"""
import json, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent))
from figlib import *            # Fig, W, W_THIN, W_BOLD, GREY, MID, INK, cos, sin, pi, hypot

FIGS = []
def fig(f): FIGS.append(f); return f

# ---------------------------------------------------------------- capitolo 1
@fig
def esempio():
    F = Fig('esempio', 600, 175, 'Titolo accessibile', 'Descrizione per chi non vede il disegno.')
    F.circle(150, 80, 46, fill=GREY); F.circle(204, 80, 46)
    F.m(100, 30, 'A', 15); F.m(254, 30, 'B', 15)
    F.arrow(280, 80, 380, 80, bend=0.2)
    F.m(470, 86, 'A ∪ B', 15)
    return F

if __name__ == '__main__':
    out = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).resolve().parent
    out.mkdir(parents=True, exist_ok=True); sizes = {}
    for f in FIGS: f().save(out, sizes)
    sizes_path = Path(sys.argv[2]) if len(sys.argv) > 2 else out / 'sizes.json'
    sizes_path.write_text(json.dumps(sizes, indent=1) + '\n', encoding='utf-8')
    print(len(FIGS), 'SVG generati in', out)
