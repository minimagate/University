<chapter|Simboli di Landau ed equivalenze asintotiche>

<\inbreve>
Sappiamo che <math|sin x/x> tende a 1 vicino a zero, e quindi viene voglia di sostituire il seno con <math|x> dentro i calcoli. A volte la sostituzione funziona benissimo, altre volte produce risultati sbagliati, e per capire la differenza dobbiamo sapere quanto è grande l'errore che commettiamo. I simboli di Landau servono proprio a questo, perché permettono di scrivere un errore senza conoscerlo esattamente, dicendo soltanto quanto è piccolo.
</inbreve>

<section|O piccolo: misurare un errore rispetto a una scala>

Confrontiamo <math|x+x<rsup|2>> con <math|x> vicino a zero. La differenza è <math|x<rsup|2>>, e dividendola per <math|x> otteniamo <math|x>, che tende a zero. L'errore che commettiamo sostituendo <math|x+x<rsup|2>> con <math|x> è quindi piccolo anche in confronto alla quantità con cui stiamo lavorando, e lo scriviamo così:

<\equation*>
x+x<rsup|2>=x+o(x)<space|2em>(x→0).
</equation*>

La lettera <math|o> si legge «o piccolo». La scrittura non ci dice quanto vale l'errore, ci dice solo una sua proprietà, cioè che diventa trascurabile rispetto a <math|x>. In questo esempio l'errore è esattamente <math|x<rsup|2>>, ma anche <math|x<rsup|3>> o <math|x sin x> avrebbero la stessa proprietà, e tutti verrebbero indicati con <math|o(x)>.

<\concetto|O piccolo>
Fissato un limite <math|x→x<rsub|0>>, scriviamo <math|f=o(g)> se, vicino al punto considerato, possiamo scrivere <math|f(x)=g(x)ω(x)> con <math|ω(x)→0>. Se <math|g(x)≠0> nell'intorno bucato, ciò equivale a <math|f(x)/g(x)→0>.
</concetto>

Il punto <math|x<rsub|0>> può essere finito o infinito, e può anche essere raggiunto da un solo lato, ma va sempre dichiarato, perché cambiando punto cambia tutto. Per <math|x→0> vale <math|x<rsup|2>=o(x)>, mentre per <math|x→+∞> vale il contrario, <math|x=o(x<rsup|2>)>. Lo stesso rapporto che vicino a zero è piccolo diventa grande all'infinito.

Vicino a zero le potenze si ordinano in modo semplice. Per esponenti interi, <math|x<rsup|a>=o(x<rsup|b>)> esattamente quando <math|a›b>, perché il rapporto è <math|x<rsup|a-b>>. Per esponenti reali non interi conviene limitarsi a <math|x→0<rsup|+>>, dove le potenze sono definite. Notiamo anche che l'o piccolo non richiede che le funzioni tendano a zero. Per esempio <math|1/x<rsup|2>=o(1/x<rsup|3>)> per <math|x→0>, anche se entrambe esplodono.

<figura|@IMG(potenze-zero)|Per <math|0‹x‹1>, le potenze più alte sono più piccole. Il rapporto distingue la scala: <math|x<rsup|3>/x<rsup|2>=x→0>.>

Scrivere <math|f=g+o(g)> significa quindi che la differenza <math|f-g> è trascurabile rispetto a <math|g>. Non significa che <math|f> e <math|g> siano uguali, perché il resto è una funzione vera, in generale diversa da zero, e come vedremo a volte è proprio lei a decidere il risultato.

<section|Equivalenza asintotica e O grande>

Quando due quantità hanno lo stesso comportamento relativo, il loro rapporto tende a 1. In questo caso scriviamo <math|f∼g> e parliamo di <strong|equivalenza asintotica>. Per esempio <math|sin x∼x> per <math|x→0>. Come per l'o piccolo, la definizione generale usa una fattorizzazione, <math|f=gω> con <math|ω→1>, e quando <math|g> non si annulla vicino al punto le tre scritture seguenti dicono la stessa cosa:

<\equation*>
f∼g<space|1em>⇔<space|1em><frac|f|g>→1<space|1em>⇔<space|1em>f=g+o(g).
</equation*>

