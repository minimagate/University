<chapter|Calcolo proposizionale: verità e conseguenza>

<\inbreve>
Quando una conclusione segue davvero dalle premesse? Sappiamo già ragionare con frasi come «se piove, porto l’ombrello». Impareremo a controllare questi ragionamenti e a scrivere con precisione le condizioni che useremo nei programmi.
</inbreve>

«Se Corrado va al cinema, ci va Antonio; se Antonio va al cinema, ci va Bruno.» Possiamo concludere che, se ci va Corrado, ci va Bruno? Sì: quando Corrado va, la prima premessa porta ad Antonio e la seconda a Bruno.

Non possiamo invece concludere che, se va Bruno, vada Corrado. Bruno potrebbe andare da solo. Il calcolo proposizionale rende preciso questo controllo: una conclusione segue se non possiamo avere premesse vere e conclusione falsa.

<section|Formule, connettivi e interpretazioni>

Una <strong|proposizione> è una frase dichiarativa alla quale attribuiamo vero o falso. Una domanda e un comando non sono proposizioni. «<math|x+1=2>» diventerà vera o falsa quando avremo fissato <math|x>; torneremo su questa dipendenza con il primo ordine.

Per ora rappresentiamo le proposizioni semplici con lettere <math|p,q,r,…>. Da queste costruiamo formule: <math|¬P> significa «non <math|P>», <math|P∧Q> «<math|P> e <math|Q>», <math|P∨Q> «almeno una fra <math|P> e <math|Q>». La disgiunzione è inclusiva: ammette che entrambe siano vere. <math|P⇒Q> significa «se <math|P>, allora <math|Q>»; <math|P≡Q> «<math|P> se e solo se <math|Q>».

Il significato di «se» merita una sosta. «Se piove, porto l'ombrello» esclude il solo caso in cui piove e non porto l'ombrello. Quando non piove, l'affermazione non impone nulla sull'ombrello. Perciò <math|P⇒Q> è falsa soltanto con <math|P> vera e <math|Q> falsa. L'equivalenza, invece, è vera quando i due valori coincidono.

Indichiamo i valori con <math|<math-up|t>> e <math|<math-up|f>>. Questa tabella definisce le operazioni booleane:

<\equation*>
<tabular|<tformat|<table|<row|<cell|P>|<cell|Q>|<cell|¬P>|<cell|P∧Q>|<cell|P∨Q>|<cell|P⇒Q>|<cell|P≡Q>>|<row|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|t>>>|<row|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|f>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|f>>>|<row|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|f>>>|<row|<cell|<math-up|f>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|t>>>>>>
</equation*>

Quali scritture sono formule? Partiamo dalle lettere e dalle costanti <math|T,F>. Se abbiamo già due formule, possiamo collegarle con <math|∧>, <math|∨>, <math|⇒> oppure <math|≡>; se ne abbiamo una, possiamo negarla.

Ripetiamo le stesse regole sui risultati ottenuti: questa costruzione si dice <strong|ricorsiva>. Le regole formano la <strong|sintassi> del linguaggio e si possono raccogliere in una grammatica libera dal contesto. <math|p∧∨> non è una formula, perché dopo <math|∧> manca una seconda formula.

Le costanti <math|T> e <math|F> indicano rispettivamente la formula sempre vera e quella sempre falsa. A differenza delle lettere, non hanno un valore da scegliere.

Le parentesi descrivono la costruzione. Nel corso <math|¬> lega più di <math|∧,∨>, che legano più di <math|⇒>, che lega più di <math|≡>. Fra <math|∧> e <math|∨> non scegliamo una precedenza: scriviamo le parentesi. Anche due implicazioni consecutive richiedono parentesi. Con <math|P,Q> false, <math|(P⇒¬P)⇒Q> è falsa, mentre <math|P⇒(¬P⇒Q)> è vera. Le parentesi hanno cambiato la domanda logica.

Un'<strong|interpretazione> <math|I> assegna a ogni lettera un valore booleano. La semantica valuta poi la formula seguendone la costruzione. Con <math|I(p)=<math-up|t>>, <math|I(q)=I(r)=<math-up|f>>, per valutare <math|(p∧q)∨¬r> calcoliamo prima <math|p∧q>, che è falsa, e <math|¬r>, che è vera; la loro disgiunzione è vera. Scriviamo <math|⟦P⟧<rsub|I>> per il valore di <math|P> in <math|I>.

Per una <strong|tavola di verità> ripetiamo la valutazione per tutte le scelte dei valori. Con <math|n> lettere distinte ci sono <math|2<rsup|n>> scelte, perché ogni lettera ha due possibilità indipendenti.

<section|Modelli, tautologie e controesempi>

Un’interpretazione che rende vera <math|P> è un suo <strong|modello>. Scriviamo <math|I⊨P> per dire che <math|I> è un modello di <math|P>.

