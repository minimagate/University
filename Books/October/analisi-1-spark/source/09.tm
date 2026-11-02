<chapter|Radici, rapporti e gerarchia degli infiniti>

<\inbreve>
Le successioni <math|n<rsup|5>>, <math|2<rsup|n>> e <math|n!> tendono tutte a <math|+∞>, ma con velocità molto diverse, e in un quoziente è proprio la velocità a decidere il risultato. Per confrontarle studiamo come cambia un termine rispetto al precedente, oppure quanto vale la sua radice <math|n>-esima. Questi due strumenti ci daranno una vera classifica degli infiniti, che useremo come una scorciatoia in moltissimi limiti.
</inbreve>

<section|Potenze e radici senza circolarità>

Per dimostrare che <math|2<rsup|n>→+∞> verrebbe naturale risolvere <math|2<rsup|n>≥M> con un logaritmo. Ma c'è un problema nascosto. Per sapere che il logaritmo è definito su tutti i positivi dobbiamo già sapere che le potenze raggiungono ogni quota, cioè ciò che vogliamo dimostrare. Bernoulli ci permette di uscire da questo circolo vizioso, perché per <math|a›1>

<\equation*>
a<rsup|n>=(1+(a-1))<rsup|n>≥1+n(a-1)→+∞.
</equation*>

Gli altri casi seguono da questo. Per <math|0‹a‹1> passiamo al reciproco, <math|a<rsup|n>=1/(1/a)<rsup|n>>, e il denominatore tende a <math|+∞>, quindi <math|a<rsup|n>→0>. Per <math|a=1> la successione è costante, e per <math|a=0>, con <math|n≥1>, vale sempre zero. Se la base è negativa ma con valore assoluto minore di 1, i valori assoluti dei termini tendono a zero e quindi anche i termini. Una base minore o uguale a <math|-1> produce invece comportamenti diversi sugli indici pari e su quelli dispari, e il limite non esiste.

Con una radice il cui indice cresce succede qualcosa di molto diverso. Per ogni numero fisso <math|a›0>

<\equation*>
<sqrt|a|n>→1.
</equation*>

Per capire perché, supponiamo <math|a≥1> e applichiamo Bernoulli con <math|t=(a-1)/n>. Otteniamo <math|(1+(a-1)/n)<rsup|n>≥1+(a-1)=a>, e prendendo la radice <math|n>-esima, che rispetta l'ordine fra numeri non negativi, troviamo

<\equation*>
1≤<sqrt|a|n>≤1+<frac|a-1|n>.
</equation*>

Il teorema dei carabinieri conclude. Se <math|0‹a‹1> basta scrivere <math|<sqrt|a|n>> come il reciproco di <math|<sqrt|1/a|n>>, che tende a 1 per il caso appena visto. Notiamo che non abbiamo scritto <math|a<rsup|1/n>→a<rsup|0>=1>, perché quel ragionamento usa la continuità dell'esponenziale, che giustificheremo proprio a partire da questo risultato.

Anche <math|<sqrt|n|n>→1>, ma qui il caso è più delicato, perché il radicando cresce insieme all'indice. La stima lineare di Bernoulli darebbe soltanto <math|<sqrt|n|n>≤2-1/n>, che resta lontana da 1. Proviamo allora a tenere il termine quadratico del binomio di Newton, che è più forte. Per <math|t≥0> e <math|n≥2>

<\equation*>
(1+t)<rsup|n>≥<binom|n|2>t<rsup|2>=<frac|n(n-1)|2>t<rsup|2>.
</equation*>

Vorremmo che l'ultimo membro fosse almeno <math|n>, perché allora <math|(1+t)<rsup|n>≥n> e quindi <math|1+t≥<sqrt|n|n>>. Risolvendo <math|n(n-1)t<rsup|2>/2=n> troviamo <math|t=<sqrt|2/(n-1)>>, e questa scelta tende a zero, cioè è esattamente ciò che ci serve. Otteniamo

