<chapter|Completezza, successioni monotone e numero di Nepero>

<\inbreve>
Capita di sapere che un limite esiste molto prima di conoscerne il valore. Basta che una successione cresca sempre senza mai superare una certa barriera, perché la completezza dei reali le offra un punto di arrivo. Usiamo questa idea per costruire il numero <math|e>, che non sapremmo definire in altro modo, e poi impariamo a calcolare limiti di somme, prodotti e quozienti senza ripartire ogni volta dalla definizione.
</inbreve>

<section|Il teorema delle successioni monotone>

La successione <math|1-1/n>, per <math|n≥1>, cresce sempre e resta sotto 1, e il suo limite, cioè 1, è il più piccolo maggiorante dei suoi termini. Non è una coincidenza, ed è ciò che dimostreremo in questa sezione.

Prima fissiamo le parole. Una successione è <strong|debolmente crescente> se <math|a<rsub|n+1>≥a<rsub|n>> per ogni indice e <strong|strettamente crescente> se la disuguaglianza è stretta. Con i versi rovesciati otteniamo le successioni decrescenti. Confrontare soltanto termini consecutivi basta a confrontare due termini qualsiasi. Se <math|m›n> e la successione è crescente, la catena dei confronti intermedi dà infatti <math|a<rsub|m>≥a<rsub|n>>.

<\concetto|Convergenza delle successioni monotone>
Una successione crescente e limitata superiormente converge al supremo dell'insieme dei suoi termini. Se non è limitata superiormente, tende a <math|+∞>.

Una successione decrescente e limitata inferiormente converge all'infimo dei suoi termini. Se non è limitata inferiormente, tende a <math|-∞>.
</concetto>

Perché il candidato giusto è il supremo? Sia <math|(a<rsub|n>)> crescente e limitata superiormente, e sia <math|ℓ=sup{a<rsub|n>}>, che esiste per la completezza. Tutti i termini stanno sotto <math|ℓ>, quindi metà del lavoro è già fatta, perché nessun termine supera <math|ℓ+ε>. Resta da mostrare che da un certo punto in poi i termini stanno anche sopra <math|ℓ-ε>.

Fissiamo <math|ε›0>. Il numero <math|ℓ-ε> non è un maggiorante, perché è più piccolo del supremo, quindi esiste un termine <math|a<rsub|n<rsub|0>>› ℓ-ε>. Da solo questo non basterebbe, perché ci dice che un termine è vicino a <math|ℓ>, non che lo sono tutti quelli successivi. Qui interviene la monotonia, perché i termini successivi non possono scendere sotto <math|a<rsub|n<rsub|0>>>:

<\equation*>
ℓ-ε‹a<rsub|n<rsub|0>>≤a<rsub|n>≤ℓ≤ℓ+ε<space|1em>(n≥n<rsub|0>).
</equation*>

Questo dimostra che <math|a<rsub|n>→ℓ>. Le due ipotesi hanno ruoli ben distinti. La completezza garantisce che il punto di arrivo esista, e la monotonia impedisce ai termini di allontanarsi di nuovo dopo esserci arrivati vicino.

Se invece i termini non sono limitati superiormente, per ogni quota <math|M> esiste un termine <math|a<rsub|n<rsub|0>>≥M>, e per la monotonia tutti i successivi gli stanno sopra, quindi <math|a<rsub|n>→+∞>. Il caso decrescente si riduce al precedente guardando <math|-a<rsub|n>>, il cui supremo è l'opposto dell'infimo dei termini di partenza.

<figura|@IMG(monotona)|Il supremo fornisce un termine sopra <math|ℓ-ε>. La monotonia trattiene sopra quella quota tutti i successivi; il fatto che <math|ℓ> sia maggiorante li controlla dall'alto.>

Una successione solo debolmente crescente può anche raggiungere il suo limite e poi restarci ferma. Se invece è strettamente crescente con limite finito, ogni termine è strettamente minore del limite. Se infatti un termine fosse uguale al limite, il successivo lo supererebbe, e il limite non sarebbe più un maggiorante.

<section|Il numero di Nepero: costruire un nuovo limite>

Consideriamo ora la successione

<\equation*>
e<rsub|n>=<around*|(|1+<frac|1|n>|)><rsup|n><space|2em>(n≥1).
</equation*>

I primi termini sono <math|2>, <math|9/4> e <math|64/27>, che sembrano crescere. Capire che cosa succede non è facile, perché due forze tirano in direzioni opposte. La base si avvicina a 1, e questo tende a rimpicciolire la potenza, mentre l'esponente cresce, e questo tende a ingrandirla. Invece di cercare subito il valore del limite, dimostreremo che la successione cresce e resta sotto una barriera, e il teorema appena visto farà il resto.

