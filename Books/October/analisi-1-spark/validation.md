# Analisi 1 Spark — verifica della revisione

## Revisione narrativa del 2 novembre 2026

**Consegna.** 76 pagine; 14 capitoli; 23 figure; 30 esercizi con 30 soluzioni. PDF di 1.142.149 byte, compilato con `sh build.sh` dalla cartella del pacchetto (GNU TeXmacs 2.1.5).

**Controlli eseguiti in questa revisione.**

- Sintassi TeXmacs di tutti i 16 frammenti (`scripts/check.py`, anche dentro `checks/deep-pass.py`): superata.
- `checks/verify_structure.py`: 14 capitoli, 30 esercizi con 30 soluzioni, 23 figure complete, 16 note e 5 trascrizioni mappate: PASS.
- `checks/deep-pass.py`: 2636 controlli esatti superati, comprese le 14 aperture «In breve» subito dopo il titolo.
- `checks/check_review_a.py`, `check_review_c.py`, `verify_math.py`, `checks-limiti.py`, `exact_series.py`: tutti superati.
- `scripts/check-editorial.py`: nessuna apertura mancante; tre capoversi sopra 80 parole (6.5, 10.6.1, 4.1), riletti e lasciati interi perché sviluppano un solo ragionamento.
- `sources.py verify assets/fonti.json`: 21 fonti intatte, 0 modificate. Le destinazioni dei capitoli non cambiano.
- I passaggi matematici riformulati sono stati ricontrollati a mano (elenco in `editorial-notes.md`); i calcoli finiti restano coperti dai verificatori.

**Revisione visiva.** Tutte le 76 pagine sono state renderizzate a 0,6 e ispezionate in fogli di provini; le pagine 2, 23 e 66 anche a scala di lettura (1,3). Trovate e corrette due pagine mezze vuote (fine capitolo 6 e fine capitolo 14) dovute a salti pagina forzati non più necessari. Dopo la correzione finale l'unica pagina cambiata (la 2) è stata ricontrollata. Nessun taglio, sovrapposizione, riquadro rotto o figura deformata; indice aggiornato.

**Impronte.** PDF SHA-256 `a7d5c6d8e3c156f0fb33398eb45efe0ba4c1261d73ce51935b7801efde29428c`; TeXmacs SHA-256 `efeef540440adfd65b9c764dcb98e18b2c8cbb25a0ec51a2f25b2d5c208350b2`.

**Limiti.** Non è stata fatta una nuova revisione matematica indipendente delle prove: la matematica è invariata e i passaggi riscritti sono stati verificati dall'autore della revisione. La copia per lo studio in `~/Documents/Notebooks` è gestita fuori da questo pacchetto.

Le sezioni seguenti descrivono la revisione precedente della stessa giornata e restano come documentazione storica.

## Revisione precedente — consegna

73 pagine; 14 capitoli; 23 figure vettoriali utilizzate; 30 esercizi con soluzioni ragionate. PDF di 1,078,647 byte. Sorgenti dei capitoli, documento nativo TeXmacs, template, figure, script di build e documenti di copertura inclusi.

## Revisione didattica e matematica

L’autore della revisione ha riletto tutti i capitoli, l’introduzione, le didascalie e tutte le soluzioni. Tutte le aperture «In breve» sono state riscritte. Il lavoro interviene su motivazione delle mosse, esempi prima della prova generale, termini spiegati e veri capoversi TeXmacs; non consiste soltanto nell’aggiunta di a capo.

Una revisione indipendente delle prove centrali e delle relative risposte è descritta con il proprio perimetro in [integration-review.md](reviews/deep-pass/integration-review.md). Le precisazioni emerse sono state applicate e controllate. Le revisioni storiche conservano il loro perimetro originario e non vengono presentate come nuove letture. Non si dichiara una nuova lettura integrale delle fonti durante questo intervento editoriale.

Tutti i verificatori matematici precedenti e il nuovo `checks/deep-pass.py` sono stati eseguiti dall’integratore: esiti e output in `reviews/deep-pass/check-results.json` e nei log adiacenti. I controlli finiti verificano esempi, identità e programmi; non dimostrano i teoremi. Ipotesi e ragionamenti sono stati valutati separatamente.

## Produzione e controllo delle pagine

Build con Python e GNU TeXmacs 2.1.5; aggiornati indice e riferimenti, salvato il documento nativo e stampato il PDF bianco. `sh build.sh` eseguito anche da `Books/October/analisi-1-spark/`.

Tutte le **73 pagine** sono state renderizzate. L’integratore ha ispezionato l’intera sequenza e le pagine cambiate nelle esportazioni successive. Confronto a scala di lettura con Aritmetica Spark, pagine 5 e 21: stesso preambolo classico, Computer Modern, 11 pt, A4 e margini canonici. Ingrandimenti delle pagine 22, 23, 29, 30, 54, 56, 61, 67, 71 per verificare formule, tabelle, figure, riquadri e passaggi difficili. Le pagine della copia ricompilata sono state confrontate con le immagini già controllate; tutte le differenze sono state ispezionate.

Controllati titolo, indice, aperture, proporzioni delle figure, didascalie, formule, listati e chiusure di capitolo. Riparate le pagine con esercizi isolati. Alcune chiusure sono naturalmente più brevi; il ragionamento conclusivo e gli esercizi restano insieme. Non sono stati ridotti caratteri o margini. Nessun difetto di taglio, sovrapposizione o asset mancante rilevato.

`scripts/check-editorial.py` conferma 14 aperture presenti e segnala i capoversi lunghi per una lettura umana. Il numero di parole è soltanto un diagnostico: la valutazione della densità richiede testo e PDF.

## Integrità e limiti

Manifesto delle fonti: **21 file intatti, zero modificati**. Controllate anche le impronte iniziali di 100 note/trascrizioni e 127 file del libro Aritmetica Spark, tutti intatti. Le tre edizioni Spark precedenti sono state copiate integralmente in `Books/Archive/Spark-before-deep-pass-2026-11-02/`; le copie sono verificate contro le impronte iniziali. Non sono stati toccati audio o Bases.

Il precedente archivio storico `Books/Archive/October/` e il suo registro sono risultati assenti durante il lavoro per modifiche concorrenti esterne; non sono stati ripristinati. Per questo la verifica locale distingue le fonti delle lezioni dai riferimenti storici opzionali (`--references`). I riferimenti esterni non servono alla compilazione del pacchetto.

Le dispense AM1 citate dalle note non sono disponibili. Costruzioni di base e De L’Hôpital sono assunti nei punti dichiarati. Le ipotesi analitiche e i resti sono verificati con ragionamenti, separatamente dai calcoli finiti.

## Impronte

PDF SHA-256: `9d3348809819556f58255d638411dafa7b74666f1c840e8e2636869cfc3c00e8`.

TeXmacs SHA-256: `9db487dd6fc463145bffe49f1179c413ae5cf69c6859284a66c6af492148f29e`.

Aperture dei capitoli e dati della consegna: [final-validation.json](reviews/deep-pass/final-validation.json). La validazione precedente è conservata in `reviews/validation-before-deep-pass.md`.


## Copia per lo studio

Copiato, senza spostare il progetto, in `/Users/michelangelogubinelli/Documents/Notebooks/analisi-1-spark.pdf`. Confronto SHA-256 fra originale e copia superato.
