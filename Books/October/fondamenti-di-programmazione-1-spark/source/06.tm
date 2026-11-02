<chapter|Triple di Hoare e invarianti dei cicli>

<\inbreve>
Seguire un programma su un esempio ci convince, ma non ci garantisce nulla sugli altri ingressi. Le triple di Hoare permettono di fare il salto, collegando con una formula ciò che chiediamo prima del programma a ciò che vogliamo ottenere dopo. In questo capitolo vedremo le regole per ciascun comando, scoprendo che conviene spesso ragionare all'indietro, e arriveremo all'invariante, lo strumento che rende possibile ragionare sui cicli.
</inbreve>

Con <math|x=17> e <math|y=5> possiamo seguire una divisione passo per passo e ottenere quoziente 3 e resto 2. Ma un programma serve perché lo useremo su dati che non abbiamo provato, e per fidarci di lui vogliamo qualcosa di più di un esempio, cioè una prova che copra tutti gli ingressi ammessi.

<section|Precondizione, postcondizione e correttezza>

Un'<strong|asserzione> è una formula che parla delle variabili del programma, e scriviamo <math|σ⊨P> per dire che <math|P> è vera nello stato <math|σ>. Se per esempio <math|σ(x)=18> e <math|σ(z)=-8>, la formula <math|x›0∧z‹0> diventa <math|18›0∧-8‹0>, che è vera. La formula ottenuta mettendo al posto delle variabili i valori dello stato si indica con <math|P<rsup|σ>>.

Il valore di verità di un'asserzione dipende soltanto dalle sue variabili libere, quindi cambiare un'altra variabile non può modificarlo. Lo stesso vale per le espressioni, il cui valore dipende soltanto dai nomi che leggono. Con le asserzioni possiamo ora scrivere che cosa promette un programma.

<\concetto|Tripla di Hoare>
La tripla <math|{P}<space|0.5em>C<space|0.5em>{Q}> collega una <strong|precondizione> <math|P>, un comando <math|C> e una <strong|postcondizione> <math|Q>.

In <strong|correttezza totale>, ogni esecuzione da uno stato che soddisfa <math|P> termina con successo e soddisfa <math|Q> all'uscita.

In <strong|correttezza parziale>, da uno stato che soddisfa <math|P>, ogni esecuzione che arriva a uno stato finale soddisfa <math|Q>.
</concetto>

La correttezza parziale è una promessa più debole, perché non garantisce che uno stato finale esista. Nella convenzione che adottiamo, né un errore né un'esecuzione infinita producono uno stato finale, e quindi una prova soltanto parziale non esclude nemmeno gli errori. Per questo, quando vogliamo un'esecuzione che vada a buon fine, controlleremo sempre esplicitamente che le espressioni abbiano un valore. Se serve distinguere le due letture scriveremo <math|⊨<rsub|tot>> oppure <math|⊨<rsub|par>>.

Due esempi aiutano a fissare le idee. La tripla <math|{x›1}<space|0.5em><text|x := x + 1><space|0.5em>{x›2}> è totalmente corretta, perché il nuovo valore di <math|x> è il vecchio più uno e quindi supera 2. La tripla <math|{x=5}<space|0.5em><text|x := x + 1><space|0.5em>{x=5}> è invece falsa, perché l'unico valore finale possibile di <math|x> è 6.

Una tripla si può usare in tre modi. Possiamo cercare <math|Q> per descrivere che cosa fa un comando, cercare <math|C> per costruire un programma che soddisfi una richiesta, oppure avere già tutti e tre gli elementi e verificare che la proposta funzioni.

<subsection|Il valore finale e quello iniziale>

Una postcondizione si legge sempre nello stato finale, e questo può giocare brutti scherzi. La specifica <math|{x›0}<space|0.5em>C<space|0.5em>{y=2x}> sembra chiedere il doppio dell'ingresso, ma è soddisfatta anche dal programma <tt|y := 10; x := 5>, che cambia <math|x> a piacere.

Se vogliamo davvero il doppio del valore iniziale, dobbiamo fissarlo con una variabile di specifica e scrivere <math|{x=A∧A›0}<space|0.5em>C<space|0.5em>{y=2A}>. La lettera <math|A> non compare nei comandi e resta la stessa per tutta la prova, quindi ricorda il valore di partenza anche se il programma modifica <math|x>.

<section|Conseguenza e definitezza delle espressioni>

