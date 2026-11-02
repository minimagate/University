<chapter|Funzioni e conteggio>

<\inbreve>
Contare diventa difficile quando gli oggetti sono molti o quando uno stesso oggetto può comparire in più modi. Impariamo a descrivere con precisione ciò che contiamo, a costruirlo per scelte successive e a correggere le ripetizioni. Le funzioni ci daranno il linguaggio per mettere in corrispondenza due famiglie di oggetti.
</inbreve>

<section|Funzioni: associare a ogni elemento una sola immagine>

Prendiamo <math|X=<around|{|a,b,c|}>> e <math|Y=<around|{|0,1|}>>. Possiamo assegnare ad <math|a> il valore 0, a <math|b> il valore 1 e a <math|c> ancora 0. Abbiamo costruito una <strong|funzione> <math|f:X→Y>.

L'insieme di partenza <math|X> è il <strong|dominio>; quello di arrivo <math|Y> è il <strong|codominio>. Ogni elemento del dominio deve avere esattamente un valore assegnato, detto <strong|immagine>. È consentito assegnare lo stesso valore a elementi diversi. Non è invece consentito lasciare un elemento senza valore o attribuirgli due valori diversi.

Una funzione è <strong|iniettiva> quando elementi distinti hanno immagini distinte. È <strong|suriettiva> quando raggiunge ogni elemento del codominio. È <strong|biiettiva> quando possiede entrambe le proprietà: ogni elemento di arrivo corrisponde a uno e un solo elemento di partenza.

<figura|@IMG(funzioni,0.96)|Nell'iniezione le frecce non arrivano insieme allo stesso punto; nella suriezione tutti i punti di arrivo sono raggiunti. Nella biiezione valgono entrambe le condizioni.>

La funzione iniziale è suriettiva perché usa sia 0 sia 1, ma non è iniettiva: <math|a> e <math|c> hanno la stessa immagine. L'<strong|immagine della funzione> è l'insieme dei valori effettivamente raggiunti; può essere più piccolo del codominio. Per esempio, una funzione costante con valore 0 e codominio <math|<around|{|0,1|}>> ha immagine <math|<around|{|0|}>>.

Per un insieme finito, la <strong|cardinalità> <math|\|X\|> è il numero dei suoi elementi. Una biiezione tra due insiemi finiti dimostra che hanno la stessa cardinalità: accoppia tutti gli elementi senza ripeterne né perderne nessuno.

Se dominio e codominio hanno entrambi <math|n> elementi, una funzione iniettiva è anche suriettiva: le sue <math|n> immagini distinte occupano tutti i posti disponibili. Viceversa una suriezione deve essere iniettiva: se due elementi condividessero un'immagine, rimarrebbero meno di <math|n> immagini distinte. Questa equivalenza richiede insiemi finiti della stessa cardinalità.

<section|Sommare i casi e moltiplicare le scelte>

Se possiamo scegliere fra 3 libri di algebra e 2 libri di geometria, tutti diversi, i libri disponibili sono <math|3+2=5>. Abbiamo sommato due gruppi <strong|disgiunti>, cioè senza elementi comuni.

Se invece vogliamo formare una coppia scegliendo un libro di algebra e uno di geometria, per ciascuna delle 3 prime scelte abbiamo 2 seconde scelte. Le coppie sono <math|3·2=6>. È il <strong|principio del prodotto>. Vale quando ogni scelta al primo passo ha lo stesso numero previsto di continuazioni; se questo numero cambia, dobbiamo distinguere i casi.

Il <strong|prodotto cartesiano> <math|X×Y> è proprio l'insieme delle coppie ordinate <math|(x,y)> con <math|x∈X> e <math|y∈Y>. Se <math|\|X\|=n> e <math|\|Y\|=m>, allora <math|\|X×Y\|=nm>.

Possiamo ora contare le funzioni. Consideriamo <math|n,m≥1>. Per ciascuno degli <math|n> elementi di <math|X> scegliamo una delle <math|m> immagini possibili, senza vincoli sulle altre scelte. Otteniamo <math|m<rsup|n>> funzioni. Nel primo esempio, da tre elementi a due, sono <math|2<rsup|3>=8>.

