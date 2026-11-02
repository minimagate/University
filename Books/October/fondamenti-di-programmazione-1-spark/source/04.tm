<chapter|Semantica e dimostrazioni con i quantificatori>

<\inbreve>
Dire che una proprietà vale «per ogni» numero è facile, ma come si controlla una frase che parla di infiniti casi? La risposta passa da un'idea semplice, quella di dare per un momento un valore a una variabile e vedere che cosa succede. Da lì ricaveremo le leggi per negare e spostare i quantificatori, e le regole con cui si dimostra una proprietà generale o si usa un oggetto di cui conosciamo soltanto l'esistenza.
</inbreve>

Per sapere se <math|x+1=4> è vera dobbiamo sapere quale numero rappresenta <math|x>. Per sapere se <math|∃x.x+1=4> è vera, invece, dobbiamo chiederci se qualche numero rende vera la condizione, e quindi provare dei valori. In entrambi i casi l'ingrediente è lo stesso, cioè dare temporaneamente un valore a una variabile, e su questa idea costruiremo la valutazione di tutte le formule.

<section|Assegnamenti e valore di termini e formule>

Fissiamo un'interpretazione <math|I=(D,α)>. Un <strong|assegnamento> <math|ρ> associa a ogni variabile un elemento del dominio <math|D>. Per provare un valore diverso per una sola variabile scriviamo <math|ρ[d/x]>, che indica l'assegnamento uguale a <math|ρ> su tutte le altre variabili ma che dà a <math|x> il valore <math|d>. Per esempio, se <math|ρ(x)=2> e <math|ρ(y)=10>, l'assegnamento <math|ρ[3/x]> dà 3 a <math|x> e lascia 10 a <math|y>.

Il valore di un termine, che indichiamo con <math|α<rsub|ρ>(t)>, si calcola seguendone la costruzione. Una variabile vale <math|ρ(x)> e una costante vale <math|α(c)>. Per un termine <math|f(t<rsub|1>,…,t<rsub|n>)> calcoliamo prima i valori dei termini interni e poi applichiamo ai risultati la funzione <math|α(f)>. Se <math|s> è il successore sui naturali e <math|ρ(x)=2>, il termine <math|s(s(x))> vale 4, perché partiamo da 2, passiamo a 3 e arriviamo a 4.

Per una formula atomica valutiamo i termini e applichiamo il predicato. Se <math|p> significa «essere pari», la formula <math|p(s(s(x)))> è vera con questo assegnamento, perché 4 è pari. I connettivi seguono le stesse tabelle del capitolo 2, e per il valore di una formula scriviamo <math|I<rsub|ρ>(P)>. Resta da dire che cosa fanno i quantificatori, ed è qui che l'idea di provare dei valori diventa una definizione.

<\concetto|Semantica dei quantificatori>
<math|I<rsub|ρ>(∀x.P)> è vero se <math|I<rsub|ρ[d/x]>(P)> è vero per <em|ogni> <math|d∈D>. <math|I<rsub|ρ>(∃x.P)> è vero se ciò accade per <em|almeno un> <math|d∈D>. Altrimenti il rispettivo valore è falso.
</concetto>

Su un dominio finito come <math|{a,b,c}> la definizione è molto concreta. Un universale si comporta come la congiunzione dei tre casi, mentre un esistenziale si comporta come la loro disgiunzione. Un elemento che rende vera la portata di un esistenziale si chiama <strong|testimone>, e uno che rende falsa la portata di un universale si chiama controesempio.

<subsection|Un esempio con due quantificatori>

Prendiamo <math|D={a,b}>, con <math|Q> vera su entrambi gli elementi e <math|P(x,y)> vera soltanto quando <math|x=a>. Vogliamo sapere se è vera

<\equation*>
∃x.(Q(x)∧∀y.P(x,y)).
</equation*>