<\equation*>
1≤<sqrt|n|n>≤1+<sqrt|<frac|2|n-1>>→1,
</equation*>

dove l'ultima radice tende a zero perché, per renderla al massimo <math|ε>, basta prendere <math|n≥1+2/ε<rsup|2>>.

<section|Criteri della radice e del rapporto>

Partiamo da due successioni geometriche. Per <math|a<rsub|n>=(3/4)<rsup|n>> la radice <math|n>-esima vale sempre <math|3/4> e i termini tendono a zero, mentre per <math|a<rsub|n>=(5/4)<rsup|n>> la radice vale sempre <math|5/4> e i termini tendono a <math|+∞>. In generale, se la radice <math|n>-esima di una successione si stabilizza sopra 1, la successione cresce almeno come una geometrica che esplode, e se si stabilizza sotto 1 è schiacciata da una geometrica che si spegne. Questo suggerisce di confrontare con 1 il limite della radice.

<\concetto|Criterio della radice per successioni>
Supponiamo <math|a<rsub|n>≥0> definitivamente e <math|<sqrt|a<rsub|n>|n>→ℓ∈[0,+∞]>. Se <math|ℓ‹1>, allora <math|a<rsub|n>→0>. Se <math|ℓ›1>, incluso <math|ℓ=+∞>, allora <math|a<rsub|n>→+∞>. Se <math|ℓ=1>, il criterio non determina il limite di <math|(a<rsub|n>)>.
</concetto>

La dimostrazione rende precisa l'idea della geometrica. Se <math|ℓ‹1>, scegliamo un numero <math|q> strettamente compreso fra <math|ℓ> e 1. Poiché la radice tende a <math|ℓ>, che è minore di <math|q>, definitivamente <math|0≤<sqrt|a<rsub|n>|n>≤q>, e quindi <math|0≤a<rsub|n>≤q<rsup|n>→0>. Se <math|1‹ℓ‹+∞>, scegliamo invece <math|q> con <math|1‹q‹ℓ>, e otteniamo definitivamente <math|a<rsub|n>≥q<rsup|n>→+∞>. Se <math|ℓ=+∞> va bene qualunque <math|q›1>.

<figura|@IMG(geometrica)|La scelta di un numero fisso <math|q> fra il limite della radice e 1 produce una geometrica che controlla i termini da un certo indice in poi.>

Il <strong|criterio del rapporto> arriva alle stesse conclusioni guardando il rapporto fra termini consecutivi. Supponiamo <math|a<rsub|n>›0> definitivamente e <math|a<rsub|n+1>/a<rsub|n>→ℓ∈[0,+∞]>. La positività serve sia per poter dividere sia per moltiplicare le disuguaglianze senza cambiarne il verso. Se per esempio da un indice <math|N> in poi il rapporto è almeno <math|q›1>, allora ogni termine è almeno <math|q> volte il precedente, e ripetendo questo passo troviamo

<\equation*>
a<rsub|N+1>≥qa<rsub|N>,<space|1em>a<rsub|N+2>≥q<rsup|2>a<rsub|N>,<space|1em>a<rsub|n>≥a<rsub|N>q<rsup|n-N>,
</equation*>

e l'ultimo membro tende a <math|+∞>. Se invece il rapporto è al massimo <math|q‹1>, con <math|q›0>, lo stesso ragionamento dà <math|0‹a<rsub|n>≤a<rsub|N>q<rsup|n-N>→0>. Il numero <math|q> si sceglie a partire dal limite del rapporto esattamente come per la radice. In realtà, per concludere, basta il confronto definitivo con <math|q>, e non serve nemmeno sapere che il rapporto ha limite.

Quando <math|ℓ=1> entrambi i criteri tacciono, e per una buona ragione. Le successioni <math|n>, <math|1/n> e <math|1> hanno tutte rapporto e radice <math|n>-esima che tendono a 1, eppure tendono rispettivamente a <math|+∞>, a zero e a 1. Ricordiamo anche che questi sono criteri per successioni, e che non stiamo ancora parlando di serie.

<section|Dal rapporto alla radice>

