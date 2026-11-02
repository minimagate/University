---
name: texmacs-book
description: Write, build, export and visually check a native GNU TeXmacs Spark study book under Books/. Use for its editable .tm sources, layout, boxes, table of contents and PDF export; the monthly procedure is in monthly-book and drawings in book-figures.
---

# TeXmacs Spark book

Spark is the default for every new book. Use `Books/October/aritmetica-1-spark/` as the current visual and technical reference. Historical flat volumes under `Books/Archive/` are sources for continuity, not the editorial template. Follow `monthly-book` for source gathering and coverage decisions.

## Teaching and page design

Write simply and patiently: a concrete case, the reason a strategy works, then the rigorous argument. For Euclid's lemma, first show why `3∣5t` implies `3∣t` through `t=2·3t−5t`, explain why Bézout supplies this identity, then prove the general statement. Explain unfamiliar notation before using it. Name all main concepts explicitly in chapter or section titles; add concise `concetto` boxes selectively, a mental map and useful connections. A student must be able to find the course's pillars in the contents.

Choose chapter length from the reasoning. Every numbered chapter must open with the canonical `inbreve` environment containing two or three short orienting sentences. This matches Aritmetica. No page/chapter quotas, repeated seven-part structure or requirement to use the other boxes in every chapter. Keep secondary variants in an optional “Per proseguire” passage or document their omission in `coverage.md`. Use `anatomia` sparingly where it reveals a proof's decisions; include explained solutions in an appendix. Do not restore the old “Officina” language or a compulsory proof-toolbox appendix.

Preserve the canonical preamble and tail:

- Computer Modern defaults, 11 pt, A4; never assign `font` or `math-font`.
- Minimal cover: course, month and year. Centered chapter titles, small-caps chapter number, title size 1.7 without bold; 24 mm horizontal and 21/22 mm vertical margins.
- Contents include chapters and main sections; suppress subsections with `subsection-toc`, never `section-toc`. No sources/editorial appendix in the PDF: use the companion Markdown and `fonti.json`.
- Fine monochrome vector figures, the existing figure library and SVG+PDF originals (see `book-figures`).

## Reproducible bundle

Build in a session scratch directory and deliver the whole checked bundle to:

```text
Books/<EnglishMonth>/<book-slug>-<N>-spark/
  <book-slug>-<N>-spark.pdf
  <book-slug>-<N>-spark.tm
  source/00-front.tm, 01.tm, …, 99-app.tm
  templates/preamble.tm, tail.tm
  assets/    # SVG, PDF, sizes.json, fonti.json, figure generators
  scripts/          # build.py, check.py, assemble.sh, export.sh, export.py
  build.sh
  coverage.md, editorial-notes.md, validation.md
```

`source/*.tm` are the editable UTF-8 fragments; the assembled `.src` and native `.tm` are generated. Keep the same flat `assets/` layout as the current Spark: figure PDFs, SVGs, generators and manifests live directly there. Preserve the current Spark in place.

Copy this skill's `scripts/` and `templates/` into the bundle; copy `templates/build.sh` to its root. Use `front.tm`, `chapter.tm` and `appendices.tm` as editable examples, replacing their placeholders and selecting only useful optional structures. Copy figure support from `book-figures` into `assets/`. In a newly named bundle directory, run:

```sh
sh build.sh
```

Python 3.8+ and GNU TeXmacs (tested with 2.1.5) rebuild the supplied PDFs without Swift or GNU `timeout`. `BOOK_STEM` can override the directory-derived filename. `TEXMACS_BIN` or `TEXMACS_APP` selects the engine; `TEXMACS_PATH` can select an installed customization. Export uses a temporary TeXmacs user directory unless `TEXMACS_HOME_PATH` is supplied. `export.sh` typesets, refreshes the contents/references, saves the native document and prints on white paper. Its Python helper propagates engine failure/timeouts and accepts only a newly created complete PDF; a failed export keeps the previous PDF and restores the input `.tm`. The bundle build also keeps the published `.tm` until export succeeds.

A direct TeXmacs edit of the generated full `.tm` is valid, but rebuilding from `source/` replaces it: transfer intended changes back to those fragments first. Include a short bundle README with the build command and this distinction.

