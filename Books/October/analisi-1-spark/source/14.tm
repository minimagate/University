<chapter|Taylor e funzioni iperboliche>

<\inbreve>
Come usiamo Taylor in un prodotto, in una composizione o in una potenza variabile? Partiamo dagli sviluppi già noti e controlliamo l'errore dopo ogni operazione. Impareremo a scegliere quanti termini conservare e incontreremo le funzioni iperboliche.
</inbreve>

<section|Cambiare centro: lavorare con l'incremento>

Vicino a 2, per usare lo sviluppo del logaritmo, scriviamo <math|x=2+h>. È <math|h=x-2> che tende a zero. Separiamo il valore di partenza:

<\equation*>
log(2+h)=log2+log(1+h/2).
</equation*>

Adesso l'argomento piccolo è <math|h/2>. Possiamo usare lo sviluppo di <math|log(1+t)> in <math|t=0> e ottenere

<\equation*>
log(2+h)=log2+<frac|h|2>-<frac|h<rsup|2>|8>+<frac|h<rsup|3>|24>+o(h<rsup|3>).
</equation*>

Scrivere invece <math|log x=log(1+(x-1))> non aiuterebbe per <math|x→2>: in quel caso <math|x-1→1>, mentre lo sviluppo che conosciamo richiede un argomento che tenda a zero.

In generale, per studiare <math|f> vicino a <math|x<rsub|0>>, poniamo <math|h=x-x<rsub|0>> e applichiamo Taylor alla funzione <math|h↦f(x<rsub|0>+h)>. Con le ipotesi del capitolo precedente, traslate nel nuovo centro, troviamo

<\equation*>
f(x<rsub|0>+h)=<big|sum><rsub|k=0><rsup|m><frac|f<rsup|(k)>(x<rsub|0>)|k!>h<rsup|k>+o(h<rsup|m>).
</equation*>

<section|Somme e prodotti: quali termini conservare>

Supponiamo <math|f=P+o(x<rsup|m>)> e <math|g=Q+o(x<rsup|m>)>, dove <math|P,Q> sono polinomi di grado al più <math|m>, con <math|m≥1> intero.

Sommando, troviamo <math|f+g=P+Q+o(x<rsup|m>)>. La precisione comune resta la stessa.

Nel prodotto, scriviamo i resti come <math|x<rsup|m>ω<rsub|1>> e <math|x<rsup|m>ω<rsub|2>>. Allora

<\equation*>
fg=PQ+x<rsup|m>(Pω<rsub|2>+Qω<rsub|1>+x<rsup|m>ω<rsub|1>ω<rsub|2>).
</equation*>

I polinomi sono limitati vicino a zero e gli <math|ω<rsub|i>> tendono a zero: la parentesi tende a zero. Quindi <math|fg=PQ+o(x<rsup|m>)>.

Il prodotto dei polinomi può avere grado maggiore di <math|m>, ma quei termini aggiuntivi sono già <math|o(x<rsup|m>)> e si possono scartare.

Per esempio, per conoscere <math|sin x cos x> fino al grado 5 moltiplichiamo <math|x-x<rsup|3>/6+x<rsup|5>/120> per <math|1-x<rsup|2>/2+x<rsup|4>/24>.

Al grado 3 contribuiscono <math|x·(-x<rsup|2>/2)> e <math|(-x<rsup|3>/6)·1>. Al grado 5 contribuiscono <math|x·x<rsup|4>/24>, <math|(-x<rsup|3>/6)(-x<rsup|2>/2)> e <math|(x<rsup|5>/120)·1>. I coefficienti sono quindi

<\equation*>
-<frac|1|2>-<frac|1|6>=-<frac|2|3>,<space|2em><frac|1|24>+<frac|1|12>+<frac|1|120>=<frac|2|15>.
</equation*>

Dunque <math|sin x cos x=x-2x<rsup|3>/3+2x<rsup|5>/15+o(x<rsup|5>)>. Lo sviluppo di <math|sin(2x)/2> fornisce un controllo indipendente degli stessi coefficienti.

