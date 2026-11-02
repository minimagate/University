# Fondamenti di Programmazione Spark — verifica della revisione

2 novembre 2026. **PDF finale esportato, rigenerato dalla cartella definitiva e controllato.**

## Consegna

51 pagine; 9 capitoli; 12 figure vettoriali utilizzate; 18 esercizi con soluzioni ragionate. PDF di 932,392 byte. Sorgenti dei capitoli, documento nativo TeXmacs, template, figure, script di build e documenti di copertura inclusi.

## Revisione didattica e matematica

L’autore della revisione ha riletto tutti i capitoli, l’introduzione, le didascalie e tutte le soluzioni. Tutte le aperture «In breve» sono state riscritte. Il lavoro interviene su motivazione delle mosse, esempi prima della prova generale, termini spiegati e veri capoversi TeXmacs; non consiste soltanto nell’aggiunta di a capo.

Una revisione indipendente delle prove centrali e delle relative risposte è descritta con il proprio perimetro in [integration-review.md](reviews/deep-pass/integration-review.md). Le precisazioni emerse sono state applicate e controllate. Le revisioni storiche conservano il loro perimetro originario e non vengono presentate come nuove letture. Non si dichiara una nuova lettura integrale delle fonti durante questo intervento editoriale.

Tutti i verificatori matematici precedenti e il nuovo `checks/deep-pass.py` sono stati eseguiti dall’integratore: esiti e output in `reviews/deep-pass/check-results.json` e nei log adiacenti. I controlli finiti verificano esempi, identità e programmi; non dimostrano i teoremi. Ipotesi e ragionamenti sono stati valutati separatamente.

## Produzione e controllo delle pagine

Build con Python e GNU TeXmacs 2.1.5; aggiornati indice e riferimenti, salvato il documento nativo e stampato il PDF bianco. `sh build.sh` eseguito anche da `Books/October/fondamenti-di-programmazione-1-spark/`.

Tutte le **51 pagine** sono state renderizzate. L’integratore ha ispezionato l’intera sequenza e le pagine cambiate nelle esportazioni successive. Confronto a scala di lettura con Aritmetica Spark, pagine 5 e 21: stesso preambolo classico, Computer Modern, 11 pt, A4 e margini canonici. Ingrandimenti delle pagine 8, 12, 20, 22, 38, 39, 46, 47 per verificare formule, tabelle, figure, riquadri e passaggi difficili. Le pagine della copia ricompilata sono state confrontate con le immagini già controllate; tutte le differenze sono state ispezionate.

Controllati titolo, indice, aperture, proporzioni delle figure, didascalie, formule, listati e chiusure di capitolo. Riparate le pagine con esercizi isolati. Alcune chiusure sono naturalmente più brevi; il ragionamento conclusivo e gli esercizi restano insieme. Non sono stati ridotti caratteri o margini. Nessun difetto di taglio, sovrapposizione o asset mancante rilevato.

`scripts/check-editorial.py` conferma 9 aperture presenti e segnala i capoversi lunghi per una lettura umana. Il numero di parole è soltanto un diagnostico: la valutazione della densità richiede testo e PDF.

## Integrità e limiti

Manifesto delle fonti: **14 file intatti, zero modificati**. Controllate anche le impronte iniziali di 100 note/trascrizioni e 127 file del libro Aritmetica Spark, tutti intatti. Le tre edizioni Spark precedenti sono state copiate integralmente in `Books/Archive/Spark-before-deep-pass-2026-11-02/`; le copie sono verificate contro le impronte iniziali. Non sono stati toccati audio o Bases.

Il precedente archivio storico `Books/Archive/October/` e il suo registro sono risultati assenti durante il lavoro per modifiche concorrenti esterne; non sono stati ripristinati. Per questo la verifica locale distingue le fonti delle lezioni dai riferimenti storici opzionali (`--references`). I riferimenti esterni non servono alla compilazione del pacchetto.

Le slide citate nelle note non sono disponibili; le discrepanze documentarie di settembre restano descritte in source-audit.md. I modelli di calcolo sono presentati al livello introduttivo delle fonti, senza dimostrare risultati di indecidibilità.

## Impronte

PDF SHA-256: `b85cf948d473abb6f74a78c861badf2b40d10e0df0b9e97648a489e4708bfa2b`.

TeXmacs SHA-256: `465380b92ca877f9b484c245d9f761dfd3fa6a93e7d850b862152ea0fe9b664a`.

Aperture dei capitoli e dati della consegna: [final-validation.json](reviews/deep-pass/final-validation.json). La validazione precedente è conservata in `reviews/validation-before-deep-pass.md`.


## Copia per lo studio

Copiato, senza spostare il progetto, in `/Users/michelangelogubinelli/Documents/Notebooks/fondamenti-di-programmazione-1-spark.pdf`. Confronto SHA-256 fra originale e copia superato.
