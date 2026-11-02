# Verifica finale — Aritmetica 1 Spark

Data: 2 novembre 2026.

## Artefatti verificati

- PDF definitivo: **56 pagine** dopo la revisione narrativa (erano 52), incluse copertina, introduzione, indice su due pagine, 12 capitoli e soluzioni.
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

- PDF SHA-256: `e0aaef35d27a1ea1f4aa991105281f3158d59805dbdb7a3f7b520b2a7fbcbe57`
- TeXmacs SHA-256: `15492e6120c543206b2eaae09523b2dba1e8f1afa00b20d43104f6db59635576`

## Revisione narrativa del 2 novembre 2026

Controlli eseguiti dopo la riscrittura della prosa:

- `sh build.sh` riuscito (assemblaggio, conversione, controllo sintattico, esportazione con TeXmacs 2.1.5); PDF di 56 pagine.
- Tutte le 56 pagine renderizzate a scala 0,6 e ispezionate su fogli di contatto; copertina, introduzione, indice, apertura del capitolo 1, pagine 38–39, 51 e 54 ispezionate a scala 1,2. Corretta una pagina con la sola Verifica 8 (capitolo 8 compattato). Restano pagine finali di capitolo parzialmente vuote prima di un nuovo capitolo, come nell'edizione precedente; nessuna sovrapposizione, formula tagliata, titolo isolato o riquadro spezzato male.
- Controlli numerici rieseguiti e superati: `checks/foundations.py` (765), `checks/integers.py` (26.380), `checks/algebra.py` (105), `checks/algebra-independent.py` (141). Le formule e i dati degli esempi non sono cambiati; i calcoli riscritti nel testo e nelle soluzioni sono stati ricontrollati a mano.
- `sources.py verify assets/fonti.json`: 27 fonti intatte, 0 modificate. `scripts/verify_sources.py` termina invece con errore perché cerca il volume precedente in `Books/October/aritmetica-1.tm`, che non esiste più dopo il riordino dell'archivio (manca anche `Books/Archive/relocations.json`); il problema è precedente a questa revisione e non riguarda le fonti delle lezioni.
- Testo estratto dal PDF: nessuna occorrenza di «settembre»; la copertina riporta «ottobre 2026».
- `check-editorial.py`: nessun capitolo senza «In breve»; diagnostica di ritmo registrata per la revisione umana.

