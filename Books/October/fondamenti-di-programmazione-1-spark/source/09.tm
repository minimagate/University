<chapter|Array: indici, aggiornamenti e zone>

<\inbreve>
Come lavoriamo su una sequenza senza sbagliare posizione? Sappiamo già usare contatori e invarianti. Negli array daremo un significato agli indici e ai confini tra la parte già trattata e quella ancora da esaminare.
</inbreve>

Per sommare i voti di un elenco vogliamo conservare molti valori con un solo nome. Un <strong|array> raccoglie la sequenza; un <strong|indice> permette di scegliere una posizione. Dovremo controllare quali posizioni possiamo leggere e modificare.

<section|Array come funzioni sugli indici>

La dichiarazione <tt|v : array [0,4) of int> descrive quattro interi con indici <math|0,1,2,3>. L'estremo destro 4 segna la fine: non è una posizione leggibile. In generale un array omogeneo, cioè con elementi dello stesso tipo, è una funzione

<\equation*>
v:[a,b)→A,
</equation*>

con indici naturali <math|a≤b> e <math|A=ℤ> oppure <math|A=<math-up|Bool>>. L'intervallo <math|[a,b)> comprende gli indici <math|a≤i‹b>, ha <math|b-a> posizioni ed è vuoto se <math|a=b>. Scriviamo <math|<math-up|dom>(v)=[a,b)> per il dominio degli indici validi.

Lo stato associa ora al nome <math|v> un'intera funzione <math|σ(v)>. Se <math|σ(v)={0↦2,1↦1,2↦10,3↦6}>, leggere <tt|v[2]> restituisce 10. Si calcola prima l'espressione indice e poi si applica la funzione:

<\equation*>
ℰ(v[E],σ)=σ(v)(ℰ(E,σ)).
</equation*>

Questa formula ha senso solo se il valore dell'indice esiste e appartiene al dominio. 

Un indice può contenere altre letture: <tt|v[v[0]+v[1]]> legge prima 2 e 1, somma ottenendo 3, poi legge <tt|v[3]>, cioè 6. Dobbiamo controllare sia gli indici interni 0 e 1, sia l'indice esterno 3. 

Se la somma fosse 4, gli accessi interni sarebbero leciti ma quello esterno fallirebbe.

<\concetto|Definitezza di un accesso>
Per un'espressione indice intera <math|E>,

<\equation*>
<math-up|def>(v[E])≡<math-up|def>(E)∧E∈<math-up|dom>(v).
</equation*>

La correttezza richiede che ogni lettura effettivamente eseguita abbia un indice valido. Per un array su <math|[0,n)>, il solo vincolo <math|x≤n> non autorizza a leggere <tt|v[x]>: occorre <math|0≤x‹n>.
</concetto>

Le cause di indefinitezza comprendono ora divisori nulli e indici fuori dominio. I tipi restano un altro controllo: un array booleano produce booleani, che non possono essere usati come indici interi. Gli operatori del linguaggio agiscono sui singoli elementi: una scrittura come <tt|v+w>, intesa come somma di interi array, non è ammessa.

<section|Aggiornamento selettivo: prima valutare, poi modificare>

Il comando <tt|v[E] := E'> cambia una sola posizione. Tanto l'indice quanto il valore a destra si calcolano nello stato precedente. Per esempio, con l'array appena visto, <tt|v[v[0]] := v[1]+5> calcola l'indice 2 e il valore 6, poi cambia soltanto <tt|v[2]>. Il nuovo array è <math|{0↦2,1↦1,2↦6,3↦6}>.

Per descrivere formalmente l'effetto, poniamo <math|j=ℰ(E,σ)> e <math|d=ℰ(E',σ)>. Se entrambi sono definiti e <math|j∈<math-up|dom>(v)>, costruiamo la nuova sequenza <math|w=σ(v)[d/j]>: essa vale <math|d> all'indice <math|j> e coincide con <math|σ(v)> a ogni altro indice. Infine aggiorniamo lo stato:

