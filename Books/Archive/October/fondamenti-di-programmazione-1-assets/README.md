# Fondamenti di Programmazione 1 — materiali e note di formato

Il libro modificabile è `../fondamenti-di-programmazione-1.tm`; `../fondamenti-di-programmazione-1.pdf` è l'anteprima. La mappa delle lezioni e il progetto pedagogico sono in `../fondamenti-di-programmazione-1-mappa.md`; `fonti.json` conserva percorsi, hash e capitoli di destinazione delle fonti.

## Formato

- GNU TeXmacs 2.1.5, stile `book`, font predefinito, 11 pt, A4; testo e formule nativi. Il preambolo nascosto definisce titoli e riquadri (`inbreve`, `guidato`, `attenzione`, `immagine`, `officina`, `verifica`, `figura`).
- Esportazione con la personalizzazione locale (`TEXMACS_PATH=~/.my-texmacs/TeXmacs`) tramite *Stampa su file* (pagina sempre bianca).
- Nelle formule i prodotti di variabili usano la moltiplicazione invisibile (`a*b`).

## Disegni

19 disegni a tratto sottile, etichette in STIX Two. `disegni.py` (con `figlib.py`) genera gli SVG originali; `svg-to-pdf.swift` crea le copie PDF che il documento richiama. Scala: 1 unità SVG = 0,25 mm.

```sh
python3 Books/October/fondamenti-di-programmazione-1-assets/disegni.py
swift Books/October/fondamenti-di-programmazione-1-assets/svg-to-pdf.swift Books/October/fondamenti-di-programmazione-1-assets
```

Se cambiano le proporzioni di un disegno, aggiornare le dimensioni della sua `<image|…>` nel `.tm` (dimensioni SVG × 0,25 mm). Dopo modifiche: aggiornare l'indice in TeXmacs e riesportare il PDF.

## Verifica del 1 novembre 2026

13 note lette; transcript del 25 settembre consultato per la traccia della moltiplicazione. Ordine e dipendenze dei nove capitoli verificati. 5.640 controlli numerici e logici passati: dettagli in `verifiche.json`. Revisione visiva di tutte le 53 pagine e lettura ingrandita delle pagine sospette. Hash delle fonti verificati: 0 modifiche.

## Sorgenti di lavoro archiviate

`source/chapters/` conserva i nove capitoli, il frontespizio e le due appendici. `source/book.src` è il sorgente assemblato; `source/prep.py` elabora codice, tabelle e catene prima del convertitore della skill TeXmacs. `source/sizes.json` registra le dimensioni delle figure. Il file `.tm` consegnato resta il documento modificabile principale.

Per ricostruire (dalla radice del vault, con un percorso temporaneo distinto dall’output):

```sh
A=Books/October/fondamenti-di-programmazione-1-assets
python3 "$A/source/prep.py" "$A/source/book.src" /private/tmp/fdp-build.pre
python3 .agents/skills/texmacs-book/scripts/build.py /private/tmp/fdp-build.pre Books/October/fondamenti-di-programmazione-1.tm --assets fondamenti-di-programmazione-1-assets --sizes "$A/source/sizes.json"
sh .agents/skills/texmacs-book/scripts/export.sh "$PWD/Books/October/fondamenti-di-programmazione-1.tm" "$PWD/Books/October/fondamenti-di-programmazione-1.pdf"
```

`python3 source/check-numbers.py` ripete i controlli numerici. La mappa documenta i refusi corretti e le date discordanti nelle fonti.
