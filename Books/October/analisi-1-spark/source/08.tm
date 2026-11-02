<chapter|Completezza, successioni monotone e numero di Nepero>

<\inbreve>
Possiamo sapere che un limite esiste prima di conoscerne il valore? Ripartiamo dal supremo e da una successione che cresce senza superare una barriera. Costruiremo così il numero e; poi impareremo a calcolare somme, prodotti e quozienti di limiti.
</inbreve>

<section|Il teorema delle successioni monotone>

La successione <math|1-1/n>, per <math|n≥1>, cresce e resta sotto 1. Il suo limite è il più piccolo maggiorante dei termini. Non è un caso isolato.

Una successione è <strong|debolmente crescente> se <math|a<rsub|n+1>≥a<rsub|n>> per ogni indice; è <strong|strettamente crescente> se vale <math|›>. Con <math|≤> o <math|‹> otteniamo le versioni decrescenti.

Confrontare termini consecutivi equivale a confrontare due indici qualsiasi: se <math|m›n>, la catena dei confronti intermedi dà <math|a<rsub|m>≥a<rsub|n>> nel caso crescente.

<\concetto|Convergenza delle successioni monotone>
Una successione crescente e limitata superiormente converge al supremo dell'insieme dei suoi termini. Se non è limitata superiormente, tende a <math|+∞>.

Una successione decrescente e limitata inferiormente converge all'infimo dei suoi termini. Se non è limitata inferiormente, tende a <math|-∞>.
</concetto>

Vediamo perché il supremo è la scelta giusta. Sia <math|ℓ=sup{a<rsub|n>}> finito. Tutti i termini stanno sotto <math|ℓ>, dunque metà del controllo è già disponibile.

Per ottenere l'altra metà fissiamo <math|ε›0>. Il numero <math|ℓ-ε> non è un maggiorante, perciò esiste un termine <math|a<rsub|n<rsub|0>>›ℓ-ε>. Da solo sarebbe soltanto un termine vicino al supremo. La monotonia lo trasforma nel controllo di tutta la coda:

<\equation*>
ℓ-ε‹a<rsub|n<rsub|0>>≤a<rsub|n>≤ℓ≤ℓ+ε<space|1em>(n≥n<rsub|0>).
</equation*>

Abbiamo così dimostrato <math|a<rsub|n>→ℓ>. Qui la completezza garantisce l'esistenza di <math|ℓ>; la monotonia impedisce di tornare indietro dopo averlo avvicinato.

Se i termini non sono limitati superiormente, fissata <math|M> ne esiste uno con <math|a<rsub|n<rsub|0>>≥M>. Tutti i successivi gli stanno sopra, quindi <math|a<rsub|n>→+∞>.

Per la versione decrescente applichiamo quanto provato a <math|-a<rsub|n>>: il suo supremo è l'opposto dell'infimo dei termini originali.

<figura|@IMG(monotona)|Il supremo fornisce un termine sopra <math|ℓ-ε>. La monotonia trattiene sopra quella quota tutti i successivi; il fatto che <math|ℓ> sia maggiorante li controlla dall'alto.>

Una successione debolmente crescente può raggiungere il proprio limite e poi restarci. Per questo non sempre arriva da sinistra in senso stretto. Se è strettamente crescente e ha limite finito, ogni termine è invece strettamente minore del limite: raggiungerlo costringerebbe il termine successivo a superare il supremo.

<section|Il numero di Nepero: costruire un nuovo limite>

Consideriamo <math|e<rsub|n>=(1+1/n)<rsup|n>>, per <math|n≥1>. I primi termini sono <math|2>, <math|9/4>, <math|64/27>. La base diminuisce e l'esponente cresce: non basta guardare uno dei due per capire il risultato. Dimostreremo che <math|(e<rsub|n>)> cresce e rimane limitata. Il teorema appena provato farà esistere il limite.

<subsection|La monotonia: fare comparire Bernoulli>

