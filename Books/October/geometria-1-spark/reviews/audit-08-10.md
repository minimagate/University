# Geometria Spark — audit del blocco sistemi (capitoli 8–10)

## Fonti lette

Lettura completa delle seguenti tre note e delle tre corrispondenti trascrizioni, in blocchi di caratteri limitati. Il primo output con le due note 22/10 nucleo + 27/10 era troncato: i tratti mancanti sono stati recuperati esplicitamente prima di questa attestazione.

| Data / titolo | Nota | Transcript | Lettura effettiva |
|---|---:|---:|---|
| 22/10 — Sistemi lineari e algoritmo di eliminazione di Gauss | 23.994 caratteri | 50.606 caratteri | Nota completa; transcript [0,18000), [18000,36000), [36000,fine) |
| 22/10 — Sistemi lineari, nucleo, immagine e rango | 20.282 caratteri | 38.728 caratteri | Nota completa, coda [19000,fine) recuperata; transcript [0,19000), [19000,fine) |
| 27/10 — Rango, sistemi lineari e matrici elementari | 21.315 caratteri | 39.512 caratteri | Nota completa, apertura [0,4500) recuperata; transcript [0,20000), [20000,fine) |

In aggiunta, parte finale della nota e del transcript del **14/10 — Basi, sottospazi e sistemi lineari**, ultimi 14.000 caratteri di ciascuno, comprendenti il prodotto matrice-vettore, il prodotto tra matrici, Ax=b e sistemi omogenei. Il resto della lezione è assegnato al blocco centrale. Non è stata letta o incorporata la lezione del 1° novembre.

Riferimenti consultati: `AGENTS.md`; skill monthly-book, texmacs-book, book-figures e spark-standard; `Books/README.md`; Aritmetica Spark `source/00-front.tm`, `source/09.tm`, `editorial-notes.md`; archivio `geometria-1.tm`, righe 2318–3138 (vecchi capitoli 10–12), e mappa editoriale già disponibile nel contesto. Il vecchio testo è un riferimento contenutistico, non il modello delle spiegazioni.

## Mappa scelta e dipendenze

- **Capitolo 8:** domanda «che cosa possiamo raggiungere e che cosa si perde?». L'esempio x↦(x1+x2,x2+x3) prepara prodotto, linearità, nucleo/immagine e dimensioni. Le prove di iniettività e del traslato usano la stessa idea, motivata nel testo: sottrarre due vettori che hanno la medesima immagine. Rango–nullità si dimostra scegliendo prima la base del nucleo e completandola.
- **Capitolo 9:** domanda «come troviamo davvero le soluzioni?». Parte da un sistema già a scala, poi introduce le mosse reversibili e l'algoritmo che porta a quella forma. Distingue il contenuto geometrico del capitolo 8 dal procedimento; prova la terminazione e il conteggio dei parametri, poi traduce tra equazioni e generatori.
- **Capitolo 10:** domanda «quali dimensioni restano invariate?». Rouché–Capelli deriva dagli spazi delle colonne inclusi; il rango=pivot deriva dall'indipendenza triangolare e dall'invarianza del nucleo tramite rango–nullità. Solo dopo si prova righe=colonne. Le mosse diventano prodotti; il criterio invertibilità⇔rango massimo non usa determinanti né risultati successivi.

Dipendenze richieste dai capitoli precedenti: campi e divisione per un non nullo; span/indipendenza/basi; completamento a una base; sottospazio incluso di dimensione uguale; formula di Grassmann per esercizio 9.2. Il capitolo 8 non assume Gauss. Il lemma dei pivot non si appoggia a righe=colonne, evitando circolarità. Nel capitolo 9 l'estrazione di una base può già avvenire con verifiche successive di appartenenza; la scorciatoia degli indici pivot viene giustificata nel capitolo 10.

## Copertura analitica

