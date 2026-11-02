<appendix|Soluzioni ragionate>

<section|Capitolo 1 — Specifiche e stati>

<strong|1.1. Prodotto per somme.> Ai controlli della guardia la terna <math|(A,B,C)> vale prima <math|(4,2,0)>, poi <math|(4,1,4)> e infine <math|(4,0,8)>. La variabile <math|C> raccoglie la parte del prodotto già calcolata, mentre <math|B> conta le aggiunte che mancano.

Il valore iniziale di <math|B> era <math|b=2>, ma alla fine <math|B=0>, e quindi il prodotto <math|AB>, che ora vale 0, non ricorda più quello di partenza. La richiesta corretta parla dei valori iniziali, ed è <math|C=ab=8>.

<strong|1.2. Il maggiore.> Chiamiamo <math|x> e <math|y> gli ingressi e <math|r> il risultato, e usiamo le lettere di specifica <math|a> e <math|b> per ricordare i valori iniziali. La precondizione è <math|x=a∧y=b>, con <math|a,b∈ℤ>. Alla fine vogliamo che gli ingressi siano ancora quelli, cioè di nuovo <math|x=a∧y=b>, e che

<\equation*>
r≥a∧r≥b∧(r=a∨r=b).
</equation*>

Le due disuguaglianze da sole non bastano, perché ammetterebbero anche numeri troppo grandi. L'ultima condizione chiede che <math|r> sia proprio uno dei due ingressi, e insieme le tre condizioni dicono che è il massimo.

La specifica descrive il traguardo ma non dice come raggiungerlo, e lascia aperta la scelta del confronto e degli assegnamenti che produrranno il risultato.

<section|Capitolo 2 — Calcolo proposizionale>

<strong|2.1. Uscire senza pioggia.> La frase «esco solo se non piove» si scrive <math|e⇒¬p>, perché dice che uscire richiede che non piova. La frase «se non piove, esco» si scrive invece <math|¬p⇒e>, e dice che basterebbe l'assenza di pioggia per farmi uscire.

Per distinguerle prendiamo <math|p> ed <math|e> entrambe false, cioè non piove e io resto a casa. La prima formula è vera e la seconda falsa, e questo controesempio mostra che la prima non implica la seconda.

<strong|2.2. Semplificare e seguire i segni.> Come nel testo, distribuiamo per avvicinare <math|P> alla sua negazione:

<\equation*>
P∧(¬P∨Q)≡(P∧¬P)∨(P∧Q)≡F∨(P∧Q)≡P∧Q.
</equation*>

I passi usano nell'ordine la distributività, la contraddizione <math|P∧¬P≡F> e la legge di unità.

In <math|(P∨¬Q)⇒¬R>, la strada verso <math|P> passa per l'antecedente dell'implicazione e poi dentro la disgiunzione, che non inverte. C'è una sola inversione, quindi l'occorrenza è negativa. Per arrivare a <math|Q> passiamo per lo stesso antecedente e poi per una negazione, e le due inversioni si annullano, quindi il segno è positivo. Per <math|R> passiamo per il conseguente, che non inverte, e poi per una negazione, e il segno è negativo.

Possiamo controllare il risultato eliminando l'implicazione. La formula equivale a <math|¬(P∨¬Q)∨¬R>, cioè a <math|(¬P∧Q)∨¬R>, dove si vede che <math|P> e <math|R> compaiono negate e <math|Q> no.

<section|Capitolo 3 — Individui e formule>

<strong|3.1. Sostituire senza catturare.> In <math|(∀x.p(x,y))∧(∃y.q(x,y))>, dentro <math|p> la <math|x> è legata e la <math|y> è libera. Dentro <math|q> accade il contrario, con la <math|x> libera e la <math|y> legata.

Vogliamo mettere <math|y> al posto della sola <math|x> libera, che si trova dentro <math|q>. Se lo facessimo subito, la <math|y> inserita verrebbe catturata dall'esistenziale, quindi rinominiamo prima la variabile legata in <math|z>. Poi sostituiamo e otteniamo

<\equation*>
(∀x.p(x,y))∧(∃z.q(y,z)).
</equation*>

La prima parte non cambia, perché non contiene <math|x> libere, e le due <math|y> rimaste sono entrambe libere, dato che <math|∃z> non le lega.

<strong|3.2. Una proprietà generale e un unico testimone.> Con la funzione di successore <math|s(n)=n+1> scriviamo

<\equation*>
∀x.(<math-up|pari>(x)⇒<math-up|pari>(s(s(x)))).
</equation*>

Qui <math|s(s(x))> indica un numero ed è quindi un termine, mentre l'intera scrittura esprime una proprietà ed è una formula chiusa.

Per dire che esattamente un elemento soddisfa <math|p> usiamo

<\equation*>
∃x.(p(x)∧∀y.(p(y)⇒y=x)).
</equation*>

La parte <math|p(x)> garantisce che un testimone esista. L'universale aggiunge che ogni altro elemento con la stessa proprietà coincide con lui, ed è l'uguaglianza a esprimere questa unicità.