Il rapporto contiene in realtà un'informazione più precisa di quella che abbiamo usato. Se <math|a<rsub|n>›0> definitivamente e <math|a<rsub|n+1>/a<rsub|n>→ℓ∈[0,+∞]>, allora anche

<\equation*>
<sqrt|a<rsub|n>|n>→ℓ.
</equation*>

L'idea è che, se ogni termine è circa <math|ℓ> volte il precedente, il termine <math|n>-esimo è circa <math|ℓ<rsup|n>>, e la sua radice <math|n>-esima è circa <math|ℓ>. Per rendere preciso questo «circa», supponiamo prima <math|0‹ℓ‹+∞> e prendiamo due numeri positivi <math|p‹ℓ‹q>. Definitivamente il rapporto sta fra <math|p> e <math|q>, e ripetendo il confronto da un opportuno indice <math|N> in poi otteniamo

<\equation*>
a<rsub|N>p<rsup|n-N>≤a<rsub|n>≤a<rsub|N>q<rsup|n-N>.
</equation*>

Prendendo le radici <math|n>-esime arriviamo a

<\equation*>
p<sqrt|a<rsub|N>p<rsup|-N>|n>≤<sqrt|a<rsub|n>|n>≤q<sqrt|a<rsub|N>q<rsup|-N>|n>.
</equation*>

I radicandi ai due lati sono costanti positive, quindi le loro radici tendono a 1, e i due estremi tendono a <math|p> e a <math|q>. Dato <math|ε›0> abbastanza piccolo rispetto a <math|ℓ>, scegliamo <math|p=ℓ-ε/2> e <math|q=ℓ+ε/2>. Definitivamente il membro di sinistra supera <math|ℓ-ε> e quello di destra resta sotto <math|ℓ+ε>, e questa è la definizione di <math|<sqrt|a<rsub|n>|n>→ℓ>.

I casi estremi si trattano con metà della stima. Se <math|ℓ=0>, per ogni <math|ε›0> usiamo soltanto la stima superiore con <math|q=ε/2>, il cui membro destro tende a <math|ε/2> e quindi resta definitivamente sotto <math|ε>. Se <math|ℓ=+∞>, per ogni quota <math|M›0> usiamo la stima inferiore con <math|p=2M>, il cui membro sinistro tende a <math|2M> e quindi supera definitivamente <math|M>.

Questo teorema funziona anche quando <math|ℓ=1>, cioè dove i criteri precedenti non decidevano nulla, perché qui non ci interessa il limite dei termini ma quello delle radici. Il viceversa invece è falso. Per la successione <math|1,2,1,2,…> le radici <math|n>-esime tendono a 1, perché stanno fra 1 e <math|<sqrt|2|n>>, ma i rapporti alternano 2 e <math|1/2> e non hanno limite.

<section|La gerarchia degli infiniti>

Ora possiamo stilare la classifica promessa. Confrontiamo <math|3<rsup|n>> con <math|n<rsup|5>> studiando <math|a<rsub|n>=3<rsup|n>/n<rsup|5>>. Il rapporto fra termini consecutivi è

<\equation*>
<frac|a<rsub|n+1>|a<rsub|n>>=3<around*|(|<frac|n|n+1>|)><rsup|5>→3›1,
</equation*>

e quindi <math|3<rsup|n>/n<rsup|5>→+∞>. L'esponenziale vince sulla potenza, per quanto alto sia l'esponente. Lo stesso calcolo funziona con qualsiasi base <math|a›1> e qualsiasi esponente intero fissato, e anche con un esponente reale <math|α›0>, perché basta scegliere un intero <math|m≥α> e usare <math|n<rsup|α>≤n<rsup|m>> per <math|n≥1>.

Il fattoriale cresce ancora più in fretta. Per <math|b<rsub|n>=n!/3<rsup|n>> il rapporto è <math|(n+1)/3>, che tende a <math|+∞>. E più in alto ancora c'è <math|n<rsup|n>>, perché per <math|c<rsub|n>=n<rsup|n>/n!> troviamo

