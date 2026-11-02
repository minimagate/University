<chapter|Matrici, applicazioni lineari e nucleo>

<\inbreve>
Come si collega un sistema di equazioni a una trasformazione di vettori? Sappiamo costruire vettori mediante combinazioni lineari. Le matrici ci aiuteranno a descrivere i risultati raggiungibili, le direzioni mandate a zero e tutte le soluzioni di un sistema.
</inbreve>

<section|Il prodotto di matrici: righe per colonne>

Consideriamo le due espressioni <math|x<rsub|1>+x<rsub|2>> e <math|x<rsub|2>+x<rsub|3>>. Possiamo raccogliere i loro coefficienti nella matrice

<\equation*>
A=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>,<space|2em>x=<matrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|x<rsub|3>>>>>>.
</equation*>

La prima riga legge <math|1·x<rsub|1>+1·x<rsub|2>+0·x<rsub|3>>; la seconda legge <math|0·x<rsub|1>+1·x<rsub|2>+1·x<rsub|3>>. Definiamo quindi

<\equation*>
Ax=<matrix|<tformat|<table|<row|<cell|x<rsub|1>+x<rsub|2>>>|<row|<cell|x<rsub|2>+x<rsub|3>>>>>>.
</equation*>

Per esempio, con <math|x=(2,-1,3)<rsup|T>> otteniamo <math|Ax=(1,2)<rsup|T>>. La lettera <math|T> significa «trasposto»: una lista scritta in orizzontale viene pensata come colonna.

In generale <math|A=(a<rsub|ij>)∈M<rsub|m,n>(K)> può moltiplicare una colonna di <math|n> componenti. Il risultato ha <math|m> componenti e la componente <math|i> è

<\equation*>
(Ax)<rsub|i>=<big|sum><rsub|j=1><rsup|n>a<rsub|ij>x<rsub|j>.
</equation*>

Non moltiplichiamo soltanto elementi che occupano la stessa posizione in due matrici. Prendiamo una <em|riga intera> e una <em|colonna intera>, moltiplichiamo le entrate corrispondenti e sommiamo.

Se al posto di una sola colonna mettiamo una matrice <math|B∈M<rsub|n,p>(K)>, facciamo lo stesso conto per ciascuna sua colonna. Otteniamo <math|AB∈M<rsub|m,p>(K)>, con

<\equation*>
(AB)<rsub|ij>=<big|sum><rsub|k=1><rsup|n>a<rsub|ik>b<rsub|kj>.
</equation*>

Le dimensioni interne devono coincidere: <math|(m×n)(n×p)> dà <math|m×p>. Quando i prodotti sono definiti valgono associatività e distributività:

<\equation*>
(AB)C=A(BC),<space|1em>A(B+C)=AB+AC,
</equation*>

<\equation*>
(A+B)C=AC+BC.
</equation*>

L'associatività si vede anche dalla formula: l'entrata <math|(i,j)> di entrambi i membri è la somma di <math|a<rsub|ik>b<rsub|kh>c<rsub|hj>> su tutti gli indici interni <math|k,h>. Cambia il raggruppamento, non i termini sommati. Le distributività si ottengono distribuendo i prodotti in ogni entrata.

L'ordine dei fattori conta. Per esempio, ponendo

<\equation*>
P=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>>>>>,<space|2em>Q=<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>,
</equation*>

si trova <math|PQ=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>> e <math|QP=<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|1>>>>>>: sono diversi. Il prodotto matriciale <strong|non è commutativo>.

<section|Sistemi lineari e combinazioni delle colonne>

Un sistema lineare in <math|n> incognite ha equazioni della forma <math|a<rsub|i1>x<rsub|1>+⋯+a<rsub|in>x<rsub|n>=b<rsub|i>>. I coefficienti sono dati; le incognite non vengono moltiplicate tra loro. Imporre il sistema significa chiedere che tutte le equazioni siano vere contemporaneamente.

Raccogliendo i coefficienti in <math|A> e i termini noti nella colonna <math|b>, il sistema diventa <math|Ax=b>. La <strong|matrice completa> <math|(A\|b)> affianca a <math|A> la colonna <math|b>. La sbarretta è soltanto un separatore.

