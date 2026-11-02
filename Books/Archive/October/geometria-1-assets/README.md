# Geometria 1, volume 1 — materiali e note di formato

Il libro modificabile è `../geometria-1.tm`; `../geometria-1.pdf` è l'anteprima. La mappa delle lezioni e il progetto pedagogico sono in `../geometria-1-mappa.md`; `fonti.json` conserva percorsi, hash e capitoli di destinazione delle fonti.

## Formato

- GNU TeXmacs 2.1.5, stile `book`, font predefinito, 11 pt, A4; testo e formule nativi. Il preambolo nascosto definisce titoli e riquadri (`inbreve`, `guidato`, `attenzione`, `immagine`, `officina`, `verifica`, `figura`).
- Esportazione con la personalizzazione locale (`TEXMACS_PATH=~/.my-texmacs/TeXmacs`) tramite *Stampa su file* (pagina sempre bianca).
- Nelle formule i prodotti di variabili usano la moltiplicazione invisibile (`a*b`). Matrici, matrici complete (con la riga verticale) e sistemi sono tabelle native `matrix` / `choice`.

## Disegni

33 disegni a tratto sottile, etichette in STIX Two. `disegni.py` (con `figlib.py`) genera gli SVG originali; `svg-to-pdf.swift` crea le copie PDF che il documento richiama. Scala: 1 unità SVG = 0,25 mm. Alcune figure sono inserite ridotte (fattore 0,8–0,9) per evitare pagine quasi vuote.

```sh
python3 Books/October/geometria-1-assets/disegni.py
swift Books/October/geometria-1-assets/svg-to-pdf.swift Books/October/geometria-1-assets
```

Se cambiano le proporzioni di un disegno, aggiornare le dimensioni della sua `<image|…>` nel `.tm` (dimensioni SVG × 0,25 mm × eventuale fattore). Dopo modifiche: aggiornare l'indice in TeXmacs e riesportare il PDF.

## Verifica del 1° novembre 2026

Lette per intero le 12 note dal 23/09 al 27/10 (escluse la lezione del 1° novembre e la nota del 19/10, spostata in Aritmetica); consultati i transcript del 30/09 (equazione quadratica, corretta rispetto alla nota) e del 22/10 (esempio di nucleo e immagine). Ordine delle dipendenze controllato (campi → complessi → polinomi → spazi → sottospazi → basi → dimensione → somme → applicazioni lineari → Gauss → rango). Uno script indipendente (frazioni esatte, `cmath`, enumerazione) ha superato 124 controlli numerici: tutti gli esempi, gli esercizi guidati, i contenuti delle figure e le risposte. Revisione visiva di tutte le pagine (54, poi 50 dopo la rimozione del capitolo sul teorema cinese), ripetuta dopo le correzioni. Hash delle fonti verificati con `sources.py verify`.
