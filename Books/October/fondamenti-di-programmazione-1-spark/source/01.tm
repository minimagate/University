<chapter|Algoritmi, specifiche e stati>

<\inbreve>
Prima di scrivere un programma bisogna sapere che cosa deve fare, e non è sempre così ovvio come sembra. In questo capitolo prendiamo una moltiplicazione fatta con sole somme e la usiamo per separare tre cose che di solito si confondono: il risultato che vogliamo, le istruzioni che lo producono e i valori che cambiano durante il calcolo. Alla fine guarderemo più da lontano, chiedendoci che cosa significhi calcolare e se esistano problemi che nessun programma può risolvere.
</inbreve>

Supponiamo di dover calcolare <math|5·3> avendo a disposizione soltanto l'addizione. Possiamo sommare 5 per tre volte e ottenere 15. Il risultato è lo stesso di sempre, ma la strada per arrivarci dipende dalle operazioni che chi esegue il calcolo sa compiere.

Ci sono quindi due domande diverse, che conviene tenere separate fin dall'inizio. La prima riguarda il risultato che vogliamo, la seconda i passi che possono produrlo.

<section|Dal problema alla specifica>

«Trova il numero di telefono di una persona» sembra una richiesta chiarissima. Appena proviamo a eseguirla, però, nascono le domande. Che cosa facciamo se due persone hanno lo stesso nome? E se il nome non compare nell'elenco? Prima di scegliere i passi del calcolo dobbiamo sciogliere queste ambiguità, perché un esecutore automatico non può indovinare che cosa intendevamo.

Una <strong|specifica> serve a questo. Dice quali dati sono ammessi all'inizio e quale relazione deve legare quei dati al risultato. Per il nostro prodotto la specifica è semplice: dati due interi non negativi <math|a> e <math|b>, ottenere <math|ab>. Ammettiamo anche lo zero, che controlleremo esplicitamente. Notiamo che la specifica non dice nulla sugli strumenti da usare, né somme né moltiplicazioni, perché descrive soltanto il traguardo.

Per arrivare a una buona specifica aiuta farsi alcune domande. Quali dati servono davvero? Quali parti del problema possiamo affrontare separatamente? Abbiamo già risolto qualcosa di simile? Sono tre aspetti di ciò che si chiama <strong|pensiero computazionale>, cioè l'<em|astrazione>, la <em|scomposizione> e il riconoscimento di <em|schemi>.

Fissato il traguardo, possiamo cercare una procedura così precisa da poter essere eseguita senza bisogno di interpretazioni. L'informatica studia come progettare e analizzare queste procedure, chiamate algoritmi, e quali problemi si possano risolvere con esse.

<\concetto|Algoritmo e programma>
Un algoritmo descrive un procedimento mediante regole finite, non ambigue ed eseguibili da un esecutore adatto. Un programma lo esprime in un linguaggio di programmazione. Per un problema che richiede un risultato, chiediamo anche che l'esecuzione termini su tutti i dati ammessi e produca quel risultato.
</concetto>

La parola «finite» merita un momento di attenzione. Una regola come «finché rimangono somme da fare, eseguine una» è una sola regola, anche se durante l'esecuzione la usiamo molte volte. Che la descrizione sia finita e che l'esecuzione termini sono quindi due questioni distinte. Una ricetta che dice «aggiungi sale quanto basta», invece, non è un algoritmo, perché lascia indeterminato quando fermarsi, e un esecutore automatico ha bisogno di una condizione precisa.

Il lavoro procede poi per tappe. Dopo la <em|specifica> progettiamo l'algoritmo, lo traduciamo in un linguaggio, cioè lo <em|codifichiamo>, e infine lo eseguiamo. Se qualcosa non va, dobbiamo capire in quale tappa è nato l'errore, che può stare nella richiesta, nel procedimento, nella traduzione o nell'esecuzione. Questa ricerca si chiama <strong|debugging>, e un programma detto debugger aiuta a osservare l'esecuzione un passo alla volta.

Anche i test hanno un limite che conviene conoscere subito. Un test riuscito ci dice che il programma funziona sul caso provato, e nient'altro. Per essere sicuri di tutti i casi ammessi, che spesso sono infiniti, servirà una dimostrazione.

<section|Stato e assegnamento: che cosa cambia>

Torniamo al prodotto per somme e chiediamoci che cosa dobbiamo ricordare durante il calcolo. Ci servono tre informazioni: il numero da aggiungere, quante aggiunte mancano e quanto abbiamo accumulato finora. Chiamiamole <math|A>, <math|B> e <math|C>. Uno <strong|stato> raccoglie i loro valori in un certo momento, e all'inizio è

<\equation*>
σ={A↦5,B↦3,C↦0}.
</equation*>

La scrittura <math|B↦3> associa il nome <math|B> al valore 3. Il nome resta lo stesso per tutto il calcolo e ci permette di ritrovare l'informazione, mentre il valore associato può cambiare.

