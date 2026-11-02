<chapter|Dimensione e lemma di scambio>

Una base del piano può essere obliqua, ma continua ad avere due vettori. Il numero sembra dipendere dallo spazio, anziché dal riferimento. Dobbiamo dimostrarlo: la definizione di base, da sola, non vieta ancora due basi con lunghezze diverse. Prima impariamo a togliere un vettore superfluo e a sostituire una direzione mantenendo una base.

<section|Esistenza di basi: togliere e aggiungere vettori>

Supponiamo che <math|V> sia generato da una famiglia finita. Se è dipendente, il capitolo precedente permette di eliminare un vettore senza cambiare lo span. Ripetiamo finché la famiglia è indipendente. A ogni passo il numero di vettori diminuisce: il procedimento termina e lascia una base. Per <math|V={0}> la base è la famiglia vuota. Dunque <strong|ogni famiglia finita di generatori contiene una base>.

Due altri modi di riconoscere una base sono utili per capire che cosa abbiamo raggiunto. Un insieme indipendente è <strong|massimale per inclusione> quando non possiamo aggiungere altri vettori mantenendo l'indipendenza. Un sistema di generatori è <strong|minimale per inclusione> quando non possiamo togliere vettori mantenendo la generazione. Non sono definizioni basate sul numero di elementi.

Una base è indipendente massimale: se aggiungiamo <math|v> fuori dalla base, il fatto che essa generi scrive <math|v> mediante i suoi vettori e produce una relazione non banale. Viceversa, un insieme indipendente massimale genera. Infatti, se <math|v> fosse fuori dal suo span, una relazione <math|βv+<big|sum>α<rsub|j>b<rsub|j>=0> non potrebbe avere <math|β≠0>, altrimenti esprimerebbe <math|v> nello span. Con <math|β=0> anche gli altri coefficienti sarebbero zero per l'indipendenza. Potremmo quindi aggiungere <math|v>, contro la massimalità.

Una base è anche generatore minimale: togliere un vettore renderebbe impossibile ricostruire proprio quel vettore, per l'indipendenza. Viceversa, un sistema minimale di generatori non può essere dipendente: una relazione non banale offrirebbe un vettore eliminabile, contro la minimalità. Le tre caratterizzazioni coincidono. Le prove funzionano anche per famiglie infinite, perché ogni relazione usa soltanto un numero finito di vettori; qui useremo soprattutto il caso finito.

<section|Lemma di scambio: sostituire senza perdere informazioni>

Nella base canonica del piano, <math|w=(2,1)> si scrive <math|w=2e<rsub|1>+e<rsub|2>>. Possiamo sostituire <math|e<rsub|1>> con <math|w>? Sì: l'identità <math|e<rsub|1>=(w-e<rsub|2>)/2> ci permette di recuperare il vettore tolto. Non abbiamo perso la possibilità di generare il piano.

Questo recupero spiega la condizione generale. Siano <math|u<rsub|1>,…,u<rsub|r>> indipendenti e

<\equation*>
w=a<rsub|1>u<rsub|1>+⋯+a<rsub|r>u<rsub|r>,<space|2em>a<rsub|1>≠0.
</equation*>

Allora <math|w,u<rsub|2>,…,u<rsub|r>> sono indipendenti e hanno lo stesso span dei vecchi vettori. Per lo span, basta isolare

<\equation*>
u<rsub|1>=<frac|1|a<rsub|1>>(w-a<rsub|2>u<rsub|2>-⋯-a<rsub|r>u<rsub|r>).
</equation*>

Ogni nuovo vettore era combinazione dei vecchi e ogni vecchio vettore è combinazione dei nuovi: i due span coincidono.

