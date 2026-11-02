<chapter|Costruire un ciclo: il significato delle variabili>

<\inbreve>
Finora abbiamo ricevuto i cicli già scritti e ci siamo limitati a verificarli. Il passo più interessante, però, è inventarli. Partendo dal risultato che vogliamo e da qualche esempio piccolo, decideremo prima che cosa deve ricordare ciascuna variabile durante il calcolo, e solo dopo scriveremo i comandi che mantengono quel significato. Il metodo funzionerà per il fattoriale, il massimo comun divisore, la radice cubica e la successione di Fibonacci.
</inbreve>

<section|Dalla postcondizione a una proprietà da mantenere>

Per trovare il quoziente della divisione di 17 per 5 possiamo togliere 5 più volte e contare quante volte lo facciamo. Dopo due sottrazioni abbiamo tolto 10 e ci resta 7, e l'uguaglianza <math|17=2·5+7> descrive esattamente il punto a cui siamo arrivati. Il resto non è ancora abbastanza piccolo, ma l'uguaglianza è già vera.

Questa osservazione spiega la scelta fatta nei capitoli precedenti. La postcondizione <math|x=qy+r∧0≤r‹y> è stata divisa in due parti, una relazione da mantenere, <math|x=qy+r∧r≥0>, e una condizione da raggiungere, <math|r‹y>. La prima, insieme al vincolo <math|y›0>, diventa l'invariante. La seconda suggerisce la guardia, che è la sua negazione, <tt|r ›= y>. In più, la variabile <math|r> rende visibile il testimone dell'esistenziale che definisce il quoziente, cioè il resto che rende vera <math|x=qy+r> con <math|0≤r‹y>.

In generale cerchiamo due proprietà <math|I> e <math|G> tali che <math|I∧G> implichi la postcondizione. Vogliamo mantenere vera <math|I> e continuare a girare finché <math|G> è falsa. Servono poi un'inizializzazione che renda vera <math|I>, un corpo che la ristabilisca e una prova di terminazione. Un vincolo pratico limita le scelte, perché la guardia deve essere un'espressione del linguaggio, e non ogni scomposizione matematica della postcondizione si lascia tradurre in un programma.

<\concetto|Invariante come significato delle variabili>
Un buon invariante spiega che cosa rappresentano i valori presenti durante il calcolo. Si rafforza con i vincoli necessari per leggere le espressioni, eseguire il passo successivo e dimostrare la terminazione.
</concetto>

<section|Fattoriale: ricordare il prodotto già calcolato>

Il fattoriale <math|n!> è il prodotto degli interi da 1 a <math|n>, e per convenzione <math|0!=1>. Supponiamo che <math|n≥0> sia un intero che il programma non modifica. Per <math|n=4> vogliamo ottenere uno dopo l'altro i prodotti <math|1>, <math|1·1>, <math|1·1·2>, <math|1·1·2·3> e <math|1·1·2·3·4>. Ci servono quindi una variabile per il prodotto e una per il prossimo fattore da usare.

<\verbatim>
fatt := 1; x := 1;<no-page-break>

while x ‹= n do<no-page-break>

<hspace|2.100em>fatt := fatt * x;<no-page-break>

<hspace|2.100em>x := x + 1<no-page-break>

endw
</verbatim>

Quando stiamo per usare il fattore <math|x>, abbiamo già moltiplicato tutti gli interi fino a <math|x-1>. Questa frase, scritta in formule, è l'invariante che cerchiamo:

<\equation*>
I≡<math-up|fatt>=(x-1)!∧1≤x≤n+1.
</equation*>

I due limiti hanno ciascuno un motivo. Quello inferiore, 1, garantisce che il fattoriale scritto nell'asserzione abbia un argomento naturale. Quello superiore, <math|n+1>, comprende lo stato finale, perché dopo aver usato il fattore <math|n> il contatore avanza ancora una volta.

<subsection|Controllare il significato del prodotto>

All'inizio <math|x=1> e <math|<math-up|fatt>=1=0!>, e inoltre <math|1≤n+1>, quindi l'invariante vale. Supponiamo ora che valga e che la guardia <math|x≤n> sia vera. Il primo assegnamento produce <math|<math-up|fatt>'=(x-1)!·x=x!>, e il secondo porta <math|x> al nuovo valore <math|x'=x+1>. La relazione che vogliamo ritrovare è <math|<math-up|fatt>'=(x'-1)!>, cioè proprio <math|<math-up|fatt>'=x!>, che abbiamo appena ottenuto. Anche i limiti restano veri, perché da <math|x≤n> segue <math|1≤x'≤n+1>.

