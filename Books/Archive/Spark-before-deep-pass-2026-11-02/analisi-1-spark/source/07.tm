<chapter|Successioni e definizione di limite>

La lista <math|1,<frac|1|2>,<frac|1|3>,<frac|1|4>,…> suggerisce che i termini si avvicinano a zero. Nessuno di essi, però, è zero. Per descrivere questo comportamento serve un'idea diversa dall'uguaglianza: possiamo rendere la distanza da zero piccola quanto vogliamo, purché accettiamo di andare abbastanza avanti nella lista.

<section|Successioni, definitivamente e frequentemente>

Una <strong|successione reale> è una funzione che associa a ogni indice naturale <math|n> un numero reale <math|a<rsub|n>>. Si scrive <math|(a<rsub|n>)> per indicare l'intera successione. L'indice dice quale termine stiamo considerando: nella successione <math|a<rsub|n>=(-1)<rsup|n>> i valori sono soltanto due, ma il loro ordine continua a cambiare.

Nel seguito basta che la formula sia definita da un certo indice in poi. Per esempio <math|a<rsub|n>=1/(n-4)> è definita per ogni <math|n≥5>. I primi termini mancanti non impediscono di studiare che cosa accade per <math|n> grande. Invece <math|<sqrt|2025-n>> è definita soltanto per un numero finito di indici: non dà una successione reale da studiare all'infinito.

Dire che una proprietà vale <strong|definitivamente> significa che vale per tutti gli indici successivi a una certa soglia:

<\equation*>
∃n<rsub|0>∈ℕ<space|1em>∀n≥n<rsub|0>,<space|1em>P(n).
</equation*>

Dire che vale <strong|frequentemente> significa invece che, per quanto avanti andiamo, incontriamo ancora un indice che la soddisfa:

<\equation*>
∀n<rsub|0>∈ℕ<space|1em>∃n≥n<rsub|0><space|1em>P(n).
</equation*>

Per esempio «<math|n> è pari» è vera frequentemente, ma non definitivamente. «<math|n≥100>» è vera definitivamente. La differenza è fra trovare ancora qualche indice e controllare tutti gli indici successivi. Nei limiti servirà il secondo tipo di controllo.

<section|Limite finito: controllare una distanza>

Per <math|a<rsub|n>=1/n>, chiedere una distanza da zero non superiore a <math|0,01> significa chiedere <math|1/n≤0,01>. Tutti gli indici <math|n≥100> funzionano. Se chiediamo <math|0,001>, basta andare oltre <math|1000>. Il punto non è trovare una sola tolleranza che funzioni: dobbiamo saper rispondere a ogni tolleranza positiva.

<\concetto|Limite finito di una successione>
Scriviamo <math|a<rsub|n>→ℓ>, con <math|ℓ∈ℝ>, se

<\equation*>
∀ε›0<space|1em>∃n<rsub|0>∈ℕ<space|1em>∀n≥n<rsub|0>,<space|1em>\|a<rsub|n>-ℓ\|≤ε.
</equation*>

L'indice <math|n<rsub|0>> può dipendere da <math|ε>. La disuguaglianza deve poi valere per tutti gli indici successivi. In questo caso la successione si dice <strong|convergente>.
</concetto>

Il simbolo <math|ε> è la lettera greca epsilon e indica una distanza positiva, piccola quanto si vuole. La condizione equivale a <math|ℓ-ε≤a<rsub|n>≤ℓ+ε> definitivamente. Si può usare anche la disuguaglianza stretta: se sappiamo ottenere una distanza <math|≤ε/2>, otteniamo una distanza <math|‹ε>.

<figura|@IMG(striscia)|Fissata la striscia fra <math|ℓ-ε> e <math|ℓ+ε>, tutti i termini da un certo indice in poi devono rimanerci. Entrarci soltanto infinite volte non basta.>

