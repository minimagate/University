<chapter|De L'Hôpital e Taylor–Peano>

<\inbreve>
A volte, in un limite, tutto ciò che conosciamo si cancella. Le costanti spariscono, anche i termini lineari spariscono, e lo sviluppo al primo ordine ci lascia con un resto che non sappiamo controllare. Per andare avanti serve un'informazione più fine, e qui ne incontriamo due fonti diverse. Il teorema di De L'Hôpital sposta il problema sulle derivate, mentre la formula di Taylor costruisce un polinomio che approssima la funzione con la precisione che ci serve.
</inbreve>

Partiamo da un limite concreto,

<\equation*>
lim<rsub|x→0><frac|e<rsup|x>-cos x-sin x+x<rsup|2>|x<rsup|2>>.
</equation*>

Al numeratore le costanti si cancellano, perché <math|e<rsup|x>> e <math|cos x> partono entrambi da 1, e si cancellano anche i termini lineari, perché <math|e<rsup|x>> e <math|sin x> crescono entrambi come <math|x>. Gli sviluppi al primo ordine ci lasciano allora soltanto resti <math|o(x)>, che divisi per <math|x<rsup|2>> non sappiamo controllare. Basta pensare che <math|x<rsup|2>> stesso è un <math|o(x)>, eppure il suo rapporto con <math|x<rsup|2>> vale 1. Dobbiamo conoscere il comportamento delle funzioni al secondo ordine.

In questo capitolo vediamo due modi per farlo. De L'Hôpital trasforma il limite in un rapporto di derivate, a patto di rispettare ipotesi precise. Taylor costruisce invece direttamente un polinomio con un errore abbastanza piccolo. Useremo entrambi gli strumenti, facendo sempre attenzione ai risultati su cui si appoggiano.

<section|Il teorema di De L'Hôpital e le sue ipotesi>

Cominciamo da una versione da destra in un punto finito <math|a>. Siano <math|f> e <math|g> definite e derivabili su tutto un intervallo <math|(a,a+δ)>, e supponiamo che in quell'intervallo <math|g(x)≠0> e <math|g<rprime|'>(x)≠0>. Supponiamo inoltre che valga una di queste due condizioni:

<\itemize>
<item><math|f(x)→0> e <math|g(x)→0> per <math|x→a<rsup|+>>;

<item><math|g(x)→+∞> oppure <math|g(x)→-∞> per <math|x→a<rsup|+>>.
</itemize>

Allora, se il rapporto delle derivate <math|f<rprime|'>(x)/g<rprime|'>(x)> ha un limite <math|ℓ> nella retta estesa, anche <math|f(x)/g(x)→ℓ>. Nel secondo caso, curiosamente, non serve sapere nulla del limite di <math|f>.

Lo stesso enunciato vale da sinistra, usando l'intervallo <math|(a-δ,a)>, e anche all'infinito, usando un'intera semiretta. Per un limite bilatero applichiamo il risultato separatamente sui due lati e confrontiamo le conclusioni.

<\concetto|De L'Hôpital>
Sotto le ipotesi appena indicate, il limite del rapporto delle derivate determina il limite del rapporto delle funzioni. Il teorema si usa nelle forme <math|0/0> o con denominatore divergente. Non afferma che <math|f/g=f<rprime|'>/g<rprime|'>>.
</concetto>

Non dimostreremo questo teorema e lo useremo come uno strumento. È importante però prendere sul serio le sue ipotesi. La richiesta di derivabilità su un intervallo intero, per esempio, non è un dettaglio tecnico, perché impedisce al ragionamento di scavalcare infiniti buchi nel dominio.

<subsection|Tre casi in cui il teorema non dà la risposta>

Il modo migliore per capire le ipotesi è vedere che cosa succede quando mancano. Prendiamo <math|cos x/x> per <math|x→0>. Il numeratore tende a 1, quindi non siamo nel caso <math|0/0>. Se derivassimo comunque sopra e sotto otterremmo <math|-sin x>, che tende a zero, mentre i veri limiti laterali sono <math|+∞> da destra e <math|-∞> da sinistra.

Il secondo caso è più sottile. Il limite di <math|(2x+sin x)/x> per <math|x→+∞> vale 2, perché <math|sin x/x→0>. Il rapporto delle derivate, invece, è <math|2+cos x>, che non ha limite. Questo non contraddice il teorema. Manca un'ipotesi, cioè l'esistenza del limite delle derivate, e quindi il teorema semplicemente non dice nulla. In particolare, il fatto che il rapporto delle derivate non abbia limite non dimostra che non lo abbia quello originale.