Una formula è <strong|soddisfacibile> se ha almeno un modello. Per esempio, <math|p⇒q> è vera quando <math|p,q> sono vere: questo basta a mostrarla soddisfacibile.

Una <strong|tautologia> è vera in ogni interpretazione. <math|p∨¬p> lo è: qualunque valore abbia <math|p>, una delle due parti è vera. <math|p⇒q> invece non lo è, perché fallisce con <math|p> vera e <math|q> falsa.

Una <strong|contraddizione> non ha modelli. <math|p∧¬p> lo è: non possiamo rendere vere insieme una proposizione e la sua negazione.

<\concetto|Conseguenza logica>
<math|Γ⊨Q> significa che ogni interpretazione che rende vere tutte le premesse di <math|Γ> rende vera anche <math|Q>. Per confutare la conseguenza basta un <strong|controesempio>: premesse tutte vere e conclusione falsa.
</concetto>

Riprendiamo gli amici: <math|c⇒a> e <math|a⇒b>. La conclusione <math|c⇒b> segue: se fosse falsa avremmo <math|c> vera e <math|b> falsa. La prima premessa imporrebbe <math|a> vera, e la seconda sarebbe allora falsa. Non esiste quindi un controesempio. Per <math|b⇒c>, invece, scegliamo <math|b> vera, <math|a,c> false: entrambe le premesse sono vere, la conclusione no.

Non concludiamo neppure che nessuno va al cinema: l'interpretazione con tutti e tre veri soddisfa le premesse. Una condizione necessaria non è automaticamente sufficiente. «Antonio va <em|solo se> va Bruno» si scrive <math|a⇒b>: Antonio che va obbliga Bruno, non viceversa.

Con premesse finite <math|P<rsub|1>,…,P<rsub|n>>, la conseguenza equivale alla tautologicità di <math|(P<rsub|1>∧⋯∧P<rsub|n>)⇒Q>. Infatti la formula è falsa esattamente nei controesempi. Questo permette di controllare le inferenze con una tavola di verità, ma il numero delle righe cresce rapidamente. Le leggi ci danno un altro modo di ragionare.

<section|Equivalenze e dimostrazioni motivate>

Una <strong|legge> è una tautologia che usiamo per giustificare passaggi. Se <math|P≡Q> è una legge, possiamo sostituire una sottoformula <math|P> con <math|Q> dentro una formula più grande: i valori restano uguali in ogni interpretazione. È il principio di sostituzione per l'equivalenza. 

Per esempio <math|P⇒Q> si può sostituire con <math|¬P∨Q>, perché entrambe sono false nel solo caso <math|P> vera, <math|Q> falsa.

<subsection|Leggi per trasformare una formula>

Scambiare l’ordine di due termini non cambia una congiunzione o una disgiunzione: è la <strong|commutatività>. Se ripetiamo lo stesso connettivo, possiamo anche spostare le parentesi: è l’<strong|associatività>.

Ripetere la stessa condizione non aggiunge richieste. Questa proprietà si chiama <strong|idempotenza>:

<\equation*>
P∧P≡P,<space|2em>P∨P≡P.
</equation*>

Le costanti <math|T,F> permettono altre semplificazioni. Aggiungere una condizione già vera a una congiunzione non cambia nulla; aggiungere una possibilità sempre falsa a una disgiunzione neppure:

<\equation*>
P∧T≡P,<space|2em>P∨F≡P.
</equation*>

Sono le leggi di <strong|unità>. Se invece una congiunzione contiene una parte falsa, fallisce tutta; se una disgiunzione contiene una parte vera, è vera tutta:

<\equation*>
P∧F≡F,<space|2em>P∨T≡T.
</equation*>

Qui <math|F> e <math|T> sono detti <strong|elementi assorbenti> per le rispettive operazioni.

La <strong|distributività> consente di separare i due casi di <math|Q∨R>:

<\equation*>
P∧(Q∨R)≡(P∧Q)∨(P∧R).
</equation*>

Vale anche la legge ottenuta scambiando <math|∧> e <math|∨>. Useremo queste leggi quando ci aiutano ad avvicinare parti che possiamo semplificare.

La doppia negazione dà <math|¬¬P≡P>. Le leggi di De Morgan dicono

<\equation*>
¬(P∧Q)≡¬P∨¬Q,<space|2em>¬(P∨Q)≡¬P∧¬Q.
</equation*>

Per capire la prima, chiediamoci quando fallisce «entrambi»: basta che fallisca almeno uno. La seconda dice che per fallire «almeno uno» devono fallire entrambi. Inoltre <math|¬(P⇒Q)≡P∧¬Q>, ed <math|P≡Q> equivale sia a <math|(P⇒Q)∧(Q⇒P)> sia a <math|(P∧Q)∨(¬P∧¬Q)>.

