# Note cleanup — 9 November 2026

63 separate active notes remain. No lessons were merged or regenerated. No notes or transcripts were uploaded. All active notes identify `anthropic/claude-opus-5.5` as the teaching model, correcting the metadata on the user’s confirmation. The lecture configuration uses the same model.

## Changes

- Archived six byte-identical duplicate notes and four byte-identical duplicate transcripts.
- Shifted nine note dates forward by exactly one day to eliminate course/date collisions. Recorded each prior date in `original_date`; these are organizational date adjustments, not newly verified lecture dates.
- Updated filenames and note links, and added reverse study-note references to all 37 distinct transcripts. The original source dates remain on the transcripts.
- Retained the useful Geometria note marked `(!)` and removed the marker from its filename. It includes distinct examples and worked arguments.
- Fixed heading nesting and preserved original ISO timestamp strings.
- Corrected missing finite-field qualifications in solution counts and the characteristic assumption for polynomial root multiplicities under differentiation.
- Corrected control characters and “soggettività” in two generated transcript summaries. Raw ASR text was preserved.

## Validation

- No duplicate course/date pairs among active notes.
- No broken note targets or section references.
- All 37 transcript source hashes match the linked notes.
- `lecture teach --dry-run` reports zero pending notes.
- Compared 16,561 original note paragraphs with the final notes; only five paragraph occurrences changed, covering the documented mathematical corrections (two occur in archived duplicate versions).
- All 110 original Markdown files are preserved byte-for-byte under `originals/`.
- Audio, Bases, workspace instructions, and skills were not modified.

## Coverage and unresolved source issues

Every distinct transcript has a corresponding current study note, and the cleanup preserves existing note content. Main-topic coverage was checked using transcript summaries and note structures. This is not a claim that every proof step or example was exhaustively compared sentence by sentence against the full ASR corpus. Original PDFs cited by other notes are absent, so their source completeness cannot be independently verified here.

35 of 37 distinct transcripts reference audio files that are currently absent. Their historical paths were retained and marked `source_audio_status: missing`; the two available recordings were untouched. The Geometria 7 October source historically points into the Aritmetica audio directory; there is no recording available to verify a replacement path. The Aritmetica equivalence-relations note already had 21 October as its date while its transcript records 22 October; that pre-existing distinction was retained rather than guessed.

## Active notes by course

- Analisi 1: 16
- Aritmetica: 17
- Fondamenti di Programmazione: 15
- Geometria 1: 15

## Date adjustments

| Subject | Note | Previous date | New date |
|---|---|---|---|
| Analisi 1 | Operazioni con Taylor e parti principali | 2026-10-28 | 2026-10-29 |
| Analisi 1 | Funzioni iperboliche ed esercizi sugli sviluppi di Taylor | 2026-10-29 | 2026-10-30 |
| Aritmetica | Conteggio combinatorio e principio di inclusione-esclusione | 2026-10-06 | 2026-10-07 |
| Aritmetica | Fattorizzazione unica, congruenze e sistemi modulari | 2026-10-07 | 2026-10-08 |
| Aritmetica | Gruppi ciclici, sottogruppi e permutazioni | 2026-10-27 | 2026-10-28 |
| Aritmetica | Classi laterali e teorema di Lagrange | 2026-11-08 | 2026-11-09 |
| Geometria 1 | Fattorizzazione dei polinomi e radici complesse | 2026-09-30 | 2026-10-01 |
| Geometria 1 | Sistemi lineari, nucleo, immagine e rango | 2026-10-22 | 2026-10-23 |
| Geometria 1 | Sistemi lineari e somme dirette di sottospazi | 2026-11-04 | 2026-11-05 |

`cleanup-manifest.json` maps each original path to its final destination. `validation.json` contains verification results and the corrected paragraph occurrences. `original-inventory.json` records the original metadata and SHA-256 checksums.
