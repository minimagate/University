# Verifica finale — Fondamenti di Programmazione 1 Spark

Data: **2 novembre 2026**.

## Consegna verificata

- PDF definitivo: **39 pagine**, **883.143 byte** (circa 0,88 MB).
- **9 capitoli**, **12 figure vettoriali** richiamate e **18 esercizi**, tutti con soluzione ragionata.
- Documento TeXmacs completo, sorgente assemblato e capitoli UTF-8; preambolo, impostazioni, figure SVG/PDF, manifesti e script locali di rigenerazione.
- Copertura, analisi delle fonti e note editoriali esterne al PDF. Il volume copre il materiale disponibile dal 19 settembre al 31 ottobre; ultima lezione presente il 29 ottobre.

## Revisione matematica ed editoriale

L'orchestratore ha letto l'intero libro e tutte le soluzioni. I capitoli 1–4 e 5–9 hanno avuto revisioni indipendenti da collaboratori diversi dagli autori del rispettivo blocco. I rapporti sono in `reviews/review-foundations-logic.md` e `reviews/review-hoare-arrays.md`.

Controllati separatamente dalle enumerazioni finite: direzioni delle conseguenze, condizioni delle sostituzioni, cattura e variabili libere, condizioni dei testimoni e della generalizzazione, distribuzioni e ordine dei quantificatori; semantica parziale e definitezza; assioma di assegnamento, conseguenza, sequenza e rami; induzione sull'invariante; corpo totale, non negatività e progresso; ipotesi della geometria e finitezza degli abbinamenti; preservazione e uscita di fattoriale/MCD/radice/Fibonacci; aggiornamenti selettivi, indici, molteplicità e zone delle bandiere.

Le osservazioni delle revisioni sono state risolte: aggiunta la prova intuitiva del prodotto, definita la validità delle formule aperte, motivata la completezza funzionale {¬,⇒}, esplicitati i tre approcci alla semantica. Corrette anche la direzione dei rami nell'esempio di massimo con divisione e una parentesi di markup. La rilettura editoriale ha verificato notazione prima dell'uso, motivazione delle mosse e spiegazione dei casi zero e degli array vuoti. I rapporti degli autori restano documenti della fase di lavoro; la copertura effettiva della consegna è `coverage.md`.

## Controlli automatici esatti

Superati **227.532 controlli**, suddivisi come segue:

| Script | Controlli |
|---|---:|
| `checks/foundations.py` | 32.069 |
| `checks/check-logic.py` | 448 |
| `checks/check-hoare.py` | 12.416 |
| `checks/check-arrays.py` | 173.069 |
| `checks/review-foundations-logic-checks.py` | 4.546 |
| `checks/review-independent.py` | 4.984 |

Si usano interi esatti, tavole booleane, relazioni su domini finiti, tracce, invarianti, indici e discesa delle varianti. Il blocco array comprende tutti i 1.093 array su {-1,0,1} di lunghezza 0–6; il secondo revisore usa implementazioni indipendenti. Le verifiche finite controllano esempi e implementazioni e **non sostituiscono le prove generali**. Script e risultati sono conservati in `checks/` e `reviews/`.

## Build e ispezione visiva

`sh build.sh` è stato eseguito anche dalla **cartella definitiva di consegna**, usando TeXmacs 2.1.5. Assemblaggio, conversione, controllo sintattico, aggiornamento indice/riferimenti, salvataggio nativo e stampa su carta bianca riusciti. Il motore macOS richiede accesso ai servizi grafici, quindi l'esportazione è stata eseguita fuori dalla sandbox dopo il fallimento del solo avvio grafico al suo interno.

**Tutte le 39 pagine finali** sono state renderizzate e ispezionate. Sono stati controllati a scala maggiore tabella dei connettivi, portata, formule dei quantificatori, triple, obblighi della regola totale, potenze e varianti, codice, aggiornamenti, riquadri e bandiere. L'intera libreria vettoriale è stata ispezionata separatamente; tutti i 12 stem richiamati hanno SVG, PDF e dimensioni coerenti.

Riparazioni di impaginazione: eliminate le pagine quasi vuote con i soli esercizi; listati indentati esplicitamente e tenuti insieme; soluzioni di tutti i capitoli presenti nell'indice. La tabella nativa dei quantificatori e la figura Fibonacci più compatta conservano il ragionamento e riducono le interruzioni. La ricorrenza opzionale presenta i comandi in prosa dopo la derivazione, senza un listato ridondante. Non risultano testo tagliato, sovrapposizioni, formule fuori margine, titoli isolati o figure deformate.

Un secondo revisore ha ispezionato individualmente le pagine **28–39** a scala 1,2. Dopo la ricompilazione finale sono stati confrontati i dodici PNG con quelli della revisione indipendente: **12 su 12 identici**. Il testo estratto dal PDF ricompilato nella destinazione finale coincide integralmente con quello dell'ultima copia controllata nello scratchpad. Il rapporto è `reviews/review-final-visual-arrays.md`; le immagini di controllo restano nello scratchpad.

## Integrità e limiti documentari

`sources.py verify assets/fonti.json`: **14 fonti intatte, 0 modificate** (13 note e una trascrizione). `python3 scripts/verify_sources.py`: **204 file fotografati intatti**, comprendenti i 14 file di corso, 63 file d'archivio e 127 file di Aritmetica Spark. Destinazioni di capitolo compilate per tutte le lezioni. Nessuna modifica ad audio, Bases, note, trascrizioni, archivio o riferimento editoriale.

Il workspace aveva modifiche preesistenti all'inizio; non sono state ripulite né sovrascritte. Gli interventi del lavoro sono limitati al nuovo bundle e a `Books/README.md`.

Restano le discrepanze documentarie delle date 21–23 settembre e l'assenza dei PDF delle slide citate dalle note. Sono riportate nell'analisi delle fonti; non impediscono la rielaborazione del corpus disponibile. Il libro non pretende di riprodurre ogni variante numerica o tutte le dispense: la selezione è dichiarata in `coverage.md`.

## Pagine di apertura

| Capitolo | Pagina |
|---|---:|
| 1 — Algoritmi, specifiche e stati | 5 |
| 2 — Calcolo proposizionale | 8 |
| 3 — Logica del primo ordine | 11 |
| 4 — Semantica e quantificatori | 14 |
| 5 — Stati, espressioni e comandi | 17 |
| 6 — Hoare e invarianti | 20 |
| 7 — Correttezza totale | 24 |
| 8 — Costruire un ciclo | 28 |
| 9 — Array | 32 |
| Soluzioni ragionate | 37 |

## Impronte degli output

- PDF SHA-256: `a9406b85c9e41fc325d6594aac5c8c4b9d9955ae0c5fd227038108d15fcc1a63`
- TeXmacs SHA-256: `b2c3c0848fe01e92347c380babc5d5762e0244055f7e2dbc7c440e876e54b838`

I dati sintetici della verifica sono in `reviews/validation.json`. Una nuova esportazione può cambiare i metadati binari del PDF pur mantenendo identiche le pagine.
