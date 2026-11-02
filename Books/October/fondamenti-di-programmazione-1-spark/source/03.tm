<chapter|Logica del primo ordine: individui e formule>

<\inbreve>
Con le sole lettere proposizionali possiamo dire «piove» o «esco», ma non possiamo dire «ogni numero pari ha un successore dispari», perché non vediamo i numeri di cui stiamo parlando. La logica del primo ordine apre le proposizioni e mostra gli oggetti al loro interno. In questo capitolo impariamo a scriverne le formule, a capire a quale quantificatore appartiene ogni variabile e a tradurre con cura frasi con «tutti», «alcuni» ed «esattamente uno».
</inbreve>

Consideriamo la frase «tutti i numeri pari hanno un successore dispari». Potremmo provare a introdurre una lettera per il caso di 0, una per il caso di 2, una per il caso di 4, e così via, ma non finiremmo mai e soprattutto non avremmo scritto la regola generale.

Quello che ci manca è la possibilità di distinguere gli ingredienti della frase, cioè il numero, la proprietà di essere pari e l'operazione che porta al successore. La <strong|logica del primo ordine> aggiunge questi ingredienti, insieme a due nuove parole, «per ogni» ed «esiste».

<section|Termini, predicati e quantificatori>

Per prima cosa scegliamo gli oggetti di cui vogliamo parlare, che formano il <strong|dominio>. Nel nostro esempio è l'insieme dei naturali <math|ℕ={0,1,2,…}>. Ci servono poi la costante 1, la funzione somma, i predicati <math|<math-up|pari>> e <math|<math-up|dispari>> e una variabile <math|x>. Con questi ingredienti la frase diventa

<\equation*>
∀x.(<math-up|pari>(x)⇒<math-up|dispari>(x+1)),
</equation*>

che si legge così: qualunque numero scegliamo per <math|x>, se è pari allora il suo successore è dispari. Il simbolo <math|∀> è il <strong|quantificatore universale>. Per dire invece che almeno un numero è pari usiamo il <strong|quantificatore esistenziale> e scriviamo <math|∃x.<math-up|pari>(x)>.

Nell'esempio compaiono quattro tipi di simboli diversi. Le <strong|costanti> sono nomi per oggetti fissati, come 1. Le <strong|variabili> sono posti per oggetti ancora da scegliere, come <math|x>. Le <strong|funzioni> rappresentano operazioni, come la somma, e i <strong|predicati> rappresentano proprietà o relazioni, come l'essere pari. Insieme ai connettivi e ai quantificatori formano il linguaggio del primo ordine.

Ogni funzione e ogni predicato richiede un numero preciso di argomenti, chiamato <strong|arietà>. Il successore ne vuole uno, la somma due, e così anche il predicato «minore», che confronta due numeri. Un predicato con zero argomenti non ha bisogno di nessun oggetto e si comporta come una lettera proposizionale.

<subsection|Termini e formule>

La scrittura <math|s(s(x))> indica il successore del successore di <math|x>. È un numero, non una frase, e quindi non ha senso chiedersi se sia vera o falsa. Le scritture che indicano oggetti si chiamano <strong|termini>, e si costruiscono a partire dalle costanti e dalle variabili, che sono già termini. Se una funzione <math|f> richiede <math|n> argomenti e abbiamo già i termini <math|t<rsub|1>,…,t<rsub|n>>, possiamo formare il nuovo termine <math|f(t<rsub|1>,…,t<rsub|n>)>. Per arrivare a <math|s(s(x))>, per esempio, applichiamo <math|s> a <math|x> e poi di nuovo al risultato.

Le frasi vere e proprie nascono quando applichiamo un predicato a dei termini. Così otteniamo le <strong|formule atomiche>, come <math|<math-up|pari>(s(s(x)))> oppure <math|x‹y>. Da queste, dalle costanti <math|T> e <math|F> e dai connettivi costruiamo formule più grandi esattamente come nel capitolo precedente. L'unica regola nuova riguarda i quantificatori: da una formula <math|P> possiamo costruire <math|∀x.P> ed <math|∃x.P>. Quando ci sono più quantificatori uguali di seguito li abbreviamo, scrivendo per esempio <math|∀x,y.P>.

