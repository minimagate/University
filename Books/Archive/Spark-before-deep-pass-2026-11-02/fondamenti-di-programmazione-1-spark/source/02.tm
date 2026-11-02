<chapter|Calcolo proposizionale: verità e conseguenza>

«Se Corrado va al cinema, ci va Antonio; se Antonio va al cinema, ci va Bruno.» Possiamo concludere che, se ci va Corrado, ci va Bruno? Sì: quando Corrado va, la prima premessa porta ad Antonio e la seconda a Bruno. Non possiamo invece concludere che, se va Bruno, vada Corrado. Bruno potrebbe andare da solo. Il calcolo proposizionale rende preciso questo controllo: una conclusione segue se non possiamo avere premesse vere e conclusione falsa.

<section|Formule, connettivi e interpretazioni>

Una <strong|proposizione> è una frase dichiarativa alla quale attribuiamo vero o falso. Una domanda e un comando non sono proposizioni. «<math|x+1=2>» diventerà vera o falsa quando avremo fissato <math|x>; torneremo su questa dipendenza con il primo ordine.

Per ora rappresentiamo le proposizioni semplici con lettere <math|p,q,r,…>. Da queste costruiamo formule: <math|¬P> significa «non <math|P>», <math|P∧Q> «<math|P> e <math|Q>», <math|P∨Q> «almeno una fra <math|P> e <math|Q>». La disgiunzione è inclusiva: ammette che entrambe siano vere. <math|P⇒Q> significa «se <math|P>, allora <math|Q>»; <math|P≡Q> «<math|P> se e solo se <math|Q>».

Il significato di «se» merita una sosta. «Se piove, porto l'ombrello» esclude il solo caso in cui piove e non porto l'ombrello. Quando non piove, l'affermazione non impone nulla sull'ombrello. Perciò <math|P⇒Q> è falsa soltanto con <math|P> vera e <math|Q> falsa. L'equivalenza, invece, è vera quando i due valori coincidono.

Indichiamo i valori con <math|<math-up|t>> e <math|<math-up|f>>. Questa tabella definisce le operazioni booleane:

<\equation*>
<tabular|<tformat|<table|<row|<cell|P>|<cell|Q>|<cell|¬P>|<cell|P∧Q>|<cell|P∨Q>|<cell|P⇒Q>|<cell|P≡Q>>|<row|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|t>>>|<row|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|f>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|f>>>|<row|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|f>>>|<row|<cell|<math-up|f>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|t>>>>>>
</equation*>

La <strong|sintassi> specifica quali stringhe sono formule. Fissato un alfabeto di lettere proposizionali, sono formule le lettere, le costanti <math|T,F> e, ricorsivamente, le espressioni ottenute applicando i connettivi a formule già costruite. <math|T> indica la formula sempre vera, <math|F> quella sempre falsa: non sono lettere con un valore da scegliere. Una grammatica libera dal contesto raccoglie queste regole di costruzione; «ricorsivamente» significa che possiamo applicarle ancora ai risultati già ottenuti. Stringhe come <math|p∧∨> non si ottengono così.

Le parentesi descrivono la costruzione. Nel corso <math|¬> lega più di <math|∧,∨>, che legano più di <math|⇒>, che lega più di <math|≡>. Fra <math|∧> e <math|∨> non scegliamo una precedenza: scriviamo le parentesi. Anche due implicazioni consecutive richiedono parentesi. Con <math|P,Q> false, <math|(P⇒¬P)⇒Q> è falsa, mentre <math|P⇒(¬P⇒Q)> è vera. Le parentesi hanno cambiato la domanda logica.

Un'<strong|interpretazione> <math|I> assegna a ogni lettera un valore booleano. La semantica valuta poi la formula seguendone la costruzione. Con <math|I(p)=<math-up|t>>, <math|I(q)=I(r)=<math-up|f>>, per valutare <math|(p∧q)∨¬r> calcoliamo prima <math|p∧q>, che è falsa, e <math|¬r>, che è vera; la loro disgiunzione è vera. Scriviamo <math|⟦P⟧<rsub|I>> per il valore di <math|P> in <math|I>.

Per una <strong|tavola di verità> ripetiamo la valutazione per tutte le scelte dei valori. Con <math|n> lettere distinte ci sono <math|2<rsup|n>> scelte, perché ogni lettera ha due possibilità indipendenti.

<section|Modelli, tautologie e controesempi>

Un'interpretazione che rende vera <math|P> è un suo <strong|modello>; scriviamo <math|I⊨P>. Una formula è <strong|soddisfacibile> se ha almeno un modello; è una <strong|tautologia> se ogni interpretazione è un modello; è una <strong|contraddizione> se non ne ha. <math|p⇒q> è soddisfacibile, perché è vera con <math|p,q> vere, ma non è una tautologia: <math|p> vera e <math|q> falsa la falsificano. Invece <math|p∨¬p> è una tautologia e <math|p∧¬p> una contraddizione.

