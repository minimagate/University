<chapter|Semantica e dimostrazioni con i quantificatori>

<\inbreve>
Come controlliamo una formula con «per ogni» o «esiste»? Partiamo dal valore di una variabile e da piccoli domini. Capiremo poi quali passi permettono di dimostrare una proprietà generale e come usare un testimone senza attribuirgli proprietà non giustificate.
</inbreve>

Per valutare <math|x+1=4> dobbiamo sapere che numero rappresenta <math|x>. Per valutare <math|∃x.x+1=4> dobbiamo invece provare se qualche numero rende vera la condizione. La stessa idea, dare temporaneamente un valore a una variabile, ci permette di definire entrambe le valutazioni.

<section|Assegnamenti e valore di termini e formule>

Fissiamo <math|I=(D,α)>. Un <strong|assegnamento> <math|ρ> associa a ogni variabile un elemento di <math|D>. La scrittura <math|ρ[d/x]> indica l'assegnamento uguale a <math|ρ> sulle altre variabili, ma che dà <math|d> a <math|x>. 

Con <math|ρ(x)=2>, <math|ρ(y)=10>, l'assegnamento <math|ρ[3/x]> dà 3 a <math|x> e ancora 10 a <math|y>.

Il valore di un termine, <math|α<rsub|ρ>(t)>, si calcola dalla sua struttura. Una variabile vale <math|ρ(x)>, una costante vale <math|α(c)>; per <math|f(t<rsub|1>,…,t<rsub|n>)> calcoliamo prima i termini e poi applichiamo la funzione <math|α(f)> ai risultati. 

Per esempio, se <math|s> è il successore sui naturali e <math|ρ(x)=2>, <math|s(s(x))> vale 4: prima 2, poi 3, infine 4.

Per una formula atomica valutiamo i termini e applichiamo il predicato. Se <math|p> significa «essere pari», <math|p(s(s(x)))> è vera con quell'assegnamento. I connettivi mantengono le tabelle del capitolo 2. Scriviamo <math|I<rsub|ρ>(P)> per il valore della formula. Per i quantificatori:

<\concetto|Semantica dei quantificatori>
<math|I<rsub|ρ>(∀x.P)> è vero se <math|I<rsub|ρ[d/x]>(P)> è vero per <em|ogni> <math|d∈D>. <math|I<rsub|ρ>(∃x.P)> è vero se ciò accade per <em|almeno un> <math|d∈D>. Altrimenti il rispettivo valore è falso.
</concetto>

Su un dominio finito <math|{a,b,c}>, un universale si comporta come la congiunzione dei tre casi e un esistenziale come la loro disgiunzione. Un elemento che rende vera la portata di un esistenziale è un <strong|testimone>. Un elemento che rende falsa quella di un universale è un controesempio.

Consideriamo <math|D={a,b}>, con <math|Q> vera su entrambi gli elementi, e <math|P(x,y)> vera soltanto quando <math|x=a>. Vogliamo valutare

<\equation*>
∃x.(Q(x)∧∀y.P(x,y)).
</equation*>

Cerchiamo un elemento che soddisfi entrambe le richieste. Scegliamo <math|a>: <math|Q(a)> è vera, e per l'universale interno controlliamo <math|P(a,a)> e <math|P(a,b)>, entrambe vere. Dunque <math|a> è un testimone e la formula è vera. Con <math|b> la verifica fallirebbe; ciò non cancella il testimone già trovato.

<\equation*>
<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.7em>|<cwith|1|-1|1|-1|cell-rsep|0.7em>|<table|<row|<cell|P(x,y)>|<cell|y=a>|<cell|y=b>>|<row|<cell|x=a>|<cell|<math-up|t>>|<cell|<math-up|t>>>|<row|<cell|x=b>|<cell|<math-up|f>>|<cell|<math-up|f>>>>>>
</equation*>

La riga di <math|a> è tutta vera: per l'universale interno serve tutta la riga, per l'esistenziale esterno ne basta una.

Una formula dipende soltanto dai valori assegnati alle sue variabili libere. Perciò una formula chiusa non dipende da <math|ρ>, e scriviamo semplicemente <math|I(P)>. Le nozioni di modello, soddisfacibilità e conseguenza logica si estendono come nel capitolo 2.

Una formula chiusa è <strong|valida> se è vera in tutte le interpretazioni. 