<subsection|La monotonia: fare comparire Bernoulli>

Per capire come confrontare due termini, proviamo con <math|e<rsub|3>=(4/3)<rsup|3>> ed <math|e<rsub|2>=(3/2)<rsup|2>>. Gli esponenti sono diversi, e questo rende il confronto scomodo. Possiamo però scrivere anche <math|e<rsub|2>> come un cubo, compensando con un fattore <math|2/3>, e scrivere <math|e<rsub|3>> usando la stessa base <math|3/2>:

<\equation*>
e<rsub|2>=<around*|(|<frac|3|2>|)><rsup|3><frac|2|3>,<space|1em>e<rsub|3>=<around*|(|<frac|3|2>|)><rsup|3><around*|(|<frac|8|9>|)><rsup|3>.
</equation*>

Ora il fattore <math|(3/2)<rsup|3>> è comune e positivo, quindi resta solo da confrontare <math|(8/9)<rsup|3>> con <math|2/3>. Ed è il genere di confronto che Bernoulli sa fare:

<\equation*>
<around*|(|1-<frac|1|9>|)><rsup|3>≥1-<frac|3|9>=<frac|2|3>.
</equation*>

Questo piccolo caso suggerisce la strada generale. Per <math|n≥2> confrontiamo <math|e<rsub|n>> con <math|e<rsub|n-1>>, portando entrambe le potenze allo stesso esponente <math|n>. Scriviamo

<\equation*>
e<rsub|n-1>=<around*|(|<frac|n|n-1>|)><rsup|n><frac|n-1|n>,
</equation*>

e dividiamo il confronto che vogliamo dimostrare per il fattore positivo <math|(n/(n-1))<rsup|n>>. Poiché <math|(n+1)(n-1)/n<rsup|2>=1-1/n<rsup|2>>, otteniamo l'equivalenza

<\equation*>
e<rsub|n>≥e<rsub|n-1><space|1em>⇔<space|1em><around*|(|1-<frac|1|n<rsup|2>>|)><rsup|n>≥1-<frac|1|n>.
</equation*>

L'ultima disuguaglianza è Bernoulli, <math|(1+t)<rsup|n>≥1+nt>, applicato con <math|t=-1/n<rsup|2>>, che è maggiore di <math|-1>. La scelta di un esponente comune ci ha permesso di usare uno strumento che avevamo già dimostrato.

<subsection|Una barriera superiore: controllare gli addendi>

Per trovare una barriera conviene sviluppare la potenza. Nel caso <math|n=3> abbiamo

<\equation*>
<around*|(|1+<frac|1|3>|)><rsup|3>=1+3·<frac|1|3>+3·<frac|1|3<rsup|2>>+<frac|1|3<rsup|3>>.
</equation*>

Da dove viene il coefficiente 3 davanti a <math|1/3<rsup|2>>? Moltiplicando i tre fattori <math|(1+1/3)>, otteniamo <math|1/3<rsup|2>> ogni volta che da due dei tre fattori prendiamo <math|1/3> e dal terzo prendiamo 1. Le coppie di fattori si possono scegliere in tre modi. Se le contassimo in ordine troveremmo <math|3·2=6> possibilità, ma così ogni coppia verrebbe contata due volte, ed è per questo che il coefficiente è <math|6/2=3>.

Lo stesso ragionamento funziona per <math|n> fattori. Il termine in cui <math|k> fattori contribuiscono con <math|1/n> compare tante volte quanti sono i modi di scegliere <math|k> fattori fra <math|n>. Questo numero si indica con <math|<binom|n|k>>, si legge «<math|n> su <math|k>» e si chiama <strong|coefficiente binomiale>. Contando le scelte in ordine otterremmo <math|n(n-1)···(n-k+1)> possibilità, ma ogni gruppo di <math|k> fattori verrebbe contato in tutti i suoi <math|k!> ordinamenti, dove <math|k!=1·2·…·k>. Quindi

<\equation*>
<binom|n|k>=<frac|n(n-1)···(n-k+1)|k!>.
</equation*>

Per <math|k=0> poniamo <math|0!=1> e <math|<binom|n|0>=1>, perché c'è un solo modo di non scegliere nessun fattore, e il prodotto vuoto vale 1. Lo sviluppo che otteniamo così è il <strong|binomio di Newton>.

Ora dobbiamo stimare la somma. Guardiamo di nuovo il caso <math|n=3>. Il termine quadratico valeva <math|(3·2)/(2·3<rsup|2>)>, che è al massimo <math|1/2>, e quello cubico <math|(3·2·1)/(6·3<rsup|3>)>, che è al massimo <math|1/6>. In generale il numeratore <math|n(n-1)···(n-k+1)> ha <math|k> fattori, ciascuno al massimo <math|n>, e quindi diviso per <math|n<rsup|k>> dà al massimo 1. Ogni addendo è dunque al più <math|1/k!>, e