Ogni nome presente nello stato deve avere un solo valore, altrimenti non sapremmo che cosa leggere. Lo stato <math|{x↦3,y↦3}> va benissimo, perché nomi diversi possono avere lo stesso valore. Lo stato <math|{x↦3,x↦4}> invece non ha senso, perché alla domanda «quanto vale <math|x>?» darebbe due risposte. Non tutti i nomi possibili devono però comparire, e per questo si dice che uno stato è una <strong|funzione parziale> dai nomi ai valori.

Lo strumento che cambia lo stato è l'<strong|assegnamento>. Il comando <math|C:=C+A> legge i valori attuali di <math|C> e di <math|A>, ne calcola la somma e la mette al posto del vecchio valore di <math|C>. Nello stato iniziale ottiene <math|C=5>, mentre <math|A> e <math|B> restano 5 e 3. Non è un'equazione da risolvere, anche se le somiglia: le due <math|C> parlano di due momenti diversi, prima e dopo il comando.

Possiamo ora scrivere tutto il procedimento.

<\verbatim>
C := 0;<no-page-break>

while B › 0 do<no-page-break>

<hspace|1.050em>C := C + A;<no-page-break>

<hspace|1.050em>B := B - 1<no-page-break>

endw
</verbatim>

Il ciclo <tt|while> controlla la sua <em|guardia> <math|B›0> prima di ogni giro. Se la guardia è vera esegue nell'ordine le due istruzioni del corpo e torna al controllo, se è falsa esce senza eseguirle. Così, se <math|B> vale 0 fin dall'inizio, il corpo non viene mai eseguito e il risultato resta 0, che è il prodotto cercato.

<figura|@IMG(quaderno)|Stati ai controlli della guardia per <math|A=5,B=3>. Tra due colonne si eseguono prima l'aggiunta e poi il decremento.>

Ogni scelta del programma ha una ragione. Diminuiamo <math|B> perché ci serve sapere quante aggiunte mancano, e partiamo con <math|C=0> perché prima della prima aggiunta non abbiamo accumulato nulla. Seguendo la figura, dopo il primo giro abbiamo fatto una somma e ne mancano due, dopo il secondo abbiamo 10 e ne manca una, dopo il terzo abbiamo 15 e non ne manca nessuna.

<subsection|Ricordare il prodotto iniziale>

Per controllare il risultato dobbiamo ricordarci da dove siamo partiti, anche se il programma cambia le sue variabili. Chiamiamo quindi <math|a> il valore iniziale di <math|A> e <math|b> quello di <math|B>. Sono <strong|valori di specifica>: non compaiono nel programma e rimangono fissi per tutto il ragionamento.

Con <math|a=5> e <math|b=3>, dopo il primo giro abbiamo già prodotto 5 e ci restano due aggiunte da 5. Se sommiamo la parte calcolata e quella ancora da calcolare ritroviamo il prodotto iniziale,

<\equation*>
5+5·2=15.
</equation*>

Questa osservazione non dipende dai numeri scelti. A ogni controllo della guardia vale

<\equation*>
C+AB=ab.
</equation*>

All'inizio è vera, perché <math|C=0>, <math|A=a> e <math|B=b>. Durante un giro aggiungiamo <math|A> a <math|C> e togliamo 1 a <math|B>, cioè la parte calcolata cresce di <math|A> esattamente quando la parte mancante cala di <math|A>. Il conto lo conferma:

<\equation*>
(C+A)+A(B-1)=C+AB.
</equation*>

Quando il ciclo si ferma abbiamo <math|B=0>, e l'uguaglianza diventa <math|C=ab>, il risultato che volevamo. Il ciclo si ferma davvero, perché <math|B> parte da un naturale e scende di 1 a ogni giro finché arriva a zero.

Una proprietà che rimane vera a ogni giro in questo modo si chiama <strong|invariante>. La incontreremo di nuovo nei capitoli 6 e 7, dove impareremo a dimostrarla con metodo e a usarla nelle prove dei cicli.

C'è un dettaglio che vale la pena notare. Scrivere come richiesta finale «<math|C=AB>» sarebbe sbagliato, perché alla fine <math|B=0> e quel prodotto non ricorda più nulla dell'ingresso. La richiesta corretta è <math|C=ab>, che parla dei valori iniziali. Se poi volessimo anche lasciare intatti gli ingressi, dovremmo dirlo nella specifica e far scendere un contatore ausiliario al posto di <math|B>.

<section|Algoritmi diversi, costi diversi>

Il prodotto per somme richiede <math|b> giri, e con numeri grandi sono molti. Possiamo fare meglio sfruttando una regolarità dei numeri. Se il primo fattore è pari, dimezzarlo e raddoppiare il secondo non cambia il prodotto. Se è dispari e maggiore di 1, togliamo un'unità e mettiamo da parte una copia del secondo fattore. Con <math|13·11> otteniamo

<\equation*>
13·11=12·11+11=6·22+11=3·44+11.
</equation*>

Continuando allo stesso modo, <math|3·44=2·44+44=1·88+44>, e il risultato è <math|88+44+11=143>. È la moltiplicazione egizia richiamata nella lezione introduttiva, un procedimento antichissimo che mostra bene come una proprietà dei numeri possa diventare un algoritmo più rapido.

