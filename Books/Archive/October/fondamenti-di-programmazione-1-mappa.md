# Fondamenti di Programmazione 1 — mappa e progetto editoriale

Periodo: 19 settembre–29 ottobre 2026. Corpus: 13 lezioni, circa 86 minuti di registrazione (solo la lezione del 25 settembre ha registrazione e transcript, 5200 secondi). Nessuna lezione è esclusa: le altre 12 sono note ricavate dalle slide, senza audio né transcript.

## Passo 1 — ritmo e contenuti delle lezioni

| Fonte | Durata | Nucleo e avanzamento | Capitoli |
|---|---:|---|---|
| 19/09 — Pensiero computazionale, algoritmi e modelli di calcolo | solo slide | Obiettivi del corso; algoritmo e suoi requisiti (finitezza, non ambiguità, eseguibilità); specifica come stato iniziale e finale; problemi decidibili e problema dell'arresto; le macchine di Turing e il λ-calcolo | 1 |
| 21/09 — Semantica del calcolo proposizionale e dimostrazioni per equivalenza | solo slide | Connettivi e tavole di verità; formule del calcolo proposizionale; prime dimostrazioni per equivalenza | 2, 3 |
| 22/09 — Equivalenze tautologiche e sostituzione nell'implicazione | solo slide | Leggi tautologiche; distinzione tra significato di una formula e dimostrazione; sostituzione nell'implicazione e polarità | 2, 3 |
| 23/09 — Forme normali, tecniche di dimostrazione e logica del primo ordine | solo slide | Dimostrare implicazioni; forme normali; dimostrazione per assurdo, per controposizione e per casi; motivazione della logica del primo ordine | 3, 4 |
| 25/09 — Stati, algoritmi e fondamenti della logica formale | 86 min (transcript) | Stati e algoritmi; fondamenti della logica formale | 1, 2, 3 |
| 08/10 — Sintassi e semantica della logica del primo ordine | solo slide | Alfabeto, termini, formule ben formate; idea di interpretazione | 4 |
| 12/10 — Semantica della logica del primo ordine | solo slide | Valore dei termini e verità delle formule; regole dei quantificatori; modelli, validità, conseguenza logica; leggi per i quantificatori | 5 |
| 13/10 — Quantificazione ristretta, uguaglianza e specifiche formali | solo slide | Quantificazione ristretta; uguaglianza; generalizzazione e skolemizzazione; avvio della programmazione imperativa con stati e specifiche | 4, 5, 6 |
| 19/10 — Espressioni, comandi e triple di Hoare | solo slide | Sintassi e semantica di espressioni e comandi; primi algoritmi (valore assoluto, scambio, ordinamento, potenza); triple di Hoare e modi di usarle | 6, 7 |
| 20/10 — Regole di inferenza per le triple di Hoare e invarianti | solo slide | Proprietà (P3) con esempi; regole di pre- e postcondizione; assegnamento, sequenza, condizionale; correttezza parziale e totale; invariante del ciclo | 7, 8 |
| 26/10 — Correttezza totale dei cicli, funzioni di terminazione e programmi annotati | solo slide | Invariante e guardia falsa; passaggio alla correttezza totale; funzioni di terminazione; somma dei primi interi; eliminazione degli incroci; divisione intera | 8 |
| 27/10 — Verifica di programmi iterativi e introduzione agli array | solo slide | Radice cubica, fattoriale, massimo comune divisore; array e semantica dell'accesso; estensione di def agli array | 8, 9 |
| 29/10 — Aggiornamento degli array e tecniche di costruzione dei cicli | solo slide | Aggiornamento selettivo; prefissi di somme; incremento di un array; tre tecniche di progetto (scomposizione, costante in variabile, variabile ausiliaria); bandiere a due e tre colori; successione per dimezzamento | 9 |

Ritmo: il corso passa dalla logica proposizionale (settembre) a quella del primo ordine (ottobre), poi alla programmazione imperativa dal 19 ottobre. Il 19 e il 20 ottobre introducono le triple; il 26 e il 27 i cicli e la terminazione; il 29 gli array.

