# Geometria 1 Spark — scelte editoriali e correzioni

## Lettore e percorso

Il volume parte da aritmetica scolastica, frazioni, equazioni elementari e trigonometria di base. Non presuppone esperienza universitaria con dimostrazioni. L'esempio prepara la domanda; la definizione rende precisa l'idea; la prova spiega perché scegliere quella mossa e poi la giustifica. Le spiegazioni aggiunte sono rielaborazioni didattiche, non citazioni delle registrazioni.

I pilastri sono nominati nell'indice: insiemi/applicazioni/campi, complessi e polinomi, spazi e sottospazi, span/indipendenza/basi, dimensione, somma diretta/Grassmann, matrici/linearità/nucleo/immagine, Gauss, rango/Rouché–Capelli/elementari. I dieci capitoli raggruppano le riprese del corso. Non replicano la sequenza delle vecchie Officine né l'indice tematico di Aritmetica Spark.

Scelte decisive: distinguere esistenza e unicità delle scritture; motivare lo scambio recuperando il vettore sostituito; dimostrare il completamento e la finitezza dei sottospazi prima di usare le loro basi; partire dalla base comune nella prova di Grassmann; sottrarre due soluzioni per riconoscere il nucleo; giustificare rango=pivot attraverso rango–nullità prima di dimostrare righe=colonne. Questo ordine evita dipendenze circolari.

La lunghezza nasce dai passaggi necessari e dalla selezione delle varianti, senza una quota di pagine o di riquadri. Venti esercizi permettono di provare a scegliere il metodo; tutti hanno risposte spiegate in appendice. I riquadri «Concetto chiave» rendono ritrovabili le definizioni. Il testo motiva le prove direttamente nella narrazione: non è stata imposta una serie di etichette «Anatomia» a ogni dimostrazione.

## Programma, aggiunte e selezioni

Tutte le 12 note e le 12 trascrizioni pertinenti sono state lette integralmente. Le tabelle di `coverage.md` registrano gli argomenti principali, quelli compatti e le varianti non riprodotte. Sono conservati anche i contenuti più espliciti soltanto nei transcript, tra cui dimensione reale di C^n e ottenere tutte le radici da una radice e dalle radici dell'unità. Nessun prerequisito essenziale è nascosto nelle sezioni facoltative.

Sono aggiunte didattiche, fra le altre: inversa di 2x+1; confronto fra 1+i e −1−i; divisione polinomiale svolta prima del teorema del fattore; coordinate in due basi e riferimento obliquo; esempi più piccoli per mostrare le ipotesi sul campo; prove esplicitate di completamento e basi dei sottospazi; matrice 2×3 introduttiva e matrice 1,…,9 come esercizio reale; letture per righe e colonne; esempi di Gauss e controlli per sostituzione. Le attribuzioni sono limitate a ciò che le fonti permettono di ricostruire.

Teorema fondamentale dell'algebra, equipotenza generale delle basi infinite e unicità della forma completamente ridotta sono riportati senza prova, come esplicitato nel libro. I corollari e le costruzioni necessari al percorso sono dimostrati. Non sono aggiunti determinanti o argomenti di novembre per completismo.

## Correzioni e precisazioni matematiche