Proviamo prima a confrontare <math|e<rsub|3>=(4/3)<rsup|3>> con <math|e<rsub|2>=(3/2)<rsup|2>>. Hanno esponenti diversi. Portiamo la seconda potenza al cubo, compensando con un fattore <math|2/3>:

<\equation*>
e<rsub|2>=<around*|(|<frac|3|2>|)><rsup|3><frac|2|3>,<space|1em>e<rsub|3>=<around*|(|<frac|3|2>|)><rsup|3><around*|(|<frac|8|9>|)><rsup|3>.
</equation*>

Ora il fattore <math|(3/2)<rsup|3>> è comune e positivo. Resta da confrontare <math|(8/9)<rsup|3>> con <math|2/3>. Bernoulli ci dà proprio

<\equation*>
<around*|(|1-<frac|1|9>|)><rsup|3>≥1-<frac|3|9>=<frac|2|3>.
</equation*>

Questa prova suggerisce il passaggio generale: confrontare <math|e<rsub|n>> con <math|e<rsub|n-1>>, per <math|n≥2>, portando entrambe le potenze all'esponente <math|n>. Scriviamo

<\equation*>
e<rsub|n-1>=<around*|(|<frac|n|n-1>|)><rsup|n><frac|n-1|n>.
</equation*>

Tutti i fattori sono positivi. Dividendo il confronto desiderato per <math|(n/(n-1))<rsup|n>>, otteniamo l'equivalenza

<\equation*>
e<rsub|n>≥e<rsub|n-1><space|1em>⇔<space|1em><around*|(|1-<frac|1|n<rsup|2>>|)><rsup|n>≥1-<frac|1|n>.
</equation*>

Ora riconosciamo Bernoulli: <math|(1+t)<rsup|n>≥1+nt> per <math|t≥-1>. Con <math|t=-1/n<rsup|2>> dà esattamente l'ultima disuguaglianza. La scelta dell'esponente comune ha dunque reso applicabile uno strumento già dimostrato.

<subsection|Una barriera superiore: controllare gli addendi>

Per trovare una barriera proviamo a sviluppare il prodotto nel caso <math|n=3>:

<\equation*>
<around*|(|1+<frac|1|3>|)><rsup|3>=1+3·<frac|1|3>+3·<frac|1|3<rsup|2>>+<frac|1|3<rsup|3>>.
</equation*>

Il coefficiente 3 davanti a <math|1/3<rsup|2>> conta i modi di scegliere due dei tre fattori da cui prendere <math|1/3>. Se contassimo le scelte in ordine avremmo <math|3·2=6> possibilità; ogni coppia sarebbe contata due volte. Perciò il coefficiente è <math|3·2/2=3>.

In generale, nel prodotto di <math|n> fattori <math|(1+1/n)>, il termine con <math|k> fattori uguali a <math|1/n> compare <math|<binom|n|k>> volte. Il simbolo <math|<binom|n|k>> si legge «n su k» ed è un <strong|coefficiente binomiale>. Ponendo <math|k!=1·2·…·k> e <math|0!=1>, abbiamo

<\equation*>
<binom|n|k>=<frac|n(n-1)···(n-k+1)|k!>.
</equation*>

La formula conta le scelte dei <math|k> fattori: contandole in ordine avremmo <math|n(n-1)···(n-k+1)> possibilità, ma ogni scelta è ripetuta <math|k!> volte.

Per <math|k=0> si pone <math|<binom|n|0>=1>: non scegliere nessun fattore è una sola possibilità e il prodotto vuoto vale 1. Questa espansione è il <strong|binomio di Newton>.

Come rendiamo la somma più semplice? Nel caso con tre fattori, il termine quadratico era <math|(3·2)/(2·3<rsup|2>)≤1/2> e quello cubico era <math|(3·2·1)/(6·3<rsup|3>)≤1/6>. In generale ogni fattore del numeratore è <math|≤n>. Dopo aver diviso per <math|n<rsup|k>>, resta una quantità al più <math|1/k!>. Perciò

