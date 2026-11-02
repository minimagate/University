---
name: book-figures
description: Design, generate and check fine-line SVG drawings with vector PDF copies for native TeXmacs Spark books under Books/. Use for new or revised book figures; the monthly workflow is in monthly-book and native production in texmacs-book.
---

# Spark book figures

A drawing makes one idea visible: why a formula is true, how a definition works or how a procedure moves. Choose figures alongside the explanation. Use a simple memorable object (dominoes, drawers, tiles) when it clarifies the mathematics; do not add a figure merely to fill a chapter. There is no per-chapter quota. For an algorithm, a short state trace or compact table may explain the step better than another drawing. Use the format that makes the reasoning visible and interrupts dense exposition usefully; do not add decoration to disguise a wall of text.

Spark is the default for new books. The current reference is `Books/October/aritmetica-1-spark/`; historical flat volumes in `Books/Archive/` do not set the editorial model. Reuse the existing figure library and useful vector originals. Preserve the current Spark in place and use its same flat `assets/` layout for every bundle.

## Drawing style

- Monochrome fine lines: `W=1.0`, `W_THIN=0.7`, `W_BOLD=1.9` only for the focal element; light-grey fill `GREY`, helper lines/grids `MID`. Keep SVG originals and vector PDF copies; never rasterize them for the book.
- STIX Two labels, as in the existing figure library; keep the book's Computer Modern defaults. `F.m(...)` makes letters italic and digits upright, supports `a_n`, `2^{n-1}` and backticks for upright words.
- Fixed physical scale: 1 SVG unit = 0.25 mm. Main labels 14–15, secondary 13, notes 11–12. Usual widths 400–640 units (100–160 mm within a 162 mm text column). Leave at least 20 units around labels.
- Consistent filled narrow arrows: `F.arrow`, `shorten=` for circles, `bend=` for curves. Put explanations in the TeXmacs caption; use short labels inside the figure.
- Every SVG needs a useful `<title>` and `<desc>` through `Fig`'s title/description arguments.

## Bundle files and rebuild

In `Books/<EnglishMonth>/<book-slug>-<N>-spark/assets/`, keep:

- `figlib.py`, `disegni.py` (one function per drawing in teaching order), `svg-to-pdf.swift`;
- the editable `.svg` originals and same-stem vector `.pdf` copies;
- `sizes.json` (figure stem → width/height in mm) and `fonti.json` (source paths/hashes and provenance, coordinated with the monthly coverage map).

Copy `scripts/disegni-template.py` as `disegni.py`, with the library and converter. Do not overwrite an existing `fonti.json` when regenerating drawings. The `.tm` references the PDF copies using `@IMG(name)` during the build: TeXmacs cannot convert SVG locally.

```sh
# From the bundle root; figures are already supplied for a normal book rebuild.
python3 assets/disegni.py assets assets/sizes.json
# Keep Swift caches inside scratch on restricted systems.
mkdir -p "$SCRATCH/swift-cache"
swift -module-cache-path "$SCRATCH/swift-cache" assets/svg-to-pdf.swift assets
sh build.sh
```

Generation needs Python 3; SVG→PDF needs macOS Swift/WebKit and the existing label fonts. Reading and rebuilding a bundle with its supplied PDF figures needs no Swift. When dimensions change, regenerate `sizes.json` and rebuild the native document: physical image sizes are written into the `.tm`.

`scripts/esempio-aritmetica.py` retains 37 reusable drawing patterns from the historical October volume (now `Books/Archive/October/aritmetica-1-assets/`). Copy patterns selectively; Spark's current assets also preserve them. Do not copy the historical chapter structure.

## Useful visual patterns

| Idea | Drawing |
|---|---|
| sets, inclusion-exclusion | Venn zones with counts |
| functions | domain/codomain dots and arrows |
| product rule, unordered choices | choice tree, regrouped leaves |
| subsets, anagrams | binary choices, numbered tiles collapsing into a word |
| stars and bars | stars, bars, braces; linked number lines for shifts |
| induction, recurrences | dominoes, nested layers, small tilings |
| division, gcd | multiples on a line, Euclidean rectangle |
| divisors, gcd/lcm | exponent lattice and min/max |
| double counting | the same tokens by rows and columns |
| Diophantine equations | lattice line and integer steps |
| congruences, orders | clocks, cycles, residue tables |
| Chinese remainder theorem | complete/incomplete residue grid |
| groups, structures | symmetries, permutation strands, nested examples |
| lifting | small branching trees |
| analysis | `F.axes(...)`, `F.plot(...)`, tangents, shaded area, sequence dots |

## Check in isolation and in the book

Render every vector PDF with the `texmacs-book` review helpers and inspect a contact sheet, then every figure at reading scale in the exported book. Check edge clearance, labels and arrows, unwarped proportions, caption placement, and consistent physical size. Verify every encoded count, grid, cycle or numerical claim independently. Confirm that the picture explains the adjacent text and that all used stems have SVG, PDF and size entries. Rebuild and recheck after repairs; record validation in the bundle's `validation.md`.
