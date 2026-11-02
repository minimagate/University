<chapter|Rango, Rouché–Capelli e matrici elementari>

<\inbreve>
Il metodo di Gauss cambia continuamente le righe di una matrice, eppure qualcosa resta sempre uguale, ed è quel qualcosa che ci interessa. In quest'ultimo capitolo scopriamo che il rango si legge contando i pivot, e che con lui si decide se un sistema ha soluzioni, quante ne ha e se una matrice si può invertire. Alla fine vedremo che ogni mossa di Gauss è a sua volta una moltiplicazione per una matrice, e questo chiuderà il cerchio fra calcoli e struttura.
</inbreve>

<section|Rouché–Capelli: quando esistono soluzioni>

Prendiamo due colonne che generano un piano e aggiungiamone una terza. Se la nuova colonna sta nel piano non porta direzioni nuove, e lo span resta lo stesso. Se invece esce dal piano, lo span cresce. Questa osservazione risponde alla domanda che ci accompagna da due capitoli, cioè se si possa costruire <math|b> con le colonne di <math|A>.

Le colonne <math|(1,0,0)<rsup|T>> e <math|(0,1,0)<rsup|T>>, per esempio, generano il piano <math|z=0>. Se aggiungiamo <math|b=(2,3,0)<rsup|T>> il rango resta 2, e infatti i coefficienti 2 e 3 risolvono il sistema. Se aggiungiamo <math|b=(0,0,1)<rsup|T>> il rango sale a 3, e nessuna combinazione delle colonne di partenza può produrre una terza componente uguale a 1.

<\concetto|Teorema di Rouché–Capelli>
Per <math|A∈M<rsub|m,n>(K)> e <math|b∈K<rsup|m>>, il sistema <math|Ax=b> è compatibile se e solo se

<\equation*>
<math-up|rank>(A)=<math-up|rank>(A\|b).
</equation*>
</concetto>

Chiamiamo <math|U> lo span delle colonne di <math|A> e <math|U'> lo span delle colonne di <math|(A\|b)>. Poiché <math|U'> ha una colonna in più, vale sempre <math|U⊆U'>. Se il sistema è compatibile, <math|b> sta in <math|U>. In ogni combinazione di colonne di <math|(A\|b)> possiamo allora sostituire <math|b> con la sua espressione in termini delle colonne di <math|A>, e otteniamo una combinazione delle sole colonne di <math|A>. Quindi <math|U'=U> e i due ranghi coincidono.

Viceversa, supponiamo che i ranghi siano uguali. Allora <math|U> e <math|U'> sono sottospazi della stessa dimensione finita, uno contenuto nell'altro, e il capitolo 6 ci dice che in questo caso coincidono. In particolare <math|b>, che sta in <math|U'>, sta anche in <math|U>, cioè è una combinazione delle colonne di <math|A>, e il sistema è compatibile.

<figura|@IMG(rouche,0.9)|Il sistema è compatibile quando aggiungere <math|b> lascia invariata la dimensione dello spazio delle colonne. Nel caso illustrato il rango resta 2 se <math|b> è nel piano; sale a 3 se ne esce.>

Il teorema ci dice se le soluzioni esistono, ma non quante sono. Per questo serve il nucleo. Se il rango comune è <math|r>, il nucleo ha dimensione <math|n-r>, e un sistema compatibile ha quindi <math|n-r> parametri liberi. In pratica procediamo in due tempi. Prima confrontiamo i due ranghi per sapere se ci sono soluzioni, poi sottraiamo il rango dal numero delle incognite per sapere quante dimensioni ha la famiglia delle soluzioni.

<section|Perché il rango è il numero di pivot>

Il teorema è utile solo se sappiamo calcolare il rango, e Gauss ce lo permette. Cominciamo da un esempio. Con le mosse <math|R<rsub|2>←R<rsub|2>-2R<rsub|1>>, <math|R<rsub|3>←R<rsub|3>-R<rsub|1>> e poi <math|R<rsub|3>←R<rsub|3>-R<rsub|2>> passiamo da <math|A> alla forma a scala <math|S>:

<\equation*>
A=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|2>|<cell|5>|<cell|7>>|<row|<cell|1>|<cell|3>|<cell|4>>>>>,<space|2em>S=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>.
</equation*>

In <math|S> i pivot stanno nelle colonne 1 e 2. Le colonne <math|S<rsub|1>=(1,0,0)<rsup|T>> e <math|S<rsub|2>=(2,1,0)<rsup|T>> sono indipendenti, perché in una relazione <math|αS<rsub|1>+βS<rsub|2>=0> la seconda componente dà <math|β=0> e poi la prima dà <math|α=0>. La terza colonna è <math|S<rsub|3>=S<rsub|1>+S<rsub|2>>, quindi le prime due bastano a generare tutte le colonne. Il rango di <math|S> è 2, come il numero dei suoi pivot.