<subsection|Fermarsi dopo l'ultimo fattore>

Come funzione di terminazione possiamo prendere <math|n+1-x>, che sotto l'invariante è un intero non negativo e diminuisce di 1 a ogni giro. Tutte le espressioni del corpo e della guardia sono definite, quindi il ciclo termina. All'uscita la guardia è falsa e <math|x›n>, e insieme a <math|x≤n+1>, con <math|x> e <math|n> interi, questo dà <math|x=n+1>. L'invariante diventa allora <math|<math-up|fatt>=n!>.

Se <math|n=0> non si entra mai nel ciclo e il risultato rimane 1, come deve essere. Questo caso spiega anche perché non abbiamo scelto la funzione <math|n-x>, che sembrerebbe più naturale. Nello stato finale varrebbe <math|-1>, e la regola del corso chiede che la funzione di terminazione sia non negativa in tutti gli stati dell'invariante, compreso l'ultimo.

<section|MCD: trasformare i dati senza cambiare la risposta>

Il massimo comune divisore di 18 e 12 coincide con quello di 6 e 12. Il motivo è che un intero divide sia 18 sia 12 esattamente quando divide sia <math|18-12> sia 12. In un verso basta guardare la differenza, nell'altro la somma <math|18=(18-12)+12>. Sottrarre il numero minore dal maggiore non cambia quindi l'insieme dei divisori comuni, e in particolare non cambia il più grande.

Questa idea suggerisce un algoritmo. Con <math|a,b›0> interi che il programma non modifica, lavoriamo su due copie e continuiamo a sottrarre finché diventano uguali.

<\verbatim>
x := a; y := b;<no-page-break>

while x != y do<no-page-break>

<hspace|2.100em>if x › y<no-page-break>

<hspace|4.200em>then x := x - y<no-page-break>

<hspace|4.200em>else y := y - x<no-page-break>

<hspace|2.100em>fi<no-page-break>

endw
</verbatim>

Qui l'invariante non descrive un risultato accumulato poco a poco, come nel fattoriale. Dice invece che la risposta è rimasta la stessa mentre i dati cambiavano:

<\equation*>
I≡x›0∧y›0∧<math-up|mcd>(x,y)=<math-up|mcd>(a,b).
</equation*>

L'inizializzazione rende vera questa proprietà. Se <math|x›y>, allora <math|x-y›0>, e per quanto abbiamo appena visto il MCD non cambia. Se invece si esegue l'altro ramo, sappiamo sia che <math|x≠y>, dalla guardia del ciclo, sia che <math|x› y> è falsa, dalla guardia del condizionale. Insieme danno <math|x‹y>, e vale il ragionamento simmetrico. La guardia del ciclo serve quindi anche a giustificare il secondo ramo.

<subsection|Una somma che diminuisce>

Per la terminazione non serve sapere quanti passi saranno necessari, ma basta trovare una quantità che scenda. La somma <math|x+y> è positiva sotto l'invariante. Nel primo ramo il suo nuovo valore è <math|(x-y)+y=x>, strettamente minore di <math|x+y> perché <math|y›0>, e nel secondo ramo il nuovo valore è <math|y>, che per lo stesso motivo è minore. Quindi il ciclo termina.

All'uscita <math|x=y›0>, e il MCD di due numeri positivi uguali è quel numero stesso. L'invariante ci dà allora <math|x=<math-up|mcd>(a,b)>. Partendo per esempio da <math|(x,y)=(12,18)>, passiamo a <math|(12,6)> e poi a <math|(6,6)>, e la risposta è 6.

<section|Radice cubica: costruire potenze con differenze>

Dato un intero <math|x≥0>, cerchiamo l'intero <math|r≥0> per cui <math|r<rsup|3>≤x‹(r+1)<rsup|3>>, cioè la parte intera della radice cubica di <math|x>. Con <math|x=10> i primi cubi sono <math|0,1,8,27>, e la risposta è 2, perché <math|8≤10‹27>.

L'idea più semplice è provare i cubi in ordine fino al primo che supera <math|x>. Per passare da un cubo al successivo senza moltiplicazioni possiamo usare l'identità

<\equation*>
(b+1)<rsup|3>=b<rsup|3>+3b<rsup|2>+3b+1.
</equation*>