<section|Capitolo 4 — Semantica e quantificatori>

<strong|4.1. Trovare un controesempio.> Neghiamo prima l'universale e poi l'implicazione,

<\equation*>
¬(∀x.(p(x)⇒∃y.q(x,y)))≡∃x.(p(x)∧¬(∃y.q(x,y))),
</equation*>

e con un'altra legge di De Morgan portiamo la negazione fino agli atomi:

<\equation*>
∃x.(p(x)∧∀y.¬q(x,y)).
</equation*>

Per mostrare falsa la formula iniziale dobbiamo quindi trovare un individuo con la proprietà <math|p> per cui la relazione <math|q> fallisca con tutti gli individui <math|y>. Non basta trovare una sola coppia per cui <math|q> è falsa.

<strong|4.2. Cambiare il testimone o sceglierne uno solo.> La formula <math|∀x.∃y.R(x,y)> è vera, perché per <math|x=a> possiamo scegliere <math|y=b> e per <math|x=b> possiamo scegliere <math|y=a>.

La formula <math|∃y.∀x.R(x,y)> è invece falsa. Il candidato <math|y=a> fallisce con <math|x=a>, e il candidato <math|y=b> fallisce con <math|x=b>. Ogni elemento ha un compagno, ma nessuno è il compagno di tutti.

Per la generalizzazione lavoriamo sui naturali, con <math|P(x)> che significa «<math|x> è pari» e una costante <math|d> che indica 2. La formula <math|P(d)> è vera, ma <math|∀x.P(x)> è falsa, e 1 è un controesempio. Il nome <math|d> indicava un oggetto con una proprietà particolare, non un individuo generico.

<section|Capitolo 5 — Stati, espressioni e comandi>

<strong|5.1. Scambiare con somme e differenze.> Partendo da <math|(x,y)=(3,7)>, i tre comandi producono nell'ordine <math|(10,7)>, <math|(10,3)> e <math|(7,3)>.

Per capire il comportamento in generale usiamo gli ingressi generici <math|A> e <math|B>. Dopo il primo comando abbiamo <math|(A+B,B)>. Il secondo legge il nuovo <math|x> e calcola <math|(A+B)-B=A>, portando a <math|(A+B,A)>. Il terzo calcola <math|(A+B)-A=B>, e lo stato finale è <math|(B,A)>. Abbiamo così dimostrato lo scambio per tutti gli interi matematici. Con interi rappresentati da un numero limitato di cifre dovremmo controllare anche che la somma sia rappresentabile.

<strong|5.2. Diminuire non basta.> Partendo da 4 otteniamo <math|4,2,0>, e dopo due giri la guardia è falsa. Partendo da 5 otteniamo invece <math|5,3,1,-1,-3,…>, senza fine.

Il motivo è che sottrarre 2 non cambia la parità. Nel secondo caso ogni valore resta dispari e non può mai essere zero, quindi la guardia rimane vera per sempre. L'esempio mostra che una variabile può diminuire a ogni giro senza mai raggiungere il valore che farebbe uscire dal ciclo.

<section|Capitolo 6 — Triple di Hoare e invarianti>

<strong|6.1. Risalire attraverso un assegnamento.> Il valore finale di <math|y> sarà <math|2x>. Sostituendolo nella postcondizione <math|y›10> otteniamo <math|2x›10>, cioè <math|x›5>.

La moltiplicazione è sempre definita, e poiché <math|x> è intero la condizione <math|x›5> equivale a <math|x≥6>. L'ipotesi proposta basta quindi, per l'assioma dell'assegnamento, su tutti gli ingressi ammessi.

<strong|6.2. Una divisione che fallisce sempre.> Prima di <tt|y := z div x> servono la definitezza, cioè <math|x≠0>, e la postcondizione <math|z›4>, che l'assegnamento non modifica.

Risalendo attraverso <tt|x := 0> sostituiamo 0 al posto di <math|x>, e otteniamo

<\equation*>
0≠0∧z›4.
</equation*>

Questa condizione è falsa in ogni stato, e quindi nessun ingresso rende il programma corretto in senso totale. La precondizione proposta, invece, è soddisfatta dallo stato con <math|z=5> e <math|x=3>, e partendo da lì il programma tenta comunque una divisione per zero. La risposta è dunque no.

<section|Capitolo 7 — Correttezza totale>

<strong|7.1. Un contatore che raggiunge n.> Scegliamo <math|t=n-i>. Dall'invariante segue <math|i≤n>, quindi <math|t≥0>.

Se prima del corpo <math|n-i=V>, dopo l'incremento vale <math|n-(i+1)=V-1>, che è minore di <math|V>. Inoltre la guardia <math|i‹n>, con valori interi, dà <math|i+1≤n>, e l'invariante resta vero.

La guardia e il corpo sono sempre definiti, e il singolo incremento termina, quindi il ciclo termina. All'uscita <math|i≥n> e l'invariante <math|i≤n> danno insieme <math|i=n>.