Per l'indipendenza, partiamo da <math|βw+<big|sum><rsub|j=2><rsup|r>β<rsub|j>u<rsub|j>=0>. Sostituiamo l'espressione di <math|w>. Il coefficiente di <math|u<rsub|1>> diventa <math|βa<rsub|1>>; quello di <math|u<rsub|j>> per <math|j≥2> è <math|βa<rsub|j>+β<rsub|j>>. L'indipendenza dei vecchi vettori impone <math|βa<rsub|1>=0>. Poiché <math|a<rsub|1>≠0>, segue <math|β=0>, e poi <math|β<rsub|j>=0> per ogni <math|j>. La nuova famiglia è indipendente. Se il coefficiente non nullo era in un'altra posizione, si scambia quel vettore.

Ora partiamo da una base <math|u<rsub|1>,…,u<rsub|n>> e da vettori indipendenti <math|w<rsub|1>,…,w<rsub|m>> di <math|V>. Vogliamo far entrare tutti i <math|w> nella base. Scriviamo <math|w<rsub|1>> nella base: è non nullo, quindi qualche coefficiente è non nullo e permette il primo scambio.

Al passo <math|k> abbiamo una base con <math|w<rsub|1>,…,w<rsub|k-1>> e alcuni <math|u> originari. Scriviamo <math|w<rsub|k>> in questa base. <strong|Almeno un coefficiente su un <math|u> rimasto è non nullo.> Se non lo fosse, <math|w<rsub|k>> sarebbe combinazione soltanto dei <math|w> precedenti, contraddicendo l'indipendenza. Possiamo quindi scambiare un <math|u>, senza togliere nessun <math|w> già inserito.

<figura|@IMG(scambio)|Ogni scambio fa entrare un vettore indipendente <math|w> e consuma un posto occupato da un <math|u>. La famiglia continua a essere una base.>

Non possiamo avere <math|m›n>. Dopo <math|n> scambi la base conterrebbe soltanto i primi <math|n> vettori <math|w>; il successivo sarebbe loro combinazione, contro l'indipendenza. Abbiamo provato il <strong|lemma di scambio di Steinitz>: <math|m≤n>, e l'insieme indipendente si completa a una base con alcuni vettori della base iniziale.

<section|Dimensione: un numero che non dipende dalla base>

Se due basi finite hanno <math|n> e <math|m> vettori, lo scambio applicato nei due sensi dà <math|m≤n> e <math|n≤m>. Quindi <math|m=n>. Inoltre, in uno spazio con una base di <math|n> vettori non esiste una base infinita: scegliendone <math|n+1> elementi avremmo una famiglia indipendente troppo lunga.

<\concetto|Dimensione>
La dimensione <math|dim<rsub|K>V> di uno spazio finitamente generato è il numero di vettori di una sua base. Lo scambio assicura che la scelta della base non cambia questo numero. Lo spazio <math|{0}> ha dimensione zero.
</concetto>

Abbiamo <math|dim<rsub|K>K<rsup|n>=n> e <math|dim<rsub|K>K<rsub|d>[X]=d+1>. Per le matrici, <math|E<rsub|ij>> indica quella con 1 nella casella <math|(i,j)> e zero nelle altre. Ogni matrice si scrive <math|A=<big|sum><rsub|i,j>a<rsub|ij>E<rsub|ij>>. In una combinazione nulla la casella <math|(i,j)> dà il coefficiente di <math|E<rsub|ij>>, che deve essere zero. Queste <math|mn> matrici sono quindi una base e <math|dim<rsub|K>M<rsub|m,n>(K)=mn>.

Per <math|ℂ> su <math|ℂ> basta la base <math|(1)>: la dimensione è 1. Su <math|ℝ> ogni <math|a+ib> ha coefficienti reali unici rispetto a <math|(1,i)>: la dimensione è 2. Più in generale <math|ℂ<rsup|n>> ha dimensione <math|n> sui complessi e <math|2n> sui reali: una base reale è data da <math|e<rsub|1>,ie<rsub|1>,…,e<rsub|n>,ie<rsub|n>>. Ogni entrata complessa richiede due coordinate reali.