Vediamo perché può essere utile distribuire, anziché farlo senza una meta. Vogliamo semplificare <math|P∨(¬P∧Q)>. Qui <math|P> compare anche negata: distribuendo portiamo le due occorrenze vicine:

<\equation*>
P∨(¬P∧Q)≡(P∨¬P)∧(P∨Q)≡T∧(P∨Q)≡P∨Q.
</equation*>

Il primo passo usa la distributività; il secondo usa <math|P∨¬P≡T>, il <em|terzo escluso>; l’ultimo usa l’unità. Abbiamo ottenuto una <strong|legge di complemento>. L’altra è <math|P∧(¬P∨Q)≡P∧Q>, proposta nella verifica finale.

Le leggi di <strong|assorbimento> danno invece

<\equation*>
P∧(P∨Q)≡P,<space|2em>P∨(P∧Q)≡P.
</equation*>

Nella prima, chiedere <math|P> rende già vera <math|P∨Q>. Nella seconda, il caso <math|P∧Q> era già compreso nel caso <math|P>. Non occorre memorizzare tutto insieme: cerchiamo ogni volta la legge che rende più semplice la formula.

<subsection|Dalle premesse alla conclusione>

Per dimostrare un’implicazione possiamo assumere la premessa e ricavare la conclusione. Da <math|P⇒Q> e <math|P> segue <math|Q>: è il <strong|modus ponens>, perché la sola possibilità di <math|Q> falsa renderebbe falsa una premessa. 

Da <math|P⇒Q> e <math|¬Q> segue <math|¬P> (<strong|modus tollens>): se <math|P> fosse vera, costringerebbe <math|Q> a esserlo. Qui abbiamo usato un ragionamento per assurdo, non una nuova operazione misteriosa.

La <strong|controposizione> esprime proprio <math|(P⇒Q)≡(¬Q⇒¬P)>. Non scambia semplicemente i due lati: li nega entrambi. La prova per assurdo di <math|P⇒Q> cerca una contraddizione assumendo <math|P∧¬Q>, l'unico caso che potrebbe falsificare l'implicazione. Una prova per casi sceglie una proposizione <math|R> e dimostra la stessa conclusione sia con <math|R> sia con <math|¬R>; questi due casi esauriscono le possibilità.

<section|Implicazione e polarità delle occorrenze>

Sappiamo che <math|x›10⇒x›0>. La condizione «maggiore di 10» è più forte: ammette meno numeri. Se la sostituiamo con «maggiore di 0» nella richiesta <math|x›10∧R>, otteniamo una richiesta più debole:

<\equation*>
(x›10∧R)⇒(x›0∧R).
</equation*>

Sotto una negazione accade il contrario. «Non maggiore di 0» implica «non maggiore di 10», mentre il viceversa fallisce per <math|x=5>:

<\equation*>
¬(x›0)⇒¬(x›10).
</equation*>

La negazione ha invertito il verso. Anche stare a sinistra di un’implicazione lo inverte. La richiesta <math|A⇒R> diventa più impegnativa se sostituiamo <math|A> con una condizione più debole: dovremo garantire <math|R> in più casi.

<subsection|Seguire un’occorrenza nella formula>

Prendiamo una sola formula e seguiamo tutti i passaggi:

<\equation*>
Φ=¬(P⇒Q)∧R.
</equation*>

Possiamo leggerne la costruzione come un albero. La congiunzione è il punto di partenza; a sinistra troviamo una negazione, poi un’implicazione. A destra troviamo direttamente <math|R>.

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.6em>|<cwith|1|-1|1|-1|cell-rsep|0.6em>|<table|<row|<cell|<text|Occorrenza>>|<cell|<text|Percorso dalla congiunzione>>|<cell|<text|Inversioni>>>|<row|<cell|P>|<cell|∧,¬,<text| antecedente di >⇒>|<cell|2>>|<row|<cell|Q>|<cell|∧,¬,<text| conseguente di >⇒>|<cell|1>>|<row|<cell|R>|<cell|∧>|<cell|0>>>>>
</equation*>

Per arrivare a <math|P> attraversiamo prima <math|¬> e poi il lato sinistro di <math|⇒>. Sono due inversioni: il verso iniziale si ristabilisce. Diciamo che questa occorrenza è <strong|positiva>.

Per arrivare a <math|Q> attraversiamo la stessa negazione, ma poi il lato destro di <math|⇒>, che non inverte. Rimane una sola inversione: l’occorrenza è <strong|negativa>. Per <math|R> non incontriamo inversioni: è positiva.

Un controllo è riscrivere <math|Φ> come <math|(P∧¬Q)∧R>. Ora i tre ruoli si vedono direttamente.

