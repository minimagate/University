<chapter|Simboli di Landau ed equivalenze asintotiche>

Conosciamo il limite <math|sin x/x→1> per <math|x→0>. Questo dice che, vicino a zero, il seno e il suo argomento hanno quasi lo stesso valore relativo. Ma quanto possiamo trascurare quando dentro una formula si sommano termini diversi? Il linguaggio degli sviluppi serve a conservare proprio questa informazione.

<section|O piccolo: misurare un errore rispetto a una scala>

Confrontiamo <math|x+x<rsup|2>> con <math|x>. La differenza è <math|x<rsup|2>>: dividendo per <math|x> otteniamo <math|x→0>. Dunque l'errore è piccolo anche rispetto alla quantità con cui stiamo lavorando. Scriviamo

<\equation*>
x+x<rsup|2>=x+o(x)<space|2em>(x→0).
</equation*>

La lettera <math|o> si legge «o piccolo». La scrittura non dà il valore dell'errore: ne dà una proprietà. In questo esempio l'errore è esattamente <math|x<rsup|2>>; altri errori, come <math|x<rsup|3>> o <math|x sin x>, avrebbero la stessa proprietà.

<\concetto|O piccolo>
Fissato un limite <math|x→x<rsub|0>>, scriviamo <math|f=o(g)> se, vicino al punto considerato, possiamo scrivere <math|f(x)=g(x)ω(x)> con <math|ω(x)→0>. Se <math|g(x)≠0> nell'intorno bucato, ciò equivale a <math|f(x)/g(x)→0>.
</concetto>

Il punto <math|x<rsub|0>> può essere finito, un infinito oppure un punto raggiunto da un solo lato. Va sempre dichiarato: <math|x<rsup|2>=o(x)> per <math|x→0>, mentre <math|x=o(x<rsup|2>)> per <math|x→+∞>. Lo stesso rapporto che vicino a zero è piccolo diventa grande all'infinito.

Per potenze intere, vicino a zero <math|x<rsup|a>=o(x<rsup|b>)> esattamente quando <math|a›b>: il rapporto è <math|x<rsup|a-b>>. Per esponenti reali non interi consideriamo <math|x→0<rsup|+>>, così le potenze sono definite. L'o piccolo non richiede che le due funzioni tendano a zero: anche <math|1/x<rsup|2>=o(1/x<rsup|3>)> per <math|x→0>.

<figura|@IMG(potenze-zero)|Per <math|0‹x‹1>, le potenze più alte sono più piccole. Il rapporto distingue la scala: <math|x<rsup|3>/x<rsup|2>=x→0>.>

Scrivere <math|f=g+o(g)> significa dunque che <math|f-g> è trascurabile rispetto a <math|g>. Non significa che <math|f=g>: il resto è una funzione, generalmente diversa da zero.

<section|Equivalenza asintotica e O grande>

Due quantità non nulle hanno lo stesso comportamento relativo se il loro rapporto tende a 1. Si scrive <math|f∼g> e si parla di <strong|equivalenza asintotica>. Per esempio, <math|sin x∼x> per <math|x→0>. In generale, la definizione tramite fattorizzazione è <math|f=gω> con <math|ω→1>.

Quando <math|g> è non nulla vicino al punto, valgono le equivalenze

<\equation*>
f∼g<space|1em>⇔<space|1em><frac|f|g>→1<space|1em>⇔<space|1em>f=g+o(g).
</equation*>

Il simbolo <math|f=O(g)>, «O grande», richiede invece <math|f=gω> con <math|ω> limitata vicino al punto. Se <math|g≠0>, ciò significa che esiste <math|C›0> con <math|\|f(x)\|≤C\|g(x)\|>. Per esempio <math|x sin(1/x)=O(x)> per <math|x→0>, ma non è <math|o(x)>: il rapporto oscilla. Ogni o piccolo è anche O grande; il contrario è falso.

Le equivalenze si possono moltiplicare e dividere, dove i quozienti hanno senso. Se <math|f∼g> e <math|u∼v>, allora <math|fu∼gv>, perché <math|(fu)/(gv)=(f/g)(u/v)→1>. Lo stesso ragionamento vale per i quozienti.

Nelle differenze occorre più attenzione. È vero che <math|x+x<rsup|2>∼x> e anche <math|x∼x>. Eppure sottraendo le due quantità originali resta <math|x<rsup|2>>, mentre sottraendo le due approssimazioni rimane zero. L'informazione relativa a <math|x> non vede il termine quadratico. Per ritrovarlo dobbiamo conservare un errore abbastanza piccolo.

<section|Calcolare con i resti e comporre>

Scriviamo due resti come <math|r<rsub|1>=gω<rsub|1>> e <math|r<rsub|2>=gω<rsub|2>>, con entrambi gli <math|ω<rsub|i>→0>. Allora

<\equation*>
r<rsub|1>+r<rsub|2>=g(ω<rsub|1>+ω<rsub|2>)=o(g).
</equation*>

La stessa prova vale per la differenza e per la moltiplicazione per una costante. Per un prodotto, <math|r<rsub|1>r<rsub|2>=g<rsup|2>ω<rsub|1>ω<rsub|2>=o(g<rsup|2>)>. Inoltre <math|x<rsup|k>o(x<rsup|m>)=o(x<rsup|m+k>)>. Queste regole vengono tutte dalla fattorizzazione: seguiamo il fattore che tende a zero.