## Passo 2 — ordine pedagogico

1. **Dal problema al programma** (capitolo 1): algoritmo, specifica, stato, modelli di calcolo. Prepara la nozione di stato e di specifica che tornerà nei capitoli 6–9.
2. **Proposizioni: forma e significato** (capitolo 2): connettivi, tavole di verità, conseguenza logica. Serve prima delle leggi, che si verificano con le tavole.
3. **Dimostrare con le leggi** (capitolo 3): leggi, catene, polarità, tecniche di dimostrazione. Le catene tornano nel capitolo 7 per le prove di correttezza.
4. **Il linguaggio del primo ordine** (capitolo 4): sintassi, variabili libere e legate, interpretazioni. Serve per scrivere le specifiche con quantificatori.
5. **Verità e leggi nel primo ordine** (capitolo 5): semantica con assegnamenti, leggi dei quantificatori, controesempi con ∀ ed ∃.
6. **Stati, espressioni e comandi** (capitolo 6): semantica del piccolo linguaggio imperativo, variabili di specifica, tracce di esecuzione.
7. **Triple di Hoare** (capitolo 7): significato delle triple, regole per assegnamento, sequenza e condizionale, correttezza totale e parziale.
8. **Cicli: invarianti e terminazione** (capitolo 8): regola del while, funzione di terminazione, esempi guidati e programmi annotati.
9. **Array e progetto di cicli** (capitolo 9): array, aggiornamento selettivo, tecniche per costruire i cicli dalla postcondizione.

Controlli di dipendenza: capitolo 2 prima del 3 (le leggi si verificano con le tavole); capitolo 4 prima del 5 (la semantica usa gli assegnamenti); capitolo 6 prima del 7 (le triple parlano di stati ed espressioni); capitolo 7 prima dell'8 (il ciclo usa def e le regole di sequenza); capitolo 8 prima del 9 (gli array usano invarianti). L'ordine e i rimandi ai capitoli e alle officine sono stati riletti sul libro completo. Ogni capitolo: «In breve», spiegazioni e prove essenziali, esercizi guidati, officine della dimostrazione, verifica con risposta.

Officine della dimostrazione: 1. Leggere una specifica (capitolo 1); 2. Basta un caso o servono tutti? (capitolo 2); 3. Scrivere una catena (capitolo 3); 4. Formalizzare senza tradire (capitolo 4); 5. Lavorare con i quantificatori (capitolo 5); 6. Tracciare uno stato (capitolo 6); 7. Calcolare all'indietro (capitolo 7); 8. I cinque obblighi di un ciclo (capitolo 8); 9. Tre modi per trovare l'invariante (capitolo 9).

Figure: 19 in totale. Undici nei capitoli 1–6 (albero della formula, conseguenza, fasi, polarità, portata dei quantificatori, quaderno, quantificatori, ricerca binaria, scambio, tre interpretazioni, while srotolato). Otto nei capitoli 7–9: regole pre e post e calcolo all'indietro (7); zone dell'invariante, scala della divisione, incroci dei segmenti (8); zona dell'array, Fibonacci, bandiera a due colori (9).

Esercizi da raccolte esterne: nessuno. Tutti gli esercizi dei capitoli 7–9 vengono dalle slide o dalle note, con i completamenti marcati come svolgimenti aggiunti.

## Fedeltà e correzioni editoriali

