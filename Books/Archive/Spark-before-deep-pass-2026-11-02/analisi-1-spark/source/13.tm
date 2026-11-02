<chapter|De L'Hôpital e Taylor–Peano>

Consideriamo il limite

<\equation*>
lim<rsub|x→0><frac|e<rsup|x>-cos x-sin x+x<rsup|2>|x<rsup|2>>.
</equation*>

I termini costanti si cancellano. Anche quelli lineari si cancellano. Gli sviluppi al primo ordine ci lasciano resti <math|o(x)> che, divisi per <math|x<rsup|2>>, non sono controllati: per esempio <math|x<rsup|2>> è <math|o(x)>, ma il rapporto con <math|x<rsup|2>> vale 1. Occorre conoscere il comportamento al secondo ordine.

In questo capitolo incontriamo due risposte. De L'Hôpital trasferisce il problema a un rapporto di derivate, sotto precise ipotesi. Taylor costruisce direttamente un polinomio con un errore abbastanza piccolo. Useremo entrambi sapendo da quali risultati dipendono.

<section|Il teorema di De L'Hôpital e le sue ipotesi>

Presentiamo prima una versione destra in un punto finito <math|a>. Siano <math|f,g> definite e derivabili in tutto un intervallo <math|(a,a+δ)>, con <math|g(x)≠0> e <math|g<rprime|'>(x)≠0> in tale intervallo. Supponiamo inoltre una delle due condizioni:

<\itemize>
<item><math|f(x)→0> e <math|g(x)→0> per <math|x→a<rsup|+>>;

<item><math|g(x)→+∞> oppure <math|g(x)→-∞> per <math|x→a<rsup|+>>.
</itemize>

Se esiste il limite <math|f<rprime|'>(x)/g<rprime|'>(x)→ℓ> nella retta estesa, allora <math|f(x)/g(x)→ℓ>. Nel secondo caso non occorre imporre un limite a <math|f>. Lo stesso enunciato vale da sinistra, sostituendo l'intervallo con <math|(a-δ,a)>, e agli infiniti, usando un'intera semiretta. Per un limite bilatero applichiamo il risultato sui due lati e confrontiamo le conclusioni.

<\concetto|De L'Hôpital>
Sotto le ipotesi appena indicate, il limite del rapporto delle derivate determina il limite del rapporto delle funzioni. Il teorema si usa nelle forme <math|0/0> o con denominatore divergente. Non afferma che <math|f/g=f<rprime|'>/g<rprime|'>>.
</concetto>

Assumiamo questo teorema senza dimostrazione, come nelle fonti del corso. La richiesta di un intervallo intero non è un dettaglio: impedisce che il ragionamento salti attraverso infiniti buchi del dominio.

Per capire le ipotesi, guardiamo tre casi. In <math|cos x/x> per <math|x→0> il numeratore tende a 1: non siamo nel caso <math|0/0>. Derivare sopra e sotto darebbe un limite zero, mentre i veri limiti laterali sono <math|+∞> e <math|-∞>.

Invece <math|(2x+sin x)/x→2> per <math|x→+∞>, perché <math|sin x/x→0>. Il rapporto delle derivate è <math|2+cos x>, che non ha limite. Questo non contraddice il teorema: manca un'ipotesi, quindi non possiamo trarne una conclusione. In particolare, il mancato limite delle derivate non dimostra il mancato limite originale.

Infine <math|⌊x⌋/x→1>, anche restringendo <math|x> ai non interi. Su ciascun intervallo tra interi la parte intera ha derivata zero, ma non è derivabile su nessuna semiretta intera. Non possiamo applicare il teorema sul dominio bucato e concludere zero.

<section|Un'applicazione e una dipendenza da rispettare>

Per <math|x→0<rsup|+>>, il rapporto <math|arccos(1-x)/<sqrt|x>> è <math|0/0>. Le funzioni sono derivabili su un intervallo <math|(0,δ)> con <math|δ‹1>, e la derivata del denominatore non si annulla. Il rapporto delle derivate è

