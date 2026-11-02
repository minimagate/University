# Geometria 1 Spark — copertura del volume 1

Periodo: **23 settembre–31 ottobre 2026**, includendo tutte le fonti di settembre disponibili. Ultima lezione disponibile nel periodo: **27 ottobre**. Corpus: **12 note e 12 trascrizioni**, tutte lette integralmente. Non risultano note autonome o allegati pertinenti fuori da `Lectures/`. Il censimento, i percorsi, gli hash e le destinazioni sono in `assets/fonti.json`; l'inventario ragionato è in `source-audit.md`.

Il volume sviluppa tutti i pilastri principali e seleziona varianti ed esercizi. Non riproduce parola per parola le registrazioni né pretende di ricostruire ciò che non è leggibile nella lavagna trascritta. I titoli e numeri qui sotto sono confrontati con i frammenti effettivi del libro.

## Linguaggio, complessi e polinomi


| Fonte e temi | Destinazione attuale | Livello/selezione |
|---|---|---|
| 23/09: insiemi, appartenenza, intersezione/unione, prodotto cartesiano, coppie/terne, inclusione e uguaglianza, distributive | 1.1 «Insiemi e uguaglianza: guardare gli elementi» | Principale; doppia inclusione motivata su una distributiva; seconda distributiva spiegata con casi. Sottigliezza coppia di coppia/terna compatta. |
| 23/09: applicazioni, dominio/codominio, grafico-relazione, quantificatori, iniettiva/suriettiva/biiettiva, negazione iniettività | 1.2 «Applicazioni, iniettività e suriettività» | Principale; esempio quadrato con variazione di dominio/codominio; negazione espressa con due elementi distinti. Formalismo di grafico compatto ma completo. |
| 23/09: composizione, identità, costruzione dell'inversa | 1.3 «Composizione e inversa: tornare al punto di partenza» | Principale; esistenza/unicità motivate. Aggiunte didattiche: f(x)=2x+1; anche reciproco e unicità della caratterizzazione dell'inversa. |
| 23/09: operazioni interne, campi, assiomi, unicità di neutro/opposto/inverso | 1.4 «Campi: quali regole servono per calcolare?» | Principale; 1≠0 esplicito; conseguenze a·0=0 e annullamento prodotto dimostrate per preparare polinomi. Distinzione dal prodotto esterno rimessa al cap.4. |
| 23/09: F2, parità, 2=0; cenno campi con p elementi | 1.5 «Un campo piccolo: due elementi» | F2 principale con tutte operazioni e giustificazione degli assiomi via parità. Generalizzazione a p primo omessa perché secondaria e richiederebbe un'altra prova. |
| 23/09: vettori geometrici, coordinate oblique e nello spazio, somma/prodotto scalare, assiomi spazio vettoriale | 4.1; 5.3; 6.3 | Sviluppati nel blocco vettoriale, senza duplicazioni nei capp.1–3. Presentazione futura di prodotti scalari/coniche esclusa dal programma effettivo del periodo. |
| 25/09: costruzione C da R², parti, somma/prodotto, i²=-1, inclusione R, verifiche campo | 2.1 «Da una coppia reale a un numero complesso» e 2.2 «Modulo e coniugato: costruire l'inverso» | Principale. Associatività del prodotto controllata anche con componenti del prodotto triplo; distributività condensata alla distribuzione reale. |
| 25/09: piano complesso, modulo, coniugio/proprietà, inverso, divisione (3−2i)/(1−i) | 2.2 | Principale; il coniugato è motivato come passaggio a un prodotto reale positivo, poi normalizzazione a 1. Piano/somma sono esplicitati nel percorso. |
| 25/09: coordinate polari, quadranti, argomento modulo 2π, prodotto polare, De Moivre | 2.3 «Forma polare e significato del prodotto» | Principale; ipotesi z≠0 per argomento; esempio −1−i e confronto con 1+i; casi asse immaginario. e^(iθ) introdotto come abbreviazione, non assunto come teoria esponenziale. |
| 25/09: radici ennesime, caso 0, cubiche di −8, radici unità | 2.4 «Radici ennesime: perché sono più di una?» | Principale, n≥1 esplicito; dimostrata distinzione e completezza della lista. Esercizi z³=1 e z⁴=1 selezionati: resta z⁴=1 con estensione z⁴=−1 e soluzioni; il caso generale copre z³=1 senza ripetizione. |
| 25/09: enunciato TFA e primo fattore | 3.1–3.2 | Riuniti con il 30/09, senza duplicazione. |
| 30/09: fattore da divisione con resto, TFA enunciato, fattorizzazione con induzione, due forme dell'induzione | 3.1 «Una radice permette di estrarre un fattore» e 3.2 «Teorema fondamentale dell'algebra e induzione» | Principale. Base e passo completi, ragione della scelta di induzione esplicita. Induzione forte compatta con proprietà cumulativa, senza appendice di ricette. |
| 30/09: molteplicità, divisibilità, grado e al più n radici in campo | 3.1 e 3.3 «Molteplicità e numero massimo di radici» | Principale. Prova non circolare per estrazione progressiva; mantenimento molteplicità delle altre radici esplicito. Esempio 2+4+3=9: non si riproducono le ambiguità ASR sul grado10 e un'ulteriore radice0. |
| 30/09: radici coniugate, uguale molteplicità, fattori quadratici reali | 3.4 «Coefficienti reali e coppie coniugate» | Principale. Prova molteplicità tramite coniugio dei coefficienti; quadratica irreducibile sui reali con (x−a)²+b²>0. |
| 30/09: formula quadratica e radice quadrata complessa, esempio corretto | 3.5 «Equazioni quadratiche complesse» | Principale. Formula motivata dal completamento del quadrato; Δ=0 distinto. |
| 30/09: radici dell'unità, ottenere tutte radici moltiplicando una per radici unità | 2.4 | Presente compatto; argomento transcript spesso poco chiaro nella nota, conservato. |
| 30/09: z⁶=1 in forma polare e mediante fattori | 2.4 e 3.5, «Per proseguire: due letture delle radici seste» | Confronto presente, seconda via facoltativa. Variante z⁶=−1 non riprodotta: esercizio z⁴=−1 prepara la stessa tecnica di rotazione. |


