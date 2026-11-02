<chapter|Semantica e dimostrazioni con i quantificatori>

Per valutare <math|x+1=4> dobbiamo sapere che numero rappresenta <math|x>. Per valutare <math|∃x.x+1=4> dobbiamo invece provare se qualche numero rende vera la condizione. La stessa idea, dare temporaneamente un valore a una variabile, ci permette di definire entrambe le valutazioni.

<section|Assegnamenti e valore di termini e formule>

Fissiamo <math|I=(D,α)>. Un <strong|assegnamento> <math|ρ> associa a ogni variabile un elemento di <math|D>. La scrittura <math|ρ[d/x]> indica l'assegnamento uguale a <math|ρ> sulle altre variabili, ma che dà <math|d> a <math|x>. Con <math|ρ(x)=2>, <math|ρ(y)=10>, l'assegnamento <math|ρ[3/x]> dà 3 a <math|x> e ancora 10 a <math|y>.

Il valore di un termine, <math|α<rsub|ρ>(t)>, si calcola dalla sua struttura. Una variabile vale <math|ρ(x)>, una costante vale <math|α(c)>; per <math|f(t<rsub|1>,…,t<rsub|n>)> calcoliamo prima i termini e poi applichiamo la funzione <math|α(f)> ai risultati. Per esempio, se <math|s> è il successore sui naturali e <math|ρ(x)=2>, <math|s(s(x))> vale 4: prima 2, poi 3, infine 4.

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

Una formula dipende soltanto dai valori assegnati alle sue variabili libere. Perciò una formula chiusa non dipende da <math|ρ>, e scriviamo semplicemente <math|I(P)>. Le nozioni di modello, soddisfacibilità e conseguenza logica si estendono come nel capitolo 2. Una formula chiusa è <strong|valida> se è vera in tutte le interpretazioni. Per una formula aperta, dire che è valida significa richiedere la verità per ogni interpretazione e per ogni assegnamento alle variabili libere. Questo è il senso in cui useremo le leggi schematiche. Essere vera sui naturali con le operazioni usuali è meno esigente: <math|∀x.x+1›x> vi è vera, ma non per qualunque interpretazione dei simboli.

<section|Negazione, distribuzione e domini ristretti>

Negare «tutti soddisfano <math|P>» significa che almeno uno non la soddisfa; negare «almeno uno soddisfa <math|P>» significa che tutti la falliscono. Sono le leggi di De Morgan:

<\equation*>
¬(∀x.P)≡∃x.¬P,<space|2em>¬(∃x.P)≡∀x.¬P.
</equation*>

Nella quantificazione ristretta manteniamo il filtro: <math|¬(∀x:R.P)≡∃x:R.¬P>. Non neghiamo <math|R>, perché stiamo cercando proprio fra gli elementi ammessi. Se nessun elemento soddisfa <math|R>, <math|∀x:R.P> è <strong|vacuamente vera>: non ci sono controesempi ammessi. <math|∃x:R.P> è falsa: manca ogni testimone. In particolare, «tutti gli elementi dell'array vuoto sono positivi» non afferma che nell'array vi siano elementi.

Un universale distribuisce su <math|∧>: ogni individuo soddisfa entrambe le condizioni esattamente quando tutti soddisfano la prima e tutti la seconda. Dualmente l'esistenziale distribuisce su <math|∨>:

<\equation*>
(∀x.(P∧Q))≡((∀x.P)∧(∀x.Q)),
</equation*>

<\equation*>
(∃x.(P∨Q))≡((∃x.P)∨(∃x.Q)).
</equation*>

Le versioni scambiate danno soltanto implicazioni: <math|(∃x.(P∧Q))⇒((∃x.P)∧(∃x.Q))>, perché un testimone comune è anche testimone di ciascuna proprietà; il viceversa fallisce se le due proprietà hanno testimoni diversi. Analogamente <math|((∀x.P)∨(∀x.Q))⇒∀x.(P∨Q)>, ma «ogni intero è pari o dispari» non impone che tutti siano pari o tutti dispari.

Se <math|x> non è libera in <math|Q>, <math|Q> non cambia mentre varia <math|x>. Possiamo estrarla: per esempio <math|∀x.(P∧Q)≡(∀x.P)∧Q> ed <math|∃x.(P∨Q)≡(∃x.P)∨Q>. Qui usiamo il dominio non vuoto. Anche <math|∀x.Q≡Q> ed <math|∃x.Q≡Q> richiedono questa ipotesi. Se si ammettessero domini vuoti, <math|∀x.F> sarebbe vera e <math|∃x.T> falsa: non potremmo togliere il quantificatore.

