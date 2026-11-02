<chapter|Costruire un ciclo: il significato delle variabili>

Abbiamo imparato a verificare un ciclo quando conosciamo già l'invariante. Ora affrontiamo la domanda che viene prima: come trovare un programma e una proprietà che lo accompagni? Partiamo dal risultato desiderato e cerchiamo informazioni che possano restare vere anche mentre il calcolo è incompleto.

<section|Dalla postcondizione a una proprietà da conservare>

Per ottenere il quoziente della divisione di 17 per 5, possiamo sottrarre ripetutamente 5 e contare le sottrazioni. Dopo due passi abbiamo tolto 10 e rimane 7: l'uguaglianza <math|17=2·5+7> racconta dove siamo arrivati. Il resto non è ancora piccolo abbastanza, ma l'uguaglianza è già vera.

Questo spiega la scelta fatta nel capitolo precedente: separare la relazione da conservare, <math|x=qy+r∧r≥0>, dalla condizione da raggiungere, <math|r‹y>. La prima diventa un invariante, insieme al vincolo <math|y›0>; la seconda suggerisce la guardia opposta, <tt|r ›= y>. Introdurre <math|r> rende visibile il testimone dell'esistenziale che caratterizza il quoziente: esiste un resto con <math|x=qy+r> e <math|0≤r‹y>.

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