Per contare solo le iniezioni, ogni immagine già usata diventa indisponibile. Abbiamo <math|m> scelte per il primo elemento, <math|m-1> per il secondo, e così via. Se <math|n≤m>, il numero è

<\equation*>
m(m-1)⋯(m-n+1)=<frac|m!|(m-n)!>.
</equation*>

Qui <math|m!>, letto «<math|m> fattoriale», significa <math|m(m-1)⋯1>; poniamo <math|0!=1>. Per ordinare tutti gli <math|m> elementi distinti abbiamo quindi <math|m!> possibilità.

Se <math|n›m>, un'iniezione è impossibile. È il <strong|principio dei cassetti>: se gli oggetti sono più dei posti disponibili, almeno due devono occupare lo stesso posto. Per esempio, fra 13 persone almeno due sono nate nello stesso mese. Il principio assicura l'esistenza della coincidenza anche senza dirci quali siano le persone.

<section|Coefficienti binomiali: scegliere senza ordinare>

Da tre elementi <math|a,b,c> scegliamone due distinti. Se l'ordine conta, abbiamo sei liste: <math|(a,b)>, <math|(a,c)>, <math|(b,a)>, <math|(b,c)>, <math|(c,a)>, <math|(c,b)>. Se vogliamo soltanto una coppia di elementi, ogni coppia è stata contata due volte: per esempio <math|(a,b)> e <math|(b,a)> descrivono lo stesso sottoinsieme <math|<around|{|a,b|}>>.

<figura|@IMG(scelte)|Sei scelte ordinate diventano tre sottoinsiemi. Possiamo dividere per 2 perché ogni sottoinsieme compare esattamente due volte.>

In generale, per scegliere e ordinare <math|k> elementi distinti fra <math|n> abbiamo <math|n!/(n-k)!> possibilità. Ma ciascun sottoinsieme di <math|k> elementi può essere ordinato in <math|k!> modi. Per contare i sottoinsiemi dividiamo per questo numero.

<\concetto|Coefficiente binomiale>
Il numero dei sottoinsiemi di <math|k> elementi di un insieme con <math|n> elementi è

<\equation*>
<binom|n|k>=<frac|n!|k!(n-k)!><space|2em>(0≤k≤n).
</equation*>

Il simbolo si legge «<math|n> su <math|k>». Scegliere zero elementi ha un solo risultato, l'insieme vuoto: perciò <math|<binom|n|0>=1>. Anche <math|<binom|n|n>=1>. Fuori dall'intervallo poniamo <math|<binom|n|k>=0>.
</concetto>

Per scegliere due persone fra cinque abbiamo dunque <math|<binom|5|2>=5·4/2=10> possibilità. Se le due persone devono invece ricoprire due ruoli diversi, i modi sono 20: il ruolo conserva l'ordine.

Lo stesso ragionamento spiega gli <strong|anagrammi con lettere ripetute>. La parola NONNO contiene tre N e due O. Numerando provvisoriamente le copie, gli ordinamenti sarebbero <math|5!>. Ma ogni parola visibile si ottiene in <math|3!·2!> modi, scambiando fra loro le N e fra loro le O. Gli anagrammi distinti sono quindi <math|5!/(3!2!)=10>.

Con <math|r> tipi di lettere, presenti rispettivamente <math|n<rsub|1>,…,n<rsub|r>> volte e con somma <math|n>, otteniamo il <strong|coefficiente multinomiale> <math|n!/(n<rsub|1>!⋯n<rsub|r>!)>. Conta anche le ripartizioni di <math|n> oggetti distinti in gruppi etichettati di quelle dimensioni.

<section|Binomio di Newton e doppio conteggio>

Il coefficiente binomiale compare anche sviluppando <math|(a+b)<rsup|n>>. In ciascuna delle <math|n> parentesi scegliamo <math|a> oppure <math|b>. Per ottenere <math|a<rsup|k>b<rsup|n-k>> dobbiamo scegliere quali <math|k> parentesi forniscono <math|a>: ci sono <math|<binom|n|k>> modi. Questo dimostra il <strong|binomio di Newton>:

<\equation*>
(a+b)<rsup|n>=<big|sum><rsub|k=0><rsup|n><binom|n|k>a<rsup|k>b<rsup|n-k>.
</equation*>

Il simbolo di somma dice di aggiungere i termini corrispondenti a tutti gli indici da 0 a <math|n>. Con <math|n=3> ritroviamo <math|a<rsup|3>+3a<rsup|2>b+3ab<rsup|2>+b<rsup|3>>.

Scegliere <math|k> elementi equivale a scegliere i <math|n-k> da lasciare fuori: dunque <math|<binom|n|k>=<binom|n|n-k>>. Inoltre, fissato un elemento, un sottoinsieme di <math|k> elementi può contenerlo oppure no. I due casi danno l'<strong|identità di Pascal>:

<\equation*>
<binom|n|k>=<binom|n-1|k-1>+<binom|n-1|k><space|2em>(n≥1).
</equation*>

Queste dimostrazioni contano la stessa famiglia in due modi: è il <strong|doppio conteggio>. Anche tutti i sottoinsiemi si possono contare in due modi. Per ogni elemento scegliamo se inserirlo: <math|2<rsup|n>> possibilità. Oppure li raggruppiamo per dimensione. Ne segue <math|<big|sum><rsub|k=0><rsup|n><binom|n|k>=2<rsup|n>>.

Se <math|n≥1>, i sottoinsiemi di dimensione pari e quelli di dimensione dispari sono altrettanti: fissiamo un elemento e aggiungiamolo quando manca, togliendolo quando c'è. Questa operazione è reversibile e cambia la parità. Ciascuna famiglia contiene quindi <math|2<rsup|n-1>> sottoinsiemi.

Un altro esempio utile è scegliere un sottoinsieme con un suo elemento contrassegnato. Scegliendo prima la dimensione <math|k>, poi il sottoinsieme, poi il contrassegno, otteniamo <math|<big|sum><rsub|k=0><rsup|n>k<binom|n|k>>. Scegliendo prima l'elemento contrassegnato abbiamo <math|n> possibilità; degli altri <math|n-1> elementi scegliamo liberamente quali inserire. Perciò, per <math|n≥1>,

<\equation*>
<big|sum><rsub|k=0><rsup|n>k<binom|n|k>=n2<rsup|n-1>.
</equation*>

<section|Inclusione-esclusione: correggere le sovrapposizioni>

Fra gli interi da 1 a 12, sei sono multipli di 2 e quattro sono multipli di 3. Per contare quelli divisibili per almeno uno dei due, non possiamo limitarci a sommare: 6 e 12 compaiono in entrambi i gruppi. Li abbiamo contati due volte, quindi sottraiamo una delle due copie. Il risultato è <math|6+4-2=8>.

Per due insiemi finiti questo dà

<\equation*>
\|A∪B\|=\|A\|+\|B\|-\|A∩B\|.
</equation*>

Con tre insiemi sommiamo i singoli, sottraiamo le intersezioni a due a due e aggiungiamo l'intersezione tripla. Un elemento comune a tutti e tre è infatti contato <math|3-3=0> volte prima dell'ultima aggiunta: dobbiamo riportare il suo contributo a 1.

<figura|@IMG(venn3)|Il contributo finale di ogni elemento dell'unione deve essere 1, anche se appartiene a più insiemi. Le intersezioni correggono le copie in eccesso.>

La stessa regola continua per più insiemi: singoli con segno più, intersezioni doppie con segno meno, triple con segno più, e così via. Perché funziona? Se un elemento sta in esattamente <math|j≥1> insiemi, il suo contributo è

<\equation*>
<binom|j|1>-<binom|j|2>+⋯+(-1)<rsup|j+1><binom|j|j>=1.
</equation*>

L'uguaglianza segue da Newton: <math|(1-1)<rsup|j>=0>; separando il termine iniziale 1 e portando gli altri dall'altra parte otteniamo proprio questa somma. Ogni elemento presente viene dunque contato una volta; gli elementi esterni non contribuiscono.