<section|Composizione: argomento e precisione>

Consideriamo <math|sin(x+x<rsup|3>)> e cerchiamo uno sviluppo con resto <math|o(x<rsup|3>)>. L'argomento interno tende a zero: possiamo partire dallo sviluppo del seno in zero. Dobbiamo però sostituire l'intero argomento in ogni sua potenza.

<\guidato|Prima comporre, poi scegliere i gradi>
Poniamo <math|u=x+x<rsup|3>>. Lo sviluppo del seno dà <math|sin u=u-u<rsup|3>/6+o(u<rsup|3>)>. Il termine lineare diventa <math|x+x<rsup|3>>. Per il cubo facciamo il conto completo:

<\equation*>
(x+x<rsup|3>)<rsup|3>=x<rsup|3>+3x<rsup|5>+3x<rsup|7>+x<rsup|9>.
</equation*>

Ci interessano i gradi fino a 3. I gradi 5, 7 e 9 sono tutti <math|o(x<rsup|3>)>, quindi il cubo contribuisce con <math|x<rsup|3>> e un resto trascurabile.

Anche il resto esterno va controllato. Se lo scriviamo <math|u<rsup|3>ω(u)> con <math|ω(u)→0>, dopo la sostituzione diventa

<\equation*>
x<rsup|3>(1+x<rsup|2>)<rsup|3>ω(x+x<rsup|3>)=o(x<rsup|3>).
</equation*>

Il fattore <math|(1+x<rsup|2>)<rsup|3>> è limitato e l'altro tende a zero. Possiamo quindi raccogliere i termini del grado richiesto:

<\equation*>
sin(x+x<rsup|3>)=x+x<rsup|3>-<frac|x<rsup|3>|6>+o(x<rsup|3>)=x+<frac|5|6>x<rsup|3>+o(x<rsup|3>).
</equation*>

Sostituire soltanto nel termine lineare avrebbe dato il coefficiente 1 al posto di <math|5/6>. Il cubo dell'argomento contribuisce allo stesso grado e deve essere considerato.
</guidato>

<subsection|Un argomento che cambia la scala del resto>

In <math|sin(x<rsup|3>)> i gradi cambiano in un altro modo: ogni potenza dell'argomento diventa una potenza di grado triplo in <math|x>. I primi gradi sono quindi 3, 9 e 15.

Se vogliamo un resto <math|o(x<rsup|14>)>, i primi due termini bastano nel polinomio finale. Per giustificare l'errore, però, partiamo da un ordine che controlli anche il grado successivo. Taylor del seno fino all'ordine 5 dà

<\equation*>
sin(x<rsup|3>)=x<rsup|3>-<frac|x<rsup|9>|6>+<frac|x<rsup|15>|120>+o(x<rsup|15>).
</equation*>

Il termine di grado 15 e il suo resto sono entrambi <math|o(x<rsup|14>)>. Quindi

<\equation*>
sin(x<rsup|3>)=x<rsup|3>-<frac|x<rsup|9>|6>+o(x<rsup|14>).
</equation*>

In generale, sostituendo <math|t=ax<rsup|b>> in un resto <math|o(t<rsup|m>)>, con <math|a≠0> e <math|b›0>, otteniamo <math|o(x<rsup|bm>)>. Infatti il resto diventa <math|a<rsup|m>x<rsup|bm>ω(ax<rsup|b>)>. Per esponenti non interi scegliamo un lato sul quale le potenze siano definite.

<subsection|La composizione di due sviluppi: perché funziona>

Supponiamo che <math|f,g> abbiano in zero polinomi di Taylor <math|P,Q> all'ordine <math|m≥1> e che <math|f(0)=0>. Sul dominio della composta vale

<\equation*>
g(f(x))=Q(P(x))+o(x<rsup|m>).
</equation*>

