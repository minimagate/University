---
name: format-books-for-obsidian
description: Format explicitly selected standalone Markdown study recaps under Books for Obsidian while preserving their mathematics. Exclude Spark book bundles, book indexes, source audits, coverage/editorial/validation documents, and archives unless specifically requested.
---

# Format Books for Obsidian

Adapt standalone Markdown study recaps to the conventions used by nearby formatted notes. Spark TeXmacs/PDF bundles are now the main books; their Markdown companions are documentation, not lecture recaps. Preserve meaning, placement, filename, examples, hypotheses and reasoning.

## Select the files

- At the start, inspect `Books/` and Git status. When the user says “new files,” limit edits to untracked or newly added Markdown files that have not already been formatted.
- If the user names files, edit exactly those files.
- Exclude `Books/Archive/` and all `*-spark/` bundles by default. Never apply book-note frontmatter to `Books/README.md`, archive indexes, coverage, editorial notes, validation, source audits, manifests or build documentation. An explicit documentation-formatting request should preserve the document’s actual role.
- Do not edit `Notes/`, `_transcripts/`, `_audio/`, `*.base`, or unrelated workspace files.
- Compare with nearby formatted Books notes before choosing metadata or presentation details.

## Obsidian format

Give each note YAML frontmatter with this shape, using values supported by the note itself:

```yaml
---
type: book-note
course: <actual course identified from the note or source>
date: YYYY-MM-DD
title: <concise note title>
topics:
  - <useful topic>
---
```

Determine the course from the note or source, not a month/archive parent directory. Use the lecture or source date when present. Omit `date` rather than inventing it when no date can be established. Keep `topics` short and content-based; omit it if reliable topics cannot be inferred.

After the frontmatter:

- use exactly one level-one heading matching `title`;
- when the source identifies a lecture, render it as `> **Lezione:** <date> — <lecture title>`;
- preserve a clear `##`/`###` hierarchy;
- format recurring labels such as questions, intuitions, and definitions as bold lead-ins, for example `**Domanda.**` and `**Definizione formale.**`;
- use ordinary CommonMark tables and lists that render correctly in Obsidian.

## Mathematics

- Convert inline mathematics from `\(...\)` to `$...$`.
- Convert display mathematics from `\[...\]` to a separate `$$` block.
- Preserve LaTeX commands and environments inside the delimiters.
- Do not mistake spacing after a LaTeX line break, such as `\\[4pt]`, for a display-math delimiter.
- Keep display delimiters balanced and on their own lines.

Do not rewrite formulas merely for stylistic preference. Correct a mathematical statement only when the user requests content correction or the intended form is unambiguous and the change is reported.

## Validate

Before finishing, check every edited file for:

- valid YAML frontmatter;
- exactly one `#` heading;
- balanced `$$` delimiter lines;
- absence of legacy `\(...\)` delimiters and standalone `\[...\]` display delimiters;
- clean whitespace with `git diff --check`.

Report which Books files were formatted and whether validation passed.
