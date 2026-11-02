<chapter|Stati, espressioni e comandi>

<\inbreve>
Nel primo capitolo abbiamo seguito un programma a occhio, guardando i valori che cambiavano. Ora è il momento di dire con precisione che cosa fa ciascun comando. Vedremo come si calcola un'espressione, come un assegnamento modifica lo stato e come scelte e ripetizioni decidono la strada dell'esecuzione, scoprendo anche che non sempre un programma arriva a un risultato.
</inbreve>

Per capire un programma dobbiamo distinguere due operazioni diverse, leggere un valore e modificarlo. Nell'espressione <tt|x + 1> leggiamo il valore di <tt|x> e calcoliamo un numero, senza cambiare niente. Nel comando <tt|x := x + 1> usiamo quel numero per aggiornare <tt|x>. Per questo usiamo due segni diversi, <tt|:=> per l'azione di assegnare e <math|=> per l'uguaglianza che compare nelle asserzioni.

<section|Lo stato e la valutazione delle espressioni>

Uno stato <math|σ> associa un valore a ciascun identificatore del programma, per esempio <math|σ(x)=10> e <math|σ(y)=3>. Nel linguaggio che studiamo i valori sono interi oppure booleani, cioè <math|<math-up|Val>=ℤ∪<math-up|Bool>>, dove i due valori booleani sono vero e falso. Gli interi sono quelli della matematica, senza limiti di memoria e senza i fenomeni di traboccamento dei calcolatori reali.

Uno stato può anche essere parziale e non dare un valore a tutti i nomi possibili. Nel seguito supporremo però che ogni identificatore letto dal programma sia presente nello stato e abbia il tipo dichiarato, e questa ipotesi ci permetterà di dire che leggere una variabile è sempre un'operazione definita.

<subsection|Espressioni e tipi>

Le espressioni si costruiscono a partire dalle costanti intere, dai valori booleani <tt|true> e <tt|false> e dai nomi delle variabili, e si combinano con parentesi e operatori. I nomi <tt|true> e <tt|false> sono riservati ai due valori booleani. Gli operatori <tt|+>, <tt|->, <tt|*>, <tt|div> e <tt|mod> lavorano sugli interi, mentre i confronti e gli operatori logici producono booleani.

Valgono le precedenze usuali, che distinguono <tt|8 + 5 * 3>, che vale 23, da <tt|(8 + 5) * 3>, che vale 39. Quando c'è un dubbio, le parentesi rendono visibile quale operazione viene prima.

Prima di calcolare un'espressione ne controlliamo i tipi. L'espressione <tt|(x + 5) and (x › y)> può rispettare la grammatica, ma <tt|and> vuole due booleani e <tt|x + 5> è un intero, quindi l'espressione va rifiutata. Questo controllo si chiama <strong|semantica statica>, perché analizza la forma del programma senza eseguirlo. Da qui in poi considereremo soltanto espressioni con i tipi corretti.

<subsection|Calcolare il valore>

Scriviamo <math|ℰ(E,σ)> per il valore dell'espressione <math|E> nello stato <math|σ>. Per calcolare <tt|(x + 1) * y> nello stato dell'esempio leggiamo <math|σ(x)=10>, otteniamo <math|10+1=11>, leggiamo <math|σ(y)=3> e infine moltiplichiamo, ottenendo <math|11·3=33>. Durante tutto il calcolo lo stato non cambia.

La definizione generale segue la costruzione dell'espressione, esattamente come facevamo con le formule:

<\equation*>
ℰ(x,σ)=σ(x),<space|2em>ℰ(E+E',σ)=ℰ(E,σ)+ℰ(E',σ).
</equation*>

Le costanti indicano i valori corrispondenti, quindi <tt|true> indica vero e <tt|false> falso. Gli altri operatori funzionano come la somma, applicando l'operazione ai valori degli argomenti, mentre le parentesi non cambiano il valore e <tt|not> nega un booleano. Precisiamo che <tt|and> e <tt|or> valutano sempre entrambi gli argomenti, senza il «cortocircuito» che si trova in alcuni linguaggi reali.

<subsection|Un'espressione può non avere valore>

Il controllo dei tipi evita molti errori, ma non tutti. L'espressione <tt|x div (y - 3)> riceve correttamente due interi, eppure con <math|y=3> chiede una divisione per zero. Per alcune coppie di espressione e stato il valore semplicemente non esiste, e per questo diciamo che <math|ℰ> è una <strong|funzione parziale>. Il valore mancante si indica con <math|⊥>.

Conviene allora precisare anche la divisione intera. Se <math|a≥0> e <math|b›0>, <tt|a div b> è il quoziente e <tt|a mod b> è il resto, cioè il numero non negativo minore di <math|b> che avanza. Per esempio

