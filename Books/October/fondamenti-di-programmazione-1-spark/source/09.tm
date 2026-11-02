<chapter|Array: indici, aggiornamenti e zone>

<\inbreve>
Quando i dati sono molti, come i voti di una classe, non possiamo dare un nome a ciascuno, e li raccogliamo in un array dove ogni valore ha la sua posizione. Il rischio nuovo è sbagliare posizione, leggendo un indice che non esiste o perdendo un valore durante uno spostamento. In questo capitolo impariamo a controllare gli indici, a ragionare sugli aggiornamenti e soprattutto a pensare un ciclo come un confine che si sposta, separando la parte già sistemata da quella che resta da esaminare.
</inbreve>

Per sommare i voti di un elenco vorremmo tenere molti valori sotto un solo nome. Un <strong|array> fa esattamente questo, raccogliendo una sequenza di valori, e un <strong|indice> permette di scegliere una posizione al suo interno. La comodità ha però un prezzo, perché dovremo controllare ogni volta quali posizioni possiamo leggere e modificare.

<section|Array come funzioni sugli indici>

La dichiarazione <tt|v : array [0,4) of int> descrive quattro interi con indici <math|0,1,2,3>. L'estremo destro, 4, segna la fine dell'array e non è una posizione che si possa leggere. In generale un array omogeneo, cioè con elementi tutti dello stesso tipo, è una funzione

<\equation*>
v:[a,b)→A,
</equation*>

dove <math|a≤b> sono naturali e <math|A> è <math|ℤ> oppure <math|<math-up|Bool>>. L'intervallo <math|[a,b)> comprende gli indici <math|i> con <math|a≤i‹b>, quindi ha <math|b-a> posizioni, ed è vuoto quando <math|a=b>. Per il dominio degli indici validi scriviamo <math|<math-up|dom>(v)=[a,b)>.

Con gli array, lo stato associa al nome <math|v> un'intera funzione <math|σ(v)>. Se <math|σ(v)={0↦2,1↦1,2↦10,3↦6}>, leggere <tt|v[2]> dà 10. Per leggere un elemento si calcola prima l'espressione dell'indice e poi si applica la funzione,

<\equation*>
ℰ(v[E],σ)=σ(v)(ℰ(E,σ)),
</equation*>

e la formula ha senso soltanto se il valore dell'indice esiste e cade nel dominio.

Un indice può contenere a sua volta altre letture. Per calcolare <tt|v[v[0]+v[1]]> leggiamo prima 2 e 1, li sommiamo ottenendo 3 e solo allora leggiamo <tt|v[3]>, che vale 6. Gli indici da controllare sono quindi tre, i due interni, 0 e 1, e quello esterno, 3. Se la somma fosse stata 4, le due letture interne sarebbero state lecite ma quella esterna sarebbe fallita.

<\concetto|Definitezza di un accesso>
Per un'espressione indice intera <math|E>,

<\equation*>
<math-up|def>(v[E])≡<math-up|def>(E)∧E∈<math-up|dom>(v).
</equation*>

La correttezza richiede che ogni lettura effettivamente eseguita abbia un indice valido. Per un array su <math|[0,n)>, il solo vincolo <math|x≤n> non autorizza a leggere <tt|v[x]>: occorre <math|0≤x‹n>.
</concetto>

Le possibili cause di indefinitezza diventano quindi due, i divisori nulli e gli indici fuori dal dominio. I tipi restano un controllo a parte. Un array di booleani produce booleani, che non si possono usare come indici interi. Inoltre gli operatori del linguaggio lavorano sui singoli elementi, e una scrittura come <tt|v+w>, intesa come somma di due array interi, non è ammessa.

<section|Aggiornamento selettivo: prima valutare, poi modificare>

Il comando <tt|v[E] := E'> cambia una sola posizione dell'array. Come per l'assegnamento semplice, sia l'indice sia il valore a destra si calcolano nello stato precedente. Con l'array di prima, il comando <tt|v[v[0]] := v[1]+5> calcola l'indice 2 e il valore 6, e soltanto dopo cambia <tt|v[2]>, ottenendo <math|{0↦2,1↦1,2↦6,3↦6}>.

