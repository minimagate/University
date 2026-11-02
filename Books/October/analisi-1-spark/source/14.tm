<chapter|Taylor e funzioni iperboliche>

<\inbreve>
Conoscere gli sviluppi delle funzioni elementari è solo metà del lavoro. Nei limiti veri le funzioni compaiono moltiplicate, composte, elevate a potenze variabili, e a ogni operazione dobbiamo chiederci quanto è grande l'errore che ci portiamo dietro. Questo capitolo è una palestra in cui impariamo a scegliere quanti termini tenere, né troppi né troppo pochi, e dove incontriamo anche le funzioni iperboliche, parenti strette dell'esponenziale.
</inbreve>

<section|Cambiare centro: lavorare con l'incremento>

Gli sviluppi che conosciamo sono tutti centrati in zero, ma spesso ci interessa una funzione vicino a un altro punto. Per studiare il logaritmo vicino a 2, per esempio, scriviamo <math|x=2+h>, così la quantità che tende a zero è <math|h=x-2>. Poi separiamo il valore di partenza:

<\equation*>
log(2+h)=log 2+log(1+h/2).
</equation*>

Ora l'argomento piccolo è <math|h/2>, e possiamo usare lo sviluppo di <math|log(1+t)> con <math|t=h/2>, ottenendo

<\equation*>
log(2+h)=log 2+<frac|h|2>-<frac|h<rsup|2>|8>+<frac|h<rsup|3>|24>+o(h<rsup|3>).
</equation*>

Scrivere invece <math|log x=log(1+(x-1))> non servirebbe a nulla per <math|x→2>, perché in quel caso <math|x-1> tende a 1, mentre lo sviluppo che conosciamo richiede un argomento che tenda a zero.

In generale, per studiare <math|f> vicino a <math|x<rsub|0>> poniamo <math|h=x-x<rsub|0>> e applichiamo Taylor alla funzione <math|h↦f(x<rsub|0>+h)>. Con le ipotesi del capitolo precedente, trasportate nel nuovo centro, troviamo

<\equation*>
f(x<rsub|0>+h)=<big|sum><rsub|k=0><rsup|m><frac|f<rsup|(k)>(x<rsub|0>)|k!>h<rsup|k>+o(h<rsup|m>).
</equation*>

<section|Somme e prodotti: quali termini tenere>

Supponiamo di conoscere due sviluppi con la stessa precisione, <math|f=P+o(x<rsup|m>)> e <math|g=Q+o(x<rsup|m>)>, dove <math|P> e <math|Q> sono polinomi di grado al massimo <math|m> e <math|m≥1> è un intero. Per la somma non c'è nessuna sorpresa, perché <math|f+g=P+Q+o(x<rsup|m>)> e la precisione resta la stessa.

Per il prodotto scriviamo i resti come <math|x<rsup|m>ω<rsub|1>> e <math|x<rsup|m>ω<rsub|2>>, con <math|ω<rsub|1>,ω<rsub|2>→0>, e moltiplichiamo:

<\equation*>
fg=PQ+x<rsup|m>(Pω<rsub|2>+Qω<rsub|1>+x<rsup|m>ω<rsub|1>ω<rsub|2>).
</equation*>

I polinomi sono limitati vicino a zero e gli <math|ω<rsub|i>> tendono a zero, quindi tutta la parentesi tende a zero e <math|fg=PQ+o(x<rsup|m>)>. Il prodotto <math|PQ> può avere grado più alto di <math|m>, ma i termini in più sono già <math|o(x<rsup|m>)> e possiamo buttarli via.

Vediamolo con <math|sin x cos x> fino al grado 5. Moltiplichiamo <math|x-x<rsup|3>/6+x<rsup|5>/120> per <math|1-x<rsup|2>/2+x<rsup|4>/24>, ma invece di sviluppare tutto il prodotto cerchiamo soltanto le coppie di termini che danno i gradi che ci interessano. Al grado 3 contribuiscono <math|x·(-x<rsup|2>/2)> e <math|(-x<rsup|3>/6)·1>. Al grado 5 contribuiscono <math|x·x<rsup|4>/24>, <math|(-x<rsup|3>/6)(-x<rsup|2>/2)> e <math|(x<rsup|5>/120)·1>. I coefficienti sono quindi