Dal polinomio composto scartiamo poi i gradi maggiori di <math|m>. Per giustificare la formula dobbiamo controllare due errori: quello già presente nello sviluppo esterno e quello prodotto sostituendo <math|P> a <math|f>.

Il primo è <math|o(t<rsup|m>)> con <math|t=f(x)>. Poiché <math|P(0)=0>, il polinomio <math|P> è <math|x> per un altro polinomio. Dallo sviluppo di <math|f> segue quindi <math|f(x)=O(x)> e <math|f(x)→0>. La regola sui resti del capitolo 11 dà <math|o(f(x)<rsup|m>)=o(x<rsup|m>)>.

Per il secondo errore guardiamo prima un quadrato:

<\equation*>
f<rsup|2>-P<rsup|2>=(f-P)(f+P).
</equation*>

Il primo fattore è <math|o(x<rsup|m>)>; il secondo è limitato vicino a zero. Anche la loro differenza di quadrati è dunque <math|o(x<rsup|m>)>.

Per una potenza qualsiasi usiamo la stessa fattorizzazione:

<\equation*>
f<rsup|k>-P<rsup|k>=(f-P)<big|sum><rsub|j=0><rsup|k-1>f<rsup|k-1-j>P<rsup|j><space|1em>(k≥1).
</equation*>

La somma ha un numero fisso di termini, tutti limitati. Quindi ogni potenza cambia soltanto di <math|o(x<rsup|m>)>. Possiamo sostituire <math|f> con <math|P> in ciascun termine di <math|Q> e sommare gli errori.

Se <math|f(x)=0> in qualche punto, usiamo il resto esterno prolungato con valore zero nel centro, come nel capitolo 11. I termini di <math|Q(P)> con grado maggiore di <math|m> sono già <math|o(x<rsup|m>)>, e questo giustifica l'ultima selezione dei gradi.

<subsection|Il centro esterno: coseno del seno e seno del coseno>

Per <math|cos(sin x)> il centro esterno è zero. Prima calcoliamo le potenze dell'argomento che servono:

<\equation*>
sin<rsup|2>x=x<rsup|2>-<frac|x<rsup|4>|3>+o(x<rsup|4>),<space|1em>sin<rsup|4>x=x<rsup|4>+o(x<rsup|4>).
</equation*>

Inserendole in <math|cos u=1-u<rsup|2>/2+u<rsup|4>/24+o(u<rsup|4>)>, otteniamo

<\equation*>
cos(sin x)=1-<frac|x<rsup|2>|2>+<frac|5|24>x<rsup|4>+o(x<rsup|4>).
</equation*>

Per <math|sin(cos x)> il centro esterno è invece 1. Per usare Taylor scriviamo l'argomento come <math|1+h>, dove

<\equation*>
h=cos x-1=-<frac|x<rsup|2>|2>+o(x<rsup|3>).
</equation*>

Vogliamo conservare un resto <math|o(x<rsup|3>)>. Lo sviluppo lineare del seno con errore <math|o(h)> darebbe soltanto <math|o(x<rsup|2>)>, che non basta. Passiamo perciò al secondo ordine esterno:

<\equation*>
sin(1+h)=sin1+cos1·h-<frac|sin1|2>h<rsup|2>+o(h<rsup|2>).
</equation*>

Poiché <math|h=O(x<rsup|2>)>, il suo quadrato è <math|O(x<rsup|4>)=o(x<rsup|3>)>. Anche il resto composto è trascurabile alla scala richiesta. Rimane

<\equation*>
sin(cos x)=sin1-<frac|cos1|2>x<rsup|2>+o(x<rsup|3>).
</equation*>

Il termine quadratico esterno non compare nel risultato, ma è servito a garantire la precisione del resto.

<section|Parte principale e ordine di infinitesimo>

Confrontiamo <math|sin x> e <math|arctan x>. Entrambe iniziano con <math|x>, quindi nella differenza i termini lineari scompaiono. Al grado 3 troviamo

