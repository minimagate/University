<chapter|Triple di Hoare e invarianti dei cicli>

<\inbreve>
Come possiamo garantire il risultato per tutti gli ingressi ammessi? Sappiamo descrivere uno stato con una formula e seguire l’esecuzione dei comandi. Le triple di Hoare collegano ciò che chiediamo prima del programma a ciò che vogliamo sapere dopo.
</inbreve>

Con <math|x=17,y=5> possiamo seguire una divisione fino a ottenere quoziente 3 e resto 2. Per usare il programma su altri dati vogliamo di più: una prova che copra tutti gli ingressi ammessi.

<section|Precondizione, postcondizione e correttezza>

Un’<strong|asserzione> è una formula sulle variabili del programma. Scriviamo <math|σ⊨P> per dire che <math|P> è vera nello stato <math|σ>.

Per esempio, con <math|σ(x)=18> e <math|σ(z)=-8>, la formula <math|x›0∧z‹0> diventa <math|18›0∧-8‹0> ed è vera. Indichiamo con <math|P<rsup|σ>> la formula valutata usando i valori dello stato.

La verità dipende soltanto dalle variabili libere di <math|P>: cambiare un’altra variabile non può modificarla. Allo stesso modo, il valore di un’espressione dipende soltanto dai nomi che essa legge.

<\concetto|Tripla di Hoare>
La tripla <math|{P}<space|0.5em>C<space|0.5em>{Q}> collega una <strong|precondizione> <math|P>, un comando <math|C> e una <strong|postcondizione> <math|Q>.

In <strong|correttezza totale>, ogni esecuzione da uno stato che soddisfa <math|P> termina con successo e soddisfa <math|Q> all’uscita.

In <strong|correttezza parziale>, da uno stato che soddisfa <math|P>, ogni esecuzione che arriva a uno stato finale soddisfa <math|Q>.
</concetto>

La seconda nozione non garantisce che uno stato finale esista. Nella convenzione semantica qui adottata, errori ed esecuzioni infinite non producono uno stato finale: una prova soltanto parziale non esclude neppure gli errori. Manteniamo quindi espliciti i controlli di definitezza quando vogliamo un'esecuzione con successo. Scriveremo <math|⊨<rsub|tot>> oppure <math|⊨<rsub|par>> se occorre distinguere le due letture.

La tripla <math|{x›1}<space|0.5em><text|x := x + 1><space|0.5em>{x›2}> è totalmente corretta: il nuovo valore è il precedente più uno, quindi supera 2. La tripla <math|{x=5}<space|0.5em><text|x := x + 1><space|0.5em>{x=5}> è falsa: l'unico valore finale possibile di <math|x> è 6.

Possiamo usare una tripla per descrivere un comando, cercando <math|Q>; per costruire un programma, cercando <math|C>; oppure per verificare una proposta, avendo già tutti e tre gli elementi. 

<subsection|Il valore finale e quello iniziale>

Una postcondizione va letta nello stato finale. Così <math|{x›0}<space|0.5em>C<space|0.5em>{y=2x}> ammette anche <tt|y := 10; x := 5>.

Se desideriamo il doppio dell'ingresso, dobbiamo fissarlo con una variabile di specifica: <math|{x=A∧A›0}<space|0.5em>C<space|0.5em>{y=2A}>. La lettera <math|A> resta fissata durante la prova e non compare nei comandi.

<section|Conseguenza e definitezza delle espressioni>

Se un programma funziona su tutti gli stati con <math|x›0>, funziona anche su quelli con <math|x›10>, che sono meno. È il <strong|rafforzamento della precondizione>. 

Se garantisce <math|x=5>, garantisce anche <math|x›0>, che chiede meno: è l'<strong|indebolimento della postcondizione>. La regola di conseguenza riunisce queste osservazioni:

