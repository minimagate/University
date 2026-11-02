<chapter|Algoritmi, specifiche e stati>

<\inbreve>
Come si passa da una richiesta a un programma? Partiamo da una moltiplicazione fatta con sole somme. Distingueremo il risultato che vogliamo ottenere, le istruzioni da eseguire e i valori che cambiano durante il calcolo.
</inbreve>

Vogliamo calcolare <math|5·3> usando soltanto somme. Possiamo sommare 5 tre volte: il risultato è sempre 15, ma il procedimento dipende dalle operazioni che l’esecutore sa compiere.

Distinguiamo quindi due domande: quale risultato vogliamo? Quali passi possono produrlo?

<section|Dal problema alla specifica>

«Trova il numero di telefono di una persona» sembra una richiesta chiara. Ma che cosa accade se due persone hanno lo stesso nome? E se il nome non compare? Per programmare dobbiamo sciogliere queste ambiguità prima di scegliere i passi del calcolo.

Una <strong|specifica> descrive quali dati sono ammessi all'inizio e quale relazione deve esserci fra questi dati e il risultato. Per il prodotto: dati due interi non negativi <math|a,b>, ottenere <math|ab>. Abbiamo esteso l'esempio positivo delle lezioni al caso zero, che potremo controllare esplicitamente. La specifica non impone ancora somme, moltiplicazioni o altri strumenti.

Per precisare un problema possiamo chiederci quali dati servono, quali parti possiamo affrontare separatamente e se abbiamo già risolto qualcosa di simile. Sono tre aspetti del <strong|pensiero computazionale>: <em|astrazione>, <em|scomposizione> e riconoscimento di <em|schemi>.

Il passo successivo è scrivere una procedura così precisa da poter essere eseguita automaticamente. L’informatica studia come progettare e analizzare queste procedure, chiamate algoritmi, e quali problemi possiamo risolvere con esse.

<\concetto|Algoritmo e programma>
Un algoritmo descrive un procedimento mediante regole finite, non ambigue ed eseguibili da un esecutore adatto. Un programma lo esprime in un linguaggio di programmazione. Per un problema che richiede un risultato, chiediamo anche che l'esecuzione termini su tutti i dati ammessi e produca quel risultato.
</concetto>

Una descrizione finita può contenere una ripetizione: «finché rimangono somme, eseguine una» è una sola regola, anche se viene usata molte volte. La finitezza della descrizione e la terminazione dell'esecuzione sono quindi due questioni distinte. «Aggiungi sale quanto basta» lascia invece indeterminato il controllo da eseguire: per un esecutore automatico occorre una condizione precisa.

Una volta precisata la <em|specifica>, progettiamo l’algoritmo. Poi lo traduciamo in un linguaggio, cioè lo <em|codifichiamo>, e lo eseguiamo.

Se qualcosa non funziona, cerchiamo dove nasce l’errore: nella richiesta, nel procedimento, nella traduzione o nell’esecuzione. Questa ricerca si chiama <strong|debugging>; un debugger aiuta a osservare i singoli passi.

Un test riuscito conferma il risultato sul caso provato. Per garantire tutti i casi ammessi servirà invece una dimostrazione.

<section|Stato e assegnamento: che cosa cambia>

Nel prodotto per somme ci servono tre informazioni: il valore da aggiungere, quante aggiunte restano e quanto abbiamo già accumulato. Chiamiamole <math|A,B,C>. Uno stato raccoglie i loro valori in un certo momento:

<\equation*>
σ={A↦5,B↦3,C↦0}.
</equation*>

La scrittura <math|B↦3> associa il nome <math|B> al valore 3. Il nome permette di ritrovare l’informazione; il valore può cambiare.

Ogni nome presente deve avere un solo valore. Alcuni nomi possono invece mancare: diciamo perciò che lo stato è una <strong|funzione parziale> dai nomi ai valori.

Lo stato <math|{x↦3,y↦3}> è ammesso: nomi diversi possono avere lo stesso valore. <math|{x↦3,x↦4}> non lo è: quale valore dovremmo leggere per <math|x>?

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

Perché diminuire <math|B>? Per ricordare quante aggiunte mancano. Perché iniziare <math|C> da zero? Prima della prima aggiunta non abbiamo ancora accumulato nulla. Dopo il primo giro abbiamo fatto una somma e ne restano due; dopo il secondo abbiamo 10 e ne resta una; dopo il terzo abbiamo 15 e non ne resta nessuna.

<subsection|Ricordare il prodotto iniziale>

Per controllare il risultato dobbiamo ricordare i valori di partenza. Chiamiamo <math|a> il valore iniziale di <math|A> e <math|b> quello di <math|B>. Sono <strong|valori di specifica>: restano fissati mentre il programma cambia le sue variabili.

