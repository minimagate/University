<chapter|Matrici, applicazioni lineari e nucleo>

<\inbreve>
Un sistema di equazioni lineari e una trasformazione che manda vettori in vettori sembrano due argomenti diversi, ma sono la stessa cosa vista da due lati. In questo capitolo le matrici faranno da ponte fra i due. Leggendo una matrice per colonne capiremo quali risultati si possono raggiungere, e il nucleo ci dirà quali vettori vengono mandati a zero. Mettendo insieme le due cose arriveremo a descrivere tutte le soluzioni di un sistema e a un teorema che conta le dimensioni di ciò che scompare e di ciò che resta.
</inbreve>

<section|Il prodotto di matrici: righe per colonne>

Consideriamo le due espressioni <math|x<rsub|1>+x<rsub|2>> e <math|x<rsub|2>+x<rsub|3>>. Possiamo raccogliere i loro coefficienti in una tabella, e le incognite in una colonna:

<\equation*>
A=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>,<space|2em>x=<matrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|x<rsub|3>>>>>>.
</equation*>

La prima riga di <math|A> si legge come <math|1·x<rsub|1>+1·x<rsub|2>+0·x<rsub|3>>, e la seconda come <math|0·x<rsub|1>+1·x<rsub|2>+1·x<rsub|3>>. È naturale allora definire il prodotto della matrice per la colonna come la colonna di queste due espressioni:

<\equation*>
Ax=<matrix|<tformat|<table|<row|<cell|x<rsub|1>+x<rsub|2>>>|<row|<cell|x<rsub|2>+x<rsub|3>>>>>>.
</equation*>

Con <math|x=(2,-1,3)<rsup|T>>, per esempio, otteniamo <math|Ax=(1,2)<rsup|T>>. La lettera <math|T> sta per «trasposto» e ci ricorda che una lista scritta in orizzontale va pensata come colonna.

In generale una matrice <math|A=(a<rsub|ij>)∈M<rsub|m,n>(K)> può moltiplicare una colonna di <math|n> componenti, e il risultato è una colonna di <math|m> componenti. La componente di posto <math|i> si ottiene dalla riga <math|i> di <math|A>:

<\equation*>
(Ax)<rsub|i>=<big|sum><rsub|j=1><rsup|n>a<rsub|ij>x<rsub|j>.
</equation*>

Come si vede, non moltiplichiamo fra loro entrate che occupano la stessa posizione. Prendiamo una <em|riga intera> e una <em|colonna intera>, moltiplichiamo le entrate corrispondenti e sommiamo i risultati.

Se al posto di una colonna mettiamo un'intera matrice <math|B∈M<rsub|n,p>(K)>, facciamo lo stesso conto per ciascuna delle sue colonne. Otteniamo una matrice <math|AB∈M<rsub|m,p>(K)>, con entrate

<\equation*>
(AB)<rsub|ij>=<big|sum><rsub|k=1><rsup|n>a<rsub|ik>b<rsub|kj>.
</equation*>

Perché il prodotto abbia senso, il numero di colonne di <math|A> deve essere uguale al numero di righe di <math|B>, e da <math|(m×n)(n×p)> nasce una matrice <math|m×p>. Quando i prodotti sono definiti valgono le proprietà associativa e distributiva:

<\equation*>
(AB)C=A(BC),<space|1em>A(B+C)=AB+AC,
</equation*>

<\equation*>
(A+B)C=AC+BC.
</equation*>

L'associatività si vede bene dalla formula. In entrambi i membri l'entrata <math|(i,j)> è la somma dei termini <math|a<rsub|ik>b<rsub|kh>c<rsub|hj>> su tutti gli indici interni <math|k> e <math|h>, e cambia soltanto il modo di raggrupparli. Le distributività si ottengono distribuendo i prodotti in ogni entrata.

C'è invece una proprietà dei numeri che le matrici non hanno. Prendiamo

<\equation*>
P=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>>>>>,<space|2em>Q=<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>.
</equation*>

Facendo i conti troviamo <math|PQ=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>> e <math|QP=<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|1>>>>>>, che sono diverse. Il prodotto matriciale <strong|non è commutativo>, e l'ordine dei fattori va sempre rispettato.

<section|Sistemi lineari e combinazioni delle colonne>

Un sistema lineare in <math|n> incognite è fatto di equazioni della forma <math|a<rsub|i1>x<rsub|1>+⋯+a<rsub|in>x<rsub|n>=b<rsub|i>>, in cui i coefficienti sono numeri dati e le incognite non vengono mai moltiplicate fra loro. Risolvere il sistema significa trovare i valori che rendono vere tutte le equazioni contemporaneamente.