<\equation*>
-<frac|1|2>-<frac|1|6>=-<frac|2|3>,<space|2em><frac|1|24>+<frac|1|12>+<frac|1|120>=<frac|2|15>,
</equation*>

e otteniamo <math|sin x cos x=x-2x<rsup|3>/3+2x<rsup|5>/15+o(x<rsup|5>)>. Possiamo controllare il risultato con lo sviluppo di <math|sin(2x)/2>, che deve dare gli stessi coefficienti.

<section|Composizione: argomento e precisione>

Nelle composizioni l'errore più frequente è sostituire l'argomento soltanto in una parte dello sviluppo. Consideriamo <math|sin(x+x<rsup|3>)> e cerchiamo uno sviluppo con resto <math|o(x<rsup|3>)>. L'argomento interno tende a zero, quindi possiamo partire dallo sviluppo del seno in zero, ma dobbiamo sostituire l'argomento intero in ciascuna delle sue potenze.

<\guidato|Prima comporre, poi scegliere i gradi>
Poniamo <math|u=x+x<rsup|3>>. Lo sviluppo del seno dà <math|sin u=u-u<rsup|3>/6+o(u<rsup|3>)>. Il termine lineare diventa semplicemente <math|x+x<rsup|3>>. Per il cubo facciamo il conto completo:

<\equation*>
(x+x<rsup|3>)<rsup|3>=x<rsup|3>+3x<rsup|5>+3x<rsup|7>+x<rsup|9>.
</equation*>

Ci interessano i gradi fino a 3, e i gradi 5, 7 e 9 sono tutti <math|o(x<rsup|3>)>, quindi il cubo contribuisce soltanto con <math|x<rsup|3>>.

Anche il resto esterno va controllato. Se lo scriviamo come <math|u<rsup|3>ω(u)> con <math|ω(u)→0>, dopo la sostituzione diventa

<\equation*>
x<rsup|3>(1+x<rsup|2>)<rsup|3>ω(x+x<rsup|3>)=o(x<rsup|3>),
</equation*>

perché il fattore <math|(1+x<rsup|2>)<rsup|3>> è limitato e l'altro tende a zero. Possiamo allora raccogliere i termini del grado che ci interessa:

<\equation*>
sin(x+x<rsup|3>)=x+x<rsup|3>-<frac|x<rsup|3>|6>+o(x<rsup|3>)=x+<frac|5|6>x<rsup|3>+o(x<rsup|3>).
</equation*>

Se avessimo sostituito l'argomento solo nel termine lineare avremmo trovato il coefficiente 1 invece di <math|5/6>. Il cubo dell'argomento contribuisce allo stesso grado, e non possiamo ignorarlo.
</guidato>

<subsection|Un argomento che cambia la scala del resto>

In <math|sin(x<rsup|3>)> i gradi cambiano in un altro modo, perché ogni potenza dell'argomento diventa una potenza di grado triplo in <math|x>, e i primi gradi che compaiono sono 3, 9 e 15. Supponiamo di volere un resto <math|o(x<rsup|14>)>. Nel polinomio finale bastano i primi due termini, ma per giustificare l'errore conviene partire da uno sviluppo che controlli anche il grado successivo. Taylor del seno fino all'ordine 5 dà

<\equation*>
sin(x<rsup|3>)=x<rsup|3>-<frac|x<rsup|9>|6>+<frac|x<rsup|15>|120>+o(x<rsup|15>),
</equation*>

e il termine di grado 15, insieme al suo resto, è <math|o(x<rsup|14>)>. Quindi

<\equation*>
sin(x<rsup|3>)=x<rsup|3>-<frac|x<rsup|9>|6>+o(x<rsup|14>).
</equation*>