Per una formula aperta, dire che è valida significa richiedere la verità per ogni interpretazione e per ogni assegnamento alle variabili libere. Questo è il senso in cui useremo le leggi schematiche. 

Essere vera sui naturali con le operazioni usuali è meno esigente: <math|∀x.x+1›x> vi è vera, ma non per qualunque interpretazione dei simboli.

<section|Negazione, distribuzione e domini ristretti>

Negare «tutti soddisfano <math|P>» significa che almeno uno non la soddisfa; negare «almeno uno soddisfa <math|P>» significa che tutti la falliscono. Sono le leggi di De Morgan:

<\equation*>
¬(∀x.P)≡∃x.¬P,<space|2em>¬(∃x.P)≡∀x.¬P.
</equation*>

Nella quantificazione ristretta manteniamo il filtro: <math|¬(∀x:R.P)≡∃x:R.¬P>. Non neghiamo <math|R>, perché stiamo cercando proprio fra gli elementi ammessi. 

Se nessun elemento soddisfa <math|R>, <math|∀x:R.P> è <strong|vacuamente vera>: non ci sono controesempi ammessi. <math|∃x:R.P> è falsa: manca ogni testimone. In particolare, «tutti gli elementi dell'array vuoto sono positivi» non afferma che nell'array vi siano elementi.

Un universale distribuisce su <math|∧>: ogni individuo soddisfa entrambe le condizioni esattamente quando tutti soddisfano la prima e tutti la seconda. Dualmente l'esistenziale distribuisce su <math|∨>:

<\equation*>
(∀x.(P∧Q))≡((∀x.P)∧(∀x.Q)),
</equation*>

<\equation*>
(∃x.(P∨Q))≡((∃x.P)∨(∃x.Q)).
</equation*>

<subsection|Perché alcuni versi non si possono invertire>

Un testimone che soddisfa entrambe le proprietà può essere usato separatamente per ciascuna:

<\equation*>
(∃x.(P∧Q))⇒((∃x.P)∧(∃x.Q)).
</equation*>

Il viceversa non vale. Sui naturali esistono numeri pari ed esistono numeri dispari, ma non esiste un numero che sia entrambe le cose: i due esistenziali possono avere testimoni diversi.

Per l’universale vale invece

<\equation*>
((∀x.P)∨(∀x.Q))⇒∀x.(P∨Q).
</equation*>

Anche qui il viceversa fallisce. Ogni intero è pari o dispari; questo non significa che tutti gli interi siano pari, né che tutti siano dispari.

<subsection|Una parte che non dipende dalla variabile>

Se <math|x> non è libera in <math|Q>, il valore di <math|Q> non cambia mentre varia <math|x>. Possiamo quindi portare questa parte fuori dal quantificatore. Per esempio:

<\equation*>
(∀x.(P∧Q))≡((∀x.P)∧Q),
</equation*>

<\equation*>
(∃x.(P∨Q))≡((∃x.P)∨Q).
</equation*>

Qui usiamo il dominio non vuoto. La stessa ipotesi serve per togliere un quantificatore da una formula che non dipende affatto da <math|x>: <math|∀x.Q≡Q> ed <math|∃x.Q≡Q>.

Se ammettessimo domini vuoti, <math|∀x.F> sarebbe vera e <math|∃x.T> falsa. Non potremmo quindi sostituirle con <math|F> e <math|T>.

<subsection|L’ordine cambia la scelta del testimone>

I quantificatori dello stesso tipo si scambiano: <math|∀x.∀y.P≡∀y.∀x.P>, e analogamente per due esistenziali. 

Scambiare tipi diversi cambia invece la scelta che possiamo fare. Sui naturali <math|∀x.∃y.x‹y> è vera: dopo aver visto <math|x>, scegliamo <math|y=x+1>. 

<math|∃y.∀x.x‹y> è falsa: un solo <math|y> dovrebbe superare anche sé stesso. 

Vale sempre il verso da un testimone comune a testimoni che possono dipendere da <math|x>:

<\equation*>
(∃y.∀x.P(x,y))⇒(∀x.∃y.P(x,y)).
</equation*>

<section|Regole di prova: individui particolari e generici>

Sapere che una proprietà vale per tutti permette di applicarla a un termine particolare. Da <math|∀x.P> ricaviamo <math|P[t/x]>: è l’<strong|eliminazione dell’universale>.