<\equation*>
e<rsub|n>=<big|sum><rsub|k=0><rsup|n><binom|n|k><frac|1|n<rsup|k>>≤1+<big|sum><rsub|k=1><rsup|n><frac|1|k!>.
</equation*>

Resta da controllare i reciproci dei fattoriali con una somma che sappiamo calcolare. I primi confronti sono <math|1!=1>, <math|2!=2>, <math|3!=6≥4>.

Per ogni <math|k≥1> vale <math|k!≥2<rsup|k-1>>: dopo il fattore 1 ci sono <math|k-1> fattori, ciascuno almeno 2. Quindi

<\equation*>
e<rsub|n>≤1+<big|sum><rsub|k=1><rsup|n><frac|1|2<rsup|k-1>>=3-<frac|1|2<rsup|n-1>>‹3.
</equation*>

La somma è geometrica. Non serve introdurre una somma infinita: abbiamo una stima per ciascun <math|n>. La successione è dunque crescente e limitata superiormente.

<\concetto|Numero di Nepero>
Il numero <math|e> è il limite reale

<\equation*>
e=lim<rsub|n→+∞><around*|(|1+<frac|1|n>|)><rsup|n>.
</equation*>

Vale <math|2‹e‹3>; il suo valore approssimato è <math|2,71828…>.
</concetto>

Le disuguaglianze strette meritano attenzione. Dal lato inferiore <math|e≥e<rsub|2>=9/4›2>.

Dal lato superiore, sapere <math|e<rsub|n>‹3> non esclude da solo il limite 3. Per escluderlo dobbiamo restare sotto 3 di una distanza fissa. Nella stima del termine <math|k=3> abbiamo sostituito <math|1/6> con <math|1/4>, aumentando la somma di <math|1/12>. Possiamo recuperare almeno questo margine. Per <math|n≥3> possiamo quindi migliorare la stima in <math|e<rsub|n>≤3-1/12=35/12>. Passando al limite otteniamo <math|e≤35/12‹3>.

<section|Algebra dei limiti: somma, prodotto e reciproco>

Per usare un limite dentro un calcolo dobbiamo sapere quali operazioni lo conservano. Se <math|a<rsub|n>→a> e <math|b<rsub|n>→b> con limiti reali, allora

<\equation*>
a<rsub|n>+b<rsub|n>→a+b,<space|2em>a<rsub|n>b<rsub|n>→ab.
</equation*>

Se inoltre <math|b≠0>, allora <math|b<rsub|n>≠0> definitivamente e <math|a<rsub|n>/b<rsub|n>→a/b>. Vediamo le ragioni, perché gli stessi passaggi torneranno nella continuità e nelle derivate.

Per la <strong|somma>, la distanza dal risultato desiderato è al più

<\equation*>
\|(a<rsub|n>+b<rsub|n>)-(a+b)\|≤\|a<rsub|n>-a\|+\|b<rsub|n>-b\|.
</equation*>

Fissato <math|ε›0>, chiediamo a ciascuna successione una distanza <math|≤ε/2>. Le due condizioni valgono insieme oltre il massimo dei rispettivi indici. La somma delle distanze è allora <math|≤ε>.

Per il <strong|prodotto> cerchiamo di far comparire le distanze già controllabili. Aggiungiamo e sottraiamo <math|a<rsub|n>b>:

<\equation*>
a<rsub|n>b<rsub|n>-ab=a<rsub|n>(b<rsub|n>-b)+b(a<rsub|n>-a).
</equation*>

Poiché <math|(a<rsub|n>)> converge, esiste <math|C≥1> con <math|\|a<rsub|n>\|≤C>.

Dato <math|ε›0>, rendiamo <math|\|b<rsub|n>-b\|≤ε/(2C)> e <math|\|a<rsub|n>-a\|≤ε/(2(\|b\|+1))>. La triangolare dà allora una distanza dal prodotto limite <math|≤ε/2+ε/2=ε>. I denominatori sono positivi anche quando <math|b=0>.