In generale, sostituendo <math|t=ax<rsup|b>> in un resto <math|o(t<rsup|m>)>, con <math|a≠0> e <math|b›0>, otteniamo <math|o(x<rsup|bm>)>, perché il resto diventa <math|a<rsup|m>x<rsup|bm>ω(ax<rsup|b>)>. Per esponenti non interi scegliamo un lato su cui le potenze siano definite.

<subsection|La composizione di due sviluppi: perché funziona>

Possiamo ora giustificare il procedimento in generale. Supponiamo che <math|f> e <math|g> abbiano in zero polinomi di Taylor <math|P> e <math|Q> di ordine <math|m≥1>, e che <math|f(0)=0>. Allora, sul dominio della composta,

<\equation*>
g(f(x))=Q(P(x))+o(x<rsup|m>),
</equation*>

e dal polinomio composto possiamo poi scartare i gradi maggiori di <math|m>. Per dimostrarlo dobbiamo controllare due errori, quello già presente nello sviluppo esterno e quello che commettiamo sostituendo <math|P> al posto di <math|f>.

Il primo errore è un <math|o(t<rsup|m>)> calcolato in <math|t=f(x)>. Poiché <math|P(0)=0>, il polinomio <math|P> è uguale a <math|x> per un altro polinomio, e quindi lo sviluppo di <math|f> dà <math|f(x)=O(x)> e <math|f(x)→0>. La regola sui resti del capitolo 11 permette allora di concludere che <math|o(f(x)<rsup|m>)=o(x<rsup|m>)>.

Per il secondo errore guardiamo prima un quadrato. La fattorizzazione

<\equation*>
f<rsup|2>-P<rsup|2>=(f-P)(f+P)
</equation*>

mostra che la differenza è il prodotto di un <math|o(x<rsup|m>)> per una quantità limitata vicino a zero, quindi è ancora un <math|o(x<rsup|m>)>. Per una potenza qualsiasi la stessa idea usa la fattorizzazione

<\equation*>
f<rsup|k>-P<rsup|k>=(f-P)<big|sum><rsub|j=0><rsup|k-1>f<rsup|k-1-j>P<rsup|j><space|1em>(k≥1),
</equation*>

in cui la somma ha un numero fisso di termini, tutti limitati. Ogni potenza cambia quindi soltanto di un <math|o(x<rsup|m>)>, e possiamo sostituire <math|f> con <math|P> in ciascun termine di <math|Q> e sommare gli errori. Se <math|f(x)=0> in qualche punto, usiamo il resto esterno prolungato con valore zero nel centro, come nel capitolo 11. Infine i termini di <math|Q(P)> di grado maggiore di <math|m> sono già <math|o(x<rsup|m>)>, e questo giustifica l'ultima selezione dei gradi.

<subsection|Il centro esterno: coseno del seno e seno del coseno>

Nella composizione bisogna anche guardare dove va a finire l'argomento della funzione esterna. Per <math|cos(sin x)> l'argomento tende a zero, quindi usiamo lo sviluppo del coseno in zero. Prima calcoliamo le potenze dell'argomento che ci servono,

<\equation*>
sin<rsup|2>x=x<rsup|2>-<frac|x<rsup|4>|3>+o(x<rsup|4>),<space|1em>sin<rsup|4>x=x<rsup|4>+o(x<rsup|4>),
</equation*>

e poi le inseriamo in <math|cos u=1-u<rsup|2>/2+u<rsup|4>/24+o(u<rsup|4>)>. Il coefficiente di grado 4 è <math|1/6+1/24=5/24>, e otteniamo

<\equation*>
cos(sin x)=1-<frac|x<rsup|2>|2>+<frac|5|24>x<rsup|4>+o(x<rsup|4>).
</equation*>

Per <math|sin(cos x)> la situazione è diversa, perché l'argomento tende a 1. Dobbiamo quindi sviluppare il seno attorno a 1, scrivendo l'argomento come <math|1+h> con

