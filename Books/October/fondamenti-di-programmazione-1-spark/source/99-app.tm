<appendix|Soluzioni ragionate>

<section|Capitolo 1 — Specifiche e stati>

<strong|1.1. Prodotto per somme.> Ai controlli della guardia gli stati sono <math|(A,B,C)=(4,2,0)>, poi <math|(4,1,4)> e infine <math|(4,0,8)>. <math|C> raccoglie la parte già calcolata; <math|B> conta le aggiunte rimaste.

Il valore iniziale era <math|b=2>, ma alla fine <math|B=0>. Quindi il prodotto corrente <math|AB=0> non ricorda quello iniziale. La richiesta è <math|C=ab=8>.

<strong|1.2. Il maggiore.> Chiamiamo <math|x,y> gli ingressi e <math|r> il risultato. Le lettere di specifica <math|a,b> ricordano i valori iniziali. La precondizione è <math|x=a∧y=b>, con <math|a,b∈ℤ>.

Alla fine vogliamo conservare <math|x=a∧y=b> e ottenere

<\equation*>
r≥a∧r≥b∧(r=a∨r=b).
</equation*>

Le disuguaglianze da sole ammetterebbero numeri troppo grandi. L’ultima condizione richiede che <math|r> sia uno dei due ingressi: insieme, le tre condizioni dicono che è il massimo.

La specifica dice che cosa ottenere, ma non sceglie ancora il confronto e gli assegnamenti che lo produrranno.

<section|Capitolo 2 — Calcolo proposizionale>

<strong|2.1. Uscire senza pioggia.> «Esco solo se non piove» è <math|e⇒¬p>: uscire richiede che non piova. «Se non piove, esco» è invece <math|¬p⇒e>: non piovere basterebbe per uscire.

Scegliamo <math|p> falsa ed <math|e> falsa: non piove e resto a casa. La prima formula è vera, la seconda falsa. Questo controesempio mostra che la prima non implica la seconda.

<strong|2.2. Semplificare e seguire i segni.> Distribuiamo per avvicinare <math|P> e la sua negazione:

<\equation*>
P∧(¬P∨Q)≡(P∧¬P)∨(P∧Q)≡F∨(P∧Q)≡P∧Q.
</equation*>

I passi usano distributività, contraddizione e unità.

In <math|¬(P⇒Q)∧R>, il percorso verso <math|P> attraversa la negazione e l’antecedente: due inversioni, quindi segno positivo. Per <math|Q> attraversiamo soltanto la negazione: segno negativo. Per <math|R> non ci sono inversioni: segno positivo.

La riscrittura <math|(P∧¬Q)∧R> conferma i tre segni.

<section|Capitolo 3 — Individui e formule>

<strong|3.1. Sostituire senza catturare.> In <math|(∀x.p(x,y))∧(∃y.q(x,y))>, la <math|x> dentro <math|p> è legata e la <math|y> è libera. Dentro <math|q> accade il contrario: <math|x> è libera e <math|y> legata.

Vogliamo sostituire <math|y> alla sola <math|x> libera. Prima rinominiamo il quantificatore esistenziale in <math|∃z>: altrimenti la <math|y> inserita verrebbe catturata. Poi sostituiamo e otteniamo

<\equation*>
(∀x.p(x,y))∧(∃z.q(y,z)).
</equation*>

La prima parte resta invariata, perché non contiene una <math|x> libera. Le due <math|y> rimaste sono libere: <math|∃z> non le lega.

<strong|3.2. Una proprietà generale e un unico testimone.> Con <math|s(n)=n+1> scriviamo

<\equation*>
∀x.(<math-up|pari>(x)⇒<math-up|pari>(s(s(x)))).
</equation*>

<math|s(s(x))> indica un numero ed è un termine; l’intera scrittura esprime una proprietà ed è una formula chiusa.

Per dire «esattamente un elemento soddisfa <math|p>» usiamo

<\equation*>
∃x.(p(x)∧∀y.(p(y)⇒y=x)).
</equation*>

La parte <math|p(x)> garantisce un testimone. L’universale dice che ogni altro testimone coincide con esso: l’uguaglianza garantisce l’unicità.

<section|Capitolo 4 — Semantica e quantificatori>

<strong|4.1. Trovare un controesempio.> Neghiamo prima l’universale, poi l’implicazione:

<\equation*>
¬(∀x.(p(x)⇒∃y.q(x,y)))≡∃x.(p(x)∧¬(∃y.q(x,y))).
</equation*>