I quantificatori dello stesso tipo si scambiano: <math|∀x.∀y.P≡∀y.∀x.P>, e analogamente per due esistenziali. Scambiare tipi diversi cambia invece le dipendenze. Sui naturali <math|∀x.∃y.x‹y> è vera: dopo aver visto <math|x>, scegliamo <math|y=x+1>. <math|∃y.∀x.x‹y> è falsa: un solo <math|y> dovrebbe superare anche sé stesso. Vale sempre il verso da un testimone comune a testimoni che possono dipendere da <math|x>:

<\equation*>
(∃y.∀x.P(x,y))⇒(∀x.∃y.P(x,y)).
</equation*>

<section|Regole di prova: individui particolari e generici>

Da <math|∀x.P> possiamo ricavare <math|P[t/x]> (<strong|eliminazione dell'universale>); da <math|P[t/x]> ricaviamo <math|∃x.P> (<strong|introduzione dell'esistenziale>). Le sostituzioni sono sempre senza cattura. Se tutti gli uomini sono mortali, possiamo istanziare la proprietà su Socrate; sapendo poi che è uomo, il modus ponens conclude che è mortale.

Per <em|dimostrare> un universale, invece, non basta verificare un individuo noto. Prendiamo un nome nuovo <math|d>, senza proprietà particolari, e dimostriamo <math|P[d/x]>. Se la prova non usa ipotesi su quel nome, il ragionamento vale per ogni individuo: è la <strong|generalizzazione>. Formalmente <math|d> non deve comparire nelle ipotesi non scaricate né nella formula che stiamo generalizzando.

Per usare <math|∃x.P> come premessa possiamo dare al testimone un nome nuovo <math|d>, assumere temporaneamente <math|P[d/x]>, e ricavare una conclusione che non nomini <math|d>. Il corso chiama questo passo <strong|skolemizzazione>; qui è la regola di uso di un testimone esistenziale. Il nome deve essere nuovo anche rispetto alla conclusione. Non stiamo affermando la legge <math|(∃x.P)⇒P[d/x]> per una costante prefissata: sarebbe falsa.

Per esempio, da <math|∀x.(P(x)⇒Q(x))> e <math|∃x.P(x)> vogliamo <math|∃x.Q(x)>. Il secondo asserto ci dà un testimone, che chiamiamo <math|d>, con <math|P(d)>. Istanziamo l'universale proprio su quel testimone: <math|P(d)⇒Q(d)>. Il modus ponens dà <math|Q(d)> e l'introduzione dell'esistenziale dà <math|∃x.Q(x)>. La conclusione non conserva il nome temporaneo, quindi possiamo chiudere l'ipotesi sul testimone.

Un <strong|sistema di dimostrazione> organizza queste mosse in regole di inferenza. Una regola deriva una conclusione da premesse; senza premesse è un assioma. Scriviamo <math|Γ⊢P> se esiste una sequenza di passi consentiti che deriva <math|P> da <math|Γ>. Il sistema è <strong|corretto> se ogni risultato derivabile è conseguenza logica; è <strong|completo> se ogni conseguenza logica è derivabile. Per il proposizionale si hanno entrambe le proprietà; per il sistema presentato nel corso usiamo la correttezza. Esistono sistemi completi anche per il primo ordine, ma non una tavola finita che decida in generale ogni formula.

Assumere <math|H> per dimostrare <math|Q> giustifica l'implicazione <math|H⇒Q>: è il contenuto del <strong|teorema di deduzione>, con le condizioni delle regole di quantificazione rispettate. Le ipotesi non diventano leggi. Sotto un quantificatore possiamo sostituire formule equivalenti, o usare le polarità del capitolo 2, soltanto se la relazione usata vale uniformemente per tutti i valori che il quantificatore esamina. Un'ipotesi vera soltanto per l'attuale valore di <math|x> non può essere generalizzata senza giustificazione.

<section|Uguaglianza e asserzioni sugli stati>

Con l'interpretazione usuale dell'uguaglianza, <math|t=u> è vera quando i termini denotano lo stesso elemento. La <strong|legge di Leibniz> dice che sostituire un individuo con uno uguale non cambia le proprietà:

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