Torniamo a <math|1/n>. Fissiamo un qualunque <math|ε›0>. La disuguaglianza desiderata <math|1/n≤ε> equivale, per <math|n≥1>, a <math|n≥1/ε>. Scegliamo dunque un intero <math|n<rsub|0>≥max{1,1/ε}>. Per ogni <math|n≥n<rsub|0>> abbiamo <math|0‹1/n≤ε>. Abbiamo dimostrato il limite, perché la scelta funziona per ogni <math|ε> iniziale.

Scriviamo anche <math|1/n→0<rsup|+>>: il limite è zero e i termini sono strettamente positivi definitivamente. In generale <math|a<rsub|n>→ℓ<rsup|+>> aggiunge a <math|a<rsub|n>→ℓ> la condizione <math|a<rsub|n>›ℓ> definitivamente; <math|ℓ<rsup|->> richiede <math|a<rsub|n>‹ℓ>. Il segno indica il lato di arrivo, non un nuovo numero.

<section|Limiti infiniti e unicità>

I termini di <math|n<rsup|2>> non si avvicinano a un numero reale: superano ogni quota fissata. Scriviamo

<\equation*>
a<rsub|n>→+∞<space|1em>⇔<space|1em>∀M∈ℝ<space|1em>∃n<rsub|0><space|1em>∀n≥n<rsub|0>,<space|1em>a<rsub|n>≥M.
</equation*>

Per <math|-∞> si richiede invece <math|a<rsub|n>≤M> definitivamente, per ogni <math|M∈ℝ>. Le soglie possono essere molto negative. Queste successioni si dicono <strong|divergenti> rispettivamente a <math|+∞> e a <math|-∞>.

Per verificare <math|n<rsup|2>→+∞>, fissiamo <math|M>. Se <math|M≤0>, ogni indice funziona. Se <math|M›0>, prendiamo un intero <math|n<rsub|0>≥max{1,M}>. Allora, per <math|n≥n<rsub|0>>, vale <math|n<rsup|2>≥n≥M>. Non abbiamo scelto la soglia: abbiamo trovato una risposta alla soglia assegnata.

Un limite, se esiste, è <strong|unico>. Per capire il caso finito, supponiamo che una successione converga sia a <math|ℓ> sia a <math|m>, con <math|ℓ≠m>. Scegliamo <math|ε=\|ℓ-m\|/3>. Definitivamente entrambe le distanze sarebbero <math|≤ε>; dalla disuguaglianza triangolare seguirebbe

<\equation*>
\|ℓ-m\|≤\|ℓ-a<rsub|n>\|+\|a<rsub|n>-m\|≤<frac|2|3>\|ℓ-m\|,
</equation*>

impossibile per una distanza positiva. Un limite finito non può convivere con un limite infinito, perché i termini convergenti restano definitivamente in un intervallo limitato. E <math|+∞> e <math|-∞> si escludono: non si può essere definitivamente sopra 1 e sotto <math|-1>.

Resta possibile che il limite <strong|non esista>. Per <math|(-1)<rsup|n>> escludiamo gli infiniti perché tutti i termini stanno fra <math|-1> e 1. Nessun limite finito funziona: con <math|ε=1/2>, i termini uguali a 1 imporrebbero <math|\|1-ℓ\|≤1/2>, quelli uguali a <math|-1> imporrebbero <math|\|-1-ℓ\|≤1/2>. La triangolare darebbe <math|2≤1>. Entrambi i valori ricompaiono arbitrariamente avanti, quindi nessuna soglia evita il problema.

<section|Limitatezza, segno e confronto>

Una successione è <strong|limitata> se esiste <math|C≥0> tale che <math|\|a<rsub|n>\|≤C> per tutti gli indici del suo dominio. Se <math|a<rsub|n>→ℓ∈ℝ>, scegliendo <math|ε=1> controlliamo la coda con <math|\|a<rsub|n>\|≤\|ℓ\|+1>. I termini che la precedono sono finiti: basta aumentare <math|C> per includerli. Ogni successione convergente è dunque limitata. Il viceversa è falso: <math|(-1)<rsup|n>> è il nostro controesempio.

