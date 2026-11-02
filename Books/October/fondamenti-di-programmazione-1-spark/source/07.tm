<chapter|Correttezza totale e funzioni di terminazione>

<\inbreve>
Un invariante ci dice che cosa otteniamo se il ciclo finisce, ma tace sul fatto che finisca davvero. Per colmare questa lacuna basta un'idea semplice: trovare una quantità che parte da un numero naturale e scende a ogni giro, e che quindi non può scendere per sempre. Con questa idea completeremo la prova della divisione, impareremo a costruire un invariante per una somma e chiuderemo con un problema geometrico in cui la quantità giusta è tutt'altro che ovvia.
</inbreve>

Nella divisione per sottrazioni ogni giro toglie qualcosa al resto, e già questo ci fa intuire che il ciclo prima o poi debba fermarsi. Per trasformare l'intuizione in una prova dobbiamo dire con precisione che cosa diminuisce e perché non può diminuire all'infinito. L'invariante descrive la relazione che rimane vera durante il calcolo, mentre la quantità che cerchiamo ora, la funzione di terminazione, misura il cammino che resta verso l'uscita.

<section|Una quantità naturale che diminuisce>

Con <math|x=17> e <math|y=5> il resto vale <math|17,12,7,2> ai successivi controlli della guardia. È sempre un intero non negativo, e diminuisce strettamente a ogni giro eseguito. Una sequenza di questo tipo non può essere infinita, perché partendo da un naturale <math|k> ogni diminuzione fra interi toglie almeno 1, e dopo <math|k> diminuzioni non ci sarebbe più spazio senza scendere sotto zero.

<\concetto|Funzione di terminazione>
Una funzione di terminazione associa agli stati considerati una quantità <math|t> intera, definita e non negativa. Se ogni iterazione completata la fa diminuire strettamente, e ogni iterazione termina con successo, il ciclo non può eseguire infinite iterazioni.
</concetto>

<subsection|Perché chiediamo un numero naturale>

La sola diminuzione non basterebbe. La successione di interi <math|0,-1,-2,…> diminuisce a ogni passo senza fermarsi mai, perché manca un limite inferiore. Nemmeno chiedere un numero reale positivo sarebbe sufficiente, dato che <math|1,1/2,1/4,…> è una successione infinita e strettamente decrescente di numeri positivi. Il fatto di lavorare con i naturali, dove i passi hanno almeno ampiezza 1 e c'è un fondo, è quindi una parte essenziale dell'argomento.

<subsection|Confrontare il valore vecchio e quello nuovo>

Per dire che <math|t> diminuisce dobbiamo confrontare il suo valore prima del corpo con quello dopo, e i programmi non ricordano i valori vecchi. La soluzione è la stessa che abbiamo usato per gli ingressi, cioè una variabile di specifica nuova <math|V>, che fotografa il valore di partenza e che nessun comando può modificare. Il progresso si scrive allora

<\equation*>
{I∧E∧t=V}<space|0.5em>C<space|0.5em>{t‹V}.
</equation*>

La tripla non chiede al programma di mantenere <math|t>. Permette soltanto alla prova di confrontare il nuovo valore di <math|t> con quello vecchio, rimasto fissato in <math|V>.

<section|La regola del while in correttezza totale>

Una prova di correttezza totale deve garantire tre cose, cioè che ogni controllo della guardia abbia un valore, che ogni esecuzione del corpo termini senza errori e che le iterazioni siano in numero finito. Per un ciclo <math|W> della forma <tt|while E do C endw> e una specifica <math|{P}<space|0.4em>W<space|0.4em>{Q}>, queste garanzie diventano cinque obblighi di prova.

<\enumerate>
<item><strong|Ingresso.> <math|P⇒I∧<math-up|def>(E)>: prima del primo controllo valgono l'invariante e la definitezza della guardia.

<item><strong|Preservazione.> <math|{I∧E} C {I∧<math-up|def>(E)}> in correttezza totale: il corpo termina con successo e prepara il controllo successivo.

<item><strong|Limite inferiore.> <math|I⇒t≥0>, con <math|t> intera e definita negli stati di <math|I>.