Il cubo da solo non basta, perché la formula chiede anche il quadrato. Teniamo allora l'indice in <math|b>, il quadrato in <math|a> e il cubo in <math|y>, e per aggiornare il quadrato usiamo a sua volta <math|(b+1)<rsup|2>=b<rsup|2>+2b+1>.

<\verbatim>
a := 0; b := 0; y := 0;<no-page-break>

while y ‹= x do<no-page-break>

<hspace|2.100em>y := y + 3*a + 3*b + 1;<no-page-break>

<hspace|2.100em>a := a + 2*b + 1;<no-page-break>

<hspace|2.100em>b := b + 1<no-page-break>

endw
</verbatim>

L'ordine dei comandi è studiato con cura. Il primo assegnamento deve leggere i vecchi <tt|a> e <tt|b>, il secondo il vecchio <tt|b>, e per questo aumentiamo <tt|b> soltanto alla fine.

<subsection|Seguire il calcolo per 10>

La tabella mostra i valori ai controlli della guardia.

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.8em>|<cwith|1|-1|1|-1|cell-rsep|0.8em>|<table|<row|<cell|b>|<cell|a=b<rsup|2>>|<cell|y=b<rsup|3>>|<cell|y≤10>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|<text|vero>>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|<text|vero>>>|<row|<cell|2>|<cell|4>|<cell|8>|<cell|<text|vero>>>|<row|<cell|3>|<cell|9>|<cell|27>|<cell|<text|falso>>>>>>
</equation*>

Guardiamo da vicino l'ultimo giro, che parte da <math|a=4>, <math|b=2> e <math|y=8>. Il primo comando calcola <math|8+3·4+3·2+1=27>, il secondo <math|4+2·2+1=9> e il terzo porta <math|b> a 3. Al controllo successivo la guardia è falsa e usciamo.

A questo punto <math|b> ha superato la risposta di uno. Il cubo attuale, 27, supera 10, mentre il precedente, <math|2<rsup|3>=8>, era ancora ammesso. Questo è il fatto che l'invariante dovrà ricordare.

<subsection|Ricordare anche il cubo precedente>

Ai controlli della guardia vogliamo che valga

<\equation*>
I≡a=b<rsup|2>∧y=b<rsup|3>∧(b-1)<rsup|3>≤x∧b≥0∧x≥0.
</equation*>

All'inizio <math|a=b=y=0>, e la condizione sul cubo precedente vale perché <math|(b-1)<rsup|3>=-1≤x>. In questo stato non c'è nessun cubo già provato dal programma, e la condizione serve soltanto a far funzionare la stessa formula anche all'inizio.

Supponiamo ora vera la guardia. Le due identità sulle potenze assicurano che i nuovi valori di <math|a> e <math|y> siano il quadrato e il cubo del nuovo indice <math|b'=b+1>. Resta da controllare il cubo precedente. Prima del giro la guardia ci dice che <math|b<rsup|3>=y≤x>, e dopo il giro il cubo precedente è proprio <math|(b'-1)<rsup|3>=b<rsup|3>>, quindi anche questa parte dell'invariante rimane vera. I limiti <math|b'≥0> e <math|x≥0> sono evidenti.

<subsection|Come trovare una quantità che diminuisce>

Il cubo <math|y> cresce, e verrebbe spontaneo misurare il lavoro che resta con la distanza <math|x-y>. Nell'ultimo stato, però, questa quantità è negativa, e per <math|x=10> vale <math|10-27=-17>, quindi non rispetta la non negatività richiesta.

L'invariante ci suggerisce una quantità migliore. Il cubo <em|precedente> non supera mai <math|x>, quindi la distanza <math|x-(b-1)<rsup|3>> è sempre non negativa. Aggiungendo 1 scegliamo

<\equation*>
t=x+1-(b-1)<rsup|3>,
</equation*>

che vale almeno 1 in ogni stato dell'invariante, compreso quello finale. Possiamo provarla sulle stesse quattro righe di prima, con <math|x=10>.

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.8em>|<cwith|1|-1|1|-1|cell-rsep|0.8em>|<table|<row|<cell|b>|<cell|(b-1)<rsup|3>>|<cell|t=11-(b-1)<rsup|3>>>|<row|<cell|0>|<cell|-1>|<cell|12>>|<row|<cell|1>|<cell|0>|<cell|11>>|<row|<cell|2>|<cell|1>|<cell|10>>|<row|<cell|3>|<cell|8>|<cell|3>>>>>
</equation*>

