<chapter|Span, indipendenza lineare e basi>

<\inbreve>
Quali vettori possiamo costruire partendo da quelli che conosciamo? Le combinazioni lineari descriveranno tutte le possibilità. Separando esistenza e unicità della scrittura arriveremo alle basi e alle coordinate.
</inbreve>

<section|Combinazioni lineari, span e generatori>

Prendiamo <math|u=(1,2)> e <math|v=(2,4)>. Possiamo moltiplicarli per coefficienti reali e sommare:

<\equation*>
α(1,2)+β(2,4)=(α+2β,2α+4β)=(α+2β)(1,2).
</equation*>

Ogni risultato è dunque un multiplo di <math|(1,2)>. Possiamo ottenere <math|(3,6)>: per esempio scegliendo <math|α=β=1>, oppure <math|α=3,β=0>. La scrittura non è unica.

Possiamo ottenere anche <math|(1,0)>? No: ogni risultato ha la seconda componente doppia della prima, mentre <math|(1,0)> non rispetta questa condizione. Abbiamo descritto sia ciò che possiamo raggiungere sia ciò che rimane fuori.

Con <math|(1,0)> e <math|(0,1)> la situazione cambia: <math|α(1,0)+β(0,1)=(α,β)>. Ogni vettore del piano si ottiene scegliendo le sue due componenti come coefficienti.

Fissati <math|v<rsub|1>,…,v<rsub|r>∈V>, una <strong|combinazione lineare> è un vettore <math|α<rsub|1>v<rsub|1>+⋯+α<rsub|r>v<rsub|r>>, con coefficienti <math|α<rsub|j>∈K>. I vettori sono fissati; cambiano i coefficienti. Lo <strong|span>, o sottospazio generato, è l'insieme di tutte le combinazioni:

<\equation*>
<math-up|span>(v<rsub|1>,…,v<rsub|r>)={α<rsub|1>v<rsub|1>+⋯+α<rsub|r>v<rsub|r>:α<rsub|j>∈K}.
</equation*>

<\concetto|Span e generatori>
Lo span raccoglie tutti i vettori che possiamo ottenere con combinazioni lineari dei vettori dati. Questi sono <strong|generatori> di <math|V> se lo span coincide con tutto <math|V>.
</concetto>

La somma di due combinazioni si ottiene sommando i coefficienti dello stesso vettore; un multiplo moltiplica tutti i coefficienti. In particolare,

<\equation*>
<big|sum><rsub|j=1><rsup|r>α<rsub|j>v<rsub|j>+<big|sum><rsub|j=1><rsup|r>β<rsub|j>v<rsub|j>=<big|sum><rsub|j=1><rsup|r>(α<rsub|j>+β<rsub|j>)v<rsub|j>.
</equation*>

Scegliendo tutti i coefficienti zero otteniamo zero. Il criterio del capitolo precedente dimostra quindi che lo span è un sottospazio.

<figura|@IMG(span)|I multipli di un vettore non nullo formano una retta. Due direzioni non parallele generano un piano. Tre vettori che restano in un piano non possono produrre vettori fuori da esso.>

Per un insieme <math|A> anche infinito, <math|<math-up|span>(A)> comprende tutte le combinazioni di un numero <em|finito> di vettori di <math|A>. Non sono ammesse somme infinite. Se sommiamo due combinazioni finite, usiamo al più l'unione dei due insiemi finiti di vettori: la dimostrazione della chiusura resta valida. Poniamo <math|<math-up|span>(∅)={0}>, usando la somma vuota.

Ogni <math|a∈A> sta nello span perché <math|a=1a>. Inoltre un sottospazio che contiene <math|A> contiene ogni sua combinazione finita. Dunque lo span è il <strong|più piccolo sottospazio che contiene <math|A>>. Equivalentemente è l'intersezione di tutti i sottospazi che contengono <math|A>. Fare lo span una seconda volta non aggiunge nulla: <math|<math-up|span>(<math-up|span>(A))=<math-up|span>(A)>.

La condizione <math|<math-up|span>(A)=V> garantisce che ogni vettore sia raggiungibile. Non garantisce che i coefficienti siano unici: <math|(3,6)> ci ha già dato due scritture diverse.

<section|Indipendenza lineare: rendere unica la scrittura>

Per <math|u=(1,2)> e <math|v=(2,4)> la combinazione <math|2u-v=0> ha coefficienti non tutti nulli. Questa relazione permette di modificare i coefficienti di una rappresentazione senza cambiare il risultato. È l'ostacolo all'unicità.