<item><strong|Progresso.> <math|{I∧E∧t=V} C {t‹V}> in correttezza totale, per ogni valore fissato di <math|V>.

<item><strong|Uscita.> <math|I∧¬E⇒Q>: quando il ciclo si ferma, le informazioni rimaste danno il risultato richiesto.
</enumerate>

Gli obblighi si incastrano fra loro in modo naturale. La preservazione assicura che il ragionamento possa ripartire a ogni controllo, con l'invariante vero e la guardia definita. Se la guardia restasse vera per sempre otterremmo infinite diminuzioni strette fra numeri naturali, il che è impossibile, quindi prima o poi incontriamo un controllo falso. A quel punto l'invariante e l'obbligo di uscita ci danno <math|Q>.

Quando il ciclo è preceduto da un'inizializzazione, come quasi sempre accade, il primo obbligo diventa una tripla sul comando iniziale invece di un'implicazione diretta.

<section|Divisione intera: completare la prova>

Riprendiamo la divisione, con l'inizializzazione <tt|q := 0; r := x>, la guardia <math|r≥y> e il corpo <tt|q := q + 1; r := r - y>. L'invariante è <math|I≡(x=qy+r∧r≥0∧y›0)>, e come funzione di terminazione scegliamo il resto, <math|t=r>. La condizione <math|y›0> fa parte dell'invariante perché ci servirà a ogni giro per dimostrare il progresso.

<subsection|Inizializzazione e preservazione>

Dopo l'inizializzazione abbiamo <math|x=0·y+x> e <math|r=x≥0>, quindi l'invariante vale. La guardia confronta soltanto due variabili ed è sempre definita.

Per la preservazione chiamiamo <math|q,r> i valori prima del corpo e <math|q',r'> quelli dopo. Il corpo produce <math|q'=q+1> e <math|r'=r-y>, e quindi

<\equation*>
q'y+r'=(q+1)y+(r-y)=qy+r=x.
</equation*>

La guardia <math|r≥y> ci assicura che <math|r'> non sia negativo, e siccome il corpo non assegna mai <math|y>, anche <math|y›0> rimane vera. Le somme e le sottrazioni sono sempre definite, quindi il corpo termina senza errori e ristabilisce l'invariante.

<subsection|Progresso e risultato>

L'invariante ci dà <math|t=r≥0>, cioè il limite inferiore. Se prima del corpo <math|r=V>, dopo il corpo <math|r'=V-y>, che è strettamente minore di <math|V> proprio perché <math|y›0>. All'uscita la guardia è falsa, quindi <math|r‹y>, e insieme all'invariante otteniamo

<\equation*>
x=qy+r∧0≤r‹y.
</equation*>

È esattamente la caratterizzazione del quoziente e del resto della divisione di <math|x> per <math|y>. Il programma termina e li calcola per ogni <math|x≥0> e <math|y›0>. Vale la pena guardare che cosa succederebbe con <math|y=0>. La guardia diventerebbe <math|r≥0>, che è sempre vera, la sottrazione lascerebbe <math|r> invariato e il ciclo girerebbe per sempre. È l'obbligo di progresso a fallire, e questo spiega concretamente perché l'ipotesi sul divisore è necessaria.

<figura|@IMG(scala)|Per <math|x=17,y=5> il resto scende da 17 a 2. Il limite inferiore e la diminuzione intera spiegano la terminazione; l'invariante spiega il significato del risultato.>

<section|Somma dei primi interi: scegliere l'invariante>

Nel caso della divisione l'invariante si leggeva quasi direttamente nella traccia. Vediamo ora un esempio in cui conviene costruirlo con un po' più di metodo. Vogliamo sommare gli interi da 0 a <math|n-1>, con <math|n≥0> che il programma non modifica. Invece di ricordare tutti gli addendi, teniamo soltanto la somma di quelli già visti e l'indice del prossimo.

<\verbatim>
x := 0; s := 0;<no-page-break>

while x ‹ n do<no-page-break>

<hspace|2.100em>s := s + x;<no-page-break>

<hspace|2.100em>x := x + 1<no-page-break>

endw
</verbatim>