<\equation*>
h=cos x-1=-<frac|x<rsup|2>|2>+o(x<rsup|3>).
</equation*>

Supponiamo di volere un resto <math|o(x<rsup|3>)>. Lo sviluppo lineare del seno, con errore <math|o(h)>, darebbe soltanto un errore <math|o(x<rsup|2>)>, che non basta. Passiamo allora al secondo ordine:

<\equation*>
sin(1+h)=sin 1+cos 1·h-<frac|sin 1|2>h<rsup|2>+o(h<rsup|2>).
</equation*>

Poiché <math|h=O(x<rsup|2>)>, il suo quadrato è <math|O(x<rsup|4>)>, che è un <math|o(x<rsup|3>)>, e anche il resto composto è trascurabile alla scala che ci interessa. Rimane

<\equation*>
sin(cos x)=sin 1-<frac|cos 1|2>x<rsup|2>+o(x<rsup|3>).
</equation*>

Il termine quadratico dello sviluppo esterno non compare nel risultato, ma ci è servito a garantire che il resto fosse abbastanza piccolo.

<section|Parte principale e ordine di infinitesimo>

Confrontiamo <math|sin x> e <math|arctan x>. Entrambe le funzioni cominciano con <math|x>, quindi nella loro differenza i termini lineari si cancellano e dobbiamo guardare il grado successivo:

<\equation*>
sin x-arctan x=<around*|(|-<frac|1|6>+<frac|1|3>|)>x<rsup|3>+o(x<rsup|3>)=<frac|x<rsup|3>|6>+o(x<rsup|3>).
</equation*>

Il primo termine che sopravvive ci dice quanto è piccola la differenza, e merita un nome.

<\concetto|Parte principale>
Se <math|f(x)=ax<rsup|b>+o(x<rsup|b>)>, con <math|a≠0>, il monomio <math|ax<rsup|b>> è la parte principale di <math|f> rispetto a <math|x>. Quando <math|b›0>, <math|f> è un infinitesimo di ordine <math|b>. Con Taylor cerchiamo il monomio di grado più basso con coefficiente non nullo, dopo le cancellazioni.
</concetto>

Con le parti principali molti limiti diventano immediati. Per esempio <math|(sin x-arctan x)/(e<rsup|x<rsup|3>>-1)→1/6>, perché al numeratore abbiamo <math|x<rsup|3>/6+o(x<rsup|3>)> e al denominatore <math|x<rsup|3>+o(x<rsup|3>)>, e raccogliendo <math|x<rsup|3>> resta un rapporto di quantità che tendono a <math|1/6> e a 1.

Per una differenza di reciproci conviene prima fare il denominatore comune, così la cancellazione diventa visibile:

<\equation*>
<frac|1|sin x>-<frac|1|x>=<frac|x-sin x|x sin x>=<frac|x<rsup|3>/6+o(x<rsup|3>)|x<rsup|2>+o(x<rsup|2>)>=<frac|x|6>+o(x).
</equation*>

Gli sviluppi permettono anche di leggere le derivate dai coefficienti, purché sappiamo già che quelle derivate esistono.

Prendiamo <math|f(x)=(sin x)<rsup|3>> e moltiplichiamo tre copie di <math|x-x<rsup|3>/6+o(x<rsup|3>)>. Il termine di grado 3 si ottiene prendendo <math|x> da tutti e tre i fattori. Per arrivare al grado 5 dobbiamo prendere il termine cubico da uno dei fattori e quello lineare dagli altri due, e ci sono tre modi di farlo, quindi il contributo è <math|3x<rsup|2>(-x<rsup|3>/6)=-x<rsup|5>/2>. Anche il resto ha la precisione giusta. Ogni <math|o(x<rsup|3>)> viene moltiplicato per due fattori <math|O(x)> e diventa un <math|o(x<rsup|5>)>, e i prodotti con almeno due termini cubici hanno grado almeno 7. Otteniamo così <math|f=x<rsup|3>-x<rsup|5>/2+o(x<rsup|5>)>.

