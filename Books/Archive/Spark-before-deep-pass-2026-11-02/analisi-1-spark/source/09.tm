<chapter|Radici, rapporti e gerarchia degli infiniti>

Fra <math|n<rsup|5>>, <math|2<rsup|n>> e <math|n!> tutte le successioni tendono a <math|+∞>. Questo non dice se una cresca più rapidamente di un'altra. Per confrontarle studieremo il loro quoziente. Radici e rapporti trasformano spesso formule grandi in espressioni molto più leggibili.

<section|Potenze e radici senza circolarità>

Per dimostrare <math|2<rsup|n>→+∞> potremmo essere tentati di risolvere <math|2<rsup|n>≥M> con un logaritmo. Ma la possibilità di raggiungere ogni quota serve proprio a giustificare il dominio del logaritmo. Bernoulli evita questo circolo:

<\equation*>
a<rsup|n>=(1+(a-1))<rsup|n>≥1+n(a-1)→+∞<space|1em>(a›1).
</equation*>

Per <math|0‹a‹1> passiamo al reciproco: <math|a<rsup|n>=1/(1/a)<rsup|n>→0>. Per <math|a=1> il limite è 1; per <math|a=0>, con <math|n≥1>, è zero. Se la base è negativa e di valore assoluto minore di 1, il valore assoluto dei termini tende a zero e quindi anche i termini tendono a zero. Una base <math|≤-1> produce invece due comportamenti diversi sui pari e sui dispari.

Per una radice a indice variabile il fenomeno è diverso: per ogni numero fisso <math|a›0> vale

<\equation*>
<sqrt|a|n>→1.
</equation*>

Se <math|a≥1>, Bernoulli con <math|t=(a-1)/n> dà <math|(1+(a-1)/n)<rsup|n>≥a>. Prendendo la radice, che conserva l'ordine dei numeri non negativi,

<\equation*>
1≤<sqrt|a|n>≤1+<frac|a-1|n>.
</equation*>

I carabinieri concludono. Se <math|0‹a‹1>, usiamo il reciproco della radice di <math|1/a>. Non abbiamo scritto <math|a<rsup|1/n>→a<rsup|0>>: la continuità dell'esponenziale verrà giustificata proprio usando questo risultato.

Anche <math|<sqrt|n|n>→1>, ma qui il radicando non è fisso. Conserviamo il termine quadratico del binomio di Newton, per <math|t≥0>:

<\equation*>
(1+t)<rsup|n>≥<binom|n|2>t<rsup|2>=<frac|n(n-1)|2>t<rsup|2>.
</equation*>

Scegliendo <math|t=<sqrt|2/(n-1)>>, per <math|n≥2>, il membro destro diventa <math|n>. Otteniamo

<\equation*>
1≤<sqrt|n|n>≤1+<sqrt|<frac|2|n-1>>→1.
</equation*>

L'ultima radice tende a zero direttamente dalla definizione: per renderla <math|≤ε> basta <math|n≥1+2/ε<rsup|2>>.

<section|Criteri della radice e del rapporto>

Se <math|a<rsub|n>≥0> definitivamente e <math|<sqrt|a<rsub|n>|n>→ℓ>, il valore decisivo da confrontare con <math|ℓ> è 1. Una radice stabilmente sopra 1 significa che <math|a<rsub|n>> contiene almeno una crescita geometrica; stabilmente sotto 1 significa che è schiacciata da una geometrica che si annulla.

<\concetto|Criterio della radice per successioni>
Supponiamo <math|a<rsub|n>≥0> definitivamente e <math|<sqrt|a<rsub|n>|n>→ℓ∈[0,+∞]>. Se <math|ℓ‹1>, allora <math|a<rsub|n>→0>. Se <math|ℓ›1>, incluso <math|ℓ=+∞>, allora <math|a<rsub|n>→+∞>. Se <math|ℓ=1>, il criterio non determina il limite di <math|(a<rsub|n>)>.
</concetto>