Ci serve un elemento che soddisfi entrambe le richieste, e proviamo con <math|a>. La condizione <math|Q(a)> è vera. Per l'universale interno dobbiamo controllare tutti i valori di <math|y>, cioè <math|P(a,a)> e <math|P(a,b)>, e sono vere entrambe. Quindi <math|a> è un testimone e la formula è vera. Con <math|b> il controllo sarebbe fallito, ma questo non toglie nulla al testimone che abbiamo già trovato.

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.7em>|<cwith|1|-1|1|-1|cell-rsep|0.7em>|<table|<row|<cell|P(x,y)>|<cell|y=a>|<cell|y=b>>|<row|<cell|x=a>|<cell|<math-up|t>>|<cell|<math-up|t>>>|<row|<cell|x=b>|<cell|<math-up|f>>|<cell|<math-up|f>>>>>>
</equation*>

La tabella mostra bene il ruolo dei due quantificatori. All'universale interno serve un'intera riga vera, mentre all'esistenziale esterno basta trovarne una.

<subsection|Formule valide>

Una formula dipende soltanto dai valori assegnati alle sue variabili libere. Una formula chiusa, quindi, non dipende affatto da <math|ρ>, e possiamo scrivere semplicemente <math|I(P)>. Le nozioni di modello, soddisfacibilità e conseguenza logica si estendono come nel capitolo 2.

Una formula chiusa è <strong|valida> se è vera in tutte le interpretazioni. Per una formula aperta la richiesta è ancora più forte, perché deve essere vera in ogni interpretazione e per ogni assegnamento alle variabili libere, ed è in questo senso che useremo le leggi schematiche. Essere vera sui naturali con le operazioni usuali è molto meno esigente. La formula <math|∀x.x+1›x>, per esempio, è vera sui naturali, ma non lo è per qualunque significato si dia ai simboli.

<section|Negazione, distribuzione e domini ristretti>

Negare «tutti soddisfano <math|P>» significa dire che almeno uno non la soddisfa, e negare «almeno uno soddisfa <math|P>» significa dire che tutti la falliscono. Sono le leggi di De Morgan per i quantificatori:

<\equation*>
¬(∀x.P)≡∃x.¬P,<space|2em>¬(∃x.P)≡∀x.¬P.
</equation*>

Con la quantificazione ristretta il filtro rimane al suo posto, e scriviamo <math|¬(∀x:R.P)≡∃x:R.¬P>. Non neghiamo <math|R>, perché il controesempio va cercato proprio fra gli elementi ammessi.

Un caso limite merita attenzione. Se nessun elemento soddisfa <math|R>, la formula <math|∀x:R.P> è <strong|vacuamente vera>, perché non esiste nessun elemento ammesso che possa smentirla. Per lo stesso motivo <math|∃x:R.P> è falsa, dato che manca qualsiasi testimone. Così la frase «tutti gli elementi dell'array vuoto sono positivi» è vera, e non afferma affatto che nell'array ci sia qualche elemento.

Un universale si distribuisce sulla congiunzione, perché ogni individuo soddisfa entrambe le condizioni esattamente quando tutti soddisfano la prima e tutti la seconda. In modo simmetrico l'esistenziale si distribuisce sulla disgiunzione:

<\equation*>
(∀x.(P∧Q))≡((∀x.P)∧(∀x.Q)),
</equation*>

<\equation*>
(∃x.(P∨Q))≡((∃x.P)∨(∃x.Q)).
</equation*>

<subsection|Perché alcuni versi non si possono invertire>

Con gli scambi opposti, cioè l'esistenziale sulla congiunzione e l'universale sulla disgiunzione, vale soltanto un verso. Un testimone che soddisfa entrambe le proprietà si può usare separatamente per ciascuna, e quindi

<\equation*>
(∃x.(P∧Q))⇒((∃x.P)∧(∃x.Q)).
</equation*>

Il viceversa invece non vale. Sui naturali esistono numeri pari ed esistono numeri dispari, ma nessun numero è le due cose insieme, perché i due esistenziali hanno testimoni diversi.

Per l'universale la situazione è simile. Se tutti soddisfano <math|P>, oppure tutti soddisfano <math|Q>, allora ciascuno soddisfa almeno una delle due:

<\equation*>
((∀x.P)∨(∀x.Q))⇒∀x.(P∨Q).
</equation*>