- **Quadratica del 30 settembre.** La nota perde il termine −i. Il transcript e i conti successivi concordano su z²+(1−i)z−i, discriminante 2i, radici i e −1. Usata questa versione, con sostituzione e fattorizzazione esatte.
- **Radici e molteplicità.** Il limite di n radici non usa circolarmente una fattorizzazione già supposta completa. Le estrazioni abbassano il grado e conservano le altre molteplicità. Polinomio nullo escluso; costanti e prodotto vuoto distinti.
- **Coefficienti reali.** La stessa molteplicità delle radici coniugate è provata coniugando i coefficienti dell'identità, distinguendo il polinomio coniugato dal valore coniugato.
- **TFA e modulo.** Il richiamo del 13 ottobre al compito è reso con l'esempio didattico |z|²+1: non è un polinomio complesso nella variabile z. Il testo illeggibile del compito non è inventato.
- **Rotazioni delle radici.** Un argomento del termine noto va diviso per n dopo aver mantenuto 2kπ. Non è ripresa la rotazione π/12 riportata dall'ASR per radici seste di −1: la rotazione corretta sarebbe π/6. La tecnica è verificata nell'esercizio sulle radici quarte di −1.
- **Campo.** La definizione richiede 1≠0. L'annullamento del prodotto è giustificato tramite l'inverso. La derivazione del prodotto polare dichiara z,w≠0 prima della divisione; il caso con fattore zero è poi incluso nella proprietà del modulo.
- **Estensione degli scalari.** La frase della nota del 14 ottobre «oppure viceversa» è stata corretta: per gli stessi vettori un'indipendenza complessa implica l'indipendenza reale; il contrario può fallire, come mostrano (1,i),(i,−1). Una relazione reale non scompare ammettendo coefficienti complessi.
- **Caratteristica 2.** Nessuna divisione per 2 è effettuata su un campo che ha 2=0. La coppia (1,1),(1,−1) fallisce su F2; simmetriche e antisimmetriche coincidono in quel caso. La decomposizione canonica richiede esplicitamente 2≠0.
- **Scambio.** Nel passo iterato il coefficiente non nullo deve cadere su un vettore originario ancora presente, perché altrimenti il nuovo indipendente sarebbe generato dai precedenti. Il passaggio è ora scritto.
- **Dimensione dei sottospazi.** Prima si costruisce una base tramite ampliamenti limitati dalla dimensione ambiente; non si assume già la finitezza che si vuole dimostrare.
- **Grassmann.** Il vettore comune viene riscritto nella base dell'intersezione; il confronto diventa una relazione nella base di W, poi di U. È sostituito il richiamo impreciso all'unicità delle coordinate dell'archivio.
- **Campi finiti.** Rango minore del numero delle incognite dà infinite soluzioni soltanto su un campo infinito. Su un campo di q elementi, un sistema compatibile di rango r ha q^(n−r) soluzioni; la parametrizzazione giustifica il conteggio. Lo stesso limite è rispettato per l'infinità delle decomposizioni di una somma non diretta.
- **Matrice 1,…,9.** Il transcript non consente di certificare la matrice della lavagna. È un esercizio aggiunto ripreso dall'archivio e dichiarato reale: su F3 il suo rango cambierebbe. Il percorso principale usa un esempio 2×3 certo e autosufficiente.
- **Sistema in R4 del 22 ottobre.** La nota propone x1+2x2=0, x3−x4=0; i vettori finali del transcript sono invece coerenti con x1+x2+x3+x4=0, x3−x4=0. Il libro presenta autonomamente quest'ultimo sistema e lo verifica, senza certificarlo come dettato esatto. Le due varianti non sono duplicate.
- **Coefficienti e coordinate.** I coefficienti rispetto a generatori dipendenti non sono chiamati coordinate; l'unicità è riservata alle basi.
- **Gauss.** Si distingue lo span delle righe, invariato, dallo span delle colonne, che può cambiare. Il rango per colonne è conservato tramite il nucleo. Le colonne originali da estrarre sono giustificate dalle relazioni preservate, non dall'uguaglianza fra gli span trasformati.
- **Matrici elementari.** Distinti orientamenti delle prove per righe e colonne, matrici canoniche Eij e mosse Tij, moltiplicazione a sinistra e a destra, ordine delle inverse e delle mosse.

## Produzione e revisione editoriale della prima edizione

Libro nativo GNU TeXmacs, Computer Modern predefinito, corpo 11, A4, margini canonici e titoli centrati. `source/` contiene i frammenti modificabili; `templates/`, `scripts/`, `assets/` e `build.sh` rendono la compilazione locale riproducibile. I simboli i·sin sono distinti dalla sequenza di lettere isin, che il convertitore leggerebbe come prodotto di lettere.

Sono impiegate venti figure della libreria vettoriale dell'archivio. La copia `traslato` ha l'estremo superiore accorciato e l'etichetta S=ξ+S0 riportata nel canvas; il generatore, lo SVG e il PDF locali sono aggiornati insieme. L'archivio conserva l'originale. Non sono usate le figure archiviate con tagli non pertinenti al percorso, come `decomposizione`.

