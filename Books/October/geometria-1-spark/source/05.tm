<chapter|Span, indipendenza lineare e basi>

<\inbreve>
Se abbiamo in mano alcuni vettori, possiamo sommarli e moltiplicarli per numeri a piacere e ottenere tanti vettori nuovi. Qui ci chiediamo quali vettori riusciamo davvero a costruire così, e se ogni vettore costruito si ottiene in un modo solo. Le due domande, esistenza e unicità, portano a due concetti distinti, generatori e indipendenza, che insieme danno le basi e le coordinate.
</inbreve>

<section|Combinazioni lineari, span e generatori>

Prendiamo <math|u=(1,2)> e <math|v=(2,4)> e proviamo a costruire altri vettori moltiplicandoli per numeri reali e sommandoli:

<\equation*>
α(1,2)+β(2,4)=(α+2β,2α+4β)=(α+2β)(1,2).
</equation*>

Qualunque coefficiente scegliamo, otteniamo sempre un multiplo di <math|(1,2)>. Il vettore <math|(3,6)> si può costruire, per esempio con <math|α=β=1>, ma anche con <math|α=3> e <math|β=0>, quindi la scrittura non è unica. Il vettore <math|(1,0)>, invece, non si può costruire in nessun modo, perché ogni risultato ha la seconda componente doppia della prima e <math|(1,0)> non rispetta questa condizione. In questo esempio abbiamo quindi capito sia che cosa si raggiunge sia che cosa resta fuori.

Con <math|(1,0)> e <math|(0,1)> la situazione è molto diversa. Poiché <math|α(1,0)+β(0,1)=(α,β)>, ogni vettore del piano si ottiene scegliendo come coefficienti le sue due componenti, e in un modo solo.

Diamo un nome a queste costruzioni. Fissati dei vettori <math|v<rsub|1>,…,v<rsub|r>∈V>, una <strong|combinazione lineare> è un vettore della forma <math|α<rsub|1>v<rsub|1>+⋯+α<rsub|r>v<rsub|r>> con coefficienti <math|α<rsub|j>∈K>. I vettori restano fissati, mentre i coefficienti possono variare liberamente. L'insieme di tutte le combinazioni possibili si chiama <strong|span>, o sottospazio generato:

<\equation*>
<math-up|span>(v<rsub|1>,…,v<rsub|r>)={α<rsub|1>v<rsub|1>+⋯+α<rsub|r>v<rsub|r>:α<rsub|j>∈K}.
</equation*>

<\concetto|Span e generatori>
Lo span raccoglie tutti i vettori che possiamo ottenere con combinazioni lineari dei vettori dati. Questi sono <strong|generatori> di <math|V> se lo span coincide con tutto <math|V>.
</concetto>

Il nome «sottospazio generato» è giustificato, perché lo span è davvero un sottospazio. La somma di due combinazioni si ottiene sommando i coefficienti dello stesso vettore,

<\equation*>
<big|sum><rsub|j=1><rsup|r>α<rsub|j>v<rsub|j>+<big|sum><rsub|j=1><rsup|r>β<rsub|j>v<rsub|j>=<big|sum><rsub|j=1><rsup|r>(α<rsub|j>+β<rsub|j>)v<rsub|j>,
</equation*>

e un multiplo di una combinazione si ottiene moltiplicando tutti i coefficienti. In entrambi i casi otteniamo ancora una combinazione. Scegliendo tutti i coefficienti nulli otteniamo lo zero, e il criterio del capitolo precedente ci permette di concludere.

<figura|@IMG(span)|I multipli di un vettore non nullo formano una retta. Due direzioni non parallele generano un piano. Tre vettori che restano in un piano non possono produrre vettori fuori da esso.>

