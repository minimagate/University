<chapter|Costruire un ciclo: il significato delle variabili>

<\inbreve>
Come troviamo un ciclo, prima ancora di verificarlo? Partiamo dal risultato desiderato e da esempi piccoli. Sceglieremo che cosa devono ricordare le variabili durante il calcolo, poi costruiremo i comandi che mantengono quel significato.
</inbreve>

<section|Dalla postcondizione a una proprietà da conservare>

Per ottenere il quoziente della divisione di 17 per 5, possiamo sottrarre ripetutamente 5 e contare le sottrazioni. Dopo due passi abbiamo tolto 10 e rimane 7: l'uguaglianza <math|17=2·5+7> racconta dove siamo arrivati. Il resto non è ancora piccolo abbastanza, ma l'uguaglianza è già vera.

Questo spiega la scelta fatta nel capitolo precedente: separare la relazione da conservare, <math|x=qy+r∧r≥0>, dalla condizione da raggiungere, <math|r‹y>. La prima diventa un invariante, insieme al vincolo <math|y›0>; la seconda suggerisce la guardia opposta, <tt|r ›= y>. 

Introdurre <math|r> rende visibile il testimone dell'esistenziale che caratterizza il quoziente: esiste un resto con <math|x=qy+r> e <math|0≤r‹y>.

In generale cerchiamo due proprietà <math|I> e <math|G> tali che <math|I∧G> implichi la postcondizione. Vogliamo conservare <math|I> e continuare finché <math|G> è falsa. Occorrono poi un'inizializzazione che stabilisca <math|I>, un corpo che la ristabilisca e una prova di terminazione. La guardia deve essere un'espressione del linguaggio, quindi non ogni scomposizione matematica è utilizzabile.

<\concetto|Invariante come significato delle variabili>
Un buon invariante spiega che cosa rappresentano i valori presenti durante il calcolo. Si rafforza con i vincoli necessari per leggere le espressioni, eseguire il passo successivo e dimostrare la terminazione.
</concetto>

<section|Fattoriale: ricordare il prodotto già calcolato>

Il fattoriale <math|n!> è il prodotto da 1 a <math|n>; per convenzione <math|0!=1>. Supponiamo <math|n≥0> intero e non modificato. Per <math|n=4> vogliamo ottenere in successione <math|1>, <math|1·1>, <math|1·1·2>, <math|1·1·2·3>, <math|1·1·2·3·4>. Serve una variabile per il prodotto e una per il prossimo fattore.

<\verbatim>
fatt := 1; x := 1;<no-page-break>

while x ‹= n do<no-page-break>

<hspace|2.100em>fatt := fatt * x;<no-page-break>

<hspace|2.100em>x := x + 1<no-page-break>

endw
</verbatim>

Prima di usare il fattore <math|x>, sono già stati moltiplicati gli interi fino a <math|x-1>. Cerchiamo dunque

<\equation*>
I≡<math-up|fatt>=(x-1)!∧1≤x≤n+1.
</equation*>

Il limite inferiore 1 assicura che il fattoriale nell'asserzione abbia un argomento naturale. Il limite superiore <math|n+1> include lo stato finale: dopo aver usato <math|n>, il contatore avanza ancora una volta.

<subsection|Controllare il significato del prodotto>

All’inizio <math|x=1> e <math|<math-up|fatt>=1=0!>; inoltre <math|1≤n+1>. 

Supponiamo ora che <math|I> valga e che <math|x≤n>. La prima assegnazione produce <math|<math-up|fatt>'=(x-1)!·x=x!>. La seconda porta <math|x> a <math|x'=x+1>. La relazione da ritrovare è <math|<math-up|fatt>'=(x'-1)!>, ed è proprio l'uguaglianza appena ottenuta. 

Anche i limiti si conservano: <math|1≤x'≤n+1>.

<subsection|Fermarsi dopo l’ultimo fattore>

La quantità <math|n+1-x> è un intero non negativo sotto <math|I> e diminuisce di 1 a ogni giro. Tutte le espressioni del corpo e della guardia sono definite. Il ciclo termina. 

All’uscita <math|x›n>; insieme a <math|x≤n+1> e al fatto che <math|x,n> sono interi, questo dà <math|x=n+1>. Dunque <math|<math-up|fatt>=n!>.

Per <math|n=0> non si entra nel ciclo e si conserva il risultato 1. La funzione <math|n-x> scenderebbe invece a <math|-1> nello stato finale: per la regola adottata nel corso, che chiede non negatività sotto tutto l'invariante, scegliamo <math|n+1-x>.

<section|MCD: trasformare i dati conservando la risposta>