Un secondo esempio viene dalla ricerca in un elenco ordinato. Invece di scorrere i nomi uno per uno, confrontiamo quello cercato con il nome centrale. Se il cercato viene prima, possiamo scartare tutti i nomi successivi, e se viene dopo scartiamo tutti i precedenti. È l'ordinamento a renderci liberi di scartare metà elenco, e senza di esso questo passo non sarebbe lecito.

<figura|@IMG(ricerca-binaria,0.9)|Ricerca di 47: i valori confrontati sono 33, 51, 42, 47. La zona attiva si restringe perché i valori sono ordinati.>

Se contiamo come un passo ogni confronto con l'elemento centrale, a ogni passo i candidati si riducono circa della metà, mentre la ricerca sequenziale li esamina uno alla volta. Entrambi i metodi trovano il nome giusto, ma uno impiega molti meno passi. Dire che un algoritmo è corretto, dunque, non dice ancora quanto costa eseguirlo, perché <strong|correttezza> ed <strong|efficienza> sono proprietà diverse.

<section|Modelli di calcolo e limiti>

Finora abbiamo parlato di «esecutore» in modo intuitivo. Possiamo rendere precisa questa idea senza costruire un calcolatore fisico. Una <strong|macchina di Turing> ha un nastro di simboli, una testina e un insieme finito di regole, e a ogni passo legge un simbolo, ne scrive uno, si sposta e cambia il proprio stato di controllo.

Fra le macchine di Turing ce n'è una speciale, la <strong|macchina universale>. Riceve la descrizione di un'altra macchina insieme al suo ingresso e ne simula il comportamento. È l'idea che sta dietro ai nostri calcolatori, dove uno stesso esecutore può svolgere programmi diversissimi.

<subsection|Modi diversi di descrivere il calcolo>

Il <strong|λ-calcolo> di Church descrive il calcolo in un modo che non somiglia affatto a un nastro, usando soltanto funzioni e applicazioni di funzioni. Eppure i due modelli calcolano esattamente le stesse funzioni, e la loro equivalenza è un teorema.

La <strong|tesi di Church–Turing> fa un passo ulteriore e afferma che questi modelli catturano tutti i procedimenti che intuitivamente chiameremmo calcoli eseguibili. Si chiama tesi e non teorema perché la nozione intuitiva di calcolo non ha una definizione matematica indipendente con cui confrontarla.

L'architettura di <strong|von Neumann>, su cui si basano i calcolatori di oggi, tiene in memoria sia i dati sia le istruzioni. Quando ne discutiamo la capacità teorica di calcolo immaginiamo una memoria estendibile a piacere, anche se un calcolatore reale ha naturalmente risorse finite. Il corso cita anche altri modelli, come i sistemi di Post e le funzioni ricorsive, e accenna ai modelli quantistici e biologici, che qui ci limitiamo a nominare.

<subsection|Una richiesta che nessun algoritmo risolve in generale>

Viene spontaneo pensare che ogni richiesta precisa si possa risolvere con un algoritmo, ma non è così. Il <strong|problema dell'arresto> chiede di decidere, per ogni programma e ogni ingresso, se l'esecuzione terminerà. Si dimostra che è indecidibile: non esiste alcun algoritmo che termini sempre e dia sempre la risposta corretta su tutti questi casi. Questo non ci impedisce di dimostrare che un programma particolare termina, ed è esattamente ciò che faremo nei capitoli 7 e 8.

<subsection|Come si organizza un programma>

Lo stesso calcolo si può organizzare in modi molto diversi, chiamati <strong|paradigmi di programmazione>. La tabella raccoglie quelli citati nel corso.

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.6em>|<cwith|1|-1|1|-1|cell-rsep|0.6em>|<table|<row|<cell|<text|Paradigma>>|<cell|<text|Idea principale>>>|<row|<cell|<text|Imperativo, come C>>|<cell|<text|Comandi che cambiano lo stato>>>|<row|<cell|<text|Funzionale>>|<cell|<text|Funzioni e applicazioni>>>|<row|<cell|<text|A oggetti>>|<cell|<text|Oggetti che raccolgono dati e operazioni>>>|<row|<cell|<text|Logico, come Prolog>>|<cell|<text|Relazioni e inferenze>>>|<row|<cell|<text|Concorrente>>|<cell|<text|Processi che interagiscono>>>>>>
</equation*>

Nel resto del libro ci occuperemo del paradigma imperativo, quello dei comandi che cambiano lo stato. Prima di studiarne gli altri comandi, però, ci serve un modo preciso per descrivere le proprietà degli stati, e questo è il compito della logica.

<\verifica|1>
<strong|1.> Nell'algoritmo del prodotto, parti da <math|A=4,B=2>. Scrivi gli stati ai controlli della guardia, spiega il ruolo di <math|C> e indica perché <math|C=AB> non è la richiesta finale corretta.

<strong|2.> Vuoi ottenere il maggiore fra due interi senza modificare gli ingressi. Scrivi una specifica che distingua ingressi, risultato e vincoli. Spiega perché la richiesta non stabilisce ancora l'algoritmo.
</verifica>