<\equation*>
<frac|c<rsub|n+1>|c<rsub|n>>=<around*|(|1+<frac|1|n>|)><rsup|n>→e›1.
</equation*>

Possiamo riassumere la classifica dicendo che, per <math|a›1> e <math|α›0>,

<\equation*>
<frac|n<rsup|α>|a<rsup|n>>→0,<space|2em><frac|a<rsup|n>|n!>→0,<space|2em><frac|n!|n<rsup|n>>→0.
</equation*>

Il teorema che collega rapporto e radice permette di dire anche di più. Il rapporto di <math|d<rsub|n>=n!/n<rsup|n>> tende a <math|1/e>, essendo il reciproco di quello di <math|c<rsub|n>>, e quindi

<\equation*>
<frac|<sqrt|n!|n>|n>=<sqrt|<frac|n!|n<rsup|n>>|n>→<frac|1|e>.
</equation*>

In altre parole, la «media geometrica» dei numeri da 1 a <math|n> cresce come <math|n/e>.

All'estremo opposto ci sono i polinomi, che dal punto di vista delle radici <math|n>-esime sono tutti uguali. Se <math|P(n)> ha grado <math|m≥0> e coefficiente dominante <math|c›0>, allora <math|<sqrt|P(n)|n>→1>. Per vederlo separiamo il termine di grado massimo, scrivendo <math|P(n)=cn<rsup|m>(1+r<rsub|n>)> con <math|r<rsub|n>→0>. La radice <math|n>-esima di <math|c> tende a 1, e anche <math|(<sqrt|n|n>)<rsup|m>> tende a 1. Quanto all'ultimo fattore, definitivamente <math|1/2≤1+r<rsub|n>≤2>, e quindi la sua radice <math|n>-esima sta fra le radici di queste due costanti, che tendono a 1. In particolare il radicando è definitivamente positivo, e moltiplicando i tre fattori otteniamo il risultato.

La classifica aiuta anche dentro una radice. Per esempio

<\equation*>
<sqrt|7<rsup|n>-n<rsup|7>+n<rsup|5>cos(n!)|n>=7<sqrt|1-<frac|n<rsup|7>|7<rsup|n>>+<frac|n<rsup|5>cos(n!)|7<rsup|n>>|n>→7.
</equation*>

Dopo aver raccolto <math|7<rsup|n>>, entrambe le correzioni dentro la radice tendono a zero, la seconda anche in valore assoluto, quindi il radicando tende a 1. In particolare sta definitivamente fra <math|1/2> e 2, e la sua radice <math|n>-esima sta fra <math|<sqrt|1/2|n>> e <math|<sqrt|2|n>>, che tendono entrambe a 1. Lo stesso confronto ci assicura che il radicando è positivo, e quindi che la radice è definita.

<section|Cancellazioni e somme con molti termini>

La classifica degli infiniti ha però un limite importante, perché non ci autorizza a buttare via un termine prima di una sottrazione. In <math|<sqrt|n<rsup|2>+7n+4>-n> i due pezzi crescono entrambi come <math|n>, e questa parte principale si cancella, così che a decidere il limite è proprio la correzione che sembrava trascurabile. Per far emergere la correzione usiamo l'identità <math|(u-v)(u+v)=u<rsup|2>-v<rsup|2>>:

<\equation*>
<sqrt|n<rsup|2>+7n+4>-n=<frac|7n+4|<sqrt|n<rsup|2>+7n+4>+n>=<frac|7+4/n|<sqrt|1+7/n+4/n<rsup|2>>+1>→<frac|7|2>.
</equation*>

Per giustificare che la radice al denominatore tende a 1, osserviamo che per <math|t≥-1>

<\equation*>
\|<sqrt|1+t>-1\|=<frac|\|t\||<sqrt|1+t>+1>≤\|t\|,
</equation*>

e con <math|t=7/n+4/n<rsup|2>> il membro destro tende a zero.

<subsection|La stessa idea per una radice cubica>

