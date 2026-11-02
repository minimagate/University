<chapter|Polinomi: fattorizzazione e molteplicità delle radici>

<\inbreve>
Sapere che un numero annulla un polinomio sembra un'informazione piccola, ma in realtà permette di spezzare il polinomio in un prodotto di pezzi più semplici. Seguendo questa idea fino in fondo, con l'aiuto del teorema fondamentale dell'algebra, arriveremo a scrivere ogni polinomio complesso come prodotto di fattori di primo grado. Lungo la strada impareremo a contare le radici che si ripetono e vedremo quale simmetria compare quando i coefficienti sono reali.
</inbreve>

<section|Una radice permette di estrarre un fattore>

Prendiamo <math|P(z)=z<rsup|2>-3z+2> e proviamo a sostituire <math|z=1>. Otteniamo <math|1-3+2=0>, e diciamo che 1 è una <strong|radice> di <math|P>. Vediamo che cosa ci permette di fare questa scoperta.

Proviamo a dividere <math|P> per <math|z-1>. Per eliminare il termine <math|z<rsup|2>> togliamo <math|z(z-1)=z<rsup|2>-z>, e rimane <math|-2z+2>. Per eliminare anche questo togliamo <math|-2(z-1)=-2z+2>, e il resto è zero. I due termini che abbiamo usato formano il quoziente <math|z-2>, quindi <math|P(z)=(z-1)(z-2)>.

Il prodotto ci mostra subito anche l'altra radice. Per la legge di annullamento del prodotto, <math|P(z)=0> esattamente quando <math|z=1> oppure <math|z=2>. Partendo da una sola radice abbiamo dunque trasformato un'equazione di secondo grado in due equazioni di primo grado.

Fissiamo un po' di vocabolario prima di generalizzare. Un polinomio <math|P(z)=a<rsub|n>z<rsup|n>+⋯+a<rsub|1>z+a<rsub|0>> con <math|a<rsub|n>≠0> ha <strong|grado> <math|n>, e il numero <math|a<rsub|n>> si chiama coefficiente direttivo. Quando il coefficiente direttivo vale 1 il polinomio si dice <strong|monico>. I polinomi con coefficienti in un campo <math|K> formano l'insieme <math|K[z]>, e una radice è un valore <math|r> per cui <math|P(r)=0>.

Perché una radice si trasforma sempre in un fattore? Se dividiamo un polinomio qualsiasi per <math|z-r>, otteniamo

<\equation*>
P(z)=(z-r)Q(z)+c,
</equation*>

dove il resto <math|c> è una costante, perché deve avere grado minore del divisore. Ora poniamo <math|z=r>. Il prodotto si annulla e resta <math|P(r)=c>. Il resto della divisione è quindi esattamente il valore del polinomio in <math|r>, ed è zero precisamente quando <math|r> è una radice.

<\concetto|Teorema del fattore>
Siano <math|K> un campo, <math|P∈K[z]> e <math|r∈K>. Allora <math|P(r)=0> se e solo se esiste <math|Q∈K[z]> con <math|P(z)=(z-r)Q(z)>. Si scrive anche <math|(z-r)∣P(z)>: la barra significa «divide». Se <math|P> ha grado <math|n≥1>, il quoziente ha grado <math|n-1>.
</concetto>

Il resto zero è ciò che fa la differenza. Con un resto non nullo avremmo ancora un addendo, e non potremmo usare l'annullamento del prodotto. Con il resto zero, invece, il problema si riduce a un polinomio di grado più basso.

<section|Teorema fondamentale dell'algebra e induzione>

Fra i reali un polinomio non costante può non avere nessuna radice, come succede a <math|x<rsup|2>+1>. Fra i complessi questo non accade mai.

<\concetto|Teorema fondamentale dell'algebra>
Ogni polinomio non costante a coefficienti complessi ha almeno una radice complessa.
</concetto>

Useremo questo teorema senza dimostrarlo, perché la sua prova richiede strumenti che vanno oltre questo volume. Possiamo invece dimostrare la conseguenza che ci interessa davvero. Ogni polinomio complesso di grado <math|n≥1> con coefficiente direttivo <math|a> si scrive come