<subsection|Perché le colonne pivot sono indipendenti>

Vediamo che lo stesso accade per ogni matrice a scala <math|S>, con <math|k> righe non nulle e pivot nelle colonne <math|j<rsub|1>‹⋯‹j<rsub|k>>. Come nell'esempio, leggiamo dal basso. Supponiamo che una combinazione delle colonne pivot valga zero e guardiamo la riga <math|k>. Lì le prime <math|k-1> colonne pivot hanno uno zero, mentre l'ultima ha il pivot <math|p<rsub|k>≠0>, e quindi il coefficiente dell'ultima colonna deve essere zero. Nella riga <math|k-1> resta allora soltanto il penultimo coefficiente moltiplicato per il suo pivot, che quindi è anch'esso zero. Risalendo riga per riga annulliamo tutti i coefficienti.

<subsection|Perché bastano e perché il rango non cambia>

Le colonne pivot sono anche abbastanza. Tutte le colonne di <math|S> hanno zeri dalla componente <math|k+1> in poi, quindi stanno nel sottospazio <math|<math-up|span>(e<rsub|1>,…,e<rsub|k>)>, che ha dimensione <math|k>. Le <math|k> colonne pivot sono indipendenti in questo spazio e quindi ne formano una base, e in particolare generano tutte le altre colonne. Abbiamo dimostrato che <math|<math-up|rank>(S)=k>. Se <math|S=0>, lo span delle colonne è nullo e il risultato vale con <math|k=0>.

Resta il punto più delicato. Perché la matrice di partenza <math|A> ha lo stesso rango di <math|S>? Non possiamo dire che i due span delle colonne coincidano, perché abbiamo visto che le operazioni di riga possono cambiarli. C'è però qualcosa che sappiamo restare uguale, cioè le soluzioni del sistema omogeneo. Se Gauss porta <math|A> in <math|S>, allora <math|ker F<rsub|A>=ker F<rsub|S>>, e il teorema rango–nullità dà

<\equation*>
n-<math-up|rank>(A)=dim ker F<rsub|A>=dim ker F<rsub|S>=n-<math-up|rank>(S).
</equation*>

Quindi i due ranghi coincidono, e possiamo concludere che <strong|il rango di una matrice è il numero dei pivot di una qualsiasi sua forma a scala>. Nella dimostrazione non abbiamo usato il fatto che righe e colonne abbiano lo stesso rango, un fatto che dimostriamo adesso.

<section|Rango per righe e rango per colonne>

In una matrice <math|m×n> le righe sono vettori di <math|K<rsup|n>> e le colonne sono vettori di <math|K<rsup|m>>. I loro span vivono quindi in spazi diversi, ed è sorprendente che abbiano sempre la stessa dimensione.

Guardiamo di nuovo la matrice <math|S>. Le sue righe non nulle sono <math|r<rsub|1>=(1,2,3)> e <math|r<rsub|2>=(0,1,1)>. Se <math|αr<rsub|1>+βr<rsub|2>=0>, la prima componente dà <math|α=0> e poi la seconda dà <math|β=0>. Per le colonne avevamo letto dal basso, per le righe leggiamo da sinistra, e in entrambi i casi troviamo due vettori indipendenti.

Lo stesso accade in ogni forma a scala <math|S>. Sappiamo già che lo span delle colonne ha dimensione <math|k>. Anche le <math|k> righe non nulle sono indipendenti. In una loro combinazione nulla, la colonna del primo pivot obbliga il coefficiente della prima riga a essere zero, perché sotto quel pivot ci sono solo zeri. Tolto questo contributo, nella colonna del secondo pivot deve annullarsi il secondo coefficiente, e proseguendo così si annullano tutti. Le righe non nulle generano ovviamente lo span delle righe, quindi anche il rango per righe di <math|S> è <math|k>.

Ora torniamo ad <math|A>. Le operazioni di riga non cambiano lo span delle righe, come abbiamo visto nel capitolo 9, e non cambiano il rango per colonne, come abbiamo appena dimostrato con il nucleo. Per <math|A> entrambi i ranghi valgono quindi ancora <math|k>, e l'uguaglianza è dimostrata.

Ne seguono due conseguenze utili. La prima è che <math|<math-up|rank>(A)≤min(m,n)>, perché il rango per colonne non supera la dimensione <math|m> dello spazio in cui vivono le colonne, e il rango per righe non supera <math|n>. La seconda è che <math|<math-up|rank>(A<rsup|T>)=<math-up|rank>(A)>, perché trasporre scambia righe e colonne.

<subsection|Quali colonne scegliere nella matrice iniziale?>