Anche qui il viceversa fallisce. Ogni intero è pari o dispari, ma questo non significa che tutti gli interi siano pari, né che siano tutti dispari.

<subsection|Una parte che non dipende dalla variabile>

Se <math|x> non è libera in <math|Q>, il valore di <math|Q> non cambia mentre <math|x> varia, e possiamo portare questa parte fuori dal quantificatore:

<\equation*>
(∀x.(P∧Q))≡((∀x.P)∧Q),
</equation*>

<\equation*>
(∃x.(P∨Q))≡((∃x.P)∨Q).
</equation*>

Queste leggi usano un'ipotesi che finora era rimasta sullo sfondo, cioè che il dominio non sia vuoto. La stessa ipotesi permette di togliere un quantificatore da una formula che non dipende affatto da <math|x>, scrivendo <math|∀x.Q≡Q> ed <math|∃x.Q≡Q>. Se ammettessimo domini vuoti, <math|∀x.F> sarebbe vera ed <math|∃x.T> falsa, e non potremmo più sostituirle con <math|F> e con <math|T>.

<subsection|L'ordine cambia la scelta del testimone>

Due quantificatori dello stesso tipo si possono scambiare liberamente, quindi <math|∀x.∀y.P≡∀y.∀x.P>, e lo stesso vale per due esistenziali. Con quantificatori di tipo diverso, invece, l'ordine decide quando possiamo scegliere il testimone.

Sui naturali la formula <math|∀x.∃y.x‹y> è vera, perché dopo aver visto <math|x> possiamo scegliere <math|y=x+1>. La formula <math|∃y.∀x.x‹y> è invece falsa, perché chiede un solo <math|y> che superi tutti i numeri, compreso sé stesso. Un verso vale comunque sempre: se c'è un testimone comune a tutti gli <math|x>, a maggior ragione ognuno ha il suo,

<\equation*>
(∃y.∀x.P(x,y))⇒(∀x.∃y.P(x,y)).
</equation*>

<section|Regole di prova: individui particolari e generici>

Le leggi ci dicono quali formule sono equivalenti. Per dimostrare qualcosa ci servono anche regole che dicano come usare e come ottenere un quantificatore.

Le due più semplici sono quasi ovvie. Se una proprietà vale per tutti, vale anche per un individuo particolare, e da <math|∀x.P> possiamo ricavare <math|P[t/x]> per qualunque termine <math|t>. È l'<strong|eliminazione dell'universale>. Se invece abbiamo un caso concreto che soddisfa la proprietà, sappiamo che un caso esiste, e da <math|P[t/x]> ricaviamo <math|∃x.P>, con l'<strong|introduzione dell'esistenziale>. In entrambe le regole la sostituzione deve evitare catture.

L'esempio classico è quello di Socrate. La frase «tutti gli uomini sono mortali», applicata a lui, diventa «se Socrate è un uomo, allora è mortale». Poiché sappiamo che è un uomo, il modus ponens ci dà la conclusione.

<subsection|Dimostrare una proprietà per tutti>

Le altre due regole sono più delicate. Per dimostrare <math|∀x.P> non basta verificare la proprietà su un individuo che conosciamo, perché potrebbe avere qualcosa di speciale. Prendiamo invece un nome nuovo <math|d>, a cui non attribuiamo nessuna proprietà particolare, e dimostriamo <math|P[d/x]>.

Se il ragionamento non ha usato niente di specifico su <math|d>, allora funziona per chiunque, e possiamo concludere <math|∀x.P>. È la <strong|generalizzazione>. Perché sia lecita, il nome <math|d> non deve comparire né nella formula da dimostrare né nelle ipotesi ancora in uso.

Per seguire queste condizioni ci serve un po' di vocabolario. Un'ipotesi è <em|aperta> finché il risultato dipende da essa, e la <em|chiudiamo>, o <em|scarichiamo>, quando una regola ci permette di toglierla dalle premesse. L'esempio che segue rende concreta questa distinzione.

<subsection|Usare un oggetto di cui sappiamo l'esistenza>