## Spazi, basi, dimensione e somme


**Principale** significa spiegazione, definizione e ragionamento; **compatto** significa presenza breve o confluita in un altro esempio; **variante omessa** riguarda un esempio/argomento alternativo, non un pilastro.

| Fonte | Contenuto | Destinazione e trattamento |
|---|---|---|
| 30/09 Spazi | Frecce, somma parallelogramma, multipli; K^n e verifica assiomi | 4.1 «Spazio vettoriale: le regole di somma e scalari», principale. Verifica associatività per componenti completa; altre verifiche ricondotte esplicitamente alle identità del campo. |
| 30/09 Spazi | Otto assiomi; distinzione somma scalari/vettori e prodotto interno al campo/esterno | 4.1, principale: tutti gli assiomi enunciati e chiusura specificata nei tipi delle operazioni. |
| 30/09 Spazi | 0v=0, α0=0, (-1)v=-v | 4.1, principale, dimostrazioni esplicite. |
| 30/09 Spazi | K[X], polinomi formali, grado della somma, grado esattamente d contro grado al più d | 4.2 «Polinomi, funzioni e matrici come vettori», principale; esempio concreto di cancellazione. |
| 30/09 Spazi | Funzioni punto per punto, funzione nulla e verifica proprietà | 4.2, principale; associatività mostrata valutando in ogni punto. |
| 30/09 Spazi | Criterio di sottospazio e non vuoto | 4.3 «Sottospazi: quando le operazioni restano dentro», principale, necessità e sufficienza; vuoto escluso. |
| 30/09 Spazi | Rette e piani per origine; classificazione R2 e R3 | Esempi 4.3; classificazione e giustificazione mediante dimensione in 6.4. La prova costruttiva alternativa in R2 è omessa come variante. |
| 30/09 Spazi | Intersezione e unione di sottospazi | 4.4 «Intersezione e unione di sottospazi», principale; dimostrazione completa del caso unione, sostituendo il generico «in generale» delle note. |
| 02/10 | Combinazioni, span finito/infinito; sottospazio; vettori ripetuti, coefficienti zero | 5.1 «Combinazioni lineari, span e generatori», principale. Ripetizioni/zeri confluiscono nel sommare coefficienti; somma vuota aggiunta per gestire V=0. |
| 02/10 | Span minimo, intersezione di tutti i sottospazi contenenti A; span dello span | 5.1, principale con giustificazione. |
| 02/10 | Generatorî; monomi, sole potenze pari/dispari | 5.1 e5.3, principale per generatori e base monomi; compatto per sole potenze pari. Variante dispari omessa perché usa identico argomento. |
| 02/10 | Indipendenza e unicità; uno/due vettori; dipendenza iff vettore superfluo; eredità per sottoinsiemi/soprainsiemi | 5.2 «Indipendenza lineare: rendere unica la scrittura», principale con entrambe le direzioni. |
| 02/10 | Basi, coordinate, canonica, non canonica | 5.3 «Basi e coordinate rispetto a una base», principale, con esempio completo in R2. |
| 02/10 | Base infinita monomi e K[X] non finitamente generato | 5.3, principale; prova grado massimo, con caso tutti polinomi nulli separato. |
| 06/10 | Funzioni f(3)=5,g(3)=7; C come spazio su C e R | 4.2; base e dimensione nel5–6. Esempio dei valori conservato. |
| 06/10 | Matrici M_mn, indice riga/colonna; somme e multipli, zero; prodotto tra matrici diverso | 4.2, principale; base E_ij in6.3. |
| 06/10 | R2 non è letteralmente sottoinsieme R3, zero relativo | 4.3, compatto ma esplicito: coppia e terna distinte, copia R2 nel piano z=0. |
| 06/10 | Equazione 2x-y+3z=0, implicita e parametri | 4.3, principale, inclusa parametrizzazione completa e verifica chiusura. |
| 06/10 | Una equazione non nulla in K^n produce n−1 generatori indipendenti | 6.4, principale, base f_j=e_j−(a_j/a_1)e_1, caso coefficienti tutti nulli separato e altro coefficiente non nullo tramite riordinamento. |
| 06/10 | Esempio (-1,1,0),(-2,1,1), indipendenza da componenti; struttura a pivot | 5.2 esempio guidato, principale. Il nome pivot e l'algoritmo sono rinviati ai capitoli 8–10. |
| 07/10 | Coordinate come funzione B→K a supporto finito; basi ordinate | 5.3, principale; non si identifica V con tutte le funzioni su B. |
| 07/10 | Mappa delle coordinate lineare e biiettiva/isomorfismo | 6.3 «Dimensione: un numero che non dipende dalla base», principale; linearità, iniettività/suriettività spiegate via esistenza/unicità. |
| 07/10 | Base E_ij, dimensione mn; C e C^n come spazi reali | 6.3, principale per matrici; compatto per dim_R C^n=2n con base reale esplicita. Quest'ultima discussione è più presente nel transcript che nella nota. |
| 07/10 | Divisione per 2; esempio di matrici non indipendenti in caratteristica 2 | 5.4 «Il campo cambia le combinazioni ammesse», principio principale ed esempio più piccolo (1,1),(1,-1); l'esercizio matriciale a quattro vettori è una variante omessa. |
| 07/10 | Base iff indipendente massimale iff generatore minimale | 6.1 «Esistenza di basi: togliere e aggiungere vettori», principale con tre equivalenze dimostrate, vale anche infinito per relazioni finite. |
| 07/10 | Esistenza da famiglia finita, lemma di scambio elementare e per basi | 6.1–6.2, principale, prove complete e motivazione tramite recupero vettore rimosso. |
| 07/10 | Unicità cardinalità base; dimensione; caso infinito | 6.3 principale per caso finito, inclusa impossibilità di base infinita quando esiste una base finita. «Per proseguire: basi infinite» enuncia senza fingere di provare il confronto generale. |
| 13/10 | Basi sottospazi e completamento; uguaglianza dimensioni; ogni dimensione k; vincoli indipendenti/generatori | 6.4, principale. Aggiunta la prova di esistenza di una base del sottospazio per ampliamento limitato da n, evitando il presupposto non ancora giustificato di finitezza. |
| 13/10 | Somma U+W=span(U∪W), sottospazio | 7.1 «Somma di sottospazi e somma diretta», principale e dimostrato. |
| 13/10 | Somma diretta e unicità; dividere famiglia indipendente; dim somma diretta | 7.1–7.2, principale con prove complete. Decomposizioni generali (u+t)+(w−t) incluse, campo infinito specificato per averne infinite. |
| 13/10 | Grassmann, base comune e conteggio; due piani e piano+retta | 7.3 «Formula di Grassmann: contare la parte comune una volta», principale con prova completa; geometria non presupposta circolarmente, due piani analizzati dopo la formula. |
| 13/10 | Simmetriche, antisimmetriche, trasposta, scomposizione | 7.4 «Matrici simmetriche e antisimmetriche», principale, ipotesi 2≠0 esplicita; esempio concreto riusato dall'archivio. |
| 13/10 | Commenti compito: base va dimostrata, connettivi, TFA non per espressioni con modulo | Requisiti rispettati nella prosa e negli esempi; avvertenza su TFA sviluppata in 3.2. Non riprodotti commenti amministrativi né testo del problema non ricostruibile. |
| 14/10 | Base da sistemi e ruolo diverso b=0/b generico | 5.3 esempio esplicito prima dei criteri dimensionali; 6.4 criteri con n vettori. Sistemi matriciali sono nei capp8–10, curati dall'altro agente. |
| 14/10 | Scarto/completamento; base E_ij; singolo vettore R2 | 6.1,6.3,6.4 e esercizio6.2, principale; calcoli duplicati non ripetuti. |
| 14/10 | Indipendenza campo: (1,i),(i,−1) | 5.4, principale con prova reale/complessa e direzione corretta fra campi. |
| 14/10 | Equazione x+2y−z=0 | Variante numerica omessa; stessa tecnica sviluppata su2x−y+3z=0 in4.3, forma generale in6.4. |
| 14/10 | W0,W1,W01,{p(0)=p(1)}; gradi distinti | 6.5 «Basi di sottospazi di polinomi», principale, quattro basi e quattro dimensioni con generazione/indipendenza esplicite. Base alternativa in potenze di X−1 omessa come variante. |
| 14/10 | Intersezione e prova unione; prodotto matrice/vettore e matrici, Ax=b, omogeneo | Unione/intersezione 4.4 principale; prodotti in 8.1 e sistemi in 8.2, con sviluppo nei capp. 9–10. |


