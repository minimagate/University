# Analisi 1, volume 1 — materiali e note di formato

Il libro modificabile è `../analisi-1.tm`; `../analisi-1.pdf` è l'anteprima. La mappa delle lezioni e il progetto pedagogico sono in `../analisi-1-mappa.md`; `fonti.json` conserva percorsi, hash e capitoli di destinazione delle fonti.

## Formato

- GNU TeXmacs 2.1.5, stile `book`, font predefinito, 11 pt, A4; testo e formule nativi. Il preambolo nascosto definisce titoli e riquadri (`inbreve`, `guidato`, `attenzione`, `immagine`, `officina`, `verifica`, `figura`).
- Esportazione con la personalizzazione locale (`TEXMACS_PATH=~/.my-texmacs/TeXmacs`) tramite *Stampa su file* (pagina sempre bianca).
- Nelle formule i prodotti di variabili usano la moltiplicazione invisibile (`a*b`).
- `<big|lim>` fa andare in crash TeXmacs 2.1.5: i limiti si scrivono `lim<rsub|…>`, che in display mette il pedice sotto.

## Disegni

41 disegni a tratto sottile, etichette in STIX Two. `disegni.py` (con `figlib.py`) genera gli SVG originali; `svg-to-pdf.swift` crea le copie PDF che il documento richiama. Scala: 1 unità SVG = 0,25 mm. Nelle etichette dei disegni i simboli ∀ ed ∃ vengono resi capovolti da WebKit con STIX Two: per questo il disegno dei quantificatori li scrive a parole.

```sh
python3 Books/October/analisi-1-assets/disegni.py
swift Books/October/analisi-1-assets/svg-to-pdf.swift Books/October/analisi-1-assets
```

Se cambiano le proporzioni di un disegno, aggiornare le dimensioni della sua `<image|…>` nel `.tm` (dimensioni SVG × 0,25 mm). Dopo modifiche: aggiornare l'indice in TeXmacs e riesportare il PDF.

## Verifica del 1° novembre 2026

Corpus letto per intero: 16 note (5 con transcript, 11 dagli appunti PDF). Ordine delle dipendenze controllato (vedi la mappa). Uno script indipendente (frazioni esatte, polinomi troncati, enumerazioni, valutazioni numeriche) ha controllato 2257 fatti: tutti gli esempi, gli esercizi guidati, gli sviluppi di Taylor, i dati delle figure e le risposte alle verifiche. Il controllo ha corretto due valori numerici di prova (capp. 11 e 15). Revisione visiva di tutte le 80 pagine: indice, margini (nessun contenuto fuori dalla giustezza) e pagine campione a grandezza di lettura. Hash delle fonti verificati: 0 fonti modificate.