La funzione è derivabile quante volte vogliamo, quindi per Taylor e per l'unicità il coefficiente di <math|x<rsup|5>> è <math|f<rsup|(5)>(0)/5!>. Da <math|f<rsup|(5)>(0)/5!=-1/2> ricaviamo <math|f<rsup|(5)>(0)=-60>. L'unicità permette di riconoscere il coefficiente, ma non crea derivate che non sapessimo già esistere.

<section|Reciproci e potenze variabili>

Per ottenere lo sviluppo della tangente dividiamo quello del seno per quello del coseno. Conviene prima invertire il denominatore, usando <math|1/(1+t)=1-t+t<rsup|2>-t<rsup|3>+o(t<rsup|3>)> con

<\equation*>
t=cos x-1=-<frac|x<rsup|2>|2>+<frac|x<rsup|4>|24>+o(x<rsup|5>).
</equation*>

Poiché <math|t=O(x<rsup|2>)>, il suo cubo e il resto composto sono <math|o(x<rsup|5>)>. Il termine <math|-t> contribuisce con <math|x<rsup|2>/2-x<rsup|4>/24> e il termine <math|t<rsup|2>> con <math|x<rsup|4>/4+o(x<rsup|5>)>, quindi il coefficiente di grado 4 è <math|-1/24+1/4=5/24> e

<\equation*>
<frac|1|cos x>=1+<frac|x<rsup|2>|2>+<frac|5|24>x<rsup|4>+o(x<rsup|5>).
</equation*>

Ora moltiplichiamo per <math|sin x=x-x<rsup|3>/6+x<rsup|5>/120+o(x<rsup|5>)>. Al grado 3 il coefficiente è <math|1/2-1/6=1/3>, e al grado 5 è <math|5/24-1/12+1/120=2/15>. Dunque

<\equation*>
tan x=x+<frac|x<rsup|3>|3>+<frac|2x<rsup|5>|15>+o(x<rsup|5>).
</equation*>

Possiamo controllare il risultato con l'inversa. Se inseriamo <math|x+ax<rsup|3>+bx<rsup|5>> nello sviluppo dell'arcotangente e imponiamo <math|arctan(tan x)=x>, troviamo le condizioni <math|a-1/3=0> e <math|b-a+1/5=0>, che danno di nuovo <math|a=1/3> e <math|b=2/15>.

<subsection|Una potenza variabile: prima studiare l'esponente>

Con le potenze variabili il primo passo è sempre passare all'esponenziale. Per <math|(1+sin x)<rsup|x>> la base è positiva vicino a zero, e possiamo scrivere

<\equation*>
(1+sin x)<rsup|x>=e<rsup|u(x)>,<space|2em>u(x)=x log(1+sin x).
</equation*>

Quanti termini del logaritmo ci servono? Il fattore <math|x> davanti alza tutti i gradi di uno, quindi per avere l'esponente fino al grado 3 basta il logaritmo fino al grado 2. Troviamo <math|log(1+sin x)=x-x<rsup|2>/2+o(x<rsup|2>)>, e quindi <math|u=x<rsup|2>-x<rsup|3>/2+o(x<rsup|3>)>. Poiché <math|u=O(x<rsup|2>)>, nello sviluppo <math|e<rsup|u>=1+u+u<rsup|2>/2+o(u<rsup|2>)> il termine <math|u<rsup|2>/2> e il resto sono già <math|o(x<rsup|3>)>. Ne segue

<\equation*>
(1+sin x)<rsup|x>=1+x<rsup|2>-<frac|x<rsup|3>|2>+o(x<rsup|3>).
</equation*>

<subsection|Una potenza che tende a e>

Sappiamo che <math|(1+x)<rsup|1/x>→e>, e ora ci chiediamo con quale velocità. Per studiare <math|(1+x)<rsup|1/x>-e> dobbiamo capire quanto l'esponente <math|log(1+x)/x> si discosta da 1, e lo sviluppo del logaritmo dà

