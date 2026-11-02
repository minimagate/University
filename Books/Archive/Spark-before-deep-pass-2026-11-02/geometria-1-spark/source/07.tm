<chapter|Somme, somma diretta e formula di Grassmann>

L'unione di due rette distinte per l'origine non contiene tutte le somme dei loro vettori. Se vogliamo costruire un sottospazio che raccolga entrambe le direzioni, dobbiamo aggiungere quelle somme. La nuova domanda è: quanto cresce lo spazio, e quando possiamo distinguere in modo unico i due contributi?

<section|Somma di sottospazi e somma diretta>

Per sottospazi <math|U,W⊆V> definiamo

<\equation*>
U+W={u+w:u∈U,w∈W}.
</equation*>

Questa è la <strong|somma dei sottospazi>. Contiene zero, scritto <math|0+0>. Se <math|x=u<rsub|1>+w<rsub|1>> e <math|y=u<rsub|2>+w<rsub|2>>, allora <math|x+y=(u<rsub|1>+u<rsub|2>)+(w<rsub|1>+w<rsub|2>)> è ancora nella somma. Anche <math|αx=αu<rsub|1>+αw<rsub|1>> vi appartiene. È quindi un sottospazio.

Contiene <math|U> perché <math|u=u+0>, e contiene <math|W> perché <math|w=0+w>. Qualunque sottospazio che contiene entrambi contiene ogni <math|u+w>. Dunque <math|U+W> è il più piccolo sottospazio che li contiene: <math|U+W=<math-up|span>(U∪W)>. Unire generatori di <math|U> e <math|W> fornisce generatori della somma; può però introdurre dipendenze.

Per esempio, i due assi nel piano hanno solo zero in comune. Ogni <math|(x,y)> si scrive <math|(x,0)+(0,y)>, in un solo modo. Se invece <math|U=W> è l'asse orizzontale, il vettore <math|(1,0)> si scrive sia <math|(1,0)+(0,0)> sia <math|(2,0)+(-1,0)>. Una direzione comune permette di spostare un contributo da un addendo all'altro.

<\concetto|Somma diretta>
La somma <math|U+W> si chiama diretta, e si indica <math|U⊕W>, quando <math|U∩W={0}>. Ciò equivale a dire che ogni vettore della somma ha un'unica decomposizione <math|u+w>, con <math|u∈U> e <math|w∈W>.
</concetto>

Dimostriamo l'equivalenza. Se <math|u+w=u'+w'>, separiamo i contributi dei due sottospazi:

<\equation*>
u-u'=w'-w.
</equation*>

Il vettore a sinistra appartiene a <math|U>, quello a destra a <math|W>. Essendo uguali, sono un vettore dell'intersezione. Se l'intersezione è zero, entrambi sono zero: <math|u=u'> e <math|w=w'>. Viceversa, un vettore non nullo <math|t∈U∩W> darebbe le due decomposizioni diverse <math|t=t+0=0+t>. L'unicità impedisce che esista.

Più precisamente, da una decomposizione <math|z=u+w> e da un qualsiasi <math|t∈U∩W> otteniamo <math|z=(u+t)+(w-t)>. Tutte le decomposizioni si ottengono così, perché la differenza di due primi addendi è nell'intersezione. Su un campo infinito un'intersezione non nulla produce quindi infinite decomposizioni.

<figura|@IMG(somma-diretta)|Un piano e una retta non contenuta nel piano in <math|ℝ<rsup|3>> sono in somma diretta. Due piani distinti hanno una retta comune: la loro somma è tutto lo spazio, ma la decomposizione non è unica.>

<section|Basi della somma diretta e supplementari>

Supponiamo in questa sezione che i sottospazi abbiano dimensione finita. Se <math|U∩W={0}>, uniamo una base <math|u<rsub|1>,…,u<rsub|r>> di <math|U> e una base <math|w<rsub|1>,…,w<rsub|s>> di <math|W>. La famiglia genera la somma: sviluppiamo separatamente i due addendi di <math|z=u+w> e poi sommiamo.

Per l'indipendenza, da <math|<big|sum>α<rsub|i>u<rsub|i>+<big|sum>β<rsub|j>w<rsub|j>=0> ricaviamo <math|<big|sum>α<rsub|i>u<rsub|i>=-<big|sum>β<rsub|j>w<rsub|j>>. Il vettore comune appartiene a <math|U∩W={0}>. Le due somme sono quindi nulle, e l'indipendenza di ciascuna base impone tutti i coefficienti zero. È una base di <math|U⊕W>, perciò