<\equation*>
P(z)=a(z-z<rsub|1>)⋯(z-z<rsub|n>).
</equation*>

L'idea è semplice. Troviamo una radice grazie al teorema fondamentale, estraiamo il fattore corrispondente e ricominciamo con il quoziente. Il grado scende di uno a ogni passo, e questo suggerisce di procedere per <strong|induzione sul grado>.

Per <math|n=1> il polinomio è <math|az+b>, che possiamo scrivere come <math|a(z+b/a)>. La sua unica radice è <math|-b/a>, e la fattorizzazione c'è già.

Supponiamo ora di saper fattorizzare <em|ogni> polinomio complesso di grado <math|n>, e prendiamone uno di grado <math|n+1>. Il teorema fondamentale ci dà una radice <math|z<rsub|1>>, e il teorema del fattore ci permette di scrivere

<\equation*>
P(z)=(z-z<rsub|1>)Q(z).
</equation*>

Il quoziente <math|Q> ha grado <math|n> e lo stesso coefficiente direttivo <math|a>, perché il fattore che abbiamo estratto ha coefficiente direttivo 1. Per l'ipotesi induttiva <math|Q(z)=a(z-z<rsub|2>)⋯(z-z<rsub|n+1>)>, e sostituendo questa espressione otteniamo la fattorizzazione cercata per il grado <math|n+1>.

Abbiamo verificato il primo caso e mostrato come si passa da ciascun caso al successivo. L'induzione ci permette allora di concludere per tutti i gradi, perché dal caso 1 segue il 2, dal 2 il 3, e così via senza fine. Non c'è nulla di circolare. L'ipotesi sul grado <math|n> non è la conclusione presa per buona, ma il punto d'appoggio da cui dimostriamo il caso <math|n+1>.

<figura|@IMG(fattori)|Ogni radice estratta abbassa il grado. Il teorema fondamentale assicura che possiamo continuare finché il quoziente è non costante.>

Esiste anche una versione dell'induzione in cui, nel passo, si possono usare tutti i casi precedenti e non soltanto l'ultimo. Le due versioni sono equivalenti, perché basta applicare l'induzione ordinaria alla proprietà «valgono tutti i casi fino a <math|n>». In questa prova ci è bastato il grado immediatamente precedente.

Il teorema fondamentale ci assicura che le radici esistono, ma non ci dà una formula per calcolarle. Inoltre le sue ipotesi vanno prese sul serio. L'espressione <math|\|z\|<rsup|2>+1>, per esempio, non si annulla mai, ma non contraddice il teorema, perché il modulo non è un'operazione polinomiale e quindi quell'espressione non è un polinomio nella variabile <math|z>.

<section|Molteplicità e numero massimo di radici>

Il polinomio <math|(z-1)<rsup|3>> ha grado 3 ma una sola radice distinta, cioè 1, perché lo stesso fattore <math|z-1> compare tre volte. La fattorizzazione dimostrata sopra non promette quindi che i numeri <math|z<rsub|1>,…,z<rsub|n>> siano tutti diversi. Per contare le radici in modo onesto dobbiamo tenere conto di quante volte compare ciascuna.

<\concetto|Molteplicità di una radice>
Per un polinomio non nullo, <math|r> ha molteplicità <math|m≥1> quando

<\equation*>
P(z)=(z-r)<rsup|m>Q(z),<space|2em>Q(r)≠0.
</equation*>

Il fattore <math|z-r> si può estrarre <math|m> volte, ma non <math|m+1> volte.
</concetto>

Nel polinomio <math|P(z)=(z-1)<rsup|2>(z-3)<rsup|4>(z-5)<rsup|3>>, per esempio, le radici distinte sono tre, con molteplicità 2, 4 e 3. La loro somma è 9, che è esattamente il grado. Questo non è un caso. Se nella fattorizzazione complessa raggruppiamo i fattori uguali, le molteplicità sommano sempre al grado, e quindi un polinomio complesso di grado <math|n> ha <strong|esattamente <math|n> radici contate con molteplicità>.