Il terzo caso riguarda il dominio. Il rapporto <math|⌊x⌋/x> tende a 1 per <math|x→+∞>, anche se restringiamo <math|x> ai numeri non interi. Fra due interi la parte intera è costante e ha derivata zero, ma non è derivabile su nessuna semiretta intera, perché salta in ogni intero. Se applicassimo il teorema sul dominio bucato concluderemmo che il limite è zero, il che è falso.

<section|Un'applicazione e una dipendenza da rispettare>

Per <math|x→0<rsup|+>> il rapporto <math|arccos(1-x)/<sqrt|x>> è della forma <math|0/0>. Le due funzioni sono derivabili su un intervallo <math|(0,δ)> con <math|δ‹1>, e la derivata del denominatore non si annulla, quindi possiamo applicare il teorema. Il rapporto delle derivate è

<\equation*>
<frac|1/<sqrt|1-(1-x)<rsup|2>>|1/(2<sqrt|x>)>=<frac|2|<sqrt|2-x>>→<sqrt|2>,
</equation*>

e quindi anche il limite di partenza vale <math|<sqrt|2>>. Possiamo controllarlo con un argomento indipendente. Ponendo <math|t=arccos(1-x)> abbiamo <math|x=1-cos t> e <math|t→0<rsup|+>>, e il rapporto diventa <math|t/<sqrt|1-cos t>>. Il limite notevole del coseno dice che <math|1-cos t> si comporta come <math|t<rsup|2>/2>, e il risultato è di nuovo <math|<sqrt|2>>.

<subsection|Due applicazioni successive>

Torniamo al limite iniziale. Possiamo applicare De L'Hôpital due volte, ma dobbiamo controllare anche il passaggio intermedio. Dopo la prima applicazione troviamo

<\equation*>
<frac|e<rsup|x>+sin x-cos x+2x|2x>,
</equation*>

che è ancora della forma <math|0/0>. Derivando di nuovo otteniamo

<\equation*>
<frac|e<rsup|x>+cos x+sin x+2|2>→2.
</equation*>

Le due applicazioni sono lecite, perché su ciascun lato di zero la derivata del denominatore originale, cioè <math|2x>, è diversa da zero, e lo è anche quella del secondo denominatore, che vale 2. Il limite iniziale vale quindi 2.

<\attenzione|Le derivate non possono dimostrare il proprio fondamento>
Per ricavare <math|(sin x)<rprime|'>=cos x> abbiamo usato <math|sin h/h→1>. Applicare De L'Hôpital a quel rapporto, usando già la derivata del seno, verifica una conseguenza di un fatto noto; non ne dà una dimostrazione indipendente. Nel percorso del libro la geometria viene prima delle derivate proprio per evitare questo circolo.
</attenzione>

<section|Polinomio di Taylor e resto di Peano>

Al primo ordine la retta tangente approssima la funzione con un errore <math|o(x)>, e se poi dobbiamo dividere per <math|x<rsup|2>> questo controllo non basta. L'idea naturale è aggiungere un termine quadratico, cioè approssimare la funzione con una parabola invece che con una retta.

<subsection|Prima il grado 2: da dove viene il coefficiente 1/2?>

Cerchiamo un polinomio <math|P<rsub|2>(x)=A+Bx+Cx<rsup|2>> che stia il più vicino possibile a <math|f> attorno a zero. La retta tangente aveva lo stesso valore e la stessa derivata di <math|f>, e ora chiediamo che il polinomio abbia anche la stessa derivata seconda. Le tre richieste sono

<\equation*>
A=f(0),<space|1em>B=f<rprime|'>(0),<space|1em>2C=f<rprime|''>(0),
</equation*>

dove il 2 compare perché la derivata seconda di <math|Cx<rsup|2>> è <math|2C>. Il candidato è quindi

<\equation*>
P<rsub|2>(x)=f(0)+f<rprime|'>(0)x+<frac|f<rprime|''>(0)|2>x<rsup|2>.
</equation*>

Per l'esponenziale le tre derivate in zero valgono tutte 1, e il candidato è <math|1+x+x<rsup|2>/2>. Per il coseno valgono 1, 0 e <math|-1>, e il candidato è <math|1-x<rsup|2>/2>, in accordo con quello che sapevamo già. Il coefficiente quadratico non è la derivata seconda, ma la sua metà.

<subsection|La prova al secondo ordine>

