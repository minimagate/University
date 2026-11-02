<chapter|Somme, somma diretta e formula di Grassmann>

<\inbreve>
Abbiamo visto che l'unione di due sottospazi di solito non è un sottospazio, perché le somme dei loro vettori ne escono. Qui prendiamo sul serio quelle somme e costruiamo il sottospazio che esse formano. Ci chiederemo quando ogni vettore si scompone in un solo modo, e scopriremo una formula che conta le dimensioni come si contano gli elementi di due insiemi, togliendo una volta la parte in comune.
</inbreve>

<section|Somma di sottospazi e somma diretta>

Con l'asse orizzontale e quello verticale del piano possiamo ottenere <math|(3,2)>, sommando <math|(3,0)> e <math|(0,2)>. Eppure <math|(3,2)> non sta in nessuno dei due assi, e quindi non sta nella loro unione. Se vogliamo un sottospazio che contenga entrambi gli assi, dobbiamo metterci dentro anche tutte queste somme.

Per due sottospazi <math|U,W⊆V> definiamo allora la <strong|somma dei sottospazi>

<\equation*>
U+W={u+w:u∈U,w∈W}.
</equation*>

Si tratta davvero di un sottospazio. Contiene lo zero, che si scrive come <math|0+0>. Se <math|x=u<rsub|1>+w<rsub|1>> e <math|y=u<rsub|2>+w<rsub|2>> stanno nella somma, anche <math|x+y=(u<rsub|1>+u<rsub|2>)+(w<rsub|1>+w<rsub|2>)> ci sta, perché i due addendi raggruppati appartengono ancora a <math|U> e a <math|W>. Lo stesso accade per <math|αx=αu<rsub|1>+αw<rsub|1>>.

La somma contiene <math|U>, perché ogni <math|u> si scrive come <math|u+0>, e contiene <math|W> per la stessa ragione. D'altra parte, ogni sottospazio che contiene sia <math|U> sia <math|W> deve contenere anche tutte le somme <math|u+w>. Quindi <math|U+W> è il più piccolo sottospazio che contiene entrambi, cioè <math|U+W=<math-up|span>(U∪W)>. In pratica, se mettiamo insieme dei generatori di <math|U> e dei generatori di <math|W> otteniamo dei generatori della somma, anche se fra loro possono comparire delle dipendenze.

Ora guardiamo all'unicità della scomposizione. I due assi del piano hanno in comune soltanto lo zero, e ogni <math|(x,y)> si scrive come <math|(x,0)+(0,y)> in un modo solo. Se invece prendiamo due volte l'asse orizzontale, cioè <math|U=W>, il vettore <math|(1,0)> si scrive sia come <math|(1,0)+(0,0)> sia come <math|(2,0)+(-1,0)>. Una direzione in comune permette di spostare una parte del contributo da un addendo all'altro, e così la scomposizione smette di essere unica.

<\concetto|Somma diretta>
La somma <math|U+W> si chiama diretta, e si indica <math|U⊕W>, quando <math|U∩W={0}>. Ciò equivale a dire che ogni vettore della somma ha un'unica decomposizione <math|u+w>, con <math|u∈U> e <math|w∈W>.
</concetto>

Vediamo perché le due condizioni sono equivalenti. Supponiamo che un vettore abbia due scomposizioni, <math|u+w=u'+w'>, e separiamo i contributi dei due sottospazi:

<\equation*>
u-u'=w'-w.
</equation*>

Il vettore a sinistra sta in <math|U> e quello a destra sta in <math|W>. Poiché sono uguali, si tratta di un vettore dell'intersezione. Se l'intersezione contiene soltanto lo zero, entrambi i membri sono nulli, e quindi <math|u=u'> e <math|w=w'>. Viceversa, se nell'intersezione ci fosse un vettore <math|t≠0>, avremmo le due scomposizioni diverse <math|t=t+0=0+t>, e l'unicità fallirebbe.

Il ragionamento dice anche qualcosa di più preciso. Data una scomposizione <math|z=u+w> e un qualsiasi <math|t∈U∩W>, anche <math|z=(u+t)+(w-t)> è una scomposizione, e tutte le scomposizioni si ottengono in questo modo, perché la differenza fra due primi addendi sta sempre nell'intersezione. Su un campo infinito, quindi, un'intersezione non nulla produce infinite scomposizioni.