Per descrivere l'effetto in modo preciso chiamiamo <math|j=ℰ(E,σ)> e <math|d=ℰ(E',σ)>. Se entrambi sono definiti e <math|j∈<math-up|dom>(v)>, costruiamo la nuova sequenza <math|w=σ(v)[d/j]>, che vale <math|d> all'indice <math|j> e coincide con <math|σ(v)> in tutti gli altri. Poi aggiorniamo lo stato,

<\equation*>
𝒞(v[E]:=E',σ)=σ[w/v].
</equation*>

Gli aggiornamenti sono quindi due, uno dentro l'altro. Quello interno cambia una posizione della sequenza, quello esterno cambia il valore associato al nome <math|v>. Il dominio degli indici resta lo stesso.

<subsection|La condizione prima di un aggiornamento>

Per verificare una postcondizione <math|P> ragioniamo come con l'assegnamento semplice, sostituendo però l'intera sequenza. Scriviamo simbolicamente <math|w=v[E'/E]> per la sequenza aggiornata, e l'assioma richiede prima del comando

<\equation*>
<math-up|def>(E)∧<math-up|def>(E')∧E∈<math-up|dom>(v)∧P[w/v].
</equation*>

Dopo <tt|v[E] := E'> vale allora <math|P>, e come sempre la regola di conseguenza permette di partire da una precondizione più forte. Leggere <math|P[w/v]> richiede di distinguere due casi. In posizione <math|i> la nuova sequenza vale <math|E'> se <math|i=E>, e il vecchio <math|v[i]> se <math|i≠E>.

<\guidato|Estendere un prefisso di somme>
Supponiamo <math|1≤k‹n> e che, prima della posizione <math|k>, l'array contenga già le somme <math|a[i]=<big|sum><rsub|j=0><rsup|i>j> per ogni <math|0≤i‹k>. Eseguiamo <tt|a[k] := a[k-1]+k>.

I vincoli su <math|k> rendono validi sia l'indice <math|k> sia l'indice <math|k-1>. Per dimostrare che la proprietà vale ora fino a <math|k> compreso, separiamo i due casi. Se <math|i‹k>, la posizione <math|i> non viene toccata e contiene ancora la somma corretta. Se <math|i=k>, il nuovo valore è

<\equation*>
a[k-1]+k=<big|sum><rsub|j=0><rsup|k-1>j+k=<big|sum><rsub|j=0><rsup|k>j.
</equation*>

Abbiamo così controllato tutti gli indici <math|0≤i≤k>. È la distinzione fra la posizione modificata e quelle rimaste uguali a rendere possibile la prova di una postcondizione quantificata.
</guidato>

<section|Incrementare un array: un confine tra fatto e da fare>

Vogliamo aggiungere 1 a ogni elemento di <tt|a : array [0,n) of int>, con <math|n≥0>. Chiamiamo <math|V> la sequenza iniziale, una variabile di specifica che il programma non modifica, e il risultato richiesto diventa <math|∀k∈[0,n). a[k]=V[k]+1>.

L'idea che guida il ciclo è un confine <math|x> che attraversa l'array. A sinistra del confine gli elementi sono già stati incrementati, da <math|x> in poi sono ancora quelli iniziali. All'inizio il confine sta in 0, e alla fine vogliamo che arrivi a <math|n>. Tradotta in formule, questa immagine dà l'invariante

<\equation*>
I≡0≤x≤n∧(∀k∈[0,x). a[k]=V[k]+1)
</equation*>

<\equation*>
∧(∀k∈[x,n). a[k]=V[k]).
</equation*>

La seconda riga potrebbe sembrare superflua, ma senza di essa non potremmo concludere nulla. Per sapere che incrementando <tt|a[x]> otteniamo <math|V[x]+1>, dobbiamo sapere che prima del comando <tt|a[x]> vale ancora <math|V[x]>.

<figura|@IMG(array-zone)|Il confine <math|x> separa le posizioni già incrementate da quelle ancora uguali alla sequenza iniziale <math|V>. Il confine può anche essere 0 oppure <math|n>.>

<\verbatim>
x := 0;<no-page-break>

while x ‹ n do<no-page-break>

<hspace|2.100em>a[x] := a[x] + 1;<no-page-break>

<hspace|2.100em>x := x + 1<no-page-break>

endw
</verbatim>

La precondizione è <math|n≥0∧a=V>, dove l'uguaglianza vuol dire che i due array coincidono elemento per elemento. Con <math|x=0> la parte già elaborata è vuota, e la proprietà sul resto coincide con la precondizione, quindi l'invariante vale.

Prima del corpo, l'invariante e la guardia danno <math|0≤x‹n>, e così la lettura e la scrittura di <tt|a[x]> sono lecite. Dopo il primo comando le posizioni prima di <math|x> sono ancora incrementate, quella in <math|x> passa da <math|V[x]> a <math|V[x]+1> e quelle successive sono ancora quelle iniziali. È la stessa divisione di prima, con il confine spostato in <math|x+1>, e il secondo comando dà a <math|x> proprio quel valore, ristabilendo l'invariante.

<subsection|Quando il confine raggiunge la fine>

La quantità <math|n-x> è non negativa e diminuisce di 1 a ogni giro, quindi il ciclo termina. Quando la guardia è falsa vale <math|x≥n>, e insieme a <math|x≤n> otteniamo <math|x=n>. A quel punto l'intero array appartiene alla parte elaborata. Se <math|n=0> le proprietà quantificate parlano dell'insieme vuoto e sono vere senza che il corpo venga mai eseguito.

<section|Somma di un array: sostituire la fine con un confine mobile>

Questa volta l'array non deve cambiare, e vogliamo soltanto calcolare

<\equation*>
s=<big|sum><rsub|i=0><rsup|n-1>a[i].
</equation*>

Un trucco utile per trovare l'invariante è sostituire nella postcondizione l'estremo finale <math|n> con un indice di lavoro <math|x>. Così <math|s> diventa la somma delle prime <math|x> posizioni. Per <math|x=0> è la somma vuota, che vale 0, e per <math|x=n> è esattamente la somma che cerchiamo.

<\verbatim>
x := 0; s := 0;<no-page-break>

while x != n do<no-page-break>

<hspace|2.100em>s := s + a[x];<no-page-break>

<hspace|2.100em>x := x + 1<no-page-break>

endw
</verbatim>

L'invariante è quindi <math|I≡s=<big|sum><rsub|i=0><rsup|x-1>a[i]∧0≤x≤n>. L'uguaglianza spiega che cosa contiene l'accumulatore, mentre i limiti sul contatore servono alla verifica. Sotto la guardia <math|x≠n> danno infatti <math|0≤x‹n>, e quindi <tt|a[x]> è definito.

All'inizio l'invariante vale per la convenzione sulla somma vuota. Se vale prima del corpo, dopo l'aggiunta otteniamo

<\equation*>
s'=<big|sum><rsub|i=0><rsup|x-1>a[i]+a[x]=<big|sum><rsub|i=0><rsup|x>a[i].
</equation*>

Poiché il nuovo contatore è <math|x'=x+1>, questa è la somma fino a <math|x'-1>, e da <math|x‹n> segue <math|x'≤n>, quindi l'invariante è ristabilito. Ancora una volta <math|n-x> dimostra la terminazione, e la guardia falsa dà direttamente <math|x=n>. Con <math|n=0> il risultato è 0.

Sostituire una costante della specifica con una variabile ha trasformato la descrizione del risultato completo in una proprietà dei risultati parziali. I limiti aggiunti su <math|x> servono a tre cose insieme, cioè a controllare gli indici, a mantenere l'invariante e a dimostrare la terminazione.

<section|Bandiera a due colori: classificare senza perdere elementi>

Vogliamo ora riordinare un array in modo che vengano prima tutti i negativi e poi tutti i valori positivi o nulli. Non chiediamo che ciascun gruppo sia ordinato al suo interno, ma chiediamo che nessun valore vada perso, comprese le ripetizioni. Per dirlo scriviamo <math|<math-up|perm>(a,A)> quando <math|a> contiene gli stessi elementi della sequenza iniziale <math|A>, ciascuno con la stessa molteplicità.

Un solo confine non basta più, perché dobbiamo distinguere tre parti, quella già messa a sinistra, quella già messa a destra e quella che non abbiamo ancora guardato. Usiamo allora due confini <math|x≤y>. Il prefisso <math|[0,x)> contiene negativi, il suffisso <math|[y,n)> contiene non negativi, e la zona <math|[x,y)> è ancora sconosciuta. L'invariante è

<\equation*>
I≡<math-up|perm>(a,A)∧0≤x≤y≤n
</equation*>

<\equation*>
∧(∀i∈[0,x). a[i]‹0)∧(∀i∈[y,n). a[i]≥0).
</equation*>

Sulla zona sconosciuta l'invariante non dice nulla, perché è esattamente il lavoro che resta da fare. La sua lunghezza <math|y-x> suggerisce nello stesso tempo la guardia, <tt|x != y>, e la funzione di terminazione. All'inizio <math|x=0> e <math|y=n>, e le due zone classificate sono vuote.

<figura|@IMG(bandiera)|In alto, due categorie e una zona ancora sconosciuta. In basso, lo stesso ragionamento è esteso a negativi, zeri e positivi: cambiano i confini, mentre resta centrale la zona da esaminare.>

Sotto la guardia vale <math|x‹y>, quindi possiamo leggere sia <tt|a[x]> sia, se serve, <tt|a[y-1]>, perché entrambi gli indici stanno fra 0 e <math|n-1>. Guardiamo il primo elemento sconosciuto, <tt|a[x]>. Se è negativo appartiene al prefisso, e basta spostare in avanti il confine <math|x>. Se invece è non negativo dobbiamo portarlo a destra, nella posizione <math|y-1>, e arretrare il confine <math|y>.

Una semplice copia <tt|a[y-1] := a[x]> cancellerebbe però l'elemento che stava in <math|y-1>, violando la permutazione. Facciamo quindi uno scambio con una variabile d'appoggio. Dopo lo scambio, in posizione <math|x> arriva un valore che non abbiamo ancora esaminato, e quindi in questo ramo <math|x> deve restare fermo.

<\verbatim>
x := 0; y := n;<no-page-break>

while x != y do<no-page-break>

<hspace|2.100em>if a[x] ‹ 0<no-page-break>

<hspace|4.200em>then x := x + 1<no-page-break>

<hspace|4.200em>else temp := a[y-1];<no-page-break>

<hspace|6.825em>a[y-1] := a[x];<no-page-break>

<hspace|6.825em>a[x] := temp;<no-page-break>

<hspace|6.825em>y := y - 1<no-page-break>

<hspace|2.100em>fi<no-page-break>

endw
</verbatim>

<subsection|Perché x resta fermo dopo lo scambio>

Seguiamo il programma su quattro elementi, <math|a=[4,-2,0,7]>, partendo da <math|x=0> e <math|y=4>. Il primo elemento è non negativo, quindi lo scambiamo con l'ultimo e arretriamo <math|y>.

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.6em>|<cwith|1|-1|1|-1|cell-rsep|0.6em>|<table|<row|<cell|<text|Controllo>>|<cell|a>|<cell|x>|<cell|y>>|<row|<cell|<text|iniziale>>|<cell|[4,-2,0,7]>|<cell|0>|<cell|4>>|<row|<cell|<text|dopo il primo giro>>|<cell|[7,-2,0,4]>|<cell|0>|<cell|3>>|<row|<cell|<text|dopo il secondo giro>>|<cell|[0,-2,7,4]>|<cell|0>|<cell|2>>>>>
</equation*>

Dopo il primo giro in posizione 0 è arrivato il 7, che nessuno aveva ancora esaminato. Il secondo giro lo controlla e lo sposta a sua volta a destra, e al suo posto arriva lo 0, che verrà esaminato al giro successivo.

Se dopo il primo scambio avessimo fatto avanzare <math|x>, avremmo messo il 7 nel prefisso dei negativi, e l'invariante sarebbe crollato subito. Per questo lo scambio sposta soltanto il confine destro.

<subsection|Mantenere le zone e arrivare all'uscita>

Controlliamo che entrambi i rami ristabiliscano l'invariante. Nel primo l'array non cambia, e l'unico elemento aggiunto al prefisso è negativo. Nel secondo lo scambio non tocca né il vecchio prefisso <math|[0,x)> né il vecchio suffisso <math|[y,n)>, mette un valore non negativo in <math|y-1> e lascia invariate le molteplicità. Dopo l'arretramento di <math|y>, quindi, il nuovo suffisso è tutto non negativo. Quando <math|x=y-1> lo scambio riguarda una posizione con sé stessa, e funziona ugualmente.

Ogni ramo diminuisce <math|y-x> di 1 mantenendo <math|0≤x≤y≤n>, quindi il ciclo termina. All'uscita <math|x=y>, la zona sconosciuta è vuota, il prefisso contiene soltanto negativi e tutto il resto è non negativo. Nella postcondizione il confine finale <math|x> può stare ovunque fra 0 e <math|n>, estremi compresi. Se tutti i valori sono negativi arriva a <math|n>, se nessuno lo è resta in 0, e anche l'array vuoto è ammesso.

<section|Per proseguire: bandiera a tre colori>

Proviamo ora a separare negativi, zeri e positivi. Alla fine bastano due confini, ma durante il lavoro ne servono tre, perché oltre alle tre zone classificate c'è quella ancora sconosciuta:

<\equation*>
0≤x≤z≤y≤n.
</equation*>

Manteniamo <math|<math-up|perm>(a,A)>, con i negativi in <math|[0,x)>, gli zeri in <math|[x,z)> e i positivi in <math|[y,n)>, mentre la parte sconosciuta è <math|[z,y)>. Partiamo da <math|x=z=0> e <math|y=n>, continuiamo finché <math|z≠y> e misuriamo il lavoro rimasto con <math|y-z>.

L'elemento da esaminare è <tt|a[z]>, e i casi sono tre. Se è negativo, deve andare subito dopo il prefisso dei negativi, cioè in posizione <math|x>. Scambiamo allora <math|a[x]> e <math|a[z]> e facciamo avanzare sia <math|x> sia <math|z>. Quando <math|x‹z>, il vecchio <math|a[x]> era uno zero, e finisce correttamente in fondo alla zona degli zeri. Quando <math|x=z>, lo scambio avviene con sé stesso e i due confini avanzano insieme, senza inventare zeri che non esistono.

Se <math|a[z]=0> basta far avanzare <math|z>. Se infine <math|a[z]›0>, arretriamo <math|y>, scambiamo l'elemento positivo con quello nella nuova posizione <math|y> e lasciamo fermo <math|z>, perché dobbiamo ancora esaminare il valore arrivato da destra, esattamente come nella bandiera a due colori.

<\verbatim>
x := 0; z := 0; y := n;<no-page-break>

while z != y do<no-page-break>

<hspace|2.100em>if a[z] ‹ 0<no-page-break>

<hspace|4.200em>then temp := a[x]; a[x] := a[z]; a[z] := temp;<no-page-break>

<hspace|6.825em>x := x + 1; z := z + 1<no-page-break>

<hspace|4.200em>else if a[z] = 0<no-page-break>

<hspace|8.925em>then z := z + 1<no-page-break>

<hspace|8.925em>else y := y - 1;<no-page-break>

<hspace|11.550em>temp := a[y]; a[y] := a[z]; a[z] := temp<no-page-break>

<hspace|6.825em>fi<no-page-break>

<hspace|2.100em>fi<no-page-break>

endw
</verbatim>

Sotto la guardia vale <math|z‹y>, e tutti gli accessi sono validi. In particolare, nel ramo dei positivi il nuovo <math|y> è il vecchio <math|y-1>, che è almeno <math|z>. Gli scambi lasciano invariate le molteplicità, e l'analisi dei tre casi mostra che ogni zona mantiene il proprio significato. Ogni ramo diminuisce <math|y-z> di 1, quindi il ciclo termina. All'uscita <math|z=y>, la zona sconosciuta è scomparsa e nell'array troviamo, nell'ordine, i negativi, gli zeri e i positivi. Questo sviluppo completa l'esercizio proposto nelle lezioni.

<\verifica|9>
<strong|1.> Per <tt|v : array [0,4) of int> con valori <math|[2,1,10,6]>, esegui <tt|v[v[0]] := v[0]+v[1]>. Indica tutti gli indici controllati e il nuovo array. Spiega perché il comando successivo <tt|v[v[2]] := 0> è definito oppure non lo è.

<strong|2.> Modifica il programma della somma per contare gli elementi negativi di un array. Scrivi un invariante che dia significato al contatore, controlla gli indici e giustifica terminazione e risultato anche per l'array vuoto.
</verifica>