Per la prova, se <math|ℓ‹1>, scegliamo un numero <math|q> strettamente fra <math|ℓ> e 1. Definitivamente <math|0≤<sqrt|a<rsub|n>|n>≤q>, dunque <math|0≤a<rsub|n>≤q<rsup|n>→0>. Se <math|1‹ℓ‹+∞>, scegliamo <math|1‹q‹ℓ>; definitivamente <math|a<rsub|n>≥q<rsup|n>→+∞>. Per <math|ℓ=+∞> funziona qualunque <math|q›1>.

<figura|@IMG(geometrica)|La scelta di un numero fisso <math|q> fra il limite della radice e 1 produce una geometrica che controlla i termini da un certo indice in poi.>

Il <strong|criterio del rapporto> ha la stessa conclusione se <math|a<rsub|n>›0> definitivamente e <math|a<rsub|n+1>/a<rsub|n>→ℓ∈[0,+∞]>. La positività serve a dividere e a iterare le disuguaglianze senza cambiarne il verso. Se, per esempio, il rapporto è <math|≥q›1> per <math|n≥N>, allora

<\equation*>
a<rsub|N+1>≥qa<rsub|N>,<space|1em>a<rsub|N+2>≥q<rsup|2>a<rsub|N>,<space|1em>a<rsub|n>≥a<rsub|N>q<rsup|n-N>.
</equation*>

L'ultimo membro tende a <math|+∞>. Se il rapporto è invece <math|≤q‹1>, con <math|q›0>, l'iterazione dà <math|0‹a<rsub|n>≤a<rsub|N>q<rsup|n-N>→0>. Dal limite del rapporto scegliamo un <math|q> opportuno esattamente come per la radice. In realtà basta il confronto definitivo con <math|q>: conoscere l'intero limite non è necessario.

Per <math|ℓ=1> troviamo esempi molto diversi: <math|a<rsub|n>=n>, <math|a<rsub|n>=1/n> e <math|a<rsub|n>=1> hanno tutti rapporto e radice <math|n>-esima tendenti a 1, ma i termini tendono rispettivamente a <math|+∞>, a zero e a 1. Questi sono criteri per successioni; non stiamo ancora studiando la convergenza di serie.

<section|Dal rapporto alla radice>

Il rapporto offre anche un'informazione più precisa: se <math|a<rsub|n>›0> definitivamente e <math|a<rsub|n+1>/a<rsub|n>→ℓ∈[0,+∞]>, allora

<\equation*>
<sqrt|a<rsub|n>|n>→ℓ.
</equation*>

Per <math|0‹ℓ‹+∞>, prendiamo due numeri positivi <math|p‹ℓ‹q>. Definitivamente <math|p≤a<rsub|n+1>/a<rsub|n>≤q>. Iterando a partire da un opportuno <math|N>, troviamo

<\equation*>
a<rsub|N>p<rsup|n-N>≤a<rsub|n>≤a<rsub|N>q<rsup|n-N>.
</equation*>

Prendiamo le radici:

<\equation*>
p<sqrt|a<rsub|N>p<rsup|-N>|n>≤<sqrt|a<rsub|n>|n>≤q<sqrt|a<rsub|N>q<rsup|-N>|n>.
</equation*>

I radicandi ai lati sono costanti positive, perciò le loro radici tendono a 1. I due estremi tendono a <math|p> e a <math|q>. Dato un <math|ε›0> piccolo rispetto a <math|ℓ>, scegliamo <math|p=ℓ-ε/2>, <math|q=ℓ+ε/2>. Definitivamente il membro sinistro supera <math|ℓ-ε> e il destro è minore di <math|ℓ+ε>: è la definizione del limite della radice.

Se <math|ℓ=0>, per ogni <math|ε›0> usiamo soltanto la stima superiore con <math|q=ε/2>; il suo membro tende a <math|ε/2>, dunque è definitivamente <math|‹ε>. Se <math|ℓ=+∞>, per ogni soglia <math|M›0> usiamo la stima inferiore con <math|p=2M>; il suo membro tende a <math|2M> e supera definitivamente <math|M>. Questo completa anche i casi estremi.