<\equation*>
<frac|log(1+x)|x>=1-<frac|x|2>+o(x).
</equation*>

Raccogliendo <math|e> e usando <math|e<rsup|v>-1=v+o(v)>, con <math|v=log(1+x)/x-1=-x/2+o(x)>, otteniamo

<\equation*>
(1+x)<rsup|1/x>-e=e<around*|(|e<rsup|log(1+x)/x-1>-1|)>=-<frac|e|2>x+o(x).
</equation*>

La parte principale è quindi <math|-ex/2>. Il passaggio al logaritmo ha trasformato una potenza variabile in un piccolo incremento dell'esponente, che sappiamo trattare.

<section|Funzioni iperboliche: una nuova lettura dell'esponenziale>

Ogni funzione definita su <math|ℝ> si può scrivere come somma di una parte pari e di una dispari, e per l'esponenziale queste due parti sono così utili da avere un nome. La metà della somma di <math|e<rsup|x>> ed <math|e<rsup|-x>> è pari, e la metà della loro differenza è dispari. Definiamo

<\equation*>
sinh x=<frac|e<rsup|x>-e<rsup|-x>|2>,<space|1.5em>cosh x=<frac|e<rsup|x>+e<rsup|-x>|2>,<space|1.5em>tanh x=<frac|sinh x|cosh x>.
</equation*>

Sono il <strong|seno iperbolico>, il <strong|coseno iperbolico> e la <strong|tangente iperbolica>. Il coseno iperbolico è sempre positivo, quindi tutte e tre sono definite su <math|ℝ>, e per costruzione <math|cosh x+sinh x=e<rsup|x>>. Non servono nuovi strumenti per studiarle, perché tutto si ricava dalle proprietà dell'esponenziale.

Il seno e la tangente iperbolici sono dispari, mentre il coseno iperbolico è pari. Per <math|x→+∞> sia <math|sinh x> sia <math|cosh x> tendono a <math|+∞>, mentre

<\equation*>
tanh x=<frac|1-e<rsup|-2x>|1+e<rsup|-2x>>→1.
</equation*>

Per simmetria, a <math|-∞> il seno iperbolico tende a <math|-∞>, il coseno a <math|+∞> e la tangente a <math|-1>. Nonostante i nomi, nessuna di queste funzioni è periodica.

<subsection|Monotonia e identità fondamentali>

Il seno iperbolico è strettamente crescente, perché è la metà della somma di <math|e<rsup|x>> e di <math|-e<rsup|-x>>, che crescono entrambe. Anche la tangente iperbolica cresce, perché si scrive <math|(z-1)/(z+1)> con <math|z=e<rsup|2x>>, e sia <math|z> come funzione di <math|x> sia <math|(z-1)/(z+1)> come funzione di <math|z›0> sono crescenti.

Il coseno iperbolico ha invece un minimo, che vale 1 ed è raggiunto in zero, perché <math|e<rsup|x>+e<rsup|-x>-2=(e<rsup|x/2>-e<rsup|-x/2>)<rsup|2>≥0>. Sul semiasse positivo cresce. Per vederlo prendiamo <math|1≤z‹w> e confrontiamo <math|w+1/w> con <math|z+1/z>. La loro differenza è <math|(w-z)(1-1/(wz))>, che è positiva, e applicando questo confronto a <math|z=e<rsup|x>> otteniamo la crescenza.

<figura|@IMG(iperboliche)|Il coseno iperbolico è pari e ha minimo 1; il seno iperbolico passa per l'origine. La tangente iperbolica resta tra <math|-1> e 1 e si avvicina ai due asintoti.>

Se eleviamo al quadrato le definizioni e sottraiamo, i termini <math|e<rsup|2x>> ed <math|e<rsup|-2x>> si cancellano e resta la relazione fondamentale