Con le radici cubiche l'identità giusta è <math|u<rsup|3>-v<rsup|3>=(u-v)(u<rsup|2>+uv+v<rsup|2>)>. Poniamo <math|u<rsub|n>=<sqrt|n<rsup|3>+7n<rsup|2>+4|3>>, così la differenza diventa

<\equation*>
u<rsub|n>-n=<frac|7n<rsup|2>+4|u<rsub|n><rsup|2>+nu<rsub|n>+n<rsup|2>>=<frac|7+4/n<rsup|2>|(u<rsub|n>/n)<rsup|2>+u<rsub|n>/n+1>.
</equation*>

Basta allora dimostrare che <math|u<rsub|n>/n→1> per ottenere il limite <math|7/3>. Questo rapporto è <math|<sqrt|1+7/n+4/n<rsup|3>|3>>, e possiamo controllarlo come prima. Se <math|u=<sqrt|1+t|3>≥0>, l'identità dà <math|\|u-1\|=\|t\|/(u<rsup|2>+u+1)≤\|t\|>, quindi anche la radice cubica tende a 1 quando <math|t→0>.

<subsection|Quanti addendi stiamo sommando?>

Un altro tranello è applicare il teorema della somma quando il numero di addendi cresce con <math|n>. Il teorema parla di due successioni, o di un numero fisso di successioni, e non dice nulla su una somma che si allunga. Prendiamo <math|s<rsub|n>=<big|sum><rsub|k=n><rsup|2n>1/k<rsup|2>>. Ci sono <math|n+1> addendi, ciascuno al massimo <math|1/n<rsup|2>>, quindi

<\equation*>
0≤s<rsub|n>≤<frac|n+1|n<rsup|2>>→0.
</equation*>

Qui gli addendi sono così piccoli da compensare il loro numero. Con <math|<big|sum><rsub|k=n><rsup|2n>1/<sqrt|k>> succede il contrario, perché ogni addendo è almeno <math|1/<sqrt|2n>> e la somma è almeno <math|(n+1)/<sqrt|2n>>, che tende a <math|+∞>, anche se ogni singolo addendo tende a zero. Bisogna sempre tenere d'occhio insieme la grandezza dei termini e il loro numero.

<subsection|Per proseguire: una somma che richiede monotonia>

C'è anche un caso intermedio. Per <math|h<rsub|n>=<big|sum><rsub|k=n><rsup|2n>1/k> le stime più semplici, ottenute sostituendo ogni addendo con il più piccolo o con il più grande, danno

<\equation*>
<frac|n+1|2n>≤h<rsub|n>≤<frac|n+1|n>.
</equation*>

Gli estremi tendono a <math|1/2> e a 1, che sono diversi, e quindi i carabinieri non bastano. Possiamo però guardare come cambia la somma passando da <math|n> a <math|n+1>. Perdiamo il primo addendo <math|1/n> e ne guadagniamo due in fondo:

<\equation*>
h<rsub|n+1>-h<rsub|n>=<frac|1|2n+1>+<frac|1|2n+2>-<frac|1|n>≤0.
</equation*>

La successione è dunque decrescente e limitata inferiormente, e per il teorema delle successioni monotone converge, con un limite compreso fra <math|1/2> e 1. Per trovarne il valore esatto servirebbe un argomento in più, di cui qui non abbiamo bisogno.

<\verifica|9>
<strong|1.> Calcola il limite di <math|<sqrt|<binom|3n|n>|n>>. Scrivi <math|a<rsub|n>=(3n)!/(n!(2n)!)> e studia <math|a<rsub|n+1>/a<rsub|n>>. Nel rapporto lascia scritti soltanto i fattori nuovi: tre al numeratore, uno e due al denominatore. Poi usa il legame fra rapporto e radice.

<strong|2.> Calcola <math|lim<rsub|n→+∞>(<sqrt|n<rsup|2>-7n+2>-n)>. Controlla che il radicando sia positivo definitivamente e confronta la radice con <math|n>. Che segno ti aspetti per il risultato?
</verifica>
