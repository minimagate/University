---
name: vault-structure
description: Locate university source material, main Spark book bundles and archived editions, and understand the vault metadata. Use when finding files or interpreting how workspace artifacts were produced.
---

<!-- generated-by: lecture -->
# Vault Structure

Use this skill when you need to locate course material or understand how a file was produced.

## Roots and course mirroring

The vault root contains these content trees:

```text
Notes/          authored and curated study material
_transcripts/   generated lecture corpus
_audio/         original recordings
Books/          main Spark course books and their production bundles
Books/Archive/  preserved older editions, secondary references
```

The same course name normally identifies one directory in each tree:

```text
Notes/Analisi I/
_transcripts/Analisi I/
_audio/Analisi I/
```

`Notes/` may contain any organization the user finds useful. Lecture-generated notes specifically use `Notes/<Course>/Lectures/`; other Notes remain user- or agent-authored. Do not reorganize existing files. The transcript and audio trees are managed by the CLI.

## Transcript files

A transcript is Markdown with YAML frontmatter, for example:

```yaml
---
type: transcript
course: "Analisi I"
date: 2026-09-21
title: "Limiti di successioni"
summary: "..."
source_audio: "_audio/Analisi I/Recording 127.m4a"
duration_seconds: 3600
transcription_model: "openai/whisper-large-v3-turbo"
metadata_model: "openai/gpt-5.6-luna"
metadata_status: complete
transcribed_at: "2026-09-21T10:00:00.000Z"
---
```

The operational fields are `type`, `course`, `source_audio`, and `metadata_status`. `type: transcript` is how the CLI recognizes the file. `source_audio` links it to the original recording and is used to determine whether that recording has already been processed. The transcript filename is not the processing identity; do not infer identity from a renamed filename.

`date`, `title`, and `summary` describe the lecture. `duration_seconds`, `transcription_model`, `metadata_model`, and `transcribed_at` record processing details. `metadata_status: pending` means transcription succeeded but title/summary enrichment did not; the next `lecture` run can retry metadata without retranscribing the audio. Do not casually change operational fields.

The body normally has a generated title, a summary, and `## Transcript` containing the raw ASR result. Treat that result as reference material and do not silently edit it.

## Audio and views

`_audio/` is immutable source material. Never rename, move, delete, edit, replace, or create files there. A course's generated `Transcriptions.base` view lives at `_transcripts/<Course>/Transcriptions.base`. `*.base` files are Obsidian views over transcript metadata, not a second database. The Markdown frontmatter remains authoritative; do not manually copy metadata into a Base.

Paths inside the vault should remain relative and should use `/`. Course directory names come from the filesystem. Do not construct paths from unvalidated user input or escape a course directory when writing.

## Course books

`Books/README.md` identifies the main Spark editions and conversion queue. A main bundle is `Books/<Month>/<slug>-<N>-spark/`, with native TeXmacs/PDF, editable chapter sources, figures and build/coverage documents. Older flat editions are preserved in `Books/Archive/<Month>/`. They are not the main reading material.

Use `monthly-book` for writing, continuing, converting or revising a book. Spark companion Markdown files are not lecture notes: do not add book-note metadata or reorganize them with note-formatting procedures. Archive relocations are recorded in `Books/Archive/relocations.json`; source manifests still refer to the untouched lecture corpus.