Ora dobbiamo dimostrare che il candidato funziona davvero, cioè che l'errore è <math|o(x<rsup|2>)>. Supponiamo che <math|f> sia derivabile in un intorno di zero e che esista <math|f<rprime|''>(0)>, e chiamiamo <math|R=f-P<rsub|2>> l'errore. Grazie alla scelta dei coefficienti,

<\equation*>
R(0)=0,<space|1em>R<rprime|'>(0)=0,<space|1em>R<rprime|''>(0)=0.
</equation*>

Vogliamo mostrare che <math|R(x)/x<rsup|2>→0>. Il rapporto è della forma <math|0/0>, perché <math|R> è derivabile, e quindi continua, in zero. Applicando De L'Hôpital, il rapporto delle derivate è <math|R<rprime|'>(x)/(2x)>, e resta da capire a che cosa tende. Qui non serve applicare il teorema una seconda volta, perché la definizione di derivata seconda nel centro dà direttamente la risposta:

<\equation*>
<frac|R<rprime|'>(x)|2x>=<frac|1|2><frac|R<rprime|'>(x)-R<rprime|'>(0)|x-0>→<frac|1|2>R<rprime|''>(0)=0.
</equation*>

De L'Hôpital, applicato sui due lati di zero, dà allora <math|R(x)/x<rsup|2>→0>, e abbiamo dimostrato che

<\equation*>
f(x)=f(0)+f<rprime|'>(0)x+<frac|f<rprime|''>(0)|2>x<rsup|2>+o(x<rsup|2>).
</equation*>

Notiamo che non abbiamo chiesto l'esistenza di <math|f<rprime|''>> fuori da zero, perché il limite del rapporto derivato è venuto dalla sola definizione di <math|f<rprime|''>(0)>.

<subsection|Il teorema a un ordine qualunque>

Lo stesso ragionamento funziona per i gradi successivi. La derivata <math|k>-esima di <math|x<rsup|k>> vale <math|k!>, quindi per fare in modo che il polinomio abbia in zero la stessa derivata <math|k>-esima di <math|f> dobbiamo usare il coefficiente <math|f<rsup|(k)>(0)/k!>.

<\concetto|Teorema di Taylor–Peano>
Sia <math|n≥1>. Se <math|f> è derivabile <math|n-1> volte in un intorno di zero e possiede anche la derivata <math|n>-esima in zero, allora

<\equation*>
f(x)=<big|sum><rsub|k=0><rsup|n><frac|f<rsup|(k)>(0)|k!>x<rsup|k>+o(x<rsup|n>).
</equation*>

Qui <math|f<rsup|(k)>> è la derivata di ordine <math|k>, <math|f<rsup|(0)>=f> e <math|0!=1>. La formula con centro zero si chiama anche formula di Maclaurin. L'errore <math|o(x<rsup|n>)> si chiama <strong|resto di Peano>.
</concetto>

Il polinomio ha grado al massimo <math|n>, perché termini di grado più alto sarebbero comunque trascurabili rispetto a <math|x<rsup|n>>. Per <math|n=1> ritroviamo la differenziabilità, e all'ordine zero la scrittura <math|f(x)=f(0)+o(1)> esprime soltanto la continuità. Le ipotesi del teorema sono sufficienti ma non necessarie, perché uno sviluppo polinomiale può esistere anche senza tutte le derivate richieste. Per poter identificare i coefficienti con le derivate, però, dobbiamo sapere che il teorema si applica.

<subsection|Perché la prova si ripete>

Sia <math|P> il polinomio della formula e sia <math|R=f-P>. La scelta dei coefficienti assicura che <math|R<rsup|(j)>(0)=0> per ogni <math|0≤j≤n>. I casi <math|n=1> e <math|n=2> li abbiamo già visti. Al grado 3 la strada è una catena di tre rapporti,

<\equation*>
<frac|R(x)|x<rsup|3>>,<space|1em><frac|R<rprime|'>(x)|3x<rsup|2>>,<space|1em><frac|R<rprime|''>(x)|6x>,
</equation*>

ciascuno dei quali è il rapporto delle derivate del precedente. L'ultimo tende a zero per la definizione di <math|R<rsup|(3)>(0)=0>, e De L'Hôpital assegna allora limite zero al secondo e poi al primo. È lo stesso ragionamento del secondo ordine, con un passaggio in più.

All'ordine <math|n> l'ultimo rapporto della catena è

<\equation*>
<frac|R<rsup|(n-1)>(x)|n!x>=<frac|1|n!><frac|R<rsup|(n-1)>(x)-R<rsup|(n-1)>(0)|x>→0,
</equation*>