La traccia suggerisce che <math|t> diminuisca, e ora lo dimostriamo per ogni giro. Dopo il corpo <math|b'=b+1>, quindi <math|t'=x+1-b<rsup|3>>, e sottraendo troviamo

<\equation*>
t-t'=b<rsup|3>-(b-1)<rsup|3>=3b(b-1)+1.
</equation*>

Per <math|b=0> e per <math|b=1> la differenza vale 1, e per ogni intero <math|b≥2> il prodotto <math|b(b-1)> è positivo. In tutti i casi ammessi <math|t-t'›0>, cioè <math|t> scende strettamente. Siccome la guardia e il corpo usano soltanto operazioni sempre definite sugli interi, ogni giro termina senza errori, e la funzione <math|t> esclude che i giri siano infiniti.

<subsection|Leggere il risultato all'uscita>

All'uscita la guardia è falsa, cioè <math|y›x>, e l'invariante ci dà

<\equation*>
(b-1)<rsup|3>≤x‹b<rsup|3>.
</equation*>

All'inizio la guardia era vera, perché <math|0≤x>, quindi il corpo è stato eseguito almeno una volta e all'uscita <math|b≥1>. La risposta <math|b-1> è quindi non negativa, ed è esattamente la parte intera della radice cubica.

<\attenzione|Quale variabile contiene la radice?>
Il ciclo lascia in <tt|b> un valore in più: per <math|x=0> lascia 1, per <math|x=8> lascia 3. Per consegnare la risposta in <tt|b>, aggiungiamo dopo il ciclo <tt|b := b - 1>. L'invariante riguarda il ciclo prima di questa correzione.
</attenzione>

<section|Fibonacci: tenere il valore che manca>

La successione di Fibonacci parte da <math|<math-up|fib>(0)=0> e <math|<math-up|fib>(1)=1>, e ogni termine successivo è la somma dei due precedenti. Per calcolare <math|<math-up|fib>(k)> con <math|k≥1> vorremmo mantenere <math|x=<math-up|fib>(i)> e far avanzare <math|i> fino a <math|k>.

Il valore successivo sarebbe <math|<math-up|fib>(i+1)=x+<math-up|fib>(i-1)>. La formula spiega il passo ma non è ancora un comando, perché <tt|fib> non è un'operazione del nostro linguaggio. Teniamo allora il valore che manca in una seconda variabile <math|y>, e l'invariante diventa

<\equation*>
I≡x=<math-up|fib>(i)∧y=<math-up|fib>(i-1)∧1≤i≤k.
</equation*>

Per avanzare di un passo, il nuovo <math|x> deve valere il vecchio <math|x+y> e il nuovo <math|y> deve valere il vecchio <math|x>. Se per esempio <math|x=3> e <math|y=2>, i nuovi valori devono essere 5 e 3. La sequenza <tt|x := x+y; y := x> produrrebbe invece 5 e 5, perché il secondo comando legge il nuovo <math|x>. È lo stesso problema dello scambio, e lo risolviamo allo stesso modo, mettendo da parte il vecchio <math|x>.

<\verbatim>
x := 1; i := 1; y := 0;<no-page-break>

while i != k do<no-page-break>

<hspace|2.100em>temp := x;<no-page-break>

<hspace|2.100em>x := x + y;<no-page-break>

<hspace|2.100em>y := temp;<no-page-break>

<hspace|2.100em>i := i + 1<no-page-break>

endw
</verbatim>

<figura|@IMG(fibonacci)|La coppia dei termini consecutivi si sposta di un posto. La variabile temporanea permette di usare il vecchio <math|x> anche dopo averlo aggiornato.>

<subsection|Controllare il passo e l'uscita>

L'inizializzazione usa <math|<math-up|fib>(1)=1> e <math|<math-up|fib>(0)=0>, quindi l'invariante vale. Dentro il corpo sappiamo che <math|1≤i≤k> e che <math|i≠k>, e quindi <math|i‹k>. Indichiamo con un apice i valori dopo il corpo. La somma produce il termine successivo e la variabile d'appoggio porta il termine che deve diventare il precedente,

<\equation*>
x'=<math-up|fib>(i)+<math-up|fib>(i-1)=<math-up|fib>(i+1),
</equation*>

<\equation*>
y'=<math-up|fib>(i),<space|2em>i'=i+1.
</equation*>