<\concetto|Termine e formula>
Un termine indica un individuo; una formula esprime una condizione vera o falsa. Le funzioni prendono individui e restituiscono individui; i predicati prendono individui e restituiscono valori booleani. <math|x+1> è un termine, <math|<math-up|pari>(x+1)> una formula. <math|<math-up|pari>(x)+1> non rispetta questi ruoli.
</concetto>

<section|Portata, variabili libere e sostituzione>

In una formula <math|∀x.P>, la parte <math|P> su cui agisce il quantificatore si chiama la sua <strong|portata>. Un'occorrenza di <math|x> è <strong|legata> se sta nella portata di un quantificatore su <math|x>, altrimenti è <strong|libera>. Quando ci sono più quantificatori annidati con lo stesso nome, un'occorrenza appartiene a quello più interno che la contiene.

Nella formula <math|(∀x.p(x))∧q(x,y)> la prima <math|x> è legata, mentre la seconda <math|x> e la <math|y> sono libere. La stessa lettera può quindi avere occorrenze con ruoli diversi. Una formula senza variabili libere si dice <strong|chiusa>, altrimenti <strong|aperta>, e la differenza è sostanziale. La formula aperta <math|x+1=2> dipende dal valore che diamo a <math|x> dall'esterno, mentre la formula chiusa <math|∃x.x+1=2> afferma che un valore adatto esiste, ed è vera o falsa una volta per tutte.

<figura|@IMG(portata,0.85)|Le frecce identificano il quantificatore che lega ogni occorrenza. Nella formula illustrata tutte le <math|y> sono legate, tutte le <math|z> libere; la <math|x> esterna a <math|∃x> rimane libera.>

<subsection|Sostituire senza catturare>

Spesso vogliamo mettere un termine al posto di una variabile. La notazione <math|P[t/x]> indica che sostituiamo il termine <math|t> alle occorrenze <em|libere> di <math|x> in <math|P>, lasciando stare quelle che appartengono a un quantificatore interno su <math|x>. C'è però una precauzione da prendere. Nessuna variabile libera del termine inserito deve finire nella portata di un quantificatore che la lega, perché altrimenti cambierebbe significato. Questo errore si chiama <strong|cattura>.

Un esempio mostra perché la precauzione serve. Nella formula <math|P=∃y.x‹y> vogliamo mettere <math|y> al posto di <math|x>. Se lo facessimo ingenuamente otterremmo <math|∃y.y‹y>, dove la <math|y> che volevamo lasciare libera è stata catturata dal quantificatore, e la formula dice ora una cosa completamente diversa. La soluzione è cambiare prima il nome della variabile legata, scrivendo <math|∃z.x‹z>, e solo dopo sostituire. Otteniamo <math|∃z.y‹z>, che sui naturali afferma correttamente che esiste un numero più grande di <math|y>.

Cambiare il nome di una variabile legata è sempre lecito, purché il nuovo nome non crei legami nuovi, e questa operazione si chiama <strong|ridenominazione delle variabili legate>. In formule, se <math|z> non compare in <math|P>,

<\equation*>
∀x.P≡∀z.P[z/x].
</equation*>

La sostituzione tocca soltanto le occorrenze libere di <math|x> in <math|P>, cioè proprio quelle che dipendono dal quantificatore esterno. Il nome della variabile legata è solo un segnaposto, e ciò che conta è quali occorrenze dipendono da quel quantificatore.

<section|Interpretazioni: i simboli ricevono un significato>

La formula <math|∀x.p(x)>, da sola, non è né vera né falsa, perché non sappiamo di quali oggetti parliamo né che cosa significhi <math|p>. Per darle un valore dobbiamo scegliere un dominio non vuoto <math|D> e dare un significato a ogni simbolo. Queste scelte formano un'<strong|interpretazione>, che scriviamo <math|I=(D,α)>.

Ogni costante indica un elemento di <math|D>. Una funzione con <math|n> argomenti prende <math|n> elementi del dominio e ne produce uno, e deve farlo per ogni scelta degli argomenti, cioè è una funzione <em|totale> <math|D<rsup|n>→D>. Qui <math|D<rsup|n>> è l'insieme delle liste ordinate di <math|n> elementi di <math|D>. Un predicato con <math|n> argomenti prende gli stessi dati ma risponde vero o falso, ed è quindi una funzione <math|D<rsup|n>→<math-up|Bool>>. L'uguaglianza ha sempre il significato usuale, e due termini sono uguali quando indicano lo stesso individuo.

