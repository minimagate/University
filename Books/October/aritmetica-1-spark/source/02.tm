<chapter|Funzioni e conteggio>

<\inbreve>
Contare sembra facile finché gli oggetti sono pochi. Appena diventano molti, o appena uno stesso oggetto si può ottenere in più modi, rischiamo di dimenticarne qualcuno o di contarlo due volte. In questo capitolo impariamo a descrivere con cura ciò che contiamo, a costruirlo con scelte successive e a correggere le ripetizioni, usando le funzioni come linguaggio comune.
</inbreve>

<section|Funzioni: associare a ogni elemento una sola immagine>

Prendiamo due insiemi piccoli, <math|X=<around|{|a,b,c|}>> e <math|Y=<around|{|0,1|}>>, e decidiamo di assegnare ad <math|a> il valore 0, a <math|b> il valore 1 e a <math|c> di nuovo 0. Senza accorgercene abbiamo costruito una <strong|funzione> <math|f:X→Y>.

L'insieme di partenza <math|X> si chiama <strong|dominio> e quello di arrivo <math|Y> <strong|codominio>. La regola del gioco è che ogni elemento del dominio riceva esattamente un valore, detto la sua <strong|immagine>. Possiamo dare lo stesso valore a elementi diversi, come abbiamo fatto con <math|a> e <math|c>, ma non possiamo lasciare un elemento senza valore né assegnargliene due.

Fra le funzioni ce ne sono alcune particolarmente ordinate. Una funzione è <strong|iniettiva> quando elementi distinti finiscono sempre in immagini distinte, ed è <strong|suriettiva> quando raggiunge ogni elemento del codominio. Se ha entrambe le proprietà si dice <strong|biiettiva>, e allora ogni elemento di arrivo corrisponde a uno e un solo elemento di partenza.

<figura|@IMG(funzioni,0.96)|Nell'iniezione le frecce non arrivano insieme allo stesso punto; nella suriezione tutti i punti di arrivo sono raggiunti. Nella biiezione valgono entrambe le condizioni.>

La nostra funzione iniziale è suriettiva, perché usa sia 0 sia 1, ma non è iniettiva, perché <math|a> e <math|c> hanno la stessa immagine. L'insieme dei valori effettivamente raggiunti si chiama <strong|immagine della funzione>, e può essere più piccolo del codominio. Una funzione costante che vale sempre 0, con codominio <math|<around|{|0,1|}>>, ha per esempio immagine <math|<around|{|0|}>>.

Le biiezioni sono lo strumento più naturale per contare. Per un insieme finito chiamiamo <strong|cardinalità> il numero <math|\|X\|> dei suoi elementi, e una biiezione fra due insiemi finiti mostra che hanno la stessa cardinalità, perché li accoppia tutti senza ripeterne né perderne nessuno.

C'è poi un fatto che useremo spesso. Se dominio e codominio hanno entrambi <math|n> elementi, una funzione iniettiva è automaticamente suriettiva, perché le sue <math|n> immagini distinte occupano tutti i posti disponibili. Vale anche il viceversa, perché se una funzione suriettiva desse a due elementi la stessa immagine resterebbero meno di <math|n> immagini distinte, troppo poche per coprire il codominio. L'argomento funziona solo per insiemi finiti della stessa cardinalità.

<section|Sommare i casi e moltiplicare le scelte>

Supponiamo di avere sullo scaffale 3 libri di algebra e 2 di geometria, tutti diversi. Se dobbiamo sceglierne uno solo abbiamo <math|3+2=5> possibilità, perché i due gruppi sono <strong|disgiunti>, cioè non hanno libri in comune, e quindi possiamo semplicemente sommarli.

Le cose cambiano se vogliamo portare via una coppia, un libro di algebra e uno di geometria. Per ciascuno dei 3 libri di algebra possiamo affiancare uno qualsiasi dei 2 di geometria, e così le coppie sono <math|3·2=6>. È il <strong|principio del prodotto>. Funziona quando ogni scelta al primo passo lascia lo stesso numero di possibilità al passo successivo, e se quel numero cambia da caso a caso dobbiamo invece distinguere i casi e sommarli.