<\equation*>
<frac|1/<sqrt|1-(1-x)<rsup|2>>|1/(2<sqrt|x>)>=<frac|2|<sqrt|2-x>>→<sqrt|2>.
</equation*>

Il limite originale vale dunque <math|<sqrt|2>>. Abbiamo anche un controllo indipendente: ponendo <math|t=arccos(1-x)> otteniamo <math|x=1-cos t> e <math|t→0<rsup|+>>. Il rapporto diventa <math|t/<sqrt|1-cos t>> e il limite notevole del coseno dà lo stesso risultato.

Nell'esempio iniziale possiamo derivare due volte, ma dobbiamo controllare il passaggio intermedio. Al primo passo troviamo

<\equation*>
<frac|e<rsup|x>+sin x-cos x+2x|2x>,
</equation*>

ancora una forma <math|0/0>. Le seconde derivate danno

<\equation*>
<frac|e<rsup|x>+cos x+sin x+2|2>→2.
</equation*>

Su ciascun lato di zero il denominatore del primo rapporto ha derivata non nulla e quello originale ha derivata <math|2x≠0>. Le applicazioni sono quindi lecite e il limite iniziale vale 2.

<\attenzione|Le derivate non possono dimostrare il proprio fondamento>
Per ricavare <math|(sin x)<rprime|'>=cos x> abbiamo usato <math|sin h/h→1>. Applicare De L'Hôpital a quel rapporto, usando già la derivata del seno, verifica una conseguenza di un fatto noto; non ne dà una dimostrazione indipendente. Nel percorso del libro la geometria viene prima delle derivate proprio per evitare questo circolo.
</attenzione>

<section|Polinomio di Taylor e resto di Peano>

Cerchiamo un polinomio che sostituisca la funzione conservando l'accuratezza richiesta. Al primo ordine abbiamo usato la retta tangente. Al secondo ordine permettiamo anche un termine quadratico. All'ordine <math|n> chiediamo

<\equation*>
f(x)=P<rsub|n>(x)+o(x<rsup|n>)<space|2em>(x→0),
</equation*>

con <math|P<rsub|n>> di grado al più <math|n>. L'errore <math|o(x<rsup|n>)> è il <strong|resto di Peano>. Un termine di grado maggiore di <math|n> sarebbe già trascurabile rispetto a <math|x<rsup|n>> e non servirebbe a distinguere il polinomio.

Se un tale polinomio esiste, è <strong|unico>. Per provarlo, supponiamo di averne due, <math|P,Q>. Sottraendo gli sviluppi abbiamo <math|P-Q=o(x<rsup|n>)>. Se <math|P-Q> non fosse nullo, avrebbe un primo coefficiente non nullo, diciamo <math|a<rsub|k>x<rsup|k>> con <math|k≤n>. Dividiamo per <math|x<rsup|k>>: il polinomio a sinistra tende a <math|a<rsub|k>≠0>, perché tutti i termini di grado maggiore tendono a zero. Ma il resto diviso per <math|x<rsup|k>> tende a zero, essendo <math|k≤n>. La contraddizione prova l'unicità.

<\concetto|Teorema di Taylor–Peano>
Sia <math|n≥1>. Se <math|f> è derivabile <math|n-1> volte in un intorno di zero e possiede anche la derivata <math|n>-esima in zero, allora

<\equation*>
f(x)=<big|sum><rsub|k=0><rsup|n><frac|f<rsup|(k)>(0)|k!>x<rsup|k>+o(x<rsup|n>).
</equation*>

Qui <math|f<rsup|(k)>> è la derivata di ordine <math|k>, <math|f<rsup|(0)>=f> e <math|0!=1>. La formula con centro zero si chiama anche formula di Maclaurin.
</concetto>