<\concetto|Indipendenza lineare>
I vettori <math|v<rsub|1>,…,v<rsub|r>> sono linearmente indipendenti se

<\equation*>
α<rsub|1>v<rsub|1>+⋯+α<rsub|r>v<rsub|r>=0<space|1em>⇒<space|1em>α<rsub|1>=⋯=α<rsub|r>=0.
</equation*>

Sono dipendenti se esiste una relazione nulla con almeno un coefficiente non nullo. Per una famiglia infinita si richiede l'indipendenza di ogni sottofamiglia finita.
</concetto>

Perché basta controllare le rappresentazioni di zero? Supponiamo che <math|v=<big|sum>α<rsub|j>v<rsub|j>=<big|sum>β<rsub|j>v<rsub|j>>. Sottraendo otteniamo <math|<big|sum>(α<rsub|j>-β<rsub|j>)v<rsub|j>=0>. Se i vettori sono indipendenti, tutti i coefficienti della differenza sono zero: <math|α<rsub|j>=β<rsub|j>>. Viceversa, se le rappresentazioni sono uniche per i vettori dello span, lo sono per zero, che ha già la rappresentazione con tutti i coefficienti nulli. Le due proprietà sono equivalenti.

L'indipendenza assicura <em|al più> una scrittura; l'esistenza dipende dalla generazione.

Un solo vettore è indipendente esattamente quando è non nullo. Infatti, se <math|αv=0> con <math|α≠0>, moltiplicare per <math|α<rsup|-1>> darebbe <math|v=0>. Il vettore nullo invece ha la relazione non banale <math|1·0=0>.

Due vettori sono dipendenti esattamente quando almeno uno è multiplo dell'altro: basta isolare un vettore il cui coefficiente è non nullo in una relazione <math|αu+βv=0>.

La stessa idea vale per più vettori. Da una relazione <math|<big|sum>α<rsub|j>v<rsub|j>=0> con <math|α<rsub|i>≠0> si ricava

<\equation*>
v<rsub|i>=-<big|sum><rsub|j≠i><frac|α<rsub|j>|α<rsub|i>>v<rsub|j>.
</equation*>

Quel vettore si può ottenere dagli altri: eliminarlo non cambia lo span.

Viceversa, portando a sinistra una sua espressione mediante gli altri, il coefficiente di <math|v<rsub|i>> è 1, e abbiamo una relazione non banale. <strong|Dipendenza significa dunque presenza di un vettore superfluo.> Un sottoinsieme di indipendenti rimane indipendente; aggiungere vettori a dipendenti conserva la relazione già presente e quindi la dipendenza.

<\guidato|Leggere prima una coordinata utile>
Consideriamo <math|v<rsub|1>=(-1,1,0)> e <math|v<rsub|2>=(-2,1,1)>. Nella terza posizione soltanto il secondo vettore contribuisce. È utile cominciare lì:

<\equation*>
αv<rsub|1>+βv<rsub|2>=(-α-2β,α+β,β)=(0,0,0).
</equation*>

La terza componente impone <math|β=0>; poi la seconda impone <math|α=0>. Abbiamo esaurito tutte le possibilità: i due vettori sono indipendenti. Non occorre che ogni vettore abbia una sola entrata non nulla.
</guidato>

<section|Basi e coordinate rispetto a una base>

Nel piano prendiamo <math|b<rsub|1>=(1,1)> e <math|b<rsub|2>=(1,-1)>. Per ottenere <math|(3,1)> cerchiamo <math|αb<rsub|1>+βb<rsub|2>=(3,1)>. Le componenti danno <math|α+β=3> e <math|α-β=1>. Sommando le uguaglianze otteniamo <math|2α=4>, quindi <math|α=2> e <math|β=1>.

Per un vettore qualunque <math|(p,q)> troviamo allo stesso modo

<\equation*>
α=<frac|p+q|2>,<space|2em>β=<frac|p-q|2>.
</equation*>

Le formule forniscono una e una sola coppia per ogni vettore: abbiamo sia generazione sia indipendenza.

<\concetto|Base e coordinate>
Una base di <math|V> è una famiglia che genera <math|V> ed è linearmente indipendente. Ogni vettore si scrive quindi in modo unico come combinazione finita dei vettori della base. Fissato l'ordine <math|B=(b<rsub|1>,…,b<rsub|n>)>, se <math|v=x<rsub|1>b<rsub|1>+⋯+x<rsub|n>b<rsub|n>>, le coordinate sono <math|[v]<rsub|B>=(x<rsub|1>,…,x<rsub|n>)>, intese come colonna.
</concetto>