In un campo qualsiasi non possiamo sperare tanto, perché le radici potrebbero mancare. Possiamo però dimostrare un limite superiore senza usare il teorema fondamentale: un polinomio non nullo di grado <math|n> ha al più <math|n> radici nel campo, anche contandole con la loro molteplicità.

Il cuore dell'argomento si vede già su un esempio. In <math|P(z)=(z-1)(z-2)<rsup|2>>, se togliamo il fattore <math|z-1> resta <math|(z-2)<rsup|2>>, e la radice 2 è ancora doppia. Il fattore tolto, infatti, nel punto 2 vale 1 e non contribuiva affatto ad annullare il prodotto.

In generale, estraiamo il fattore di una prima radice e scriviamo <math|P=(z-r)Q>. Ogni altra radice <math|s≠r> resta una radice di <math|Q>, perché <math|0=P(s)=(s-r)Q(s)> e il numero <math|s-r> non è nullo. Anche la molteplicità resta la stessa. Se <math|Q=(z-s)<rsup|m>H> con <math|H(s)≠0>, allora <math|P=(z-s)<rsup|m>((z-r)H)>, e il fattore <math|(z-r)H> nel punto <math|s> vale <math|(s-r)H(s)≠0>.

Possiamo quindi estrarre le radici una alla volta, ciascuna tante volte quanto è la sua molteplicità. Ogni estrazione abbassa il grado di uno, e dopo <math|n> estrazioni rimane una costante non nulla, che non ha radici. Più di <math|n> estrazioni sono dunque impossibili. Il polinomio nullo resta escluso da tutto questo discorso, perché si annulla in ogni punto e non ha un grado come gli altri.

<section|Coefficienti reali e coppie coniugate>

Un polinomio a coefficienti reali è anche un polinomio complesso, e le sue radici non sono obbligate a essere reali. Hanno però una simmetria che vale la pena scoprire. Se <math|P(z)=a<rsub|n>z<rsup|n>+⋯+a<rsub|0>> ha coefficienti reali, le regole del coniugio danno

<\equation*>
P(<wide|z|\<bar\>>)=a<rsub|n><wide|z|\<bar\>><rsup|n>+⋯+a<rsub|0>=<wide|P(z)|\<bar\>>.
</equation*>

Tutto si basa sul fatto che coniugare un coefficiente reale non lo cambia. Ora, se <math|P(r)=0>, la stessa uguaglianza dà <math|P(<wide|r|\<bar\>>)=<wide|0|\<bar\>>=0>. Ogni radice non reale porta quindi con sé la sua coniugata.

La simmetria rispetta anche le ripetizioni. Nel polinomio reale <math|(z<rsup|2>+1)<rsup|2>=(z-i)<rsup|2>(z+i)<rsup|2>>, per esempio, sia <math|i> sia <math|-i> sono radici doppie. Per dimostrarlo in generale partiamo da <math|P(z)=(z-r)<rsup|m>Q(z)> con <math|Q(r)≠0>, e coniughiamo tutti i coefficienti dell'identità, lasciando ferma la variabile <math|z>. Il polinomio <math|P> non cambia, perché ha coefficienti reali, e otteniamo

<\equation*>
P(z)=(z-<wide|r|\<bar\>>)<rsup|m><wide|Q|\<bar\>>(z),
</equation*>

dove <math|<wide|Q|\<bar\>>> è il polinomio con i coefficienti coniugati. Nel punto <math|<wide|r|\<bar\>>> questo polinomio vale <math|<wide|Q(r)|\<bar\>>>, che non è zero. La molteplicità di <math|<wide|r|\<bar\>>> è quindi esattamente <math|m>, non soltanto almeno <math|m>.

<figura|@IMG(coniugate)|Un esempio di radici reali e coppie non reali coniugate. I numeri indicano le molteplicità: 1 è doppia, <math|-2> semplice, <math|-1±2i> triple e <math|2±i> semplici. Il grado è <math|2+1+3+3+1+1=11>.>

Una coppia di radici coniugate produce un fattore che ha coefficienti reali. Se <math|r=a+ib> con <math|b≠0>, abbiamo