Le coppie che abbiamo appena contato formano il <strong|prodotto cartesiano> <math|X×Y>, l'insieme delle coppie ordinate <math|(x,y)> con <math|x∈X> e <math|y∈Y>. Il principio del prodotto dice che se <math|\|X\|=n> e <math|\|Y\|=m> allora <math|\|X×Y\|=nm>.

<subsection|Contare le funzioni>

Con lo stesso principio possiamo contare tutte le funzioni da un insieme <math|X> di <math|n> elementi a un insieme <math|Y> di <math|m> elementi, con <math|n,m≥1>. Costruire una funzione vuol dire scegliere un'immagine per ciascun elemento di <math|X>, e ogni scelta è libera, cioè non dipende dalle altre. Abbiamo quindi <math|m> possibilità per ognuno degli <math|n> elementi, in tutto <math|m<rsup|n>> funzioni. Nel nostro primo esempio, da tre elementi a due, le funzioni sono <math|2<rsup|3>=8>.

Se vogliamo solo funzioni iniettive, ogni immagine usata diventa indisponibile per gli elementi successivi. Per il primo elemento abbiamo <math|m> scelte, per il secondo <math|m-1>, e così via fino all'<math|n>-esimo. Se <math|n≤m> il numero delle iniezioni è dunque

<\equation*>
m(m-1)⋯(m-n+1)=<frac|m!|(m-n)!>.
</equation*>

Il simbolo <math|m!>, che si legge «<math|m> fattoriale», indica il prodotto <math|m(m-1)⋯1>, e per comodità si pone <math|0!=1>. Quando <math|n=m> la formula dice che possiamo mettere in fila <math|m> oggetti distinti in <math|m!> modi.

E se <math|n›m>? In quel caso un'iniezione non esiste, perché non ci sono abbastanza immagini diverse. È il <strong|principio dei cassetti>: se gli oggetti sono più dei cassetti, almeno due finiscono nello stesso cassetto. Fra 13 persone, per esempio, almeno due sono nate nello stesso mese. Il principio garantisce che la coincidenza c'è, anche se non ci dice quali siano le due persone.

<section|Coefficienti binomiali: scegliere senza ordinare>

Da tre elementi <math|a,b,c> vogliamo sceglierne due distinti. Se l'ordine conta otteniamo sei liste, cioè <math|(a,b)>, <math|(a,c)>, <math|(b,a)>, <math|(b,c)>, <math|(c,a)> e <math|(c,b)>. Spesso però ci interessa solo quali elementi abbiamo preso, e allora <math|(a,b)> e <math|(b,a)> descrivono lo stesso sottoinsieme <math|<around|{|a,b|}>>. Ogni sottoinsieme compare due volte nella lista, e quindi i sottoinsiemi sono <math|6/2=3>.

<figura|@IMG(scelte)|Sei scelte ordinate diventano tre sottoinsiemi. Possiamo dividere per 2 perché ogni sottoinsieme compare esattamente due volte.>

Lo stesso ragionamento funziona in generale. Per scegliere in ordine <math|k> elementi distinti fra <math|n> abbiamo <math|n!/(n-k)!> possibilità, come abbiamo visto contando le iniezioni. Ogni sottoinsieme di <math|k> elementi compare in questa lista <math|k!> volte, una per ciascun modo di metterlo in fila, e dividendo per <math|k!> contiamo ogni sottoinsieme una volta sola.

<\concetto|Coefficiente binomiale>
Il numero dei sottoinsiemi di <math|k> elementi di un insieme con <math|n> elementi è

<\equation*>
<binom|n|k>=<frac|n!|k!(n-k)!><space|2em>(0≤k≤n).
</equation*>