- Le note sono la fonte primaria; i transcript si consultano nei passaggi dubbi (solo quello del 25 settembre esiste). Nessuna fonte viene modificata.
- Date: le note del 21, 22 e 23 settembre citano nella sezione Fonte la Lezione 3 (29 settembre), la Lezione 4 (1 ottobre) e la Lezione 5 (2 ottobre). Le date dei file sono quelle del nome file e sono state mantenute così.
- Radice cubica (capitolo 8, slide 355–356): la postcondizione stampata, b uguale alla parte intera della radice cubica, è errata. Il codice lascia in b la parte intera più uno (con x=0, b=1; con x=8, b=3). Il libro aggiunge b := b - 1 dopo il ciclo, segnalato come correzione.
- Fattoriale (capitolo 8, slide 359): la funzione di terminazione è n+1-x, non n-x, perché nello stato finale x=n+1 la seconda darebbe -1. Il limite inferiore 1 nell'invariante rende definito (x-1)!.
- Bandiera a due colori (capitolo 9): slide 395, i segni dei due casi sono invertiti; slide 397, l'ultimo quantificatore riguarda a[i] e non a[y], e il confine vale x in [0,n] e non [0,n).
- Slide 340, 348 e 351 (capitolo 8): refuso nella frase sul collegamento iniziale P ⇒ Inv ∧ def(E) (slide 340); la verifica dell'invarianza riguarda il corpo e non l'intero while (slide 351); i triangoli utili sono AED e CEB (slide 348).
- Esempi e svolgimenti aggiunti: il controesempio ∀x.∃y contro ∃y.∀x (capitolo 5), gli svolgimenti marcati «svolgimento aggiunto» nei capitoli 7–9, il vincolo y > 0 nell'invariante della divisione, la bandiera a tre colori, la prova di Fibonacci e il caso dispari della successione per dimezzamento. Non sono parole del docente.
- Le parti che le note segnano come «mia» o «mio» compaiono nel libro come commenti o svolgimenti aggiunti, senza attribuirle al docente.
- Figure, verifiche, immagini mentali ed esempi aggiuntivi sono integrazioni didattiche.

- Precisazioni del controllo finale: sostituzioni solo sulle occorrenze libere e senza cattura; eliminazione di ≡ prima di classificare la polarità; il testimone esistenziale è un’ipotesi locale, non un’implicazione valida per una costante arbitraria. Gli identificatori letti dai programmi si assumono presenti nello stato e del tipo dichiarato. Le proprietà quantificate delle zone degli array hanno portata esplicita.
- La Verifica 8b specifica l’invariante x≥0: senza questa ipotesi il ciclo che incrementa x può terminare da valori iniziali negativi.

## Tracciabilità

Percorsi, hash SHA-256, durate, sezioni delle note e capitoli di destinazione sono in `fondamenti-di-programmazione-1-assets/fonti.json`, compilato per tutte le 13 lezioni. Il libro non contiene un'appendice sulle fonti.

## Libro consegnato

- [Documento TeXmacs modificabile](fondamenti-di-programmazione-1.tm).
- [Anteprima PDF](fondamenti-di-programmazione-1.pdf): 53 pagine; 9 capitoli, appendice A (cassetta degli attrezzi) e appendice B (risposte alle verifiche).
- 19 figure SVG originali con copie PDF vettoriali in `fondamenti-di-programmazione-1-assets/`, generate con `disegni.py`.
- [Dettagli di formato e rigenerazione](fondamenti-di-programmazione-1-assets/README.md).

## Controlli della consegna — 1 novembre 2026

- 5.640 controlli indipendenti passati con interi esatti ed enumerazione: tavole di verità (44 celle), leggi e catene proposizionali, controesempi, quantificatori su domini finiti, algebra, tracce di 5·3, 13·11, MCD(12,18), 2³, divisione 17/5, radice cubica, somma, fattoriale, Fibonacci, f(19)=7, aggiornamenti di array e bandiere a due e tre colori. Le verifiche finite accompagnano le prove, senza sostituirle.
- Revisione visiva di tutte le 53 pagine in fogli di contatto e lettura ingrandita delle pagine sospette; indice compilato, formule e tabelle corrette, figure leggibili. Officine e verifiche dei capitoli 2 e 3 restano insieme nelle rispettive pagine finali.
- 0 fonti modificate secondo il confronto SHA-256 del censimento.
- Le sole discrepanze documentarie aperte sono le date dei file del 21–23 settembre rispetto alle date citate nelle rispettive dispense. Sono mantenute entrambe nella mappa; non si ricostruisce un calendario non attestato.