A ogni controllo della guardia, <math|x> è il prossimo intero da aggiungere, e quindi gli addendi già sommati sono <math|0,1,…,x-1>. Questa lettura del programma suggerisce l'invariante

<\equation*>
I≡s=<big|sum><rsub|i=0><rsup|x-1>i∧0≤x≤n.
</equation*>

Quando <math|x=0> la somma è vuota e vale zero, quindi l'inizializzazione stabilisce l'invariante. I limiti su <math|x> hanno due compiti, perché ci permettono di interpretare la parte già percorsa e di riconoscere quando siamo arrivati in fondo.

<subsection|Preparare il giro successivo>

Per verificare la preservazione ragioniamo all'indietro, come abbiamo imparato con le sequenze. Che cosa deve valere prima dell'ultimo comando, <tt|x := x + 1>, perché dopo valga l'invariante? Sostituendo <math|x+1> al posto di <math|x> otteniamo

<\equation*>
s=<big|sum><rsub|i=0><rsup|x>i∧0≤x+1≤n.
</equation*>

Risalendo ancora attraverso <tt|s := s + x>, prima del corpo deve valere

<\equation*>
s+x=<big|sum><rsub|i=0><rsup|x>i∧0≤x+1≤n.
</equation*>

La prima parte segue dall'invariante, grazie all'identità

<\equation*>
<big|sum><rsub|i=0><rsup|x>i=<big|sum><rsub|i=0><rsup|x-1>i+x.
</equation*>

La seconda parte segue dalla guardia, perché <math|x‹n> e <math|0≤x>, con <math|x> e <math|n> interi, danno <math|0≤x+1≤n>. Entrambe le richieste sono soddisfatte, e tutte le espressioni coinvolte sono definite.

<subsection|Quanto lavoro rimane?>

Per la terminazione scegliamo <math|t=n-x>, cioè il numero di addendi ancora da aggiungere. Il limite inferiore viene da <math|x≤n>, che dà <math|t≥0>. Ogni giro aumenta <math|x> di uno e lascia fisso <math|n>, quindi se <math|t> valeva <math|V> ora vale <math|V-1>. All'uscita abbiamo sia <math|x≥n>, dalla guardia falsa, sia <math|x≤n>, dall'invariante, e quindi <math|x=n>, che trasforma l'invariante nella somma richiesta. Se <math|n=0> non si esegue nessun giro e il risultato è correttamente zero.

L'ordine dei due assegnamenti nel corpo è essenziale. Aggiungiamo il vecchio valore di <math|x> e solo dopo lo incrementiamo. Se li scambiassimo sommeremmo gli interi da 1 a <math|n>, che è un problema diverso.

<section|Programmi annotati e proprietà non modificate>

Una prova come quella della somma si può scrivere direttamente sul programma, come una serie di annotazioni nei punti importanti. Prima del <tt|while> indichiamo <math|I> e <math|t=n-x>, all'inizio del corpo <math|I∧x‹n>, fra i due assegnamenti l'asserzione intermedia appena ricavata e dopo il ciclo <math|I∧x≥n>. Queste annotazioni non vengono eseguite, ma dichiarano gli obblighi che chi legge deve poter giustificare.

<subsection|Trasportare ciò che il comando non tocca>

Capita spesso di dover portare attraverso un comando un'informazione che il comando non modifica. Indichiamo con <math|<math-up|change>(C)> l'insieme dei nomi che compaiono come destinazione di un assegnamento in <math|C>. Sono i nomi che il comando potrebbe modificare, anche se in una particolare esecuzione un ramo non viene eseguito. Con <math|<math-up|free>(R)> indichiamo invece le variabili libere dell'asserzione <math|R>. Se

<\equation*>
<math-up|free>(R)∩<math-up|change>(C)=∅,
</equation*>

il comando non tocca nessuna delle variabili di cui <math|R> parla, e quindi la verità di <math|R> non cambia durante un'esecuzione di <math|C> che va a buon fine. Dalla tripla <math|{P} C {Q}> possiamo allora ricavare <math|{R∧P} C {R∧Q}>. Nella divisione, per esempio, il corpo assegna soltanto <math|q> e <math|r>, e per questo <math|y›0> passa intatta da un giro all'altro.