<\equation*>
dim(U⊕W)=dim U+dim W.
</equation*>

Leggiamo lo stesso fatto al contrario. Se dividiamo una famiglia indipendente in due gruppi e chiamiamo <math|U,W> i loro span, ogni combinazione si separa nei due gruppi, quindi lo span totale è <math|U+W>. Se un vettore fosse in entrambi gli span, avremmo due espressioni, una per gruppo. Sottraendole otterremmo una relazione nella famiglia indipendente: tutti i coefficienti sarebbero zero. Dunque l'intersezione è <math|{0}> e la somma è diretta.

Un sottospazio <math|W> si dice <strong|supplementare> di <math|U> in <math|V> quando <math|V=U⊕W>. In dimensione finita ne costruiamo uno completando una base di <math|U> a una base di <math|V>: i vettori aggiunti generano <math|W>, e il risultato appena dimostrato assicura la somma diretta. Il supplementare non è in generale unico. All'asse orizzontale di <math|ℝ<rsup|2>> possiamo aggiungere l'asse verticale oppure qualunque retta per l'origine diversa dall'asse orizzontale.

<section|Formula di Grassmann: contare la parte comune una volta>

Prendiamo <math|U={(x,y,0)}> e <math|W={(x,0,z)}> in <math|ℝ<rsup|3>>. Ciascuno ha dimensione 2, ma la somma ha dimensione 3, non 4. Entrambi contengono l'asse <math|x>. Unendo le basi <math|(e<rsub|1>,e<rsub|2>)> ed <math|(e<rsub|1>,e<rsub|3>)>, la direzione <math|e<rsub|1>> si conta due volte. Dobbiamo conservarla una sola volta.

<\concetto|Formula di Grassmann>
Per due sottospazi di dimensione finita vale

<\equation*>
dim(U+W)=dim U+dim W-dim(U∩W).
</equation*>
</concetto>

La correzione sottrae una volta le dimensioni comuni. Per provarla non basta l'analogia con gli insiemi finiti: dobbiamo costruire una base della somma senza ridondanze.

Poniamo <math|dim U=n>, <math|dim W=p>, <math|dim(U∩W)=q>. Partiamo da una base <math|v<rsub|1>,…,v<rsub|q>> dell'intersezione e completiamola due volte: a una base <math|(v<rsub|1>,…,v<rsub|q>,u<rsub|q+1>,…,u<rsub|n>)> di <math|U>, e a una base <math|(v<rsub|1>,…,v<rsub|q>,w<rsub|q+1>,…,w<rsub|p>)> di <math|W>. Il completamento è disponibile dal capitolo 6.

Prendiamo ora una sola copia dei vettori comuni e tutti quelli aggiunti:

<\equation*>
B=(v<rsub|1>,…,v<rsub|q>,u<rsub|q+1>,…,u<rsub|n>,w<rsub|q+1>,…,w<rsub|p>).
</equation*>

La famiglia genera <math|U+W>, perché ogni <math|z=u+w> si sviluppa nelle due basi: i coefficienti dei <math|v<rsub|i>> si sommano, gli altri rimangono separati.

Il passo delicato è l'indipendenza. Supponiamo

<\equation*>
<big|sum><rsub|i=1><rsup|q>γ<rsub|i>v<rsub|i>+<big|sum><rsub|i=q+1><rsup|n>α<rsub|i>u<rsub|i>+<big|sum><rsub|j=q+1><rsup|p>β<rsub|j>w<rsub|j>=0.
</equation*>

Chiamiamo <math|t> l'ultima somma. È in <math|W>; dall'uguaglianza è anche l'opposto delle prime due somme, quindi è in <math|U>. Dunque <math|t∈U∩W>. Possiamo scriverlo <math|t=<big|sum><rsub|i=1><rsup|q>δ<rsub|i>v<rsub|i>>. Confrontiamo questa scrittura con quella iniziale di <math|t>:

<\equation*>
<big|sum><rsub|i=1><rsup|q>δ<rsub|i>v<rsub|i>-<big|sum><rsub|j=q+1><rsup|p>β<rsub|j>w<rsub|j>=0.
</equation*>

È una relazione fra vettori della base di <math|W>. Perciò tutti i <math|β<rsub|j>> sono zero, e anche tutti i <math|δ<rsub|i>>. Nell'uguaglianza originale restano soltanto i vettori della base di <math|U>: anche <math|γ<rsub|i>> e <math|α<rsub|i>> sono zero. Abbiamo provato l'indipendenza di <math|B>.

