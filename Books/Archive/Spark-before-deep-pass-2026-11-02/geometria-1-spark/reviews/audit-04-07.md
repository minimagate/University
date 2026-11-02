# Revisione del blocco centrale — capitoli 4–7

## Letture effettive

Sono state lette integralmente le seguenti **sei note e sei trascrizioni**, in chiamate separate e, per i transcript lunghi, in due intervalli di caratteri contigui. Nessuna delle letture delle fonti elencate è stata troncata. Il conteggio include YAML, summary e corpo; non coincide con il numero di caratteri della sola registrazione trascritta.

| Fonte, titolo esatto | Nota, caratteri | Transcript, caratteri | Intervalli letti del transcript |
|---|---:|---:|---|
| 30/09 — Spazi vettoriali, esempi e sottospazi | 20.730 | 46.106 | 0–24.000; 24.000–fine |
| 02/10 — Span, indipendenza lineare e basi vettoriali | 21.384 | 38.858 | 0–20.000; 20.000–fine |
| 06/10 — Sottospazi, combinazioni lineari e basi | 17.616 | 41.305 | 0–21.000; 21.000–fine |
| 07/10 — Coordinate, basi e dimensione degli spazi vettoriali | 19.832 | 46.877 | 0–24.000; 24.000–fine |
| 13/10 — Somma diretta e dimensione dei sottospazi | 19.933 | 46.879 | 0–24.000; 24.000–fine |
| 14/10 — Basi, sottospazi e sistemi lineari | 19.286 | 42.697 | 0–22.000; 22.000–fine |

La nota del 06/10 ha `(!)` nel nome del file; il transcript associato non lo ha. Il `source_audio` del transcript 07/10 punta a `_audio/Aritmetica/New Recording 69.m4a`, ma titolo, campo course e corpo sono coerenti con Geometria 1: il contenuto è incluso senza alterare i metadati. I percorsi e gli hash completi sono nel manifesto globale.

Letti anche `AGENTS.md`, le tre skill aggiornate, `spark-standard.md`, introduzione e capitolo 4 dell'Aritmetica Spark, sua coverage e preambolo. Consultati la mappa dell'archivio e i capitoli 5–9 del vecchio `geometria-1.tm` (decodifica latin-1; i tag matematici nativi conservano la matematica). La consultazione dell'archivio non sostituisce le letture complete delle fonti del corso. I contenuti già corretti dell'archivio sono stati ricontrollati e riscritti; le vecchie Officine e la cassetta degli attrezzi non sono state riprese.

## Mappa analitica delle fonti

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
| 13/10 | Commenti compito: base va dimostrata, connettivi, TFA non per espressioni con modulo | Requisiti rispettati nella prosa e negli esempi; avvertenza su TFA comunicata al redattore dei fondamenti per cap3. Non riprodotti commenti amministrativi né testo del problema non ricostruibile. |
| 14/10 | Base da sistemi e ruolo diverso b=0/b generico | 5.3 esempio esplicito prima dei criteri dimensionali; 6.4 criteri con n vettori. Sistemi matriciali sono nei capp8–10, curati dall'altro agente. |
| 14/10 | Scarto/completamento; base E_ij; singolo vettore R2 | 6.1,6.3,6.4 e esercizio6.2, principale; calcoli duplicati non ripetuti. |
| 14/10 | Indipendenza campo: (1,i),(i,−1) | 5.4, principale con prova reale/complessa e direzione corretta fra campi. |
| 14/10 | Equazione x+2y−z=0 | Variante numerica omessa; stessa tecnica sviluppata su2x−y+3z=0 in4.3, forma generale in6.4. |
| 14/10 | W0,W1,W01,{p(0)=p(1)}; gradi distinti | 6.5 «Basi di sottospazi di polinomi», principale, quattro basi e quattro dimensioni con generazione/indipendenza esplicite. Base alternativa in potenze di X−1 omessa come variante. |
| 14/10 | Intersezione e prova unione; prodotto matrice/vettore e matrici, Ax=b, omogeneo | Unione/intersezione 4.4 principale; intera parte prodotti/sistemi affidata al blocco finale8–10, lettura condivisa verificata fra agenti. |

## Pilastri e dipendenze adottate prima della stesura

1. **Spazio vettoriale e sottospazio (cap4).** Domanda: quali oggetti condividono le operazioni delle frecce? Esempio iniziale somma e multiplo di coppie; poi assiomi e catalogo. Il criterio spiega come riconoscere ambienti più piccoli senza otto nuove verifiche. Prerequisito: campo cap1; esempi complessi/polinomi capp2–3. Applicazione: equazione omogenea e parametri. Classificazione completa R2/R3 rinviata alla dimensione, così non si invoca prima un risultato non dimostrato.
2. **Span, indipendenza e base (cap5).** Domanda: raggiungiamo ogni vettore e con coefficienti unici? Esempio due multipli (1,2),(2,4). Span per esistenza; combinazione nulla per unicità; base combina le due. L'esempio in base non canonica mostra sia generazione sia unicità senza usare ancora il teorema della dimensione. Campo e supporto finito fanno parte della definizione, non eccezioni nascoste.
3. **Dimensione (cap6).** Domanda: perché due basi non possono avere lunghezze diverse? Esistenza da scarto, sostituzione concreta w=(2,1), scambio elementare, iterazione che conserva i w inseriti, confronto e definizione di dimensione. Completamento prima di uso nelle prove successive. Base sottospazio costruita in al più n ampliamenti, senza circolo «ha una base perché è un sottospazio». I polinomi applicano poi questi concetti e il teorema del fattore già noto.
4. **Somma diretta e Grassmann (cap7).** Domanda: come unire ambienti e riconoscere contributi unici? Assi nel piano e asse comune di due piani. Unicità mediante differenza nell'intersezione; basi divise producono supplementari. Grassmann conta una base comune una volta, con prova dell'indipendenza tramite una relazione nella base di W. Matrici simmetriche/antisimmetriche sono applicazione con ipotesi2≠0, senza uso del prodotto matriciale.

