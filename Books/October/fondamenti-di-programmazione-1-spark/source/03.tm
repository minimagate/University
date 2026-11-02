<chapter|Logica del primo ordine: individui e formule>

<\inbreve>
Come diciamo che una proprietà vale per tutti i numeri, oppure soltanto per alcuni? Le lettere proposizionali da sole non mostrano gli oggetti di cui parliamo. Introduciamo variabili, funzioni e quantificatori per esprimere queste richieste.
</inbreve>

«Tutti i numeri pari hanno successore dispari.» Potremmo introdurre una lettera per il caso di 0, una per il caso di 2, e così via, ma non avremmo scritto la regola generale. 

Ci serve distinguere gli oggetti e le operazioni: il numero, la proprietà «pari», l'operazione «successore». La <strong|logica del primo ordine> aggiunge questi ingredienti e permette di dire «per ogni» ed «esiste».

<section|Termini, predicati e quantificatori>

Scegliamo prima gli oggetti di cui parlare, il <strong|dominio>. Per l'esempio usiamo <math|ℕ={0,1,2,…}>. Introduciamo la costante 1, la funzione somma, i predicati <math|<math-up|pari>> e <math|<math-up|dispari>>, e una variabile <math|x>. La scrittura

<\equation*>
∀x.(<math-up|pari>(x)⇒<math-up|dispari>(x+1))
</equation*>

dice che, qualunque numero sia scelto per <math|x>, se è pari il suo successore è dispari. Il simbolo <math|∀> è il <strong|quantificatore universale>. Per dire che almeno un numero è pari usiamo l'<strong|esistenziale> <math|∃x.<math-up|pari>(x)>.

Per scrivere queste formule servono nomi per numeri fissati (<strong|costanti>), posti per numeri ancora da scegliere (<strong|variabili>), operazioni (<strong|funzioni>) e proprietà o relazioni (<strong|predicati>). Sono gli ingredienti del linguaggio del primo ordine, insieme a connettivi e quantificatori.

Ogni funzione e ogni predicato richiede un certo numero di argomenti, chiamato <strong|arietà>. Il successore ne richiede uno, la somma due, il predicato «minore» due. Un predicato senza argomenti, di arietà zero, si comporta come una lettera proposizionale.

La scrittura <math|s(s(x))> indica il successore del successore di <math|x>. Indica un numero: non è ancora una frase vera o falsa. Una scrittura che indica un oggetto si chiama <strong|termine>.

Ogni costante e ogni variabile è un termine. Possiamo poi applicare una funzione ai termini già costruiti: se <math|f> richiede <math|n> argomenti, da <math|t<rsub|1>,…,t<rsub|n>> otteniamo il termine <math|f(t<rsub|1>,…,t<rsub|n>)>.

Nell’esempio applichiamo prima <math|s> a <math|x>, ottenendo <math|s(x)>, poi ancora <math|s> al risultato. La stessa regola si usa due volte.

Le <strong|formule atomiche> applicano un predicato a termini: <math|<math-up|pari>(s(s(x)))> oppure <math|x‹y>. Da queste, da <math|T,F>, e dai connettivi costruiamo formule come prima. La nuova regola consente, data una formula <math|P>, di costruire <math|∀x.P> ed <math|∃x.P>. Quantificatori consecutivi uguali si possono abbreviare, per esempio <math|∀x,y.P>.

<\concetto|Termine e formula>
Un termine indica un individuo; una formula esprime una condizione vera o falsa. Le funzioni prendono individui e restituiscono individui; i predicati prendono individui e restituiscono valori booleani. <math|x+1> è un termine, <math|<math-up|pari>(x+1)> una formula. <math|<math-up|pari>(x)+1> non rispetta questi ruoli.
</concetto>

<section|Portata, variabili libere e sostituzione>

In <math|∀x.P> la formula <math|P> è la <strong|portata> del quantificatore. Un'occorrenza di <math|x> è <strong|legata> quando si trova nella portata di un quantificatore su <math|x>; altrimenti è <strong|libera>. Se vi sono quantificatori annidati con lo stesso nome, conta quello più interno che comprende l'occorrenza.

In <math|(∀x.p(x))∧q(x,y)> la prima <math|x> è legata; la seconda <math|x> e <math|y> sono libere. Dunque una stessa lettera può avere occorrenze con ruoli diversi. Una formula è <strong|chiusa> se non ha variabili libere, <strong|aperta> altrimenti. La formula <math|x+1=2> dipende dal valore esterno di <math|x>; <math|∃x.x+1=2> afferma invece l'esistenza di un valore adatto.

<figura|@IMG(portata,0.85)|Le frecce identificano il quantificatore che lega ogni occorrenza. Nella formula illustrata tutte le <math|y> sono legate, tutte le <math|z> libere; la <math|x> esterna a <math|∃x> rimane libera.>

La notazione <math|P[t/x]> significa: sostituisci il termine <math|t> alle occorrenze <em|libere> di <math|x> in <math|P>. Non cambiamo le occorrenze già governate da un quantificatore interno su <math|x>. Inoltre nessuna variabile libera del termine inserito deve diventare legata per effetto della sostituzione: sarebbe una <strong|cattura>.

Vediamo un caso che spiega la precauzione. In <math|P=∃y.x‹y> vogliamo sostituire <math|y> a <math|x>. Scrivere <math|∃y.y‹y> sarebbe sbagliato: la <math|y> inserita, che doveva restare libera, è stata catturata. Prima rinominiamo il segnaposto legato: <math|∃z.x‹z>. Ora sostituiamo e otteniamo <math|∃z.y‹z>. Sui naturali questa formula dice correttamente che il numero <math|y> ha un numero più grande.