<\equation*>
<frac|P⇒P'<space|1em>{P'} C {Q'}<space|1em>Q'⇒Q|{P} C {Q}>.
</equation*>

Le implicazioni sono richieste per tutti gli stati considerati. In termini di insiemi, gli stati di <math|P> sono contenuti in quelli di <math|P'>; gli stati di <math|Q'> sono contenuti in quelli di <math|Q>. Non possiamo allargare arbitrariamente gli ingressi o pretendere conclusioni più forti.

<figura|@IMG(pre-post)|Una precondizione più forte restringe i punti di partenza; una postcondizione più debole amplia i risultati ammessi.>

Per garantire che un'espressione <math|E> abbia valore introduciamo l'asserzione <math|<math-up|def>(E)>. Le costanti e le variabili presenti nello stato sono definite. Per somme, prodotti, differenze, confronti e operatori booleani occorre che siano definiti gli argomenti. Per divisione e resto occorre anche il divisore non nullo:

<\equation*>
<math-up|def>(E<space|0.3em><math-up|div><space|0.3em>D)
≡<math-up|def>(E)∧<math-up|def>(D)∧D≠0.
</equation*>

La stessa clausola vale per <tt|mod>. Per negazione e parentesi basta la definitezza dell'espressione interna. Per esempio, <math|<math-up|def>(x<space|0.3em><math-up|div><space|0.3em>(z-y))> equivale a <math|z≠y>: la sottrazione è definita, ma il suo risultato non deve essere zero. Con valutazione senza cortocircuito, <tt|x ≠ 0 and y div x › 1> richiede comunque <math|x≠0> per essere definita.

<section|Assegnamento: ragionare a partire dal risultato>

Vogliamo garantire <math|x›y> dopo <tt|x := x + 2>. Il valore finale di <math|x> sarà il vecchio <math|x+2>. Dobbiamo dunque chiedere, prima, <math|x+2›y>. Non stiamo sostituendo il programma con una formula: stiamo descrivendo la condizione che il suo risultato deve soddisfare.

In generale <math|Q[E/x]> sostituisce <math|E> alle occorrenze libere di <math|x> in <math|Q>, senza catturare variabili. Rinominiamo prima eventuali variabili quantificate che ostacolano la sostituzione. Se <math|E> è definita, vale la proprietà fondamentale:

<\equation*>
σ[ℰ(E,σ)/x]⊨Q<text| se e solo se >σ⊨Q[E/x].
</equation*>

A sinistra valutiamo <math|Q> dopo l'aggiornamento; a destra anticipiamo nella formula il valore che verrà assegnato. Questa proprietà giustifica l'assioma dell'assegnamento:

<\equation*>
{<math-up|def>(E)∧Q[E/x]}<space|0.6em><text|x := E><space|0.6em>{Q}.
</equation*>

La definitezza assicura che il comando produca uno stato; la sostituzione assicura che quel risultato soddisfi <math|Q>.

Se abbiamo già una precondizione <math|P>, dobbiamo dimostrare <math|P⇒<math-up|def>(E)∧Q[E/x]>. La regola di conseguenza permette poi di usare <math|P> come ingresso.

Per <tt|x := 5> e postcondizione <math|x=5>, la sostituzione dà <math|5=5>, sempre vera. Non serve alcuna richiesta sul vecchio valore di <math|x>.

Per <tt|x := 1 div y>, invece, serve <math|y≠0> anche se la postcondizione non legge <math|x>: in correttezza totale dobbiamo comunque escludere l’errore.

Il comando <tt|skip> ha l'assioma <math|{P}<space|0.5em><text|skip><space|0.5em>{P}>: nessun valore cambia, quindi ogni asserzione vera prima resta vera dopo.

<section|Sequenza: trovare l'asserzione intermedia>

Per provare <math|{P}<space|0.5em>C;D<space|0.5em>{Q}> cerchiamo un'asserzione <math|R> tale che <math|{P} C {R}> e <math|{R} D {Q}>. Il primo comando consegna al secondo uno stato nelle condizioni che gli servono. È la regola della sequenza.

Riprendiamo lo scambio, con <math|x=N∧y=M> all’ingresso e <math|x=M∧y=N> all’uscita. Il programma ha la forma <tt|t := E; x := y; y := t>. Quale valore deve salvare il primo comando?

Partiamo dall’ultimo assegnamento. Dopo <tt|y := t> vogliamo <math|y=N>, quindi prima ci serve <math|t=N>. La richiesta su <math|x> resta la stessa, perché il comando non lo cambia.

Risaliamo poi attraverso <tt|x := y>. Per ottenere <math|x=M> dopo questo passo, prima deve valere <math|y=M>. Le condizioni prima dei tre comandi sono dunque:

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.7em>|<cwith|1|-1|1|-1|cell-rsep|0.7em>|<table|<row|<cell|<text|Comando>>|<cell|<text|Condizione prima del comando>>>|<row|<cell|<text|y := t>>|<cell|x=M∧t=N>>|<row|<cell|<text|x := y>>|<cell|y=M∧t=N>>|<row|<cell|<text|t := E>>|<cell|y=M∧E=N>>>>>
</equation*>

Il primo comando deve anche avere un’espressione definita. L’ingresso offre <math|x=N>: scegliamo <math|E=x>. Leggiamo la variabile di programma <tt|x>; <math|N> serve soltanto alla prova e non può comparire nei comandi.

Con <math|N=3,M=7> l’esecuzione va da <math|(x,y)=(3,7)> a <math|(7,3)>, passando per <math|t=3>. L’esecuzione procede dall’alto verso il basso nel programma; la ricerca delle condizioni è partita invece dall’ultimo comando.

Un esempio più breve è <tt|x := x + 1; y := y - 1>, con risultato <math|x›y>. Prima dell'ultimo comando serve <math|x›y-1>; prima del primo serve <math|x+1›y-1>. La precondizione <math|x≥y-1> è sufficiente, perché dà <math|x+1≥y›y-1>. La regola non esige che la precondizione data sia esattamente quella calcolata: basta che la implichi.

<section|Condizionale: utilizzare l'informazione della guardia>

Per verificare <tt|if E then C else D fi> con ingresso <math|P> e uscita <math|Q> controlliamo che <math|P⇒<math-up|def>(E)>. Poi dimostriamo <math|{P∧E} C {Q}> e <math|{P∧¬E} D {Q}>. Ogni ramo riceve l'informazione che ha determinato la scelta.

Vogliamo che <math|m> contenga il massimo di <math|x,y>. Usiamo

<\verbatim>
if x ‹ y then m := y else m := x fi
</verbatim>

La guardia è definita. Nel primo ramo sappiamo <math|x‹y>: assegnare <math|y> a <math|m> dà il massimo. Nel secondo sappiamo <math|x≥y>: assegnare <math|x> dà ancora il massimo.

Non serve conoscere il vecchio valore di <math|m>, perché entrambi i rami lo sostituiscono.

<subsection|Una guardia che richiede una divisione>

Consideriamo una scelta che usa la divisione:

<\verbatim>
if x div y › 0 then m := x else m := y fi
</verbatim>

L’ipotesi <math|x≥0∧y≥0> non basta: permette <math|y=0>, con cui la guardia non ha valore. Chiediamo invece <math|x≥0∧y›0>.

Con questi vincoli, <math|x<space|0.3em><math-up|div><space|0.3em>y›0> equivale a <math|x≥y>. Nel ramo vero scegliamo quindi il massimo <math|x>; nel ramo falso scegliamo il massimo <math|y>.

L’ipotesi sul divisore ha due ruoli: rende possibile la valutazione e permette di leggere correttamente il confronto.

<section|Invariante e correttezza parziale del while>

Passiamo alla divisione mediante sottrazioni, con <math|x≥0>, <math|y›0> e <math|x,y> non modificati:

<\verbatim>
q := 0; r := x;<no-page-break>

while r ›= y do<no-page-break>

<hspace|2.100em>q := q + 1;<no-page-break>

<hspace|2.100em>r := r - y<no-page-break>

endw
</verbatim>

Da <math|x=17,y=5> otteniamo ai controlli le coppie <math|(q,r)=(0,17),(1,12),(2,7),(3,2)>. Che cosa collega queste righe? Ogni volta aumenta di 5 la quantità <math|qy> e diminuisce di 5 il resto <math|r>. Si conserva <math|x=qy+r>. 

Inoltre <math|r≥0>: il corpo sottrae <math|y> solo quando <math|r≥y>.

Scegliamo perciò <math|I≡(x=qy+r∧r≥0∧y›0)>. È un <strong|invariante>: vale dopo l'inizializzazione e viene ripristinato dopo ogni intera esecuzione del corpo. 

Dopo il solo incremento di <math|q> l'uguaglianza può essere falsa; torna vera dopo la sottrazione da <math|r>. Il punto in cui la richiediamo è il controllo della guardia.

<figura|@IMG(invariante)|La proprietà deve valere prima del controllo e dopo l'intero corpo. All'uscita aggiungiamo l'informazione che la guardia è falsa.>

<subsection|Perché l’invariante vale anche all’uscita>

La regola generale, in correttezza parziale, è

<\equation*>
<frac|{I∧E}<space|0.4em>C<space|0.4em>{I}|{I}<space|0.4em><text|while E do C endw><space|0.4em>{I∧¬E}>.
</equation*>

Perché funziona? Prima della prima iterazione vale <math|I>. Se vale prima di un giro eseguito, è vera anche <math|E> e la premessa ripristina <math|I>. Ripetendo questo ragionamento per il numero di giri effettivamente completati, <math|I> vale a ogni controllo raggiunto.

Se il ciclo produce uno stato finale, in quello stato la guardia è falsa: otteniamo <math|I∧¬E>. È un ragionamento per induzione sul numero di iterazioni, senza dover conoscere quel numero in anticipo.

Per una specifica generale servono anche ingresso e uscita: <math|P⇒I> e <math|I∧¬E⇒Q>. Nella divisione la guardia falsa dà <math|r‹y>; insieme all'invariante otteniamo <math|x=qy+r∧0≤r‹y>. La prova descrive il risultato di ogni esecuzione che arriva all'uscita. Nel prossimo capitolo dimostriamo che quell'uscita viene raggiunta con successo.

<\verifica|6>
<strong|1.> Calcola una precondizione che garantisca <math|y›10> dopo <tt|y := x * 2>. Verifica poi se <math|x≥6> è sufficiente. Motiva con l'assioma, senza limitarti a provare alcuni valori.

<strong|2.> La precondizione <math|z=5∧x=3> garantisce <math|z›4> dopo <tt|x := 0; y := z div x> in correttezza totale? Calcola all'indietro il controllo di definitezza e spiega la risposta.
</verifica>