<figura|@IMG(somma-diretta)|Un piano e una retta non contenuta nel piano in <math|ℝ<rsup|3>> sono in somma diretta. Due piani distinti hanno una retta comune: la loro somma è tutto lo spazio, ma la decomposizione non è unica.>

<section|Basi della somma diretta e supplementari>

In questa sezione supponiamo che i sottospazi abbiano dimensione finita, e cerchiamo una base della somma diretta. Se <math|U∩W={0}>, l'idea più naturale funziona: prendiamo una base <math|u<rsub|1>,…,u<rsub|r>> di <math|U> e una base <math|w<rsub|1>,…,w<rsub|s>> di <math|W> e le mettiamo insieme. La famiglia ottenuta genera la somma, perché in <math|z=u+w> possiamo sviluppare separatamente i due addendi nelle rispettive basi.

Per l'indipendenza partiamo da una relazione <math|<big|sum>α<rsub|i>u<rsub|i>+<big|sum>β<rsub|j>w<rsub|j>=0> e la riscriviamo come <math|<big|sum>α<rsub|i>u<rsub|i>=-<big|sum>β<rsub|j>w<rsub|j>>. Il vettore a sinistra sta in <math|U>, quello a destra in <math|W>, e quindi entrambi stanno nell'intersezione, che è zero. Le due somme sono dunque nulle separatamente, e l'indipendenza di ciascuna base annulla tutti i coefficienti. Abbiamo trovato una base di <math|U⊕W>, e contando i suoi vettori otteniamo

<\equation*>
dim(U⊕W)=dim U+dim W.
</equation*>

Lo stesso fatto si può leggere al contrario. Se dividiamo una famiglia indipendente in due gruppi e chiamiamo <math|U> e <math|W> i loro span, ogni combinazione della famiglia si separa nelle due parti, quindi lo span totale è <math|U+W>. Inoltre un vettore che stesse in entrambi gli span avrebbe due espressioni, una per gruppo, e sottraendole otterremmo una relazione nella famiglia indipendente. Tutti i coefficienti sarebbero zero, quindi l'intersezione è <math|{0}> e la somma è diretta.

Un sottospazio <math|W> si dice <strong|supplementare> di <math|U> in <math|V> quando <math|V=U⊕W>. In dimensione finita un supplementare esiste sempre, e il modo di costruirlo è completare una base di <math|U> a una base di <math|V>. I vettori aggiunti generano un sottospazio <math|W>, e l'osservazione appena fatta assicura che la somma è diretta. Il supplementare però non è unico. All'asse orizzontale di <math|ℝ<rsup|2>> possiamo affiancare l'asse verticale, ma anche qualsiasi altra retta per l'origine diversa dall'asse orizzontale.

<section|Formula di Grassmann: contare la parte comune una volta>

Che cosa succede quando l'intersezione non è nulla? Prendiamo in <math|ℝ<rsup|3>> i due piani <math|U={(x,y,0)}> e <math|W={(x,0,z)}>. Un vettore che sta in entrambi deve avere nulle sia la terza sia la seconda componente, e quindi

<\equation*>
U∩W={(x,0,0)}=<math-up|span>(e<rsub|1>).
</equation*>

La somma invece è tutto lo spazio, perché ogni <math|(x,y,z)> si scrive come <math|(x,y,0)+(0,0,z)>, con il primo addendo in <math|U> e il secondo in <math|W>.

Le basi <math|(e<rsub|1>,e<rsub|2>)> di <math|U> e <math|(e<rsub|1>,e<rsub|3>)> di <math|W> hanno in comune la direzione <math|e<rsub|1>>. Se di questa direzione teniamo una sola copia, otteniamo <math|(e<rsub|1>,e<rsub|2>,e<rsub|3>)>, che è una base della somma. Per questo la dimensione della somma è <math|2+2-1=3> e non 4.