Il simbolo <math|f=O(g)>, che si legge «O grande», è meno esigente. Chiede soltanto che <math|f=gω> con <math|ω> limitata vicino al punto, e se <math|g≠0> questo significa che esiste <math|C›0> con <math|\|f(x)\|≤C\|g(x)\|>. Per esempio <math|x sin(1/x)=O(x)> per <math|x→0>, perché il rapporto con <math|x> sta fra <math|-1> e 1, ma non è <math|o(x)>, perché quel rapporto continua a oscillare senza tendere a zero. Ogni o piccolo è anche un O grande, ma non viceversa.

Le equivalenze si comportano bene con prodotti e quozienti. Se <math|f∼g> e <math|u∼v>, allora <math|fu∼gv>, perché <math|(fu)/(gv)=(f/g)(u/v)→1>, e lo stesso ragionamento funziona per i quozienti, dove hanno senso.

Con le differenze, invece, bisogna fare molta attenzione. Le due quantità <math|x+x<rsup|2>> e <math|x> sono entrambe equivalenti a <math|x>, ma la loro differenza esatta è

<\equation*>
(x+x<rsup|2>)-x=x<rsup|2>.
</equation*>

Se prima sostituissimo entrambe con <math|x>, la differenza diventerebbe zero. L'equivalenza ha buttato via il termine che, dopo la sottrazione, diventa l'unico rimasto. Per ritrovarlo dobbiamo conoscere l'errore a una scala più piccola, ed è il lavoro che faremo con gli sviluppi.

<section|Calcolare con i resti e comporre>

Per usare i resti nei calcoli ci servono alcune regole, e tutte seguono dalla definizione con la fattorizzazione. Basta seguire il fattore che tende a zero. Se <math|r<rsub|1>=gω<rsub|1>> e <math|r<rsub|2>=gω<rsub|2>>, con <math|ω<rsub|1>,ω<rsub|2>→0>, allora

<\equation*>
r<rsub|1>+r<rsub|2>=g(ω<rsub|1>+ω<rsub|2>)=o(g),
</equation*>

e la stessa prova funziona per la differenza e per la moltiplicazione per una costante. Per un prodotto troviamo <math|r<rsub|1>r<rsub|2>=g<rsup|2>ω<rsub|1>ω<rsub|2>=o(g<rsup|2>)>, e quindi, per esempio, <math|o(x)·o(x)=o(x<rsup|2>)>. Moltiplicare un resto per una potenza cambia la scala nel modo prevedibile, <math|x<rsup|k>o(x<rsup|m>)=o(x<rsup|m+k>)>. Anche la transitività è immediata, perché se <math|f=gω<rsub|1>> e <math|g=hω<rsub|2>>, allora <math|f=hω<rsub|2>ω<rsub|1>=o(h)>.

C'è però un'abitudine di scrittura da tenere presente. Due simboli <math|o(x)> nella stessa riga possono indicare resti diversi. La scrittura <math|o(x)-o(x)=o(x)> non dice che due resti uguali si cancellano, ma che la differenza fra due resti di questo tipo è ancora un resto dello stesso tipo. Per lo stesso motivo non c'è nessuna regola generale per <math|o(x)/o(x)>. Per esempio <math|x<rsup|2>/x<rsup|3>> diverge, mentre il suo reciproco tende a zero.

<subsection|Sostituire l'argomento in un resto>

Nelle composizioni dobbiamo controllare dove va a finire l'argomento. Sia <math|m≥1> un intero e sia <math|r(t)=t<rsup|m>ω(t)>, con <math|ω(t)→0> per <math|t→0>. Se sostituiamo <math|t=x<rsup|3>> troviamo

<\equation*>
r(x<rsup|3>)=x<rsup|3m>ω(x<rsup|3>)=o(x<rsup|3m>),
</equation*>

perché anche <math|x<rsup|3>> tende a zero. Più in generale possiamo sostituire un argomento <math|u(x)→0> che sia <math|O(x)>. Per <math|x≠0>

<\equation*>
<frac|r(u(x))|x<rsup|m>>=<around*|(|<frac|u(x)|x>|)><rsup|m>ω(u(x)),
</equation*>

dove il primo fattore è limitato e il secondo tende a zero, quindi <math|r(u(x))=o(x<rsup|m>)>. C'è un dettaglio a cui badare, perché <math|u(x)> potrebbe annullarsi anche per <math|x≠0>. Per non dover dividere per l'argomento interno prolunghiamo il resto con il valore zero in <math|t=0> e poniamo <math|ω(0)=0>. Così l'identità vale anche quando <math|u(x)=0>. Questa precisazione ci servirà negli sviluppi delle funzioni composte.