Un secondo De Morgan porta la negazione fino agli atomi:

<\equation*>
∃x.(p(x)∧∀y.¬q(x,y)).
</equation*>

Dobbiamo trovare un individuo con proprietà <math|p> per cui la relazione <math|q> fallisca con tutti gli individui <math|y>. Non basta una sola coppia per cui <math|q> è falsa.

<strong|4.2. Cambiare il testimone o sceglierne uno solo.> <math|∀x.∃y.R(x,y)> è vera: per <math|x=a> scegliamo <math|y=b>; per <math|x=b> scegliamo <math|y=a>.

<math|∃y.∀x.R(x,y)> è falsa. Il candidato <math|y=a> fallisce per <math|x=a>; il candidato <math|y=b> fallisce per <math|x=b>. Ogni elemento ha un compagno, ma nessuno è compagno di tutti.

Per la generalizzazione scegliamo sui naturali <math|P(x)>: «<math|x> è pari» e una costante <math|d> che indica 2. <math|P(d)> è vera, ma <math|∀x.P(x)> è falsa per 1. Quel nome aveva una proprietà particolare: non rappresentava un individuo generico.

<section|Capitolo 5 — Stati, espressioni e comandi>

<strong|5.1. Scambiare con somme e differenze.> Da <math|(x,y)=(3,7)> i tre comandi producono, nell’ordine, <math|(10,7)>, <math|(10,3)> e <math|(7,3)>.

Usiamo ora gli ingressi generici <math|A,B>. Dopo il primo comando abbiamo <math|(A+B,B)>. Il secondo legge il nuovo <math|x> e calcola <math|(A+B)-B=A>: otteniamo <math|(A+B,A)>.

Il terzo calcola <math|(A+B)-A=B>, quindi lo stato finale è <math|(B,A)>. Abbiamo provato lo scambio per tutti gli interi matematici. Con interi rappresentati da un numero limitato di cifre dovremmo controllare anche se la somma è rappresentabile.

<strong|5.2. Diminuire non basta.> Da 4 otteniamo <math|4,2,0>: dopo due giri la guardia è falsa. Da 5 otteniamo invece <math|5,3,1,-1,-3,…>.

Sottrarre 2 conserva la parità: nel secondo caso ogni valore rimane dispari e non può essere zero. La guardia resta vera e il ciclo non termina. Una variabile può diminuire senza raggiungere il valore richiesto per uscire.

<section|Capitolo 6 — Triple di Hoare e invarianti>

<strong|6.1. Risalire attraverso un assegnamento.> Il valore finale di <math|y> sarà <math|2x>. Sostituendolo nella postcondizione <math|y›10> otteniamo <math|2x›10>, cioè <math|x›5>.

La moltiplicazione è sempre definita. Poiché <math|x> è intero, la condizione equivale a <math|x≥6>. L’ipotesi proposta basta dunque per l’assioma dell’assegnamento, su tutti gli ingressi ammessi.

<strong|6.2. Una divisione che fallisce sempre.> Prima di <tt|y := z div x> serve <math|x≠0> per la definitezza, oltre alla postcondizione <math|z›4>, che l’assegnamento non cambia.

Risalendo attraverso <tt|x := 0>, sostituiamo 0 a <math|x> e otteniamo

<\equation*>
0≠0∧z›4.
</equation*>

La richiesta è falsa in ogni stato: nessun ingresso può rendere questa esecuzione corretta in senso totale. La precondizione data è invece soddisfatta da uno stato con <math|z=5,x=3>: da quello stato il comando tenta comunque di dividere per zero.

<section|Capitolo 7 — Correttezza totale>

<strong|7.1. Un contatore che raggiunge n.> Scegliamo <math|t=n-i>. Dall’invariante segue <math|i≤n>, quindi <math|t≥0>.

Se prima del corpo <math|n-i=V>, dopo l’incremento vale <math|n-(i+1)=V-1‹V>. Inoltre <math|i‹n> e il fatto che i valori siano interi danno <math|i+1≤n>: l’invariante si conserva.

Guardia e corpo sono sempre definiti e il singolo incremento termina. Il ciclo termina; all’uscita <math|i≥n> e l’invariante <math|i≤n> danno <math|i=n>.

<strong|7.2. Aggiungere dopo l’incremento.> Ora il corpo aumenta prima <math|x> e poi aggiunge il valore nuovo. L’invariante adatto è