Se raccogliamo i coefficienti nella matrice <math|A> e i termini noti nella colonna <math|b>, tutto il sistema si scrive in modo compatto come <math|Ax=b>. Affiancando ad <math|A> la colonna <math|b> otteniamo la <strong|matrice completa> <math|(A\|b)>, in cui la sbarretta serve solo a separare le due parti. Quando <math|b=0> il sistema si dice <strong|omogeneo>, e ha sempre almeno la soluzione <math|x=0>.

Ora proviamo a leggere il prodotto in un altro modo. Nel nostro esempio le colonne di <math|A> sono <math|A<rsub|1>=(1,0)<rsup|T>>, <math|A<rsub|2>=(1,1)<rsup|T>> e <math|A<rsub|3>=(0,1)<rsup|T>>, e possiamo riscrivere il prodotto come

<\equation*>
Ax=x<rsub|1>A<rsub|1>+x<rsub|2>A<rsub|2>+x<rsub|3>A<rsub|3>.
</equation*>

Questa lettura vale per ogni matrice. Il prodotto <math|Ax> è la combinazione delle colonne di <math|A> con coefficienti <math|x<rsub|1>,…,x<rsub|n>>. Risolvere un sistema significa quindi cercare i coefficienti con cui le colonne producono <math|b>, e la domanda se il sistema abbia soluzioni diventa una domanda sullo span.

<\concetto|La domanda di compatibilità>
Il sistema <math|Ax=b> è <strong|compatibile>, cioè ha almeno una soluzione, se e solo se <math|b> appartiene allo span delle colonne di <math|A>.
</concetto>

Nel nostro esempio ogni <math|b=(s,t)<rsup|T>> si raggiunge, per esempio scegliendo <math|x=(s,0,t)<rsup|T>>. Le cose vanno diversamente se le colonne sono tutte multiple di uno stesso vettore non nullo, perché allora si raggiunge soltanto una retta. Se le colonne sono tutte nulle, si raggiunge soltanto il vettore zero.

<figura|@IMG(colonne,0.9)|Leggere per colonne significa cercare una combinazione che dia <math|b>. Nel piano, due colonne indipendenti raggiungono ogni vettore; due colonne parallele, con almeno una non nulla, raggiungono soltanto la loro retta.>

Esiste anche una lettura per righe, che conosciamo dalla scuola. In <math|ℝ<rsup|2>> ogni equazione non degenere descrive una retta, e le soluzioni sono i punti che stanno su tutte le rette. Le due letture affrontano lo stesso problema da lati opposti. Le righe guardano alle condizioni imposte alle incognite, mentre le colonne guardano agli oggetti che riusciamo a costruire.

<section|Applicazioni lineari, nucleo e immagine>

La matrice del nostro esempio trasforma ogni vettore di <math|K<rsup|3>> in un vettore di <math|K<rsup|2>>. Chiamiamo <math|F<rsub|A>(x)=Ax> questa trasformazione e notiamo che rispetta le combinazioni lineari. Facendo il conto componente per componente si vede infatti che <math|A(x+y)=Ax+Ay> e <math|A(αx)=αAx>. Questa proprietà merita un nome, perché la incontreremo anche lontano dalle matrici.

<\concetto|Applicazione lineare>
Se <math|V,W> sono spazi sullo stesso campo <math|K>, una funzione <math|F:V→W> è <strong|lineare> quando, per ogni <math|u,v∈V> e <math|α∈K>,

<\equation*>
F(u+v)=F(u)+F(v),<space|2em>F(αu)=αF(u).
</equation*>

Il <strong|nucleo> è <math|ker F=<around|{|v∈V:F(v)=0|}>>. L'<strong|immagine> è <math|<math-up|Im> F=<around|{|F(v):v∈V|}>>.
</concetto>

Il nucleo vive nello spazio di partenza e l'immagine in quello di arrivo. Per una matrice <math|A>, il nucleo è l'insieme delle soluzioni di <math|Ax=0> e l'immagine è lo span delle colonne. Un nucleo diverso da zero ci dice che vettori diversi possono dare lo stesso risultato, cioè che l'applicazione perde qualche informazione.

Nucleo e immagine sono sottospazi. Per vederlo, osserviamo prima che <math|F(0)=0>, perché la linearità dà <math|F(0)=F(0+0)=F(0)+F(0)>, e sottraendo <math|F(0)> resta <math|0=F(0)>. Se <math|F(u)=F(v)=0>, allora anche <math|F(u+v)=0> e <math|F(αu)=0>, quindi il nucleo è chiuso per le operazioni. Se <math|w=F(u)> e <math|z=F(v)> stanno nell'immagine, anche <math|w+z=F(u+v)> e <math|αw=F(αu)> ci stanno. Entrambi contengono lo zero, e il criterio di sottospazio è soddisfatto.