## Matrici, sistemi e rango


| Fonte / argomento sostanziale | Destinazione e trattamento |
|---|---|
| 14/10: prodotto matrice-vettore, riga per colonna, compatibilità delle dimensioni, prodotto tra matrici | 8 «Il prodotto di matrici: righe per colonne», principale. |
| 14/10: sistema matriciale e omogeneo | 8 «Sistemi lineari e combinazioni delle colonne», principale. |
| 22/10 nucleo: supplementari, non unicità, rette R2 e retta trasversale a piano R3 | 7.2 «Basi della somma diretta e supplementari», principale. |
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


## Confini e selezioni

- Il primo volume parte dalla prima lezione disponibile, senza assumere già studiato il vecchio volume. Non si assume che le date dei file certifichino un calendario completo del corso.
- La lezione del **1° novembre** su indipendenza e basi mediante Gauss è esclusa dal corpus. Le tecniche di Gauss già presenti il 22 ottobre sono sviluppate: non sono state rinviate solo perché ricompaiono nel titolo di novembre.
- Il teorema cinese del resto, già erroneamente classificato in Geometria e ora collocato in Aritmetica, non appartiene al corso di questo volume; nessuna fonte è stata spostata durante questa produzione.
- Non riprodotti gli avvisi amministrativi, le conversazioni di pausa, le ripetizioni delle definizioni e le varianti numeriche che applicano una tecnica già spiegata. Le principali varianti selezionate sono esplicite nelle tabelle.
- Teorema fondamentale dell'algebra, confronto generale delle basi infinite e unicità della forma completamente ridotta sono **enunciati senza prova**, con il limite dichiarato nel testo. Sono invece dimostrati la fattorizzazione conseguente, il confronto finito delle basi e l'esistenza della forma ridotta.
- Nessun determinante, autovalore, prodotto scalare interno o teoria generale del cambio di matrice in basi arbitrarie viene aggiunto per allungare il percorso.

Tutti i **20 esercizi** proposti per il lavoro autonomo hanno risposta spiegata in appendice. Motivazioni, controesempi ed esempi aggiunti sono rielaborazioni didattiche: le correzioni e i limiti delle ricostruzioni sono documentati in `editorial-notes.md`.