All'inizio <math|x=1> e <math|<math-up|fatt>=1=0!>; inoltre <math|1≤n+1>. Supponiamo ora che <math|I> valga e che <math|x≤n>. La prima assegnazione produce <math|<math-up|fatt>'=(x-1)!·x=x!>. La seconda porta <math|x> a <math|x'=x+1>. La relazione da ritrovare è <math|<math-up|fatt>'=(x'-1)!>, ed è proprio l'uguaglianza appena ottenuta. Anche i limiti si conservano: <math|1≤x'≤n+1>.

La quantità <math|n+1-x> è un intero non negativo sotto <math|I> e diminuisce di 1 a ogni giro. Tutte le espressioni del corpo e della guardia sono definite. Il ciclo termina. All'uscita <math|x›n>; insieme a <math|x≤n+1> e all'integralità questo dà <math|x=n+1>. Dunque <math|<math-up|fatt>=n!>.

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

L'inizializzazione rende vera questa proprietà. Se <math|x›y>, allora <math|x-y›0> e la proprietà dei divisori comuni appena dimostrata conserva il MCD. Se si esegue l'altro ramo, sappiamo sia <math|x≠y> sia <math|¬(x›y)>: perciò <math|x‹y>, e vale il ragionamento simmetrico. La guardia è importante anche per giustificare questo secondo caso.

Come misurare il lavoro che rimane? Non serve sapere quanti passi occorreranno: basta una quantità che scenda. <math|x+y> è positiva sotto <math|I>. Nel primo ramo il suo nuovo valore è <math|(x-y)+y=x>, strettamente minore del vecchio <math|x+y>; nel secondo è <math|y>, ancora minore. Quindi il ciclo termina.

All'uscita <math|x=y›0>, e il MCD di due numeri positivi uguali è quel numero. L'invariante dà <math|x=<math-up|mcd>(a,b)>. Per esempio, da <math|(x,y)=(12,18)> passiamo a <math|(12,6)> e poi a <math|(6,6)>.

<section|Radice cubica: costruire potenze con differenze>

Vogliamo trovare l'intero <math|r≥0> tale che <math|r<rsup|3>≤x‹(r+1)<rsup|3>>, per un dato intero <math|x≥0>. Proviamo i cubi nell'ordine <math|0,1,8,27,…>. Possiamo passare da un cubo al successivo usando soltanto somme? L'identità

<\equation*>
(b+1)<rsup|3>=b<rsup|3>+3b<rsup|2>+3b+1
</equation*>

dice che ci serve anche il quadrato di <math|b>. Conserviamo allora tre informazioni: <math|b> è l'indice, <math|a=b<rsup|2>> è il suo quadrato e <math|y=b<rsup|3>> è il suo cubo. Il quadrato si aggiorna grazie a <math|(b+1)<rsup|2>=b<rsup|2>+2b+1>.

<\verbatim>
a := 0; b := 0; y := 0;<no-page-break>

while y ‹= x do<no-page-break>

<hspace|2.100em>y := y + 3*a + 3*b + 1;<no-page-break>

<hspace|2.100em>a := a + 2*b + 1;<no-page-break>

<hspace|2.100em>b := b + 1<no-page-break>

endw
</verbatim>

L'ordine salva i valori ancora necessari: <tt|y> deve leggere i vecchi <tt|a> e <tt|b>, e <tt|a> deve leggere il vecchio <tt|b>. Per <math|x=10>, le triple <math|(a,b,y)> ai controlli della guardia sono <math|(0,0,0)>, <math|(1,1,1)>, <math|(4,2,8)> e <math|(9,3,27)>. Il ciclo supera il cubo cercato.

Dobbiamo ricordare anche che il cubo precedente era ancora accettabile. Usiamo

<\equation*>
I≡a=b<rsup|2>∧y=b<rsup|3>∧(b-1)<rsup|3>≤x∧b≥0∧x≥0.
</equation*>

L'inizializzazione stabilisce <math|I>: in particolare <math|(-1)<rsup|3>=-1≤x>. Se la guardia è vera, <math|b<rsup|3>=y≤x>. Le due identità mostrano che, dopo il corpo, il nuovo quadrato e il nuovo cubo corrispondono a <math|b'=b+1>. Inoltre il nuovo cubo precedente è <math|(b'-1)<rsup|3>=b<rsup|3>≤x>. Si conserva quindi tutto l'invariante.

Per la terminazione prendiamo <math|t=x+1-(b-1)<rsup|3>>. Da <math|I> segue <math|t≥1>. Dopo un giro <math|t'=x+1-b<rsup|3>>, e

<\equation*>
t-t'=b<rsup|3>-(b-1)<rsup|3>=3b(b-1)+1›0.
</equation*>

Per gli interi <math|b≥0>, il prodotto <math|b(b-1)> è non negativo: vale zero per <math|b=0,1> e poi è positivo. La diminuzione è dunque stretta anche al primo passo.

All'uscita <math|y›x>, perciò <math|(b-1)<rsup|3>≤x‹b<rsup|3>>. Questo prova che <math|b-1> è la parte intera della radice cubica. Il ciclo esegue almeno un giro, poiché all'inizio <math|y=0≤x>, quindi <math|b≥1> all'uscita e <math|b-1≥0>.

<\attenzione|Quale variabile contiene la radice?>
Il ciclo lascia in <tt|b> un valore in più. Con <math|x=0> termina con <math|b=1>; con <math|x=8> termina con <math|b=3>. Per consegnare la radice direttamente in <tt|b> aggiungiamo, dopo <tt|endw>, <tt|b := b - 1>. L'invariante scritto sopra si riferisce al ciclo prima di questa correzione finale.
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

L'inizializzazione usa i due valori iniziali della successione. Sotto <math|I> e la guardia, <math|i‹k>; la ricorrenza produce <math|x'=<math-up|fib>(i+1)> e il salvataggio produce <math|y'=<math-up|fib>(i)>. Dopo l'incremento <math|i'=i+1>, ritroviamo le stesse relazioni con il nuovo indice, ancora compreso tra 1 e <math|k>. La quantità <math|k-i> è non negativa e diminuisce di 1. All'uscita <math|i=k>, quindi <math|x=<math-up|fib>(k)>. Per <math|k=1> non occorre alcun giro; <math|k=0> resta fuori da questa specifica.

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

Il programma inizializza <math|x:=n,k:=1,h:=0>. Finché <math|x≠0>, se <math|x> è pari esegue <tt|k := h+k>, altrimenti <tt|h := h+k>; in entrambi i casi esegue poi <tt|x := x div 2>. Il test di parità è <tt|x mod 2 = 0>.

Le uguaglianze derivate provano l'invarianza. Sotto la guardia <math|x›0>, e <math|0≤x<space|0.2em><math-up|div><space|0.2em>2‹x>; dunque <math|x> è una funzione di terminazione. Il divisore 2 è sempre non nullo. All'uscita <math|h=f(n)>, anche per <math|n=0>, quando il corpo non viene eseguito. Le asserzioni guidano la costruzione; il programma usa solo somme, divisione intera e modulo.

<\verifica|8>
<strong|1.> Vogliamo conservare <math|xy+pq=n> mediante <tt|x := x-p; q := E>. Trova un'espressione <math|E> che funzioni per tutti gli interi e giustifica anche il caso <math|p=0>.

<strong|2.> Nel programma di Fibonacci modifica soltanto l'inizializzazione e l'invariante per calcolare anche il caso <math|k=0>. Puoi mantenere la stessa forma del corpo usando due termini consecutivi a indici non negativi? Indica quale variabile conterrà il risultato.
</verifica>