<\equation*>
sin x-arctan x=<around*|(|-<frac|1|6>+<frac|1|3>|)>x<rsup|3>+o(x<rsup|3>)=<frac|x<rsup|3>|6>+o(x<rsup|3>).
</equation*>

Il primo termine che rimane descrive la nuova scala della differenza.

<\concetto|Parte principale>
Se <math|f(x)=ax<rsup|b>+o(x<rsup|b>)>, con <math|a≠0>, il monomio <math|ax<rsup|b>> è la parte principale di <math|f> rispetto a <math|x>. Quando <math|b›0>, <math|f> è un infinitesimo di ordine <math|b>. Con Taylor cerchiamo il monomio di grado più basso con coefficiente non nullo, dopo le cancellazioni.
</concetto>

Perciò <math|(sin x-arctan x)/(e<rsup|x<rsup|3>>-1)→1/6>: sopra abbiamo <math|x<rsup|3>/6+o(x<rsup|3>)>, sotto <math|x<rsup|3>+o(x<rsup|3>)>. Raccogliendo <math|x<rsup|3>> compare un rapporto di quantità che tendono a <math|1/6> e 1.

Per una differenza di reciproci è utile prima fare il denominatore comune:

<\equation*>
<frac|1|sin x>-<frac|1|x>=<frac|x-sin x|x sin x>=<frac|x<rsup|3>/6+o(x<rsup|3>)|x<rsup|2>+o(x<rsup|2>)>=<frac|x|6>+o(x).
</equation*>

Anche le derivate si possono leggere dai coefficienti, se sappiamo già che esistono.

Per <math|f(x)=(sin x)<rsup|3>> moltiplichiamo tre copie di <math|x-x<rsup|3>/6+o(x<rsup|3>)>. Il termine di grado 3 viene scegliendo <math|x> in tutti i fattori. Per arrivare al grado 5 dobbiamo scegliere il termine cubico in uno dei tre fattori e il termine lineare negli altri due: ci sono tre scelte.

Il contributo è quindi <math|3x<rsup|2>(-x<rsup|3>/6)=-x<rsup|5>/2>.

Anche il resto ha la precisione richiesta: ciascun <math|o(x<rsup|3>)> viene moltiplicato per due fattori <math|O(x)>, e dà quindi <math|o(x<rsup|5>)>. I prodotti con almeno due termini cubici hanno grado almeno 7, già trascurabile. Otteniamo <math|f=x<rsup|3>-x<rsup|5>/2+o(x<rsup|5>)>. Dal coefficiente <math|f<rsup|(5)>(0)/5!=-1/2> otteniamo <math|f<rsup|(5)>(0)=-60>. L'unicità identifica il coefficiente; non crea derivate che non abbiamo giustificato.

<section|Reciproci e potenze variabili>

Per ottenere lo sviluppo di <math|tan x> dividiamo quelli del seno e del coseno. Invertiamo prima il denominatore con <math|1/(1+t)=1-t+t<rsup|2>-t<rsup|3>+o(t<rsup|3>)>.

Qui <math|t=cos x-1=-x<rsup|2>/2+x<rsup|4>/24+o(x<rsup|5>)> è <math|O(x<rsup|2>)>. Il cubo e il resto composto sono <math|o(x<rsup|5>)>.

Nel termine <math|-t> troviamo <math|x<rsup|2>/2-x<rsup|4>/24>; nel termine <math|t<rsup|2>> troviamo <math|x<rsup|4>/4+o(x<rsup|5>)>. Il coefficiente di grado 4 è dunque <math|-1/24+1/4=5/24>. Quindi

<\equation*>
<frac|1|cos x>=1+<frac|x<rsup|2>|2>+<frac|5|24>x<rsup|4>+o(x<rsup|5>).
</equation*>

Moltiplichiamo per <math|sin x=x-x<rsup|3>/6+x<rsup|5>/120+o(x<rsup|5>)>. Al grado 3 il coefficiente è <math|1/2-1/6=1/3>; al grado 5 è <math|5/24-1/12+1/120=2/15>. Dunque

