<chapter|Successioni e definizione di limite>

<\inbreve>
I numeri 1, 1/2, 1/3, 1/4 e così via si avvicinano a zero senza mai arrivarci, e chiunque li guardi lo vede. Trasformare questa impressione in una definizione è più difficile di quanto sembri, perché dobbiamo dire con precisione che cosa significa «avvicinarsi». La risposta consiste nel fissare una tolleranza qualsiasi e mostrare che, da un certo punto in poi, tutti i termini la rispettano. Con questa idea studieremo limiti finiti e infiniti e impareremo a confrontare le successioni fra loro.
</inbreve>

<section|Successioni, definitivamente e frequentemente>

Una <strong|successione reale> è una funzione che associa a ogni indice naturale <math|n> un numero reale <math|a<rsub|n>>, e scriviamo <math|(a<rsub|n>)> per indicare la successione intera. L'indice ci dice quale termine stiamo guardando, e conta anche l'ordine in cui i valori compaiono. La successione <math|a<rsub|n>=(-1)<rsup|n>>, per esempio, assume soltanto i due valori 1 e <math|-1>, ma li alterna senza fermarsi mai.

Non serve che la formula sia definita per ogni indice, basta che lo sia da un certo indice in poi. La successione <math|a<rsub|n>=1/(n-4)> è definita per <math|n≥5>, e i primi termini mancanti non ci impediscono di studiare che cosa succede per <math|n> grande. Invece <math|<sqrt|2025-n>> è definita solo per un numero finito di indici, e quindi non è una successione che si possa studiare all'infinito.

Le domande sui limiti riguardano ciò che succede «da un certo punto in poi», e conviene avere una parola per questo. Una proprietà vale <strong|definitivamente> se vale per tutti gli indici da una certa soglia in avanti:

<\equation*>
∃n<rsub|0>∈ℕ<space|1em>∀n≥n<rsub|0>,<space|1em>P(n).
</equation*>

Una proprietà vale invece <strong|frequentemente> se, per quanto avanti ci spingiamo, troviamo sempre un altro indice che la soddisfa:

<\equation*>
∀n<rsub|0>∈ℕ<space|1em>∃n≥n<rsub|0><space|1em>P(n).
</equation*>

La proprietà «<math|n> è pari» vale frequentemente, perché i pari non finiscono mai, ma non definitivamente, perché dopo ogni pari viene un dispari. La proprietà «<math|n≥100>» vale invece definitivamente. La differenza è fra incontrare ancora qualche indice buono e avere la garanzia che lo siano tutti, e nei limiti ci servirà proprio questa seconda garanzia.

<section|Limite finito: controllare una distanza>

Torniamo alla successione <math|a<rsub|n>=1/n>. Se chiediamo che la distanza da zero non superi <math|0,01>, stiamo chiedendo <math|1/n≤0,01>, e questo vale per tutti gli indici da 100 in poi. Se diventiamo più esigenti e chiediamo <math|0,001>, dobbiamo andare oltre 1000. Ogni volta che stringiamo la tolleranza la soglia si sposta più avanti, ma una soglia c'è sempre. Questo è il cuore della definizione di limite, perché non basta che una tolleranza funzioni, dobbiamo saper rispondere a qualsiasi tolleranza positiva ci venga proposta.

<\concetto|Limite finito di una successione>
Scriviamo <math|a<rsub|n>→ℓ>, con <math|ℓ∈ℝ>, se

<\equation*>
∀ε›0<space|1em>∃n<rsub|0>∈ℕ<space|1em>∀n≥n<rsub|0>,<space|1em>\|a<rsub|n>-ℓ\|≤ε.
</equation*>

L'indice <math|n<rsub|0>> può dipendere da <math|ε>. La disuguaglianza deve poi valere per tutti gli indici successivi. In questo caso la successione si dice <strong|convergente>.
</concetto>

La lettera greca <math|ε>, epsilon, rappresenta la tolleranza, cioè una distanza positiva piccola quanto vogliamo. La condizione <math|\|a<rsub|n>-ℓ\|≤ε> dice che <math|a<rsub|n>> sta nella striscia fra <math|ℓ-ε> e <math|ℓ+ε>. Potremmo usare anche la disuguaglianza stretta senza cambiare nulla, perché se sappiamo ottenere distanze al massimo <math|ε/2> abbiamo anche distanze minori di <math|ε>.

<figura|@IMG(striscia)|Fissata la striscia fra <math|ℓ-ε> e <math|ℓ+ε>, tutti i termini da un certo indice in poi devono rimanerci. Entrarci soltanto infinite volte non basta.>