La mappa delle coordinate <math|Φ<rsub|B>:V→K<rsup|n>>, <math|v↦[v]<rsub|B>>, è una biiezione: l'esistenza e l'unicità dello sviluppo lo dimostrano. Rispetta anche le operazioni. Se <math|v=<big|sum>x<rsub|j>b<rsub|j>> e <math|w=<big|sum>y<rsub|j>b<rsub|j>>, i coefficienti di <math|v+w> sono <math|x<rsub|j>+y<rsub|j>>, e quelli di <math|αv> sono <math|αx<rsub|j>>. Quindi

<\equation*>
[v+w]<rsub|B>=[v]<rsub|B>+[w]<rsub|B>,<space|2em>[αv]<rsub|B>=α[v]<rsub|B>.
</equation*>

Un'applicazione che rispetta queste due operazioni si chiama <strong|lineare>; se è anche biiettiva, è un <strong|isomorfismo>. Dunque, scelta una base, <math|V≅K<rsup|n>>: le coordinate conservano tutta la struttura di spazio vettoriale, non soltanto i suoi elementi.

<section|Completamento, sottospazi e criteri per una base>

Sia <math|dim V=n>. Dal lemma di scambio un insieme indipendente ha al più <math|n> elementi e si completa a una base. Un insieme finito di generatori contiene una base e ha quindi almeno <math|n> elementi. Se i generatori sono infiniti, ne possiamo comunque estrarre un numero finito che genera: scriviamo ciascun vettore di una base finita mediante essi e raccogliamo tutti i vettori usati. Ogni scrittura è finita, e le scritture sono <math|n>; la loro unione è finita. Da lì estraiamo una base.

Perciò <strong|<math|n> vettori indipendenti in <math|V> formano una base>; nel completamento non rimane alcun posto da riempire. Anche <strong|<math|n> generatori formano una base>, perché la base estratta ha già <math|n> vettori. Il numero corretto, da solo, non basta: due vettori paralleli nel piano continuano a fallire entrambe le proprietà.

E per un sottospazio <math|W⊆V>, che non sappiamo ancora essere finitamente generato? Partiamo dalla famiglia vuota e aggiungiamo un vettore di <math|W> fuori dallo span dei precedenti, finché è possibile. Ogni aggiunta mantiene l'indipendenza, come abbiamo dimostrato nella sezione 6.1. Non possiamo fare più di <math|n> aggiunte. Quando ci fermiamo, non c'è più alcun vettore di <math|W> fuori dallo span: abbiamo una base finita di <math|W>. Così giustifichiamo anche la sua esistenza, prima di usarne la dimensione.

La base di <math|W> è indipendente in <math|V>; quindi <math|dim W≤dim V>. Se le dimensioni coincidono, quella base è anche base di <math|V> e <math|W=V>. Viceversa, per ogni <math|0≤k≤n>, lo span di <math|k> elementi di una base di <math|V> ha dimensione <math|k>.

Ora possiamo classificare i sottospazi geometrici. In <math|ℝ<rsup|2>> le dimensioni sono 0, 1, 2: rispettivamente il solo zero, una retta per l'origine e tutto il piano. In <math|ℝ<rsup|3>> si aggiungono i piani per l'origine, di dimensione 2, mentre la dimensione 3 dà tutto lo spazio. Non ci sono altre possibilità.

Una singola equazione <math|a<rsub|1>x<rsub|1>+⋯+a<rsub|n>x<rsub|n>=0> con <math|a<rsub|1>≠0> ha come base i <math|n-1> vettori

<\equation*>
f<rsub|j>=e<rsub|j>-<frac|a<rsub|j>|a<rsub|1>>e<rsub|1>,<space|2em>j=2,…,n.
</equation*>

Se il primo coefficiente è zero ma un altro è non nullo, rinominiamo le coordinate portando quello in prima posizione.

