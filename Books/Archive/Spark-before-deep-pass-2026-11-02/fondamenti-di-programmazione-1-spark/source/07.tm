<chapter|Correttezza totale e funzioni di terminazione>

Nella divisione ogni sottrazione riduce il resto. Questo fatto suggerisce perché il ciclo debba finire, ma dobbiamo precisare che cosa diminuisce e perché non può diminuire per sempre. L'invariante descrive la relazione che vogliamo conservare; una funzione di terminazione descrive il progresso verso l'uscita.

<section|Una quantità naturale che diminuisce>

Con <math|x=17,y=5>, il resto ai controlli è <math|17,12,7,2>. È sempre un intero non negativo e diminuisce strettamente a ogni giro eseguito. Una sequenza di questo genere non può essere infinita: partendo da un naturale <math|k>, dopo ogni diminuzione intera si perde almeno uno, quindi non si possono compiere più di <math|k> diminuzioni senza scendere sotto zero.

<\concetto|Funzione di terminazione>
Una funzione di terminazione associa agli stati considerati una quantità <math|t> intera, definita e non negativa. Se ogni iterazione completata la fa diminuire strettamente, e ogni iterazione termina con successo, il ciclo non può eseguire infinite iterazioni.
</concetto>

La sola diminuzione non basta. La successione di interi <math|0,-1,-2,…> diminuisce senza fermarsi; serve il limite inferiore. Neppure essere reale e positivo basta: <math|1,1/2,1/4,…> è una successione infinita strettamente decrescente. La scelta dei naturali contiene quindi una parte essenziale dell'argomento.

Per confrontare il valore prima e dopo il corpo usiamo una variabile di specifica fresca <math|V>. Nella premessa <math|t=V> essa memorizza il valore di partenza; nessun comando può modificarla. Il progresso si scrive

<\equation*>
{I∧E∧t=V}<space|0.5em>C<space|0.5em>{t‹V}.
</equation*>

Non significa che il programma debba conservare <math|t>. Significa che la prova può confrontare il nuovo valore di <math|t> con il suo valore vecchio, rimasto fissato in <math|V>.

<section|La regola del while in correttezza totale>

Una prova totale deve garantire tre fatti: ogni controllo della guardia ha valore; ogni corpo che viene iniziato termina con successo; il numero di iterazioni è finito. Ecco gli obblighi per <math|{P}<space|0.4em>W<space|0.4em>{Q}>, dove <math|W> è <tt|while E do C endw>:

<\enumerate>
<item><strong|Ingresso.> <math|P⇒I∧<math-up|def>(E)>: prima del primo controllo valgono l'invariante e la definitezza della guardia.

<item><strong|Preservazione.> <math|{I∧E} C {I∧<math-up|def>(E)}> in correttezza totale: il corpo termina con successo e prepara il controllo successivo.

<item><strong|Limite inferiore.> <math|I⇒t≥0>, con <math|t> intera e definita negli stati di <math|I>.

<item><strong|Progresso.> <math|{I∧E∧t=V} C {t‹V}> in correttezza totale, per ogni valore fissato di <math|V>.

<item><strong|Uscita.> <math|I∧¬E⇒Q>: quando il ciclo si ferma, le informazioni rimaste danno il risultato richiesto.
</enumerate>

La preservazione garantisce che il ragionamento possa continuare a ogni controllo. Se la guardia rimanesse sempre vera, otterremmo infinite diminuzioni fra naturali, impossibili. Dunque incontriamo un controllo falso; l'invariante e l'uscita danno <math|Q>. Quando un'inizializzazione precede il ciclo, il primo obbligo è una tripla sul comando iniziale, anziché un'implicazione diretta.

<section|Divisione intera: completare la prova>

Riprendiamo <tt|q := 0; r := x> e il corpo <tt|q := q + 1; r := r - y>, con guardia <math|r≥y>. L'invariante è <math|I≡(x=qy+r∧r≥0∧y›0)> e scegliamo <math|t=r>. La positività di <math|y> compare nell'invariante perché la useremo per dimostrare il progresso a ogni giro.

L'inizializzazione stabilisce <math|x=0·y+x> e <math|r=x≥0>. La guardia contiene solo un confronto fra variabili e quindi è definita. Per la preservazione indichiamo con <math|q,r> i valori prima del corpo e con <math|q',r'> quelli dopo. La sequenza produce <math|q'=q+1> e <math|r'=r-y>. Perciò