Il dominio conta anche per gli oggetti che non hanno un nome. Se <math|D={5,10,15}> e <math|p> significa «essere multiplo di 5», la formula <math|∀x.p(x)> è vera. Se allarghiamo il dominio a <math|ℕ> e lasciamo a <math|p> lo stesso significato, la formula diventa falsa, e 7 è un controesempio. Avere costanti soltanto per 5, 10 e 15 non toglie gli altri numeri dal dominio su cui variano i quantificatori.

Due osservazioni completano il quadro. Costanti diverse possono indicare lo stesso individuo, a meno che non imponiamo esplicitamente che siano distinte. E un simbolo dall'aspetto familiare come <math|+> non ha automaticamente il significato aritmetico, che va dichiarato. Nel seguito, quando lavoreremo con numeri e programmi, useremo sempre il significato usuale.

<section|Formalizzare: tutti, alcuni, esattamente uno>

Tradurre una frase italiana in una formula richiede un po' di attenzione, e conviene vederlo su esempi concreti. Prendiamo come dominio le persone e due predicati, <math|S(x)> per «<math|x> segue FPL» e <math|C(x)> per «<math|x> va al cinema».

«Tutti gli studenti di FPL vanno al cinema» diventa <math|∀x.(S(x)⇒C(x))>. Una persona che non segue FPL non smentisce la frase, perché la frase non parla di lei, ed è esattamente ciò che l'implicazione garantisce. «Qualche studente di FPL va al cinema» diventa invece <math|∃x.(S(x)∧C(x))>, perché la persona che cerchiamo deve soddisfare entrambe le condizioni.

Questi due schemi sono così frequenti che hanno un'abbreviazione, la <strong|quantificazione ristretta>:

<\equation*>
(∀x:S(x).C(x))≡(∀x.(S(x)⇒C(x))),
</equation*>

<\equation*>
(∃x:S(x).C(x))≡(∃x.(S(x)∧C(x))).
</equation*>

Scambiare i connettivi è un errore frequente, e vale la pena vedere che cosa produce. Con un'implicazione dentro l'esistenziale basterebbe trovare una persona che non segue FPL per rendere vera la formula, anche se nessuno studente andasse al cinema. Con una congiunzione dentro l'universale, al contrario, pretenderemmo che tutte le persone del mondo seguano FPL.

<subsection|Dire che l'eccezione è una sola>

La frase «tutti tranne uno» contiene due richieste, perché un'eccezione deve esistere e deve essere unica. Conviene dare prima un nome alla proprietà dell'eccezione, <math|E(x)=S(x)∧¬C(x)>, cioè uno studente di FPL che non va al cinema. Allora «esattamente uno studente di FPL non va al cinema» si scrive

<\equation*>
∃x.(E(x)∧∀y.(E(y)⇒y=x)).
</equation*>

La prima parte afferma che un'eccezione c'è, la seconda che ogni eccezione coincide con quella. In altre parole, tutti gli altri studenti vanno al cinema. Senza la seconda parte avremmo detto soltanto che le eccezioni sono almeno una.

<subsection|Una relazione fra più individui>

Il dominio e il vocabolario si scelgono in base alla domanda. Per dire che «due persone sono parenti se hanno un antenato comune» ci servono due predicati binari, <math|A(z,x)> per «<math|z> è antenato di <math|x>» e <math|R(x,y)> per «<math|x> e <math|y> sono parenti». L'antenato comune non ha un nome, e diventa una variabile quantificata:

<\equation*>
∀x,y.((∃z.(A(z,x)∧A(z,y)))⇒R(x,y)).
</equation*>

La frase dice «se», e l'implicazione va in una sola direzione. Con «se e solo se» dovremmo scrivere anche il verso opposto. Formalizzare significa quindi prima capire il senso della frase, e poi rileggere la formula per controllare che dica esattamente quello.

<\verifica|3>
<strong|1.> Nella formula <math|(∀x.p(x,y))∧(∃y.q(x,y))> individua le occorrenze libere e legate. Sostituisci poi <math|y> alle occorrenze libere di <math|x>, evitando catture.

<strong|2.> Sui naturali formalizza «ogni numero pari ha il successore del successore pari», usando la funzione <math|s> di successore. Formalizza poi «esattamente un elemento soddisfa <math|p>», spiegando il compito dell'uguaglianza.
</verifica>
