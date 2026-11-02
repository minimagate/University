#!/usr/bin/env python3
"""Convert a UTF-8 TeXmacs source (.src) into a native .tm file.

Usage: build.py SRC OUT --assets DIRNAME [--sizes SIZES.json]

- Unicode math/text symbols become TeXmacs entities (≤ -> \\<leq\\>, ...); Italian
  accented letters are kept as Cork/Latin-1 bytes; any other character becomes \\<#HEX\\>.
- « » become the Cork guillemets (\\S \\T).  Use ‹ › for a literal < > in math.
- @IMG(name) or @IMG(name,0.8) becomes <image|DIRNAME/name.pdf|Wmm|Hmm||> using the
  sizes written by the figure script (mm, already scaled).
- Inside math, runs of 2+ ASCII letters are split with the invisible multiplication
  (ab -> a*b), except function names (gcd, max, sin, ...) and tag/unit arguments.
"""
import argparse, json, re, sys
from pathlib import Path

SYM = {
 '≤':'leq','≥':'geq','≠':'neq','≡':'equiv','≢':'nequiv','∈':'in','∉':'nin','⊆':'subseteq','⊂':'subset',
 '⊇':'supseteq','∪':'cup','∩':'cap','∖':'setminus','∅':'varnothing','→':'rightarrow','↦':'mapsto',
 '⇒':'Rightarrow','⇔':'Leftrightarrow','⟹':'Longrightarrow','⟺':'Longleftrightarrow','⟼':'longmapsto','⟶':'longrightarrow',
 '∀':'forall','∃':'exists','·':'cdot','×':'times','…':'ldots','⋯':'cdots','ℕ':'bbb-N','ℤ':'bbb-Z',
 'ℚ':'bbb-Q','ℝ':'bbb-R','ℂ':'bbb-C','∣':'mid','∤':'nmid','±':'pm','∞':'infty','α':'alpha','β':'beta',
 'γ':'gamma','δ':'delta','Δ':'Delta','ε':'varepsilon','ζ':'zeta','θ':'theta','λ':'lambda','μ':'mu',
 'π':'pi','σ':'sigma','τ':'tau','φ':'varphi','ψ':'psi','ω':'omega','Φ':'Phi','Σ':'Sigma','ρ':'rho','ν':'nu',
 'η':'eta','ξ':'xi','χ':'chi','Ω':'Omega','Γ':'Gamma','Λ':'Lambda','Π':'Pi','Ψ':'Psi','∂':'partial','∇':'nabla',
 '⟨':'langle','⟩':'rangle','≅':'cong','∘':'circ','⌊':'lfloor','⌋':'rfloor','⌈':'lceil','⌉':'rceil',
 '∼':'sim','°':'degree','←':'leftarrow','↔':'leftrightarrow','≈':'approx','‹':'less','›':'gtr','∧':'wedge','∨':'vee',
 '¬':'neg','⋮':'vdots','⊔':'sqcup','□':'square','∎':'blacksquare','⊊':'subsetneq','≪':'ll','≫':'gg',
 '𝒫':'cal-P','𝟙':'bbb-1','∫':'int','∑':'sum','∏':'prod','√':'sqrt','⊥':'perp','∥':'parallel',
}
TEXT = {'«': '\\S', '»': '\\T'}
SAME_BYTE = set('àèéìòùÀÈÉÌÒÙçÇóíúÁÍÓÚäëïöüâêîôû')

MATH_TAGS = {'math', 'equation*', 'equation', 'eqnarray*'}
RAW_TAGS = {'text', 'math-up', 'strong', 'em', 'cwith', 'twith', 'big', 'space', 'vspace', 'vspace*',
            'hspace', 'image', 'pageref', 'label', 'reference', 'hlink', 'with'}
FUNCS = {'gcd', 'max', 'min', 'sin', 'cos', 'tan', 'mod', 'lim', 'log', 'ln', 'exp', 'det', 'deg', 'sup', 'inf',
         'arctan', 'arcsin', 'arccos', 'sinh', 'cosh', 'tanh', 'ker', 'dim', 'lcm'}

def implicit_products(s):
    out = []; i = 0; n = len(s); stack = []
    mode = lambda: stack[-1][1] if stack else 'text'
    while i < n:
        c = s[i]
        if c == '\\':
            if s.startswith('\\<', i):
                j = s.index('\\>', i) + 2; out.append(s[i:j]); i = j; continue
            out.append(s[i:i+2]); i += 2; continue
        if c == '<':
            m = re.match(r'</([\w*#-]+)>', s[i:])
            if m:
                stack.pop(); out.append(m.group(0)); i += len(m.group(0)); continue
            m = re.match(r'<(\\?)([\w*#-]+)', s[i:])
            if m:
                name = m.group(2)
                cm = 'math' if name in MATH_TAGS else ('raw' if name in RAW_TAGS else mode())
                stack.append([name, cm, bool(m.group(1))]); out.append(m.group(0)); i += len(m.group(0)); continue
            out.append(c); i += 1; continue
        if c == '>':
            if stack and stack[-1][2]: stack[-1][2] = False
            elif stack: stack.pop()
            out.append(c); i += 1; continue
        j = i
        while j < n and s[j] not in '<>\\': j += 1
        seg = s[i:j]
        if mode() == 'math':
            seg = re.sub(r'(?<![A-Za-z#])[A-Za-z]{2,}(?![A-Za-z])',
                         lambda m: m.group(0) if m.group(0) in FUNCS else '*'.join(m.group(0)), seg)
        out.append(seg); i = j
    return ''.join(out)

def encode(s):
    out = []
    for ch in s:
        o = ord(ch)
        if o < 128: out.append(ch)
        elif ch in TEXT: out.append(TEXT[ch])
        elif ch in SYM: out.append('\\<' + SYM[ch] + '\\>')
        elif ch in SAME_BYTE: out.append(ch)
        else: out.append('\\<#%X\\>' % o)
    return ''.join(out)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('src'); ap.add_argument('out')
    ap.add_argument('--assets', required=True, help='assets folder name, relative to the .tm')
    ap.add_argument('--sizes', default=None)
    a = ap.parse_args()
    txt = Path(a.src).read_text(encoding='utf-8')
    sizes = json.loads(Path(a.sizes).read_text()) if a.sizes and Path(a.sizes).exists() else {}
    def img(m):
        name, scale = m.group(1), float(m.group(2) or 1)
        if name not in sizes: sys.exit(f'missing size for figure {name}')
        w, h = sizes[name]
        return f'<image|{a.assets}/{name}.pdf|{w*scale:.1f}mm|{h*scale:.1f}mm||>'
    txt = re.sub(r'@IMG\(([\w-]+)(?:,([\d.]+))?\)', img, txt)
    if re.search(r'@\w+\(', txt): sys.exit('unresolved @ macro')
    Path(a.out).write_bytes(encode(implicit_products(txt)).encode('latin-1'))

if __name__ == '__main__':
    main()