Se <math|b=0>, il sistema si dice <strong|omogeneo> e ammette sempre almeno la soluzione <math|x=0>.

Nel nostro esempio le colonne sono <math|A<rsub|1>=(1,0)<rsup|T>>, <math|A<rsub|2>=(1,1)<rsup|T>>, <math|A<rsub|3>=(0,1)<rsup|T>>. Possiamo riscrivere il prodotto come

<\equation*>
Ax=x<rsub|1>A<rsub|1>+x<rsub|2>A<rsub|2>+x<rsub|3>A<rsub|3>.
</equation*>

Vale lo stesso per ogni matrice: <math|Ax> è la combinazione delle colonne con coefficienti <math|x<rsub|j>>. Perciò

<\concetto|La domanda di compatibilità>
Il sistema <math|Ax=b> è <strong|compatibile>, cioè ha almeno una soluzione, se e solo se <math|b> appartiene allo span delle colonne di <math|A>.
</concetto>

Nel nostro esempio qualunque <math|b=(s,t)<rsup|T>> è raggiungibile: basta scegliere <math|x=(s,0,t)<rsup|T>>. Se le colonne sono tutte multipli di uno stesso vettore non nullo e almeno una è non nulla, si raggiunge soltanto una retta. Se sono tutte nulle, si raggiunge soltanto il vettore zero.

<figura|@IMG(colonne,0.9)|Leggere per colonne significa cercare una combinazione che dia <math|b>. Nel piano, due colonne indipendenti raggiungono ogni vettore; due colonne parallele, con almeno una non nulla, raggiungono soltanto la loro retta.>

Esiste anche la lettura per righe: in <math|ℝ<rsup|2>> ogni equazione non degenere descrive una retta e le soluzioni sono i punti comuni alle rette. Le due letture descrivono la stessa domanda: una guarda le condizioni imposte alle incognite, l'altra gli oggetti che possiamo costruire.

<section|Applicazioni lineari, nucleo e immagine>

La matrice dell'esempio trasforma ogni vettore di <math|K<rsup|3>> in uno di <math|K<rsup|2>>. La trasformazione <math|F<rsub|A>(x)=Ax> conserva le combinazioni lineari. Infatti, calcolando componente per componente, <math|A(x+y)=Ax+Ay> e <math|A(αx)=αAx>.

<\concetto|Applicazione lineare>
Se <math|V,W> sono spazi sullo stesso campo <math|K>, una funzione <math|F:V→W> è <strong|lineare> quando, per ogni <math|u,v∈V> e <math|α∈K>,

<\equation*>
F(u+v)=F(u)+F(v),<space|2em>F(αu)=αF(u).
</equation*>

Il <strong|nucleo> è <math|ker F=<around|{|v∈V:F(v)=0|}>>. L'<strong|immagine> è <math|<math-up|Im> F=<around|{|F(v):v∈V|}>>.
</concetto>

Il nucleo vive nello spazio di partenza; l'immagine nello spazio di arrivo. Per una matrice <math|A> sono, rispettivamente, le soluzioni di <math|Ax=0> e lo span delle colonne. Un nucleo non nullo indica che informazioni diverse possono dare lo stesso risultato.

Prima di verificare che sono sottospazi, osserviamo che <math|F(0)=0>: dalla linearità <math|F(0)=F(0+0)=F(0)+F(0)> e sottraiamo <math|F(0)>.

Nel nucleo, se <math|F(u)=F(v)=0>, allora <math|F(u+v)=0> e <math|F(αu)=0>.

Nell'immagine, se <math|w=F(u)> e <math|z=F(v)>, allora <math|w+z=F(u+v)> e <math|αw=F(αu)>. Entrambi contengono zero e soddisfano il criterio di sottospazio.

Nel nostro esempio, risolvere <math|F<rsub|A>(x)=0> significa imporre <math|x<rsub|1>+x<rsub|2>=0> e <math|x<rsub|2>+x<rsub|3>=0>. Scelto <math|x<rsub|2>=-t>, le altre due componenti devono valere <math|t>. Dunque <math|ker F<rsub|A>=<math-up|span>((1,-1,1)<rsup|T>)>.