e il suo limite viene ancora dalla definizione dell'ultima derivata nel centro. Il rapporto che lo precede è <math|R<rsup|(n-2)>(x)/((n!/2!)x<rsup|2>)>, e il rapporto delle sue derivate è quello appena scritto, quindi De L'Hôpital gli assegna limite zero.

Ripetendo il passaggio arriviamo fino a <math|R(x)/x<rsup|n>→0>. A ogni passo le ipotesi del teorema sono soddisfatte. Il numeratore tende a zero, perché è derivabile nel centro e lì vale zero, tutte le derivate necessarie esistono nell'intorno e i denominatori, con le loro derivate, non si annullano fuori da zero. Come sempre applichiamo il teorema separatamente sui due lati.

La prova usa la derivata <math|n>-esima soltanto nel centro, e non ne chiede né la continuità né l'esistenza altrove.

<subsection|Perché il polinomio è unico>

Supponiamo che due polinomi <math|P> e <math|Q>, di grado al massimo <math|n>, approssimino entrambi <math|f> con errore <math|o(x<rsup|n>)>. Sottraendo le due approssimazioni otteniamo <math|P-Q=o(x<rsup|n>)>. Se la differenza non fosse il polinomio nullo, avrebbe un termine di grado minimo con coefficiente diverso da zero, diciamo <math|a<rsub|k>x<rsup|k>> con <math|k≤n>. Dividendo <math|P-Q> per <math|x<rsup|k>> otterremmo un limite uguale ad <math|a<rsub|k>≠0>, perché tutti i termini di grado più alto tendono a zero. Ma dividendo per la stessa potenza un <math|o(x<rsup|n>)> troviamo <math|x<rsup|n-k>o(1)>, che tende a zero perché <math|n-k≥0>. Questa contraddizione dimostra che i due polinomi coincidono.

<figura|@IMG(taylor-cos)|Il coseno e i polinomi ottenuti fino ai gradi 2, 4 e 6. L'approssimazione descrive il comportamento vicino a zero; il teorema locale non promette accuratezza uniforme lontano dal centro.>

<section|Sviluppi elementari e significato dei coefficienti>

Ora possiamo calcolare gli sviluppi delle funzioni elementari. Per l'esponenziale tutte le derivate valgono 1 in zero, quindi

<\equation*>
e<rsup|x>=1+x+<frac|x<rsup|2>|2>+<frac|x<rsup|3>|6>+<frac|x<rsup|4>|24>+<frac|x<rsup|5>|120>+o(x<rsup|5>).
</equation*>

Le derivate del seno girano in tondo, passando per coseno, meno seno, meno coseno e di nuovo seno. In zero i loro valori sono quindi <math|0,1,0,-1,0,1>, mentre per il coseno sono <math|1,0,-1,0,1,0>. Otteniamo

<\equation*>
sin x=x-<frac|x<rsup|3>|6>+<frac|x<rsup|5>|120>+o(x<rsup|5>),
</equation*>

<\equation*>
cos x=1-<frac|x<rsup|2>|2>+<frac|x<rsup|4>|24>+o(x<rsup|5>).
</equation*>

<subsection|Logaritmo e potenze>

Per <math|f(x)=log(1+x)>, derivando più volte si trova, per <math|k≥1>,

<\equation*>
f<rsup|(k)>(x)=(-1)<rsup|k+1><frac|(k-1)!|(1+x)<rsup|k>>.
</equation*>

La formula si controlla per induzione. Derivando una volta compare un fattore <math|-k>, che cambia il segno e trasforma <math|(k-1)!> in <math|k!>. Nel teorema di Taylor dividiamo per <math|k!>, e il coefficiente che resta è <math|(-1)<rsup|k+1>/k>, quindi

<\equation*>
log(1+x)=x-<frac|x<rsup|2>|2>+<frac|x<rsup|3>|3>-<frac|x<rsup|4>|4>+<frac|x<rsup|5>|5>+o(x<rsup|5>).
</equation*>

Per una potenza reale le derivate successive producono i fattori <math|a>, <math|a(a-1)>, <math|a(a-1)(a-2)> e così via, e per <math|1+x›0> otteniamo

<\equation*>
(1+x)<rsup|a>=1+ax+<frac|a(a-1)|2>x<rsup|2>+<frac|a(a-1)(a-2)|6>x<rsup|3>+o(x<rsup|3>).
</equation*>

All'ordine <math|k> il coefficiente è il binomiale generalizzato <math|<binom|a|k>=a(a-1)⋯(a-k+1)/k!>, che per <math|a> intero coincide con quello che già conosciamo. Il caso <math|a=-1> dà <math|1/(1+x)=1-x+x<rsup|2>-x<rsup|3>+o(x<rsup|3>)>, e sostituendo <math|x<rsup|2>> al posto di <math|x> otteniamo <math|1/(1+x<rsup|2>)=1-x<rsup|2>+x<rsup|4>+o(x<rsup|4>)>.