Il simbolo si legge «<math|n> su <math|k>». Scegliere zero elementi ha un solo risultato, l'insieme vuoto: perciò <math|<binom|n|0>=1>. Anche <math|<binom|n|n>=1>. Fuori dall'intervallo poniamo <math|<binom|n|k>=0>.
</concetto>

Così, per scegliere due persone fra cinque, abbiamo <math|<binom|5|2>=5·4/2=10> possibilità. Se invece le due persone devono ricoprire due ruoli diversi, per esempio presidente e segretario, i modi diventano 20, perché i ruoli distinguono chi viene scelto per primo.

<subsection|Anagrammi con lettere ripetute>

L'idea di dividere per le ripetizioni spiega anche gli anagrammi. La parola NONNO contiene tre N e due O. Se per un momento numeriamo le lettere uguali, scrivendo per esempio <math|N<rsub|1>,N<rsub|2>,N<rsub|3>>, otteniamo cinque lettere distinte e quindi <math|5!> ordinamenti. Ogni parola che vediamo davvero, però, si ottiene in <math|3!·2!> modi, scambiando fra loro le N e fra loro le O. Gli anagrammi distinti sono quindi <math|5!/(3!2!)=10>.

Con <math|r> tipi di lettere, ripetute rispettivamente <math|n<rsub|1>,…,n<rsub|r>> volte e con somma <math|n>, lo stesso conto dà il <strong|coefficiente multinomiale> <math|n!/(n<rsub|1>!⋯n<rsub|r>!)>. Lo stesso numero conta anche i modi di dividere <math|n> oggetti distinti in gruppi etichettati di quelle dimensioni, perché assegnare a ogni oggetto il nome del suo gruppo è come scrivere una parola con quelle lettere.

<section|Binomio di Newton e doppio conteggio>

I coefficienti binomiali compaiono anche in algebra, quando sviluppiamo <math|(a+b)<rsup|n>>. Moltiplicare <math|n> parentesi uguali vuol dire scegliere, in ciascuna, la lettera <math|a> oppure la lettera <math|b>. Per ottenere il termine <math|a<rsup|k>b<rsup|n-k>> dobbiamo decidere quali <math|k> parentesi forniscono la <math|a>, e questo si può fare in <math|<binom|n|k>> modi. Abbiamo così dimostrato il <strong|binomio di Newton>:

<\equation*>
(a+b)<rsup|n>=<big|sum><rsub|k=0><rsup|n><binom|n|k>a<rsup|k>b<rsup|n-k>.
</equation*>

Il simbolo di somma dice di sommare i termini per tutti gli indici <math|k> da 0 a <math|n>. Con <math|n=3>, per esempio, ritroviamo il cubo di binomio <math|a<rsup|3>+3a<rsup|2>b+3ab<rsup|2>+b<rsup|3>>.

<subsection|Contare due volte la stessa cosa>

Molte identità fra coefficienti binomiali si spiegano senza calcoli, contando la stessa famiglia di oggetti in due modi diversi. Scegliere i <math|k> elementi da prendere, per esempio, equivale a scegliere gli <math|n-k> da lasciare fuori, e quindi <math|<binom|n|k>=<binom|n|n-k>>.

Un po' più interessante è fissare un elemento e chiedersi se il sottoinsieme lo contiene. Quelli che lo contengono si ottengono scegliendo altri <math|k-1> elementi fra i rimanenti <math|n-1>, mentre quelli che non lo contengono scelgono tutti i loro <math|k> elementi fra quegli <math|n-1>. Sommando i due casi otteniamo l'<strong|identità di Pascal>:

<\equation*>
<binom|n|k>=<binom|n-1|k-1>+<binom|n-1|k><space|2em>(n≥1).
</equation*>

Questo modo di ragionare si chiama <strong|doppio conteggio>. Applichiamolo a tutti i sottoinsiemi di un insieme con <math|n> elementi. Da un lato, per ogni elemento decidiamo se metterlo dentro o lasciarlo fuori, e otteniamo <math|2<rsup|n>> sottoinsiemi. Dall'altro possiamo raggrupparli per numero di elementi. I due conti devono coincidere, e quindi <math|<big|sum><rsub|k=0><rsup|n><binom|n|k>=2<rsup|n>>.

