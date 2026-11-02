<chapter|Polinomi: fattorizzazione e molteplicità delle radici>

Con la forma polare sappiamo risolvere <math|z<rsup|n>=w>. Ma un'equazione come <math|z<rsup|2>+(1-i)z-i=0> mescola potenze diverse. Il collegamento fra <em|radici> e <em|fattori> ci permette di trattarla e di capire che cosa garantisce il passaggio ai complessi.

<section|Una radice permette di estrarre un fattore>

Un polinomio <math|P(z)=a<rsub|n>z<rsup|n>+⋯+a<rsub|1>z+a<rsub|0>>, con <math|a<rsub|n>≠0>, ha <strong|grado> <math|n>. Il numero <math|a<rsub|n>> è il coefficiente direttivo; se vale 1, il polinomio si dice <strong|monico>. I polinomi a coefficienti in un campo <math|K> formano l'insieme <math|K[z]>. Una <strong|radice> è un valore <math|r> per cui <math|P(r)=0>.

Per esempio <math|P(z)=z<rsup|2>-3z+2> si annulla in 1. Per dividere per <math|z-1>, togliamo prima <math|z(z-1)=z<rsup|2>-z>: rimane <math|-2z+2>. Togliamo poi <math|-2(z-1)=-2z+2>: il resto è zero. Il quoziente raccoglie i due termini scelti, <math|z-2>, quindi <math|P(z)=(z-1)(z-2)>. Questo prodotto mostra entrambe le radici: per l'annullamento del prodotto, <math|P(z)=0> esattamente per <math|z=1> oppure <math|z=2>.

Perché possiamo sempre trasformare una radice in un fattore? Dividendo un polinomio per <math|z-r> otteniamo

<\equation*>
P(z)=(z-r)Q(z)+c,
</equation*>

dove il resto <math|c> è costante, perché deve avere grado minore di 1. Ponendo <math|z=r>, il prodotto si annulla e rimane <math|P(r)=c>. Dunque il resto è zero precisamente quando <math|r> è radice.

<\concetto|Teorema del fattore>
In un campo <math|K>, <math|P(r)=0> se e solo se esiste <math|Q∈K[z]> con <math|P(z)=(z-r)Q(z)>. Si scrive anche <math|(z-r)∣P(z)>: la barra significa «divide». Se <math|P> ha grado <math|n≥1>, il quoziente ha grado <math|n-1>.
</concetto>

Una divisione con resto non nullo non è una fattorizzazione: c'è ancora un addendo. Il vantaggio del resto zero è proprio poter usare l'annullamento del prodotto e ridurre il problema a un polinomio di grado minore.

<section|Teorema fondamentale dell'algebra e induzione>

Nei reali, un polinomio non costante può non avere radici: <math|x<rsup|2>+1> ne è un esempio. Nei complessi vale invece il seguente risultato.

<\concetto|Teorema fondamentale dell'algebra>
Ogni polinomio non costante a coefficienti complessi ha almeno una radice complessa.
</concetto>

Accettiamo qui il teorema senza dimostrarlo: la sua prova richiede strumenti ulteriori rispetto a quelli del volume. Possiamo però dimostrarne la conseguenza che useremo. Ogni polinomio complesso di grado <math|n≥1>, con coefficiente direttivo <math|a>, si scrive

<\equation*>
P(z)=a(z-z<rsub|1>)⋯(z-z<rsub|n>).
</equation*>

L'idea è cercare una radice, estrarre il fattore corrispondente e ricominciare sul quoziente. Il grado scende ogni volta di uno: questo suggerisce una <strong|dimostrazione per induzione sul grado>.

Nel caso iniziale <math|n=1>, abbiamo <math|P(z)=az+b=a(z+b/a)>, con radice <math|-b/a>. Supponiamo ora di saper fattorizzare <em|ogni> polinomio complesso di grado <math|n>, e prendiamone uno di grado <math|n+1>. Il teorema fondamentale fornisce una radice <math|z<rsub|1>>; il teorema del fattore dà

<\equation*>
P(z)=(z-z<rsub|1>)Q(z).
</equation*>

Il quoziente ha grado <math|n> e lo stesso coefficiente direttivo <math|a>, perché il fattore estratto ha coefficiente direttivo 1. Per l'ipotesi induttiva, <math|Q(z)=a(z-z<rsub|2>)⋯(z-z<rsub|n+1>)>. Sostituendo questa espressione ritroviamo la fattorizzazione richiesta per il grado <math|n+1>.