L'immagine è tutto <math|K<rsup|2>>, perché la prima e la terza colonna sono la base canonica.

<strong|Quando è iniettiva una funzione lineare?> Basta controllare se <math|ker F=<around|{|0|}>>. Se <math|F> è iniettiva, da <math|F(v)=0=F(0)> segue <math|v=0>.

Per l'altra direzione immaginiamo <math|F(u)=F(v)>: il problema è confrontare due vettori. La linearità permette di riunirli in uno solo, perché <math|F(u-v)=0>. Se il nucleo contiene soltanto zero, allora <math|u-v=0>, dunque <math|u=v>. Questa sottrazione sarà utile anche per i sistemi.

<section|Tutte le soluzioni: una particolare più il nucleo>

Torniamo a <math|x<rsub|1>+x<rsub|2>=s>, <math|x<rsub|2>+x<rsub|3>=t>. Abbiamo già una soluzione <math|ξ=(s,0,t)<rsup|T>>. Se aggiungiamo <math|h(1,-1,1)<rsup|T>>, le due somme non cambiano: aggiungiamo <math|h> a una componente e lo togliamo all'altra. Le soluzioni sono quindi

<\equation*>
x=(s,0,t)<rsup|T>+h(1,-1,1)<rsup|T>,<space|1em>h∈K.
</equation*>

Non è una coincidenza del nostro esempio. Supponiamo che <math|Aξ=b>. Per sapere che cosa può cambiare da una soluzione all'altra, prendiamo una seconda soluzione <math|x> e sottraiamo le equazioni:

<\equation*>
A(x-ξ)=Ax-Aξ=b-b=0.
</equation*>

La differenza appartiene al nucleo. Viceversa, se <math|Az=0>, allora <math|A(ξ+z)=b+0=b>. Abbiamo dimostrato entrambe le inclusioni e quindi

<\concetto|Struttura delle soluzioni>
Se <math|Ax=b> è compatibile e <math|ξ> è una sua soluzione, l'insieme di tutte le soluzioni è <math|ξ+ker F<rsub|A>>.
</concetto>

È un <strong|traslato> di un sottospazio, chiamato anche sottospazio affine. Se <math|b≠0>, non contiene l'origine e non è un sottospazio vettoriale. Se il nucleo è nullo, ogni sistema compatibile ha una sola soluzione. Per descrivere un sistema in generale ci servono quindi una soluzione particolare e una base del nucleo.

<figura|@IMG(traslato,0.95)|Nell'esempio geometrico il nucleo è una retta per l'origine. Le soluzioni del sistema non omogeneo si ottengono traslandola fino a una soluzione particolare <math|ξ>.>

<section|Rango e teorema rango–nullità>

La nostra applicazione parte da tre coordinate e ne produce due. Una direzione, <math|(1,-1,1)<rsup|T>>, viene mandata a zero; restano due direzioni indipendenti nell'immagine. Il teorema delle dimensioni rende preciso questo conteggio. Prima vediamo come scegliere le tre direzioni.

<subsection|Una base che separa il nucleo dal resto>

Lavoriamo ancora con <math|F(x<rsub|1>,x<rsub|2>,x<rsub|3>)=(x<rsub|1>+x<rsub|2>,x<rsub|2>+x<rsub|3>)>. Il nucleo ha base <math|k=(1,-1,1)>. Proviamo a completarla con <math|e<rsub|1>> ed <math|e<rsub|3>>.

Per controllare l'indipendenza scriviamo

<\equation*>
αk+βe<rsub|1>+γe<rsub|3>=(α+β,-α,α+γ)=0.
</equation*>

La seconda componente dà <math|α=0>; la prima e la terza danno poi <math|β=γ=0>. I tre vettori indipendenti formano una base di <math|K<rsup|3>>.

Le loro immagini sono <math|F(k)=0>, <math|F(e<rsub|1>)=(1,0)> e <math|F(e<rsub|3>)=(0,1)>. Il primo vettore scompare, gli altri due danno una base dell'immagine. Ecco perché in questo caso <math|3=1+2>.