<section|Dai limiti notevoli ai primi sviluppi>

Con questo linguaggio i limiti notevoli diventano formule da usare nei calcoli. Dire che <math|sin x/x→1> equivale a dire che <math|(sin x-x)/x→0>, cioè che <math|sin x=x+o(x)>. Allo stesso modo i limiti dell'esponenziale e del logaritmo diventano

<\equation*>
e<rsup|x>=1+x+o(x),<space|2em>log(1+x)=x+o(x).
</equation*>

Per il coseno sappiamo già qualcosa di più preciso, perché <math|(1-cos x)/x<rsup|2>→1/2> significa

<\equation*>
cos x=1-<frac|x<rsup|2>|2>+o(x<rsup|2>).
</equation*>

Da qui segue anche la versione più grossolana <math|cos x=1+o(x)>, perché <math|x<rsup|2>=o(x)>. Il contrario non si può fare, perché la scrittura breve ha perso il coefficiente del termine quadratico. Altre formule che useremo sono <math|arctan x=x+o(x)>, <math|tan x=x+o(x)>, <math|arcsin x=x+o(x)> e

<\equation*>
(1+x)<rsup|a>=1+ax+o(x)<space|2em>(a∈ℝ).
</equation*>

L'ultima si ricava scrivendo <math|(1+x)<rsup|a>=e<rsup|a log(1+x)>>. Per <math|a≠0>, dividendo l'incremento <math|(1+x)<rsup|a>-1> per <math|x>, compaiono i due rapporti notevoli <math|(e<rsup|t>-1)/t>, con <math|t=a log(1+x)>, e <math|log(1+x)/x>, che tendono entrambi a 1, e il risultato tende ad <math|a>. Per <math|a=0> la funzione è costante e la formula è esatta. Vicino a zero <math|1+x›0>, quindi tutte le potenze reali sono definite.

<\guidato|Un limite senza cancellazione della parte lineare>
Calcoliamo <math|lim<rsub|x→0><frac|sin(2x)+e<rsup|3x>-cos x|arctan x+tan<rsup|2>x>>. Al numeratore le costanti si cancellano, perché <math|e<rsup|3x>> e <math|cos x> partono entrambi da 1, quindi il primo termine che può sopravvivere è quello lineare.

Usiamo allora <math|sin(2x)=2x+o(x)>, <math|e<rsup|3x>=1+3x+o(x)> e <math|cos x=1+o(x)>. Il numeratore diventa <math|5x+o(x)>.

Al denominatore abbiamo <math|arctan x=x+o(x)>, mentre <math|tan<rsup|2>x=x<rsup|2>+o(x<rsup|2>)> è un <math|o(x)>. Dividendo numeratore e denominatore per <math|x> otteniamo

<\equation*>
<frac|5x+o(x)|x+o(x)>=<frac|5+o(1)|1+o(1)>→5.
</equation*>

Il primo ordine è bastato perché sia sopra sia sotto è rimasto un coefficiente diverso da zero. Se il coefficiente lineare si fosse annullato, avremmo dovuto cercare un'informazione più precisa.
</guidato>

Per le successioni la definizione è la stessa. Scriviamo <math|a<rsub|n>=o(b<rsub|n>)> se <math|a<rsub|n>=b<rsub|n>ω<rsub|n>> con <math|ω<rsub|n>→0>. Per esempio <math|n·o(1/n)=o(1)>, perché il fattore <math|n> annulla la scala <math|1/n> e lascia soltanto qualcosa che tende a zero.

<\verifica|11>
<strong|1.> Per <math|x→0>, confronta <math|x<rsup|2>> e <math|x<rsup|3>> con l'o piccolo. Che cosa cambia per <math|x→+∞>? Spiega anche perché <math|x sin(1/x)> è O grande, ma non o piccolo, di <math|x> vicino a zero.

<strong|2.> Calcola <math|lim<rsub|x→0><frac|e<rsup|arctan(2x)>-(1+x)<rsup|1/3>|sin(5x)+log(1-x)>> tenendo i resti in tutte le somme.
</verifica>