<\equation*>
q'y+r'=(q+1)y+(r-y)=qy+r=x.
</equation*>

La guardia <math|r≥y> assicura <math|r'≥0>. Il corpo non assegna a <math|y>, quindi <math|y›0> resta vera. Somma e sottrazione sono definite e terminano: la preservazione è totale.

Dall'invariante abbiamo <math|t=r≥0>. Se prima del corpo <math|r=V>, dopo vale <math|r'=V-y‹V>, perché <math|y›0>. Abbiamo così la diminuzione stretta. All'uscita la guardia falsa dà <math|r‹y>; insieme all'invariante otteniamo

<\equation*>
x=qy+r∧0≤r‹y.
</equation*>

Questa è precisamente la caratterizzazione del quoziente e del resto della divisione di <math|x> per <math|y>. Il programma termina e li calcola per ogni <math|x≥0,y›0>. Con <math|y=0>, invece, la guardia sarebbe sempre vera e la sottrazione non cambierebbe <math|r>: fallirebbe il progresso. L'ipotesi sul divisore ha dunque un motivo concreto.

<figura|@IMG(scala)|Per <math|x=17,y=5> il resto scende da 17 a 2. Il limite inferiore e la diminuzione intera spiegano la terminazione; l'invariante spiega il significato del risultato.>

<section|Somma dei primi interi: scegliere l'invariante>

Vogliamo sommare gli interi da 0 a <math|n-1>, con <math|n≥0> non modificato. Invece di memorizzare tutti gli addendi, teniamo la somma degli addendi già attraversati e l'indice del prossimo:

<\verbatim>
x := 0; s := 0;<no-page-break>

while x ‹ n do<no-page-break>

<hspace|2.100em>s := s + x;<no-page-break>

<hspace|2.100em>x := x + 1<no-page-break>

endw
</verbatim>

Prima del controllo, <math|x> è il prossimo intero da aggiungere. Gli addendi già inclusi sono dunque <math|0,1,…,x-1>. Questa lettura suggerisce

<\equation*>
I≡s=<big|sum><rsub|i=0><rsup|x-1>i∧0≤x≤n.
</equation*>

La somma è vuota e vale zero quando <math|x=0>. L'inizializzazione è quindi corretta. I limiti su <math|x> servono sia a interpretare la parte già percorsa sia a riconoscere il punto finale.

Per la preservazione chiediamoci che cosa deve valere prima dell'ultimo comando <tt|x := x + 1>. Sostituendo <math|x+1> a <math|x> nell'invariante otteniamo

<\equation*>
s=<big|sum><rsub|i=0><rsup|x>i∧0≤x+1≤n.
</equation*>

Prima di <tt|s := s + x> serve quindi

<\equation*>
s+x=<big|sum><rsub|i=0><rsup|x>i∧0≤x+1≤n.
</equation*>

La prima uguaglianza viene dall'invariante e dall'identità

<\equation*>
<big|sum><rsub|i=0><rsup|x>i=<big|sum><rsub|i=0><rsup|x-1>i+x.
</equation*>

La guardia <math|x‹n>, insieme a <math|0≤x> e all'integralità, dà <math|0≤x+1≤n>. Abbiamo verificato entrambe le richieste; tutte le espressioni sono definite.

Per la terminazione prendiamo <math|t=n-x>, il numero di addendi ancora da attraversare. Da <math|x≤n> segue <math|t≥0>. Un giro aumenta <math|x> di uno e lascia <math|n> fisso, quindi il nuovo valore è <math|V-1‹V>. All'uscita <math|x≥n> e <math|x≤n> danno <math|x=n>: l'invariante diventa la somma richiesta. Per <math|n=0> non eseguiamo alcun giro e otteniamo correttamente zero.

È essenziale l'ordine degli assegnamenti: aggiungiamo il vecchio <math|x>, poi lo incrementiamo. Scambiandoli sommeremmo gli interi da 1 a <math|n>, risolvendo un problema diverso.

<section|Programmi annotati e proprietà non modificate>

Annotare un programma significa scrivere asserzioni nei punti utili alla prova. Per la somma possiamo indicare <math|I> e <math|t=n-x> prima del <tt|while>, <math|I∧x‹n> all'ingresso del corpo, l'asserzione intermedia appena ricavata fra i due assegnamenti e <math|I∧x≥n> dopo il ciclo. Queste scritte non vengono eseguite: dichiarano gli obblighi che il lettore deve giustificare.