Il teorema vale per <math|ℓ=1>, mentre i due criteri precedenti lì non decidevano il limite dei termini. Il viceversa non vale: per la successione <math|1,2,1,2,…> le radici tendono a 1, strette fra 1 e <math|<sqrt|2|n>>, ma i rapporti alternano 2 e <math|1/2>.

<section|La gerarchia degli infiniti>

Confrontiamo ora <math|3<rsup|n>> con <math|n<rsup|5>>. Per <math|a<rsub|n>=3<rsup|n>/n<rsup|5>> il rapporto vale

<\equation*>
<frac|a<rsub|n+1>|a<rsub|n>>=3<around*|(|<frac|n|n+1>|)><rsup|5>→3›1.
</equation*>

Quindi <math|3<rsup|n>/n<rsup|5>→+∞>: l'esponenziale cresce più rapidamente della potenza. Lo stesso conto vale per una base <math|a›1> e un esponente intero fissato. Vale anche per ogni esponente reale <math|α›0>: basta scegliere un intero <math|m≥α> e confrontare <math|n<rsup|α>≤n<rsup|m>> per <math|n≥1>.

Per <math|b<rsub|n>=n!/3<rsup|n>> il rapporto è <math|(n+1)/3→+∞>, dunque il fattoriale cresce più rapidamente dell'esponenziale. Per <math|c<rsub|n>=n<rsup|n>/n!> troviamo invece

<\equation*>
<frac|c<rsub|n+1>|c<rsub|n>>=<around*|(|1+<frac|1|n>|)><rsup|n>→e›1.
</equation*>

Perciò <math|n<rsup|n>> cresce più rapidamente del fattoriale. In forma compatta, per <math|a›1> e <math|α›0>,

<\equation*>
<frac|n<rsup|α>|a<rsup|n>>→0,<space|2em><frac|a<rsup|n>|n!>→0,<space|2em><frac|n!|n<rsup|n>>→0.
</equation*>

Il rapporto del reciproco dell'ultima successione tende a <math|e>; quello di <math|d<rsub|n>=n!/n<rsup|n>> tende a <math|1/e>. Il teorema rapporto-radice dà quindi il risultato più preciso

<\equation*>
<frac|<sqrt|n!|n>|n>=<sqrt|<frac|n!|n<rsup|n>>|n>→<frac|1|e>.
</equation*>

Per un polinomio <math|P(n)> di grado <math|m≥0> con coefficiente dominante <math|c›0>, la radice <math|n>-esima tende a 1. Infatti possiamo scrivere <math|P(n)=cn<rsup|m>(1+r<rsub|n>)>, con <math|r<rsub|n>→0>. Il fattore <math|<sqrt|c|n>> tende a 1 e <math|(<sqrt|n|n>)<rsup|m>> tende a 1. Definitivamente <math|1/2≤1+r<rsub|n>≤2>, quindi anche la radice dell'ultimo fattore tende a 1 per confronto fra le radici delle due costanti. Il radicando è positivo definitivamente; moltiplicando i tre fattori otteniamo il limite cercato.

Le gerarchie aiutano anche dentro una radice. Per esempio

<\equation*>
<sqrt|7<rsup|n>-n<rsup|7>+n<rsup|5>cos(n!)|n>=7<sqrt|1-<frac|n<rsup|7>|7<rsup|n>>+<frac|n<rsup|5>cos(n!)|7<rsup|n>>|n>→7.
</equation*>

Il radicando finale tende a 1 perché entrambe le correzioni tendono a zero, la seconda anche in valore assoluto. È dunque definitivamente fra <math|1/2> e 2; la sua radice <math|n>-esima è fra <math|<sqrt|1/2|n>> e <math|<sqrt|2|n>>, che tendono a 1. Questo passaggio controlla anche che la radice sia definita definitivamente.