Queste sono condizioni sufficienti. Un'approssimazione polinomiale può esistere anche per funzioni che non possiedono tutte le derivate richieste; per identificare i coefficienti con le derivate dobbiamo sapere che il teorema si applica. Per <math|n=1> la formula è esattamente la differenziabilità; all'ordine zero la formula <math|f(x)=f(0)+o(1)> esprime soltanto la continuità.

Possiamo giustificare l'esistenza usando il teorema di De L'Hôpital appena assunto. Sia <math|P> il polinomio della formula e poniamo <math|R=f-P>. Per costruzione <math|R<rsup|(j)>(0)=0> per ogni <math|0≤j≤n>. Se <math|n≥2>, dalla definizione dell'ultima derivata al centro segue

<\equation*>
<frac|R<rsup|(n-1)>(x)|n!x>→0.
</equation*>

Infatti il numeratore si annulla in zero e il suo rapporto incrementale tende a <math|R<rsup|(n)>(0)=0>. Ora risaliamo: il rapporto <math|R<rsup|(n-2)>(x)/((n!/2!)x<rsup|2>)> è una forma <math|0/0> e il rapporto delle sue derivate è proprio quello della riga precedente. De L'Hôpital gli assegna quindi limite zero. Ripetiamo risalendo, fino a <math|R(x)/x<rsup|n>→0>. Tutte le derivate necessarie esistono nell'intorno, i denominatori sono potenze non nulle sui due lati e i numeratori intermedi tendono a zero perché le rispettive derivate al centro esistono. Il caso <math|n=1> era già dimostrato con la differenziabilità.

Questa breve prova non richiede che la derivata <math|n>-esima esista o sia continua fuori dal centro: l'ultimo passaggio usa soltanto la sua definizione nel centro.

<figura|@IMG(taylor-cos)|Il coseno e i polinomi ottenuti fino ai gradi 2, 4 e 6. L'approssimazione descrive il comportamento vicino a zero; il teorema locale non promette accuratezza uniforme lontano dal centro.>

<section|Sviluppi elementari e significato dei coefficienti>

Per l'esponenziale tutte le derivate valgono 1 in zero. Quindi

<\equation*>
e<rsup|x>=1+x+<frac|x<rsup|2>|2>+<frac|x<rsup|3>|6>+<frac|x<rsup|4>|24>+<frac|x<rsup|5>|120>+o(x<rsup|5>).
</equation*>

Le derivate del seno tornano ciclicamente a seno, coseno, meno seno e meno coseno. In zero i valori sono <math|0,1,0,-1,0,1>. Per il coseno iniziano con <math|1,0,-1,0,1,0>. Otteniamo

<\equation*>
sin x=x-<frac|x<rsup|3>|6>+<frac|x<rsup|5>|120>+o(x<rsup|5>),
</equation*>

<\equation*>
cos x=1-<frac|x<rsup|2>|2>+<frac|x<rsup|4>|24>+o(x<rsup|5>).
</equation*>

Per <math|f(x)=log(1+x)>, derivando ripetutamente si trova, per <math|k≥1>,

<\equation*>
f<rsup|(k)>(x)=(-1)<rsup|k+1><frac|(k-1)!|(1+x)<rsup|k>>.
</equation*>

Il passo si controlla derivando: il fattore <math|-k> cambia il segno e trasforma <math|(k-1)!> in <math|k!>. Dividendo per <math|k!> nel teorema resta <math|(-1)<rsup|k+1>/k>. Così

<\equation*>
log(1+x)=x-<frac|x<rsup|2>|2>+<frac|x<rsup|3>|3>-<frac|x<rsup|4>|4>+<frac|x<rsup|5>|5>+o(x<rsup|5>).
</equation*>

Per una potenza reale le derivate danno successivamente i fattori <math|a>, <math|a(a-1)>, <math|a(a-1)(a-2)>; dunque, per <math|1+x›0>,