Due simboli <math|o(x)> in una stessa riga possono indicare resti diversi. Perciò <math|o(x)-o(x)=o(x)> è una regola di appartenenza a una classe, non la cancellazione di due funzioni identiche. Non c'è invece una regola generale per <math|o(x)/o(x)>: <math|x<rsup|2>/x<rsup|3>> diverge, mentre il reciproco tende a zero.

Anche la transitività segue dai fattori: se <math|f=gω<rsub|1>> e <math|g=hω<rsub|2>>, allora <math|f=hω<rsub|2>ω<rsub|1>=o(h)>.

Per le composizioni dobbiamo controllare dove va l'argomento. Per un intero <math|m≥1>, se <math|r(t)=t<rsup|m>ω(t)> con <math|ω(t)→0> per <math|t→0>, sostituendo <math|t=x<rsup|3>> troviamo

<\equation*>
r(x<rsup|3>)=x<rsup|3m>ω(x<rsup|3>)=o(x<rsup|3m>).
</equation*>

Più generalmente, se <math|u(x)→0>, <math|u(x)=O(x)> e poniamo il resto uguale a zero in <math|t=0>, allora <math|r(u(x))=o(x<rsup|m>)>: il fattore <math|(u(x)/x)<rsup|m>> è limitato e <math|ω(u(x))→0>. Nei punti in cui <math|u=0> scegliamo <math|ω(0)=0>. Questa precisazione evita divisioni per zero ed è utile per composte come <math|arctan(f(x))>.

<section|Dai limiti notevoli ai primi sviluppi>

Il limite <math|sin x/x→1> equivale a <math|(sin x-x)/x→0>, quindi a <math|sin x=x+o(x)>. Il limite esponenziale e quello logaritmico danno allo stesso modo

<\equation*>
e<rsup|x>=1+x+o(x),<space|2em>log(1+x)=x+o(x).
</equation*>

Per il coseno conosciamo un'informazione più precisa:

<\equation*>
cos x=1-<frac|x<rsup|2>|2>+o(x<rsup|2>).
</equation*>

Da questa segue anche <math|cos x=1+o(x)>, perché <math|x<rsup|2>=o(x)>. Il contrario non si può dedurre: la scrittura più breve perde il coefficiente quadratico. Altre forme che useremo sono <math|arctan x=x+o(x)>, <math|tan x=x+o(x)>, <math|arcsin x=x+o(x)> e

<\equation*>
(1+x)<rsup|a>=1+ax+o(x)<space|2em>(a∈ℝ).
</equation*>

Quest'ultima discende da <math|(1+x)<rsup|a>=e<rsup|a log(1+x)>>: per <math|a≠0>, dividendo l'incremento per <math|x> compaiono i due rapporti notevoli <math|(e<rsup|t>-1)/t→1> e <math|log(1+x)/x→1>. Per <math|a=0> la funzione è costante e l'affermazione è esatta con resto nullo. Vicino a zero abbiamo <math|1+x›0>, quindi tutte le potenze reali sono definite.

<\guidato|Un limite senza cancellazione della parte lineare>
Calcoliamo <math|lim<rsub|x→0><frac|sin(2x)+e<rsup|3x>-cos x|arctan x+tan<rsup|2>x>>. I termini costanti al numeratore si cancellano; cerchiamo quindi l'ordine lineare.

Usiamo <math|sin(2x)=2x+o(x)>, <math|e<rsup|3x>=1+3x+o(x)> e <math|cos x=1+o(x)>. Il numeratore diventa <math|5x+o(x)>.

Al denominatore <math|arctan x=x+o(x)> e <math|tan<rsup|2>x=x<rsup|2>+o(x<rsup|2>)=o(x)>. Dividendo entrambi per <math|x> otteniamo

<\equation*>
<frac|5x+o(x)|x+o(x)>=<frac|5+o(1)|1+o(1)>→5.
</equation*>

Qui il primo ordine basta perché resta un coefficiente non nullo sia sopra sia sotto. Se il coefficiente lineare fosse zero, dovremmo cercare un'informazione più precisa.
</guidato>

Per le successioni la definizione resta la stessa: <math|a<rsub|n>=o(b<rsub|n>)> significa <math|a<rsub|n>=b<rsub|n>ω<rsub|n>> con <math|ω<rsub|n>→0>. Per esempio <math|n·o(1/n)=o(1)>: il fattore <math|n> cancella la scala <math|1/n>, lasciando soltanto qualcosa che tende a zero.

<\verifica|11>
<strong|1.> Per <math|x→0>, confronta <math|x<rsup|2>> e <math|x<rsup|3>> con l'o piccolo. Che cosa cambia per <math|x→+∞>? Spiega anche perché <math|x sin(1/x)> è O grande, ma non o piccolo, di <math|x> vicino a zero.

<strong|2.> Calcola <math|lim<rsub|x→0><frac|e<rsup|arctan(2x)>-(1+x)<rsup|1/3>|sin(5x)+log(1-x)>> conservando i resti nelle somme.
</verifica>