Spesso serve trasportare un'informazione che il comando non tocca. Sia <math|<math-up|change>(C)> l'insieme dei nomi che compaiono come destinazione di un assegnamento in <math|C>. Sono nomi potenzialmente modificati, anche se un particolare ramo potrebbe non essere eseguito. Se

<\equation*>
<math-up|free>(R)∩<math-up|change>(C)=∅,
</equation*>

la verità di <math|R> non cambia durante un'esecuzione con successo di <math|C>. Dalla tripla <math|{P} C {Q}> possiamo dunque ricavare <math|{R∧P} C {R∧Q}>. La condizione sulle variabili è ciò che giustifica il passaggio. Nella divisione il corpo assegna solo a <math|q,r>, quindi conserva <math|y›0>.

Possiamo anche combinare prove dello stesso comando. Da <math|{P<rsub|1>} C {Q<rsub|1>}> e <math|{P<rsub|2>} C {Q<rsub|2>}> ricaviamo <math|{P<rsub|1>∧P<rsub|2>} C {Q<rsub|1>∧Q<rsub|2>}>: uno stato che soddisfa entrambi gli ingressi gode di entrambe le garanzie sul risultato. Da <math|{P} C {Q}> e <math|{R} C {Q}> ricaviamo <math|{P∨R} C {Q}>: distinguiamo quale ingresso vale e applichiamo la prova corrispondente. In questo linguaggio deterministico la stessa esecuzione finale permette di congiungere le conclusioni.

<subsection|Per proseguire: eliminare gli incroci>

Un esempio geometrico mostra che la funzione di terminazione va scelta pensando al problema, non soltanto al codice. Sono fissati <math|N> punti blu e <math|N> punti rossi distinti, senza tre punti allineati. Vogliamo abbinarli con segmenti fra colori diversi, senza incroci. Partiamo da un abbinamento qualsiasi; finché due segmenti si incrociano, sostituiamoli con i due collegamenti non incrociati che rispettano i colori.

L'invariante afferma che ogni punto appartiene esattamente a un segmento e ogni segmento unisce colori diversi. Lo scambio lo conserva: ricongiunge gli stessi quattro estremi, ciascuno una sola volta. All'uscita non ci sono incroci, quindi l'obiettivo è raggiunto, se il procedimento termina.

Contare gli incroci non offre direttamente una prova di progresso: togliere l'incrocio scelto può crearne con altri segmenti. Consideriamo invece la somma delle lunghezze. Se <math|AB> e <math|CD> si incontrano in <math|E> e i colori consentono i nuovi segmenti <math|AD,CB>, la disuguaglianza triangolare dà

<\equation*>
ℓ(AD)‹ℓ(AE)+ℓ(ED),<space|1em>ℓ(CB)‹ℓ(CE)+ℓ(EB).
</equation*>

Le disuguaglianze sono strette: i triangoli coinvolti non sono degeneri, per l'ipotesi di non allineamento. Sommando, la nuova lunghezza totale è strettamente minore di quella vecchia. Gli altri segmenti restano invariati.

<figura|@IMG(incroci)|I percorsi spezzati che passano per <math|E> sono più lunghi dei nuovi collegamenti rettilinei. Il risparmio riguarda la lunghezza totale.>

Le lunghezze sono reali, quindi la sola positività non basterebbe. Qui però i punti sono fissati e gli abbinamenti possibili sono finiti: <math|N!>, perché a ciascun blu associamo un diverso rosso. Anche i valori della lunghezza totale sono finiti in numero. Una diminuzione stretta impedisce di tornare a un valore precedente e quindi non può continuare all'infinito. Questa è una prova completa di terminazione basata sulla finitezza dello spazio degli stati possibili.

<\verifica|7>
<strong|1.> Per <tt|while i ‹ n do i := i + 1 endw>, con <math|I≡0≤i≤n> e <math|n> fisso, proponi una funzione di terminazione e verifica limite inferiore, progresso e uscita.

<strong|2.> Nel programma della somma scambia i due assegnamenti del corpo. Trova un invariante che descriva la somma ora calcolata e spiega il risultato finale, compreso il caso <math|n=0>.
</verifica>
