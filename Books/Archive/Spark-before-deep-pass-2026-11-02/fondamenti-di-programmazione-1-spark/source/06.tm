<chapter|Triple di Hoare e invarianti dei cicli>

Una traccia descrive ciò che accade su un dato iniziale. Ora vogliamo una garanzia: da ogni stato ammesso dalla specifica, il programma deve produrre il risultato richiesto. La logica dei capitoli precedenti ci permette di descrivere insiemi di stati; le regole di Hoare collegano queste descrizioni ai comandi.

<section|Precondizione, postcondizione e correttezza>

Un'asserzione è una formula interpretata nello stato del programma. Scriviamo <math|σ⊨P> quando <math|P> è vera nello stato <math|σ>. Con <math|σ(x)=18> e <math|σ(z)=-8>, per esempio, <math|σ⊨x›0∧z‹0>, perché l'istanza <math|18›0∧-8‹0> è vera. La notazione <math|P<rsup|σ>> indica proprio questa istanza. La verità dipende solo dalle variabili libere di <math|P>: cambiare una variabile che <math|P> non legge non può cambiarne la verità. Analogamente il valore di un'espressione dipende solo dagli identificatori che essa legge.

<\concetto|Tripla di Hoare>
La tripla <math|{P}<space|0.5em>C<space|0.5em>{Q}> ha precondizione <math|P>, comando <math|C> e postcondizione <math|Q>. In <strong|correttezza totale>, da ogni stato che soddisfa <math|P> il comando termina con successo in uno stato che soddisfa <math|Q>. In <strong|correttezza parziale>, si richiede soltanto che ogni esecuzione che produce uno stato finale soddisfi <math|Q>.
</concetto>

La seconda nozione non garantisce che uno stato finale esista. Nella convenzione semantica qui adottata, errori ed esecuzioni infinite non producono uno stato finale: una prova soltanto parziale non esclude neppure gli errori. Manteniamo quindi espliciti i controlli di definitezza quando vogliamo un'esecuzione con successo. Scriveremo <math|⊨<rsub|tot>> oppure <math|⊨<rsub|par>> se occorre distinguere le due letture.

La tripla <math|{x›1}<space|0.5em><text|x := x + 1><space|0.5em>{x›2}> è totalmente corretta: il nuovo valore è il precedente più uno, quindi supera 2. La tripla <math|{x=5}<space|0.5em><text|x := x + 1><space|0.5em>{x=5}> è falsa: l'unico valore finale possibile di <math|x> è 6.

Possiamo usare una tripla per descrivere un comando, cercando <math|Q>; per costruire un programma, cercando <math|C>; oppure per verificare una proposta, avendo già tutti e tre gli elementi. Una postcondizione va letta nello stato finale. Così <math|{x›0}<space|0.5em>C<space|0.5em>{y=2x}> ammette anche <tt|y := 10; x := 5>. Se desideriamo il doppio dell'ingresso, dobbiamo fissarlo con una variabile di specifica: <math|{x=A∧A›0}<space|0.5em>C<space|0.5em>{y=2A}>. La lettera <math|A> resta fissata durante la prova e non compare nei comandi.

<section|Conseguenza e definitezza delle espressioni>

Se un programma funziona su tutti gli stati con <math|x›0>, funziona anche su quelli con <math|x›10>, che sono meno. È il <strong|rafforzamento della precondizione>. Se garantisce <math|x=5>, garantisce anche <math|x›0>, che chiede meno: è l'<strong|indebolimento della postcondizione>. La regola di conseguenza riunisce queste osservazioni:

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

La definitezza garantisce che il comando produca uno stato; la sostituzione garantisce che quello stato soddisfi <math|Q>. Se abbiamo una precondizione data <math|P>, basta dimostrare <math|P⇒<math-up|def>(E)∧Q[E/x]> e applicare conseguenza. Per <tt|x := 5> e postcondizione <math|x=5>, la richiesta diventa <math|5=5>, sempre vera. Per <tt|x := 1 div y>, anche una postcondizione che non legge <math|x> richiede <math|y≠0> in correttezza totale.

Il comando <tt|skip> ha l'assioma <math|{P}<space|0.5em><text|skip><space|0.5em>{P}>: nessun valore cambia, quindi ogni asserzione vera prima resta vera dopo.

<section|Sequenza: trovare l'asserzione intermedia>

Per provare <math|{P}<space|0.5em>C;D<space|0.5em>{Q}> cerchiamo un'asserzione <math|R> tale che <math|{P} C {R}> e <math|{R} D {Q}>. Il primo comando consegna al secondo uno stato nelle condizioni che gli servono. È la regola della sequenza.

Riprendiamo lo scambio, ora con <math|x=N∧y=M> all'ingresso e <math|x=M∧y=N> all'uscita. Per trovare l'espressione <math|E> in <tt|t := E; x := y; y := t>, partiamo dal risultato desiderato. Prima dell'ultimo comando <tt|y := t> serve <math|x=M∧t=N>. Prima di <tt|x := y> serve quindi <math|y=M∧t=N>. Prima di <tt|t := E> serve <math|y=M∧E=N>, oltre alla definitezza.