<\equation*>
tan x=x+<frac|x<rsup|3>|3>+<frac|2x<rsup|5>|15>+o(x<rsup|5>).
</equation*>

Un controllo usa l'inversa: inserendo <math|x+ax<rsup|3>+bx<rsup|5>> nello sviluppo di <math|arctan> e imponendo <math|arctan(tan x)=x> troviamo <math|a-1/3=0> e <math|b-a+1/5=0>. Ritornano gli stessi coefficienti.

<subsection|Una potenza variabile: prima studiare l'esponente>

Nelle potenze variabili usiamo prima esponenziale e logaritmo. Per <math|(1+sin x)<rsup|x>> la base è positiva vicino a zero e

<\equation*>
(1+sin x)<rsup|x>=e<rsup|u(x)>,<space|2em>u(x)=x log(1+sin x).
</equation*>

Il fattore esterno <math|x> indica che, per arrivare al grado 3 nell'esponente, basta il logaritmo al grado 2. Troviamo <math|log(1+sin x)=x-x<rsup|2>/2+o(x<rsup|2>)>, dunque <math|u=x<rsup|2>-x<rsup|3>/2+o(x<rsup|3>)>.

Poiché <math|u=O(x<rsup|2>)>, lo sviluppo <math|e<rsup|u>=1+u+u<rsup|2>/2+o(u<rsup|2>)> garantisce un errore <math|o(x<rsup|3>)> dopo il termine lineare. Ne segue

<\equation*>
(1+sin x)<rsup|x>=1+x<rsup|2>-<frac|x<rsup|3>|2>+o(x<rsup|3>).
</equation*>

<subsection|Una potenza che tende a e>

Per <math|(1+x)<rsup|1/x>-e> dobbiamo isolare quanto l'esponente si discosta da 1. Lo sviluppo del logaritmo dà

<\equation*>
<frac|log(1+x)|x>=1-<frac|x|2>+o(x).
</equation*>

Usiamo <math|e<rsup|v>-1=v+o(v)> con <math|v=log(1+x)/x-1=-x/2+o(x)>. Otteniamo

<\equation*>
(1+x)<rsup|1/x>-e=e<around*|(|e<rsup|log(1+x)/x-1>-1|)>=-<frac|e|2>x+o(x),
</equation*>

La parte principale è dunque <math|-ex/2>. Il passaggio al logaritmo ha trasformato una potenza variabile in un piccolo incremento dell'esponente.

<section|Funzioni iperboliche: una nuova lettura dell'esponenziale>

L'esponenziale si può separare in una parte pari e una dispari. La metà della somma di <math|e<rsup|x>> ed <math|e<rsup|-x>> è pari; la metà della loro differenza è dispari. Definiamo

<\equation*>
sinh x=<frac|e<rsup|x>-e<rsup|-x>|2>,<space|1.5em>cosh x=<frac|e<rsup|x>+e<rsup|-x>|2>,<space|1.5em>tanh x=<frac|sinh x|cosh x>.
</equation*>

Sono il <strong|seno iperbolico>, il <strong|coseno iperbolico> e la <strong|tangente iperbolica>. Il coseno iperbolico è sempre positivo, quindi tutte e tre sono definite su <math|ℝ>. Inoltre <math|cosh x+sinh x=e<rsup|x>>. Queste definizioni non richiedono nuovi tipi di limite: tutto si ricava dagli esponenziali.

Il seno e la tangente iperbolici sono dispari; il coseno iperbolico è pari. Per <math|x→+∞>, <math|sinh x> e <math|cosh x> tendono a <math|+∞>, mentre

<\equation*>
tanh x=<frac|1-e<rsup|-2x>|1+e<rsup|-2x>>→1.
</equation*>

Per simmetria, a <math|-∞> il seno tende a <math|-∞>, il coseno a <math|+∞> e la tangente a <math|-1>. Non sono periodiche.