| Fonte / argomento sostanziale | Destinazione e trattamento |
|---|---|
| 14/10: prodotto matrice-vettore, riga per colonna, compatibilità delle dimensioni, prodotto tra matrici | 8 «Il prodotto di matrici: righe per colonne», principale. |
| 14/10: sistema matriciale e omogeneo | 8 «Sistemi lineari e combinazioni delle colonne», principale. |
| 22/10 nucleo: supplementari, non unicità, rette R2 e retta trasversale a piano R3 | Da integrare nel cap. 7 «Somme e somme dirette»; comunicato all'agente spazi. |
| 22/10 nucleo: Ax=b, matrice coefficienti/completa, prodotto, associatività/distributività/non commutatività | 8 prime due sezioni; principale, con breve giustificazione per indici delle proprietà. |
| 22/10 nucleo: lettura per righe e per colonne, intersezione di rette | 8 «Sistemi lineari e combinazioni delle colonne», principale per colonne, compatta per righe. Figura colonne. |
| 22/10 nucleo: definizione linearità, conservazione combinazioni, F(0)=0 | 8 «Applicazioni lineari, nucleo e immagine», principale. La conservazione di combinazioni finite deriva per ripetizione delle due proprietà; nessun formalismo di applicazioni matriciali in basi generali anticipato. |
| 22/10 nucleo: nucleo e immagine sottospazi, spazio colonne | 8 medesima sezione, principale; prove esplicite. |
| 22/10 nucleo: esempio numerico non leggibile | Sostituito da esempio didattico certo 2×3; la matrice 1,…,9, già nell'archivio, è esercizio 8.2 aggiunto senza attribuzione certa al docente. |
| 22/10 nucleo: iniettiva⇔nucleo nullo | 8 medesima sezione; prova completa delle due direzioni, motivata dalla differenza. |
| 22/10 nucleo e 27/10: soluzioni ξ+ker, omogeneo sempre compatibile, traslato affine | 8 «Tutte le soluzioni: una particolare più il nucleo», principale; due inclusioni dimostrate, terminologia affine solo introdotta. Figura traslato. |
| 22/10 nucleo e 27/10: rango, rango–nullità e base adattata | 8 «Rango e teorema rango–nullità», principale; generazione e indipendenza delle immagini dimostrate separatamente, compresi blocchi vuoti. Figura rango-nullita. |
| 22/10 Gauss: scala, pivot, libere, sostituzione all'indietro e contraddizione 0=c | 9 «Pivot e variabili libere», principale. |
| 22/10 Gauss: matrice completa, pivot nei termini noti | 8 definizione e 9 prima sezione; principale. |
| 22/10 Gauss: tre operazioni e invarianza delle soluzioni, span righe invariato/colonne no | 9 «Operazioni di riga: cambiare la forma conservando le soluzioni», principale; tutte le inverse indicate, controesempio 1×colonna. |
| 22/10 Gauss: algoritmo ricorsivo, colonne nulle, scelta pivot, quoziente per annullare, indici | 9 «L'algoritmo e una riduzione completa», principale; termini spiegati senza rinominare gli indici globali, terminazione e conservazione zeri motivate. Figure scala, gauss-passi. |
| 22/10 Gauss: esempio numerico con scambio | 9 stessa sezione: esempio aggiunto già nell'archivio, tutti passaggi di matrice e verifica nel sistema iniziale. L'esempio ASR frammentario non ricostruito letteralmente. |
| 22/10 Gauss: compatibilità scala, unicità/parametri, campo finito | 9 «Contare i parametri e costruire una base del nucleo», principale, inclusa giustificazione della biiezione tra valori liberi e soluzioni. |
| 22/10 Gauss: esempio con x1+x2−x3+2x4=2, x3+x4=−1 | 9 stessa sezione, conservato e svolto. |
| 22/10 Gauss: da generatori a equazioni, esempio piano x+y+z=0 | 9 «Dalle equazioni ai generatori, e viceversa», principale, necessità e sufficienza, figura piano-span. |
| 22/10 Gauss: da equazioni a base, esempio R4 | 9 stessa sezione, principale, versione coerente con vettori finali del transcript; discrepanza registrata sotto. |
| 22/10 Gauss: indipendenza tramite omogeneo, estrazione base, completamento | 9 fine capitolo: appartenenza e scarto successivo; 10 «Rango per righe e rango per colonne»: indici pivot, prova delle relazioni conservate. Il completamento astratto resta al cap. 6; non sviluppato un ulteriore laboratorio algoritmico come nella lezione di novembre. |
| 22/10 Gauss: intersezione unendo equazioni, somma unendo generatori | 9 fine capitolo e esercizio 9.2, principale; applicazione con soluzioni motivate. |
| 27/10: Rouché–Capelli e claim sullo span | 10 «Rouché–Capelli: quando esistono soluzioni», principale; il claim è incorporato nella prova per spazi inclusi, con la giustificazione dell'uguaglianza dalle dimensioni. Figura rouche. |
| 27/10: colonne pivot indipendenti, rango scala, invarianza rango via nucleo | 10 «Perché il rango è il numero di pivot», principale, argomento esplicito a ritroso, caso matrice nulla. |
| 27/10: righe=colonne, limite min(m,n), trasposta | 10 «Rango per righe e rango per colonne», principale; prova non circolare. |
| 27/10: ei^T seleziona riga, matrici elementari tre tipi/inverse, diagonali | 10 «Matrici elementari: scrivere le mosse come prodotti», principale; notazione T_ij distinta dalle matrici canoniche E_ij. Esempio E21(−4) ripreso dall'archivio. |
| 27/10: GLm, prodotto inverse in ordine invertito, non commutatività e GL1 | 10 «Invertibilità e gruppo lineare generale», principale, definizione di gruppo esplicitata nel caso concreto; esempio invertibili non commutanti già al cap. 8. |
| 27/10: Gauss prodotto elementari, invertibile⇒rango massimo, ogni invertibile prodotto di elementari | 10 stessa sezione, principale. Aggiunta anche dimostrazione del converso rango massimo⇒invertibile come chiusura didattica utile. |
| 27/10: equivalenze sinistra/destra e riduzione completa, unicità enunciata | 10 «Per proseguire: equivalenza e forma completamente ridotta», compatto; definizioni e tre proprietà presenti, esistenza costruita, unicità dichiarata senza prova. |