## Correzioni e chiarimenti matematici

- La frase della nota14/10 «indipendente su R e dipendente su C, oppure viceversa» non è corretta per gli stessi vettori con estensione degli scalari. Il libro prova la direzione: indipendenza su C implica indipendenza su R; relazione reale resta complessa. L'esempio standard mostra soltanto il contrario che può fallire.
- L'indipendenza garantisce **al più** una scrittura per un vettore; l'esistenza per tutti i vettori del dominio richiede la generazione. L'equivalenza con unicità è formulata sui vettori dello span.
- Nel lemma di scambio iterato, il coefficiente non nullo deve appartenere a un vettore originario u ancora presente: altrimenti il nuovo w è nello span dei w già inseriti. Il transcript07/10 permette di riconoscere chiaramente il passaggio, reso esplicito nel testo.
- In Grassmann, il vettore t nell'intersezione viene riscritto con la sua base e sottratto alla scrittura mediante i w. È così una relazione fra vettori della base di W; non si invoca genericamente l'unicità senza esibire le due espressioni.
- Non si presuppone che un sottospazio W di uno spazio finito sia già finitamente generato per poi usarne la base: si dimostra mediante ampliamenti indipendenti limitati dal lemma di scambio.
- La classificazione dei sottospazi R2/R3 avviene dopo dimensione. L'intersezione di due piani distinti è ricavata da Grassmann; la formula non è quindi giustificata mediante la stessa classificazione relativa che dovrebbe spiegare.
- Caso tutti coefficienti di un'equazione nulli separato; iperpiano n−1 solo per equazione non nulla. Un altro coefficiente non nullo si tratta rinominando coordinate.
- In K[X] finita famiglia composta soltanto da zero trattata separatamente, perché non ha massimo dei gradi non nulli.
- Tutte le affermazioni di decomposizione simmetrica/antisimmetrica e diagonale nulla richiedono2≠0. In caratteristica2 sono la stessa condizione, quindi nessuna divisione per2.
- Un'intersezione non nulla offre infinite decomposizioni su un campo infinito; la proposizione non afferma infinità per campi finiti.

## Integrazioni didattiche

Esempi di coordinate in ((1,1),(1,−1)), riferimento obliquo ((1,0),(1,1)), scambio concreto di e1 con(2,1), polinomio2−X^3 per supporto finito, attenzione a non identificare coppie e terne, prove di completamento/finitezza sottospazi esplicitate, otto esercizi di consolidamento con risposte ragionate. Non attribuiti come parole letterali del docente.

La base obliqua è aggiunta su richiesta della revisione integrata: ((1,1),(1,−1)) è non canonica ma ortogonale, quindi da sola non mostrava l'indipendenza dall'angolo retto discussa nelle fonti23/09.

## Figure scelte

| Capitolo | Stem | Corrispondenza matematica |
|---|---|---|
|4|`rette`|Chiusura di retta per origine contro assenza zero nella retta affine.|
|5|`span`|Una/due/tre direzioni geometriche, dipendenza dalla posizione.|
|5|`coordinate-basi`|x=(3,1), B=((1,1),(1,−1)), coordinate(2,1); ricostruzione esatta controllata.|
|6|`scambio`|Ogni w sostituisce un u mantenendo la base; figura schematica, non prova di un caso numerico.|
|6|`polinomi01`|Curva continua X(X−1), tratteggiata X²(X−1), basi di W01; zeri0,1 verificati.|
|7|`somma-diretta`|Piano e retta non contenuta: intersezione0; due piani: intersezione retta.|
|7|`grassmann`|q+(n−q)+(p−q)=n+p−q coerente con indici del testo.|

Non usata `decomposizione`, segnalata dal root come tagliata ai bordi nell'archivio. La valutazione delle figure a dimensione pagina e la produzione finale sono affidate al root; questo audit non dichiara una revisione visuale finale che non ho eseguito.

## Verifiche effettuate

- Tag balance dei quattro frammenti e delle otto soluzioni: `check.py` → `ok`.
- `python3 checks/vector-spaces.py`: tutti i gruppi OK. Solo aritmetica esatta (`Fraction`) e libreria standard; verifica parametrizzazioni, coordinate, ranghi delle famiglie nei singoli esempi, basi e valutazioni dei polinomi, esempi di Grassmann, scomposizione matriciale e soluzioni. Non è presentato come dimostrazione dei teoremi.
- Rilettura matematica: assiomi, ipotesi sul campo, tutte le direzioni delle equivalenze, non circolarità scambio→dimensione→completamento→Grassmann, generazione e indipendenza di ogni base esibita, casozero e somme vuote. Rilettura integrale root dei capp4–7 e correzioni linguistiche incorporate.
- Rilettura editoriale: assenza Officine/toolbox; notazioni introdotte prima dell'uso; polinomi inX e K_d[X]; coordinate tuple intese come colonne; passaggi centrali distinti e motivati. I quattro capitoli sono circa5.100 parole per semplice split su spazi (conteggio include markup/formule e non equivale a conteggio editoriale).

Controlli PDF, impaginazione, indice e verifica manifesto restano attività della revisione integrata del root; nessun PDF parziale consegnato da questo blocco.
