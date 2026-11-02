# Aritmetica 1 Spark — scelte editoriali

## Il criterio seguito

Questa versione applica le precisazioni concordate nella conversazione: semplicità e chiarezza, un passaggio alla volta, tutti i concetti principali riconoscibili, lettura sostenibile. La richiesta iniziale di riprodurre integralmente ogni dettaglio è stata ricalibrata dall'utente: non si conservano necessariamente tutti gli esercizi numerici, le varianti tecniche e le prove alternative. Le omissioni sono dichiarate in `coverage.md`, non nascoste sotto una promessa di completezza integrale.

Spark è un volume separato: il precedente `aritmetica-1.tm`, il PDF e le sue figure originali rimangono intatti.

## Struttura e pilastri

Dodici capitoli seguono tre fili: ragionamento e conteggio; interi, divisibilità ed equazioni; classi, strutture e periodicità. Un concetto può essere un capitolo oppure una sezione: la gerarchia rispecchia le dipendenze, non una lista di parole suggerite dall'utente. I nomi matematici compaiono esplicitamente nei titoli e nell'indice. Le definizioni centrali sono evidenziate da riquadri discreti; il grassetto segnala i termini nel punto in cui vengono spiegati.

La fattorizzazione unica viene dopo Bézout e il lemma di Euclide. Le diofantee preparano le congruenze lineari; il teorema cinese viene prima usato sui resti e poi riletto come isomorfismo. Gruppi, anelli e campi sono introdotti prima di generatori e ordine. Il ritorno delle potenze al neutro prepara le equazioni esponenziali e i periodi decimali. Le quadratiche chiudono il percorso come applicazione dei tasselli costruiti.

## Come cambia la spiegazione

Un esempio piccolo prepara la definizione. Prima delle prove centrali il testo spiega l'obiettivo, le informazioni utili e la scelta della mossa. Le sezioni «Anatomia di una dimostrazione» sono usate quando aiutano; non impongono sette etichette a ogni prova. Il caso del lemma di Euclide mantiene il modello approvato dall'utente: perché cercare una combinazione di quantità già divisibili, perché Bézout è pertinente, poi la prova generale.

Le sezioni «Per proseguire» distinguono sviluppi secondari dal filo principale. Gli esercizi conclusivi sono pochi, con soluzioni ragionate: il lettore può provare a scegliere il metodo prima di consultarle. Non c'è una cassetta degli attrezzi che associ meccanicamente la forma di una frase a una ricetta.

## Fonti, aggiunte e correzioni

Il corpus comprende 14 note e 13 trascrizioni automatiche dal 23 settembre al 31 ottobre 2026, inclusa la nota autonoma del 19 ottobre sul teorema cinese. Le trascrizioni sono evidenza del corso, ma contengono errori ASR; le formule sono ricostruite e verificate matematicamente, senza alterare le fonti o inventare attribuzioni. La nota sulle equivalenze è datata 21 ottobre e la trascrizione associata 22 ottobre: entrambi i riferimenti sono conservati nel manifesto.

Le integrazioni didattiche comprendono motivazioni, esempi piccoli, controesempi, esercizi e passaggi di prova esplicitati. La tabella dettagliata in `source-audit.md` registra anche i contenuti rinvenuti soltanto nelle trascrizioni, come il doppio conteggio Σ k C(n,k) e il numero degli idempotenti modulari.

Correzioni e precisazioni applicate:

- induzione ⇒ principio del minimo: proprietà cumulativa esplicita;
- MCD: coppia non entrambe nulla e normalizzazione positiva, senza il falso argomento sui divisori negativi;
- diofantee: coefficienti nulli trattati separatamente, senza divisioni per zero;
- cancellazione modulare: modulo ridotto n/gcd(c,n), incluso il caso 1;
- teorema cinese: unicità della classe, compatibilità per moduli non coprimi e periodo mcm; rappresentanti arbitrari distinti dai resti canonici;
- 3^x ≡61 (mod91): x ≡5 (mod6), verificato direttamente;
- periodo delle potenze: dipende dall'ordine dell'elemento, senza anticipare il teorema di Lagrange;
- campi: condizione 1≠0 esplicita; annullamento del prodotto usato soltanto dove consentito;
- sollevamento: distinta la presenza di zero, uno o p rami a ogni passo.

## Produzione e verifiche

Il formato resta nativo GNU TeXmacs, con font predefiniti Computer Modern, corpo 11, pagina A4, titoli centrati, formule modificabili e figure monocrome vettoriali. Le illustrazioni pertinenti sono riutilizzate dai sorgenti esistenti. Non sono state convertite in immagini raster.

I controlli numerici indipendenti sono conservati in `checks/`; il manifesto `assets/fonti.json` conserva gli hash delle fonti. Il controllo matematico delle prove è separato dai calcoli automatici e comprende una revisione incrociata dei capitoli. Il PDF viene compilato, renderizzato e controllato pagina per pagina, con lettura a dimensione maggiore delle pagine con formule, tabelle e figure. I risultati effettivi dell'ultima verifica sono riportati in `validation.md`.