Per esempio <math|(2,-1,3)=k+e<rsub|1>+2e<rsub|3>>. Applicando <math|F>, il termine <math|k> scompare e rimane <math|(1,2)>. La stessa scelta di base permette di leggere il comportamento di ogni vettore.

<subsection|Il conteggio in generale>

Il <strong|rango> di <math|A> è <math|<math-up|rank>(A)=dim<space|0.2em><math-up|Im> F<rsub|A>>: la dimensione dello span delle colonne. La <strong|nullità> è la dimensione del nucleo.

<\concetto|Teorema rango–nullità>
Se <math|F:V→W> è lineare e <math|V> ha dimensione finita, allora

<\equation*>
dim V=dim ker F+dim<space|0.2em><math-up|Im> F.
</equation*>
</concetto>

Per dimostrarlo vogliamo scegliere una base che faccia vedere separatamente ciò che scompare e ciò che resta.

Prendiamo una base <math|v<rsub|1>,…,v<rsub|k>> del nucleo e completiamola a una base <math|v<rsub|1>,…,v<rsub|n>> di <math|V>. Il completamento è possibile per il capitolo 6. Mostriamo che <math|F(v<rsub|k+1>),…,F(v<rsub|n>)> è una base dell'immagine.

<strong|Generazione.> Ogni elemento dell'immagine è <math|F(v)> per qualche <math|v>. Scriviamo <math|v=α<rsub|1>v<rsub|1>+⋯+α<rsub|n>v<rsub|n>>. Applicando <math|F>, i primi <math|k> termini diventano zero e rimane

<\equation*>
F(v)=α<rsub|k+1>F(v<rsub|k+1>)+⋯+α<rsub|n>F(v<rsub|n>).
</equation*>

<strong|Indipendenza.> Supponiamo che la combinazione a destra valga zero. Per linearità il vettore <math|u=α<rsub|k+1>v<rsub|k+1>+⋯+α<rsub|n>v<rsub|n>> appartiene al nucleo. Possiamo allora scriverlo anche come <math|u=β<rsub|1>v<rsub|1>+⋯+β<rsub|k>v<rsub|k>>.

Portando tutto allo stesso membro otteniamo una relazione nulla tra i vettori della base di <math|V>. L'indipendenza di quella base impone che tutti i coefficienti siano zero, compresi gli <math|α<rsub|k+1>,…,α<rsub|n>> che volevamo controllare.

La base dell'immagine ha dunque <math|n-k> elementi. Sommando le dimensioni otteniamo <math|k+(n-k)=n>, come richiesto. Il ragionamento comprende anche nucleo nullo o immagine nulla: il relativo blocco della base è vuoto.

<figura|@IMG(rango-nullita,0.9)|Scegliamo prima una base del nucleo, poi la completiamo. Le immagini dei vettori aggiunti formano una base dell'immagine. La scelta iniziale dei vettori del nucleo rende possibile questo conteggio.>

Per <math|A∈M<rsub|m,n>(K)> il dominio è <math|K<rsup|n>>, quindi <math|dim ker F<rsub|A>=n-<math-up|rank>(A)>. Conta il numero di <em|incognite>, cioè le colonne, non quello delle equazioni. Nei prossimi capitoli vedremo come calcolare il rango e una base del nucleo con Gauss.

<\verifica|8>
<strong|8.1.> Una matrice reale di dimensioni <math|3×5> ha rango 3. Qual è la dimensione del nucleo? Il sistema <math|Ax=b> è compatibile per ogni <math|b∈ℝ<rsup|3>>? L'applicazione associata è iniettiva?

<strong|8.2.> Sia <math|A=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|4>|<cell|5>|<cell|6>>|<row|<cell|7>|<cell|8>|<cell|9>>>>>>. Considera <math|A> come matrice reale. Per il nucleo, prova a sottrarre quattro volte la prima equazione dalla seconda; osserva poi che la terza riga è due volte la seconda meno la prima. Trova nucleo e immagine, verificando che le loro dimensioni sommino a 3. Sapendo che <math|ξ=(1,0,0)<rsup|T>> risolve <math|Ax=(1,4,7)<rsup|T>>, descrivi tutte le soluzioni.
</verifica>