Vediamo la definizione al lavoro con <math|1/n>. Fissiamo un <math|ε›0> qualsiasi. Per <math|n≥1> la disuguaglianza che vogliamo, <math|1/n≤ε>, equivale a <math|n≥1/ε>. Scegliamo quindi un intero <math|n<rsub|0>≥max{1,1/ε}>. Per ogni <math|n≥n<rsub|0>> abbiamo allora <math|0‹1/n≤ε>. Poiché questa scelta funziona qualunque sia la tolleranza di partenza, abbiamo dimostrato che <math|1/n→0>.

In questo esempio sappiamo anche da che parte arrivano i termini, perché sono tutti positivi, e lo indichiamo scrivendo <math|1/n→0<rsup|+>>. In generale <math|a<rsub|n>→ℓ<rsup|+>> significa che <math|a<rsub|n>→ℓ> e che in più <math|a<rsub|n>›ℓ> definitivamente, mentre <math|a<rsub|n>→ℓ<rsup|->> richiede <math|a<rsub|n>‹ℓ>. Il segno in alto indica soltanto il lato da cui ci avviciniamo, non un numero nuovo.

<section|Limiti infiniti e unicità>

I termini di <math|n<rsup|2>> non si avvicinano a nessun numero reale, ma il loro comportamento è comunque molto chiaro, perché superano qualsiasi quota fissata. È questa l'idea che traduciamo in definizione:

<\equation*>
a<rsub|n>→+∞<space|1em>⇔<space|1em>∀M∈ℝ<space|1em>∃n<rsub|0><space|1em>∀n≥n<rsub|0>,<space|1em>a<rsub|n>≥M.
</equation*>

Per <math|-∞> chiediamo invece che, per ogni <math|M∈ℝ>, valga <math|a<rsub|n>≤M> definitivamente, e qui le quote interessanti sono quelle molto negative. Le successioni di questi due tipi si dicono <strong|divergenti> a <math|+∞> e a <math|-∞>.

Verifichiamo che <math|n<rsup|2>→+∞>. Qualcuno ci assegna una quota <math|M>, e il nostro compito è trovare un indice oltre il quale tutti i termini la superano. Se <math|M≤0> non c'è nulla da fare, perché ogni indice va bene. Se <math|M›0> prendiamo un intero <math|n<rsub|0>≥max{1,M}>, e per <math|n≥n<rsub|0>> otteniamo <math|n<rsup|2>≥n≥M>.

Un limite, quando esiste, è <strong|unico>. Nel caso finito l'idea è che una successione non può restare definitivamente vicina a due numeri diversi. Supponiamo che converga sia a <math|ℓ> sia a <math|m>, con <math|ℓ≠m>, e scegliamo una tolleranza pari a un terzo della loro distanza, <math|ε=\|ℓ-m\|/3>. Da un certo indice in poi entrambe le distanze sono al massimo <math|ε>, e la disuguaglianza triangolare dà

<\equation*>
\|ℓ-m\|≤\|ℓ-a<rsub|n>\|+\|a<rsub|n>-m\|≤<frac|2|3>\|ℓ-m\|,
</equation*>

che è impossibile per una distanza positiva.

Allo stesso modo un limite finito non può convivere con un limite infinito, perché una successione convergente resta definitivamente in un intervallo limitato. E i due infiniti si escludono a vicenda, perché non si può stare definitivamente sopra 1 e anche sotto <math|-1>.

Può anche succedere che il limite <strong|non esista>. Prendiamo <math|(-1)<rsup|n>>. Non può divergere, perché tutti i suoi termini stanno fra <math|-1> e 1. Non può nemmeno convergere a un numero <math|ℓ>. Con <math|ε=1/2>, infatti, i termini uguali a 1 richiederebbero <math|\|1-ℓ\|≤1/2> e quelli uguali a <math|-1> richiederebbero <math|\|-1-ℓ\|≤1/2>, e dalla disuguaglianza triangolare seguirebbe <math|2≤1>. Poiché entrambi i valori ricompaiono per quanto avanti andiamo, nessuna soglia permette di evitare il problema.

<section|Limitatezza, segno e confronto>

Una successione è <strong|limitata> se esiste <math|C≥0> tale che <math|\|a<rsub|n>\|≤C> per tutti gli indici. Ogni successione convergente lo è. Se <math|a<rsub|n>→ℓ∈ℝ>, scegliendo <math|ε=1> sappiamo che da un certo indice in poi <math|\|a<rsub|n>\|≤\|ℓ\|+1>. Prima di quell'indice ci sono solo un numero finito di termini, e basta aumentare <math|C> quanto serve per includere anche loro. Il viceversa è falso, e <math|(-1)<rsup|n>>, limitata ma non convergente, ne è la prova.