<subsection|Monotonia e identità fondamentali>

<math|sinh> cresce strettamente perché <math|e<rsup|x>> cresce e <math|-e<rsup|-x>> cresce;

<math|tanh> cresce perché <math|(z-1)/(z+1)> cresce per <math|z›0> e <math|z=e<rsup|2x>> cresce.

Il minimo di <math|cosh> è 1 in zero: <math|e<rsup|x>+e<rsup|-x>-2=(e<rsup|x/2>-e<rsup|-x/2>)<rsup|2>≥0>. Sul semiasse positivo cresce. Per vederlo, se <math|1≤z‹w>, la differenza fra i valori <math|w+1/w> e <math|z+1/z> è <math|(w-z)(1-1/(wz))›0>. Applichiamo questo confronto a <math|z=e<rsup|x>>.

<figura|@IMG(iperboliche)|Il coseno iperbolico è pari e ha minimo 1; il seno iperbolico passa per l'origine. La tangente iperbolica resta tra <math|-1> e 1 e si avvicina ai due asintoti.>

Sottraendo i quadrati delle definizioni si cancellano <math|e<rsup|2x>> ed <math|e<rsup|-2x>>. Resta la relazione fondamentale

<\equation*>
cosh<rsup|2>x-sinh<rsup|2>x=1.
</equation*>

Sommando invece i quadrati otteniamo <math|cosh(2x)=cosh<rsup|2>x+sinh<rsup|2>x>; moltiplicando le definizioni troviamo <math|sinh(2x)=2sinh x cosh x>. I segni differiscono da quelli trigonometrici: qui la relazione fondamentale è una differenza di quadrati.

<subsection|Derivate e sviluppi>

Derivando gli esponenziali nelle definizioni troviamo

<\equation*>
(sinh x)<rprime|'>=cosh x,<space|1.5em>(cosh x)<rprime|'>=sinh x,<space|1.5em>(tanh x)<rprime|'>=<frac|1|cosh<rsup|2>x>=1-tanh<rsup|2>x.
</equation*>

La metà della somma e la metà della differenza degli sviluppi di <math|e<rsup|x>> ed <math|e<rsup|-x>> danno

<\equation*>
sinh x=x+<frac|x<rsup|3>|6>+<frac|x<rsup|5>|120>+o(x<rsup|5>),
</equation*>

<\equation*>
cosh x=1+<frac|x<rsup|2>|2>+<frac|x<rsup|4>|24>+o(x<rsup|5>).
</equation*>

I coefficienti presenti sono tutti positivi. In particolare <math|tanh x∼x> per <math|x→0>.

<subsection|Per proseguire: inverse e settori iperbolici>

Il seno iperbolico è una biiezione <math|ℝ→ℝ>; la tangente iperbolica è una biiezione <math|ℝ→(-1,1)>. Il coseno iperbolico va ristretto a <math|[0,+∞)> per essere invertibile; la sua immagine è <math|[1,+∞)>.

Le inverse si chiamano anche <strong|settori iperbolici>, qui indicati con <math|<math-up|Sett sinh>>, <math|<math-up|Sett cosh>> e <math|<math-up|Sett tanh>>.

Ricaviamo la formula del settore coseno iperbolico. Per <math|y≥1> cerchiamo <math|t≥0> con <math|cosh t=y>. Ponendo <math|z=e<rsup|t>> l'equazione diventa <math|z<rsup|2>-2yz+1=0>, con radici <math|y±<sqrt|y<rsup|2>-1>>. Entrambe sono positive e hanno prodotto 1.

Siccome <math|t≥0> richiede <math|z≥1>, scegliamo il segno positivo:

<\equation*>
<math-up|Sett cosh>(y)=log(y+<sqrt|y<rsup|2>-1>)<space|2em>(y≥1).
</equation*>