Il massimo comune divisore di 18 e 12 è anche il massimo comune divisore di 6 e 12. Infatti un intero divide 18 e 12 se e solo se divide <math|18-12> e 12: una direzione usa la differenza, l'altra la somma <math|18=(18-12)+12>. Sottrarre il minore dal maggiore conserva quindi tutti i divisori comuni.

Con <math|a,b›0> interi e non modificati, lavoriamo su due copie:

<\verbatim>
x := a; y := b;<no-page-break>

while x != y do<no-page-break>

<hspace|2.100em>if x › y<no-page-break>

<hspace|4.200em>then x := x - y<no-page-break>

<hspace|4.200em>else y := y - x<no-page-break>

<hspace|2.100em>fi<no-page-break>

endw
</verbatim>

Il risultato da conservare non è una somma già accumulata: è il MCD dei due valori di lavoro. Scegliamo

<\equation*>
I≡x›0∧y›0∧<math-up|mcd>(x,y)=<math-up|mcd>(a,b).
</equation*>

L'inizializzazione rende vera questa proprietà. Se <math|x›y>, allora <math|x-y›0> e la proprietà dei divisori comuni appena dimostrata conserva il MCD. 

Se si esegue l’altro ramo, sappiamo sia <math|x≠y> sia <math|¬(x›y)>: perciò <math|x‹y>, e vale il ragionamento simmetrico. La guardia è importante anche per giustificare questo secondo caso.

<subsection|Una somma che diminuisce>

Come misurare il lavoro che rimane? Non serve sapere quanti passi occorreranno: basta una quantità che scenda. <math|x+y> è positiva sotto <math|I>. Nel primo ramo il suo nuovo valore è <math|(x-y)+y=x>, strettamente minore del vecchio <math|x+y>; nel secondo è <math|y>, ancora minore. Quindi il ciclo termina.

All'uscita <math|x=y›0>, e il MCD di due numeri positivi uguali è quel numero. L'invariante dà <math|x=<math-up|mcd>(a,b)>. Per esempio, da <math|(x,y)=(12,18)> passiamo a <math|(12,6)> e poi a <math|(6,6)>.

<section|Radice cubica: costruire potenze con differenze>

Dato un intero <math|x≥0>, vogliamo l’intero <math|r≥0> per cui <math|r<rsup|3>≤x‹(r+1)<rsup|3>>. Con <math|x=10>, i cubi sono <math|0,1,8,27>: la risposta è 2, perché <math|8≤10‹27>.

Proviamo i cubi in ordine, fino al primo che supera <math|x>. Per passare da un cubo al successivo usando soltanto somme sfruttiamo

<\equation*>
(b+1)<rsup|3>=b<rsup|3>+3b<rsup|2>+3b+1.
</equation*>

Il solo cubo non basta: ci serve anche il quadrato. Conserviamo perciò l’indice in <math|b>, il quadrato in <math|a> e il cubo in <math|y>. Per aggiornare il quadrato usiamo <math|(b+1)<rsup|2>=b<rsup|2>+2b+1>.

<\verbatim>
a := 0; b := 0; y := 0;<no-page-break>

while y ‹= x do<no-page-break>

<hspace|2.100em>y := y + 3*a + 3*b + 1;<no-page-break>

<hspace|2.100em>a := a + 2*b + 1;<no-page-break>

<hspace|2.100em>b := b + 1<no-page-break>

endw
</verbatim>

L’ordine conta: <tt|y> legge i vecchi <tt|a> e <tt|b>; poi <tt|a> legge il vecchio <tt|b>; soltanto alla fine aumentiamo <tt|b>.

<subsection|Seguire il calcolo per 10>

Ai controlli della guardia otteniamo:

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.8em>|<cwith|1|-1|1|-1|cell-rsep|0.8em>|<table|<row|<cell|b>|<cell|a=b<rsup|2>>|<cell|y=b<rsup|3>>|<cell|y≤10>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|<text|vero>>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|<text|vero>>>|<row|<cell|2>|<cell|4>|<cell|8>|<cell|<text|vero>>>|<row|<cell|3>|<cell|9>|<cell|27>|<cell|<text|falso>>>>>>
</equation*>

Guardiamo l’ultimo giro. Si parte da <math|a=4,b=2,y=8>. Il primo comando calcola <math|8+3·4+3·2+1=27>; il secondo calcola <math|4+2·2+1=9>; il terzo porta <math|b> a 3. Al controllo successivo usciamo.

La variabile <math|b> ha superato la risposta di uno. Il cubo attuale supera 10, ma il precedente, <math|2<rsup|3>=8>, era ancora ammesso. Questo è il fatto da ricordare nell’invariante.

<subsection|Ricordare anche il cubo precedente>

Ai controlli vogliamo conservare

<\equation*>
I≡a=b<rsup|2>∧y=b<rsup|3>∧(b-1)<rsup|3>≤x∧b≥0∧x≥0.
</equation*>