Proviamo su questo esempio la mossa che ci servirà nella dimostrazione generale. Supponiamo che <math|γe<rsub|1>+αe<rsub|2>+βe<rsub|3>=0> e isoliamo il contributo che viene solo da <math|W>, cioè <math|t=βe<rsub|3>>. Questo vettore sta in <math|W>, ma è anche uguale a <math|-γe<rsub|1>-αe<rsub|2>>, quindi sta in <math|U>. Essendo nell'intersezione, deve stare sull'asse <math|x>. D'altra parte <math|βe<rsub|3>=(0,0,β)> sta sull'asse <math|z>, e l'unica possibilità è <math|β=0>. Resta <math|γe<rsub|1>+αe<rsub|2>=0>, che annulla anche gli altri due coefficienti. Nel caso generale non potremo leggere le componenti così facilmente, ma useremo al loro posto le coordinate nelle basi dei sottospazi.

<\concetto|Formula di Grassmann>
Per due sottospazi di dimensione finita vale

<\equation*>
dim(U+W)=dim U+dim W-dim(U∩W).
</equation*>
</concetto>

La formula ricorda quella che conta gli elementi dell'unione di due insiemi finiti, ma l'analogia non è una dimostrazione. Dobbiamo costruire davvero una base della somma senza ripetizioni. Poniamo <math|dim U=n>, <math|dim W=p> e <math|dim(U∩W)=q>.

Il trucco è partire dalla parte comune. Prendiamo una base <math|v<rsub|1>,…,v<rsub|q>> dell'intersezione e completiamola due volte, come abbiamo imparato nel capitolo 6. Una volta la completiamo a una base <math|(v<rsub|1>,…,v<rsub|q>,u<rsub|q+1>,…,u<rsub|n>)> di <math|U>, e l'altra a una base <math|(v<rsub|1>,…,v<rsub|q>,w<rsub|q+1>,…,w<rsub|p>)> di <math|W>. Poi prendiamo una sola copia dei vettori comuni e tutti i vettori aggiunti:

<\equation*>
B=(v<rsub|1>,…,v<rsub|q>,u<rsub|q+1>,…,u<rsub|n>,w<rsub|q+1>,…,w<rsub|p>).
</equation*>

Questa famiglia genera <math|U+W>. Ogni <math|z=u+w> si ottiene sviluppando <math|u> e <math|w> nelle rispettive basi e sommando, e in questa somma i coefficienti dei <math|v<rsub|i>> si sommano fra loro mentre gli altri restano separati.

Il passo delicato è l'indipendenza. Supponiamo che

<\equation*>
<big|sum><rsub|i=1><rsup|q>γ<rsub|i>v<rsub|i>+<big|sum><rsub|i=q+1><rsup|n>α<rsub|i>u<rsub|i>+<big|sum><rsub|j=q+1><rsup|p>β<rsub|j>w<rsub|j>=0,
</equation*>

e chiamiamo <math|t> l'ultima somma, come nell'esempio. Il vettore <math|t> sta in <math|W>, e l'uguaglianza dice che è l'opposto delle prime due somme, che stanno in <math|U>. Quindi <math|t∈U∩W>, e possiamo scriverlo nella base dell'intersezione come <math|t=<big|sum><rsub|i=1><rsup|q>δ<rsub|i>v<rsub|i>>. Confrontando questa scrittura con la definizione di <math|t> otteniamo

<\equation*>
<big|sum><rsub|i=1><rsup|q>δ<rsub|i>v<rsub|i>-<big|sum><rsub|j=q+1><rsup|p>β<rsub|j>w<rsub|j>=0.
</equation*>

Questa è una relazione fra i vettori della base di <math|W>, quindi tutti i <math|β<rsub|j>> sono zero, e così pure i <math|δ<rsub|i>>. Nella relazione di partenza restano allora soltanto i vettori della base di <math|U>, e anche i coefficienti <math|γ<rsub|i>> e <math|α<rsub|i>> devono essere zero. La famiglia <math|B> è indipendente.

Ci resta solo da contare. La base costruita ha <math|q+(n-q)+(p-q)=n+p-q> vettori, che è esattamente la formula di Grassmann. Se qualche blocco è vuoto, le somme corrispondenti valgono zero e la dimostrazione funziona lo stesso.

<figura|@IMG(grassmann)|Partiamo dalla base dell'intersezione e la completiamo prima in un sottospazio, poi nell'altro. I <math|q> vettori comuni compaiono una sola volta nella base della somma.>

<subsection|Due piani e un piano con una retta>