Possiamo parlare di span anche per un insieme <math|A> infinito, con una precisazione importante. Lo span <math|<math-up|span>(A)> contiene tutte le combinazioni di un numero <em|finito> di vettori di <math|A>, perché somme infinite non hanno senso in uno spazio vettoriale. La dimostrazione della chiusura funziona ancora, dato che sommando due combinazioni finite usiamo al più i vettori di entrambe, che sono ancora in numero finito. Per l'insieme vuoto poniamo <math|<math-up|span>(∅)={0}>, pensando allo zero come a una somma senza addendi.

Lo span ha una caratterizzazione che useremo spesso. Ogni <math|a∈A> ci sta dentro, perché <math|a=1·a>. D'altra parte, un sottospazio che contiene <math|A> deve contenere anche tutte le sue combinazioni finite, perché è chiuso per somma e per prodotto. Lo span è dunque il <strong|più piccolo sottospazio che contiene <math|A>>, o equivalentemente l'intersezione di tutti i sottospazi che contengono <math|A>. Ne segue anche che fare lo span due volte non aggiunge nulla: <math|<math-up|span>(<math-up|span>(A))=<math-up|span>(A)>.

Sapere che dei vettori generano <math|V> ci assicura che ogni vettore si può raggiungere. Non ci dice però che i coefficienti siano unici, come abbiamo visto con le due scritture di <math|(3,6)>.

<section|Indipendenza lineare: rendere unica la scrittura>

Torniamo a <math|u=(1,2)> e <math|v=(2,4)>. La combinazione <math|2u-v> vale zero, anche se i suoi coefficienti non sono nulli. Una relazione di questo tipo è ciò che rovina l'unicità. Se aggiungiamo <math|2u-v> a una qualsiasi scrittura, il risultato non cambia ma i coefficienti sì.

<\concetto|Indipendenza lineare>
I vettori <math|v<rsub|1>,…,v<rsub|r>> sono linearmente indipendenti se

<\equation*>
α<rsub|1>v<rsub|1>+⋯+α<rsub|r>v<rsub|r>=0<space|1em>⇒<space|1em>α<rsub|1>=⋯=α<rsub|r>=0.
</equation*>

Sono dipendenti se esiste una relazione nulla con almeno un coefficiente non nullo. Per una famiglia infinita si richiede l'indipendenza di ogni sottofamiglia finita.
</concetto>

La definizione guarda soltanto alle scritture dello zero, eppure garantisce l'unicità per tutti i vettori. Supponiamo che un vettore si scriva in due modi, <math|v=<big|sum>α<rsub|j>v<rsub|j>=<big|sum>β<rsub|j>v<rsub|j>>. Sottraendo le due scritture otteniamo <math|<big|sum>(α<rsub|j>-β<rsub|j>)v<rsub|j>=0>, cioè una scrittura dello zero. Se i vettori sono indipendenti, tutti i coefficienti <math|α<rsub|j>-β<rsub|j>> sono nulli, e le due scritture coincidono. Viceversa, se ogni vettore dello span si scrive in un modo solo, questo vale anche per lo zero, che ha già la scrittura con tutti i coefficienti nulli. Le due proprietà sono quindi equivalenti.

Conviene tenere distinte le due questioni. L'indipendenza garantisce che esista <em|al più> una scrittura, mentre l'esistenza di almeno una scrittura dipende dalla generazione.

Vediamo che cosa dice l'indipendenza nei casi più piccoli. Un solo vettore è indipendente esattamente quando non è nullo. Se <math|αv=0> con <math|α≠0>, infatti, moltiplicando per <math|α<rsup|-1>> troviamo <math|v=0>, mentre il vettore nullo ha la relazione non banale <math|1·0=0>. Due vettori, invece, sono dipendenti esattamente quando uno dei due è multiplo dell'altro. In una relazione <math|αu+βv=0> con un coefficiente non nullo basta isolare il vettore che ha quel coefficiente.

La stessa idea funziona con più vettori. Se in una relazione <math|<big|sum>α<rsub|j>v<rsub|j>=0> il coefficiente <math|α<rsub|i>> non è nullo, possiamo ricavare

<\equation*>
v<rsub|i>=-<big|sum><rsub|j≠i><frac|α<rsub|j>|α<rsub|i>>v<rsub|j>,
</equation*>