L'ultima regola riguarda le premesse esistenziali. Se sappiamo <math|∃x.P>, sappiamo che un oggetto con quella proprietà c'è, ma non sappiamo quale. Possiamo allora dargli un nome nuovo <math|d>, assumere per il momento <math|P[d/x]> e ragionare su di lui, a patto che la conclusione finale non nomini <math|d>.

Nel corso questo passo prende il nome di <strong|skolemizzazione>, e qui lo presentiamo come la regola che usa un testimone esistenziale. Il nome deve essere nuovo anche rispetto alla conclusione. Non stiamo affermando che <math|(∃x.P)⇒P[d/x]> valga per una costante fissata in anticipo, il che sarebbe falso, ma soltanto che possiamo ragionare su un testimone di cui non conosciamo l'identità.

<subsection|Una prova con un testimone temporaneo>

Mettiamo insieme le regole in una prova completa. Supponiamo di sapere che ogni oggetto con la proprietà <math|P> ha anche la proprietà <math|Q>, e che almeno un oggetto ha la proprietà <math|P>. Vogliamo dimostrare che almeno un oggetto ha la proprietà <math|Q>. Chiamiamo <math|Γ> le due premesse, che resteranno disponibili per tutta la prova:

<\equation*>
Γ={∀x.(P(x)⇒Q(x)),∃x.P(x)}.
</equation*>

<strong|1. Diamo un nome al testimone.> L'esistenziale non ci dice quale oggetto abbia la proprietà <math|P>. Lo chiamiamo <math|d>, con un nome mai usato prima, e apriamo l'ipotesi temporanea <math|H:P(d)>. Non stiamo dicendo che un oggetto già noto soddisfi <math|P>.

<strong|2. Applichiamo la regola generale a quell'oggetto.> Dalla prima premessa, eliminando l'universale, ricaviamo <math|P(d)⇒Q(d)>. In questo momento le ipotesi aperte sono <math|Γ> e <math|H>.

<strong|3. Ricaviamo la proprietà cercata.> Con <math|H> e il modus ponens otteniamo <math|Q(d)>, e introducendo l'esistenziale arriviamo a

<\equation*>
Γ,H⊢∃x.Q(x).
</equation*>

<strong|4. Chiudiamo l'ipotesi sul testimone.> La conclusione non nomina <math|d>, e non lo nomina nemmeno nessuna premessa di <math|Γ>. Il ragionamento funziona quindi per qualunque testimone garantito da <math|∃x.P(x)>, e la regola di eliminazione dell'esistenziale ci permette di chiudere <math|H>:

<\equation*>
Γ⊢∃x.Q(x).
</equation*>

La conclusione dipende ancora dalle due premesse iniziali, mentre l'ipotesi locale <math|P(d)> è stata chiusa. Notiamo anche che cosa non possiamo concludere. La formula <math|∀x.Q(x)> non segue, perché <math|d> era un oggetto con una proprietà particolare e non un individuo generico.

<subsection|Che cosa garantisce un sistema di prova>

Un <strong|sistema di dimostrazione> è l'insieme delle regole di inferenza che possiamo usare. Ogni regola permette di passare da certe premesse a una conclusione, e una regola senza premesse si chiama assioma. Scriviamo <math|Γ⊢P> quando esiste una sequenza di passi consentiti che parte da <math|Γ> e arriva a <math|P>. È una proprietà delle prove scritte, ben distinta da <math|Γ⊨P>, che riguarda invece la verità nelle interpretazioni.

Le due nozioni sono collegate da due proprietà del sistema. Il sistema è <strong|corretto> se tutto ciò che possiamo derivare è anche conseguenza logica delle premesse, ed è <strong|completo> se possiamo derivare ogni conseguenza logica. Per il calcolo proposizionale valgono entrambe, e del sistema presentato nel corso useremo la correttezza. Per il primo ordine esistono sistemi completi, ma non esiste un procedimento che decida sempre, in un numero finito di passi, se una formula qualsiasi è valida.

<subsection|Dall'ipotesi all'implicazione>

Se assumiamo <math|H> e ne ricaviamo <math|Q>, possiamo chiudere l'ipotesi e concludere <math|H⇒Q>, rispettando le condizioni delle regole sui quantificatori. È il contenuto del <strong|teorema di deduzione>. Le altre premesse usate restano a disposizione, e il risultato continua a dipendere da esse.