L'ingresso dice <math|x=N>: scegliamo dunque <math|E=x>. Il comando deve leggere il valore disponibile in <tt|x>; non può usare <math|N>, che appartiene alla specifica. Abbiamo ricavato il programma e le sue asserzioni intermedie nello stesso ragionamento.

Un esempio più breve è <tt|x := x + 1; y := y - 1>, con risultato <math|x›y>. Prima dell'ultimo comando serve <math|x›y-1>; prima del primo serve <math|x+1›y-1>. La precondizione <math|x≥y-1> è sufficiente, perché dà <math|x+1≥y›y-1>. La regola non esige che la precondizione data sia esattamente quella calcolata: basta che la implichi.

<section|Condizionale: utilizzare l'informazione della guardia>

Per verificare <tt|if E then C else D fi> con ingresso <math|P> e uscita <math|Q> controlliamo che <math|P⇒<math-up|def>(E)>. Poi dimostriamo <math|{P∧E} C {Q}> e <math|{P∧¬E} D {Q}>. Ogni ramo riceve l'informazione che ha determinato la scelta.

Per <tt|if x ‹ y then m := y else m := x fi> vogliamo <math|m=max(x,y)>. La guardia è sempre definita. Nel primo ramo sappiamo <math|x‹y>, dunque <math|y=max(x,y)>: è la richiesta prodotta dall'assegnamento. Nel secondo sappiamo <math|x≥y>, dunque <math|x=max(x,y)>. Non occorre alcuna ipotesi sul vecchio valore di <math|m>, perché entrambi i rami lo sovrascrivono.

Consideriamo ora <tt|if x div y › 0 then m := x else m := y fi>. L'ipotesi <math|x≥0∧y≥0> non basta: ammette <math|y=0>. Rafforzandola a <math|x≥0∧y›0>, la guardia è definita e la divisione intera dà <math|x<space|0.3em><math-up|div><space|0.3em>y›0> esattamente quando <math|x≥y>. Nel ramo vero scegliamo quindi <math|x>, nel ramo falso <math|y>: in entrambi i casi assegniamo il massimo. L'ipotesi positiva sul divisore serve sia alla sicurezza sia all'interpretazione del test.

<section|Invariante e correttezza parziale del while>

Passiamo alla divisione mediante sottrazioni, con <math|x≥0>, <math|y›0> e <math|x,y> non modificati:

<\verbatim>
q := 0; r := x;<no-page-break>

while r ›= y do<no-page-break>

<hspace|2.100em>q := q + 1;<no-page-break>

<hspace|2.100em>r := r - y<no-page-break>

endw
</verbatim>

Da <math|x=17,y=5> otteniamo ai controlli le coppie <math|(q,r)=(0,17),(1,12),(2,7),(3,2)>. Che cosa collega queste righe? Ogni volta aumenta di 5 la quantità <math|qy> e diminuisce di 5 il resto <math|r>. Si conserva <math|x=qy+r>. Inoltre <math|r≥0>: il corpo sottrae <math|y> solo quando <math|r≥y>.

Scegliamo perciò <math|I≡(x=qy+r∧r≥0∧y›0)>. È un <strong|invariante>: vale dopo l'inizializzazione e viene ripristinato dopo ogni intera esecuzione del corpo. Dopo il solo incremento di <math|q> l'uguaglianza può essere falsa; torna vera dopo la sottrazione da <math|r>. Il punto in cui la richiediamo è il controllo della guardia.

<figura|@IMG(invariante)|La proprietà deve valere prima del controllo e dopo l'intero corpo. All'uscita aggiungiamo l'informazione che la guardia è falsa.>

La regola generale, in correttezza parziale, è

<\equation*>
<frac|{I∧E}<space|0.4em>C<space|0.4em>{I}|{I}<space|0.4em><text|while E do C endw><space|0.4em>{I∧¬E}>.
</equation*>

Perché funziona? Prima della prima iterazione vale <math|I>. Se vale prima di un giro eseguito, è vera anche <math|E> e la premessa ripristina <math|I>. Ripetendo questo ragionamento per il numero di giri effettivamente completati, <math|I> vale a ogni controllo raggiunto. Se il ciclo produce uno stato finale, in quello stato la guardia è falsa: otteniamo <math|I∧¬E>. È un ragionamento per induzione sul numero di iterazioni, senza dover conoscere quel numero in anticipo.

Per una specifica generale servono anche ingresso e uscita: <math|P⇒I> e <math|I∧¬E⇒Q>. Nella divisione la guardia falsa dà <math|r‹y>; insieme all'invariante otteniamo <math|x=qy+r∧0≤r‹y>. La prova descrive il risultato di ogni esecuzione che arriva all'uscita. Nel prossimo capitolo dimostriamo che quell'uscita viene raggiunta con successo.

<\verifica|6>
<strong|1.> Calcola una precondizione che garantisca <math|y›10> dopo <tt|y := x * 2>. Verifica poi se <math|x≥6> è sufficiente. Motiva con l'assioma, senza limitarti a provare alcuni valori.

<strong|2.> La precondizione <math|z=5∧x=3> garantisce <math|z›4> dopo <tt|x := 0; y := z div x> in correttezza totale? Calcola all'indietro il controllo di definitezza e spiega la risposta.
</verifica>