Abbiamo così verificato il primo caso e il passaggio da ogni caso al successivo. L'induzione conclude che la proprietà vale per tutti i gradi positivi: dal caso 1 segue il 2, dal 2 il 3, e così via. L'ipotesi sul grado <math|n> non presume già vera l'intera conclusione: è ciò da cui dimostriamo il caso successivo.

<figura|@IMG(fattori)|Ogni radice estratta abbassa il grado. Il teorema fondamentale assicura che possiamo continuare finché il quoziente è non costante.>

Si può formulare l'induzione anche assumendo, nel passo, tutti i casi precedenti. Le due forme sono equivalenti: basta applicare l'induzione ordinaria alla proprietà cumulativa «valgono tutti i casi fino a <math|n>». In questa prova ci è bastato il grado immediatamente precedente.

Il teorema fondamentale garantisce l'esistenza delle radici, senza darne una formula generale di calcolo. Le sue ipotesi contano: un'espressione che contiene il modulo, come <math|\|z\|<rsup|2>+1>, non è un polinomio nella variabile complessa <math|z>. Questa espressione non si annulla mai; il teorema non le si applica.

<section|Molteplicità e numero massimo di radici>

Il polinomio <math|(z-1)<rsup|3>> ha grado 3 ma una sola radice distinta, 1. Il fattore <math|z-1> compare tre volte. La fattorizzazione non promette che i valori <math|z<rsub|1>,…,z<rsub|n>> siano diversi.

<\concetto|Molteplicità di una radice>
Per un polinomio non nullo, <math|r> ha molteplicità <math|m≥1> quando

<\equation*>
P(z)=(z-r)<rsup|m>Q(z),<space|2em>Q(r)≠0.
</equation*>

Il fattore <math|z-r> si può estrarre <math|m> volte, ma non <math|m+1> volte.
</concetto>

Per <math|P(z)=(z-1)<rsup|2>(z-3)<rsup|4>(z-5)<rsup|3>>, le radici distinte sono tre, con molteplicità 2, 4 e 3. La somma è 9, uguale al grado. In generale, raggruppando i fattori uguali nella fattorizzazione complessa, le molteplicità sommano al grado: un polinomio complesso di grado <math|n> ha <strong|esattamente <math|n> radici contate con molteplicità>.

In un campo qualunque abbiamo invece un limite superiore: un polinomio non nullo di grado <math|n> ha al più <math|n> radici, anche contando le molteplicità delle radici che appartengono al campo. Non serve il teorema fondamentale per dimostrarlo.

Estraiamo il fattore di una prima radice: <math|P=(z-r)Q>. Ogni altra radice <math|s≠r> rimane una radice di <math|Q>, perché <math|0=P(s)=(s-r)Q(s)> e <math|s-r≠0>. Per tener conto delle molteplicità, se <math|Q=(z-s)<rsup|m>H> con <math|H(s)≠0>, allora <math|P=(z-s)<rsup|m>((z-r)H)> e <math|(s-r)H(s)≠0>: la molteplicità di <math|s> è rimasta <math|m>.

Possiamo quindi estrarre, una per volta, tutte le radici con le loro ripetizioni. Ogni estrazione abbassa il grado di uno; dopo <math|n> estrazioni rimane una costante non nulla, che non ha radici. Più di <math|n> estrazioni sono impossibili. Questo argomento non suppone in partenza che le radici siano già tutte state trovate. Il polinomio nullo è escluso: si annulla in ogni punto e non ha un grado finito come quelli considerati qui.

<section|Coefficienti reali e coppie coniugate>

Un polinomio reale è anche complesso, ma le sue radici non devono essere reali. Ha però una simmetria. Se <math|P(z)=a<rsub|n>z<rsup|n>+⋯+a<rsub|0>> e i coefficienti sono reali, le proprietà del coniugio danno

<\equation*>
P(<wide|z|\<bar\>>)=a<rsub|n><wide|z|\<bar\>><rsup|n>+⋯+a<rsub|0>=<wide|P(z)|\<bar\>>.
</equation*>

Il punto essenziale è che coniugare i coefficienti non li cambia. Se <math|P(r)=0>, la stessa uguaglianza dà <math|P(<wide|r|\<bar\>>)=0>. Ogni radice non reale è accompagnata dalla sua coniugata.

Anche le molteplicità coincidono. Infatti, se <math|P(z)=(z-r)<rsup|m>Q(z)> con <math|Q(r)≠0>, coniughiamo tutti i coefficienti dell'identità, lasciando ferma la variabile formale <math|z>. Il polinomio <math|P> rimane uguale, e otteniamo