Se un programma funziona su tutti gli stati con <math|x›0>, funziona in particolare su quelli con <math|x›10>, che sono una parte dei primi. Questo è il <strong|rafforzamento della precondizione>. Allo stesso modo, se un programma garantisce <math|x=5>, garantisce anche <math|x›0>, che è una richiesta più modesta, e si parla di <strong|indebolimento della postcondizione>. La regola di conseguenza riunisce le due osservazioni:

<\equation*>
<frac|P⇒P'<space|1em>{P'} C {Q'}<space|1em>Q'⇒Q|{P} C {Q}>.
</equation*>

Le implicazioni devono valere in tutti gli stati. Pensando agli insiemi di stati, quelli che soddisfano <math|P> sono contenuti in quelli che soddisfano <math|P'>, e quelli che soddisfano <math|Q'> sono contenuti in quelli che soddisfano <math|Q>. La regola permette quindi di restringere gli ingressi e di accontentarsi di conclusioni più deboli, mai il contrario.

<figura|@IMG(pre-post)|Una precondizione più forte restringe i punti di partenza; una postcondizione più debole amplia i risultati ammessi.>

<subsection|Quando un'espressione ha valore>

Per parlare di esecuzioni che vanno a buon fine ci serve un modo di dire che un'espressione <math|E> ha un valore, e lo facciamo con l'asserzione <math|<math-up|def>(E)>. Le costanti e le variabili presenti nello stato sono sempre definite. Somme, prodotti, differenze, confronti e operatori booleani sono definiti quando lo sono i loro argomenti. Per la divisione e il resto serve in più che il divisore non sia nullo,

<\equation*>
<math-up|def>(E<space|0.3em><math-up|div><space|0.3em>D)
≡<math-up|def>(E)∧<math-up|def>(D)∧D≠0,
</equation*>

e la stessa clausola vale per <tt|mod>. Per la negazione e le parentesi basta che sia definita l'espressione interna.

Per esempio, <math|<math-up|def>(x<space|0.3em><math-up|div><space|0.3em>(z-y))> equivale a <math|z≠y>, perché la sottrazione è sempre definita ma il suo risultato non deve essere zero. E siccome i nostri operatori booleani non usano il cortocircuito, l'espressione <tt|x ≠ 0 and y div x › 1> richiede comunque <math|x≠0> per avere un valore, anche se la prima parte sembrerebbe proteggere la seconda.

<section|Assegnamento: ragionare a partire dal risultato>

Supponiamo di voler garantire <math|x›y> dopo il comando <tt|x := x + 2>. Il valore finale di <math|x> sarà il vecchio valore aumentato di 2, quindi prima del comando dobbiamo chiedere che sia <math|x+2›y>. Abbiamo ottenuto la condizione iniziale partendo da quella finale e mettendo al posto di <math|x> il valore che le verrà assegnato.

In generale scriviamo <math|Q[E/x]> per la formula che si ottiene sostituendo <math|E> alle occorrenze libere di <math|x> in <math|Q>, rinominando prima, se serve, le variabili quantificate che causerebbero catture. Quando <math|E> è definita vale una proprietà fondamentale,

<\equation*>
σ[ℰ(E,σ)/x]⊨Q<text| se e solo se >σ⊨Q[E/x].
</equation*>

A sinistra valutiamo <math|Q> dopo l'aggiornamento, a destra anticipiamo nella formula il valore che verrà assegnato, e le due cose coincidono. Da qui nasce l'assioma dell'assegnamento:

<\equation*>
{<math-up|def>(E)∧Q[E/x]}<space|0.6em><text|x := E><space|0.6em>{Q}.
</equation*>

Le due parti della precondizione hanno compiti diversi. La definitezza assicura che il comando produca uno stato, mentre la sostituzione assicura che quello stato soddisfi <math|Q>. Se la precondizione che ci viene data è un'altra formula <math|P>, basta dimostrare <math|P⇒<math-up|def>(E)∧Q[E/x]> e poi usare la regola di conseguenza.

Qualche caso particolare aiuta a prendere confidenza con l'assioma. Per <tt|x := 5> con postcondizione <math|x=5> la sostituzione dà <math|5=5>, che è sempre vera, e quindi non serve chiedere nulla sul vecchio valore di <math|x>. Per <tt|x := 1 div y> serve invece <math|y≠0> anche se la postcondizione non parla di <math|x>, perché in correttezza totale dobbiamo comunque escludere l'errore. Infine il comando <tt|skip> ha l'assioma <math|{P}<space|0.5em><text|skip><space|0.5em>{P}>, dato che non cambia nessun valore e quindi ogni asserzione vera prima rimane vera dopo.

<section|Sequenza: trovare l'asserzione intermedia>

Per dimostrare <math|{P}<space|0.5em>C;D<space|0.5em>{Q}> cerchiamo un'asserzione intermedia <math|R> per cui valgano sia <math|{P} C {R}> sia <math|{R} D {Q}>. In altre parole il primo comando deve consegnare al secondo uno stato che si trova nelle condizioni di cui il secondo ha bisogno. È la regola della sequenza, e il lavoro sta tutto nel trovare <math|R>.

Torniamo allo scambio di due variabili, con ingresso <math|x=N∧y=M> e uscita <math|x=M∧y=N>. Il programma avrà la forma <tt|t := E; x := y; y := t>, e la domanda è quale valore debba mettere da parte il primo comando. Invece di tirare a indovinare, risaliamo dall'ultimo comando.

Dopo <tt|y := t> vogliamo <math|y=N>, quindi prima di quel comando ci serve <math|t=N>, mentre la richiesta su <math|x> rimane la stessa, perché il comando non tocca <math|x>. Risaliamo poi attraverso <tt|x := y>. Per avere <math|x=M> dopo questo passo, prima deve valere <math|y=M>. La tabella riassume le condizioni che troviamo davanti a ciascun comando.

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.7em>|<cwith|1|-1|1|-1|cell-rsep|0.7em>|<table|<row|<cell|<text|Comando>>|<cell|<text|Condizione prima del comando>>>|<row|<cell|<text|y := t>>|<cell|x=M∧t=N>>|<row|<cell|<text|x := y>>|<cell|y=M∧t=N>>|<row|<cell|<text|t := E>>|<cell|y=M∧E=N>>>>>
</equation*>

Resta da scegliere <math|E>, che deve essere definita e valere <math|N>. L'ingresso ci dice che <math|x=N>, quindi scegliamo <math|E=x>. Notiamo che il programma legge la variabile <tt|x>, mentre <math|N> serve soltanto alla prova e non può comparire nei comandi.

Con <math|N=3> e <math|M=7> l'esecuzione va da <math|(x,y)=(3,7)> a <math|(7,3)>, passando per <math|t=3>. È curioso osservare che l'esecuzione procede dall'alto verso il basso, mentre la ricerca delle condizioni è partita dall'ultimo comando e ha risalito il programma.

Un esempio più breve mostra un'altra libertà della regola. Per il programma <tt|x := x + 1; y := y - 1> con risultato <math|x›y>, prima dell'ultimo comando serve <math|x›y-1> e prima del primo serve <math|x+1›y-1>. Se la precondizione data è <math|x≥y-1>, va bene lo stesso, perché implica quella calcolata: da <math|x≥y-1> segue <math|x+1≥y›y-1>. La regola non chiede che la precondizione sia esattamente quella trovata all'indietro, ma soltanto che la implichi.

<section|Condizionale: utilizzare l'informazione della guardia>

Per verificare <tt|if E then C else D fi> con ingresso <math|P> e uscita <math|Q> controlliamo prima che la guardia abbia un valore, cioè che <math|P⇒<math-up|def>(E)>. Poi dimostriamo separatamente i due rami, <math|{P∧E} C {Q}> e <math|{P∧¬E} D {Q}>. Ogni ramo riceve così in regalo l'informazione che ha portato a sceglierlo.

Vogliamo per esempio che <math|m> contenga il massimo fra <math|x> e <math|y>, e proponiamo

<\verbatim>
if x ‹ y then m := y else m := x fi
</verbatim>

La guardia è sempre definita. Nel primo ramo sappiamo che <math|x‹y>, quindi assegnare <math|y> a <math|m> dà il massimo. Nel secondo sappiamo che <math|x≥y>, e assegnare <math|x> dà di nuovo il massimo. Il vecchio valore di <math|m> non conta, perché entrambi i rami lo sostituiscono.

<subsection|Una guardia che richiede una divisione>

La definitezza della guardia diventa interessante quando contiene una divisione, come in

<\verbatim>
if x div y › 0 then m := x else m := y fi
</verbatim>

L'ipotesi <math|x≥0∧y≥0> non basta, perché permette <math|y=0>, e con <math|y=0> la guardia non ha valore. Chiediamo quindi <math|x≥0∧y›0>.

Con questi vincoli la guardia <math|x<space|0.3em><math-up|div><space|0.3em>y›0> equivale a <math|x≥y>, perché il quoziente è almeno 1 esattamente quando <math|y> sta almeno una volta in <math|x>. Nel ramo vero scegliamo quindi il massimo <math|x>, e nel ramo falso il massimo <math|y>. L'ipotesi sul divisore ha dunque due ruoli, perché rende possibile valutare la guardia e ci permette di leggerla come un confronto.

<section|Invariante e correttezza parziale del while>

Arriviamo ai cicli, con la divisione fatta per sottrazioni successive. Supponiamo <math|x≥0> e <math|y›0>, e chiediamo che <math|x> e <math|y> non vengano modificati.

<\verbatim>
q := 0; r := x;<no-page-break>

while r ›= y do<no-page-break>

<hspace|2.100em>q := q + 1;<no-page-break>

<hspace|2.100em>r := r - y<no-page-break>

endw
</verbatim>

Partendo da <math|x=17,y=5>, ai controlli della guardia troviamo le coppie <math|(q,r)=(0,17),(1,12),(2,7),(3,2)>. Che cosa hanno in comune queste righe? A ogni giro la quantità <math|qy> cresce di 5 e il resto <math|r> cala di 5, quindi la loro somma non cambia e resta sempre uguale a <math|x>. Inoltre <math|r> non diventa mai negativo, perché il corpo sottrae <math|y> soltanto quando <math|r≥y>.

Queste osservazioni suggeriscono di scegliere

<\equation*>
I≡(x=qy+r∧r≥0∧y›0).
</equation*>

È un <strong|invariante>, cioè una proprietà che vale dopo l'inizializzazione e viene ristabilita dopo ogni esecuzione completa del corpo. Durante il corpo può anche smettere di valere per un momento. Subito dopo l'incremento di <math|q>, per esempio, l'uguaglianza è falsa, e torna vera soltanto dopo la sottrazione da <math|r>. Ciò che conta è che sia vera ogni volta che controlliamo la guardia.

<figura|@IMG(invariante)|La proprietà deve valere prima del controllo e dopo l'intero corpo. All'uscita aggiungiamo l'informazione che la guardia è falsa.>

<subsection|Perché l'invariante vale anche all'uscita>

La regola del ciclo, in correttezza parziale, è

<\equation*>
<frac|{I∧E}<space|0.4em>C<space|0.4em>{I}|{I}<space|0.4em><text|while E do C endw><space|0.4em>{I∧¬E}>.
</equation*>

Il motivo per cui funziona è un ragionamento a catena. Prima della prima iterazione vale <math|I>. Se vale prima di un giro che viene eseguito, allora anche la guardia è vera, e la premessa della regola ci dice che dopo il corpo <math|I> vale di nuovo. Ripetendo questo passaggio per tutti i giri effettivamente completati, scopriamo che <math|I> vale a ogni controllo raggiunto. Quando il ciclo esce la guardia è falsa, e quindi nello stato finale abbiamo <math|I∧¬E>. È un ragionamento per induzione sul numero dei giri, che funziona senza bisogno di sapere in anticipo quanti saranno.

Per una specifica completa servono ancora l'ingresso e l'uscita, cioè <math|P⇒I> e <math|I∧¬E⇒Q>. Nella divisione la guardia falsa dice <math|r‹y>, e insieme all'invariante otteniamo <math|x=qy+r∧0≤r‹y>, che è esattamente la definizione di quoziente e resto. Questa prova descrive però soltanto le esecuzioni che arrivano all'uscita. Che l'uscita venga davvero raggiunta, e senza errori, è il tema del prossimo capitolo.

<\verifica|6>
<strong|1.> Calcola una precondizione che garantisca <math|y›10> dopo <tt|y := x * 2>. Verifica poi se <math|x≥6> è sufficiente. Motiva con l'assioma, senza limitarti a provare alcuni valori.

<strong|2.> La precondizione <math|z=5∧x=3> garantisce <math|z›4> dopo <tt|x := 0; y := z div x> in correttezza totale? Calcola all'indietro il controllo di definitezza e spiega la risposta.
</verifica>