All’inizio <math|a=b=y=0>. La condizione sul cubo precedente vale perché <math|(b-1)<rsup|3>=-1≤x>. Non indica un cubo già provato dal programma: permette soltanto di usare la stessa formula anche nello stato iniziale.

Supponiamo vera la guardia. Le due identità sulle potenze assicurano che i nuovi valori siano il quadrato e il cubo del nuovo indice <math|b'=b+1>.

Resta il cubo precedente. Prima del giro sappiamo <math|b<rsup|3>=y≤x>, grazie alla guardia. Dopo il giro il cubo precedente è proprio <math|(b'-1)<rsup|3>=b<rsup|3>>. Anche questa parte di <math|I> è quindi conservata; i limiti <math|b'≥0,x≥0> rimangono veri.

<subsection|Come trovare una quantità che diminuisce>

Il cubo <math|y> cresce. Verrebbe da misurare quanto manca a <math|x> con <math|x-y>, ma nell’ultimo stato questa quantità è negativa: per 10 diventerebbe <math|10-27=-17>. Non rispetta la non negatività richiesta sotto tutto l’invariante.

L’invariante ci offre un’altra quantità: il cubo <em|precedente> non supera mai <math|x>. La distanza <math|x-(b-1)<rsup|3>> è quindi sempre non negativa. Aggiungiamo 1 e scegliamo

<\equation*>
t=x+1-(b-1)<rsup|3>.
</equation*>

Così <math|t≥1> in ogni stato di <math|I>, compreso quello finale. Con <math|x=10> possiamo controllare la scelta sulle stesse quattro righe:

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.8em>|<cwith|1|-1|1|-1|cell-rsep|0.8em>|<table|<row|<cell|b>|<cell|(b-1)<rsup|3>>|<cell|t=11-(b-1)<rsup|3>>>|<row|<cell|0>|<cell|-1>|<cell|12>>|<row|<cell|1>|<cell|0>|<cell|11>>|<row|<cell|2>|<cell|1>|<cell|10>>|<row|<cell|3>|<cell|8>|<cell|3>>>>>
</equation*>

La traccia suggerisce la diminuzione; ora la dimostriamo per ogni giro. Dopo il corpo <math|b'=b+1>, quindi <math|t'=x+1-b<rsup|3>>. Sottraendo troviamo

<\equation*>
t-t'=b<rsup|3>-(b-1)<rsup|3>=3b(b-1)+1.
</equation*>

Per <math|b=0> e <math|b=1> il risultato è 1. Per ogni intero <math|b≥2>, il prodotto <math|b(b-1)> è positivo. Dunque <math|t-t'›0> per tutti i valori ammessi: <math|t> scende strettamente.

La guardia e il corpo usano soltanto operazioni sempre definite sugli interi. Ogni giro termina con successo; la funzione naturale <math|t> esclude infiniti giri.

<subsection|Leggere il risultato all’uscita>

Quando usciamo, <math|y›x>. Dall’invariante otteniamo

<\equation*>
(b-1)<rsup|3>≤x‹b<rsup|3>.
</equation*>

All’inizio la guardia è vera, perché <math|0≤x>. È stato quindi eseguito almeno un giro e all’uscita <math|b≥1>. La risposta <math|b-1> è non negativa ed è proprio la parte intera della radice cubica.

<\attenzione|Quale variabile contiene la radice?>
Il ciclo lascia in <tt|b> un valore in più: per <math|x=0> lascia 1, per <math|x=8> lascia 3. Per consegnare la risposta in <tt|b>, aggiungiamo dopo il ciclo <tt|b := b - 1>. L’invariante riguarda il ciclo prima di questa correzione.
</attenzione>

<section|Fibonacci: conservare il valore che manca>

La successione di Fibonacci parte da <math|<math-up|fib>(0)=0> e <math|<math-up|fib>(1)=1>; ogni termine successivo è la somma dei due precedenti. Per calcolare <math|<math-up|fib>(k)> con <math|k≥1>, vorremmo mantenere <math|x=<math-up|fib>(i)> e far avanzare <math|i> fino a <math|k>.

Il prossimo valore dovrebbe essere <math|<math-up|fib>(i+1)=x+<math-up|fib>(i-1)>. La formula spiega il passo, ma non è ancora un comando: <tt|fib> non è un'operazione del nostro linguaggio. Conserviamo allora il valore mancante in <math|y>. L'invariante diventa

<\equation*>
I≡x=<math-up|fib>(i)∧y=<math-up|fib>(i-1)∧1≤i≤k.
</equation*>

Per avanzare vogliamo che il nuovo <math|x> valga il vecchio <math|x+y> e che il nuovo <math|y> valga il vecchio <math|x>. Con <math|x=3,y=2>, i nuovi valori devono essere 5 e 3. La sequenza <tt|x := x+y; y := x> produrrebbe invece 5 e 5. Salviamo prima il vecchio <math|x>:

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

<subsection|Controllare il passo e l’uscita>

L’inizializzazione usa <math|<math-up|fib>(1)=1> e <math|<math-up|fib>(0)=0>. Quindi vale l’invariante. Se siamo nel corpo, <math|1≤i≤k> e <math|i≠k> danno <math|i‹k>.

Indichiamo con un apice i valori dopo il corpo. La somma produce il termine successivo; il temporaneo conserva quello che deve diventare il precedente:

<\equation*>
x'=<math-up|fib>(i)+<math-up|fib>(i-1)=<math-up|fib>(i+1),
</equation*>

<\equation*>
y'=<math-up|fib>(i),<space|2em>i'=i+1.
</equation*>

Riscrivendo rispetto al nuovo indice ritroviamo <math|x'=<math-up|fib>(i')> e <math|y'=<math-up|fib>(i'-1)>. Inoltre <math|i‹k> assicura <math|1≤i'≤k>: anche i limiti si conservano.