<\equation*>
17<space|0.3em><math-up|div><space|0.3em>5=3,<space|2em>17<space|0.3em>mod<space|0.3em>5=2.
</equation*>

Tutti gli esempi del libro usano numeri con questi segni. Per dare comunque un significato anche agli altri casi, fissiamo per ogni intero <math|a> e ogni <math|b≠0> la convenzione

<\equation*>
a<space|0.3em><math-up|div><space|0.3em>b=⌊a/b⌋,<space|1em>a<space|0.3em>mod<space|0.3em>b=a-b⌊a/b⌋,
</equation*>

dove <math|⌊u⌋> indica il più grande intero che non supera <math|u>. È una scelta che rende precisa la semantica del nostro piccolo linguaggio, e altri linguaggi reali ne fanno di diverse sui numeri negativi.

<section|Assegnamento, sequenza e perdita di informazione>

Per descrivere l'effetto di un assegnamento ci serve una notazione. Scriviamo <math|σ[v/x]> per lo stato che coincide con <math|σ> su tutti i nomi tranne <math|x>, al quale associa il valore <math|v>. Il comando <tt|x := E> prima calcola tutta l'espressione <math|E> nello stato vecchio, e solo dopo aggiorna <math|x>. Partendo da <math|x=10,y=3>, per esempio, il comando <tt|x := x + y> porta a <math|x=13,y=3>.

<\concetto|Espressioni e comandi>
Un'espressione legge lo stato e calcola un valore. Un comando viene eseguito e, se termina con successo, produce uno stato. Un assegnamento sostituisce il vecchio valore della variabile destinazione.
</concetto>

Una sequenza <tt|C; D> esegue prima <tt|C> e poi <tt|D> nello stato che <tt|C> ha prodotto. Sembra ovvio, ma ha conseguenze che sorprendono chi inizia. Proviamo a scambiare due variabili scrivendo <tt|x := y; y := x>, partendo da <math|x=10,y=20>. Il primo comando porta a <math|x=20,y=20>, e il secondo legge il nuovo valore di <math|x>, che è 20, lasciando ancora <math|y=20>. Il vecchio 10 è andato perso al primo passo, e nessun comando successivo può ritrovarlo.

Per non perderlo dobbiamo copiarlo prima da qualche parte, in una variabile d'appoggio.

<\verbatim>
temp := x;<no-page-break>

x := y;<no-page-break>

y := temp
</verbatim>

Dopo il primo comando <tt|temp> contiene 10, dopo il secondo <tt|x> contiene 20 e dopo il terzo <tt|y> riprende il 10 messo da parte. La variabile d'appoggio è necessaria proprio perché ogni comando legge lo stato del momento, e non quello iniziale.

<figura|@IMG(scambio)|Lo scambio mette da parte il valore che il secondo assegnamento sovrascriverà. Le frecce seguono la direzione dell'esecuzione.>

<section|Scelte e ripetizioni: if e while>

Il comando più semplice di tutti è <tt|skip>, che non fa nulla e lascia lo stato com'era. Il condizionale <tt|if E then C else D fi> serve invece a scegliere. Valuta la guardia booleana <math|E> ed esegue soltanto <math|C> se è vera, soltanto <math|D> se è falsa. Se la guardia non ha un valore, il condizionale non può scegliere nessun ramo.

Per mettere in <tt|r> il valore assoluto di <tt|x> possiamo scrivere

<\verbatim>
if x › 0 then r := x else r := -x fi
</verbatim>

Con <math|x=7> la guardia è vera e otteniamo <math|r=7>, con <math|x=-7> scegliamo il secondo ramo e otteniamo di nuovo <math|r=7>. Con <math|x=0> la guardia è falsa e il secondo ramo assegna <math|-0=0>, che è ancora il risultato giusto. In ogni caso la variabile <tt|x> non cambia.

Il ciclo <tt|while E do C endw> controlla la guardia prima di ogni possibile esecuzione del corpo <math|C>. Se la guardia è falsa esce subito, se è vera esegue il corpo e torna a controllarla nello stato nuovo. Il numero di ripetizioni non è deciso in anticipo, ma dipende da come evolve lo stato.

<figura|@IMG(while-srotolato)|Ogni freccia rappresenta un'intera esecuzione del corpo. Il controllo della guardia avviene anche nello stato iniziale; il primo controllo falso conclude il ciclo.>

Vediamolo con il calcolo di una potenza, partendo da <math|<math-up|base>=2> ed <math|<math-up|esp>=3>.

<\verbatim>
ris := 1;<no-page-break>

while esp › 0 do<no-page-break>

