<chapter|Calcolo proposizionale: verità e conseguenza>

<\inbreve>
Ogni giorno traiamo conclusioni da frasi come «se piove, porto l'ombrello», e quasi sempre lo facciamo bene. A volte però un ragionamento che sembra filare contiene un salto nascosto. Il calcolo proposizionale ci dà un modo sicuro per accorgercene, e allo stesso tempo il linguaggio con cui scriveremo le condizioni dei programmi.
</inbreve>

«Se Corrado va al cinema, ci va anche Antonio. Se Antonio va al cinema, ci va anche Bruno.» Possiamo concludere che, se ci va Corrado, ci va Bruno? Sì, e il motivo è semplice da seguire: quando Corrado va, la prima frase ci porta ad Antonio e la seconda da Antonio a Bruno.

Non possiamo invece concludere che, se va Bruno, vada anche Corrado, perché Bruno potrebbe benissimo andarci da solo. Il calcolo proposizionale trasforma questa intuizione in un controllo preciso. Una conclusione segue dalle premesse quando è impossibile che le premesse siano tutte vere e la conclusione falsa.

<section|Formule, connettivi e interpretazioni>

Una <strong|proposizione> è una frase dichiarativa a cui attribuiamo un valore, vero oppure falso. Una domanda o un ordine non sono proposizioni, perché non ha senso chiedersi se siano veri. Una frase come «<math|x+1=2>» è un caso intermedio: diventa vera o falsa soltanto quando sappiamo quanto vale <math|x>, e ce ne occuperemo con la logica del primo ordine.

Per ora indichiamo le proposizioni semplici con le lettere <math|p,q,r,…> e le combiniamo con i <em|connettivi>. La formula <math|¬P> si legge «non <math|P>», <math|P∧Q> si legge «<math|P> e <math|Q>» e <math|P∨Q> significa «almeno una fra <math|P> e <math|Q>». Questa disgiunzione è inclusiva, cioè ammette che le due parti siano vere insieme. Infine <math|P⇒Q> si legge «se <math|P>, allora <math|Q>» e <math|P≡Q> si legge «<math|P> se e solo se <math|Q>».

Il «se» merita una sosta, perché nel linguaggio comune è un po' sfuggente. Chi dice «se piove, porto l'ombrello» esclude un solo caso, quello in cui piove e lui non ha l'ombrello. Nei giorni senza pioggia non ha promesso nulla, e può portarlo o lasciarlo a casa senza smentirsi. Per questo <math|P⇒Q> è falsa soltanto quando <math|P> è vera e <math|Q> falsa. L'equivalenza <math|P≡Q> è invece vera quando i due valori coincidono.

Indichiamo i due valori con <math|<math-up|t>> e <math|<math-up|f>>. La tabella seguente definisce tutte le operazioni.

<\equation*>
<tabular|<tformat|<table|<row|<cell|P>|<cell|Q>|<cell|¬P>|<cell|P∧Q>|<cell|P∨Q>|<cell|P⇒Q>|<cell|P≡Q>>|<row|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|t>>>|<row|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|f>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|f>>>|<row|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|t>>|<cell|<math-up|f>>>|<row|<cell|<math-up|f>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|f>>|<cell|<math-up|f>>|<cell|<math-up|t>>|<cell|<math-up|t>>>>>>
</equation*>

<subsection|Come si costruisce una formula>

Non ogni sequenza di simboli è una formula, e conviene dire con precisione quali lo sono. Si parte dalle lettere e dalle due costanti <math|T> e <math|F>, che indicano la formula sempre vera e quella sempre falsa e, a differenza delle lettere, non hanno un valore da scegliere. Se abbiamo già due formule possiamo collegarle con <math|∧>, <math|∨>, <math|⇒> oppure <math|≡>, e se ne abbiamo una possiamo negarla.

Le stesse regole si applicano poi ai risultati, e ancora ai risultati dei risultati, ed è per questo che la costruzione si dice <strong|ricorsiva>. L'insieme di queste regole è la <strong|sintassi> del linguaggio, che si può scrivere come una grammatica libera dal contesto. Così <math|p∧∨> non è una formula, perché dopo <math|∧> manca la seconda formula da collegare.

Le parentesi mostrano in che ordine è stata costruita la formula. Per risparmiarne qualcuna, nel corso si stabilisce che <math|¬> lega più forte di <math|∧> e <math|∨>, che a loro volta legano più forte di <math|⇒>, che lega più forte di <math|≡>. Fra <math|∧> e <math|∨> non si sceglie una precedenza, e lo stesso vale per due implicazioni consecutive, quindi in questi casi le parentesi vanno scritte.