Riscritte rispetto al nuovo indice, queste uguaglianze dicono <math|x'=<math-up|fib>(i')> e <math|y'=<math-up|fib>(i'-1)>, e da <math|i‹k> segue <math|1≤i'≤k>. L'invariante è ristabilito.

La quantità <math|k-i> è non negativa e diminuisce di 1 a ogni giro, e tutte le operazioni sono definite, quindi il ciclo termina. All'uscita <math|i=k> e l'invariante dà <math|x=<math-up|fib>(k)>. Se <math|k=1> la guardia è subito falsa e il risultato è già pronto. Il caso <math|k=0> è escluso da questa specifica, e la verifica alla fine del capitolo chiede come includerlo.

<section|Per proseguire: seguire una ricorrenza che dimezza l'indice>

Un altro problema del corso mostra che far crescere un contatore non è sempre la strada migliore. Definiamo <math|f(0)=0> e <math|f(1)=1>, e per <math|j≥2> poniamo <math|f(j)=f(j/2)> se <math|j> è pari e <math|f(j)=f((j-1)/2)+f((j+1)/2)> se è dispari. Gli argomenti a destra sono sempre più piccoli di <math|j>, quindi la definizione permette di calcolare ogni valore a partire dai due casi iniziali.

Calcoliamo per esempio <math|f(19)>, scrivendo a ogni passo il risultato come combinazione di due valori con indici consecutivi:

<\equation*>
f(19)=f(9)+f(10)=f(4)+2f(5)=3f(2)+2f(3)=5f(1)+2f(2)=7.
</equation*>

Il fatto che compaiano sempre due indici consecutivi suggerisce l'invariante

<\equation*>
I≡0≤x≤n∧f(n)=k f(x)+h f(x+1),
</equation*>

dove <math|n≥0> non viene modificato. Con <math|x=n>, <math|k=1> e <math|h=0> l'uguaglianza è vera. Quando <math|x=0> diventa <math|f(n)=k·0+h·1=h>, e così sappiamo già quale guardia scegliere e dove troveremo il risultato.

Ricaviamo ora il corpo, scrivendo <math|q=x<space|0.2em><math-up|div><space|0.2em>2>. Se <math|x=2q> con <math|q›0>, allora <math|f(x)=f(q)> e <math|f(x+1)=f(q)+f(q+1)>, e quindi

<\equation*>
k f(x)+h f(x+1)=(k+h)f(q)+h f(q+1).
</equation*>

Basta allora sommare <math|h> a <math|k> e dimezzare <math|x>. Se invece <math|x=2q+1>, le stesse identità danno

<\equation*>
k f(x)+h f(x+1)=k f(q)+(k+h)f(q+1),
</equation*>

e questa volta basta sommare <math|k> a <math|h> e dimezzare <math|x>. Per <math|x=1> la prima identità del caso dispari vale ancora, perché <math|f(1)=f(0)+f(1)>. Possiamo ora scrivere il programma, usando il test <tt|x mod 2 = 0> per riconoscere gli indici pari.

<\verbatim>
x := n; k := 1; h := 0;<no-page-break>

while x != 0 do<no-page-break>

<hspace|2.100em>if x mod 2 = 0<no-page-break>

<hspace|4.200em>then k := h + k<no-page-break>

<hspace|4.200em>else h := h + k<no-page-break>

<hspace|2.100em>fi;<no-page-break>

<hspace|2.100em>x := x div 2<no-page-break>

endw
</verbatim>

Le uguaglianze appena ottenute dimostrano che l'invariante viene ristabilito. Sotto la guardia vale <math|x›0>, e quindi <math|0≤x<space|0.2em><math-up|div><space|0.2em>2‹x>, il che fa di <math|x> stessa una funzione di terminazione. Il divisore 2 non è mai nullo. All'uscita <math|h=f(n)>, anche quando <math|n=0> e il corpo non viene mai eseguito. Le asserzioni hanno guidato tutta la costruzione, e il programma che ne è uscito usa soltanto somme, divisione intera e modulo.

<\verifica|8>
<strong|1.> Vogliamo mantenere vera <math|xy+pq=n> mediante <tt|x := x-p; q := E>. Trova un'espressione <math|E> che funzioni per tutti gli interi e giustifica anche il caso <math|p=0>.

<strong|2.> Nel programma di Fibonacci modifica soltanto l'inizializzazione e l'invariante per calcolare anche il caso <math|k=0>. Puoi mantenere la stessa forma del corpo usando due termini consecutivi a indici non negativi? Indica quale variabile conterrà il risultato.
</verifica>