<\equation*>
e<rsub|n>=<big|sum><rsub|k=0><rsup|n><binom|n|k><frac|1|n<rsup|k>>≤1+<big|sum><rsub|k=1><rsup|n><frac|1|k!>.
</equation*>

I reciproci dei fattoriali non hanno una somma facile da calcolare, quindi li confrontiamo con qualcosa di più semplice. I fattoriali crescono almeno come le potenze di 2, perché per <math|k≥1> il prodotto <math|k!> contiene, dopo il fattore 1, altri <math|k-1> fattori, ciascuno almeno 2. Quindi <math|k!≥2<rsup|k-1>>, e la somma diventa geometrica:

<\equation*>
e<rsub|n>≤1+<big|sum><rsub|k=1><rsup|n><frac|1|2<rsup|k-1>>=3-<frac|1|2<rsup|n-1>>‹3.
</equation*>

Non abbiamo avuto bisogno di somme infinite, perché questa stima vale separatamente per ogni <math|n>. La successione è dunque crescente e limitata superiormente, e quindi converge.

<\concetto|Numero di Nepero>
Il numero <math|e> è il limite reale

<\equation*>
e=lim<rsub|n→+∞><around*|(|1+<frac|1|n>|)><rsup|n>.
</equation*>

Vale <math|2‹e‹3>; il suo valore approssimato è <math|2,71828…>.
</concetto>

Le due disuguaglianze strette meritano un momento di attenzione. Quella inferiore è facile, perché la successione cresce e quindi <math|e≥e<rsub|2>=9/4›2>. Quella superiore è più delicata. Sapere che ogni <math|e<rsub|n>> è minore di 3 non basta, perché nel passaggio al limite le disuguaglianze strette possono diventare uguaglianze. Ci serve un margine fisso sotto 3. Lo troviamo nella nostra stima, dove per <math|k=3> avevamo sostituito <math|1/6> con <math|1/4>, aggiungendo <math|1/12> più del necessario. Per <math|n≥3> possiamo quindi scrivere <math|e<rsub|n>≤3-1/12=35/12>, e passando al limite otteniamo <math|e≤35/12‹3>.

<section|Algebra dei limiti: somma, prodotto e reciproco>

Calcolare ogni limite partendo dalla definizione sarebbe faticoso, e per fortuna non serve. Se <math|a<rsub|n>→a> e <math|b<rsub|n>→b>, con limiti reali, allora

<\equation*>
a<rsub|n>+b<rsub|n>→a+b,<space|2em>a<rsub|n>b<rsub|n>→ab,
</equation*>

e se in più <math|b≠0>, i termini <math|b<rsub|n>> sono definitivamente diversi da zero e <math|a<rsub|n>/b<rsub|n>→a/b>. Vale la pena capire perché, dato che le stesse idee torneranno con la continuità e con le derivate.

Per la <strong|somma> la distanza dal risultato atteso si spezza in due:

<\equation*>
\|(a<rsub|n>+b<rsub|n>)-(a+b)\|≤\|a<rsub|n>-a\|+\|b<rsub|n>-b\|.
</equation*>

Fissato <math|ε›0>, chiediamo a ciascuna delle due successioni di stare a distanza al massimo <math|ε/2> dal proprio limite. Oltre il più grande dei due indici necessari valgono entrambe le richieste, e la somma delle distanze non supera <math|ε>.

Per il <strong|prodotto> serve un piccolo trucco. Vogliamo far comparire le distanze <math|a<rsub|n>-a> e <math|b<rsub|n>-b>, che sappiamo controllare, e per farlo aggiungiamo e togliamo <math|a<rsub|n>b>:

<\equation*>
a<rsub|n>b<rsub|n>-ab=a<rsub|n>(b<rsub|n>-b)+b(a<rsub|n>-a).
</equation*>

Nel primo addendo la distanza <math|b<rsub|n>-b> è moltiplicata per <math|a<rsub|n>>, che cambia con <math|n>, ma poiché <math|(a<rsub|n>)> converge è limitata, e possiamo trovare <math|C≥1> con <math|\|a<rsub|n>\|≤C>. Dato <math|ε›0>, rendiamo allora <math|\|b<rsub|n>-b\|≤ε/(2C)> e <math|\|a<rsub|n>-a\|≤ε/(2(\|b\|+1))>. Ciascun addendo non supera <math|ε/2>, e il totale non supera <math|ε>. Abbiamo scritto <math|\|b\|+1> invece di <math|\|b\|> perché il denominatore resti positivo anche quando <math|b=0>.