Possiamo quindi cambiare il nome di una variabile legata, purché il nuovo nome non crei altri legami. Questa operazione è la <strong|ridenominazione delle variabili legate>.

Se <math|z> non compare in <math|P>, possiamo scrivere

<\equation*>
∀x.P≡∀z.P[z/x].
</equation*>

Nella portata <math|P> sostituiamo soltanto le occorrenze libere di <math|x>, cioè quelle governate dall’universale esterno. Il nome è un segnaposto: conta quali occorrenze dipendono dal quantificatore.

<section|Interpretazioni: i simboli ricevono un significato>

La formula <math|∀x.p(x)> non dice ancora quali oggetti consideriamo né quale proprietà esprima <math|p>. Dobbiamo scegliere un dominio non vuoto <math|D> e dare un significato ai simboli. Queste scelte formano un’<strong|interpretazione>, che scriviamo <math|I=(D,α)>.

Ogni costante indica un elemento di <math|D>. Una funzione con <math|n> argomenti prende <math|n> elementi del dominio e ne restituisce uno. Deve essere definita su tutte le scelte: è una funzione <em|totale> <math|D<rsup|n>→D>.

Un predicato con <math|n> argomenti prende gli stessi dati, ma restituisce vero o falso: è una funzione <math|D<rsup|n>→<math-up|Bool>>. Qui <math|D<rsup|n>> raccoglie le liste ordinate di <math|n> elementi di <math|D>. Per l’uguaglianza useremo il significato usuale: due termini sono uguali se indicano lo stesso individuo.

Il dominio conta anche per gli elementi senza nome. Se <math|D={5,10,15}> e <math|p> significa «essere multiplo di 5», <math|∀x.p(x)> è vera. Se ampliamo il dominio a <math|ℕ> e manteniamo lo stesso significato, la formula è falsa: 7 è un controesempio. Avere costanti che nominano soltanto 5, 10 e 15 non elimina gli altri numeri dal dominio dei quantificatori.

Costanti diverse possono indicare lo stesso individuo, se non imponiamo che siano distinti. Simboli dall'aspetto familiare, come <math|+>, non hanno automaticamente l'interpretazione aritmetica: occorre dichiararla. Nel seguito, quando lavoriamo sui numeri e sui programmi, useremo esplicitamente quella usuale.

<section|Formalizzare: tutti, alcuni, esattamente uno>

Prendiamo come dominio le persone e come predicati <math|S(x)>: «<math|x> segue FPL», <math|C(x)>: «<math|x> va al cinema». 

«Tutti gli studenti di FPL vanno al cinema» diventa <math|∀x.(S(x)⇒C(x))>. Una persona che non segue FPL non è un controesempio: l'enunciato non la riguarda. 

«Qualche studente di FPL va al cinema» diventa invece <math|∃x.(S(x)∧C(x))>: il testimone deve soddisfare entrambe le condizioni.

Questo spiega le abbreviazioni della <strong|quantificazione ristretta>:

<\equation*>
(∀x:S(x).C(x))≡(∀x.(S(x)⇒C(x))),
</equation*>

<\equation*>
(∃x:S(x).C(x))≡(∃x.(S(x)∧C(x))).
</equation*>

Usare un'implicazione nell'esistenziale darebbe un significato diverso: basterebbe una persona che non segue FPL, anche se nessuno studente andasse al cinema. 

Usare una congiunzione nell’universale imporrebbe invece che tutte le persone seguano FPL.

<subsection|Dire che l’eccezione è una sola>

«Tutti tranne uno» richiede sia un'eccezione sia la sua unicità. Costruiamo prima la proprietà dell'eccezione, <math|E(x)=S(x)∧¬C(x)>. Dire «esattamente uno studente di FPL non va al cinema» significa

<\equation*>
∃x.(E(x)∧∀y.(E(y)⇒y=x)).
</equation*>

La prima parte dà un'eccezione; la seconda impone che ogni eccezione coincida con essa. Equivalentemente possiamo dire che tutti gli altri studenti vanno al cinema. Senza la seconda parte avremmo detto soltanto «almeno uno».

<subsection|Una relazione fra più individui>

Il dominio e il vocabolario si scelgono in funzione della domanda. Per «due persone sono parenti se hanno un antenato comune» servono predicati binari <math|A(z,x)>: «<math|z> è antenato di <math|x>» e <math|R(x,y)>: «sono parenti». L'antenato senza nome diventa una variabile:

<\equation*>
∀x,y.((∃z.(A(z,x)∧A(z,y)))⇒R(x,y)).
</equation*>

«Se» dà questa direzione; «se e solo se» ne imporrebbe anche un'altra. La formalizzazione richiede dunque interpretare il senso della frase, poi controllare che la formula dica proprio quello.

<\verifica|3>
<strong|1.> Nella formula <math|(∀x.p(x,y))∧(∃y.q(x,y))> individua le occorrenze libere e legate. Sostituisci poi <math|y> alle occorrenze libere di <math|x>, evitando catture.

<strong|2.> Sui naturali formalizza «ogni numero pari ha il successore del successore pari», usando la funzione <math|s> di successore. Formalizza poi «esattamente un elemento soddisfa <math|p>», spiegando il compito dell'uguaglianza.
</verifica>