Per il <strong|reciproco>, se <math|b≠0>, la convergenza garantisce definitivamente <math|\|b<rsub|n>-b\|≤\|b\|/2>.

Scrivendo <math|b=(b-b<rsub|n>)+b<rsub|n>> e usando la triangolare, otteniamo <math|\|b\|≤\|b-b<rsub|n>\|+\|b<rsub|n>\|>. Quindi <math|\|b<rsub|n>\|≥\|b\|/2›0>. Ora

<\equation*>
<around*|\||<frac|1|b<rsub|n>>-<frac|1|b>|\|>=<frac|\|b<rsub|n>-b\||\|b<rsub|n>\|\|b\|>≤<frac|2|\|b\|<rsup|2>>\|b<rsub|n>-b\|→0.
</equation*>

Il quoziente si ottiene come prodotto per il reciproco. La sottrazione è una somma con l'opposto.

<section|Limiti infiniti e forme indeterminate>

La scrittura <math|ℝ∪{-∞,+∞}> indica la <strong|retta reale estesa>. Gli infiniti descrivono comportamenti, non sono numeri reali su cui eseguire liberamente tutte le operazioni.

Alcune regole hanno un significato preciso: se <math|a<rsub|n>→+∞> e <math|(b<rsub|n>)> è limitata inferiormente da <math|B>, allora <math|a<rsub|n>+b<rsub|n>→+∞>. Infatti, per superare una soglia <math|M>, basta che <math|a<rsub|n>≥M-B>. Questo copre sia una somma con un limite finito sia una somma di due termini che tendono a <math|+∞>.

Se <math|a<rsub|n>→a›0> e <math|b<rsub|n>→+∞>, il prodotto tende a <math|+∞>, perché definitivamente <math|a<rsub|n>≥a/2>. Se <math|a‹0>, il prodotto tende a <math|-∞>.

Un reciproco di una successione che tende a <math|+∞> tende a <math|0<rsup|+>>: per avere <math|0‹1/b<rsub|n>≤ε> basta imporre <math|b<rsub|n>≥1/ε>. I casi con segni opposti si ricavano cambiando segno.

<\attenzione|Forma indeterminata non significa limite inesistente>
Le forme <math|∞-∞>, <math|0·∞>, <math|0/0> e <math|∞/∞> non determinano un risultato dai soli limiti dei pezzi.

Per esempio <math|2n-n→+∞> e <math|2n-3n→-∞>. Invece <math|2n-(2n-5)→5>, mentre <math|2n-(2n+(-1)<rsup|n>)> non ha limite. In tutti i casi sottraiamo due successioni che tendono a <math|+∞>.
</attenzione>

Anche una divisione per un termine che tende a zero richiede cura: <math|1/b<rsub|n>→+∞> se <math|b<rsub|n>→0<rsup|+>>, e tende a <math|-∞> se <math|b<rsub|n>→0<rsup|->>. Senza informazione sul segno non c'è una conclusione generale.

Un esempio utile è

<\equation*>
<frac|n<rsup|2>+3n+1|2n<rsup|2>-7>=<frac|1+3/n+1/n<rsup|2>|2-7/n<rsup|2>>→<frac|1|2>.
</equation*>

Abbiamo diviso sopra e sotto per <math|n<rsup|2>> per ottenere limiti finiti e un denominatore limite non nullo. Le regole si applicano alla nuova scrittura, mentre la forma iniziale <math|∞/∞> non permetteva di concludere.

<\verifica|8>
<strong|1.> Una successione è definita da <math|a<rsub|1>=1>, <math|a<rsub|n+1>=<sqrt|2+a<rsub|n>>>. Dimostra per induzione che è crescente e che <math|1≤a<rsub|n>≤2>. Deduci l'esistenza del limite e calcolalo usando l'identità <math|a<rsub|n+1><rsup|2>=2+a<rsub|n>>.

<strong|2.> Calcola il limite di <math|n<rsup|2>-n cos n>. Cerca un confronto che controlli anche i valori negativi del coseno.
</verifica>