e quindi <math|v<rsub|i>> si costruisce con gli altri. Toglierlo non cambia lo span. Al contrario, se un vettore si può scrivere come combinazione degli altri, portando tutto da una parte otteniamo una relazione in cui il suo coefficiente vale 1, quindi non banale. <strong|Essere dipendenti significa dunque avere almeno un vettore superfluo.> Da qui seguono due osservazioni semplici. Se togliamo vettori da una famiglia indipendente resta indipendente, e se aggiungiamo vettori a una famiglia dipendente la relazione che c'era resta valida.

<\guidato|Leggere prima una coordinata utile>
Consideriamo <math|v<rsub|1>=(-1,1,0)> e <math|v<rsub|2>=(-2,1,1)> e chiediamoci se sono indipendenti. Nella terza posizione soltanto il secondo vettore ha un'entrata non nulla, quindi conviene cominciare da lì:

<\equation*>
αv<rsub|1>+βv<rsub|2>=(-α-2β,α+β,β)=(0,0,0).
</equation*>

La terza componente obbliga <math|β=0>, e a quel punto la seconda obbliga <math|α=0>. L'unica relazione possibile è quella banale, quindi i due vettori sono indipendenti. Notiamo che non è servito che ogni vettore avesse una sola entrata non nulla, ma solo trovare una posizione da cui cominciare.
</guidato>

<section|Basi e coordinate rispetto a una base>

Nel piano prendiamo <math|b<rsub|1>=(1,1)> e <math|b<rsub|2>=(1,-1)> e chiediamoci come ottenere <math|(3,1)>. Cerchiamo <math|α> e <math|β> con <math|αb<rsub|1>+βb<rsub|2>=(3,1)>, cioè <math|α+β=3> e <math|α-β=1>. Sommando le due equazioni otteniamo <math|2α=4>, quindi <math|α=2> e <math|β=1>.

Lo stesso conto funziona per qualsiasi vettore <math|(p,q)> e dà

<\equation*>
α=<frac|p+q|2>,<space|2em>β=<frac|p-q|2>.
</equation*>

Queste formule producono una coppia di coefficienti per ogni vettore, e una sola. I due vettori quindi generano il piano e sono indipendenti, cioè hanno entrambe le proprietà che cercavamo.

<\concetto|Base e coordinate>
Una base di <math|V> è una famiglia che genera <math|V> ed è linearmente indipendente. Ogni vettore si scrive quindi in modo unico come combinazione finita dei vettori della base. Fissato l'ordine <math|B=(b<rsub|1>,…,b<rsub|n>)>, se <math|v=x<rsub|1>b<rsub|1>+⋯+x<rsub|n>b<rsub|n>>, le coordinate sono <math|[v]<rsub|B>=(x<rsub|1>,…,x<rsub|n>)>, intese come colonna.
</concetto>

I vettori di una base non devono essere perpendicolari. Anche <math|((1,0),(1,1))> è una base del piano, perché ogni <math|(p,q)> si scrive in un modo solo come <math|(p-q)(1,0)+q(1,1)>. In questo riferimento obliquo, per esempio, <math|(3,1)=2(1,0)+(1,1)>.

L'ordine dei vettori invece conta, perché scambiandoli si scambiano anche le coordinate. Nella base <math|B=(b<rsub|1>,b<rsub|2>)> di prima abbiamo <math|[(3,1)]<rsub|B>=(2,1)>, mentre nella base canonica <math|E=((1,0),(0,1))> lo stesso vettore ha coordinate <math|(3,1)>. Il vettore è sempre lo stesso, e cambiano soltanto i numeri che usiamo per descriverlo.

<figura|@IMG(coordinate-basi)|Il vettore geometrico è lo stesso. Cambiando le direzioni di riferimento cambiano i coefficienti necessari per ricostruirlo.>