Una <strong|funzione caratteristica> esprime lo stesso meccanismo con numeri: <math|χ<rsub|A>(x)> vale 1 se <math|x∈A> e 0 altrimenti. Sommando questi valori contiamo gli elementi di <math|A>. Il prodotto <math|χ<rsub|A>χ<rsub|B>> segnala l'intersezione, mentre <math|χ<rsub|A>+χ<rsub|B>-χ<rsub|A>χ<rsub|B>> segnala l'unione. È un modo algebrico di descrivere il conteggio precedente.

<section|Per proseguire: due applicazioni del conteggio>

Le idee fondamentali del capitolo sono già costruite. Le prossime due applicazioni mostrano come combinarle in problemi più articolati; puoi tornarci dopo una prima lettura.

<subsection|Contare le suriezioni>

Per contare le suriezioni da tre elementi a due, partiamo dalle 8 funzioni totali. Quelle che omettono 0 sono la sola funzione costante 1; quelle che omettono 1 sono la sola funzione costante 0. Restano <math|8-1-1=6> suriezioni.

Per <math|n≥1> elementi di partenza e <math|m≥1> di arrivo, le funzioni che evitano un valore fissato sono <math|(m-1)<rsup|n>>; quelle che evitano due valori fissati sono <math|(m-2)<rsup|n>>, e così via. Scegliendo i valori da evitare e correggendo le sovrapposizioni otteniamo

<\equation*>
<big|sum><rsub|k=0><rsup|m>(-1)<rsup|k><binom|m|k>(m-k)<rsup|n>.
</equation*>

Il termine <math|k=0> conta tutte le funzioni. I successivi eliminano quelle che omettono almeno un valore, con le correzioni necessarie.

<subsection|Stelle e sbarre: distribuire quantità uguali>

Quante soluzioni intere non negative ha <math|x+y+z=4>? Le posizioni sono distinguibili: <math|(4,0,0)> e <math|(0,4,0)> sono soluzioni diverse.

Rappresentiamo le quattro unità con stelle e separiamo le tre quantità con due sbarre. Per esempio «due stelle, sbarra, due stelle, sbarra» descrive <math|(2,2,0)>. Sbarre adiacenti o agli estremi permettono quantità nulle.

<figura|@IMG(stelle)|Quattro stelle rappresentano le unità; due sbarre separano tre quantità. La posizione delle sbarre determina una e una sola soluzione.>

Abbiamo sei posizioni e scegliamo quali due occupare con le sbarre: <math|<binom|6|2>=15> soluzioni. In generale, per <math|r≥1> e <math|n≥0>,

<\equation*>
x<rsub|1>+⋯+x<rsub|r>=n,<space|1em>x<rsub|i>≥0
<space|1em>⟹<space|1em><binom|n+r-1|r-1><text| soluzioni.>
</equation*>

Se le quantità devono essere tutte positive, assegniamo prima un'unità a ciascuna. Restano <math|n-r> unità da distribuire senza altri vincoli: per <math|n≥r> le soluzioni sono <math|<binom|n-1|r-1>>. Per <math|n‹r> non ce ne sono.

<subsection|In sintesi>

La domanda decisiva è quali scelte descrivano un oggetto una volta sola. I casi disgiunti si sommano, le scelte successive si moltiplicano. Se dimentichiamo l'ordine correggiamo le ripetizioni uniformi; se i casi si sovrappongono usiamo inclusione-esclusione. Una biiezione o un doppio conteggio possono spiegare un'identità senza lunghe manipolazioni.

<\verifica|2>
<strong|1. Con un suggerimento.> Quante funzioni suriettive esistono da un insieme di quattro elementi a uno di tre? Parti dalle funzioni totali, sottrai quelle che evitano un valore e correggi quelle che ne evitano due.

<strong|2. In autonomia.> Quante terne ordinate di interi positivi <math|(x,y,z)> soddisfano <math|x+y+z=7>? Spiega perché dividere il risultato per <math|3!> non darebbe in generale il numero di terne senza ordine.
</verifica>