Viceversa, se abbiamo un caso che soddisfa la proprietà, sappiamo che un caso esiste. Da <math|P[t/x]> ricaviamo <math|∃x.P>: è l’<strong|introduzione dell’esistenziale>. Le sostituzioni devono sempre evitare la cattura.

Per esempio, «tutti gli uomini sono mortali» si applica a Socrate. Otteniamo «se Socrate è uomo, è mortale». Sapendo che è uomo, il modus ponens dà la conclusione.

<subsection|Dimostrare una proprietà per tutti>

Per dimostrare <math|∀x.P> non basta verificare un individuo noto. Prendiamo un nome nuovo <math|d>, senza attribuirgli proprietà particolari, e dimostriamo <math|P[d/x]>.

Se il ragionamento vale senza ipotesi particolari su <math|d>, possiamo concludere che vale per tutti: è la <strong|generalizzazione>. Il nome deve essere assente dalla formula generale da dimostrare e dalle ipotesi ancora utilizzate.

Un’ipotesi è <em|aperta> finché il risultato dipende da essa. La <em|chiudiamo>, o <em|scarichiamo>, quando una regola permette di eliminarla dal gruppo delle premesse. L’esempio seguente mostra concretamente questa distinzione.

<subsection|Usare un oggetto di cui sappiamo l’esistenza>

Per usare <math|∃x.P> come premessa possiamo dare al testimone un nome nuovo <math|d>, assumere temporaneamente <math|P[d/x]>, e ricavare una conclusione che non nomini <math|d>. 

Il corso chiama questo passo <strong|skolemizzazione>; qui è la regola di uso di un testimone esistenziale. Il nome deve essere nuovo anche rispetto alla conclusione. Non stiamo affermando la legge <math|(∃x.P)⇒P[d/x]> per una costante prefissata: sarebbe falsa.

<subsection|Una prova con un testimone temporaneo>

Supponiamo di sapere che ogni oggetto con proprietà <math|P> ha anche proprietà <math|Q>, e che almeno un oggetto ha proprietà <math|P>. Vogliamo dimostrare che almeno un oggetto ha proprietà <math|Q>.

Indichiamo con <math|Γ> le due premesse, che rimangono disponibili in tutta la prova:

<\equation*>
Γ={∀x.(P(x)⇒Q(x)),∃x.P(x)}.
</equation*>

<strong|1. Diamo un nome al testimone.> L’esistenziale non ci dice quale oggetto scegliere. Lo chiamiamo <math|d>, usando un nome nuovo, e apriamo l’ipotesi temporanea <math|H:P(d)>. Non affermiamo che una costante già nota soddisfi <math|P>.

<strong|2. Usiamo la regola generale su quell’oggetto.> Dalla prima premessa, eliminando l’universale, ricaviamo <math|P(d)⇒Q(d)>. In questo momento le ipotesi aperte sono ancora <math|Γ> e <math|H>.

<strong|3. Ricaviamo la proprietà cercata.> Con <math|H> e il modus ponens otteniamo <math|Q(d)>. Introducendo l’esistenziale concludiamo:

<\equation*>
Γ,H⊢∃x.Q(x).
</equation*>

<strong|4. Chiudiamo l’ipotesi sul testimone.> La conclusione non nomina <math|d> e nessuna premessa di <math|Γ> lo nomina. Il ragionamento funziona quindi per qualunque testimone garantito da <math|∃x.P(x)>. La regola di eliminazione dell’esistenziale chiude <math|H> e lascia

<\equation*>
Γ⊢∃x.Q(x).
</equation*>

Restano aperte le due premesse iniziali: la conclusione dipende da esse. Si è chiusa soltanto l’ipotesi locale <math|P(d)>. Non possiamo concludere <math|∀x.Q(x)>: <math|d> era un testimone con una proprietà particolare, non un individuo generico.

<subsection|Che cosa garantisce un sistema di prova>

Un <strong|sistema di dimostrazione> raccoglie le regole di inferenza che possiamo usare. Una regola consente di passare da certe premesse a una conclusione; una regola senza premesse è un assioma.

Scriviamo <math|Γ⊢P> quando esiste una sequenza di passi consentiti che parte dalle premesse <math|Γ> e arriva a <math|P>. Questa è una proprietà delle prove scritte, distinta da <math|Γ⊨P>, che riguarda la verità nelle interpretazioni.

Il sistema è <strong|corretto> se tutto ciò che possiamo derivare è conseguenza logica delle premesse. È <strong|completo> se possiamo derivare ogni conseguenza logica.

