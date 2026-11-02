<chapter|Algoritmi, specifiche e stati>

Vogliamo calcolare <math|5·3>. Una calcolatrice può moltiplicare direttamente. Un esecutore che conosce soltanto somme, sottrazioni e confronti deve fare altro: sommare 5 tre volte. Il risultato richiesto è lo stesso, ma il procedimento dipende dalle operazioni disponibili. Da questa distinzione nasce il primo pilastro del libro: separare <em|che cosa> vogliamo ottenere da <em|come> lo otteniamo.

<section|Dal problema alla specifica>

«Trova il numero di telefono di una persona» sembra una richiesta chiara. Ma che cosa accade se due persone hanno lo stesso nome? E se il nome non compare? Per programmare dobbiamo sciogliere queste ambiguità prima di scegliere i passi del calcolo.

Una <strong|specifica> descrive quali dati sono ammessi all'inizio e quale relazione deve esserci fra questi dati e il risultato. Per il prodotto: dati due interi non negativi <math|a,b>, ottenere <math|ab>. Abbiamo esteso l'esempio positivo delle lezioni al caso zero, che potremo controllare esplicitamente. La specifica non impone ancora somme, moltiplicazioni o altri strumenti.

Il <strong|pensiero computazionale> aiuta a precisarla. Facciamo <em|astrazione> quando conserviamo soltanto i dati rilevanti; <em|scomposizione> quando dividiamo il compito in parti; riconosciamo <em|schemi> quando due problemi ammettono la stessa struttura di soluzione. Costruiamo infine una procedura abbastanza precisa da poter essere automatizzata. L'informatica studia questi algoritmi, la loro progettazione e analisi, le loro possibilità e i loro limiti.

<\concetto|Algoritmo e programma>
Un algoritmo descrive un procedimento mediante regole finite, non ambigue ed eseguibili da un esecutore adatto. Un programma lo esprime in un linguaggio di programmazione. Per un problema che richiede un risultato, chiediamo anche che l'esecuzione termini su tutti i dati ammessi e produca quel risultato.
</concetto>

Una descrizione finita può contenere una ripetizione: «finché rimangono somme, eseguine una» è una sola regola, anche se viene usata molte volte. La finitezza della descrizione e la terminazione dell'esecuzione sono quindi due questioni distinte. «Aggiungi sale quanto basta» lascia invece indeterminato il controllo da eseguire: per un esecutore automatico occorre una condizione precisa.

Il lavoro si articola in specifica, progetto dell'algoritmo, codifica ed esecuzione. Se qualcosa non funziona, il <strong|debugging> cerca dove nasce l'errore: nella richiesta, nel procedimento, nella traduzione o nei singoli passi. Un debugger aiuta a osservare l'esecuzione; un test riuscito ci informa sul caso provato. Per garantire tutti i casi ammessi servirà una dimostrazione.

<section|Stato e assegnamento: che cosa cambia>

Nel prodotto per somme ci servono tre informazioni: il valore da aggiungere, quante aggiunte restano e quanto abbiamo già accumulato. Chiamiamole <math|A,B,C>. Uno stato raccoglie i loro valori in un certo momento:

<\equation*>
σ={A↦5,B↦3,C↦0}.
</equation*>

La scrittura <math|B↦3> significa che il nome <math|B> è associato al valore 3. Il nome ci permette di ritrovare l'informazione; il valore può cambiare. Lo stato è una funzione parziale dai nomi ai valori: a ogni nome associa al più un valore, mentre alcuni nomi possono non comparire. <math|{x↦3,y↦3}> è ammesso, perché nomi diversi possono avere lo stesso valore; <math|{x↦3,x↦4}> non lo è, perché la lettura di <math|x> sarebbe ambigua.

L'<strong|assegnamento> <math|C:=C+A> legge i valori correnti di <math|C> e <math|A>, ne calcola la somma e sostituisce il valore di <math|C>. Nello stato precedente ottiene <math|C=5>. Non è un'equazione da risolvere: i due usi di <math|C> riguardano due momenti diversi. Il valore di <math|A> resta 5 e quello di <math|B> resta 3.

Possiamo dunque scrivere il procedimento:

<\verbatim>
C := 0;<no-page-break>

while B › 0 do<no-page-break>

<hspace|1.050em>C := C + A;<no-page-break>

<hspace|1.050em>B := B - 1<no-page-break>

endw
</verbatim>

La guardia <math|B›0> viene controllata prima di ogni giro. Se è vera, si eseguono nell'ordine le due istruzioni; poi si torna al controllo. Se è falsa, si esce senza eseguire il corpo. Con <math|B=0> all'inizio il risultato resta 0: il caso zero è già compreso.

<figura|@IMG(quaderno)|Stati ai controlli della guardia per <math|A=5,B=3>. Tra due colonne si eseguono prima l'aggiunta e poi il decremento.>

Perché diminuire <math|B>? Per ricordare quante aggiunte mancano. Perché iniziare <math|C> da zero? Perché prima di ogni aggiunta non abbiamo ancora accumulato nulla. Dopo il primo giro abbiamo fatto una somma e ne restano due; dopo il secondo abbiamo 10 e ne resta una; dopo il terzo abbiamo 15 e non ne resta nessuna.

