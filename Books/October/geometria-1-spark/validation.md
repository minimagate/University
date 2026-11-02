# Geometria 1 Spark — verifica della revisione

2 novembre 2026, dopo la revisione narrativa. **PDF finale esportato dalla cartella definitiva e controllato pagina per pagina.**

## Consegna

54 pagine; 10 capitoli; 20 figure vettoriali utilizzate; 20 esercizi con soluzioni ragionate. PDF di 1,205,822 byte. Sorgenti dei capitoli, documento nativo TeXmacs, template, figure, script di build e documenti di copertura inclusi.

## Revisione narrativa del 2 novembre 2026

Riscritti in prosa narrativa l'introduzione, tutti i dieci capitoli, gli «In breve» e le venti soluzioni, secondo `spark-standard.md` e `prose-example.md`. Nessun concetto, enunciato, ipotesi, prova, figura o esercizio è stato tolto; numerazione degli esercizi invariata.

Controlli effettivamente eseguiti in questo passaggio:

- ricontrollo a mano di ogni calcolo riscritto (associatività del prodotto complesso, radici seste e quarte, scambi in R², basi di W₀, W₁, W₀,₁, prodotti PQ e QP, riduzioni di Gauss dei capitoli 9 e 10, esercizi 2.1, 3.2, 8.2, 9.1, 9.2, 10.2);
- `checks/deep-pass.py`, `foundations.py`, `foundations-independent.py`, `vector-spaces.py`, `systems.py`, `independent.py` e `scripts/check_assets.py`: tutti con uscita 0;
- `sources.py verify assets/fonti.json`: 24 fonti intatte, 0 modificate;
- `sh build.sh` dalla cartella definitiva: sintassi, controllo editoriale (10 aperture presenti) ed esportazione riusciti;
- tutte le 54 pagine renderizzate e guardate in quattro fogli di contatto; a scala di lettura (1,3) ispezionate le pagine 2, 9, 26, 48 e 53 per formule, riquadri, figure e soluzioni. Nessun taglio, sovrapposizione, titolo isolato o pagina quasi vuota oltre alle normali chiusure di capitolo (pagine 30, 35, 50).

Statistiche del sorgente (frasi con formule contate come una parola): lunghezza media 12,9 → 16,2 parole, frasi di al più 8 parole 27% → 16%, due punti 177 → 45 ogni 10.000 parole. Parole del sorgente 15.923 → 21.105 (+33%), pagine 51 → 54.

## Revisione didattica e matematica (passaggio precedente)

L’autore della revisione ha riletto tutti i capitoli, l’introduzione, le didascalie e tutte le soluzioni. Tutte le aperture «In breve» sono state riscritte. Il lavoro interviene su motivazione delle mosse, esempi prima della prova generale, termini spiegati e veri capoversi TeXmacs; non consiste soltanto nell’aggiunta di a capo.

Una revisione indipendente delle prove centrali e delle relative risposte è descritta con il proprio perimetro in [integration-review.md](reviews/deep-pass/integration-review.md). Le precisazioni emerse sono state applicate e controllate. Le revisioni storiche conservano il loro perimetro originario e non vengono presentate come nuove letture. Non si dichiara una nuova lettura integrale delle fonti durante questo intervento editoriale.

Tutti i verificatori matematici precedenti e il nuovo `checks/deep-pass.py` sono stati eseguiti dall’integratore: esiti e output in `reviews/deep-pass/check-results.json` e nei log adiacenti. I controlli finiti verificano esempi, identità e programmi; non dimostrano i teoremi. Ipotesi e ragionamenti sono stati valutati separatamente.

## Produzione e controllo delle pagine

Build con Python e GNU TeXmacs 2.1.5; aggiornati indice e riferimenti, salvato il documento nativo e stampato il PDF bianco. `sh build.sh` eseguito anche da `Books/October/geometria-1-spark/`.

Nel passaggio precedente tutte le **51 pagine** sono state renderizzate. L’integratore ha ispezionato l’intera sequenza e le pagine cambiate nelle esportazioni successive. Confronto a scala di lettura con Aritmetica Spark, pagine 5 e 21: stesso preambolo classico, Computer Modern, 11 pt, A4 e margini canonici. Ingrandimenti delle pagine 13, 18, 19, 20, 25, 26, 31, 35, 37, 45 per verificare formule, tabelle, figure, riquadri e passaggi difficili. Le pagine della copia ricompilata sono state confrontate con le immagini già controllate; tutte le differenze sono state ispezionate.

Controllati titolo, indice, aperture, proporzioni delle figure, didascalie, formule, listati e chiusure di capitolo. Riparate le pagine con esercizi isolati. Alcune chiusure sono naturalmente più brevi; il ragionamento conclusivo e gli esercizi restano insieme. Non sono stati ridotti caratteri o margini. Nessun difetto di taglio, sovrapposizione o asset mancante rilevato.

`scripts/check-editorial.py` conferma 10 aperture presenti e segnala i capoversi lunghi per una lettura umana. Il numero di parole è soltanto un diagnostico: la valutazione della densità richiede testo e PDF.

## Integrità e limiti

Manifesto delle fonti: **24 file intatti, zero modificati**. Controllate anche le impronte iniziali di 100 note/trascrizioni e 127 file del libro Aritmetica Spark, tutti intatti. Le tre edizioni Spark precedenti sono state copiate integralmente in `Books/Archive/Spark-before-deep-pass-2026-11-02/`; le copie sono verificate contro le impronte iniziali. Non sono stati toccati audio o Bases.

Il precedente archivio storico `Books/Archive/October/` e il suo registro sono risultati assenti durante il lavoro per modifiche concorrenti esterne; non sono stati ripristinati. Per questo la verifica locale distingue le fonti delle lezioni dai riferimenti storici opzionali (`--references`). I riferimenti esterni non servono alla compilazione del pacchetto.

Il teorema fondamentale dell’algebra, il confronto generale delle basi infinite e l’unicità della forma ridotta restano enunciati senza prova, come dichiarato nel testo. Le selezioni di varianti e parti facoltative sono in coverage.md.

## Impronte

PDF SHA-256: `d37f82e428cb14bec277ccf35b3240ec9783222c0c12765e595dd0d2d8b19fda`.

TeXmacs SHA-256: `f5464d10781f92f433abce70f40fda8edf2e7d69c6e04e122ab281cb638ff326`.

Aperture dei capitoli e dati della consegna: [final-validation.json](reviews/deep-pass/final-validation.json). La validazione precedente è conservata in `reviews/validation-before-deep-pass.md`.


## Copia per lo studio

La copia in `~/Documents/Notebooks/geometria-1-spark.pdf` viene aggiornata alla consegna finale con il PDF qui descritto.