Per il proposizionale si hanno entrambe le proprietà. Per il sistema presentato nel corso usiamo la correttezza. Esistono sistemi completi anche per il primo ordine, ma non un procedimento che decida sempre, in un numero finito di passi, la validità di una formula arbitraria.

<subsection|Dall’ipotesi all’implicazione>

Se assumiamo <math|H> e ricaviamo <math|Q>, possiamo chiudere l’ipotesi e concludere <math|H⇒Q>, rispettando le condizioni delle regole di quantificazione. Questo è il contenuto del <strong|teorema di deduzione>. Le altre premesse usate restano disponibili e il risultato continua a dipendere da esse.

Anche le sostituzioni richiedono attenzione alle ipotesi. Sotto un quantificatore possiamo usare un’equivalenza, o le polarità del capitolo 2, solo se la relazione vale per tutti i valori esaminati.

Sapere <math|P(x)> per il solo valore attuale di <math|x> non autorizza a sostituire <math|P(x)> con <math|T> dentro <math|∀x.P(x)>. Il quantificatore deve considerare anche gli altri valori.

<section|Uguaglianza e asserzioni sugli stati>

Con l'interpretazione usuale dell'uguaglianza, <math|t=u> è vera quando i termini indicano lo stesso elemento. La <strong|legge di Leibniz> dice che sostituire un individuo con uno uguale non cambia le proprietà:

<\equation*>
x=y⇒(P≡P[y/x]).
</equation*>

La sostituzione riguarda le occorrenze libere e non deve catturare variabili. In particolare, <math|x=y> insieme a <math|P> permette di concludere <math|P[y/x]>. Per esempio, <math|x=y> ed <math|x›0> danno <math|y›0>.

Le <strong|leggi del singoletto> precisano che quantificare su un solo individuo equivale a sostituirlo. Per nomi di variabile distinti <math|x,y>, sempre evitando catture:

<\equation*>
(∀x.(x=y⇒P))≡P[y/x],
</equation*>

<\equation*>
(∃x.(x=y∧P))≡P[y/x].
</equation*>

Nella seconda formula l'unico possibile testimone è il valore di <math|y>: se soddisfa <math|P>, l'esistenziale è vero; se non la soddisfa, nessun altro valore può sostituirlo, perché violerebbe <math|x=y>. La prima formula controlla lo stesso unico individuo mediante un'implicazione.

Siamo pronti a parlare dei programmi. Un'asserzione come <math|x≥0∧y›0> è una formula aperta; uno stato fornisce i valori delle variabili di programma, come un assegnamento. Scriviamo <math|σ⊨P> se <math|P> è vera con quei valori nell'interpretazione numerica usuale. Il prossimo capitolo userà coppie di asserzioni per distinguere ciò che chiediamo prima di un programma da ciò che vogliamo ottenere dopo.

<subsection|Per proseguire: leggi sui domini e indebolimento>

Per verificare una proprietà sull'unione di due gruppi, la verifichiamo su entrambi: <math|(∀x:P∨Q.R)≡((∀x:P.R)∧(∀x:Q.R))>. Per trovare un testimone nell'unione basta trovarlo in uno dei gruppi: la legge esistenziale scambia <math|∧> esterna con <math|∨>. Anche le leggi distributive già viste e De Morgan valgono con uno stesso filtro ristretto.

L'indebolimento mantiene la direzione consueta: <math|(∀x.P)⇒∀x.(P∨Q)>, <math|(∃x.P)⇒∃x.(P∨Q)>, e dalle versioni con <math|P∧Q> possiamo sempre conservare soltanto <math|P>. I quantificatori non invertono la polarità: una relazione valida per tutti gli individui può essere trasportata nelle loro portate.

<\verifica|4>
<strong|1.> Nega <math|∀x.(p(x)⇒∃y.q(x,y))>, portando la negazione fino agli atomi. Spiega che cosa dovresti trovare per mostrare falsa la formula iniziale.

<strong|2.> Su <math|D={a,b}>, la relazione <math|R> è vera soltanto per <math|(a,b)> e <math|(b,a)>. Valuta <math|∀x.∃y.R(x,y)> ed <math|∃y.∀x.R(x,y)>. Mostra poi con un esempio perché da <math|P(d)> per una costante già nota non si può sempre generalizzare a <math|∀x.P(x)>.
</verifica>