Spesso vogliamo una base dello span delle colonne fatta di colonne della matrice originale, e non della sua forma a scala. Nel nostro esempio vale <math|A<rsub|3>=A<rsub|1>+A<rsub|2>>, esattamente come per <math|S>. Le colonne <math|A<rsub|1>=(1,2,1)<rsup|T>> e <math|A<rsub|2>=(2,5,3)<rsup|T>> sono indipendenti, perché le prime due componenti di una relazione nulla danno <math|α+2β=0> e <math|2α+5β=0>, da cui <math|β=0> e <math|α=0>. Formano quindi una base dello span delle colonne di <math|A>.

Abbiamo scelto le colonne 1 e 2 guardando <math|S>, e poi abbiamo preso le colonne con gli stessi indici in <math|A>. Il procedimento funziona sempre, cioè gli indici delle colonne pivot della forma a scala individuano una base fra le colonne <em|originali>. Il motivo è che per ogni colonna di coefficienti <math|c> vale <math|Ac=0> se e solo se <math|Sc=0>, perché i due sistemi omogenei hanno le stesse soluzioni. Ogni relazione lineare fra le colonne di <math|A> vale quindi anche fra le colonne di <math|S> con gli stessi coefficienti, e viceversa. In <math|S> le colonne pivot sono indipendenti e ogni altra colonna è una loro combinazione, e queste stesse relazioni valgono fra le colonne di <math|A>.

<section|Matrici elementari: scrivere le mosse come prodotti>

Le operazioni di riga si possono scrivere come moltiplicazioni. Quando moltiplichiamo una matrice <math|A> a sinistra per una matrice <math|P>, la riga <math|i> di <math|PA> è la combinazione delle righe di <math|A> con i coefficienti scritti nella riga <math|i> di <math|P>. Per esempio <math|e<rsub|i><rsup|T>A> è proprio la riga <math|i> di <math|A>.

La matrice identità <math|I<rsub|m>> ha 1 sulla diagonale e zero altrove, e lascia ferme tutte le righe. Se la modifichiamo in una o due posizioni otteniamo le tre <strong|matrici elementari>, una per ciascuna operazione di riga:

<\itemize>

<item><math|P<rsub|ij>> è l'identità con le righe <math|i,j> scambiate. Il prodotto <math|P<rsub|ij>A> scambia quelle righe; ripetendo lo scambio si torna indietro, quindi <math|P<rsub|ij><rsup|-1>=P<rsub|ij>>.

<item><math|D<rsub|i>(λ)> è l'identità con <math|λ≠0> al posto dell'1 diagonale in posizione <math|i>. Il prodotto moltiplica soltanto la riga <math|i> per <math|λ>. L'inversa è <math|D<rsub|i>(λ<rsup|-1>)>.

<item><math|T<rsub|ij>(λ)=I<rsub|m>+λE<rsub|ij>>, per <math|i≠j>, dove <math|E<rsub|ij>> ha un solo 1 in posizione <math|(i,j)>. Il prodotto sostituisce <math|R<rsub|i>> con <math|R<rsub|i>+λR<rsub|j>>. L'inversa è <math|T<rsub|ij>(-λ)>.
</itemize>

Scriviamo <math|T<rsub|ij>(λ)> per non confondere la matrice che esegue la mossa con la matrice <math|E<rsub|ij>> della base canonica. Ecco un esempio:

<\equation*>
<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-4>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|4>|<cell|5>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|-3>>>>>.
</equation*>

La seconda riga è diventata la seconda meno quattro volte la prima, cioè esattamente un passo di Gauss. Se nella matrice a sinistra mettiamo 4 al posto di <math|-4>, otteniamo la mossa inversa.

Le matrici <math|D<rsub|i>(λ)> sono casi particolari di matrici diagonali. Una matrice diagonale è invertibile quando tutti i suoi elementi diagonali sono non nulli, perché basta invertirli uno per uno. Se invece un elemento diagonale è zero, il vettore canonico corrispondente viene mandato a zero e la matrice non può essere invertibile.

<section|Invertibilità e gruppo lineare generale>

Una matrice quadrata <math|A> si dice <strong|invertibile> se esiste una matrice <math|B> con <math|AB=BA=I>, e in questo caso scriviamo <math|B=A<rsup|-1>>. L'inversa, se c'è, è una sola, perché se <math|B> e <math|C> sono entrambe inverse di <math|A> allora <math|B=B(AC)=(BA)C=C>.

Le matrici invertibili di ordine <math|m> formano il <strong|gruppo lineare generale> <math|<math-up|GL><rsub|m>(K)>. Il prodotto è associativo e ha l'identità come elemento neutro. Inoltre il prodotto di due invertibili è ancora invertibile, con

<\equation*>
(PQ)<rsup|-1>=Q<rsup|-1>P<rsup|-1>.
</equation*>