<\equation*>
(z-r)(z-<wide|r|\<bar\>>)=z<rsup|2>-2az+a<rsup|2>+b<rsup|2>.
</equation*>

Per <math|r=-1+2i>, per esempio, otteniamo <math|z<rsup|2>+2z+5>. Un fattore di questo tipo non ha radici reali, perché per ogni <math|x∈ℝ> vale <math|(x-a)<rsup|2>+b<rsup|2>›0>.

Mettendo insieme tutte le coppie coniugate arriviamo a una conclusione che riguarda solo i reali: <strong|ogni polinomio reale non nullo è il prodotto di una costante reale, di fattori lineari reali e di fattori quadratici reali senza radici reali>. I fattori ripetuti compaiono con le loro molteplicità, e per una costante il prodotto dei fattori è semplicemente vuoto.

<section|Equazioni quadratiche complesse>

La formula per le equazioni di secondo grado funziona anche fra i complessi, con un'avvertenza sulle radici quadrate. Partiamo da <math|az<rsup|2>+bz+c=0> con <math|a≠0>, moltiplichiamo per <math|4a> e completiamo il quadrato:

<\equation*>
(2az+b)<rsup|2>=b<rsup|2>-4ac=Δ.
</equation*>

Se troviamo un numero <math|u> con <math|u<rsup|2>=Δ>, le possibilità sono <math|2az+b=u> oppure <math|2az+b=-u>, e quindi

<\equation*>
z=<frac|-b±u|2a>.
</equation*>

Quando <math|Δ≠0> i numeri <math|u> e <math|-u> sono distinti e danno due radici diverse, mentre quando <math|Δ=0> coincidono con zero e danno una radice doppia. Fra i complessi nessuna delle due radici quadrate di <math|Δ> è privilegiata, e la scrittura <math|±<sqrt|Δ>> significa semplicemente che le prendiamo entrambe.

Risolviamo per esempio <math|z<rsup|2>+(1-i)z-i=0>, dove <math|a=1>, <math|b=1-i> e <math|c=-i>. Poiché <math|(1-i)<rsup|2>=1-2i+i<rsup|2>=-2i>, il discriminante è <math|Δ=-2i+4i=2i>. Una radice quadrata di <math|2i> è <math|1+i>, come si vede elevando al quadrato. La formula dà allora

<\equation*>
z=<frac|-1+i±(1+i)|2>.
</equation*>

Con il segno più troviamo <math|i>, con il segno meno troviamo <math|-1>. Possiamo controllare il risultato moltiplicando i fattori, perché <math|(z-i)(z+1)=z<rsup|2>+(1-i)z-i>. Le due radici non sono coniugate, e non c'è motivo che lo siano, dato che i coefficienti non sono tutti reali.

<subsection|Per proseguire: due letture delle radici seste>

Nel capitolo precedente abbiamo trovato le radici di <math|z<rsup|6>=1> con la forma polare. Possiamo ritrovarle anche spezzando il polinomio in fattori:

<\equation*>
z<rsup|6>-1=(z<rsup|3>-1)(z<rsup|3>+1)
</equation*>

<\equation*>
=(z-1)(z+1)(z<rsup|2>+z+1)(z<rsup|2>-z+1).
</equation*>

I fattori lineari danno <math|1> e <math|-1>, mentre i due fattori quadratici danno rispettivamente <math|(-1±i<sqrt|3>)/2> e <math|(1±i<sqrt|3>)/2>. È esattamente la stessa lista. La forma polare e la fattorizzazione sono due modi diversi di sfruttare la struttura dello stesso problema, e conviene scegliere di volta in volta quello che rende più chiari i passaggi.

<\verifica|3>
<strong|3.1.> Trova le radici distinte e le molteplicità di <math|(z<rsup|2>+1)<rsup|3>>. Un polinomio reale di grado 3 può avere contemporaneamente le radici <math|i>, <math|2i>, 1?

<strong|3.2.> Scrivi un polinomio reale monico di grado 4 che abbia <math|2+i> come radice doppia. Spiega perché le condizioni determinano tutte le sue radici e verifica il grado.
</verifica>