Le ipotesi vanno tenute d'occhio anche quando sostituiamo sotto un quantificatore. Possiamo usare un'equivalenza, o le polarità del capitolo 2, soltanto se la relazione vale per tutti i valori su cui varia la variabile. Sapere che <math|P(x)> è vera per il valore attuale di <math|x> non ci autorizza a sostituirla con <math|T> dentro <math|∀x.P(x)>, perché il quantificatore considera anche tutti gli altri valori.

<section|Uguaglianza e asserzioni sugli stati>

Con il significato usuale dell'uguaglianza, <math|t=u> è vera quando i due termini indicano lo stesso elemento. Da qui discende la <strong|legge di Leibniz>, secondo cui sostituire un individuo con uno uguale non cambia le sue proprietà:

<\equation*>
x=y⇒(P≡P[y/x]).
</equation*>

Come sempre la sostituzione riguarda le occorrenze libere e non deve catturare variabili. In pratica, da <math|x=y> e da <math|P> possiamo concludere <math|P[y/x]>, e per esempio da <math|x=y> e <math|x›0> ricaviamo <math|y›0>.

Le <strong|leggi del singoletto> dicono che quantificare su un unico individuo equivale a sostituirlo. Per due variabili distinte <math|x> e <math|y>, e sempre evitando catture,

<\equation*>
(∀x.(x=y⇒P))≡P[y/x],
</equation*>

<\equation*>
(∃x.(x=y∧P))≡P[y/x].
</equation*>

La seconda legge si capisce bene ragionando sul testimone. L'unico valore che può soddisfare <math|x=y> è quello di <math|y>, quindi l'esistenziale è vero se quel valore soddisfa <math|P> e falso altrimenti, perché nessun altro valore può prenderne il posto. La prima legge controlla lo stesso unico individuo attraverso un'implicazione.

Abbiamo ora tutto ciò che serve per parlare dei programmi. Un'asserzione come <math|x≥0∧y›0> è una formula aperta, e uno stato fornisce i valori delle variabili di programma esattamente come un assegnamento. Scriviamo <math|σ⊨P> se <math|P> è vera con quei valori nell'interpretazione numerica usuale. Nei prossimi capitoli useremo coppie di asserzioni come queste per distinguere ciò che chiediamo prima di un programma da ciò che vogliamo ottenere dopo.

<section|Per proseguire: leggi sui domini e indebolimento>

Quando il filtro di un quantificatore ristretto è un'unione di due gruppi, la proprietà va verificata su entrambi, e per trovare un testimone basta cercarlo in uno dei due:

<\equation*>
(∀x:P∨Q.R)≡((∀x:P.R)∧(∀x:Q.R)),
</equation*>

<\equation*>
(∃x:P∨Q.R)≡((∃x:P.R)∨(∃x:Q.R)).
</equation*>

Anche le leggi distributive e quelle di De Morgan viste prima valgono con uno stesso filtro ristretto.

Infine, l'indebolimento funziona nella direzione consueta anche sotto i quantificatori. Valgono <math|(∀x.P)⇒∀x.(P∨Q)> e <math|(∃x.P)⇒∃x.(P∨Q)>, e da una formula quantificata su <math|P∧Q> possiamo sempre tenere soltanto <math|P>. I quantificatori non invertono la polarità, e quindi una relazione che vale per tutti gli individui si può applicare dentro le loro portate.

<\verifica|4>
<strong|1.> Nega <math|∀x.(p(x)⇒∃y.q(x,y))>, portando la negazione fino agli atomi. Spiega che cosa dovresti trovare per mostrare falsa la formula iniziale.

<strong|2.> Su <math|D={a,b}>, la relazione <math|R> è vera soltanto per <math|(a,b)> e <math|(b,a)>. Valuta <math|∀x.∃y.R(x,y)> ed <math|∃y.∀x.R(x,y)>. Mostra poi con un esempio perché da <math|P(d)> per una costante già nota non si può sempre generalizzare a <math|∀x.P(x)>.
</verifica>