Per il <strong|reciproco> il pericolo è che <math|b<rsub|n>> si avvicini a zero, rendendo <math|1/b<rsub|n>> enorme. L'ipotesi <math|b≠0> serve a evitarlo. Definitivamente <math|\|b<rsub|n>-b\|≤\|b\|/2>, e dalla disuguaglianza triangolare <math|\|b\|≤\|b-b<rsub|n>\|+\|b<rsub|n>\|> otteniamo <math|\|b<rsub|n>\|≥\|b\|/2›0>. Con questa garanzia

<\equation*>
<around*|\||<frac|1|b<rsub|n>>-<frac|1|b>|\|>=<frac|\|b<rsub|n>-b\||\|b<rsub|n>\|\|b\|>≤<frac|2|\|b\|<rsup|2>>\|b<rsub|n>-b\|→0.
</equation*>

Il quoziente è il prodotto per il reciproco, e la differenza è la somma con l'opposto, quindi anche questi casi sono coperti.

<section|Limiti infiniti e forme indeterminate>

Quando entrano in gioco gli infiniti conviene lavorare nella <strong|retta reale estesa> <math|ℝ∪{-∞,+∞}>. Ricordiamo però che i due infiniti descrivono comportamenti e non sono numeri, quindi con loro non possiamo fare tutte le operazioni a cuor leggero. Alcune regole hanno comunque un significato preciso, e conviene capirle una per una.

Se <math|a<rsub|n>→+∞> e <math|(b<rsub|n>)> è limitata inferiormente da un numero <math|B>, allora <math|a<rsub|n>+b<rsub|n>→+∞>. Per superare una quota <math|M>, infatti, basta che <math|a<rsub|n>≥M-B>, e questo succede definitivamente. La regola comprende sia il caso in cui <math|b<rsub|n>> ha un limite finito sia quello in cui anche <math|b<rsub|n>> tende a <math|+∞>.

Se <math|a<rsub|n>→a›0> e <math|b<rsub|n>→+∞>, il prodotto tende a <math|+∞>, perché definitivamente <math|a<rsub|n>≥a/2> e quindi <math|a<rsub|n>b<rsub|n>≥(a/2)b<rsub|n>>. Se <math|a‹0> il prodotto tende invece a <math|-∞>. Il reciproco di una successione che tende a <math|+∞> tende a <math|0<rsup|+>>, perché per avere <math|0‹1/b<rsub|n>≤ε> basta che <math|b<rsub|n>≥1/ε>. I casi con i segni opposti si ottengono cambiando segno.

<\attenzione|Forma indeterminata non significa limite inesistente>
Le forme <math|∞-∞>, <math|0·∞>, <math|0/0> e <math|∞/∞> non determinano un risultato dai soli limiti dei pezzi.

Per esempio <math|2n-n→+∞> e <math|2n-3n→-∞>. Invece <math|2n-(2n-5)→5>, mentre <math|2n-(2n+(-1)<rsup|n>)> non ha limite. In tutti i casi sottraiamo due successioni che tendono a <math|+∞>.
</attenzione>

Anche dividere per qualcosa che tende a zero richiede attenzione al segno. Se <math|b<rsub|n>→0<rsup|+>> allora <math|1/b<rsub|n>→+∞>, se <math|b<rsub|n>→0<rsup|->> allora <math|1/b<rsub|n>→-∞>, e senza sapere da che parte arriva <math|b<rsub|n>> non possiamo concludere nulla in generale.

Spesso una forma indeterminata si scioglie riscrivendo l'espressione. Per esempio

<\equation*>
<frac|n<rsup|2>+3n+1|2n<rsup|2>-7>=<frac|1+3/n+1/n<rsup|2>|2-7/n<rsup|2>>→<frac|1|2>.
</equation*>

La forma iniziale era <math|∞/∞>, che da sola non dice nulla. Dividendo numeratore e denominatore per <math|n<rsup|2>> abbiamo ottenuto pezzi con limiti finiti e un denominatore con limite diverso da zero, e a quel punto le regole dell'algebra dei limiti si applicano senza problemi.

<\verifica|8>
<strong|1.> Una successione è definita da <math|a<rsub|1>=1>, <math|a<rsub|n+1>=<sqrt|2+a<rsub|n>>>. Dimostra per induzione che è crescente e che <math|1≤a<rsub|n>≤2>. Deduci l'esistenza del limite e calcolalo usando l'identità <math|a<rsub|n+1><rsup|2>=2+a<rsub|n>>.

<strong|2.> Calcola il limite di <math|n<rsup|2>-n cos n>. Cerca un confronto che controlli anche i valori negativi del coseno.
</verifica>
