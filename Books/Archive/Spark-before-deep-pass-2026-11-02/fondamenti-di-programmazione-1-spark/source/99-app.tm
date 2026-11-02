<appendix|Soluzioni ragionate>

<section|Capitolo 1 — Specifiche e stati>

<strong|1. Prodotto per somme.> Gli stati ai controlli sono <math|(A,B,C)=(4,2,0)>, poi <math|(4,1,4)> e infine <math|(4,0,8)>. <math|C> raccoglie la parte già calcolata; <math|B> conta le aggiunte rimaste. L'ingresso era <math|b=2>, ma <math|B> alla fine vale zero. Per questo <math|AB=0> nello stato finale non è il prodotto iniziale. La richiesta è <math|C=ab=8>.

<strong|2. Il maggiore.> Usiamo <math|x,y> per gli ingressi, <math|r> per il risultato e <math|a,b> per ricordare gli ingressi. All'inizio richiediamo <math|x=a∧y=b> con <math|a,b∈ℤ>. Alla fine richiediamo <math|x=a∧y=b> e <math|r≥a∧r≥b∧(r=a∨r=b)>. Le prime due disuguaglianze da sole permetterebbero qualunque numero ancora più grande: l'ultima condizione assicura che il risultato sia uno dei due ingressi. La specifica descrive le proprietà del risultato; non prescrive quale confronto eseguire né come assegnare <math|r>.


<section|Capitolo 2 — Calcolo proposizionale>

<strong|2.1.> «Esco solo se non piove» è <math|e⇒¬p>: uscire richiede che non piova. «Se non piove, esco» è <math|¬p⇒e>: non piovere basterebbe per uscire. Con <math|p> falsa ed <math|e> falsa la prima formula è vera (non sono uscito), la seconda falsa. Dunque la prima non implica la seconda: posso scegliere di restare a casa anche senza pioggia.

<strong|2.2.> Distribuiamo per avvicinare <math|P> e la sua negazione:

<\equation*>
P∧(¬P∨Q)≡(P∧¬P)∨(P∧Q)≡F∨(P∧Q)≡P∧Q.
</equation*>

I passi usano distributività, contraddizione e unità. In <math|¬(P⇒Q)∧R>, l'occorrenza di <math|P> attraversa la negazione esterna e l'antecedente: due inversioni, quindi è positiva. <math|Q> ne attraversa una sola ed è negativa. <math|R> non ne attraversa nessuna ed è positiva. La riscrittura <math|(P∧¬Q)∧R> conferma i tre segni.

<section|Capitolo 3 — Individui e formule>

<strong|3.1.> In <math|(∀x.p(x,y))∧(∃y.q(x,y))> la <math|x> dentro <math|p> è legata da <math|∀x>; la <math|y> dentro <math|p> è libera. Nella seconda parte <math|x> è libera e <math|y> è legata. Per sostituire <math|y> alla <math|x> libera dobbiamo prima cambiare il nome del quantificatore esistenziale, per esempio in <math|z>. Otteniamo <math|(∀x.p(x,y))∧(∃z.q(x,z))>, quindi

<\equation*>
(∀x.p(x,y))∧(∃z.q(y,z)).
</equation*>

La prima parte resta invariata, perché lì non c'è una <math|x> libera da sostituire. Le due <math|y> rimaste sono libere; il quantificatore <math|∃z> non le cattura.

<strong|3.2.> Sui naturali, con <math|s(n)=n+1>, la prima formula è <math|∀x.(<math-up|pari>(x)⇒<math-up|pari>(s(s(x))))>. <math|s(s(x))> è un termine; l'intera scrittura è una formula chiusa. «Esattamente uno soddisfa <math|p>» si formalizza con <math|∃x.(p(x)∧∀y.(p(y)⇒y=x))>. Senza la parte universale potremmo avere più testimoni. L'uguaglianza dice che ogni eventuale testimone coincide con quello già scelto, quindi ne garantisce l'unicità.

<section|Capitolo 4 — Semantica e quantificatori>

<strong|4.1.> Per negare l'universale cerchiamo un controesempio; per negare l'implicazione conserviamo la premessa e neghiamo la conclusione:

<\equation*>
¬(∀x.(p(x)⇒∃y.q(x,y)))≡∃x.(p(x)∧¬(∃y.q(x,y))).
</equation*>

Un secondo De Morgan dà <math|∃x.(p(x)∧∀y.¬q(x,y))>. Dobbiamo quindi trovare un individuo che soddisfi <math|p> e per il quale nessun individuo <math|y> soddisfi la relazione <math|q>. Non basta trovare una sola coppia che fallisca <math|q>: per il controesempio scelto devono fallire tutte.

<strong|4.2.> <math|∀x.∃y.R(x,y)> è vera: quando <math|x=a> scegliamo <math|y=b>, quando <math|x=b> scegliamo <math|y=a>. <math|∃y.∀x.R(x,y)> è falsa: <math|y=a> fallisce per <math|x=a>; <math|y=b> fallisce per <math|x=b>. Ogni elemento ha un compagno, ma nessuno è compagno di tutti. Infine, sui naturali scegliamo <math|P(x)> come «<math|x> è pari» e una costante <math|d> che denota 2: <math|P(d)> è vera, mentre <math|∀x.P(x)> è falsa per 1. Quel nome aveva una proprietà particolare; non rappresentava un individuo generico.


<section|Capitolo 5 — Stati, espressioni e comandi>

<strong|1.> Da <math|(x,y)=(3,7)> si passa a <math|(10,7)>, poi a <math|(10,3)>, infine a <math|(7,3)>. Con ingressi generici <math|A,B>, dopo il primo comando abbiamo <math|(A+B,B)>; il secondo produce <math|(A+B,A)> perché legge il nuovo <math|x=A+B>; il terzo produce <math|(B,A)>. Si tratta dunque di uno scambio. Il ragionamento usa interi matematici: in un linguaggio con interi limitati la somma potrebbe eccedere la rappresentazione disponibile.

<strong|2.> Da 4 otteniamo <math|4,2,0>: dopo due giri la guardia è falsa. Da 5 otteniamo <math|5,3,1,-1,-3,…>. Ogni valore resta dispari, perché sottraiamo 2, quindi non può mai essere zero: la guardia resta vera e il ciclo non termina. Ridurre una variabile non garantisce di raggiungere il valore su cui è basato il test di uscita.

<section|Capitolo 6 — Triple di Hoare e invarianti>

<strong|1.> Sostituendo <math|2x> a <math|y> nella postcondizione otteniamo <math|2x›10>. La moltiplicazione è sempre definita. La precondizione richiesta è quindi <math|x›5>, equivalente a <math|x≥6> per <math|x> intero. L'ipotesi proposta basta per l'assioma dell'assegnamento e garantisce il risultato per tutti gli ingressi ammessi.

<strong|2.> No. Prima del secondo comando serve la definitezza di <tt|z div x>, dunque <math|x≠0>, oltre a <math|z›4>. Risalendo attraverso <tt|x := 0> sostituiamo 0 a <math|x>: la richiesta diventa <math|0≠0∧z›4>, falsa in ogni stato. La precondizione data è soddisfacibile, ma il comando divide sempre per zero. La verità di <math|z›4> nello stato d'ingresso non garantisce un'esecuzione con successo.

<section|Capitolo 7 — Correttezza totale>

<strong|1.> Scegliamo <math|t=n-i>. Da <math|I> segue <math|i≤n>, dunque <math|t≥0>. Il corpo incrementa <math|i> e lascia <math|n> fisso: se prima <math|n-i=V>, dopo vale <math|n-(i+1)=V-1‹V>. Da <math|i‹n> e dall'integralità segue <math|i+1≤n>, quindi il corpo conserva l'invariante. La guardia è definita e il corpo termina con successo. All'uscita <math|i≥n>; insieme a <math|i≤n> ricaviamo <math|i=n>.

<strong|2.> Dopo <tt|x := x + 1> si aggiunge il nuovo <math|x>. L'invariante adatto ai controlli è <math|s=<big|sum><rsub|j=1><rsup|x>j∧0≤x≤n>. All'inizio la somma è vuota e vale zero. Se prima <math|x=k>, il corpo porta <math|x> a <math|k+1> e aggiunge proprio <math|k+1> a una somma che arriva a <math|k>, ripristinando l'invariante. La funzione di terminazione resta <math|n-x>. All'uscita <math|x=n> e il risultato è <math|s=<big|sum><rsub|j=1><rsup|n>j>. Per <math|n=0> la somma è vuota e il ciclo restituisce zero senza eseguire il corpo.


