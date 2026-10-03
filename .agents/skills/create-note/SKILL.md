---
name: create-note
description: Create a polished university study note from material the user provides, such as pasted text, files, images, slides, or existing vault sources. Use when the user wants supplied material turned into a new note; do not use for weekly recaps or for merely answering a question about the material.
---

# Create Note

Turn the user's material into one durable study note that matches the organization and writing style already used in this vault.

## Understand the material

- Inspect all material the user identifies before drafting. Treat pasted text, attached files, images, and explicitly named vault files as the source set.
- Determine the course, topic, intended depth, and requested destination from the user's request and the material. Ask only when an unresolved ambiguity would materially change the note or its placement.
- When the material belongs to a course, inspect `Notes/<Course>/` for nearby notes and local conventions. Improve an existing relevant note when that is clearly better than creating a duplicate, unless the user explicitly asks for a new file.
- Do not search for or add outside material unless the user asks. If a small clarification is necessary to make the note coherent, label it as added explanation rather than attributing it to the supplied source.

## Placement and filename

- Honor an exact path supplied by the user. Otherwise write under `Notes/<Course>/`, following the course's existing organization.
- Use `Notes/<Course>/Lectures/` only when the material is specifically a lecture and the user wants a lecture note. Do not invent a new hierarchy when no clear one exists.
- Choose a concise, descriptive Markdown filename consistent with neighboring notes. Never write authored notes under `_transcripts/`, modify `_audio/`, or edit a `*.base` file.
- Before writing, check for a note covering the same material. Do not overwrite useful manual work; integrate carefully or choose a distinct file when appropriate.

## Write the note

- Follow the formatting of nearby notes: one `#` title, a clear `##`/`###` hierarchy, explanatory prose, and lists only where they improve scanning.
- Preserve useful source structure without reproducing the source mechanically. Remove repetition and filler while keeping definitions, assumptions, reasoning, examples, proof ideas, worked steps, and important qualifications.
- Use **bold** for important terms, inline `$...$` and display `$$...$$` LaTeX for mathematics, fenced code blocks for code, and Obsidian links only when they genuinely aid navigation.
- Adapt the structure to the subject. Avoid stock sections such as “Key Takeaways”, “Conclusion”, or “Why This Matters” unless the material calls for them.
- For mathematics, keep hypotheses and logical dependencies visible, distinguish definitions, results, examples, and proofs, and retain edge cases that affect correctness.
- For programming, preserve runnable syntax, explain the role of important code, and distinguish code from pseudocode.

## Source fidelity

- Represent the supplied material faithfully. Do not invent quotations, formulas, proof steps, citations, or claims that are absent or uncertain.
- Treat OCR, ASR, handwriting, and photographed notation as potentially imperfect. Resolve obvious issues from context; mark consequential uncertainty instead of silently guessing.
- If the source conflicts with an existing note, preserve the distinction rather than silently choosing one version.
- Include source links or a short source section when the source is a vault file or when attribution will help the user return to the original. Do not add source metadata mechanically when it provides no value.

## Finish

Review the saved note for a descriptive title, coherent progression, accurate notation, resolved internal references, and consistency with neighboring notes. Report the created or updated path and briefly mention any material uncertainty.
