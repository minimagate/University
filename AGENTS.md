<!-- generated-by: lecture -->
# University Workspace

## Purpose

This is a university study workspace managed partly by the `lecture` CLI. Help the user understand course material, answer questions, work from existing course context, and create useful study notes. The filesystem is the source of truth for the workspace.

## Workspace map

### `Notes/`

- User-authored and agent-assisted study material.
- Writable.
- Intentionally flexible: there is no required taxonomy.
- Preserve the organization already present; do not reorganize broadly unless asked.

### `Notes/<Course>/Lectures/`

- Lecture-generated structured study notes derived from `_transcripts/`.
- They are curated study material and may later contain manual edits; do not overwrite them casually.
- Their `source_transcript` and `source_hash` frontmatter identify the source and generation state.

### `_transcripts/`

- Generated lecture corpus, primarily read-only.
- Each Markdown file represents one processed lecture.
- YAML frontmatter stores `type`, `course`, `date`, `title`, `summary`, `source_audio`, `duration_seconds`, `transcription_model`, `metadata_model`, `metadata_status`, and `transcribed_at`.
- The body contains the raw ASR result under `## Transcript`.
- Transcripts are source evidence; generated lecture notes do not replace them when exact wording matters.
- Read freely, but do not rewrite transcript text or metadata as part of unrelated work. Never silently correct it.

### `_audio/`

- Original lecture recordings and immutable source material.
- Never rename, delete, move, edit, replace, or create files here.

### `*.base`

- Obsidian Bases views: a presentation and query layer, not authoritative data.
- Do not duplicate transcript metadata into them.
- Do not edit a Base unless the user explicitly asks.

## Course correspondence

A course named `Analisi I` normally maps to:

```text
Notes/Analisi I/
_transcripts/Analisi I/
_audio/Analisi I/
```

Use this correspondence when gathering context. Course names are directory names; preserve their spelling.

## Context gathering

For a question about a course:

1. Identify the course.
2. Inspect `Notes/<Course>/` first for authored knowledge.
3. List transcript filenames, dates, titles, and summaries under `_transcripts/<Course>/`.
4. Select only likely relevant transcripts.
5. Read full transcript bodies when they are needed.
6. Prefer existing notes over recreating the same material.

Do not scan every transcript in every course when a smaller set answers the question.

## Writing notes

- Write study material under `Notes/<Course>/`.
- Follow the current organization. If none is clear, put the note directly in the course folder instead of inventing a hierarchy.
- Use normal Markdown and Obsidian links when they genuinely help.
- Prefer one useful note over many tiny files.
- Do not put authored notes under `_transcripts/` and never modify `_audio/`.

## Source fidelity

`_transcripts/` is source material; `Notes/` is curated understanding. ASR can misrecognize names, formulas, and symbols. Distinguish transcript wording from your explanation, use surrounding context to resolve small errors, and state uncertainty when it matters. Never alter the stored transcript because you inferred the intended wording.

When asked what the professor said, prioritize transcript evidence. For a conceptual explanation, you may go beyond the lecture, but distinguish outside explanation from lecture content when relevant.

## Skills

Additional procedures live in `.agents/skills/`. Read the relevant skill for the task instead of loading every skill every time. `vault-structure` explains files and metadata, `course-context` explains efficient research, and `note-authoring` explains how to write study material.

## Books — Spark is the default

All new course books and conversions use the **Spark** teaching method. Follow `monthly-book` end to end; use `texmacs-book` and `book-figures` for production. The current editorial reference is `Books/October/aritmetica-1-spark/`. Inspect `Books/README.md` for main editions and the conversion queue.

- Main editions live in `Books/<Month>/<slug>-<N>-spark/`, with PDF, native TeXmacs, editable chapters, figures, local build scripts and companion documentation.
- Older editions live in `Books/Archive/<Month>/`. They are preserved references, not the main books. Do not silently count archived copies as new volumes or assume their material is already mastered.
- A request to convert an existing period retains the volume number; a genuine continuation follows the verified stopping point. Preserve course directory spellings; naming details are in `monthly-book`.

Gather every note and matching transcript for the course/period, standalone notes, the previous relevant Spark coverage and any supplied extras. Analyze the main concepts and dependencies before choosing an order. Sources stay untouched.

Spark means **simple language, narrative prose that is pleasant to read, patient step-by-step explanations, rigorous mathematics and visible conceptual pillars**. Begin with understandable examples, explain why definitions and proof moves are useful, then formalize and demonstrate. Clearly name main concepts in titles/index and highlight essential definitions. Adapt the order and pillars to the course; the arithmetic example is not a universal topic list.

The prose tells a story: a concrete question, the obstacle it meets, the way out, and the definition or theorem as the answer. Sentences are connected by real connectives, vary in length and read naturally aloud; avoid staccato strings of short declaratives, colons as the default link, personified abstractions («la funzione cerca», «la verifica completa») and remarks addressed to a reviewer. The voice and an approved before/after example are in `.agents/skills/monthly-book/references/spark-standard.md` and `prose-example.md`.

Cover all main concepts. Keep the reading manageable by selecting secondary variants/exercises, labeling optional developments and documenting omissions in `coverage.md`; trim duplication, repeated verifications and redundant examples rather than concepts. Every numbered chapter opens with a real «In breve», a short narrative paragraph whose opening varies from chapter to chapter. Develop one idea per paragraph in connected sentences; avoid dense definition catalogues, using meaningful subheadings, displayed calculations and worked traces when useful. Review the natural language and rendered density of every chapter and solution. No fixed page/chapter count, quotas for other boxes or proof-recipe toolbox. Use «Anatomia di una dimostrazione» when it helps, and provide explained exercise solutions. Keep the classical TeXmacs typography and useful monochrome vector figures. The cover names the edition month and year (for example «ottobre 2026»), not the span of months covered.

Deliver a finished, regenerable PDF after separate mathematical and editorial reviews, exact checks of computations, and visual inspection of every page. Include `coverage.md`, `editorial-notes.md`, `validation.md` and the source hash manifest. Ask only for genuinely missing course/period information or actions beyond existing authorization. Do not rewrite the other courses merely because they are waiting in the conversion queue.

## Explicit intent required

Ask before deleting notes, reorganizing a course, renaming many files, modifying Bases, touching generated transcripts, or changing `.agents/` or `AGENTS.md`. `_audio/` is never to be modified.