<section|Cancellazioni e somme con molti termini>

Le gerarchie non autorizzano a perdere un termine prima di una sottrazione. In <math|<sqrt|n<rsup|2>+7n+4>-n> la parte di ordine <math|n> si cancella: proprio la correzione apparentemente piccola determina il limite. Usiamo l'identità <math|(u-v)(u+v)=u<rsup|2>-v<rsup|2>>:

<\equation*>
<sqrt|n<rsup|2>+7n+4>-n=<frac|7n+4|<sqrt|n<rsup|2>+7n+4>+n>=<frac|7+4/n|<sqrt|1+7/n+4/n<rsup|2>>+1>→<frac|7|2>.
</equation*>

Per giustificare il limite della radice basta osservare che, per <math|t≥-1>,

<\equation*>
\|<sqrt|1+t>-1\|=<frac|\|t\||<sqrt|1+t>+1>≤\|t\|.
</equation*>

Con <math|t=7/n+4/n<rsup|2>> il membro destro tende a zero. Per radici cubiche si usa <math|u<rsup|3>-v<rsup|3>=(u-v)(u<rsup|2>+uv+v<rsup|2>)>. Per esempio <math|<sqrt|n<rsup|3>+7n<rsup|2>+4|3>-n→7/3>: il numeratore, dopo la razionalizzazione, diviso per <math|n<rsup|2>> tende a 7 e i tre addendi del denominatore divisi per <math|n<rsup|2>> tendono ciascuno a 1. Per giustificare l'ultimo passaggio, ponendo <math|u=<sqrt|1+t|3>≥0> otteniamo <math|\|u-1\|=\|t\|/(u<rsup|2>+u+1)≤\|t\|>. Quindi anche la radice cubica tende a 1 quando <math|t→0>.

Un altro pericolo è applicare il teorema della somma quando il numero degli addendi cresce. Per <math|s<rsub|n>=<big|sum><rsub|k=n><rsup|2n>1/k<rsup|2>> ci sono <math|n+1> termini, ciascuno al più <math|1/n<rsup|2>>. Pertanto

<\equation*>
0≤s<rsub|n>≤<frac|n+1|n<rsup|2>>→0.
</equation*>

Invece <math|<big|sum><rsub|k=n><rsup|2n>1/<sqrt|k>≥(n+1)/<sqrt|2n>→+∞>, benché ogni addendo sia piccolo. Occorre controllare insieme la grandezza dei termini e il loro numero.

<subsection|Per proseguire: una somma che richiede monotonia>

Per <math|h<rsub|n>=<big|sum><rsub|k=n><rsup|2n>1/k> le stime estreme danno

<\equation*>
<frac|n+1|2n>≤h<rsub|n>≤<frac|n+1|n>.
</equation*>

I limiti dei due estremi sono diversi, <math|1/2> e 1: non possiamo applicare i carabinieri. Ma nel passaggio da <math|h<rsub|n>> a <math|h<rsub|n+1>> perdiamo <math|1/n> e acquistiamo due termini:

<\equation*>
h<rsub|n+1>-h<rsub|n>=<frac|1|2n+1>+<frac|1|2n+2>-<frac|1|n>≤0.
</equation*>

La successione è decrescente e limitata inferiormente, quindi converge. Le stime collocano il limite in <math|[1/2,1]>. Determinarne il valore esatto richiede un ulteriore argomento, che qui non serve.

<\verifica|9>
<strong|1.> Calcola il limite di <math|<sqrt|<binom|3n|n>|n>>. Scrivi il coefficiente binomiale con i fattoriali e studia il rapporto fra termini consecutivi.

<strong|2.> Calcola <math|lim<rsub|n→+∞>(<sqrt|n<rsup|2>-7n+2>-n)>. Controlla che il radicando sia positivo definitivamente e confronta la radice con <math|n> per prevedere il segno del risultato.
</verifica>