Con un'idea simile scopriamo che, per <math|n≥1>, i sottoinsiemi con un numero pari di elementi sono tanti quanti quelli con un numero dispari. Fissiamo un elemento e trasformiamo ogni sottoinsieme aggiungendolo se manca e togliendolo se c'è. L'operazione si può sempre annullare ripetendola, quindi è una biiezione, e cambia sempre la parità del numero di elementi. Le due famiglie sono quindi ugualmente numerose, e ciascuna contiene <math|2<rsup|n-1>> sottoinsiemi.

Un ultimo esempio mostra quanto il metodo sia flessibile. Contiamo i sottoinsiemi con un elemento contrassegnato, come una squadra con il suo capitano. Possiamo scegliere prima la dimensione <math|k>, poi la squadra e infine il capitano, e otteniamo <math|<big|sum><rsub|k=0><rsup|n>k<binom|n|k>>. Oppure possiamo scegliere prima il capitano, in <math|n> modi, e poi decidere liberamente quali degli altri <math|n-1> elementi entrano in squadra. Per <math|n≥1> i due conti danno

<\equation*>
<big|sum><rsub|k=0><rsup|n>k<binom|n|k>=n2<rsup|n-1>.
</equation*>

<section|Inclusione-esclusione: correggere le sovrapposizioni>

Fra gli interi da 1 a 12 ce ne sono sei multipli di 2 e quattro multipli di 3. Quanti sono divisibili per almeno uno dei due? Sommare darebbe 10, ma 6 e 12 stanno in entrambi i gruppi e li avremmo contati due volte. Togliendo una copia di ciascuno otteniamo la risposta giusta, <math|6+4-2=8>.

Per due insiemi finiti questa correzione diventa la formula

<\equation*>
\|A∪B\|=\|A\|+\|B\|-\|A∩B\|.
</equation*>

Con tre insiemi la correzione va fatta con più attenzione. Sommiamo i tre insiemi, togliamo le tre intersezioni a due a due e poi aggiungiamo di nuovo l'intersezione tripla. L'ultima aggiunta serve perché un elemento comune a tutti e tre viene contato tre volte all'inizio e tolto tre volte subito dopo, e senza quel ritocco sparirebbe dal conto.

<figura|@IMG(venn3)|Il contributo finale di ogni elemento dell'unione deve essere 1, anche se appartiene a più insiemi. Le intersezioni correggono le copie in eccesso.>

Con più insiemi la regola continua allo stesso modo, alternando i segni: più per i singoli insiemi, meno per le intersezioni doppie, più per quelle triple, e così via. Per capire perché funzioni, seguiamo un elemento che sta in esattamente <math|j≥1> degli insiemi. Il suo contributo totale è

<\equation*>
<binom|j|1>-<binom|j|2>+⋯+(-1)<rsup|j+1><binom|j|j>=1.
</equation*>

Questa uguaglianza viene dal binomio di Newton. Sviluppando <math|(1-1)<rsup|j>=0> otteniamo <math|1> meno esattamente la somma qui sopra, che deve quindi valere 1. Ogni elemento dell'unione viene così contato una volta sola, mentre gli elementi che non stanno in nessun insieme non contribuiscono affatto.

Lo stesso meccanismo si può scrivere con i numeri usando la <strong|funzione caratteristica> <math|χ<rsub|A>>, che vale 1 sugli elementi di <math|A> e 0 altrove. Sommare i suoi valori vuol dire contare gli elementi di <math|A>. Il prodotto <math|χ<rsub|A>χ<rsub|B>> vale 1 esattamente sull'intersezione, e la combinazione <math|χ<rsub|A>+χ<rsub|B>-χ<rsub|A>χ<rsub|B>> vale 1 esattamente sull'unione, che è la formula di prima tradotta in algebra.

<section|Per proseguire: due applicazioni del conteggio>