<subsection|Ricavare l'arcotangente dalla sua derivata>

Quest'ultimo sviluppo ci regala quello dell'arcotangente,

<\equation*>
arctan x=x-<frac|x<rsup|3>|3>+<frac|x<rsup|5>|5>+o(x<rsup|5>).
</equation*>

Il motivo è che <math|(arctan x)<rprime|'>=1/(1+x<rsup|2>)>, e conoscere lo sviluppo della derivata significa conoscere le derivate successive in zero. Il termine costante 1 della derivata corrisponde al termine <math|x> dell'arcotangente, perché la derivata di <math|x> è 1. Il termine <math|-x<rsup|2>> corrisponde a <math|-x<rsup|3>/3>, che ha derivata <math|-x<rsup|2>>, e allo stesso modo <math|x<rsup|4>> corrisponde a <math|x<rsup|5>/5>.

Per rendere preciso questo ragionamento usiamo il teorema di Taylor e l'unicità. Entrambe le funzioni sono derivabili quante volte vogliamo vicino a zero. Se nello sviluppo della derivata il coefficiente di <math|x<rsup|k>> è <math|c<rsub|k>>, allora la derivata <math|k>-esima di <math|1/(1+x<rsup|2>)> in zero vale <math|k!c<rsub|k>>, e questa è la derivata <math|(k+1)>-esima dell'arcotangente. Dividendo per <math|(k+1)!> troviamo il coefficiente <math|c<rsub|k>/(k+1)>. In questo modo non abbiamo mai dovuto derivare un resto, di cui non conosciamo la regolarità.

Tutte queste formule sono finite, ciascuna con il suo resto. Non stiamo affermando che una funzione sia uguale a una somma infinita, che è una questione diversa e più delicata.

<section|Parità e precisione del resto>

La simmetria di una funzione si vede anche nei suoi sviluppi. Se <math|f> è pari e ha uno sviluppo con polinomio <math|P>, allora anche <math|P(-x)> approssima <math|f(-x)=f(x)> con lo stesso ordine, e per l'unicità <math|P(-x)=P(x)>, quindi i coefficienti dispari sono nulli. Se <math|f> è dispari, lo stesso argomento applicato a <math|-P(-x)> elimina i coefficienti pari. Ecco perché il seno contiene solo potenze dispari e il coseno solo potenze pari.

Questa osservazione ci regala un ordine di precisione in più. All'ordine 4, per esempio, il teorema di Taylor dà <math|sin x=x-x<rsup|3>/6+o(x<rsup|4>)>, perché il coefficiente di grado 4 è zero. Lo stesso polinomio non va però bene con resto <math|o(x<rsup|5>)>, perché gli manca il termine <math|x<rsup|5>/120>, che non è trascurabile rispetto a <math|x<rsup|5>>.

<subsection|Ritornare al limite iniziale>

Ora l'esempio da cui siamo partiti si risolve senza derivare più volte. Usiamo gli sviluppi all'ordine 2,

<\equation*>
e<rsup|x>=1+x+<frac|x<rsup|2>|2>+o(x<rsup|2>),<space|1em>sin x=x+o(x<rsup|2>),
</equation*>

insieme a <math|cos x=1-x<rsup|2>/2+o(x<rsup|2>)>. Il numeratore diventa

<\equation*>
1+x+<frac|x<rsup|2>|2>-1+<frac|x<rsup|2>|2>-x+x<rsup|2>+o(x<rsup|2>)=2x<rsup|2>+o(x<rsup|2>),
</equation*>

e dividendo per <math|x<rsup|2>> resta <math|2+o(1)>, che tende a 2. Il termine <math|x<rsup|2>/2> dell'esponenziale, insieme a quello del coseno, è l'informazione che lo sviluppo al primo ordine aveva perso.

<\verifica|13>
<strong|1.> Scrivi lo sviluppo di <math|<sqrt|1+x>> fino all'ordine 2. Usa un resto esplicito per calcolare <math|lim<rsub|x→0><frac|<sqrt|1+x>-1-x/2|x<rsup|2>>>.

<strong|2.> Un'applicazione di De L'Hôpital a <math|(x+cos x)/x> per <math|x→+∞> porta a <math|1-sin x>. Che cosa permette di concludere il teorema? Calcola il limite originale con un altro argomento.
</verifica>