<\equation*>
𝒞(v[E]:=E',σ)=σ[w/v].
</equation*>

L'aggiornamento interno riguarda una posizione della sequenza; quello esterno cambia il valore associato al nome <math|v>. Il dominio resta lo stesso.

<subsection|La condizione prima di un aggiornamento>

Per verificare una postcondizione <math|P>, scriviamo simbolicamente <math|w=v[E'/E]>. L'assioma di assegnamento richiede prima del comando

<\equation*>
<math-up|def>(E)∧<math-up|def>(E')∧E∈<math-up|dom>(v)∧P[w/v].
</equation*>

Dopo <tt|v[E] := E'> vale allora <math|P>. Come per le variabili con un solo valore, una precondizione più forte può essere usata tramite la regola della conseguenza. Qui sostituiamo l'intera sequenza nell'asserzione: il nuovo elemento in posizione <math|i> è <math|E'> se <math|i=E>, e il vecchio <math|v[i]> se <math|i≠E>.

<\guidato|Estendere un prefisso di somme>
Supponiamo <math|1≤k‹n> e che, prima della posizione <math|k>, l'array contenga già le somme <math|a[i]=<big|sum><rsub|j=0><rsup|i>j> per ogni <math|0≤i‹k>. Eseguiamo <tt|a[k] := a[k-1]+k>.

I vincoli su <math|k> rendono validi entrambi gli indici <math|k> e <math|k-1>. Per dimostrare la nuova proprietà fino a <math|k> incluso, separiamo due casi. Se <math|i‹k>, la posizione <math|i> non viene toccata e conserva la somma corretta. Se <math|i=k>, il nuovo valore è

<\equation*>
a[k-1]+k=<big|sum><rsub|j=0><rsup|k-1>j+k=<big|sum><rsub|j=0><rsup|k>j.
</equation*>

Abbiamo così verificato tutti gli indici <math|0≤i≤k>. La distinzione tra posizione modificata e posizioni conservate è ciò che permette di provare una postcondizione quantificata.
</guidato>

<section|Incrementare un array: un confine tra fatto e da fare>

Vogliamo aggiungere 1 a ogni elemento di <tt|a : array [0,n) of int>, con <math|n≥0>. Chiamiamo <math|V> la sequenza iniziale, una variabile di specifica che il programma non modifica. Il risultato richiesto è <math|∀k∈[0,n). a[k]=V[k]+1>.

Pensiamo a un confine <math|x>: a sinistra abbiamo già incrementato, da <math|x> in poi dobbiamo ancora farlo. All'inizio <math|x=0>; alla fine vogliamo <math|x=n>. Da questa immagine ricaviamo

<\equation*>
I≡0≤x≤n∧(∀k∈[0,x). a[k]=V[k]+1)
</equation*>

<\equation*>
∧(∀k∈[x,n). a[k]=V[k]).
</equation*>

La seconda riga non è superflua: per concludere che incrementare <tt|a[x]> produce <math|V[x]+1>, dobbiamo sapere che prima vale ancora <math|V[x]>.

<figura|@IMG(array-zone)|Il confine <math|x> separa le posizioni già incrementate da quelle ancora uguali alla sequenza iniziale <math|V>. Il confine può anche essere 0 oppure <math|n>.>

<\verbatim>
x := 0;<no-page-break>

while x ‹ n do<no-page-break>

<hspace|2.100em>a[x] := a[x] + 1;<no-page-break>

<hspace|2.100em>x := x + 1<no-page-break>

endw
</verbatim>

La precondizione è <math|n≥0∧a=V>, dove l'uguaglianza indica che coincidono tutti gli elementi. Con <math|x=0>, il prefisso elaborato è vuoto e la proprietà sul resto è esattamente quella iniziale: si stabilisce <math|I>.

Prima del corpo, <math|I∧x‹n> dà <math|0≤x‹n>: la lettura e la scrittura sono lecite. Le posizioni prima di <math|x> restano incrementate, quella in <math|x> passa da <math|V[x]> a <math|V[x]+1>, quelle dopo restano iniziali. Abbiamo quindi la stessa divisione con confine <math|x+1>. Il secondo assegnamento dà a <math|x> proprio quel valore, ristabilendo <math|I>.

<subsection|Quando il confine raggiunge la fine>

La quantità <math|n-x> è non negativa e diminuisce di 1. Il ciclo termina e, quando la guardia è falsa, <math|x≥n>; insieme a <math|x≤n> otteniamo <math|x=n>. L'intero array appartiene allora alla parte elaborata. Per <math|n=0> le proprietà quantificate riguardano l'insieme vuoto e sono soddisfatte senza eseguire il corpo.

<section|Somma di un array: sostituire la fine con un confine mobile>

Ora l'array non deve cambiare; vogliamo soltanto ottenere

<\equation*>
s=<big|sum><rsub|i=0><rsup|n-1>a[i].
</equation*>

Sostituiamo nella postcondizione il valore finale <math|n> con un indice di lavoro <math|x>: <math|s> sarà la somma delle prime <math|x> posizioni. Per <math|x=0> questa è la somma vuota, che vale 0. Per <math|x=n> sarà la somma desiderata.

<\verbatim>
x := 0; s := 0;<no-page-break>

while x != n do<no-page-break>

<hspace|2.100em>s := s + a[x];<no-page-break>

<hspace|2.100em>x := x + 1<no-page-break>

endw
</verbatim>

Usiamo <math|I≡s=<big|sum><rsub|i=0><rsup|x-1>a[i]∧0≤x≤n>. L'uguaglianza spiega l'accumulatore; i limiti sul contatore permettono la verifica. Infatti, sotto la guardia <math|x≠n>, essi danno <math|0≤x‹n>, quindi <tt|a[x]> è definito.

All'inizio <math|I> vale per la convenzione sulla somma vuota. Se vale prima del corpo, dopo l'aggiunta otteniamo

<\equation*>
s'=<big|sum><rsub|i=0><rsup|x-1>a[i]+a[x]=<big|sum><rsub|i=0><rsup|x>a[i].
</equation*>

Poiché il nuovo contatore è <math|x'=x+1>, questa è la somma fino a <math|x'-1>. Inoltre <math|x‹n> implica <math|x'≤n>, dunque l'invariante è ristabilito. Ancora <math|n-x> prova la terminazione; la guardia falsa dà direttamente <math|x=n>. Con <math|n=0> il risultato è 0.

Sostituire una costante della specifica con una variabile ha trasformato il risultato completo in una proprietà di risultati parziali. I vincoli aggiunti su <math|x> servono insieme al controllo degli indici, all'invarianza e alla terminazione.

<section|Bandiera a due colori: classificare senza perdere elementi>

Vogliamo riordinare un array in modo che prima vengano i negativi e poi i valori positivi o nulli. Non chiediamo l'ordinamento interno a ciascun gruppo. Ma chiediamo di conservare tutti i valori, comprese le loro ripetizioni: scriviamo <math|<math-up|perm>(a,A)> se <math|a> ha gli stessi elementi della sequenza iniziale <math|A>, con le stesse molteplicità.

Un solo confine non basta a distinguere gli elementi già messi a destra da quelli ancora da guardare. Introduciamo due confini <math|x≤y>: il prefisso <math|[0,x)> contiene negativi, il suffisso <math|[y,n)> contiene non negativi, mentre <math|[x,y)> è ancora sconosciuto. L'invariante è

<\equation*>
I≡<math-up|perm>(a,A)∧0≤x≤y≤n
</equation*>

<\equation*>
∧(∀i∈[0,x). a[i]‹0)∧(∀i∈[y,n). a[i]≥0).
</equation*>

Non affermiamo nulla sui segni della zona sconosciuta: è proprio il lavoro che resta. La sua lunghezza <math|y-x> suggerisce insieme la guardia <tt|x != y> e la funzione di terminazione. Con <math|x=0,y=n> entrambe le zone classificate sono vuote.

<figura|@IMG(bandiera)|In alto, due categorie e una zona ancora sconosciuta. In basso, lo stesso ragionamento è esteso a negativi, zeri e positivi: cambiano i confini, mentre resta centrale la zona da esaminare.>

Sotto la guardia <math|x‹y>. Possiamo leggere <tt|a[x]> e, se serve, <tt|a[y-1]>: entrambi gli indici sono compresi tra 0 e <math|n-1>. Se <math|a[x]‹0>, abbiamo trovato un altro elemento per il prefisso: basta avanzare <math|x>. Se invece <math|a[x]≥0>, vogliamo portarlo a destra, nella posizione <math|y-1>, e arretrare <math|y>.

Una copia <tt|a[y-1] := a[x]> perderebbe il vecchio elemento di destra. Per conservare la permutazione facciamo uno scambio usando una variabile temporanea. Il valore che arriva in posizione <math|x> è ancora sconosciuto: in questo ramo <math|x> deve restare fermo.

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

Partiamo da quattro elementi <math|a=[4,-2,0,7]>, con <math|x=0,y=4>. Il primo elemento è non negativo: lo scambiamo con l’ultimo e arretriamo <math|y>.

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.6em>|<cwith|1|-1|1|-1|cell-rsep|0.6em>|<table|<row|<cell|<text|Controllo>>|<cell|a>|<cell|x>|<cell|y>>|<row|<cell|<text|iniziale>>|<cell|[4,-2,0,7]>|<cell|0>|<cell|4>>|<row|<cell|<text|dopo il primo giro>>|<cell|[7,-2,0,4]>|<cell|0>|<cell|3>>|<row|<cell|<text|dopo il secondo giro>>|<cell|[0,-2,7,4]>|<cell|0>|<cell|2>>>>>
</equation*>

Dopo il primo giro è arrivato 7 in posizione 0. Non era stato esaminato: occorre controllarlo nel secondo giro, che lo sposta a destra. Anche il nuovo 0 dovrà essere esaminato al giro seguente.

Se dopo il primo scambio avessimo aumentato <math|x>, avremmo dichiarato negativo il valore 7. Si perderebbe subito il significato del prefisso. Per questo lo scambio fa avanzare soltanto il confine destro.

<subsection|Conservare le zone e arrivare all’uscita>

Verifichiamo i due rami. Nel primo l'array non cambia e il solo elemento aggiunto al prefisso è negativo. 

Nel secondo, lo scambio non modifica né il vecchio prefisso <math|[0,x)> né il vecchio suffisso <math|[y,n)>; mette un non negativo in <math|y-1> e conserva le molteplicità. Dopo l'arretramento, il nuovo suffisso è quindi tutto non negativo. 

Se <math|x=y-1>, lo scambio riguarda una posizione con sé stessa: funziona ugualmente.

Ogni ramo diminuisce <math|y-x> di 1, mantenendo <math|0≤x≤y≤n>. Il ciclo termina. All'uscita <math|x=y>, quindi la zona sconosciuta è vuota: il prefisso è negativo e l'intero resto è non negativo. 

La postcondizione comprende <math|0≤x≤n>, con entrambi gli estremi ammessi. Se tutti i valori sono negativi, <math|x=n>; se nessuno lo è, <math|x=0>. Anche l'array vuoto è ammesso.

<subsection|Per proseguire: bandiera a tre colori>

Separiamo ora negativi, zeri e positivi. Per una classificazione completa servono due confini finali; durante il lavoro ne usiamo tre:

<\equation*>
0≤x≤z≤y≤n.
</equation*>

Manteniamo <math|<math-up|perm>(a,A)>, negativi in <math|[0,x)>, zeri in <math|[x,z)>, positivi in <math|[y,n)>. La parte sconosciuta è <math|[z,y)>. Inizializziamo <math|x=z=0,y=n>; continuiamo finché <math|z≠y> e misuriamo il lavoro con <math|y-z>.

Se <math|a[z]‹0>, dobbiamo portarlo subito dopo il prefisso negativo, cioè in <math|x>. Scambiamo <math|a[x]> e <math|a[z]>, poi avanziamo entrambi <math|x> e <math|z>. 

Quando <math|x‹z>, il vecchio <math|a[x]> era uno zero, quindi può diventare l'ultimo elemento della nuova zona degli zeri. 

Quando <math|x=z>, lo scambio è con sé stesso e i confini avanzano insieme senza creare zeri inesistenti.

<subsection|Gli altri due casi>

Se <math|a[z]=0>, basta avanzare <math|z>. Se <math|a[z]›0>, arretriamo <math|y>, scambiamo l'elemento positivo con quello della nuova posizione <math|y> e lasciamo <math|z> fermo: occorre esaminare ciò che è arrivato da destra.

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

<subsection|Indici, progresso e risultato>

Sotto la guardia <math|z‹y>, tutti gli accessi sono validi. In particolare, nel ramo positivo il nuovo <math|y> è il vecchio <math|y-1≥z>. 

Gli scambi conservano le molteplicità; l'analisi dei tre casi mostra che ciascuna zona mantiene il proprio significato. Ogni ramo diminuisce <math|y-z> di 1, quindi il ciclo termina. 

All’uscita <math|z=y>: la zona sconosciuta scompare e restano, nell'ordine, negativi, zeri e positivi. Questo sviluppo completa l'esercizio proposto nelle lezioni.

<\verifica|9>
<strong|1.> Per <tt|v : array [0,4) of int> con valori <math|[2,1,10,6]>, esegui <tt|v[v[0]] := v[0]+v[1]>. Indica tutti gli indici controllati e il nuovo array. Spiega perché il comando successivo <tt|v[v[2]] := 0> è definito oppure non lo è.

<strong|2.> Modifica il programma della somma per contare gli elementi negativi di un array. Scrivi un invariante che dia significato al contatore, controlla gli indici e giustifica terminazione e risultato anche per l'array vuoto.
</verifica>
