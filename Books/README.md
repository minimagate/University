# Libri di studio — Spark

**Spark è il formato principale dei libri del workspace.** Linguaggio semplice, spiegazioni passo passo, concetti fondamentali riconoscibili e matematica rigorosa. I capitoli seguono le dipendenze della materia; gli approfondimenti secondari sono distinti dal percorso essenziale.

## Edizioni principali

| Corso | Periodo | Libro |
|---|---|---|
| Aritmetica | settembre–ottobre 2026 · volume 1 | [Apri il PDF Spark](October/aritmetica-1-spark/aritmetica-1-spark.pdf) · [Progetto e sorgenti](October/aritmetica-1-spark/README.md) |
| Analisi 1 | settembre–ottobre 2026 · volume 1 | [Apri il PDF Spark](October/analisi-1-spark/analisi-1-spark.pdf) · [Progetto e sorgenti](October/analisi-1-spark/README.md) |
| Geometria 1 | settembre–ottobre 2026 · volume 1 | [Apri il PDF Spark](October/geometria-1-spark/geometria-1-spark.pdf) · [Progetto e sorgenti](October/geometria-1-spark/README.md) |
| Fondamenti di Programmazione | settembre–ottobre 2026 · volume 1 | [Apri il PDF Spark](October/fondamenti-di-programmazione-1-spark/fondamenti-di-programmazione-1-spark.pdf) · [Progetto e sorgenti](October/fondamenti-di-programmazione-1-spark/README.md) |

Il volume di Aritmetica ha 52 pagine, 12 capitoli, 23 figure e 24 esercizi con soluzioni ragionate. È il riferimento editoriale per le prossime conversioni; ogni corso avrà i propri pilastri e il proprio ordine.

Il volume di Analisi 1 ha 73 pagine, 14 capitoli, 23 figure vettoriali e 30 esercizi con soluzioni ragionate. Riparte dalla prima lezione disponibile del 23 settembre e comprende le fonti fino al 31 ottobre; l’ultima presente è del 29 ottobre. [Copertura e selezione](October/analisi-1-spark/coverage.md) · [Verifiche](October/analisi-1-spark/validation.md).

Il volume di Fondamenti di Programmazione ha 51 pagine, 9 capitoli, 12 figure e 18 esercizi con soluzioni ragionate. Copre le fonti dal 19 settembre al 31 ottobre (ultima lezione disponibile: 29 ottobre), dalla logica alla verifica e costruzione di cicli e programmi con array. [Copertura e selezione](October/fondamenti-di-programmazione-1-spark/coverage.md) · [Verifica finale](October/fondamenti-di-programmazione-1-spark/validation.md).

Il volume di Geometria 1 ha 51 pagine e copre tutte le fonti disponibili dal 23 settembre al 31 ottobre 2026, con 10 capitoli, 20 figure vettoriali e 20 esercizi con soluzioni ragionate. [Copertura e selezione](October/geometria-1-spark/coverage.md) · [Verifica finale](October/geometria-1-spark/validation.md).

## Revisione del 2 novembre 2026

Analisi, Geometria e Fondamenti di Programmazione hanno ricevuto una revisione completa di linguaggio, progressione ed esercizi. Ogni capitolo ha un «In breve» riscritto. Esempi concreti, capoversi con un passaggio alla volta, sottotitoli significativi e tracce dei programmi sostengono la lettura; Aritmetica resta il riferimento editoriale.

## Archivio

Le tre versioni Spark precedenti sono conservate integralmente in [Spark-before-deep-pass-2026-11-02](Archive/Spark-before-deep-pass-2026-11-02/README.md), con PDF e sorgenti. Le copie non sono le edizioni principali. L’[indice dell’archivio](Archive/README.md) descrive ciò che è effettivamente presente.

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
    analisi-1-spark/
      analisi-1-spark.pdf · analisi-1-spark.tm
      source/ · templates/ · assets/ · scripts/ · checks/ · reviews/
      build.sh · README.md · source-audit.md
      coverage.md · editorial-notes.md · validation.md
    geometria-1-spark/
      geometria-1-spark.pdf · geometria-1-spark.tm
      source/ · templates/ · assets/ · scripts/ · build.sh
      coverage.md · source-audit.md · editorial-notes.md · validation.md
    fondamenti-di-programmazione-1-spark/
      PDF · TeXmacs · source/ · templates/ · assets/ · scripts/
      coverage.md · source-audit.md · editorial-notes.md · validation.md
  Archive/
    README.md
    Spark-before-deep-pass-2026-11-02/
      analisi-1-spark/ · geometria-1-spark/
      fondamenti-di-programmazione-1-spark/
```

Ogni libro Spark è un progetto completo e rigenerabile. I nomi dei mesi restano quelli inglesi già usati; i numeri dei volumi seguono il corso. Convertire il volume 1 mantiene il numero 1. Un volume precedente e la sua conversione non sono due volumi successivi.

Per chiedere un nuovo libro basta indicare corso e periodo: Spark viene applicato automaticamente. Le procedure sono nelle skill `monthly-book`, `texmacs-book` e `book-figures`. Non si avvia automaticamente la riscrittura degli altri corsi.

I materiali originari delle lezioni restano in `Notes/` e `_transcripts/`; i libri non li sostituiscono come evidenza del corso. Le versioni Spark precedenti sono state copiate come pacchetti completi prima della revisione, conservandone i contenuti.