<\equation*>
I≡s=<big|sum><rsub|j=1><rsup|x>j∧0≤x≤n.
</equation*>

All’inizio la somma è vuota e vale zero. Se prima <math|x=k>, il corpo porta <math|x> a <math|k+1> e aggiunge proprio <math|k+1> a una somma che arriva a <math|k>. Si ristabilisce la stessa proprietà con il nuovo contatore.

La funzione di terminazione resta <math|n-x>. All’uscita <math|x=n>, quindi abbiamo sommato da 1 a <math|n>. Per <math|n=0> la somma è vuota: il risultato è zero senza eseguire il corpo.

<section|Capitolo 8 — Costruire un ciclo>

<strong|8.1. Compensare una modifica.> Dopo <tt|x := x-p>, il termine <math|xy> ha perso <math|py>. Possiamo compensare aumentando <math|q> di <math|y>, così <math|pq> guadagna proprio <math|py>. Scegliamo <math|E=q+y>.

In termini dei valori precedenti ai due comandi:

<\equation*>
(x-p)y+p(q+y)=xy-py+pq+py=xy+pq=n.
</equation*>

L’espressione <math|q+y> non legge <math|x>, quindi il primo comando non la cambia. Per <math|p=0> la conservazione non impone un nuovo valore particolare a <math|q>, ma la scelta funziona comunque. Tutte le espressioni sono definite sugli interi.

<strong|8.2. Fibonacci includendo zero.> Mettiamo il risultato in <tt|y>. Inizializziamo <tt|x := 1; i := 0; y := 0> e scegliamo

<\equation*>
I≡x=<math-up|fib>(i+1)∧y=<math-up|fib>(i)∧0≤i≤k.
</equation*>

Ora entrambi gli indici della successione sono non negativi, anche all’inizio. Il corpo resta <tt|temp := x; x := x+y; y := temp; i := i+1>.

Dopo gli assegnamenti, <math|x> contiene <math|<math-up|fib>(i+2)> e <math|y> contiene <math|<math-up|fib>(i+1)>, dove <math|i> indica il vecchio contatore. Con il nuovo indice <math|i'=i+1> ritroviamo esattamente l’invariante.

Sotto la guardia <math|i≠k>, i limiti danno <math|i‹k>, quindi l’incremento non supera <math|k>. La funzione <math|k-i> prova la terminazione. All’uscita <math|i=k> e <math|y=<math-up|fib>(k)>.

Per <math|k=0> la guardia è subito falsa e <math|y=0>: anche questo caso è incluso.

<section|Capitolo 9 — Array>

<strong|9.1. Valutare prima di aggiornare.> Nell’indice, <tt|v[0]> vale 2. A destra leggiamo le posizioni 0 e 1 e otteniamo <math|2+1=3>. Gli indici usati sono 0, 1 e 2, tutti validi.

Cambiamo soltanto la posizione 2: il nuovo array è <math|[2,1,3,6]>. Il comando successivo legge <tt|v[2]>, ora uguale a 3, e scrive in posizione 3. È quindi definito e lascia <math|[2,1,3,0]>.

Se eseguissimo il secondo comando per primo, leggerebbe 10 in posizione 2 e tenterebbe di scrivere fuori dall’array. L’ordine dei comandi può cambiare anche la definitezza degli accessi.

<strong|9.2. Contare i negativi.> Usiamo <math|c> per il numero di negativi incontrati. Il programma è:

<\verbatim>
x := 0; c := 0;<no-page-break>

while x != n do<no-page-break>

<hspace|2.100em>if a[x] ‹ 0 then c := c + 1 else skip fi;<no-page-break>

<hspace|2.100em>x := x + 1<no-page-break>

endw
</verbatim>

L’invariante richiede <math|0≤x≤n> e dice che <math|c> conta gli indici <math|i∈[0,x)> con <math|a[i]‹0>. All’inizio il prefisso è vuoto e <math|c=0>.

Sotto la guardia abbiamo <math|0≤x‹n>, quindi la lettura è valida. Se il nuovo elemento è negativo, aumentiamo <math|c> di uno; altrimenti lo lasciamo invariato. Dopo l’incremento di <math|x>, il prefisso comprende esattamente una posizione in più: quella appena esaminata.

La quantità <math|n-x> è non negativa e diminuisce di 1. Il corpo termina con successo, quindi il ciclo termina. All’uscita <math|x=n> e <math|c> conta i negativi dell’intero array.

Se <math|n=0>, il risultato è già <math|c=0> e non si legge alcuna posizione.
