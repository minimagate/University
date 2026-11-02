# Libri di studio — Spark

**Spark è il formato principale dei libri del workspace.** Linguaggio semplice, spiegazioni passo passo, concetti fondamentali riconoscibili e matematica rigorosa. I capitoli seguono le dipendenze della materia; gli approfondimenti secondari sono distinti dal percorso essenziale.

## Edizioni principali

| Corso | Periodo | Libro |
|---|---|---|
| Aritmetica | settembre–ottobre 2026 · volume 1 | [Apri il PDF Spark](October/aritmetica-1-spark/aritmetica-1-spark.pdf) · [Progetto e sorgenti](October/aritmetica-1-spark/README.md) |

Il volume di Aritmetica ha 52 pagine, 12 capitoli, 23 figure e 24 esercizi con soluzioni ragionate. È il riferimento editoriale per le prossime conversioni; ogni corso avrà i propri pilastri e il proprio ordine.

## In attesa di conversione

I volumi precedenti sono conservati nell'archivio temporaneo. Diventeranno edizioni principali quando saranno ricostruiti con il metodo Spark e verificati.

| Corso | Volume esistente | Stato |
|---|---|---|
| Analisi 1 | [ottobre 2026 · volume 1](Archive/October/analisi-1.pdf) | Da convertire in Spark |
| Geometria 1 | [ottobre 2026 · volume 1](Archive/October/geometria-1.pdf) | Da convertire in Spark |
| Fondamenti di Programmazione | [ottobre 2026 · volume 1](Archive/October/fondamenti-di-programmazione-1.pdf) | Da convertire in Spark |

L'[edizione precedente di Aritmetica](Archive/October/aritmetica-1.pdf) è già sostituita da Spark ed è conservata per confronto. L'archivio non è la serie principale.

## Organizzazione

```text
Books/
  README.md
  October/
    aritmetica-1-spark/
      aritmetica-1-spark.pdf
      aritmetica-1-spark.tm
      source/ · templates/ · assets/ · scripts/
      build.sh
      coverage.md · editorial-notes.md · validation.md
  Archive/
    README.md
    relocations.json
    October/
      vecchi PDF · sorgenti TeXmacs · mappe · cartelle assets
```

Ogni libro Spark è un progetto completo e rigenerabile. I nomi dei mesi restano quelli inglesi già usati; i numeri dei volumi seguono il corso. Convertire il volume 1 mantiene il numero 1. Un volume precedente e la sua conversione non sono due volumi successivi.

Per chiedere un nuovo libro basta indicare corso e periodo: Spark viene applicato automaticamente. Le procedure sono nelle skill `monthly-book`, `texmacs-book` e `book-figures`. La coda sopra non avvia automaticamente la riscrittura degli altri corsi.

I materiali originari delle lezioni restano in `Notes/` e `_transcripts/`; i libri non li sostituiscono come evidenza del corso. I PDF, i sorgenti, le mappe e le figure archiviati sono stati spostati insieme conservandone i contenuti.