<\concetto|Conseguenza logica>
<math|Γ⊨Q> significa che ogni interpretazione che rende vere tutte le premesse di <math|Γ> rende vera anche <math|Q>. Per confutare la conseguenza basta un <strong|controesempio>: premesse tutte vere e conclusione falsa.
</concetto>

Riprendiamo gli amici: <math|c⇒a> e <math|a⇒b>. La conclusione <math|c⇒b> segue: se fosse falsa avremmo <math|c> vera e <math|b> falsa. La prima premessa imporrebbe <math|a> vera, e la seconda sarebbe allora falsa. Non esiste quindi un controesempio. Per <math|b⇒c>, invece, scegliamo <math|b> vera, <math|a,c> false: entrambe le premesse sono vere, la conclusione no.

Non concludiamo neppure che nessuno va al cinema: l'interpretazione con tutti e tre veri soddisfa le premesse. Una condizione necessaria non è automaticamente sufficiente. «Antonio va <em|solo se> va Bruno» si scrive <math|a⇒b>: Antonio che va obbliga Bruno, non viceversa.

Con premesse finite <math|P<rsub|1>,…,P<rsub|n>>, la conseguenza equivale alla tautologicità di <math|(P<rsub|1>∧⋯∧P<rsub|n>)⇒Q>. Infatti la formula è falsa esattamente nei controesempi. Questo permette di controllare le inferenze con una tavola di verità, ma il numero delle righe cresce rapidamente. Le leggi ci danno un altro modo di ragionare.

<section|Equivalenze e dimostrazioni motivate>

Una <strong|legge> è una tautologia che usiamo per giustificare passaggi. Se <math|P≡Q> è una legge, possiamo sostituire una sottoformula <math|P> con <math|Q> dentro una formula più grande: i valori restano uguali in ogni interpretazione. È il principio di sostituzione per l'equivalenza. Per esempio <math|P⇒Q> si può sostituire con <math|¬P∨Q>, perché entrambe sono false nel solo caso <math|P> vera, <math|Q> falsa.

Alcune leggi esprimono operazioni familiari: commutatività e associatività di <math|∧,∨>, idempotenza <math|P∧P≡P> e <math|P∨P≡P>. Le unità sono <math|P∧T≡P> e <math|P∨F≡P>; gli elementi assorbenti danno <math|P∧F≡F> e <math|P∨T≡T>. Le leggi distributive consentono di espandere <math|P∧(Q∨R)> in <math|(P∧Q)∨(P∧R)> e, scambiando <math|∧> con <math|∨>, di espandere <math|P∨(Q∧R)>.

La doppia negazione dà <math|¬¬P≡P>. Le leggi di De Morgan dicono

<\equation*>
¬(P∧Q)≡¬P∨¬Q,<space|2em>¬(P∨Q)≡¬P∧¬Q.
</equation*>

Per capire la prima, chiediamoci quando fallisce «entrambi»: basta che fallisca almeno uno. La seconda dice che per fallire «almeno uno» devono fallire entrambi. Inoltre <math|¬(P⇒Q)≡P∧¬Q>, ed <math|P≡Q> equivale sia a <math|(P⇒Q)∧(Q⇒P)> sia a <math|(P∧Q)∨(¬P∧¬Q)>.

Vediamo perché può essere utile distribuire, anziché farlo senza una meta. Vogliamo semplificare <math|P∨(¬P∧Q)>. Qui <math|P> compare anche negata: distribuendo portiamo le due occorrenze vicine:

<\equation*>
P∨(¬P∧Q)≡(P∨¬P)∧(P∨Q)≡T∧(P∨Q)≡P∨Q.
</equation*>

Il primo passo è distributività; il secondo usa il terzo escluso; l'ultimo usa l'unità. Questa è una legge di complemento. Anche <math|P∧(¬P∨Q)≡P∧Q>; le leggi di assorbimento sono <math|P∧(P∨Q)≡P> e <math|P∨(P∧Q)≡P>. Non occorre memorizzarle tutte: occorre capire quale cambiamento permette ogni passaggio.

Per dimostrare un'implicazione possiamo assumere la premessa e ricavare la conclusione. Da <math|P⇒Q> e <math|P> segue <math|Q>: è il <strong|modus ponens>, perché la sola possibilità di <math|Q> falsa renderebbe falsa una premessa. Da <math|P⇒Q> e <math|¬Q> segue <math|¬P> (<strong|modus tollens>): se <math|P> fosse vera, costringerebbe <math|Q> a esserlo. Qui abbiamo usato un ragionamento per assurdo, non una nuova operazione misteriosa.