Se <math|a<rsub|n>→+∞>, la stessa idea dà una limitazione inferiore: la coda sta sopra zero e il prefisso finito ha un minimo. Per <math|-∞> si ottiene una limitazione superiore.

La <strong|permanenza del segno> dice che, se <math|a<rsub|n>→ℓ›0>, allora <math|a<rsub|n>›0> definitivamente. Cerchiamo una distanza che impedisca di raggiungere zero: <math|ε=ℓ/2> dà <math|a<rsub|n>≥ℓ/2›0>. Per <math|ℓ‹0> si ragiona con <math|ε=\|ℓ\|/2>. Quando il limite è zero non segue un segno: <math|(-1)<rsup|n>/n> tende a zero cambiando lato a ogni passo.

Se <math|a<rsub|n>≤b<rsub|n>> definitivamente e <math|a<rsub|n>→+∞>, allora <math|b<rsub|n>→+∞>. Infatti, fissata <math|M>, da un certo indice valgono sia <math|a<rsub|n>≥M> sia il confronto, dunque <math|b<rsub|n>≥M>. Prendiamo il massimo delle due soglie per far valere insieme le due informazioni. Analogamente, <math|b<rsub|n>→-∞> forza <math|a<rsub|n>→-∞>.

<\concetto|Teorema dei carabinieri>
Se <math|a<rsub|n>≤b<rsub|n>≤c<rsub|n>> definitivamente e <math|a<rsub|n>→ℓ>, <math|c<rsub|n>→ℓ>, con <math|ℓ∈ℝ>, allora <math|b<rsub|n>→ℓ>.
</concetto>

La ragione è che i due estremi chiudono la distanza da entrambi i lati. Fissato <math|ε›0>, definitivamente abbiamo <math|a<rsub|n>≥ℓ-ε>, <math|c<rsub|n>≤ℓ+ε> e l'ordinamento dei tre termini. Oltre il massimo degli indici necessari,

<\equation*>
ℓ-ε≤a<rsub|n>≤b<rsub|n>≤c<rsub|n>≤ℓ+ε.
</equation*>

Questa è la definizione cercata. Per esempio <math|-1/n≤sin(n<rsup|2>)/n≤1/n>, quindi il termine centrale tende a zero anche se il seno oscilla. In generale <math|a<rsub|n>→0> equivale a <math|\|a<rsub|n>\|→0>, perché la distanza da zero è proprio il valore assoluto.

<figura|@IMG(carabinieri)|I termini centrali possono oscillare. Il loro spazio di oscillazione si restringe perché entrambe le successioni che li delimitano tendono a <math|ℓ>.>

Se due successioni hanno limiti finiti e sono ordinate definitivamente, i limiti conservano l'ordine largo. Per esempio, se fosse <math|ℓ›m> pur avendo <math|a<rsub|n>≤b<rsub|n>>, scegliendo tolleranza <math|(ℓ-m)/3> i termini sarebbero definitivamente ordinati al contrario. Le disuguaglianze strette invece possono diventare uguaglianze: <math|1-1/n‹1> per ogni <math|n≥1>, ma il limite è 1.

Convergere non significa essere monotoni: <math|(2+(-1)<rsup|n>)/n> tende a <math|0<rsup|+>>, perché sta fra <math|1/n> e <math|3/n>, ma continua a risalire. Anche divergere non impone la monotonia. Nel capitolo successivo vedremo ciò che la monotonia permette davvero di concludere.

<\verifica|7>
<strong|1.> Dimostra con la definizione che <math|n/(n+1)→1<rsup|->>. Parti dalla distanza da 1 e determina una soglia in funzione di <math|ε>.

<strong|2.> Studia <math|a<rsub|n>=n+2(-1)<rsup|n>>. Ha limite? È definitivamente crescente? Giustifica entrambe le risposte.
</verifica>