<\equation*>
cosh<rsup|2>x-sinh<rsup|2>x=1.
</equation*>

Sommando invece i quadrati otteniamo <math|cosh(2x)=cosh<rsup|2>x+sinh<rsup|2>x>, e moltiplicando le definizioni troviamo <math|sinh(2x)=2sinh x cosh x>. Le formule assomigliano a quelle trigonometriche, ma con segni diversi, e la differenza più importante è che qui la relazione fondamentale è una differenza di quadrati.

<subsection|Derivate e sviluppi>

Derivando gli esponenziali nelle definizioni troviamo

<\equation*>
(sinh x)<rprime|'>=cosh x,<space|1.5em>(cosh x)<rprime|'>=sinh x,<space|1.5em>(tanh x)<rprime|'>=<frac|1|cosh<rsup|2>x>=1-tanh<rsup|2>x,
</equation*>

senza i segni meno che compaiono nelle derivate trigonometriche. Prendendo la metà della somma e della differenza degli sviluppi di <math|e<rsup|x>> ed <math|e<rsup|-x>> otteniamo

<\equation*>
sinh x=x+<frac|x<rsup|3>|6>+<frac|x<rsup|5>|120>+o(x<rsup|5>),
</equation*>

<\equation*>
cosh x=1+<frac|x<rsup|2>|2>+<frac|x<rsup|4>|24>+o(x<rsup|5>).
</equation*>

Sono gli stessi sviluppi di seno e coseno, ma con tutti i coefficienti positivi. In particolare <math|tanh x∼x> per <math|x→0>.

<subsection|Per proseguire: inverse e settori iperbolici>

Il seno iperbolico è una biiezione da <math|ℝ> in <math|ℝ>, e la tangente iperbolica da <math|ℝ> in <math|(-1,1)>. Il coseno iperbolico, invece, per essere invertibile va ristretto a <math|[0,+∞)>, e la sua immagine è <math|[1,+∞)>. Le inverse si chiamano <strong|settori iperbolici>, e qui le indichiamo con <math|<math-up|Sett sinh>>, <math|<math-up|Sett cosh>> e <math|<math-up|Sett tanh>>.

Poiché le funzioni iperboliche sono costruite con l'esponenziale, le loro inverse si possono scrivere con il logaritmo. Ricaviamo la formula per il settore coseno iperbolico. Per <math|y≥1> cerchiamo <math|t≥0> con <math|cosh t=y>. Ponendo <math|z=e<rsup|t>> l'equazione diventa <math|z<rsup|2>-2yz+1=0>, che ha le radici <math|y±<sqrt|y<rsup|2>-1>>. Entrambe sono positive e il loro prodotto è 1, quindi una è maggiore o uguale a 1 e l'altra minore o uguale. Poiché <math|t≥0> richiede <math|z≥1>, scegliamo il segno positivo:

<\equation*>
<math-up|Sett cosh>(y)=log(y+<sqrt|y<rsup|2>-1>)<space|2em>(y≥1).
</equation*>

Da dove viene il nome «settore»? La relazione fondamentale dice che il punto <math|(cosh α,sinh α)> sta sull'iperbole <math|X<rsup|2>-Y<rsup|2>=1>, come <math|(cos α,sin α)> sta sulla circonferenza. Per <math|α≥0>, il parametro <math|α> è il doppio dell'area del settore compreso fra l'asse orizzontale, l'arco di iperbole e il raggio che va dall'origine a quel punto. Non dimostriamo questo fatto geometrico, che qui serve solo come interpretazione e non come strumento di calcolo.

<figura|@IMG(iperbole)|Il parametro circolare e quello iperbolico si leggono attraverso l'area di un settore: in entrambi i disegni l'area indicata è <math|α/2>. Le curve soddisfano rispettivamente una somma e una differenza di quadrati uguale a 1.>

