---
name: monthly-book
description: Create, continue, convert or revise a course study book for a month or period using the Spark teaching method and native TeXmacs. Use for requests about the course book, including unnamed default books; do not use for standalone notes or a conceptual answer.
---

# Monthly books — Spark by default

Spark is the user's default for every course book. Read `AGENTS.md`, `Books/README.md` and [the Spark teaching standard](references/spark-standard.md). The production reference is `Books/October/aritmetica-1-spark/`: inspect its coverage and production files. Adapt to the subject; do not copy its topic list, chapter count or page count.

Use sibling skills `texmacs-book` for native authoring/build/visual checks and `book-figures` for illustrations. Ordinary book work does not modify `.agents/`, `AGENTS.md`, Notes, transcripts, audio or Bases. Explicit user authorization can include a policy update or archival operation; do not ask again for an action already authorized.

## Placement and continuity

- Main books: `Books/<Month>/<slug>-<N>-spark/`, with `<slug>-<N>-spark.pdf` and `.tm` inside. Months retain their English names. First volume starts at the first available lesson through the requested end date.
- The edition is named by its month: the cover, `Books/README.md` and bundle READMEs say «ottobre 2026», never «settembre e ottobre» or «settembre–ottobre», even when the first lessons fall in an earlier month. Exact source dates belong in `coverage.md` and `source-audit.md`; the reader-facing preface does not need them.
- Book slugs: Aritmetica → `aritmetica`; Analisi 1 → `analisi`; Geometria 1 → `geometria`; Fondamenti di Programmazione → `fondamenti-di-programmazione`. Preserve actual course directory names in Notes and transcripts. For other courses choose a consistent lowercase hyphenated slug.
- Old books are in `Books/Archive/<Month>/`; they remain secondary references and figure/source libraries, not the default edition or assumed mastered prerequisites.
- Discover main Spark volumes with `sources.py books "<Course>"`; use `--archive` or `--all` explicitly for older versions. Read the latest relevant main volume's coverage/editorial notes and stopping point. Do not count files, figure PDFs, legacy copies or alternate editions as extra volumes.
- Converting a period already covered by legacy volume N keeps N. Continuing beyond previous material normally uses N+1; inspect coverage before choosing. If no prior Spark exists, consult the archive explicitly and build necessary bridges rather than assuming its material is understood.
- Preserve an existing main volume's manual edits. A requested revision authorizes the relevant update; avoid replacing a different volume without permission. Ask only for genuinely ambiguous course/period or an unauthorized overwrite.

## Source analysis and planning

Run from the vault root, writing intermediate files to the session scratchpad:

```sh
python3 .agents/skills/monthly-book/scripts/sources.py books "<Course>"
python3 .agents/skills/monthly-book/scripts/sources.py census "<Course>" FROM TO --json "$SCRATCH/fonti.json"
```

The census enumerates `Notes/<Course>/Lectures/` and `_transcripts/<Course>/`. Inspect the course folder first for relevant authored notes or supplied material outside `Lectures/`; record any extra source separately instead of claiming the census discovered it. Read every lecture note and matching transcript in the requested period, including standalone notes without recordings and transcript-only topics. Read large corpora in bounded batches and record progress; never claim full reading when output was truncated. ASR is evidence, not certified mathematics. Compare notes, transcript context and mathematical reasoning; leave sources untouched. Do not scan other courses without a reason.

Before drafting, build a topic/prerequisite map: main concepts, central results and proofs, techniques, important qualifications, secondary variants and exercises. Plan the mental model and guiding question for each chapter. Put prerequisites before uses and avoid circular proofs. Reorder freely when this helps comprehension. No required chapter/page count.

Use `templates/mappa.md` as the planning/source-audit starting point. Distinguish program content from added explanation. Retain every main concept; secondary examples and alternative proofs may be compact, optional or omitted with a reason in coverage. Do not silently weaken a theorem or drop a necessary hypothesis to shorten it.

## Write and evaluate

Write in the tone of the teaching standard and otherwise use your own judgment about structure, rhythm and presentation. Name the main concepts clearly so they can be found in the contents. Keep proofs complete and rigorous, and give explained answers to the exercises. Reread the book as a beginner would and fix whatever is unclear.

Use delegation when authorized and useful: assign bounded source/writing blocks with explicit dependencies, keep one integrated editorial voice, independently review proofs and answers. The orchestrator must assess the complete book; parallel writing does not replace integration.

## Production and validation

Reuse correct existing vector drawings; add only figures that explain an idea. Check captions, numerical labels, scale and consistency with the text. Follow `texmacs-book` to build from editable chapters and retain all local regeneration dependencies.

Verify computed examples, figures and answers with independent exact arithmetic/enumeration where appropriate. Preserve useful check scripts. Review proofs separately: passing finite checks does not prove a theorem. If a check disagrees with the text, investigate both rather than forcing the test to pass.

Compile in scratch, inspect **every rendered page**, then inspect formulas/figures/problem pages at reading size. Fix stale index entries, broken boxes, overflows and nearly empty pages. Build/export again from the actual final destination and check the delivered copy.

## Deliver the main bundle

Include PDF, complete `.tm`, `source/`, `templates/`, `assets/`, required `scripts/` (including `export.py` with its `export.sh` wrapper), and `build.sh`. Include:

- `coverage.md`: actual chapter/section for every source topic; main/compact/omitted distinctions and exclusions;
- `editorial-notes.md`: structure, didactic additions and mathematical corrections;
- `validation.md`: checks actually performed, visual review and unresolved limits;
- `assets/fonti.json`: paths, hashes and filled chapter destinations.

A detailed `source-audit.md` is useful for larger corpora. Use the companion templates; keep editorial/source documents outside the reading PDF. The normal appendix is explained exercise solutions, without a fixed letter scheme or mandatory toolbox.

Run `sources.py verify <bundle>/assets/fonti.json`. Compare Git status with the initial state; pre-existing user changes are not failures or permission to clean them. Book production should add/update only its bundle and the Books index, unless broader work was authorized. Update `Books/README.md` so the main edition and conversion queue remain accurate. Archive a replaced main bundle only when requested or already authorized, preserving it as a unit and recording relocation if tracked references depend on it.

Deliver the finished book, not just a plan/sample. Report the PDF, size and material limitations briefly. Do not manufacture a Spark version of other courses merely because they appear in the conversion queue.