<section|Capitolo 8 — Costruire un ciclo>

<strong|1. Compensare una modifica.> Dopo <tt|x := x-p>, il termine <math|xy> ha perso <math|py>. Possiamo compensare aumentando <math|q> di <math|y>, così il termine <math|pq> guadagna <math|py>. Scegliamo dunque <math|E=q+y>. In termini dei vecchi valori, il risultato è

<\equation*>
(x-p)y+p(q+y)=xy-py+pq+py=xy+pq=n.
</equation*>

L'espressione scelta non contiene <math|x>, quindi il primo assegnamento non cambia il suo valore. Se <math|p=0>, il termine <math|pq> vale sempre zero e la conservazione non impone alcun particolare nuovo valore a <math|q>. La scelta <math|q+y> funziona comunque ed è definita per tutti gli interi.

<strong|2. Fibonacci includendo zero.> Mettiamo il risultato nella variabile <tt|y>. Inizializziamo <tt|x := 1; i := 0; y := 0> e conserviamo

<\equation*>
I≡x=<math-up|fib>(i+1)∧y=<math-up|fib>(i)∧0≤i≤k.
</equation*>

Il corpo resta <tt|temp := x; x := x+y; y := temp; i := i+1>. Se prima i valori sono <math|<math-up|fib>(i+1)> e <math|<math-up|fib>(i)>, dopo gli assegnamenti sono <math|<math-up|fib>(i+2)> e <math|<math-up|fib>(i+1)>. Con il nuovo indice <math|i'=i+1> ritroviamo l'invariante. Sotto <tt|i != k>, i limiti danno <math|i‹k>, quindi l'incremento non supera <math|k>. La funzione <math|k-i> prova la terminazione; all'uscita <math|i=k> e <math|y=<math-up|fib>(k)>. Per <math|k=0> la guardia è subito falsa e <math|y=0>, come richiesto.

<section|Capitolo 9 — Array>

<strong|1. Valutare prima di aggiornare.> La lettura <tt|v[0]> nell'indice produce 2. A destra leggiamo gli indici 0 e 1 e otteniamo <math|2+1=3>. Tutti gli accessi sono validi perché 0, 1 e 2 appartengono a <math|[0,4)>. Cambia soltanto la posizione 2: il nuovo array è <math|[2,1,3,6]>. Il comando successivo legge <tt|v[2]>, ora uguale a 3, e scrive quindi in posizione 3: è definito e lascia <math|[2,1,3,0]>. Se avessimo valutato il secondo comando prima del primo, il valore 10 in posizione 2 avrebbe prodotto un indice non valido. L'ordine dell'esecuzione cambia anche la definitezza.

<strong|2. Contare i negativi.> Sia <math|c> il numero di negativi già incontrati. Inizializziamo <tt|x := 0; c := 0>. Finché <tt|x != n>, eseguiamo <tt|if a[x] ‹ 0 then c := c+1 else skip fi>, poi <tt|x := x+1>. Il confronto usa qui il simbolo matematico ‹ per «minore di».

L'invariante è <math|0≤x≤n> insieme a «<math|c> è il numero degli indici <math|i∈[0,x)> per cui <math|a[i]‹0>». All'inizio non ci sono indici nel prefisso e il numero è 0. Sotto la guardia, <math|0≤x‹n> rende valida la lettura. Se l'elemento è negativo, l'insieme degli indici contati guadagna un elemento, altrimenti non cambia; il ramo scelto aggiorna <math|c> proprio di conseguenza. Incrementare <math|x> rende il nuovo prefisso uguale al vecchio prefisso più la posizione appena esaminata. La quantità <math|n-x> è non negativa e diminuisce di 1. All'uscita <math|x=n>, dunque il contatore riguarda tutto l'array. Se <math|n=0>, vale già <math|c=0> e non si legge alcuna posizione.