<hspace|2.100em>ris := ris * base;<no-page-break>

<hspace|2.100em>esp := esp - 1<no-page-break>

endw
</verbatim>

Al primo controllo della guardia la coppia <math|(<math-up|ris>,<math-up|esp>)> vale <math|(1,3)>. Ogni giro moltiplica il risultato per 2 e toglie 1 all'esponente che rimane, quindi i controlli successivi incontrano <math|(2,2)>, <math|(4,1)> e <math|(8,0)>. A quel punto la guardia è falsa e il risultato è 8. Se l'esponente iniziale fosse zero il corpo non verrebbe mai eseguito e <tt|ris> varrebbe 1, come vuole la regola <math|A<rsup|0>=1>.

Questa traccia ci convince sull'esempio, ma non dimostra che il programma funzioni per ogni esponente. Per farlo cercheremo una relazione che leghi sempre il prodotto già calcolato al lavoro ancora da fare, cioè un invariante come quello del capitolo 1.

<section|La semantica dei comandi e le esecuzioni senza risultato>

Come per le espressioni, possiamo descrivere i comandi con una funzione. Scriviamo <math|𝒞(C,σ)> per lo stato finale che il comando <math|C> produce partendo da <math|σ>. Per i primi costrutti la definizione è

<\equation*>
𝒞(<text|skip>,σ)=σ,
</equation*>

<\equation*>
𝒞(<text|x := E>,σ)=σ[ℰ(E,σ)/x],
</equation*>

<\equation*>
𝒞(C;D,σ)=𝒞(D,𝒞(C,σ)).
</equation*>

L'ultima formula rispecchia l'ordine dei comandi, perché lo stato prodotto da <math|C> diventa il punto di partenza di <math|D>. Per il condizionale si sceglie <math|𝒞(C,σ)> oppure <math|𝒞(D,σ)> a seconda del valore della guardia.

Il ciclo <math|W≡<text|while E do C endw>> richiede due casi. Se la guardia è falsa il corpo non viene eseguito e lo stato resta quello iniziale,

<\equation*>
𝒞(W,σ)=σ.
</equation*>

Se la guardia è vera si esegue prima <math|C>, e poi si ricomincia lo stesso ciclo nello stato ottenuto,

<\equation*>
𝒞(W,σ)=𝒞(W,𝒞(C,σ)).
</equation*>

Questa seconda clausola richiama il ciclo stesso. Descrive il risultato quando tutte le valutazioni necessarie sono definite e prima o poi si incontra un controllo falso.

<subsection|Quando un programma non arriva a un risultato>

Anche <math|𝒞>, come <math|ℰ>, è una funzione parziale, perché non tutte le esecuzioni producono uno stato finale. Le ragioni possono essere due. Può verificarsi un errore, come in <tt|x := 1 div 0>, oppure il calcolo può andare avanti per sempre. Consideriamo il ciclo

<\verbatim>
while x ›= y do x := x + 1 endw
</verbatim>

Se all'inizio <math|x≥y>, ogni giro fa crescere ancora <math|x>, la guardia resta vera per sempre e il ciclo non termina. Se invece all'inizio <math|x‹y>, la guardia è subito falsa e si esce senza eseguire il corpo.

Basta cambiare un segno per cambiare tutto. Con <tt|x := x - 1> al posto dell'incremento il ciclo termina per ogni coppia di interi, perché <math|y> resta fisso e <math|x> scende di uno alla volta finché diventa minore di <math|y>. Per dimostrarlo in generale ci servirà una misura del lavoro che resta da fare, che introdurremo nel capitolo 7.

<subsection|Tre modi di descrivere un programma>

Ci sono tre modi diversi, e complementari, di descrivere il significato di un programma. Quando seguiamo i singoli passi dell'esecuzione usiamo la <strong|semantica operazionale>. Quando associamo a ogni comando la funzione parziale che porta dallo stato iniziale a quello finale, come abbiamo appena fatto con <math|𝒞>, usiamo la <strong|semantica denotazionale>. Nel prossimo capitolo descriveremo invece il comportamento con proprietà vere prima e dopo i comandi, e le regole che collegano queste proprietà formano la <strong|semantica assiomatica>.

<\verifica|5>
<strong|1.> Esegui <tt|x := x + y; y := x - y; x := x - y> da <math|x=3,y=7>. Poi usa valori iniziali generici <math|A,B> per spiegare il comportamento per tutti gli interi.

<strong|2.> Per <tt|while x ≠ 0 do x := x - 2 endw>, confronta le esecuzioni da <math|x=4> e da <math|x=5>. Che cosa mostra l'esempio sulla necessità di controllare la terminazione?
</verifica>