In <math|K<rsup|n>> la base più naturale è la <strong|base canonica> <math|e<rsub|1>,…,e<rsub|n>>, dove <math|e<rsub|j>> ha 1 nella posizione <math|j> e zero altrove. Ogni <math|x> si scrive come <math|<big|sum>x<rsub|j>e<rsub|j>>, quindi questi vettori generano. Sono anche indipendenti, perché in una combinazione dei vettori canonici la componente di posto <math|j> è il coefficiente di <math|e<rsub|j>>, e se la combinazione è nulla tutti i coefficienti devono essere zero.

Per i polinomi i monomi <math|1,X,X<rsup|2>,…> formano una base di <math|K[X]>. Generano, perché ogni polinomio è per definizione una loro combinazione finita, e sono indipendenti, perché una combinazione finita di monomi è il polinomio nullo solo quando tutti i coefficienti sono zero. Per <math|K<rsub|d>[X]> bastano <math|1,X,…,X<rsup|d>>. Se invece prendiamo soltanto i monomi di esponente pari, il loro span contiene esattamente i polinomi con sole potenze pari, e non raggiunge per esempio <math|X>.

Nessun insieme finito di polinomi genera tutto <math|K[X]>. Se i polinomi non sono tutti nulli, i loro gradi hanno un massimo <math|d>, e nessuna combinazione può avere grado più alto, quindi <math|X<rsup|d+1>> resta fuori. Se sono tutti nulli, generano soltanto lo zero.

<subsection|Per proseguire: coordinate in una base infinita>

Nella base infinita dei monomi il polinomio <math|2-X<rsup|3>> ha coordinata 2 davanti a 1, coordinata <math|-1> davanti a <math|X<rsup|3>> e zero davanti a tutti gli altri monomi. Le posizioni con coordinata non nulla formano il <strong|supporto>, che è finito. In generale, le coordinate rispetto a una base infinita <math|B> sono funzioni <math|B→K> a supporto finito, e non ogni funzione <math|B→K> può fare da sistema di coordinate.

<section|Il campo cambia le combinazioni ammesse>

In <math|ℂ<rsup|2>> consideriamo <math|v=(1,i)> e <math|w=(i,-1)>. Su <math|ℂ> sono dipendenti, perché <math|w=iv>. Ma se ammettiamo soltanto coefficienti reali la risposta cambia. Dalla prima coordinata di <math|αv+βw=0> otteniamo <math|α+iβ=0>, e poiché <math|α> e <math|β> sono reali, confrontando parte reale e parte immaginaria troviamo <math|α=β=0>. Su <math|ℝ> i due vettori sono indipendenti.

Il motivo è che con scalari complessi abbiamo più combinazioni a disposizione, e quindi più possibilità di trovare una relazione. Ogni relazione a coefficienti reali è anche una relazione complessa, quindi una famiglia indipendente su <math|ℂ> è indipendente anche su <math|ℝ>. Il contrario può fallire, come abbiamo appena visto, ma non può mai succedere che gli stessi vettori siano dipendenti su <math|ℝ> e indipendenti su <math|ℂ>.

Anche la possibilità di dividere per 2 dipende dal campo. La base <math|(1,1),(1,-1)> che abbiamo usato funziona su <math|ℝ> e su <math|ℂ>, ma in <math|<math-up|F><rsub|2>> vale <math|-1=1>, i due vettori coincidono e non sono più indipendenti. In un campo qualsiasi scriviamo <math|2=1<rsub|K>+1<rsub|K>>, e possiamo dividere per 2 soltanto quando questo elemento non è nullo.

<\verifica|5>
<strong|5.1.> In <math|ℝ<rsup|2>>, che cosa generano <math|(1,2)> e <math|(2,4)>? Sono indipendenti? Dopo aver deciso, trova due scritture diverse di <math|(3,6)> come loro combinazione.

<strong|5.2.> Trova le coordinate di <math|(5,-1)> nella base <math|((1,1),(1,-1))>. Spiega anche perché una famiglia che contiene zero non può essere una base.
</verifica>