Non sono un dettaglio di forma. Se <math|P> e <math|Q> sono false, <math|(P⇒¬P)⇒Q> è falsa, mentre <math|P⇒(¬P⇒Q)> è vera, perché spostando le parentesi abbiamo cambiato la domanda logica.

<subsection|Dare un valore alle formule>

Un'<strong|interpretazione> <math|I> assegna a ogni lettera un valore booleano, e da lì possiamo calcolare il valore di qualunque formula seguendone la costruzione. Prendiamo <math|I(p)=<math-up|t>> e <math|I(q)=I(r)=<math-up|f>>, e valutiamo <math|(p∧q)∨¬r>. Prima calcoliamo le due parti, <math|p∧q>, che è falsa, e <math|¬r>, che è vera, e poi la loro disgiunzione, che è vera. Per il valore di una formula <math|P> nell'interpretazione <math|I> scriviamo <math|⟦P⟧<rsub|I>>.

Una <strong|tavola di verità> ripete questo calcolo per tutte le interpretazioni possibili. Con <math|n> lettere distinte le interpretazioni sono <math|2<rsup|n>>, perché ogni lettera ha due valori possibili indipendentemente dalle altre.

<section|Modelli, tautologie e controesempi>

Un'interpretazione che rende vera una formula <math|P> si chiama <strong|modello> di <math|P>, e scriviamo <math|I⊨P>. A seconda di quanti modelli hanno, le formule si dividono in tre famiglie.

Una formula è <strong|soddisfacibile> se ha almeno un modello. Per esempio <math|p⇒q> è vera quando <math|p> e <math|q> sono entrambe vere, e questo basta. Una <strong|tautologia> è vera in ogni interpretazione, come <math|p∨¬p>, perché qualunque valore abbia <math|p> una delle due parti è vera. La formula <math|p⇒q> non è una tautologia, perché diventa falsa con <math|p> vera e <math|q> falsa. Una <strong|contraddizione>, infine, non ha nessun modello, come <math|p∧¬p>, dato che una proposizione e la sua negazione non possono essere vere insieme.

Con queste parole possiamo dire con precisione che cosa significa che una conclusione segue dalle premesse.

<\concetto|Conseguenza logica>
<math|Γ⊨Q> significa che ogni interpretazione che rende vere tutte le premesse di <math|Γ> rende vera anche <math|Q>. Per confutare la conseguenza basta un <strong|controesempio>: premesse tutte vere e conclusione falsa.
</concetto>

Torniamo agli amici al cinema, con le premesse <math|c⇒a> e <math|a⇒b>. Per vedere che <math|c⇒b> segue, proviamo a costruire un controesempio e guardiamo dove si blocca. La conclusione sarebbe falsa soltanto con <math|c> vera e <math|b> falsa. La prima premessa, per essere vera, ci obbliga allora ad avere <math|a> vera, ma con <math|a> vera e <math|b> falsa la seconda premessa diventa falsa. Il controesempio non esiste, e quindi la conclusione segue.

Con <math|b⇒c> il tentativo invece riesce. Basta prendere <math|b> vera e <math|a>, <math|c> false: le due premesse sono vere e la conclusione è falsa.

Le stesse premesse non ci permettono nemmeno di concludere che nessuno vada al cinema, perché l'interpretazione in cui ci vanno tutti e tre le rende vere. In italiano la frase «Antonio va <em|solo se> va Bruno» si scrive <math|a⇒b>, e dice che la presenza di Bruno è necessaria perché ci vada Antonio, non che basti. Una condizione necessaria non è automaticamente sufficiente.

Quando le premesse sono in numero finito, <math|P<rsub|1>,…,P<rsub|n>>, c'è un modo comodo di riassumere tutto questo. La conseguenza vale esattamente quando la formula <math|(P<rsub|1>∧⋯∧P<rsub|n>)⇒Q> è una tautologia, perché questa formula è falsa proprio nei controesempi. Potremmo quindi controllare ogni ragionamento con una tavola di verità, ma il numero delle righe raddoppia a ogni lettera nuova. Le leggi logiche ci offrono una strada più agile.

<section|Equivalenze e dimostrazioni motivate>

