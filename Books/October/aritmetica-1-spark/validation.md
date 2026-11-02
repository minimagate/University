# Verifica finale — Aritmetica 1 Spark

Data: 2 novembre 2026.

## Artefatti verificati

- PDF definitivo: **52 pagine**, incluse copertina, introduzione, indice, 12 capitoli e soluzioni.
- 23 figure vettoriali richiamate; tutti gli SVG originali e i PDF corrispondenti presenti.
- 24 esercizi conclusivi, ciascuno con soluzione spiegata.
- Sorgente TeXmacs completo, capitoli UTF-8, impaginazione e script di rigenerazione consegnati insieme.

## Correttezza matematica

I tre blocchi sono stati scritti e revisionati in modo incrociato. Le prove principali e le soluzioni sono state rilette da un revisore diverso dall'autore. Particolare attenzione a: induzione/minimo, esistenza/unicità della divisione, invarianza e terminazione di Euclide, Bézout prima della fattorizzazione, completezza delle diofantee, buona definizione, cancellazione modulare, compatibilità cinese, strutture/inversi, ordine degli elementi e rami di sollevamento.

Controlli numerici esatti ed enumerativi superati: **27.391**, distribuiti fra 765 sul blocco iniziale, 26.380 sugli interi e le congruenze, 105 sul blocco algebrico e 141 ulteriori controlli indipendenti. Gli script e i risultati sono in `checks/` e `reviews/`. Questi controlli verificano esempi e proprietà su insiemi finiti; la revisione delle dimostrazioni è un controllo separato.

## Compilazione e controllo visivo

`sh build.sh` è stato eseguito nella cartella definitiva: assemblaggio, conversione Unicode, controllo sintattico e stampa PDF con TeXmacs 2.1.5 riusciti. L'indice è stato rigenerato; i rimandi ai capitoli sono coerenti con le pagine effettive.

Tutte le 52 pagine finali sono state renderizzate e ispezionate visivamente. Le pagine con formule, riquadri e figure più impegnativi sono state controllate anche a scala maggiore; il blocco algebrico ha avuto una seconda revisione visiva indipendente. Sono stati corretti la pagina quasi vuota con la sola Verifica 9, l'inizio di una prova separato dal suo titolo e la separazione di un titolo di capitolo dalla prima voce dell'indice. Non risultano sovrapposizioni, testo tagliato, formule fuori margine o asset mancanti.

Il testo estratto dal PDF consegnato coincide con quello della revisione impaginata già controllata. Le immagini di controllo intermedie restano nello scratchpad, senza appesantire il pacchetto del libro.

## Integrità delle fonti

`python3 scripts/verify_sources.py`: **27 fonti intatte** (14 note e 13 trascrizioni), **81 file del volume precedente intatti**, **0 modifiche**. Nessun file audio o Base è stato modificato.

La copertura è selettiva nei dettagli, come concordato con l'utente: tutte le scelte sono esplicite in `coverage.md`. Il manoscritto menzionato dalla nota del 19 ottobre non è presente; è stata utilizzata la nota disponibile, come documentato in `source-audit.md`.

## Impronte degli output

- PDF SHA-256: `73b905361d98d0f6f0e7ad40c97980fe7690e122bbd5e9f7992cacf5fe1c241b`
- TeXmacs SHA-256: `68047d2e4e0453f5b1afbd881fd0b6ce3defe7d3f96171f2a6f0b6e903f4e533`