<\concetto|Polarità di un’occorrenza>
Partiamo dal segno positivo e seguiamo il percorso fino all’occorrenza scelta. Ogni negazione e ogni passaggio nell’antecedente di <math|⇒> cambia il segno. <math|∧>, <math|∨> e il conseguente lo lasciano invariato. Prima eliminiamo gli eventuali <math|≡>.
</concetto>

Conta il posto occupato da ciascuna occorrenza, non il nome della lettera: due <math|P> nella stessa formula possono avere segni diversi.

<subsection|Usare il segno per sostituire>

Supponiamo valida <math|A⇒B>. In una posizione positiva, sostituire <math|A> con <math|B> dà un’implicazione dalla formula iniziale alla nuova. In una posizione negativa otteniamo l’implicazione dalla nuova alla iniziale.

Per esempio, <math|Q∧R⇒Q>. Nel conseguente di <math|P⇒(Q∧R)> non abbiamo inversioni, quindi

<\equation*>
(P⇒(Q∧R))⇒(P⇒Q).
</equation*>

Invece <math|P⇒P∨Q>. La sostituzione nell’antecedente di <math|P⇒R> incontra una inversione e dà il verso opposto:

<\equation*>
((P∨Q)⇒R)⇒(P⇒R).
</equation*>

La formula a sinistra garantisce <math|R> sia quando vale <math|P> sia quando vale <math|Q>. Perciò garantisce anche il solo caso <math|P>.

<subsection|Tenere presenti le ipotesi>

Se abbiamo assunto <math|P>, possiamo sostituirla con <math|T> e scrivere <math|P∧Q≡T∧Q≡Q>. Il risultato dipende però dall’ipotesi. Abbiamo dimostrato

<\equation*>
P⇒((P∧Q)≡Q),
</equation*>

non <math|(P∧Q)≡Q> senza condizioni. Con <math|P> falsa e <math|Q> vera quest’ultima sarebbe falsa.

<subsection|Per proseguire: forme normali, risoluzione e NAND>

Un <strong|letterale> è una lettera o la sua negazione, come <math|p> e <math|¬q>. Una <strong|forma normale congiuntiva> (FNC) è una congiunzione di disgiunzioni di letterali:

<\equation*>
(p∨¬q)∧r.
</equation*>

Una <strong|forma normale disgiuntiva> (FND) scambia i ruoli: è una disgiunzione di congiunzioni di letterali, come <math|(p∧q)∨¬r>.

Per ottenere queste forme eliminiamo <math|⇒,≡>, spingiamo le negazioni fino alle lettere con De Morgan e distribuiamo. Il procedimento può allungare molto le formule; la forma ottenuta non è unica.

<subsection|Risolvere due clausole>

La <strong|risoluzione> usa due clausole <math|P∨Q> e <math|¬P∨R> per ricavare <math|Q∨R>. Perché? Se <math|P> è falsa, la prima clausola impone <math|Q>; se è vera, la seconda impone <math|R>. È una prova per casi. 

Dalle tre clausole <math|P∨Q>, <math|¬P∨R>, <math|¬Q∨R> ricaviamo prima <math|Q∨R>, poi, risolvendo su <math|Q>, <math|R>. La risoluzione è uno strumento dei metodi automatici e della programmazione logica.

<subsection|Quanti connettivi sono necessari?>

Un insieme di connettivi è <strong|funzionalmente completo> se permette di esprimere ogni funzione booleana, cioè ogni scelta dei risultati in una tavola di verità.

L’insieme <math|{¬,∧}> è completo. De Morgan permette di esprimere <math|∨>; con una FND possiamo poi raccogliere precisamente le righe della tavola in cui vogliamo il risultato vero. Per la funzione sempre falsa basta <math|P∧¬P>.

Anche <math|{¬,∨}> è completo, per De Morgan. Lo è <math|{¬,⇒}>, perché possiamo costruire <math|P∨Q> come <math|¬P⇒Q>.

Basta persino il solo <strong|NAND>, definito da <math|P↑Q≡¬(P∧Q)>. Prima ricostruiamo la negazione, poi la congiunzione:

<\equation*>
P↑P≡¬P,<space|2em>(P↑Q)↑(P↑Q)≡P∧Q.
</equation*>

Abbiamo così ritrovato l’insieme completo <math|{¬,∧}>. Usare più connettivi rimane utile per scrivere formule leggibili.

<\verifica|2>
<strong|1.> Con <math|p>: «piove» ed <math|e>: «esco», traduci «esco solo se non piove». La formula ottenuta implica «se non piove, esco»? Cerca un caso che distingua le due richieste.

<strong|2.> Semplifica <math|P∧(¬P∨Q)> mostrando le leggi usate. Poi stabilisci il segno delle occorrenze di <math|P,Q,R> in <math|¬(P⇒Q)∧R>.
</verifica>