Una <strong|legge> è una tautologia che usiamo per giustificare i passaggi di un ragionamento. Le più utili sono equivalenze, e il motivo è il <em|principio di sostituzione>: se <math|P≡Q> è una legge, possiamo sostituire <math|P> con <math|Q> dentro una formula più grande senza cambiarne il valore in nessuna interpretazione. Per esempio possiamo sempre scrivere <math|¬P∨Q> al posto di <math|P⇒Q>, perché le due formule sono false nello stesso unico caso, con <math|P> vera e <math|Q> falsa.

<subsection|Leggi per trasformare una formula>

Alcune leggi esprimono fatti che usiamo senza pensarci. Scambiare l'ordine dei termini di una congiunzione o di una disgiunzione non cambia nulla, e questa è la <strong|commutatività>. Quando ripetiamo lo stesso connettivo possiamo anche spostare le parentesi, grazie all'<strong|associatività>. E ripetere due volte la stessa condizione non aggiunge richieste, come dice l'<strong|idempotenza>:

<\equation*>
P∧P≡P,<space|2em>P∨P≡P.
</equation*>

Le costanti permettono altre semplificazioni. Aggiungere a una congiunzione una condizione già vera non cambia nulla, e lo stesso vale se aggiungiamo a una disgiunzione una possibilità sempre falsa. Sono le leggi di <strong|unità>,

<\equation*>
P∧T≡P,<space|2em>P∨F≡P.
</equation*>

Al contrario, una congiunzione con una parte falsa fallisce tutta, e una disgiunzione con una parte vera è vera tutta. Per questo <math|F> e <math|T> si dicono <strong|elementi assorbenti> delle due operazioni:

<\equation*>
P∧F≡F,<space|2em>P∨T≡T.
</equation*>

La <strong|distributività> permette di separare i due casi di una disgiunzione,

<\equation*>
P∧(Q∨R)≡(P∧Q)∨(P∧R),
</equation*>

e vale anche la legge che si ottiene scambiando i ruoli di <math|∧> e <math|∨>.

Le leggi che riguardano la negazione sono forse le più usate. La doppia negazione dice che <math|¬¬P≡P>, e le leggi di De Morgan dicono

<\equation*>
¬(P∧Q)≡¬P∨¬Q,<space|2em>¬(P∨Q)≡¬P∧¬Q.
</equation*>

Si capiscono bene chiedendosi quando una frase fallisce. «Entrambi» fallisce appena fallisce almeno uno dei due, mentre «almeno uno» fallisce soltanto se falliscono entrambi. Allo stesso modo un'implicazione fallisce soltanto quando la premessa è vera e la conclusione falsa, cioè <math|¬(P⇒Q)≡P∧¬Q>. Infine <math|P≡Q> equivale sia a <math|(P⇒Q)∧(Q⇒P)> sia a <math|(P∧Q)∨(¬P∧¬Q)>.

<subsection|Usare le leggi con una meta>

Distribuire a caso raramente aiuta, ma a volte è esattamente la mossa giusta. Vogliamo semplificare <math|P∨(¬P∧Q)>. La lettera <math|P> compare due volte, una volta da sola e una negata, e sappiamo che <math|P∨¬P> è sempre vera. Conviene allora distribuire per avvicinare le due occorrenze:

<\equation*>
P∨(¬P∧Q)≡(P∨¬P)∧(P∨Q)≡T∧(P∨Q)≡P∨Q.
</equation*>

Il primo passo usa la distributività, il secondo il <em|terzo escluso> <math|P∨¬P≡T> e l'ultimo la legge di unità. Abbiamo ottenuto una <strong|legge di complemento>. L'altra legge della stessa famiglia, <math|P∧(¬P∨Q)≡P∧Q>, si dimostra allo stesso modo ed è proposta nella verifica alla fine del capitolo.

Le leggi di <strong|assorbimento> si capiscono quasi a colpo d'occhio:

<\equation*>
P∧(P∨Q)≡P,<space|2em>P∨(P∧Q)≡P.
</equation*>

Nella prima, chiedere <math|P> rende già vera <math|P∨Q>, che quindi non aggiunge nulla. Nella seconda, il caso <math|P∧Q> è già compreso nel caso <math|P>. Non serve imparare tutte le leggi a memoria, perché ogni volta si tratta di cercare quella che rende la formula più semplice.

<subsection|Dalle premesse alla conclusione>

Per dimostrare un'implicazione possiamo assumere la premessa e cercare di arrivare alla conclusione. La regola più semplice è il <strong|modus ponens>: da <math|P⇒Q> e <math|P> segue <math|Q>, perché l'unico caso con <math|Q> falsa renderebbe falsa una delle premesse.