## Source markup

- Separate paragraphs with a **blank line**; one newline is a space. Put a blank line before each `<item>` and paragraph within a box. Assembly inserts blank lines between fragments.
- Inline math `<math|…>`; display `<\equation*> … </equation*>`. Fractions `<frac|a|b>`, binomials `<binom|n|k>`, powers `x<rsup|2>`, indices `a<rsub|n>`, sums `<big|sum><rsub|k=0><rsup|n>`, `<sqrt|5>`, congruences `a≡b<pmod|n>`, upright words `<math-up|mcm>`, text in math `<text| suriettive>`.
- Escape literal `|` as `\|`; use `‹` / `›` for literal `<` / `>` in math. Unicode is converted by `build.py` into native entities/Cork bytes.
- Letter runs inside math become implicit products (`ab` → `a*b`); recognized function names stay intact. Keep words in `<math-up|…>` or `<text|…>`. Math spaces disappear, including in permutation cycles.
- Text: `<strong|…>`, `<em|…>`, `<\itemize>`, `<\enumerate>`, Italian «quotes».
- Figures: `<figura|@IMG(name)|Caption.>` or `@IMG(name,0.85)`. `sizes.json` supplies physical dimensions; TeXmacs embeds the vector PDF. Figure and caption stay together.

Keep one conceptual move per real paragraph. Separate calculations, definitions and the reasons for choosing a proof step. Use meaningful subheadings or a small trace table for changes of subject or state; avoid both dense prose catalogues and fragmented notes.

The canonical macros are available when helpful; only the opening `inbreve` is required in every numbered chapter:

| Macro | Purpose |
|---|---|
| `<\concetto|Name> … </concetto>` | Short definition or main principle; name it explicitly |
| `<\inbreve> … </inbreve>` | Required chapter-opening orientation |
| `<\guidato|Title> … </guidato>` | Patient worked example, with reasons for the steps |
| `<\attenzione|Title> … </attenzione>` | A consequential error and its correction |
| `<\immagine|Title> … </immagine>` | A useful mental image |
| `<\anatomia|Title> … </anatomia>` | Why a proof chooses its moves |
| `<\verifica|N> … </verifica>` | Selected checks with explained appendix solutions |

Titles start with capitals. Box cells can break over pages; avoid stranded labels or a one-line first fragment.

## Verify before delivery

Run `python3 scripts/check-editorial.py .` before export (included in the bundle build). It fails when a numbered chapter lacks its opening `In breve` and flags unusually long prose for human review; it cannot evaluate clarity or mathematical density. Read the prose and rendered pages independently.

Run syntax checking before export: a TeXmacs parse error can silently load a blank page. `check.py` checks tag balance, not mathematical correctness. Verify computations and proof hypotheses independently at the scale required by the text; record findings in `validation.md`.

Compile the macOS review helpers into scratch (Swift and system frameworks only):

```sh
sh scripts/tools.sh "$SCRATCH/bin"
"$SCRATCH/bin/pdfrender" book.pdf "$SCRATCH/pages" 0.6
"$SCRATCH/bin/contact" "$SCRATCH/sheet.png" 6 240 330 "$SCRATCH"/pages/*.png
```

Look at every page; inspect dense or suspicious pages at 1.2–2.0. Compare difficult passages and chapter openings with Aritmetica at the same reading scale. Check dense uninterrupted prose, definition catalogues and proof boxes, not only clipping. Keep type size and margins; repair density through explanation and structure.

Check complete contents with main sections, correct pages/references, named conceptual pillars, the cover and chapter titles, box margins and breaks, products rendered as products, readable unwarped figures/captions, no stranded headings or unexplained empty pages, and short table columns that do not wrap awkwardly. Rebuild and review after repairs. A successful exit alone is not evidence of a readable book.

Avoid `TeXmacs -C in.tm out.pdf`: it can export the dark screen theme. `par-mode` must wrap a whole block; use the canonical heading macros. Never write native tags with shell `echo`, which may interpret backslashes; use the supplied assembler. The engine's “Installation completed successfully” message is initialization, not proof of PDF generation.