La base costruita ha <math|q+(n-q)+(p-q)=n+p-q> vettori: è la formula cercata. Se un blocco è vuoto, le sue somme valgono zero e la dimostrazione resta valida.

<figura|@IMG(grassmann)|Partiamo dalla base dell'intersezione e la completiamo verso i due sottospazi. I <math|q> vettori comuni compaiono una sola volta nella base della somma.>

Per due piani distinti in <math|ℝ<rsup|3>>, l'intersezione ha dimensione almeno 1: Grassmann e <math|dim(U+W)≤3> danno <math|dim(U∩W)≥1>. Non può avere dimensione 2, perché allora coinciderebbe con entrambi i piani. È quindi una retta e la somma ha dimensione <math|2+2-1=3>. Per un piano e una retta non contenuta nel piano l'intersezione è invece zero: la somma ha dimensione <math|2+1=3> ed è diretta.

<section|Matrici simmetriche e antisimmetriche>

La <strong|trasposta> di <math|M=(m<rsub|ij>)∈M<rsub|m,n>(K)> è la matrice <math|M<rsup|T>∈M<rsub|n,m>(K)> con <math|(M<rsup|T>)<rsub|ij>=m<rsub|ji>>: le righe diventano colonne. Per matrici quadrate, <math|M> è <strong|simmetrica> se <math|M<rsup|T>=M> e <strong|antisimmetrica> se <math|M<rsup|T>=-M>. Poiché la trasposizione rispetta somme e multipli, le matrici dei due tipi formano sottospazi, che indichiamo <math|S<rsub|n>> e <math|A<rsub|n>>.

Lavoriamo su un campo in cui <math|2≠0>, per esempio <math|ℝ> o <math|ℂ>. Se una matrice è sia simmetrica sia antisimmetrica, vale <math|M=-M>, quindi <math|2M=0> e <math|M=0>. L'intersezione dei due sottospazi è nulla. Sulla diagonale di un'antisimmetrica, allo stesso modo, <math|m<rsub|ii>=-m<rsub|ii>> impone <math|m<rsub|ii>=0>.

Resta da scomporre una matrice qualsiasi. L'espressione <math|M+M<rsup|T>> è simmetrica; <math|M-M<rsup|T>> è antisimmetrica. Sommandole troviamo <math|2M>, quindi dividiamo ciascuna per 2:

<\equation*>
M=<frac|M+M<rsup|T>|2>+<frac|M-M<rsup|T>|2>.
</equation*>

La trasposta del primo addendo è <math|(M<rsup|T>+M)/2>, cioè il primo addendo stesso. Quella del secondo è <math|(M<rsup|T>-M)/2>, il suo opposto. Questo dimostra <math|M<rsub|n>(K)=S<rsub|n>⊕A<rsub|n>>. La scomposizione è unica per la proprietà della somma diretta.

Per esempio, per <math|M=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|4>|<cell|3>>>>>> otteniamo

<\equation*>
S=<matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|3>|<cell|3>>>>>,<space|2em>A=<matrix|<tformat|<table|<row|<cell|0>|<cell|-1>>|<row|<cell|1>|<cell|0>>>>>.
</equation*>

Infatti, fuori dalla diagonale la media <math|(2+4)/2=3> fornisce la parte simmetrica; lo scarto <math|(2-4)/2=-1> e il suo opposto forniscono la parte antisimmetrica. La somma ricostruisce le quattro entrate di <math|M>.

<\attenzione|Perché l'ipotesi sul campo è necessaria>
Se <math|2=0> nel campo, non possiamo usare <math|1/2>. Inoltre <math|-M=M>, così simmetrica e antisimmetrica significano la stessa cosa. L'intersezione non è più necessariamente nulla: la conclusione sulla somma diretta richiede proprio <math|2≠0>.
</attenzione>

<\verifica|7>
<strong|7.1.> Trova un supplementare di <math|U=<math-up|span>((1,1))> in <math|ℝ<rsup|2>> e scrivi <math|(3,1)> come somma dei due contributi. Spiega perché la scrittura è unica.

<strong|7.2.> In <math|ℝ<rsup|4>> due sottospazi <math|U,W> hanno entrambi dimensione 3. Quali valori può avere <math|dim(U∩W)>? Per ogni valore possibile fornisci un esempio usando vettori della base canonica.
</verifica>