Il <strong|modus tollens> procede all'indietro: da <math|P⇒Q> e <math|¬Q> segue <math|¬P>. Il ragionamento è per assurdo, perché se <math|P> fosse vera costringerebbe anche <math|Q> a esserlo. Lo stesso fatto si esprime con la <strong|controposizione>, <math|(P⇒Q)≡(¬Q⇒¬P)>, che non scambia semplicemente i due lati ma li nega entrambi.

Ci sono altri due schemi che useremo spesso. La prova per assurdo di <math|P⇒Q> assume <math|P∧¬Q>, l'unico caso che potrebbe falsificare l'implicazione, e mostra che porta a una contraddizione. La prova per casi sceglie invece una proposizione <math|R> e dimostra la stessa conclusione sia supponendo <math|R> sia supponendo <math|¬R>, che insieme esauriscono tutte le possibilità.

<section|Implicazione e polarità delle occorrenze>

Sappiamo che <math|x›10⇒x›0>. Dire «maggiore di 10» è più impegnativo che dire «maggiore di 0», perché lo soddisfano meno numeri, e per questo diciamo che è una condizione più <em|forte>. Se dentro la richiesta <math|x›10∧R> la sostituiamo con quella più debole otteniamo una richiesta più facile da soddisfare, e infatti

<\equation*>
(x›10∧R)⇒(x›0∧R).
</equation*>

Sotto una negazione succede il contrario. «Non maggiore di 0» implica «non maggiore di 10», mentre il viceversa fallisce, per esempio con <math|x=5>:

<\equation*>
¬(x›0)⇒¬(x›10).
</equation*>

La negazione ha invertito il verso dell'implicazione. Lo stesso accade a sinistra di una freccia. La richiesta <math|A⇒R> diventa più impegnativa se indeboliamo <math|A>, perché dovremo garantire <math|R> in un numero maggiore di casi.

<subsection|Seguire un'occorrenza nella formula>

Per capire in quale verso agisce una sostituzione, dobbiamo sapere in che posizione si trova la lettera che sostituiamo. Prendiamo come esempio

<\equation*>
Φ=¬(P⇒Q)∧R.
</equation*>

Possiamo leggerne la costruzione come un albero. In cima c'è la congiunzione, a sinistra troviamo una negazione e sotto di essa un'implicazione, mentre a destra troviamo direttamente <math|R>. La tabella riassume la strada che porta a ciascuna lettera.

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.6em>|<cwith|1|-1|1|-1|cell-rsep|0.6em>|<table|<row|<cell|<text|Occorrenza>>|<cell|<text|Percorso dalla congiunzione>>|<cell|<text|Inversioni>>>|<row|<cell|P>|<cell|∧,¬,<text| antecedente di >⇒>|<cell|2>>|<row|<cell|Q>|<cell|∧,¬,<text| conseguente di >⇒>|<cell|1>>|<row|<cell|R>|<cell|∧>|<cell|0>>>>>
</equation*>

Per arrivare a <math|P> attraversiamo prima la negazione e poi il lato sinistro dell'implicazione. Le inversioni sono due, e due inversioni si annullano, quindi diciamo che questa occorrenza è <strong|positiva>. Per arrivare a <math|Q> attraversiamo la stessa negazione ma poi il lato destro dell'implicazione, che non inverte. Resta una sola inversione e l'occorrenza è <strong|negativa>. Per <math|R> non incontriamo inversioni, ed è positiva.

Possiamo controllare il risultato riscrivendo <math|Φ> come <math|(P∧¬Q)∧R>, dove i tre ruoli si vedono a occhio nudo.

<\concetto|Polarità di un'occorrenza>
Partiamo dal segno positivo e seguiamo il percorso fino all'occorrenza scelta. Ogni negazione e ogni passaggio nell'antecedente di <math|⇒> cambia il segno. <math|∧>, <math|∨> e il conseguente lo lasciano invariato. Prima eliminiamo gli eventuali <math|≡>.
</concetto>

Il segno dipende dal posto che una lettera occupa, non dal suo nome, quindi due copie di <math|P> nella stessa formula possono avere segni diversi.

<subsection|Usare il segno per sostituire>

Ora possiamo dire che cosa succede quando sostituiamo. Supponiamo che valga <math|A⇒B>. Se sostituiamo <math|A> con <math|B> in una posizione positiva, la formula iniziale implica quella nuova. In una posizione negativa vale il contrario, e la formula nuova implica quella iniziale.

Per esempio sappiamo che <math|Q∧R⇒Q>. Nel conseguente di <math|P⇒(Q∧R)> non incontriamo inversioni, quindi la sostituzione va nel verso diretto:

<\equation*>
(P⇒(Q∧R))⇒(P⇒Q).
</equation*>

Sappiamo anche che <math|P⇒P∨Q>. Se sostituiamo nell'antecedente di <math|P⇒R> incontriamo un'inversione, e il verso si capovolge:

<\equation*>
((P∨Q)⇒R)⇒(P⇒R).
</equation*>

Il risultato ha senso anche a parole. La formula a sinistra garantisce <math|R> sia quando vale <math|P> sia quando vale <math|Q>, e quindi a maggior ragione lo garantisce nel solo caso <math|P>.

<subsection|Tenere presenti le ipotesi>

Quando abbiamo assunto <math|P> possiamo trattarla come vera, sostituirla con <math|T> e scrivere <math|P∧Q≡T∧Q≡Q>. Bisogna però ricordare che questo risultato dipende dall'ipotesi. Quello che abbiamo dimostrato è

<\equation*>
P⇒((P∧Q)≡Q),
</equation*>

e non l'equivalenza <math|(P∧Q)≡Q> senza condizioni, che infatti è falsa quando <math|P> è falsa e <math|Q> vera.

<section|Per proseguire: forme normali, risoluzione e NAND>

Un <strong|letterale> è una lettera oppure la sua negazione, come <math|p> o <math|¬q>. Una <strong|forma normale congiuntiva> (FNC) è una congiunzione di disgiunzioni di letterali, per esempio

<\equation*>
(p∨¬q)∧r.
</equation*>

Una <strong|forma normale disgiuntiva> (FND) scambia i ruoli, ed è una disgiunzione di congiunzioni di letterali come <math|(p∧q)∨¬r>.

Ogni formula si può portare in queste forme. Si eliminano prima <math|⇒> e <math|≡>, poi si spingono le negazioni fino alle lettere con le leggi di De Morgan e infine si distribuisce. Il procedimento può allungare molto la formula, e la forma che si ottiene non è unica.

<subsection|Risolvere due clausole>

La <strong|risoluzione> parte da due clausole come <math|P∨Q> e <math|¬P∨R> e ne ricava <math|Q∨R>. Il motivo è una prova per casi. Se <math|P> è falsa la prima clausola impone <math|Q>, e se è vera la seconda impone <math|R>, quindi in ogni caso vale almeno una fra <math|Q> e <math|R>.

Con le tre clausole <math|P∨Q>, <math|¬P∨R> e <math|¬Q∨R> possiamo fare due passi. Risolvendo le prime due su <math|P> otteniamo <math|Q∨R>, e risolvendo questa con la terza su <math|Q> otteniamo <math|R>. La risoluzione è alla base di molti metodi automatici di dimostrazione e della programmazione logica.

<subsection|Quanti connettivi sono necessari?>

Abbiamo usato cinque connettivi, ma ne servono davvero così tanti? Un insieme di connettivi si dice <strong|funzionalmente completo> se permette di esprimere ogni funzione booleana, cioè ogni possibile scelta dei risultati in una tavola di verità.

L'insieme <math|{¬,∧}> è completo. Le leggi di De Morgan ci danno <math|∨>, e con una FND possiamo raccogliere esattamente le righe della tavola in cui vogliamo il valore vero. Per la funzione sempre falsa basta <math|P∧¬P>. Per lo stesso motivo è completo <math|{¬,∨}>, e lo è anche <math|{¬,⇒}>, perché <math|P∨Q> si può scrivere come <math|¬P⇒Q>.

Sorprendentemente basta un solo connettivo, il <strong|NAND>, definito da <math|P↑Q≡¬(P∧Q)>. Ricostruiamo prima la negazione e poi la congiunzione,

<\equation*>
P↑P≡¬P,<space|2em>(P↑Q)↑(P↑Q)≡P∧Q,
</equation*>

e così ritroviamo l'insieme completo <math|{¬,∧}>. Nella pratica conviene comunque usare più connettivi, perché le formule restano molto più leggibili.

<\verifica|2>
<strong|1.> Con <math|p>: «piove» ed <math|e>: «esco», traduci «esco solo se non piove». La formula ottenuta implica «se non piove, esco»? Cerca un caso che distingua le due richieste.

<strong|2.> Semplifica <math|P∧(¬P∨Q)> mostrando le leggi usate. Poi stabilisci il segno delle occorrenze di <math|P,Q,R> in <math|(P∨¬Q)⇒¬R>.
</verifica>
