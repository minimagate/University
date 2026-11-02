# Analisi 1 — volume 1 Spark

Periodo: dalla prima lezione disponibile, **23 settembre 2026**, al **31 ottobre 2026**, settembre incluso. Ultima lezione presente: 29 ottobre.

**60 pagine, 14 capitoli, 23 figure vettoriali e 30 esercizi con soluzioni ragionate.**

- [Libro PDF](analisi-1-spark.pdf)
- [Documento nativo GNU TeXmacs](analisi-1-spark.tm)
- [Copertura delle fonti](coverage.md), [scelte e correzioni](editorial-notes.md), [verifiche](validation.md), [audit delle fonti](source-audit.md)

Per rigenerare dalla cartella del progetto:

```sh
sh build.sh
```

Servono Python 3.8+ e GNU TeXmacs (produzione verificata con 2.1.5 su macOS). `TEXMACS_BIN` o `TEXMACS_APP` permettono di selezionare il motore; `BOOK_STEM` permette di mantenere il nome del libro se si rinomina la cartella. Tutti gli script di assemblaggio, controllo ed esportazione sono inclusi in `scripts/`.

I frammenti UTF-8 in `source/` sono i sorgenti editoriali da modificare; `templates/` conserva preambolo e impostazioni di pagina. Il file `.src` e il documento `.tm` completo sono generati. Si può modificare il `.tm` con TeXmacs, ma occorre riportare le modifiche nei frammenti prima di ricostruire: la ricostruzione li riassembla.

Le figure vettoriali sono fornite in SVG e PDF in `assets/`. Una ricostruzione normale usa i PDF già presenti e non richiede Swift. Per rigenerare i disegni, seguire `assets/README.md`. Il manifesto `assets/fonti.json` conserva percorsi, impronte e destinazioni delle 16 note e delle 5 trascrizioni.

`checks/` contiene verifiche indipendenti dei conti; `reviews/` conserva le revisioni matematiche ed editoriali. Questi materiali non sono appendici del libro di lettura. L'edizione precedente in `Books/Archive/October/` e le fonti del corso sono conservate.