<\equation*>
(1+x)<rsup|a>=1+ax+<frac|a(a-1)|2>x<rsup|2>+<frac|a(a-1)(a-2)|6>x<rsup|3>+o(x<rsup|3>).
</equation*>

All'ordine <math|k> il coefficiente è il binomiale generalizzato <math|<binom|a|k>=a(a-1)⋯(a-k+1)/k!>. In particolare <math|a=-1> dà <math|1/(1+x)=1-x+x<rsup|2>-x<rsup|3>+o(x<rsup|3>)>. Sostituendo <math|x<rsup|2>> otteniamo <math|1/(1+x<rsup|2>)=1-x<rsup|2>+x<rsup|4>+o(x<rsup|4>)>.

Da qui ricaviamo

<\equation*>
arctan x=x-<frac|x<rsup|3>|3>+<frac|x<rsup|5>|5>+o(x<rsup|5>).
</equation*>

Per giustificare i coefficienti, ricordiamo che <math|(arctan x)<rprime|'>=1/(1+x<rsup|2>)>. Entrambe sono derivabili a ogni ordine vicino a zero. Se il coefficiente di <math|x<rsup|k>> nello sviluppo della derivata è <math|c<rsub|k>>, Taylor e unicità danno <math|arctan<rsup|(k+1)>(0)=k!c<rsub|k>>. Il coefficiente successivo nell'arcotangente è quindi <math|c<rsub|k>/(k+1)>. Non abbiamo derivato un resto senza conoscerne la regolarità.

Le formule scritte sono finite, ciascuna con il proprio resto. Non stiamo ancora affermando che una funzione sia uguale a una somma infinita.

<section|Parità e precisione del resto>

Se <math|f> è pari e ammette uno sviluppo, anche <math|P(-x)> approssima <math|f(x)> con lo stesso ordine. Per unicità <math|P(-x)=P(x)>, quindi i coefficienti dispari sono nulli. Se <math|f> è dispari, lo stesso argomento applicato a <math|-P(-x)> elimina i coefficienti pari. Questo spiega i soli gradi dispari nel seno e i soli gradi pari nel coseno.

Per una funzione regolare come il seno, Taylor all'ordine 4 dà <math|sin x=x-x<rsup|3>/6+o(x<rsup|4>)>, perché il coefficiente di grado 4 è zero. Ma non possiamo scrivere lo stesso polinomio con resto <math|o(x<rsup|5>)>: manca il termine <math|x<rsup|5>/120>, che non è trascurabile rispetto a <math|x<rsup|5>>.

Ora l'esempio iniziale si risolve senza derivate successive. Usiamo gli sviluppi all'ordine 2:

<\equation*>
e<rsup|x>=1+x+<frac|x<rsup|2>|2>+o(x<rsup|2>),<space|1em>sin x=x+o(x<rsup|2>).
</equation*>

Insieme a <math|cos x=1-x<rsup|2>/2+o(x<rsup|2>)>, questi danno un numeratore

<\equation*>
1+x+<frac|x<rsup|2>|2>-1+<frac|x<rsup|2>|2>-x+x<rsup|2>+o(x<rsup|2>)=2x<rsup|2>+o(x<rsup|2>).
</equation*>

Dividendo per <math|x<rsup|2>> resta <math|2+o(1)→2>. Il termine <math|x<rsup|2>/2> dell'esponenziale è proprio l'informazione che lo sviluppo al primo ordine aveva perso.

<\verifica|13>
<strong|1.> Scrivi lo sviluppo di <math|<sqrt|1+x>> fino all'ordine 2. Usa un resto esplicito per calcolare <math|lim<rsub|x→0><frac|<sqrt|1+x>-1-x/2|x<rsup|2>>>.

<strong|2.> Un'applicazione di De L'Hôpital a <math|(x+cos x)/x> per <math|x→+∞> porta a <math|1-sin x>. Che cosa permette di concludere il teorema? Calcola il limite originale con un altro argomento.
</verifica>