Infatti l'equazione determina <math|x<rsub|1>> e lascia libere <math|x<rsub|2>,…,x<rsub|n>>, così ogni soluzione è <math|<big|sum><rsub|j=2><rsup|n>x<rsub|j>f<rsub|j>>. Nella componente <math|j≥2> una combinazione dei <math|f> mostra soltanto il proprio coefficiente: se è nulla, tutti i coefficienti sono zero. La dimensione è <math|n-1>. Se tutti gli <math|a<rsub|j>> sono nulli, invece, l'equazione è <math|0=0> e non pone vincoli: la dimensione rimane <math|n>.

<section|Basi di sottospazi di polinomi>

Torniamo a <math|ℝ<rsub|3>[X]>, che ha dimensione 4. Una condizione come <math|p(0)=0> è facile da leggere sui coefficienti: se <math|p=a<rsub|0>+a<rsub|1>X+a<rsub|2>X<rsup|2>+a<rsub|3>X<rsup|3>>, impone <math|a<rsub|0>=0>. Quindi <math|W<rsub|0>={p:p(0)=0}> ha base <math|(X,X<rsup|2>,X<rsup|3>)> e dimensione 3.

Per <math|W<rsub|1>={p:p(1)=0}> il teorema del fattore dà <math|p=(X-1)q>, con <math|q∈ℝ<rsub|2>[X]>. Una base è <math|(X-1,X(X-1),X<rsup|2>(X-1))>. Genera perché sviluppiamo <math|q> in <math|1,X,X<rsup|2>>. È indipendente perché i tre polinomi hanno gradi distinti: in una relazione nulla il termine di grado massimo può provenire da un solo polinomio, il cui coefficiente deve essere zero. Eliminato quello, si ripete sui restanti. Questo argomento vale per qualunque famiglia finita di polinomi non nulli con gradi distinti.

Per l'intersezione <math|W<rsub|0,1>> chiediamo entrambe le condizioni. Scriviamo <math|p=Xq> grazie a <math|p(0)=0>; valutando in 1 ricaviamo <math|q(1)=0>. Allora <math|q=(X-1)r> e

<\equation*>
p=X(X-1)(a+bX).
</equation*>

Il quoziente ha grado al più 1. Una base è <math|(X(X-1),X<rsup|2>(X-1))> e la dimensione è 2, con generazione data dalla formula e indipendenza dai gradi 2 e 3.

<figura|@IMG(polinomi01)|I due polinomi della base di <math|W<rsub|0,1>> si annullano in 0 e in 1. Nel disegno la curva continua è <math|X(X-1)>, quella tratteggiata è <math|X<rsup|2>(X-1)>.>

Infine chiediamo soltanto <math|p(0)=p(1)>. I polinomi costanti sono ammessi. Per riusare l'intersezione precedente, sottraiamo la costante <math|p(0)>: il polinomio <math|q=p-p(0)> si annulla in entrambi i punti. Otteniamo quindi

<\equation*>
p=p(0)·1+aX(X-1)+bX<rsup|2>(X-1).
</equation*>

Questa formula dà la generazione; i gradi distinti 0, 2, 3 danno l'indipendenza. La base è <math|(1,X(X-1),X<rsup|2>(X-1))> e la dimensione è 3. Le condizioni considerate definiscono sottospazi perché la valutazione rispetta somme e multipli, come nell'esercizio 4.1.

<subsection|Per proseguire: basi infinite>

La base dei monomi mostra che <math|K[X]> non è finitamente generato. Anche per basi infinite si può parlare di dimensione come cardinalità, ed è vero che due basi dello stesso spazio sono equipotenti. Il confronto generale richiede argomenti ulteriori: il lemma finito dimostrato qui non ne costituisce una prova. Nel resto del volume i teoremi di dimensione si applicano a spazi finiti.

<\verifica|6>
<strong|6.1.> Trova una base e la dimensione di <math|W={p∈ℝ<rsub|2>[X]:p(2)=0}>. Controlla sia la generazione sia l'indipendenza.

<strong|6.2.> Completa <math|v=(2,3)> a una base di <math|ℝ<rsup|2>> scegliendo un vettore della base canonica. Poi spiega perché quattro vettori di <math|ℝ<rsup|3>> sono sempre dipendenti.
</verifica>