La lettura visiva della prima bozza ha trovato due pagine con soli esercizi (capitoli 5 e 9), la breve coda del capitolo 10 e il taglio nella figura del traslato. Le chiusure sono state riequilibrate: sezione sul campo insieme alla verifica, figura del piano insieme all'applicazione finale e agli esercizi, sezione facoltativa sull'equivalenza insieme agli esercizi. Non sono state abbreviate le spiegazioni per forzarle nelle pagine.

Ogni capitolo e soluzione è stato riletto dal responsabile dell'integrazione; i tre blocchi hanno inoltre una revisione matematica di un autore diverso. La revisione editoriale e visiva è separata: tutti i fogli sono controllati e le formule e figure sono ispezionate a scala maggiore. I risultati effettivi e le impronte della consegna sono in `validation.md`; le revisioni delle bozze sono conservate in `reviews/`.


## Revisione approfondita del 2 novembre 2026

Questa revisione riguarda tutti i dieci capitoli, l'introduzione, le didascalie e le venti soluzioni. Il riferimento riletto è Aritmetica Spark, capitoli 1, 5 e 6. Il criterio è una lingua italiana diretta, con una scelta matematica per capoverso e con esempi che insegnano a trovare una mossa. Ogni capitolo ha ora un vero «In breve» immediato, di due o tre frasi. I riquadri non sono stati usati per racchiudere prove lunghe.

La modifica principale riguarda dimensione e scambio. L'estrazione di una base è mostrata su una lista precisa; l'aggiunta fuori dallo span è dimostrata prima del suo uso. Due scambi successivi in R² fanno vedere quale vecchio vettore si può togliere senza espellere quello già inserito. Soltanto dopo compaiono scambio generale, Steinitz e dimensione. Le equivalenze massimale/minimale rimangono dimostrate, ma si leggono come approfondimento alla fine. La costruzione di basi dei sottospazi non dipende da queste equivalenze.

Nel capitolo 5 si costruiscono realmente i vettori bersaglio prima di introdurre la famiglia indicizzata. Nel 7 si svolge la stessa mossa della prova di Grassmann sui piani coordinati. Nell'8 si completa davvero la base del nucleo della matrice introduttiva prima del teorema rango–nullità. Nel 10 una sola riduzione numerica accompagna colonne, righe e scelta delle colonne originali. I buoni esempi precedenti su coordinate, radici e Gauss rimangono.

Le formule e i risultati principali non sono stati tagliati per ottenere una pagina più vuota. Il formalismo delle coordinate infinite e le caratterizzazioni ulteriori delle basi sono riconoscibili come Per proseguire. La non finita generazione di K[X] resta sul percorso principale. In 3 il caso concreto viene prima del gruppo iniziale di nomi formali.

Il rapporto `reviews/deep-pass-paragraphs.json` è solo un controllo del sorgente: conta le parole ordinarie, sostituendo ogni formula in linea con una voce. Nessun capoverso così contato raggiunge 80 parole; il massimo è 67 nel capitolo 10. Non misura l'altezza stampata, né certifica la facilità di una dimostrazione. La revisione visiva del PDF deve ancora controllare in particolare il capitolo 6 ampliato, le matrici affiancate del 10 e le interruzioni dei riquadri.

`checks/deep-pass.py` controlla con frazioni esatte i nuovi esempi e la presenza di un solo In breve per capitolo. Sono passati anche i cinque script di verifica già presenti. La lettura matematica dei nuovi passaggi è registrata in `reviews/deep-pass.md`; le verifiche finite non sono presentate come prove dei teoremi. L'esportazione, il controllo visivo completo e i conteggi finali spettano all'integrazione di questa revisione; le note sulla prima edizione sopra sono storiche.


## Chiusura della revisione editoriale

Le aperture di tutti i capitoli sono state rilette e riscritte per dare una domanda e un percorso in poche frasi naturali. Verificata la densità del PDF, con il preambolo di Aritmetica e senza ridurre caratteri o margini. Il respiro aggiunto serve ai passaggi e alle decisioni spiegate; il numero di pagine non è un obiettivo. I dati correnti e i limiti effettivi sono in validation.md.

La revisione indipendente ha precisato due ipotesi: nel teorema del fattore P∈K[z],r∈K; una famiglia di colonne parallele genera una retta quando almeno una colonna è non nulla, mentre la matrice nulla ha immagine {0}. Il capitolo4 distingue con sottotitoli gli esempi sui polinomi, sulle funzioni, sulle matrici e sui campi.