## Selezioni e correzioni

1. **Campo finito:** la conclusione della nota 22/10 nucleo «rango<n ⇒ infinite soluzioni» è valida su campi infiniti. Nel libro si separano esplicitamente campi infiniti e finiti, con conteggio q^(n−r).
2. **Coordinate rispetto a generatori:** il transcript e l'archivio chiamano coordinate i coefficienti rispetto a generatori anche non indipendenti. Il libro parla di coefficienti di combinazione: «coordinate» resta riservato a una base (unicità).
3. **Matrice 1,…,9:** nel transcript 22/10 nucleo compaiono numeri dettati con ASR incompleto, senza matrice affidabile. Il libro non la attribuisce alla lezione: esercizio 8.2 riprende l'esempio verificabile dell'archivio come consolidamento, specificando esplicitamente il campo reale (il rango cambierebbe su F3). Il testo non dipende dalla sua ricostruzione.
4. **Esempio R4 del 22/10 Gauss:** la nota riporta x1+2x2=0, x3−x4=0 e base (−2,1,0,0),(0,0,1,1). Nel transcript i conti finali danno (−1,1,0,0),(−2,0,1,1), coerenti invece con x1+x2+x3+x4=0, x3−x4=0. Il libro presenta quest'ultimo sistema, enunciato in modo autonomo e matematicamente verificato; non certifica la formula ASR come dettato esatto. L'altra variante non viene duplicata: stessa tecnica, nessun nuovo pilastro.
5. **Rango righe/colonne:** distinto l'argomento per colonne pivot (dal basso) dall'argomento per righe non nulle (dalla prima colonna pivot). L'archivio usava «vettori a scala» in modo ambiguo unificando orientamenti diversi. Eliminata l'ambiguità.
6. **Forma ridotta:** l'unicità è enunciata, non presentata come dimostrata. La lezione la lascia come esercizio; il libro mantiene la distinzione e non propone al lettore un esercizio privo di soluzione.
7. **Operazioni di colonna:** specificato l'effetto di A(I+λEij): la colonna j riceve λ volte la colonna i. Sono equivalenze a destra, non mosse che conservano lo stesso sistema nelle stesse variabili.
8. **Assunzioni:** esempi con divisione per 2 o 3 esplicitamente reali; algoritmi e teoremi generali su campo arbitrario. Nessuna divisione numerica è estesa tacitamente a caratteristica 2/3.

Compattati: ripetizioni delle stesse definizioni tra due 22/10 e 27/10; formalismo di indici relativi alla sottomatrice; esempi molto frammentari della lavagna; ripetizione delle prove speculari sinistra/destra. Non introdotti determinanti, autovalori, teorie delle applicazioni lineari in basi generali o materiale della lezione di novembre.

## Figure e controlli

Figure usate: **colonne**, **traslato**, **rango-nullita**, **scala**, **gauss-passi**, **piano-span**, **rouche**. Lette le corrispondenti funzioni del generatore dell'archivio: i disegni sono coerenti con la matematica del testo. Colonne è un'immagine generica 2×2, distinta dalla matrice introduttiva 2×3; rango-nullita usa una base adattata (esplicitato nella didascalia); piano-span ha gli stessi generatori del testo; rouche raffigura rango 2→3. La revisione visiva del PDF e degli originali è a cura del root.

`checks/systems.py`: libreria standard, aritmetica razionale esatta con Fraction, eliminazione indipendente per calcolare ranghi e verifica delle formule numeriche dei capitoli 8–10, di tutti i sei esercizi e dei conteggi su F2,F3,F5. Esito **PASS** al momento della stesura. Test finiti distinti dalle dimostrazioni generali. `scripts/check.py` sui tre frammenti e sul frammento soluzioni: **ok**.

Rilettura matematica del blocco: controllate le due inclusioni del traslato; generazione/indipendenza nella prova rango–nullità; direzione inversa Rouché–Capelli via inclusione e dimensione finita; indipendenza colonne pivot e righe non nulle; rango invariato senza supporre righe=colonne; scelta delle colonne originali attraverso relazioni preservate; ordine dei fattori di Gauss e delle inverse; converso criterio invertibilità senza assumere che un'inversa sinistra sia già inversa destra.