<\equation*>
P(z)=(z-<wide|r|\<bar\>>)<rsup|m><wide|Q|\<bar\>>(z).
</equation*>

Qui <math|<wide|Q|\<bar\>>> indica il polinomio dai coefficienti coniugati. Nel punto <math|<wide|r|\<bar\>>> esso vale <math|<wide|Q(r)|\<bar\>>≠0>. Dunque la molteplicità è proprio <math|m>, non soltanto almeno <math|m>.

<figura|@IMG(coniugate)|Una possibile distribuzione delle radici reali e non reali. I numeretti sono le molteplicità: 1 è doppia, <math|-2> semplice, <math|-1±2i> triple e <math|2±i> semplici. Il grado è <math|2+1+3+3+1+1=11>.>

Una coppia <math|r=a+ib>, <math|<wide|r|\<bar\>>=a-ib>, con <math|b≠0>, produce il fattore reale

<\equation*>
(z-r)(z-<wide|r|\<bar\>>)=z<rsup|2>-2az+a<rsup|2>+b<rsup|2>.
</equation*>

Per esempio <math|r=-1+2i> dà <math|z<rsup|2>+2z+5>. Questo fattore non ha radici reali, perché per <math|z=x∈ℝ> vale <math|(x-a)<rsup|2>+b<rsup|2>›0>. Raggruppando tutte le coppie coniugate, <strong|ogni polinomio reale non nullo è una costante reale per fattori lineari reali e fattori quadratici reali senza radici reali>. I fattori ripetuti mantengono le rispettive molteplicità. Per le costanti il prodotto è vuoto.

<section|Equazioni quadratiche complesse>

Per <math|az<rsup|2>+bz+c=0>, con <math|a≠0>, completiamo il quadrato moltiplicando per <math|4a>:

<\equation*>
(2az+b)<rsup|2>=b<rsup|2>-4ac=Δ.
</equation*>

Se scegliamo un numero <math|u> con <math|u<rsup|2>=Δ>, le due possibilità sono <math|2az+b=±u>, quindi

<\equation*>
z=<frac|-b±u|2a>.
</equation*>

Per <math|Δ≠0> le radici quadrate <math|u,-u> sono distinte e opposte; per <math|Δ=0> coincidono in zero e danno una radice doppia. La scrittura <math|±<sqrt|Δ>> significa scegliere entrambe le radici quadrate, senza una preferenza naturale per una di esse nei complessi.

Per <math|z<rsup|2>+(1-i)z-i=0>, abbiamo <math|a=1>, <math|b=1-i>, <math|c=-i>. Calcoliamo prima <math|(1-i)<rsup|2>=-2i>; perciò <math|Δ=-2i+4i=2i>. Una radice quadrata di <math|2i> è <math|1+i>, come si controlla elevando al quadrato. La formula dà

<\equation*>
z=<frac|-1+i±(1+i)|2>.
</equation*>

Con il segno più otteniamo <math|i>, con il meno otteniamo <math|-1>. Il controllo è la fattorizzazione <math|(z-i)(z+1)=z<rsup|2>+(1-i)z-i>. I coefficienti non sono tutti reali: non c'è motivo di aspettarsi due radici coniugate.

<subsection|Per proseguire: due letture delle radici seste>

Il capitolo precedente ha trovato le radici di <math|z<rsup|6>=1> con la forma polare. Ritroviamole usando i fattori:

<\equation*>
z<rsup|6>-1=(z<rsup|3>-1)(z<rsup|3>+1)
</equation*>

<\equation*>
=(z-1)(z+1)(z<rsup|2>+z+1)(z<rsup|2>-z+1).
</equation*>

I fattori lineari danno <math|1,-1>; i due quadratici danno rispettivamente <math|(-1±i<sqrt|3>)/2> e <math|(1±i<sqrt|3>)/2>. È la stessa lista. Forma polare e fattorizzazione sono due modi di usare la struttura del problema: scegliamo quello che rende trasparenti i passaggi.

<\verifica|3>
<strong|3.1.> Trova le radici distinte e le molteplicità di <math|(z<rsup|2>+1)<rsup|3>>. Un polinomio reale di grado 3 può avere contemporaneamente le radici <math|i>, <math|2i>, 1?

<strong|3.2.> Scrivi un polinomio reale monico di grado 4 che abbia <math|2+i> come radice doppia. Spiega perché le condizioni determinano tutte le sue radici e verifica il grado.
</verifica>