La stessa idea funziona per le successioni che divergono a <math|+∞>. La coda sta definitivamente sopra zero, e i termini iniziali sono in numero finito e quindi hanno un minimo, così la successione è limitata inferiormente. Per <math|-∞> si ottiene allo stesso modo una limitazione superiore.

Se il limite è positivo, anche i termini finiscono per esserlo. È la <strong|permanenza del segno>: se <math|a<rsub|n>→ℓ›0>, allora <math|a<rsub|n>›0> definitivamente. Per dimostrarlo scegliamo una tolleranza abbastanza piccola da non permettere di raggiungere lo zero, per esempio <math|ε=ℓ/2>, e otteniamo definitivamente <math|a<rsub|n>≥ℓ/2›0>. Per <math|ℓ‹0> si ragiona allo stesso modo con <math|ε=\|ℓ\|/2>. Quando il limite è zero, invece, il segno può restare indeciso, come in <math|(-1)<rsup|n>/n>, che tende a zero cambiando lato a ogni passo.

Il confronto più semplice riguarda i limiti infiniti. Se <math|a<rsub|n>≤b<rsub|n>> definitivamente e <math|a<rsub|n>→+∞>, allora anche <math|b<rsub|n>→+∞>. Fissata una quota <math|M>, da un certo indice vale <math|a<rsub|n>≥M> e da un altro vale il confronto. Oltre il più grande dei due indici valgono entrambe le cose, e quindi <math|b<rsub|n>≥M>. Allo stesso modo, se <math|b<rsub|n>→-∞>, anche <math|a<rsub|n>→-∞>.

Per i limiti finiti serve stringere la successione da entrambi i lati.

<\concetto|Teorema dei carabinieri>
Se <math|a<rsub|n>≤b<rsub|n>≤c<rsub|n>> definitivamente e <math|a<rsub|n>→ℓ>, <math|c<rsub|n>→ℓ>, con <math|ℓ∈ℝ>, allora <math|b<rsub|n>→ℓ>.
</concetto>

L'idea è che le due successioni esterne trascinano con sé quella in mezzo. Fissato <math|ε›0>, da un certo indice in poi abbiamo <math|a<rsub|n>≥ℓ-ε>, da un altro <math|c<rsub|n>≤ℓ+ε>, e da un altro ancora vale l'ordinamento dei tre termini. Oltre il più grande di questi indici tutto vale insieme, e quindi

<\equation*>
ℓ-ε≤a<rsub|n>≤b<rsub|n>≤c<rsub|n>≤ℓ+ε,
</equation*>

che è esattamente la definizione di <math|b<rsub|n>→ℓ>.

Il teorema è utile soprattutto quando il termine centrale è irregolare. Per esempio <math|-1/n≤sin(n<rsup|2>)/n≤1/n>, e quindi <math|sin(n<rsup|2>)/n→0>, anche se il seno al numeratore oscilla in modo imprevedibile. Un caso particolare che useremo spesso è che <math|a<rsub|n>→0> equivale a <math|\|a<rsub|n>\|→0>, perché la distanza da zero è il valore assoluto.

<figura|@IMG(carabinieri)|I termini centrali possono salire e scendere. Restano però fra due successioni che tendono entrambe a <math|ℓ>, e quindi si avvicinano anch'essi a <math|ℓ>.>

Le disuguaglianze passano anche ai limiti. Se due successioni hanno limiti finiti <math|ℓ> e <math|m> e <math|a<rsub|n>≤b<rsub|n>> definitivamente, allora <math|ℓ≤m>. Se infatti fosse <math|ℓ›m>, con una tolleranza pari a <math|(ℓ-m)/3> i termini finirebbero per essere ordinati al contrario. Le disuguaglianze strette, però, possono diventare uguaglianze nel limite. Per esempio <math|1-1/n‹1> per ogni <math|n≥1>, ma il limite è 1.

Infine, convergere non significa avvicinarsi in modo regolare. La successione <math|(2+(-1)<rsup|n>)/n> sta fra <math|1/n> e <math|3/n>, e quindi tende a <math|0<rsup|+>>, ma ogni tanto risale. Anche una successione divergente può salire e scendere lungo la strada. Nel prossimo capitolo vedremo che cosa possiamo concludere quando la monotonia c'è davvero.

<\verifica|7>
<strong|1.> Dimostra con la definizione che <math|n/(n+1)→1<rsup|->>. Parti dalla distanza da 1 e determina una soglia in funzione di <math|ε>.

<strong|2.> Studia <math|a<rsub|n>=n+2(-1)<rsup|n>>. Ha limite? È definitivamente crescente? Giustifica entrambe le risposte.
</verifica>
