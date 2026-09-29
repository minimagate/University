---
name: weekly-recap
description: Create or update the cross-course Saturday review note in Notes/Weekly Recaps from the current week's lecture notes and transcripts. Use for weekly consolidation, panoramic review, or a time-boxed recap of university material.
---

# Weekly Recap

Build one source-grounded recap for the teaching week, optimized for a student who has already reviewed the individual lectures and now wants to lock the whole week into memory.

## Scope and placement

- Treat the recap week as Monday through Saturday in the vault timezone. Include material dated from Monday through the moment the recap is made; do not pull in Sunday or the following week.
- Write the result in `Notes/Weekly Recaps/`. Create this directory when absent.
- Use the filename `YYYY-Www - DD–DD Month.md`, based on the ISO week and the week's Monday–Saturday span. Keep the frontmatter fields `type: weekly-recap`, `week`, `period`, `created`, and `courses`.
- If the week's recap already exists, inspect it and update it without discarding useful manual edits. Do not create a duplicate.

## Gather the week's material

1. Enumerate lecture notes in `Notes/<Course>/Lectures/` whose dates fall in the period. Preserve course names exactly as found on disk.
2. Enumerate matching transcript metadata under `_transcripts/<Course>/` and check that the week's coverage is complete.
3. Read the selected lecture notes in full. Prefer them as the curated account of the material.
4. Read a transcript body only when a note is missing, ambiguous, internally inconsistent, or insufficient for an important concept. Never modify transcripts or `_audio/`.
5. If no relevant material exists, report that clearly instead of generating a generic recap.

## Design for a 90-minute Saturday review

The note is not a replacement for lecture notes and not a beginner's lesson. It should make the whole week visible at once, expose connections, and test whether the student can reconstruct the core ideas.

Allocate approximately:

- 5 minutes to orient with the week's conceptual map;
- 55–60 minutes to revisit the courses, weighted by conceptual density rather than equally;
- 15–20 minutes to active-recall prompts and short exercises;
- 5–10 minutes to repair weak points and record next-week bridges.

Prefer compact, high-information prose. Include formulas, hypotheses, distinctions, counterexamples, or pseudocode only where they unlock recall. Avoid retelling lectures chronologically, long proofs, repetitive summaries, generic study advice, and exercises that require lengthy calculation.

## Required shape

Adapt headings to the material, but preserve these functions:

1. **Flight plan** — a minute-by-minute route totaling about 90 minutes.
2. **Week at a glance** — the small set of ideas that organizes all courses.
3. **Course flyovers** — for each course: the conceptual spine, essential definitions/results, one subtle point or common confusion, and the connection to another idea from the week.
4. **Cross-course connections** — synthesize recurring structures such as logic, mappings, induction, algorithms, algebraic operations, or proof patterns. Do not force weak connections.
5. **Active recall** — concise questions answerable without notes, followed by a collapsed `> [!answer]- Soluzioni rapide` section so answers are not visible immediately.
6. **Closing lock** — a short checklist of what the student should now be able to state or do, plus at most three targeted items to revisit.
7. **Sources** — Obsidian links to the lecture notes used. Link transcripts only when their bodies materially informed the recap.

## Fidelity and quality check

- Separate source-backed course content from any added explanation when the distinction matters.
- Resolve small ASR errors through context but never invent exact formulas or claims from uncertain wording.
- Check that every included course has source material in the stated period, all source links resolve, the time budget is credible, the answer callout is complete, and the recap can actually be completed in one sitting.