La somiglianza con la trigonometria ha anche una ragione più profonda, che si vede con i numeri complessi. Usando la formula di Eulero e l'estensione complessa delle funzioni si trova <math|cosh(ix)=cos x> e <math|sinh(ix)=i sin x>. È un collegamento che incontreremo più avanti. Il teorema di Taylor con resto di Peano, da solo, non permette né di sostituire numeri complessi né di trasformare uno sviluppo finito in una somma infinita.

<section|Scegliere l'ordine: un limite completo>

Chiudiamo con un limite che mette insieme quasi tutto ciò che abbiamo visto, quello per <math|x→0> del rapporto

<\equation*>
<frac|log(1+sin<rsup|2>x)-x<rsup|2>|sin<rsup|2>(tanh<rsup|2>x)-x<rsup|5>>.
</equation*>

La domanda chiave è fino a quale ordine sviluppare ciascun pezzo, e la risposta cambia fra numeratore e denominatore. Cominciamo dal denominatore. Poiché <math|tanh x∼x>, abbiamo <math|tanh<rsup|2>x∼x<rsup|2>> e quindi <math|sin(tanh<rsup|2>x)∼x<rsup|2>>, e il suo quadrato è <math|x<rsup|4>+o(x<rsup|4>)>. Il termine <math|x<rsup|5>> è trascurabile, e la parte principale del denominatore è <math|x<rsup|4>>. Qui le equivalenze sono bastate perché non c'era nessuna cancellazione.

Al numeratore, invece, il termine di grado 2 viene sottratto, e per sapere che cosa resta dobbiamo arrivare fino al grado 4, lo stesso del denominatore. Sviluppiamo prima il quadrato del seno,

<\equation*>
sin<rsup|2>x=x<rsup|2>-<frac|x<rsup|4>|3>+o(x<rsup|4>),
</equation*>

e poi sostituiamo <math|t=sin<rsup|2>x> in <math|log(1+t)=t-t<rsup|2>/2+o(t<rsup|2>)>. Poiché <math|t∼x<rsup|2>>, il resto diventa <math|o(x<rsup|4>)>, e il termine <math|t<rsup|2>/2> contribuisce con <math|x<rsup|4>/2+o(x<rsup|4>)>. Ne segue

<\equation*>
log(1+sin<rsup|2>x)=x<rsup|2>-<frac|x<rsup|4>|3>-<frac|x<rsup|4>|2>+o(x<rsup|4>)=x<rsup|2>-<frac|5|6>x<rsup|4>+o(x<rsup|4>).
</equation*>

Il numeratore è quindi <math|-5x<rsup|4>/6+o(x<rsup|4>)>, e il limite del rapporto vale <math|-5/6>. Abbiamo usato ordini diversi nei due pezzi, perché al denominatore bastavano le equivalenze, mentre al numeratore la cancellazione ci obbligava a cercare un termine in più.

<subsection|Controllare il centro anche nelle successioni>

Con le successioni vale la stessa attenzione al centro dello sviluppo. Un argomento come <math|1/n> tende a zero, e possiamo usare gli sviluppi in zero. Un argomento come <math|n>, invece, tende all'infinito. In <math|(2cos n-2+n<rsup|2>)/n<rsup|4>>, per esempio, non possiamo sostituire il polinomio di Taylor del coseno, perché <math|n> non è vicino a zero. Qui basta la limitatezza <math|\|cos n\|≤1>, che dà subito il limite zero.

<\verifica|14>
<strong|1.> Calcola <math|lim<rsub|n→+∞>n<rsup|2>(1-n arctan(1/n))>. Spiega fino a quale ordine serve conoscere l'arcotangente.

<strong|2.> Determina la parte principale di <math|(n<rsup|3>+5)/(n<rsup|3>-2)-4<rsup|1/n>> per <math|n→+∞>. I due termini tendono a 1: quale si discosta da 1 più lentamente?

<strong|3.> Calcola <math|lim<rsub|x→0><frac|(1+x)<rsup|1/3>+(1-x)<rsup|1/3>-2|1-cos x+x<rsup|4>>>.
</verifica>