Per controllare tutti i casi, vorremmo conservare il valore iniziale del contatore. Lo chiamiamo <math|b>; analogamente chiamiamo <math|a> il valore iniziale di <math|A>. Questi sono <strong|valori di specifica>, non caselle aggiornate dal programma. A ogni controllo la quantità già prodotta, <math|C>, più quella ancora da produrre, <math|AB>, vale <math|ab>. Questa osservazione anticipa il metodo degli <em|invarianti>, che costruiremo nel capitolo 6. All'inizio vale <math|0+ab=ab>. In un giro aggiungiamo <math|A> a <math|C> e togliamo 1 a <math|B>: la parte accumulata cresce esattamente di quanto cala quella ancora da produrre. In simboli, <math|(C+A)+A(B-1)=C+AB>. Quando <math|B=0>, resta <math|C=ab>. Inoltre <math|B> è un naturale che diminuisce di 1 a ogni giro, quindi quel momento viene raggiunto.

Non basta scrivere alla fine «<math|C=AB>»: nello stato finale <math|B=0>, quindi quel prodotto non ricorda più l'ingresso. La richiesta corretta è <math|C=ab>. Se vogliamo preservare anche gli ingressi, dobbiamo dichiararlo nella specifica e usare un contatore ausiliario.

<section|Algoritmi diversi, costi diversi>

Il prodotto per somme impiega <math|b> giri. Possiamo sfruttare una regolarità per ridurli. Se il primo fattore è pari, dimezzarlo e raddoppiare il secondo conserva il prodotto. Se è dispari e maggiore di 1, togliamo un'unità e mettiamo da parte una copia del secondo fattore. Con <math|13·11> otteniamo:

<\equation*>
13·11=12·11+11=6·22+11=3·44+11.
</equation*>

Ora <math|3·44=2·44+44=1·88+44>, quindi il risultato è <math|88+44+11=143>. È l'idea della moltiplicazione egizia richiamata nella lezione introduttiva: un procedimento antico mette in luce come usare proprietà dei numeri per progettare un algoritmo.

Un secondo esempio è la ricerca in un elenco ordinato. Confrontiamo il nome cercato con quello centrale. Se il cercato viene prima, tutti i nomi successivi possono essere esclusi; se viene dopo, escludiamo tutti i precedenti. L'ordine giustifica lo scarto. Senza ordinamento, eliminare una metà non sarebbe lecito.

<figura|@IMG(ricerca-binaria,0.9)|Ricerca di 47: i valori confrontati sono 33, 51, 42, 47. La zona attiva si restringe perché i valori sono ordinati.>

Qui contiamo un confronto a tre esiti con l'elemento centrale come un passo. Il numero dei candidati si riduce circa della metà, mentre in una ricerca sequenziale si esaminano uno dopo l'altro. Dire che un algoritmo è corretto non dice ancora quanto costa eseguirlo: <strong|correttezza> ed <strong|efficienza> sono proprietà diverse.

<section|Modelli di calcolo e limiti>

Possiamo rendere precisa l'idea di esecutore senza costruire un calcolatore fisico. Una <strong|macchina di Turing> usa un nastro di simboli, una testina e regole finite; può leggere, scrivere e cambiare posizione e stato di controllo. La macchina universale riceve la descrizione di un'altra macchina e il suo ingresso e ne simula il comportamento: uno stesso esecutore può svolgere programmi diversi.

Il <strong|λ-calcolo> di Church descrive invece il calcolo attraverso funzioni e applicazioni. Pur avendo forme diverse, i due formalismi calcolano le stesse funzioni. La <strong|tesi di Church–Turing> identifica la nozione intuitiva di procedimento effettivo con quella formalizzata da questi modelli. È una tesi, perché uno dei due termini del confronto è intuitivo; l'equivalenza fra i modelli formali è invece un risultato matematico.

L'architettura di <strong|von Neumann> conserva dati e istruzioni in memoria. Quando ne discutiamo la capacità astratta di calcolo assumiamo memoria estendibile: un dispositivo reale ha risorse finite. Altri modelli citati nel corso, come sistemi di Post e funzioni ricorsive, illuminano lo stesso concetto; modelli quantistici e biologici vengono qui richiamati soltanto come prospettive sul calcolo, senza confrontarne l'efficienza.

Non ogni richiesta precisa ammette un algoritmo generale. Il <strong|problema dell'arresto> chiede di decidere, per ogni programma e ogni ingresso, se l'esecuzione terminerà. È indecidibile: non esiste un algoritmo che dia sempre la risposta corretta e termini su tutti questi casi. Ciò non impedisce di dimostrare la terminazione di specifici programmi, come faremo nei capitoli 7 e 8.

Un linguaggio può organizzare il calcolo mediante comandi che cambiano lo stato (<em|paradigma imperativo>, come C), funzioni (<em|funzionale>), oggetti (<em|a oggetti>), relazioni e inferenze (<em|logico>, come Prolog), oppure processi che interagiscono (<em|concorrente>). Il nostro percorso si concentra sulla programmazione imperativa. Prima di introdurre altri comandi, dobbiamo imparare a esprimere le proprietà degli stati: è il compito della logica.

<\verifica|1>
<strong|1.> Nell'algoritmo del prodotto, parti da <math|A=4,B=2>. Scrivi gli stati ai controlli della guardia, spiega il ruolo di <math|C> e indica perché <math|C=AB> non è la richiesta finale corretta.

<strong|2.> Vuoi restituire il maggiore fra due interi, conservando gli ingressi. Scrivi una specifica che distingua ingressi, risultato e vincoli. Spiega perché la richiesta non stabilisce ancora l'algoritmo.
</verifica>