Infatti <math|(PQ)(Q<rsup|-1>P<rsup|-1>)=P(QQ<rsup|-1>)P<rsup|-1>=PP<rsup|-1>=I>, e lo stesso conto nell'altro ordine dà ancora <math|I>. L'ordine dei fattori si inverte, perché per annullare due mosse dobbiamo disfare per prima l'ultima. Per <math|m=1> il gruppo è semplicemente l'insieme degli scalari non nulli. Per <math|m≥2> il prodotto non è commutativo, come mostrano le matrici <math|P> e <math|Q> del capitolo 8, completate con l'identità sulle eventuali altre coordinate.

Ora possiamo tradurre Gauss in un prodotto. Se eseguiamo prima la mossa <math|E<rsub|1>>, poi <math|E<rsub|2>> e così via fino a <math|E<rsub|r>>, arriviamo a

<\equation*>
S=E<rsub|r>⋯E<rsub|2>E<rsub|1>A.
</equation*>

La prima mossa è il fattore più vicino ad <math|A>, e il prodotto di tutte le matrici elementari è invertibile perché ciascun fattore lo è.

<strong|Criterio di invertibilità.> Per una matrice quadrata di ordine <math|m>, essere invertibile equivale ad avere rango <math|m>.

Se <math|A> è invertibile, da <math|Ax=0> segue <math|x=A<rsup|-1>0=0>. Il nucleo è nullo, e per rango–nullità il rango è <math|m>.

Per l'altra direzione, supponiamo che il rango sia <math|m>. Allora la forma a scala ha un pivot in ogni riga e in ogni colonna. Possiamo dividere ogni riga per il suo pivot e poi, risalendo dal basso, annullare anche le entrate che stanno sopra i pivot, fino ad arrivare a <math|I<rsub|m>>. In termini di prodotti abbiamo trovato un prodotto invertibile <math|E> di matrici elementari con <math|EA=I<rsub|m>>. Moltiplicando a sinistra per <math|E<rsup|-1>> otteniamo <math|A=E<rsup|-1>>, che è invertibile, con inversa <math|A<rsup|-1>=E>.

Lo stesso ragionamento dice qualcosa di più, cioè che <strong|ogni matrice invertibile è prodotto di matrici elementari>. Se <math|E<rsub|r>⋯E<rsub|1>A=I>, allora <math|A=E<rsub|1><rsup|-1>⋯E<rsub|r><rsup|-1>>, e le inverse delle elementari sono ancora elementari. Qui «generare» significa ottenere mediante <em|prodotti>, e non mediante combinazioni lineari.

<subsection|Per proseguire: equivalenza e forma completamente ridotta>

Due matrici <math|A,B∈M<rsub|m,n>(K)> si dicono <strong|equivalenti a sinistra> se <math|B=PA> per qualche matrice invertibile <math|P>. Si tratta di una vera relazione di equivalenza. Ogni matrice è equivalente a sé stessa tramite l'identità, da <math|B=PA> segue <math|A=P<rsup|-1>B>, e da <math|B=PA> e <math|C=QB> segue <math|C=(QP)A>. Poiché le matrici invertibili sono prodotti di elementari, due matrici sono equivalenti a sinistra esattamente quando si passa dall'una all'altra con operazioni di riga.

Una matrice a scala si dice <strong|completamente ridotta> se ogni pivot vale 1 e tutte le altre entrate della sua colonna sono nulle. Per ottenerla basta dividere ogni riga per il suo pivot e annullare le entrate sopra i pivot risalendo dal basso, quindi una forma completamente ridotta esiste sempre. In ogni classe di equivalenza a sinistra questa forma è anche unica, un fatto che accettiamo senza dimostrazione.

In modo simile si definisce l'<strong|equivalenza a destra>, con <math|B=AQ> e <math|Q> invertibile. Moltiplicare a destra corrisponde alle tre mosse sulle colonne, cioè scambiare due colonne, moltiplicarne una per uno scalare non nullo e aggiungere a una colonna un multiplo di un'altra. Per esempio <math|A(I+λE<rsub|ij>)> aggiunge alla colonna <math|j> la colonna <math|i> moltiplicata per <math|λ>. Le tre proprietà di relazione di equivalenza si verificano come nel caso a sinistra. Quando risolviamo un sistema usiamo però sempre mosse di <em|riga> sulla matrice completa, perché le mosse di colonna mescolerebbero le incognite e richiederebbero un cambiamento di variabili.

<\verifica|10>
<strong|10.1.> Per quali <math|h∈ℝ> il sistema <math|x+y=1>, <math|2x+2y=h> è compatibile? Spiega con Rouché–Capelli e descrivi tutte le soluzioni nei casi compatibili.

<strong|10.2.> Riduci la matrice reale <math|A=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|2>>>>>> a identità. Scrivi le due matrici elementari delle mosse e ricava <math|A<rsup|-1>>. Verifica il prodotto in entrambi gli ordini.
</verifica>