<subsection|Combinare due garanzie>

Due prove dello stesso comando si possono anche combinare. Da <math|{P<rsub|1>} C {Q<rsub|1>}> e <math|{P<rsub|2>} C {Q<rsub|2>}> ricaviamo <math|{P<rsub|1>∧P<rsub|2>} C {Q<rsub|1>∧Q<rsub|2>}>, perché uno stato che soddisfa entrambi gli ingressi gode di entrambe le garanzie sul risultato. Nel nostro linguaggio deterministico c'è una sola esecuzione, e quindi le due conclusioni valgono nello stesso stato finale.

Allo stesso modo, da <math|{P} C {Q}> e <math|{R} C {Q}> ricaviamo <math|{P∨R} C {Q}>. Basta distinguere quale dei due ingressi vale e applicare la prova corrispondente.

<section|Per proseguire: eliminare gli incroci>

Un esempio geometrico mostra che la funzione di terminazione va cercata pensando al problema, e non soltanto guardando il codice. Sul piano ci sono <math|N> punti blu e <math|N> punti rossi, tutti distinti e senza tre punti allineati. Vogliamo abbinare ogni punto blu a un punto rosso con dei segmenti, in modo che nessuna coppia di segmenti si incroci. Il procedimento è semplice. Partiamo da un abbinamento qualsiasi, e finché due segmenti si incrociano li sostituiamo con i due collegamenti che non si incrociano e rispettano i colori.

L'invariante dice che ogni punto appartiene esattamente a un segmento e che ogni segmento unisce colori diversi. Lo scambio lo mantiene, perché ricollega gli stessi quattro estremi, ciascuno una sola volta. Quando il procedimento si ferma non ci sono più incroci, quindi l'obiettivo è raggiunto. Resta da capire perché il procedimento debba fermarsi.

Contare gli incroci sembra la scelta naturale, ma non funziona, perché eliminare l'incrocio scelto può crearne di nuovi con altri segmenti. Proviamo allora con la somma delle lunghezze di tutti i segmenti. Supponiamo che <math|AB> e <math|CD> si incontrino nel punto <math|E> e che i colori permettano i nuovi segmenti <math|AD> e <math|CB>. La disuguaglianza triangolare dà

<\equation*>
ℓ(AD)‹ℓ(AE)+ℓ(ED),<space|1em>ℓ(CB)‹ℓ(CE)+ℓ(EB).
</equation*>

Le disuguaglianze sono strette perché i triangoli coinvolti non sono degeneri, grazie all'ipotesi che non ci siano tre punti allineati. Sommandole troviamo che la nuova lunghezza totale è strettamente minore della vecchia, dato che <math|ℓ(AE)+ℓ(EB)=ℓ(AB)> e <math|ℓ(CE)+ℓ(ED)=ℓ(CD)>, mentre tutti gli altri segmenti restano come erano.

<figura|@IMG(incroci)|I percorsi spezzati che passano per <math|E> sono più lunghi dei nuovi collegamenti rettilinei. Il risparmio riguarda la lunghezza totale.>

C'è però un ostacolo. Le lunghezze sono numeri reali, e abbiamo visto che una quantità reale positiva può diminuire per sempre. Qui ci salva il fatto che i punti sono fissati e gli abbinamenti possibili sono finiti, esattamente <math|N!>, perché a ogni punto blu associamo un punto rosso diverso. Anche i valori che la lunghezza totale può assumere sono quindi in numero finito. Una diminuzione stretta impedisce di tornare a un abbinamento già visto, e perciò non può continuare all'infinito. Abbiamo ottenuto una prova completa di terminazione, basata sulla finitezza degli stati possibili invece che su un numero naturale.

<\verifica|7>
<strong|1.> Per <tt|while i ‹ n do i := i + 1 endw>, con <math|I≡0≤i≤n> e <math|n> fisso, proponi una funzione di terminazione e verifica limite inferiore, progresso e uscita.

<strong|2.> Nel programma della somma scambia i due assegnamenti del corpo. Trova un invariante che descriva la somma ora calcolata e spiega il risultato finale, compreso il caso <math|n=0>.
</verifica>