La formula permette di ragionare sulla geometria senza fare conti. Prendiamo due piani distinti in <math|ℝ<rsup|3>>. La loro somma ha dimensione al più 3, e Grassmann dà <math|dim(U∩W)=2+2-dim(U+W)≥1>. L'intersezione non può avere dimensione 2, perché allora coinciderebbe con ciascuno dei due piani, che invece sono distinti. Due piani distinti per l'origine si incontrano quindi sempre in una retta, e la loro somma ha dimensione <math|2+2-1=3>.

Per un piano e una retta non contenuta nel piano l'intersezione è soltanto lo zero. La somma ha allora dimensione <math|2+1=3> ed è diretta.

<section|Matrici simmetriche e antisimmetriche>

Chiudiamo con un esempio di somma diretta che viene dalle matrici. La <strong|trasposta> di <math|M=(m<rsub|ij>)∈M<rsub|m,n>(K)> è la matrice <math|M<rsup|T>∈M<rsub|n,m>(K)> con <math|(M<rsup|T>)<rsub|ij>=m<rsub|ji>>, ottenuta scambiando righe e colonne. Una matrice quadrata <math|M> si dice <strong|simmetrica> se <math|M<rsup|T>=M> e <strong|antisimmetrica> se <math|M<rsup|T>=-M>. Poiché la trasposizione rispetta somme e multipli, le matrici di ciascun tipo formano un sottospazio, che indichiamo con <math|S<rsub|n>> e <math|A<rsub|n>>.

Lavoriamo in un campo in cui <math|2≠0>, come <math|ℝ> o <math|ℂ>. Una matrice che sia insieme simmetrica e antisimmetrica soddisfa <math|M=-M>, quindi <math|2M=0>, e poiché possiamo dividere per 2 otteniamo <math|M=0>. L'intersezione dei due sottospazi è dunque nulla. Lo stesso ragionamento, applicato a una singola casella, mostra che un'antisimmetrica ha la diagonale nulla, perché <math|m<rsub|ii>=-m<rsub|ii>>.

Resta da scomporre una matrice qualsiasi nelle due parti. Osserviamo che <math|M+M<rsup|T>> è simmetrica e <math|M-M<rsup|T>> è antisimmetrica, e che la loro somma è <math|2M>. Dividendo ciascuna per 2 otteniamo

<\equation*>
M=<frac|M+M<rsup|T>|2>+<frac|M-M<rsup|T>|2>.
</equation*>

La trasposta del primo addendo è <math|(M<rsup|T>+M)/2>, cioè il primo addendo stesso, e quella del secondo è <math|(M<rsup|T>-M)/2>, cioè il suo opposto. Abbiamo così dimostrato che <math|M<rsub|n>(K)=S<rsub|n>⊕A<rsub|n>>, e per la proprietà della somma diretta la scomposizione è unica.

Per esempio, per <math|M=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|4>|<cell|3>>>>>> otteniamo

<\equation*>
S=<matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|3>|<cell|3>>>>>,<space|2em>A=<matrix|<tformat|<table|<row|<cell|0>|<cell|-1>>|<row|<cell|1>|<cell|0>>>>>.
</equation*>

Il conto ha un significato semplice. Fuori dalla diagonale la parte simmetrica è la media <math|(2+4)/2=3> delle due entrate, mentre la parte antisimmetrica è lo scarto <math|(2-4)/2=-1> con il suo opposto. Sommando le due matrici ritroviamo le quattro entrate di <math|M>.

<\attenzione|Perché l'ipotesi sul campo è necessaria>
Se nel campo vale <math|2=0>, non possiamo usare <math|1/2>. Inoltre in quel caso <math|-M=M>, e simmetrica e antisimmetrica diventano la stessa cosa, quindi l'intersezione non è più nulla. La conclusione sulla somma diretta richiede davvero <math|2≠0>.
</attenzione>

<\verifica|7>
<strong|7.1.> Trova un supplementare di <math|U=<math-up|span>((1,1))> in <math|ℝ<rsup|2>> e scrivi <math|(3,1)> come somma dei due contributi. Spiega perché la scrittura è unica.

<strong|7.2.> In <math|ℝ<rsup|4>> due sottospazi <math|U,W> hanno entrambi dimensione 3. Quali valori può avere <math|dim(U∩W)>? Per ogni valore possibile fornisci un esempio usando vettori della base canonica.
</verifica>