Nel nostro esempio, trovare il nucleo significa risolvere <math|x<rsub|1>+x<rsub|2>=0> e <math|x<rsub|2>+x<rsub|3>=0>. Se poniamo <math|x<rsub|2>=-t>, le altre due componenti devono valere <math|t>, e quindi <math|ker F<rsub|A>=<math-up|span>((1,-1,1)<rsup|T>)>. L'immagine invece è tutto <math|K<rsup|2>>, perché la prima e la terza colonna sono proprio i vettori della base canonica.

Il nucleo risponde anche a una domanda importante, cioè quando una funzione lineare è iniettiva. Basta controllare che <math|ker F={0}>. Se <math|F> è iniettiva, da <math|F(v)=0=F(0)> segue subito <math|v=0>. Per l'altra direzione supponiamo che <math|F(u)=F(v)>. Dovremmo confrontare due vettori, ma la linearità ci permette di ridurci a uno solo, perché <math|F(u-v)=F(u)-F(v)=0>. Se il nucleo contiene soltanto lo zero, allora <math|u-v=0>, cioè <math|u=v>. Questa piccola sottrazione ci servirà subito anche per i sistemi.

<section|Tutte le soluzioni: una particolare più il nucleo>

Torniamo al sistema <math|x<rsub|1>+x<rsub|2>=s>, <math|x<rsub|2>+x<rsub|3>=t>, di cui conosciamo già la soluzione <math|ξ=(s,0,t)<rsup|T>>. Se le aggiungiamo un multiplo <math|h(1,-1,1)<rsup|T>> del vettore del nucleo, le due somme non cambiano, perché in ciascuna aggiungiamo <math|h> a una componente e lo togliamo all'altra. Otteniamo così tutta una famiglia di soluzioni,

<\equation*>
x=(s,0,t)<rsup|T>+h(1,-1,1)<rsup|T>,<space|1em>h∈K.
</equation*>

Non è una particolarità di questo esempio. Supponiamo che <math|Aξ=b> e prendiamo un'altra soluzione qualsiasi <math|x>. Per capire in che cosa differisce da <math|ξ>, sottraiamo le due equazioni:

<\equation*>
A(x-ξ)=Ax-Aξ=b-b=0.
</equation*>

La differenza fra due soluzioni sta dunque sempre nel nucleo. Viceversa, se <math|Az=0>, allora <math|A(ξ+z)=b+0=b>, e aggiungendo a <math|ξ> un vettore del nucleo otteniamo ancora una soluzione. Le due inclusioni insieme danno una descrizione completa.

<\concetto|Struttura delle soluzioni>
Se <math|Ax=b> è compatibile e <math|ξ> è una sua soluzione, l'insieme di tutte le soluzioni è <math|ξ+ker F<rsub|A>>.
</concetto>

Un insieme di questa forma si chiama <strong|traslato> di un sottospazio, o anche sottospazio affine. Se <math|b≠0> non contiene l'origine, e quindi non è un sottospazio vettoriale. Se il nucleo è nullo, ogni sistema compatibile ha una e una sola soluzione. Per descrivere tutte le soluzioni di un sistema ci servono quindi due ingredienti, una soluzione particolare e una base del nucleo.

<figura|@IMG(traslato,0.95)|Nell'esempio geometrico il nucleo è una retta per l'origine. Le soluzioni del sistema non omogeneo si ottengono traslandola fino a una soluzione particolare <math|ξ>.>

<section|Rango e teorema rango–nullità>

La nostra applicazione parte da tre coordinate e ne produce due. Una direzione, quella di <math|(1,-1,1)<rsup|T>>, viene mandata a zero, e nell'immagine restano due direzioni indipendenti. Sembra che le tre dimensioni di partenza si siano divise fra ciò che scompare e ciò che resta. Prima di dimostrarlo in generale, vediamo come scegliere bene le tre direzioni.

<subsection|Una base che separa il nucleo dal resto>

Lavoriamo ancora con <math|F(x<rsub|1>,x<rsub|2>,x<rsub|3>)=(x<rsub|1>+x<rsub|2>,x<rsub|2>+x<rsub|3>)>, il cui nucleo ha base <math|k=(1,-1,1)>. Proviamo a completare <math|k> con <math|e<rsub|1>> ed <math|e<rsub|3>>. Per controllare l'indipendenza scriviamo

<\equation*>
αk+βe<rsub|1>+γe<rsub|3>=(α+β,-α,α+γ)=0.
</equation*>

La seconda componente dà <math|α=0>, e poi la prima e la terza danno <math|β=γ=0>. I tre vettori sono indipendenti e quindi formano una base di <math|K<rsup|3>>.

