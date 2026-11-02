# {{Course}} Spark — assets

The book is `../{{stem}}.tm`; the PDF is `../{{stem}}.pdf`. Editable chapters are in `../source/`; run `sh ../build.sh` from this directory or `sh build.sh` from the bundle root. Source topics and editorial decisions are in `../coverage.md` and `../editorial-notes.md`.

## Figures

{{Actual number}} used figures, monochrome fine-line SVG with vector PDF companions. `disegni.py` {{and figlib.py if used}} generates the SVGs; `svg-to-pdf.swift` converts them on macOS. Natural size:1 SVG unit=0.25mm; dimensions are in `sizes.json`. Match labels/numbers to the text and preserve proportions.

From the bundle root:

```sh
python3 assets/disegni.py assets assets/sizes.json
swift assets/svg-to-pdf.swift assets
sh build.sh
```

PDF companions are already included, so ordinary text recompilation does not need Swift. `fonti.json` stores source paths, hashes and chapter destinations, relative to the vault root. Validation results live in `../validation.md`.