La quantità <math|k-i> è non negativa e diminuisce di 1 a ogni giro. Tutte le operazioni sono definite, quindi il ciclo termina. All’uscita <math|i=k> e l’invariante dà <math|x=<math-up|fib>(k)>.

Per <math|k=1> la guardia è subito falsa e il risultato è già pronto. Il caso <math|k=0> è escluso da questa specifica; la verifica finale chiede come includerlo.

<subsection|Per proseguire: seguire una ricorrenza che dimezza l'indice>

Un altro problema del corso mostra che far crescere un contatore non è sempre la scelta migliore. Definiamo <math|f(0)=0>, <math|f(1)=1>; per <math|j≥2> poniamo <math|f(j)=f(j/2)> se <math|j> è pari e <math|f(j)=f((j-1)/2)+f((j+1)/2)> se è dispari. Gli argomenti a destra sono più piccoli di <math|j>, quindi la definizione permette di calcolare i valori a partire dai casi iniziali.

Per esempio <math|f(19)=f(9)+f(10)=f(4)+2f(5)=3f(2)+2f(3)=5f(1)+2f(2)=7>. In ogni passaggio compaiono due indici consecutivi. Cerchiamo allora di conservare

<\equation*>
I≡0≤x≤n∧f(n)=k f(x)+h f(x+1),
</equation*>

con <math|n≥0> non modificato. Inizializzando <math|x=n,k=1,h=0> l'uguaglianza è vera. Quando <math|x=0> diventa <math|f(n)=k·0+h·1=h>: sappiamo già quale guardia scegliere e dove troveremo il risultato.

Deriviamo il corpo. Scriviamo <math|q=x<space|0.2em><math-up|div><space|0.2em>2>. Se <math|x=2q›0>, allora <math|f(x)=f(q)> e <math|f(x+1)=f(q)+f(q+1)>; pertanto

<\equation*>
k f(x)+h f(x+1)=(k+h)f(q)+h f(q+1).
</equation*>

Basta sommare <math|h> a <math|k> e dimezzare <math|x>. Se <math|x=2q+1>, le identità danno invece

<\equation*>
k f(x)+h f(x+1)=k f(q)+(k+h)f(q+1).
</equation*>

Basta sommare <math|k> a <math|h> e dimezzare <math|x>. Per <math|x=1>, la prima identità del caso dispari è ancora vera perché <math|f(1)=f(0)+f(1)>.

Possiamo ora scrivere il programma, usando il test <tt|x mod 2 = 0> per riconoscere gli indici pari:

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

Prima aggiorniamo il coefficiente richiesto dal caso pari o dispari, poi dimezziamo l’indice. Il risultato sarà in <math|h>.

Le uguaglianze appena ottenute provano che l’invariante si conserva. Sotto la guardia <math|x›0>, e <math|0≤x<space|0.2em><math-up|div><space|0.2em>2‹x>; dunque <math|x> è una funzione di terminazione. Il divisore 2 è sempre non nullo. 

All’uscita <math|h=f(n)>, anche per <math|n=0>, quando il corpo non viene eseguito. Le asserzioni guidano la costruzione; il programma usa solo somme, divisione intera e modulo.

<\verifica|8>
<strong|1.> Vogliamo conservare <math|xy+pq=n> mediante <tt|x := x-p; q := E>. Trova un'espressione <math|E> che funzioni per tutti gli interi e giustifica anche il caso <math|p=0>.

<strong|2.> Nel programma di Fibonacci modifica soltanto l'inizializzazione e l'invariante per calcolare anche il caso <math|k=0>. Puoi mantenere la stessa forma del corpo usando due termini consecutivi a indici non negativi? Indica quale variabile conterrà il risultato.
</verifica>
