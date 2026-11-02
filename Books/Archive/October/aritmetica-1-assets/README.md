# Aritmetica 1 — materiali e note di formato

Il libro modificabile è `../aritmetica-1.tm`; `../aritmetica-1.pdf` è l'anteprima di lettura e stampa. La mappa delle lezioni e il progetto pedagogico sono in `../aritmetica-1-mappa.md`; `fonti.json` conserva percorsi, hash e destinazione di note e transcript.

## Formato e stile

- Documento nativo GNU TeXmacs 2.1.5, stile `book`, font predefinito (Computer Modern), corpo 11 pt, A4. Testo e formule sono nativi e modificabili.
- Il preambolo nascosto del documento definisce i titoli dei capitoli (centrati, «Capitolo N» in maiuscoletto) e i riquadri, senza pacchetti esterni: `inbreve`, `guidato`, `attenzione`, `immagine`, `officina`, `verifica` e `figura` (immagine e didascalia che restano insieme). I riquadri sono tabelle a una colonna e possono spezzarsi fra due pagine.
- Esportazione e verifica fatte con la personalizzazione locale (`TEXMACS_PATH=~/.my-texmacs/TeXmacs`). Il PDF va esportato con *Stampa su file*: così la personalizzazione usa la pagina bianca anche quando l'interfaccia è scura.
- Nelle formule i prodotti di variabili sono scritti con la moltiplicazione invisibile (`a*b`): altrimenti TeXmacs leggerebbe «ab» come un unico nome in tondo.

## Disegni

- 37 disegni, neri a tratto sottile con campiture grigio chiaro. Le etichette sono in STIX Two (serif di sistema): il Computer Modern del testo non è disponibile in un formato utilizzabile da WebKit.
- `disegni.py` è la sorgente di tutti gli SVG: una piccola libreria (frecce, insiemi, etichette con pedici e apici) più una funzione per disegno, nell'ordine dei capitoli. Scala fissa: 1 unità SVG = 0,25 mm sulla pagina, quindi etichette e spessori sono uguali in tutto il libro.
- Il documento richiama le copie PDF vettoriali, perché l'esportazione SVG diretta non funziona nell'installazione locale. `svg-to-pdf.swift` le crea con WebKit di macOS (supporta tutto l'SVG: curve, ellissi, frecce, testo); nessuna dipendenza da installare.

Per rigenerare, dalla radice del vault:

```sh
python3 Books/October/aritmetica-1-assets/disegni.py
swift Books/October/aritmetica-1-assets/svg-to-pdf.swift Books/October/aritmetica-1-assets
```

Se cambi le proporzioni di un disegno, aggiorna larghezza e altezza della sua `<image|…>` nel `.tm` (in mm: dimensioni SVG × 0,25). Dopo modifiche al libro: aggiornare l'indice in TeXmacs (Documento → Aggiorna → Tutto) e riesportare il PDF.

## Revisione del 1° novembre 2026 (seconda versione)

- Copertina minimale («Aritmetica», «ottobre 2026»); eliminata l'appendice sulle fonti (la tracciabilità resta in `fonti.json` e nella mappa).
- Testo riscritto in un linguaggio più semplice: prima l'esempio, poi la definizione, poi il perché. Contenuti e percorso didattico della prima versione conservati.
- 12 «officine della dimostrazione» costruiscono passo passo gli schemi di prova (leggere un enunciato, induzione, assurdo e minimo controesempio, biezioni e doppio conteggio, esistenza e unicità, necessario e sufficiente, buona definizione, contare invece di costruire, cassetti e minimo, verificare una struttura, casi esaustivi). L'appendice A li riassume in una tabella.
- Nuovi esercizi guidati dalla raccolta Chirivì, Del Corso, Dvornicich, *Esercizi scelti di Algebra 1* (Springer 2017): es. 2, 4, 15, 37, 40, 47, 49, 50, 74, 95. Soluzioni riscritte in forma guidata, non copiate.
- Verifiche numeriche indipendenti (enumerazione diretta) di tutti i risultati nuovi o modificati: 28 controlli superati.