Le idee principali del capitolo sono ormai tutte sul tavolo. Le due applicazioni che seguono mostrano come combinarle in problemi un po' più articolati, e puoi tornarci dopo una prima lettura.

<subsection|Contare le suriezioni>

Quante funzioni suriettive vanno da tre elementi a due? Delle 8 funzioni totali, una sola evita il valore 0, cioè la funzione costante 1, e una sola evita il valore 1, cioè la costante 0. Le suriezioni sono quindi <math|8-1-1=6>.

Per <math|n≥1> elementi di partenza e <math|m≥1> di arrivo seguiamo la stessa strada, ma servono le correzioni dell'inclusione-esclusione. Le funzioni che evitano un valore fissato sono <math|(m-1)<rsup|n>>, quelle che ne evitano due fissati sono <math|(m-2)<rsup|n>>, e così via. Scegliendo quali valori evitare e alternando i segni otteniamo il numero delle suriezioni,

<\equation*>
<big|sum><rsub|k=0><rsup|m>(-1)<rsup|k><binom|m|k>(m-k)<rsup|n>.
</equation*>

Il termine con <math|k=0> conta tutte le funzioni, e i successivi tolgono quelle che mancano almeno un valore, correggendo a ogni passo le sottrazioni fatte in eccesso.

<subsection|Stelle e sbarre: distribuire quantità uguali>

Quante soluzioni intere non negative ha l'equazione <math|x+y+z=4>? Qui le posizioni contano, quindi <math|(4,0,0)> e <math|(0,4,0)> sono soluzioni diverse.

C'è un modo molto visivo di contarle. Rappresentiamo le quattro unità con quattro stelle e separiamo le tre quantità con due sbarre. La sequenza «due stelle, sbarra, due stelle, sbarra», per esempio, descrive <math|(2,2,0)>. Due sbarre vicine, oppure una sbarra in fondo o all'inizio, indicano una quantità nulla.

<figura|@IMG(stelle)|Quattro stelle rappresentano le unità; due sbarre separano tre quantità. La posizione delle sbarre determina una e una sola soluzione.>

In tutto abbiamo sei simboli, e una soluzione corrisponde a una scelta delle due posizioni occupate dalle sbarre. Le soluzioni sono quindi <math|<binom|6|2>=15>. Lo stesso ragionamento, con <math|n> stelle e <math|r-1> sbarre, vale in generale per <math|r≥1> e <math|n≥0>:

<\equation*>
x<rsub|1>+⋯+x<rsub|r>=n,<space|1em>x<rsub|i>≥0
<space|1em>⟹<space|1em><binom|n+r-1|r-1><text| soluzioni.>
</equation*>

Se le quantità devono essere tutte positive basta un piccolo trucco. Diamo prima un'unità a ciascuna variabile, e restano <math|n-r> unità da distribuire senza vincoli. Per <math|n≥r> le soluzioni sono quindi <math|<binom|n-1|r-1>>, mentre per <math|n‹r> non ce n'è nessuna.

<subsection|In sintesi>

Il cuore di ogni conteggio è descrivere gli oggetti in modo che ciascuno venga contato una volta sola. I casi disgiunti si sommano e le scelte successive si moltiplicano. Quando l'ordine non ci interessa dividiamo per le ripetizioni, purché siano tutte uguali, e quando i casi si sovrappongono usiamo l'inclusione-esclusione. Una biiezione o un doppio conteggio, infine, spiegano spesso un'identità meglio di una lunga serie di calcoli.

<\verifica|2>
<strong|1. Con un suggerimento.> Quante funzioni suriettive esistono da un insieme di quattro elementi a uno di tre? Parti dalle funzioni totali, sottrai quelle che evitano un valore e correggi quelle che ne evitano due.

<strong|2. In autonomia.> Quante terne ordinate di interi positivi <math|(x,y,z)> soddisfano <math|x+y+z=7>? Spiega perché dividere il risultato per <math|3!> non darebbe in generale il numero di terne senza ordine.
</verifica>