La relazione fondamentale colloca <math|(cosh α,sinh α)> sull'iperbole <math|X<rsup|2>-Y<rsup|2>=1>. Il parametro <math|α≥0> misura il doppio dell'area del settore compreso tra l'asse orizzontale, l'arco di iperbole e il raggio verso quel punto. Questo fatto geometrico è enunciato senza dimostrazione nelle fonti e qui resta un'interpretazione, non uno strumento di calcolo.

<figura|@IMG(iperbole)|Il parametro circolare e quello iperbolico si leggono attraverso l'area di un settore: in entrambi i disegni l'area indicata è <math|α/2>. Le curve soddisfano rispettivamente una somma e una differenza di quadrati uguale a 1.>

La lezione anticipa anche il legame complesso: usando la formula di Eulero e le estensioni complesse delle funzioni, <math|cosh(ix)=cos x> e <math|sinh(ix)=i sin x>. Si tratta di un collegamento futuro. Il teorema reale di Taylor con resto di Peano, da solo, non autorizza a sostituire numeri complessi né a trasformare uno sviluppo finito in una serie infinita.

<new-page>

<section|Scegliere l'ordine: un limite completo>

Consideriamo il rapporto

<\equation*>
<frac|log(1+sin<rsup|2>x)-x<rsup|2>|sin<rsup|2>(tanh<rsup|2>x)-x<rsup|5>>.
</equation*>

Prima guardiamo il denominatore. Siccome <math|tanh x∼x>, abbiamo <math|tanh<rsup|2>x∼x<rsup|2>> e <math|sin(tanh<rsup|2>x)∼x<rsup|2>>. Quindi il suo quadrato è <math|x<rsup|4>+o(x<rsup|4>)>. Il termine <math|x<rsup|5>> è trascurabile e la parte principale del denominatore è <math|x<rsup|4>>.

Al numeratore invece il termine di grado 2 viene sottratto: dobbiamo arrivare al grado 4. Sviluppiamo prima il quadrato del seno:

<\equation*>
sin<rsup|2>x=x<rsup|2>-<frac|x<rsup|4>|3>+o(x<rsup|4>).
</equation*>

Poi sostituiamo <math|t=sin<rsup|2>x> in <math|log(1+t)=t-t<rsup|2>/2+o(t<rsup|2>)>. Poiché <math|t∼x<rsup|2>>, il resto è <math|o(x<rsup|4>)>. Ne segue

<\equation*>
log(1+sin<rsup|2>x)=x<rsup|2>-<frac|x<rsup|4>|3>-<frac|x<rsup|4>|2>+o(x<rsup|4>)=x<rsup|2>-<frac|5|6>x<rsup|4>+o(x<rsup|4>).
</equation*>

Il limite del rapporto vale quindi <math|-5/6>. Abbiamo usato ordini diversi nei singoli pezzi: al denominatore bastavano equivalenze che non subivano cancellazioni; al numeratore occorreva un termine ulteriore.

<subsection|Controllare il centro anche nelle successioni>

Per una successione vale lo stesso criterio sul centro. L'argomento <math|1/n> tende a zero e ammette gli sviluppi in zero. L'argomento <math|n> tende invece all'infinito: in <math|(2cos n-2+n<rsup|2>)/n<rsup|4>> non si può sostituire il polinomio locale del coseno. La limitatezza <math|\|cos n\|≤1> dà direttamente il limite zero.

<\verifica|14>
<strong|1.> Calcola <math|lim<rsub|n→+∞>n<rsup|2>(1-n arctan(1/n))>. Spiega fino a quale ordine serve conoscere l'arcotangente.

<strong|2.> Determina la parte principale di <math|(n<rsup|3>+5)/(n<rsup|3>-2)-4<rsup|1/n>> per <math|n→+∞>. I due termini tendono a 1: quale si discosta da 1 più lentamente?

<strong|3.> Calcola <math|lim<rsub|x→0><frac|(1+x)<rsup|1/3>+(1-x)<rsup|1/3>-2|1-cos x+x<rsup|4>>>.
</verifica>