Non è necessario che le direzioni di una base siano perpendicolari. Per esempio anche <math|((1,0),(1,1))> è una base: ogni <math|(p,q)> si scrive in modo unico come <math|(p-q)(1,0)+q(1,1)>. In questo riferimento obliquo <math|(3,1)=2(1,0)+(1,1)>.

L'ordine è necessario: scambiare i due vettori di base scambia le due coordinate. Per la base appena studiata, <math|[(3,1)]<rsub|B>=(2,1)>. Nella base canonica <math|E=((1,0),(0,1))> lo stesso vettore ha coordinate <math|(3,1)>.

<figura|@IMG(coordinate-basi)|Il vettore geometrico è lo stesso. Cambiando le direzioni di riferimento cambiano i coefficienti necessari per ricostruirlo.>

In <math|K<rsup|n>> la base canonica è <math|e<rsub|1>,…,e<rsub|n>>, dove <math|e<rsub|j>> ha 1 nella posizione <math|j> e zero nelle altre. Ogni <math|x> si scrive <math|<big|sum>x<rsub|j>e<rsub|j>>. In una combinazione nulla la componente <math|j> è proprio il coefficiente di <math|e<rsub|j>>, che deve quindi essere zero. Questo dimostra entrambe le proprietà della base.

Per i polinomi, <math|1,X,X<rsup|2>,…> è una base di <math|K[X]>: genera per la forma di ogni polinomio; è indipendente perché una combinazione finita è il polinomio nullo solo se tutti i coefficienti sono zero. Per <math|K<rsub|d>[X]> bastano <math|1,X,…,X<rsup|d>>. Lo span dei soli monomi di esponente pari contiene esattamente i polinomi con sole potenze pari; non raggiunge, per esempio, <math|X>.

Nessun insieme finito di polinomi genera <math|K[X]>: se non sono tutti nulli, i loro gradi hanno un massimo <math|d>, e nessuna combinazione può dare <math|X<rsup|d+1>>. Se sono tutti nulli, generano soltanto zero.

<subsection|Per proseguire: coordinate in una base infinita>

Nella base infinita dei monomi, <math|2-X<rsup|3>> ha coordinate 2 davanti a 1, <math|-1> davanti a <math|X<rsup|3>> e zero altrove. Il <strong|supporto>, ossia l'insieme delle posizioni con coordinata non nulla, è finito.

In generale le coordinate in una base infinita <math|B> sono funzioni <math|B→K> a supporto finito: non tutte le funzioni <math|B→K> possono essere coordinate.

<section|Il campo cambia le combinazioni ammesse>

In <math|ℂ<rsup|2>> consideriamo <math|v=(1,i)> e <math|w=(i,-1)>. Su <math|ℂ> sono dipendenti, perché <math|w=iv>. Con coefficienti reali, invece, dalla prima coordinata di <math|αv+βw=0> otteniamo <math|α+iβ=0>. Parte reale e parte immaginaria impongono <math|α=β=0>: su <math|ℝ> sono indipendenti.

Passando da scalari reali a complessi aumentano le relazioni consentite. Una relazione reale rimane complessa; dunque una famiglia indipendente sui complessi è anche indipendente sui reali. Il contrario può fallire, come nell'esempio. Non può accadere che gli stessi vettori siano dipendenti sui reali e indipendenti sui complessi.

Anche dividere per 2 dipende dal campo. La base <math|(1,1),(1,-1)> usata sopra funziona su <math|ℝ> e su <math|ℂ>. In <math|<math-up|F><rsub|2>> vale <math|-1=1>: i due vettori coincidono e non sono indipendenti. In un campo scriviamo <math|2=1<rsub|K>+1<rsub|K>>; possiamo dividere per 2 soltanto se questo elemento è non nullo.

<\verifica|5>
<strong|5.1.> In <math|ℝ<rsup|2>>, che cosa generano <math|(1,2)> e <math|(2,4)>? Sono indipendenti? Dopo aver deciso, trova due scritture diverse di <math|(3,6)> come loro combinazione.

<strong|5.2.> Trova le coordinate di <math|(5,-1)> nella base <math|((1,1),(1,-1))>. Spiega anche perché una famiglia che contiene zero non può essere una base.
</verifica>