La <strong|controposizione> esprime proprio <math|(P⇒Q)≡(¬Q⇒¬P)>. Non scambia semplicemente i due lati: li nega entrambi. La prova per assurdo di <math|P⇒Q> cerca una contraddizione assumendo <math|P∧¬Q>, l'unico caso che potrebbe falsificare l'implicazione. Una prova per casi sceglie una proposizione <math|R> e dimostra la stessa conclusione sia con <math|R> sia con <math|¬R>; questi due casi esauriscono le possibilità.

<section|Implicazione e polarità delle occorrenze>

L'equivalenza consente sostituzioni in ogni posizione; una sola implicazione richiede attenzione. Da <math|A⇒B> sappiamo che <math|A> è più esigente di <math|B>. Perciò <math|A∧R⇒B∧R>. Ma sotto negazione il verso cambia: <math|¬B⇒¬A>. Se nessuno soddisfa la richiesta più debole <math|B>, tanto meno soddisfa quella più forte <math|A>.

Per seguire questi cambiamenti chiamiamo un'occorrenza <strong|positiva> se dalla radice alla sottoformula attraversiamo un numero pari di inversioni, <strong|negativa> se dispari. Invertono la negazione e l'antecedente di <math|⇒>; <math|∧,∨> e il conseguente non invertono. Prima eliminiamo gli eventuali <math|≡>, che non hanno questa monotonia. Conta ogni singola occorrenza, non il nome della lettera.

Se vale <math|A⇒B>, sostituire <math|A> con <math|B> in posizione positiva dà un'implicazione dalla formula iniziale alla nuova; in posizione negativa dà il verso opposto. Per esempio, da <math|Q∧R⇒Q> segue <math|(P⇒(Q∧R))⇒(P⇒Q)>: il conseguente è positivo. Da <math|P⇒P∨Q> segue invece <math|((P∨Q)⇒R)⇒(P⇒R)>: allargare la premessa rende più esigente l'implicazione.

Le ipotesi usate rimangono parte del ragionamento. Se abbiamo assunto <math|H>, il risultato dipende da <math|H>; non diventa una legge assoluta. Per esempio, sotto l'ipotesi <math|P>, possiamo scrivere <math|P∧Q≡T∧Q≡Q>. Abbiamo dimostrato <math|P⇒((P∧Q)≡Q)>, non <math|(P∧Q)≡Q> senza ipotesi.

<subsection|Per proseguire: forme normali, risoluzione e NAND>

Un <strong|letterale> è una lettera o la sua negazione. Una <strong|forma normale congiuntiva> (FNC) è una congiunzione di disgiunzioni di letterali; una <strong|forma normale disgiuntiva> (FND) scambia i ruoli. Per esempio <math|(p∨¬q)∧r> è in FNC; <math|(p∧q)∨¬r> in FND. Si eliminano <math|⇒,≡>, si spingono le negazioni verso le lettere con De Morgan e si distribuisce. Il procedimento può allungare molto le formule; una forma normale non è una forma unica.

La <strong|risoluzione> usa due clausole <math|P∨Q> e <math|¬P∨R> per ricavare <math|Q∨R>. Perché? Se <math|P> è falsa, la prima clausola impone <math|Q>; se è vera, la seconda impone <math|R>. È una prova per casi. Dalle tre clausole <math|P∨Q>, <math|¬P∨R>, <math|¬Q∨R> ricaviamo prima <math|Q∨R>, poi, risolvendo su <math|Q>, <math|R>. La risoluzione è uno strumento dei metodi automatici e della programmazione logica.

Un insieme di connettivi è <strong|funzionalmente completo> se esprime ogni funzione booleana. <math|{¬,∧}> lo è: De Morgan esprime <math|∨>, e la FND esprime una funzione scegliendo le righe della sua tavola in cui è vera. Anche <math|{¬,∨}> è completo per De Morgan, e <math|{¬,⇒}> lo è perché <math|P∨Q≡(¬P⇒Q)>. Il solo <strong|NAND>, <math|P↑Q≡¬(P∧Q)>, basta: <math|P↑P≡¬P> e <math|(P↑Q)↑(P↑Q)≡P∧Q>. Più connettivi rendono comunque più leggibile ciò che vogliamo dire.

<\verifica|2>
<strong|1.> Con <math|p>: «piove» ed <math|e>: «esco», traduci «esco solo se non piove». La formula ottenuta implica «se non piove, esco»? Cerca un caso che distingua le due richieste.

<strong|2.> Semplifica <math|P∧(¬P∨Q)> mostrando le leggi usate. Poi stabilisci il segno delle occorrenze di <math|P,Q,R> in <math|¬(P⇒Q)∧R>.
</verifica>