Con <math|a=5,b=3>, dopo il primo giro abbiamo prodotto 5 e restano due aggiunte da 5. La parte già calcolata e quella da calcolare danno ancora il prodotto iniziale:

<\equation*>
5+5·2=15.
</equation*>

In generale, ai controlli della guardia vogliamo conservare

<\equation*>
C+AB=ab.
</equation*>

All’inizio è vera, perché <math|C=0,A=a,B=b>. In un giro aggiungiamo <math|A> a <math|C> e togliamo 1 a <math|B>. L’aumento della parte calcolata compensa la diminuzione della parte rimasta:

<\equation*>
(C+A)+A(B-1)=C+AB.
</equation*>

Quando <math|B=0>, l’uguaglianza diventa <math|C=ab>: è il risultato cercato. Quel momento viene raggiunto perché <math|B> parte da un naturale e scende di 1 finché arriva a zero.

Una proprietà che si conserva in questo modo si chiama <strong|invariante>. La ritroveremo nei capitoli 6 e 7, dove impareremo a dimostrarla e a usarla nelle prove dei cicli.

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

Possiamo rendere precisa l'idea di esecutore senza costruire un calcolatore fisico. Una <strong|macchina di Turing> usa un nastro di simboli, una testina e regole finite; può leggere, scrivere e cambiare posizione e stato di controllo. 

La <strong|macchina universale> riceve la descrizione di un'altra macchina e il suo ingresso e ne simula il comportamento: uno stesso esecutore può svolgere programmi diversi.

<subsection|Modi diversi di descrivere il calcolo>

Il <strong|λ-calcolo> di Church descrive il calcolo attraverso funzioni e applicazioni. Ha una forma diversa dalla macchina di Turing, ma i due modelli calcolano le stesse funzioni: la loro equivalenza è un teorema.

La <strong|tesi di Church–Turing> afferma che questi modelli descrivono tutti i procedimenti che intendiamo intuitivamente come calcoli eseguibili. La chiamiamo tesi perché la nozione intuitiva non ha una definizione matematica indipendente.

L’architettura di <strong|von Neumann> conserva dati e istruzioni in memoria. Quando discutiamo la sua capacità astratta di calcolo assumiamo una memoria estendibile; un calcolatore reale ha invece risorse finite.

Il corso cita anche sistemi di Post e funzioni ricorsive come altri modelli di calcolo. I modelli quantistici e biologici sono qui soltanto richiamati: il volume non ne confronta l’efficienza.

<subsection|Una richiesta che nessun algoritmo risolve in generale>

Non ogni richiesta precisa ammette un algoritmo generale. Il <strong|problema dell'arresto> chiede di decidere, per ogni programma e ogni ingresso, se l'esecuzione terminerà. È indecidibile: non esiste un algoritmo che dia sempre la risposta corretta e termini su tutti questi casi. Ciò non impedisce di dimostrare la terminazione di specifici programmi, come faremo nei capitoli 7 e 8.

<subsection|Come si organizza un programma>

Possiamo organizzare il calcolo in modi diversi, chiamati <strong|paradigmi di programmazione>. La tabella raccoglie quelli citati nel corso.

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.6em>|<cwith|1|-1|1|-1|cell-rsep|0.6em>|<table|<row|<cell|<text|Paradigma>>|<cell|<text|Idea principale>>>|<row|<cell|<text|Imperativo, come C>>|<cell|<text|Comandi che cambiano lo stato>>>|<row|<cell|<text|Funzionale>>|<cell|<text|Funzioni e applicazioni>>>|<row|<cell|<text|A oggetti>>|<cell|<text|Oggetti che raccolgono dati e operazioni>>>|<row|<cell|<text|Logico, come Prolog>>|<cell|<text|Relazioni e inferenze>>>|<row|<cell|<text|Concorrente>>|<cell|<text|Processi che interagiscono>>>>>>
</equation*>

Ci concentreremo sul paradigma imperativo. Prima di studiarne gli altri comandi, dobbiamo imparare a esprimere con precisione le proprietà degli stati: è il compito della logica.

<\verifica|1>
<strong|1.> Nell'algoritmo del prodotto, parti da <math|A=4,B=2>. Scrivi gli stati ai controlli della guardia, spiega il ruolo di <math|C> e indica perché <math|C=AB> non è la richiesta finale corretta.

<strong|2.> Vuoi restituire il maggiore fra due interi, conservando gli ingressi. Scrivi una specifica che distingua ingressi, risultato e vincoli. Spiega perché la richiesta non stabilisce ancora l'algoritmo.
</verifica>
