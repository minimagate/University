# TeXmacs formatting rules

## Typography and page layout

- Use the default Computer Modern text and mathematics, 11 pt, A4. Do not assign `font` or `math-font`.
- Horizontal margins: 24 mm; top: 21 mm; bottom: 22 mm. Preserve the paragraph spacing and page settings in `tail.tm`.
- Use a minimal, centered cover with the document title and edition date when relevant. Wrap the entire centered block in `<\with|par-mode|center> … </with>`.
- Center chapter titles, use small caps for the chapter number, and use title size 1.7 without bold. Section titles use size 1.12 and bold, as defined in `preamble.tm`.
- Include chapters and main sections in the contents. Suppress subsections with `subsection-toc`, never `section-toc`.
- Use fine monochrome vector figures. Preserve their aspect ratio and physical dimensions; keep each figure and caption together.

## Preserved templates

`preamble.tm` contains the heading, contents, box and figure macros. `tail.tm` closes the body and supplies the initial page settings. These are fragments, not standalone documents. A native document needs its TeXmacs header, style and opening body before the preamble, then its content and the tail.

`preamble-with-code.tm` is the same preamble with the additional `<tt|…>` macro for monospaced programming text. Use either preamble, not both.

## Native source markup

- Separate paragraphs with a blank line: a single newline is a space. Insert blank lines before list items and between paragraphs inside boxes.
- Inline mathematics: `<math|…>`; unnumbered displays: `<\equation*> … </equation*>`.
- Fractions: `<frac|a|b>`; binomials: `<binom|n|k>`; powers: `x<rsup|2>`; indices: `a<rsub|n>`; sums: `<big|sum><rsub|k=0><rsup|n>`; roots: `<sqrt|5>`; congruences: `a≡b<pmod|n>`.
- Use `<math-up|mcm>` for upright mathematical words and `<text| suriettive>` for prose inside mathematics.
- Escape a literal vertical bar as `\|`. Use `‹` and `›` for literal angle brackets in mathematical text, so they are not mistaken for tag boundaries.
- Letter runs in mathematics denote implicit products. Keep words in `<math-up|…>` or `<text|…>`. Mathematical spaces disappear, including spaces in permutation cycles.
- Text emphasis: `<strong|…>` and `<em|…>`; lists: `<\itemize> … </itemize>` and `<\enumerate> … </enumerate>`. Use Italian «quotes» when writing Italian.
- Use native TeXmacs image objects, including vector PDFs, inside `<figura|IMAGE|Caption.>`. Set explicit physical dimensions from the archived `sizes.json` and preserve proportions. `IMAGE` denotes an actual TeXmacs image object, not literal text.
- Save valid native TeXmacs encoding through the editor. Shell `echo` can interpret backslashes and damage tags.

## Optional presentation macros

| Markup | Presentation |
|---|---|
| `<\concetto|Name> … </concetto>` | Key definition or principle |
| `<\inbreve> … </inbreve>` | Short orientation |
| `<\guidato|Title> … </guidato>` | Worked example |
| `<\attenzione|Title> … </attenzione>` | Consequential error and correction |
| `<\immagine|Title> … </immagine>` | Mental image |
| `<\anatomia|Title> … </anatomia>` | Proof commentary |
| `<\verifica|N> … </verifica>` | Exercise or check |

Titles start with capitals. Box cells may break over pages; avoid stranded labels and one-line first fragments. These macros are optional formatting tools.

## Export and visual checks

Use paper layout and white paper for PDF export. Avoid `TeXmacs -C in.tm out.pdf`, which may export the screen's dark theme. Refresh the contents and references before saving and exporting.

Inspect the rendered pages for complete contents, correct references, heading spacing, box breaks, readable figures, attached captions, table wrapping and unintended blank pages. Check tag syntax when a document opens blank. Preserve the established type size and margins while fixing layout.