<strong|7.2. Aggiungere dopo l'incremento.> Con i due comandi scambiati, il corpo aumenta prima <math|x> e poi aggiunge il valore nuovo. L'invariante adatto è

<\equation*>
I≡s=<big|sum><rsub|j=1><rsup|x>j∧0≤x≤n.
</equation*>

All'inizio la somma è vuota e vale zero. Se prima del corpo <math|x=k>, il corpo porta <math|x> a <math|k+1> e aggiunge proprio <math|k+1> a una somma che arrivava fino a <math|k>, ristabilendo la stessa proprietà con il nuovo contatore.

La funzione di terminazione resta <math|n-x>. All'uscita <math|x=n>, e quindi abbiamo sommato gli interi da 1 a <math|n>. Per <math|n=0> la somma è vuota e il risultato è zero senza eseguire il corpo.

<section|Capitolo 8 — Costruire un ciclo>

<strong|8.1. Compensare una modifica.> Dopo <tt|x := x-p>, il termine <math|xy> ha perso <math|py>. Possiamo compensare la perdita aumentando <math|q> di <math|y>, perché così <math|pq> guadagna esattamente <math|py>. Scegliamo quindi <math|E=q+y>, e in termini dei valori prima dei due comandi

<\equation*>
(x-p)y+p(q+y)=xy-py+pq+py=xy+pq=n.
</equation*>

L'espressione <math|q+y> non legge <math|x>, quindi il primo comando non ne cambia il valore. Quando <math|p=0> l'uguaglianza resterebbe vera con qualunque nuovo valore di <math|q>, e in particolare anche con quello scelto. Tutte le espressioni sono definite sugli interi.

<strong|8.2. Fibonacci includendo zero.> Mettiamo il risultato in <tt|y>, inizializziamo con <tt|x := 1; i := 0; y := 0> e scegliamo

<\equation*>
I≡x=<math-up|fib>(i+1)∧y=<math-up|fib>(i)∧0≤i≤k.
</equation*>

Ora entrambi gli indici della successione sono non negativi anche all'inizio, e il corpo resta <tt|temp := x; x := x+y; y := temp; i := i+1>. Dopo gli assegnamenti, indicando con <math|i> il vecchio contatore, <math|x> contiene <math|<math-up|fib>(i+2)> e <math|y> contiene <math|<math-up|fib>(i+1)>. Con il nuovo indice <math|i'=i+1> ritroviamo esattamente l'invariante.

Sotto la guardia <math|i≠k> i limiti danno <math|i‹k>, quindi l'incremento non supera <math|k>, e la funzione <math|k-i> dimostra la terminazione. All'uscita <math|i=k> e <math|y=<math-up|fib>(k)>. Per <math|k=0> la guardia è subito falsa e <math|y=0>, quindi anche questo caso è compreso.

<section|Capitolo 9 — Array>

<strong|9.1. Valutare prima di aggiornare.> Per calcolare l'indice leggiamo <tt|v[0]>, che vale 2. Per il valore a destra leggiamo le posizioni 0 e 1 e otteniamo <math|2+1=3>. Gli indici usati sono 0, 1 e 2, tutti validi.

Il comando cambia soltanto la posizione 2, e il nuovo array è <math|[2,1,3,6]>. Il comando successivo legge <tt|v[2]>, che ora vale 3, e scrive in posizione 3, quindi è definito e lascia <math|[2,1,3,0]>.

Se avessimo eseguito il secondo comando per primo, avrebbe letto 10 in posizione 2 e avrebbe tentato di scrivere fuori dall'array. L'ordine dei comandi può cambiare anche la definitezza degli accessi.

<strong|9.2. Contare i negativi.> Usiamo <math|c> per il numero di negativi incontrati fino a quel momento.

<\verbatim>
x := 0; c := 0;<no-page-break>

while x != n do<no-page-break>

<hspace|2.100em>if a[x] ‹ 0 then c := c + 1 else skip fi;<no-page-break>

<hspace|2.100em>x := x + 1<no-page-break>

endw
</verbatim>

L'invariante chiede <math|0≤x≤n> e dice che <math|c> è il numero degli indici <math|i∈[0,x)> con <math|a[i]‹0>. All'inizio il prefisso è vuoto e <math|c=0>, quindi l'invariante vale.

Sotto la guardia abbiamo <math|0≤x‹n>, e la lettura di <tt|a[x]> è valida. Se il nuovo elemento è negativo aumentiamo <math|c> di uno, altrimenti lo lasciamo com'è. Dopo l'incremento di <math|x> il prefisso comprende esattamente una posizione in più, quella appena esaminata, e il conteggio è di nuovo corretto.

La quantità <math|n-x> è non negativa e diminuisce di 1, e il corpo termina senza errori, quindi il ciclo termina. All'uscita <math|x=n> e <math|c> conta i negativi dell'intero array. Se <math|n=0>, il risultato è subito <math|c=0> e non viene letta nessuna posizione.