Guardiamo che cosa fa <math|F> su questa base. Abbiamo <math|F(k)=0>, <math|F(e<rsub|1>)=(1,0)> e <math|F(e<rsub|3>)=(0,1)>. Il primo vettore scompare, e gli altri due vanno in una base dell'immagine, ed è per questo che qui <math|3=1+2>. La base ci permette anche di seguire ogni singolo vettore. Per esempio <math|(2,-1,3)=k+e<rsub|1>+2e<rsub|3>>, e applicando <math|F> il termine <math|k> sparisce e resta <math|(1,2)>.

<subsection|Il conteggio in generale>

Per enunciare il risultato ci servono due nomi. Il <strong|rango> di <math|A> è <math|<math-up|rank>(A)=dim<space|0.2em><math-up|Im> F<rsub|A>>, cioè la dimensione dello span delle colonne. La <strong|nullità> è la dimensione del nucleo.

<\concetto|Teorema rango–nullità>
Se <math|F:V→W> è lineare e <math|V> ha dimensione finita, allora

<\equation*>
dim V=dim ker F+dim<space|0.2em><math-up|Im> F.
</equation*>
</concetto>

La dimostrazione ripete in generale ciò che abbiamo fatto nell'esempio, cioè sceglie una base che mostri separatamente ciò che scompare e ciò che resta. Prendiamo una base <math|v<rsub|1>,…,v<rsub|k>> del nucleo e completiamola, come sappiamo fare dal capitolo 6, a una base <math|v<rsub|1>,…,v<rsub|n>> di <math|V>. Vogliamo dimostrare che le immagini dei vettori aggiunti, <math|F(v<rsub|k+1>),…,F(v<rsub|n>)>, formano una base dell'immagine.

<strong|Generazione.> Ogni elemento dell'immagine è della forma <math|F(v)> per qualche <math|v>. Se scriviamo <math|v=α<rsub|1>v<rsub|1>+⋯+α<rsub|n>v<rsub|n>> e applichiamo <math|F>, i primi <math|k> termini diventano zero, perché quei vettori stanno nel nucleo. Resta

<\equation*>
F(v)=α<rsub|k+1>F(v<rsub|k+1>)+⋯+α<rsub|n>F(v<rsub|n>).
</equation*>

<strong|Indipendenza.> Supponiamo che una combinazione <math|α<rsub|k+1>F(v<rsub|k+1>)+⋯+α<rsub|n>F(v<rsub|n>)> valga zero. Per linearità il vettore <math|u=α<rsub|k+1>v<rsub|k+1>+⋯+α<rsub|n>v<rsub|n>> viene mandato a zero, quindi sta nel nucleo, e possiamo scriverlo anche come <math|u=β<rsub|1>v<rsub|1>+⋯+β<rsub|k>v<rsub|k>>. Portando tutto dalla stessa parte otteniamo una relazione nulla fra i vettori della base di <math|V>. L'indipendenza di quella base annulla tutti i coefficienti, compresi gli <math|α<rsub|k+1>,…,α<rsub|n>> che volevamo controllare.

La base dell'immagine ha dunque <math|n-k> vettori, e sommando le dimensioni troviamo <math|k+(n-k)=n>. Il ragionamento comprende anche i casi estremi di nucleo nullo o immagine nulla, nei quali il blocco corrispondente della base è semplicemente vuoto.

<figura|@IMG(rango-nullita,0.9)|Scegliamo prima una base del nucleo, poi la completiamo. Le immagini dei vettori aggiunti formano una base dell'immagine. La scelta iniziale dei vettori del nucleo rende possibile questo conteggio.>

Per una matrice <math|A∈M<rsub|m,n>(K)> lo spazio di partenza è <math|K<rsup|n>>, e quindi <math|dim ker F<rsub|A>=n-<math-up|rank>(A)>. Nel conto entra il numero delle <em|incognite>, cioè delle colonne, e non quello delle equazioni. Nei prossimi capitoli vedremo come calcolare in pratica il rango e una base del nucleo con il metodo di Gauss.

<\verifica|8>
<strong|8.1.> Una matrice reale di dimensioni <math|3×5> ha rango 3. Qual è la dimensione del nucleo? Il sistema <math|Ax=b> è compatibile per ogni <math|b∈ℝ<rsup|3>>? L'applicazione associata è iniettiva?

<strong|8.2.> Sia <math|A=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|4>|<cell|5>|<cell|6>>|<row|<cell|7>|<cell|8>|<cell|9>>>>>>. Considera <math|A> come matrice reale. Per il nucleo, prova a sottrarre quattro volte la prima equazione dalla seconda; osserva poi che la terza riga è due volte la seconda meno la prima. Trova nucleo e immagine, verificando che le loro dimensioni sommino a 3. Sapendo che <math|ξ=(1,0,0)<rsup|T>> risolve <math|Ax=(1,4,7)<rsup|T>>, descrivi tutte le soluzioni.
</verifica>
