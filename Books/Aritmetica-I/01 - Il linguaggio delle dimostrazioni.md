# Il linguaggio delle dimostrazioni

Prerequisiti: aritmetica elementare e familiarità con interi e frazioni. [[Books/Aritmetica-I/00 - Indice e piano di studio|Indice e piano di studio]] · Segue: [[Books/Aritmetica-I/02 - Naturali e induzione|Naturali e induzione]].

> [!info] In questo capitolo
> - Imparerai a leggere e a scrivere affermazioni precise: insiemi, «per ogni», «esiste», «se... allora».
> - Saprai negare una frase e costruire un controesempio che la smentisce.
> - Avrai uno schema per scegliere fra prova diretta, contrapposizione e assurdo.
> - Capirai che cosa significano funzione iniettiva, suriettiva e biettiva, e perché una funzione si può invertire esattamente quando è biettiva: sarà lo strumento di tutti i conteggi dei capitoli successivi.

## Domande per iniziare dagli esercizi

Prova prima gli esercizi indicati dalla domanda. Se ti manca uno strumento, apri soltanto la sezione collegata, poi torna al problema e ricostruisci il passaggio senza guardare. Per le prove, scrivi ipotesi, tesi e motivo di ogni implicazione. I riscontri sono raccolti dopo la teoria.

La tabella copre tutte le sezioni teoriche del capitolo, compresi casi limite e approfondimenti. Gli esercizi 1–8 conservano la numerazione originaria; dal 9 trovi le integrazioni. Gli esercizi tratti dal PDF fornito hanno un riferimento esplicito alla fonte; gli altri sono redazionali.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Come si passa da esempi a una prova per tutti gli interi? | [[#Esercizio 9 — Tre modi di provare (prova diretta, contrapposizione e assurdo)\|9]] | [[#Da un esempio a un'affermazione controllabile\|Da un esempio a un'affermazione controllabile]] |
| Come distingui appartenenza, inclusione e operazioni fra insiemi? | [[#Esercizio 1 — Operare sugli insiemi (unione, intersezione, differenza e inclusione)\|1]], [[#Esercizio 4 — Due inclusioni (uguaglianza di insiemi)\|4]], [[#Esercizio 10 — Rappresentare senza confondere (De Morgan, prodotto cartesiano, controimmagine e unicità)\|10]] | [[#Insiemi: che cosa stiamo considerando?\|Insiemi: che cosa stiamo considerando?]] |
| Che cosa cambia scambiando o negando i quantificatori? | [[#Esercizio 2 — Negare una frase (quantificatori e negazione)\|2]], [[#Esercizio 10 — Rappresentare senza confondere (De Morgan, prodotto cartesiano, controimmagine e unicità)\|10]] | [[#Quantificatori: tutti, qualcuno, uno solo\|Quantificatori: tutti, qualcuno, uno solo]] |
| Come riconosci una condizione necessaria, una sufficiente e una reciproca falsa? | [[#Esercizio 3 — Una freccia invertita (implicazione, necessario e sufficiente)\|3]], [[#Esercizio 9 — Tre modi di provare (prova diretta, contrapposizione e assurdo)\|9]] | [[#Implicazioni, equivalenze e controesempi\|Implicazioni, equivalenze e controesempi]] |
| Quando conviene usare prova diretta, contrapposizione o assurdo? | [[#Esercizio 4 — Due inclusioni (uguaglianza di insiemi)\|4]], [[#Esercizio 9 — Tre modi di provare (prova diretta, contrapposizione e assurdo)\|9]] | [[#Scegliere come dimostrare\|Scegliere come dimostrare]] |
| Quando una regola definisce una funzione e quali valori raggiunge? | [[#Esercizio 5 — Cambiare il codominio (iniettività, suriettività e inversa)\|5]], [[#Esercizio 7 — Che cosa rivela la composizione (proprietà delle funzioni e controesempi)\|7]], [[#Esercizio 8 — Codificare e decodificare (identità e biiezione)\|8]], [[#Esercizio 10 — Rappresentare senza confondere (De Morgan, prodotto cartesiano, controimmagine e unicità)\|10]], [[#Esercizio 11 — Quando si può tornare indietro (teorema dell’inversa e composizione)\|11]] | [[#Funzioni: assegnare senza ambiguità\|Funzioni: assegnare senza ambiguità]] |
| Quando puoi comporre, cancellare o invertire una funzione? | [[#Esercizio 5 — Cambiare il codominio (iniettività, suriettività e inversa)\|5]], [[#Esercizio 6 — Prima una funzione, poi l’altra (composizione e inversa)\|6]], [[#Esercizio 7 — Che cosa rivela la composizione (proprietà delle funzioni e controesempi)\|7]], [[#Esercizio 8 — Codificare e decodificare (identità e biiezione)\|8]], [[#Esercizio 11 — Quando si può tornare indietro (teorema dell’inversa e composizione)\|11]] | [[#Comporre e tornare indietro\|Comporre e tornare indietro]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–6 allenano gli strumenti di base; 7–8 li collegano ad altri problemi. Le integrazioni successive completano il controllo della teoria; quelle dalla raccolta fornita sono segnalate con numero e pagina. Non serve riuscire subito: individua che cosa ti manca, studia il passaggio collegato e riprova.

### Esercizio 1 — Operare sugli insiemi (unione, intersezione, differenza e inclusione)

Siano $U=\{0,1,2,3,4,5,6\}$, $A=\{0,2,4,6\}$ e $B=\{1,2,3\}$. Calcola $A\cup B$, $A\cap B$, $B\setminus A$ e $A^c$. Stabilisci se $A\subseteq B$.

Se ti blocchi: [[#Insiemi: che cosa stiamo considerando?|Insiemi: che cosa stiamo considerando?]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Negare una frase (quantificatori e negazione)

Scrivi la negazione di $\forall n\in\mathbb N\ \exists m\in\mathbb N:m>n$. Stabilisci quale delle due affermazioni è vera, giustificando la risposta.

Se ti blocchi: [[#Quantificatori: tutti, qualcuno, uno solo|Quantificatori: tutti, qualcuno, uno solo]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Una freccia invertita (implicazione, necessario e sufficiente)

Uno studente sostiene: «Se $n\in\mathbb Z$ è multiplo di $6$, allora è pari. Dunque se è pari è multiplo di $6$». Individua l'errore, fornisci un controesempio e formula una condizione necessaria e una sufficiente usando le due proprietà.

Se ti blocchi: [[#Implicazioni, equivalenze e controesempi|Implicazioni, equivalenze e controesempi]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Due inclusioni (uguaglianza di insiemi)

Per $A,B,C\subseteq U$, dimostra $A\cap(B\cup C)=(A\cap B)\cup(A\cap C)$, spiegando le due inclusioni.

Se ti blocchi: [[#Insiemi: che cosa stiamo considerando?|Insiemi: che cosa stiamo considerando?]] · [[#Scegliere come dimostrare|Scegliere come dimostrare]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Cambiare il codominio (iniettività, suriettività e inversa)

Considera $f:\mathbb Z\to\mathbb Z$, $f(n)=3n-2$. Dimostra che è iniettiva, mostra che non è suriettiva e indica un codominio che renda biettiva la stessa regola. Scrivi l'inversa con il suo dominio.

Se ti blocchi: [[#Funzioni: assegnare senza ambiguità|Funzioni: assegnare senza ambiguità]] · [[#Comporre e tornare indietro|Comporre e tornare indietro]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Prima una funzione, poi l’altra (composizione e inversa)

Siano $f,g:\mathbb R\to\mathbb R$ date da $f(x)=x+3$ e $g(x)=2x-1$. Calcola $g\circ f$, $f\circ g$ e l'inversa di $g\circ f$. Verifica le due identità dell'inversa.

Se ti blocchi: [[#Comporre e tornare indietro|Comporre e tornare indietro]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Che cosa rivela la composizione (proprietà delle funzioni e controesempi)

Siano $f:X\to Y$ e $g:Y\to Z$. Dimostra: se $g\circ f$ è iniettiva, allora $f$ è iniettiva; se $g\circ f$ è suriettiva, allora $g$ è suriettiva. La prima ipotesi obbliga anche $g$ a essere iniettiva? Cerca un controesempio con insiemi finiti non vuoti.

Se ti blocchi: [[#Funzioni: assegnare senza ambiguità|Funzioni: assegnare senza ambiguità]] · [[#Comporre e tornare indietro|Comporre e tornare indietro]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Codificare e decodificare (identità e biiezione)

Un sistema deve codificare ciascun elemento di un insieme $X$ con un codice nell'insieme $C$. Formalizza codifica $e:X\to C$ e decodifica $d:C\to X$. Dimostra che, se si richiede $d(e(x))=x$ per ogni $x\in X$, allora $e$ deve essere iniettiva. Se si richiede anche $e(d(c))=c$ per ogni $c\in C$, che cosa cambia? Con $X=\{a,b\}$, $C=\{0,1,2\}$ ed $e(a)=0,e(b)=1$, costruisci una decodifica che soddisfi la prima richiesta e spiega perché la seconda è impossibile.

Se ti blocchi: [[#Funzioni: assegnare senza ambiguità|Funzioni: assegnare senza ambiguità]] · [[#Comporre e tornare indietro|Comporre e tornare indietro]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Tre modi di provare (prova diretta, contrapposizione e assurdo)

Dimostra direttamente che il quadrato di un pari è pari; per contrapposizione che se $n^2$ è pari allora $n$ è pari; per assurdo che $\mathbb N$ non ha massimo. Per ogni prova scrivi ipotesi e tesi e spiega perché controllare esempi non basta. Formula anche la reciproca e la negazione di una delle implicazioni.

Se ti blocchi: [[#Da un esempio a un'affermazione controllabile|Da un esempio a un'affermazione controllabile]] · [[#Implicazioni, equivalenze e controesempi|Implicazioni, equivalenze e controesempi]] · [[#Scegliere come dimostrare|Scegliere come dimostrare]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Rappresentare senza confondere (De Morgan, prodotto cartesiano, controimmagine e unicità)

Per $A=\{1,2\}$ e $B=\{2,3\}$ elenca $A\times B$ e $\mathcal P(A)$; distingui $\varnothing$ da $\{\varnothing\}$. Dimostra le due leggi di De Morgan in un ambiente $U$. Per $f:\mathbb Z\to\mathbb Z$, $f(n)=n^2$, trova $f(\{-2,1,3\})$ e $f^{-1}(\{1,4\})$: questa controimmagine richiede un'inversa? Infine confronta $\forall n\,\exists m:m>n$ con $\exists m\,\forall n:m>n$ su $\mathbb N$ e verifica $\exists!x\in\mathbb N:x+2=5$.

Se ti blocchi: [[#Insiemi: che cosa stiamo considerando?|Insiemi: che cosa stiamo considerando?]] · [[#Quantificatori: tutti, qualcuno, uno solo|Quantificatori: tutti, qualcuno, uno solo]] · [[#Funzioni: assegnare senza ambiguità|Funzioni: assegnare senza ambiguità]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Quando si può tornare indietro (teorema dell’inversa e composizione)

Per $f:X\to Y$, dimostra che esiste $g:Y\to X$ con entrambe le identità $g\circ f=\operatorname{id}_X$ e $f\circ g=\operatorname{id}_Y$ se e solo se $f$ è biettiva, e che tale $g$ è unica. Dimostra inoltre che la composizione è associativa e conserva iniettività e suriettività. Puoi concludere $f=g$ dalla sola uguaglianza delle immagini di due funzioni $X\to Y$?

Se ti blocchi: [[#Funzioni: assegnare senza ambiguità|Funzioni: assegnare senza ambiguità]] · [[#Comporre e tornare indietro|Comporre e tornare indietro]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

## Teoria da recuperare

Usa i collegamenti della tabella iniziale per leggere lo strumento che ti serve. Dopo la lettura, torna all’esercizio e prova a risolverlo senza suggerimenti.

## Da un esempio a un'affermazione controllabile

Il quadrato di un numero pari è pari: $2^2=4$, $4^2=16$, $6^2=36$. Quanti esempi servono per esserne sicuri? Se l'affermazione riguarda tutti gli interi pari, nessuna lista finita esaurisce i casi. Occorre un ragionamento che li comprenda insieme.

Un intero è **pari** quando è il doppio di un intero. Se $n$ è pari, esiste quindi $k\in\mathbb Z$ con $n=2k$. Allora

$$
n^2=(2k)^2=4k^2=2(2k^2).
$$

Poiché $2k^2$ è un intero, anche $n^2$ è pari. Abbiamo sostituito gli esempi con una **dimostrazione**: da un'ipotesi precisa siamo arrivati alla conclusione usando passaggi verificabili. Il numero $k$ non è un valore scelto a caso: rappresenta qualunque intero che testimoni la parità di $n$.

Questo capitolo costruisce il linguaggio per leggere e produrre ragionamenti simili. Le operazioni elementari sui numeri sono già familiari; i loro fondamenti specifici saranno sviluppati nei capitoli successivi. Useremo la convenzione $\mathbb N=\{0,1,2,\ldots\}$ e indicheremo con $\mathbb N_{>0}$ i naturali positivi. Con $\mathbb Z$ indichiamo gli interi relativi (positivi, negativi e zero), con $\mathbb R$ i numeri reali.

## Insiemi: che cosa stiamo considerando?

Un **insieme** raccoglie oggetti chiamati elementi. Scrivere $x\in A$ significa che $x$ appartiene ad $A$; $x\notin A$ significa che non vi appartiene. Possiamo descrivere un insieme elencandone gli elementi oppure indicando una proprietà:

$$
A=\{0,2,4,6\}
=\{n\in\mathbb N:n\leq6\text{ e }n\text{ è pari}\}.
$$

Nella seconda scrittura i due punti significano «tali che». Ordine e ripetizioni non cambiano un insieme: $\{1,2\}=\{2,1,1\}$. L'**insieme vuoto**, indicato con $\varnothing$, non contiene elementi; $\{\varnothing\}$ contiene invece un elemento, che è l'insieme vuoto.

L'**inclusione** $A\subseteq B$ afferma che ogni elemento di $A$ appartiene anche a $B$. Ammette il caso $A=B$; per escluderlo scriveremo $A\subsetneq B$. Dire che due insiemi sono uguali significa che hanno gli stessi elementi. Ma come si dimostra, in pratica, una uguaglianza fra insiemi che non si possono elencare? Si spezza in due inclusioni, ciascuna più facile da controllare.

> [!abstract] Concetto chiave — Doppia inclusione
> $$
> A=B\quad\Longleftrightarrow\quad
> A\subseteq B\text{ e }B\subseteq A.
> $$
> È il metodo standard per provare uguaglianze fra insiemi; lo ritroveremo, per esempio, nelle partizioni e nelle classi di equivalenza ([[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|capitolo 13]]).

Questa equivalenza suggerisce un metodo: per dimostrare un'uguaglianza, partire da un elemento arbitrario del primo insieme e mostrarne l'appartenenza al secondo, poi fare il percorso inverso. «Arbitrario» significa che non gli attribuiamo proprietà ulteriori rispetto all'appartenenza dichiarata.

Fissato un insieme ambiente $U$ e due suoi sottoinsiemi $A,B$, le principali operazioni si leggono attraverso le condizioni di appartenenza:

| Insieme | Quando vi appartiene $x$? |
|---|---|
| $A\cup B$, unione | $x\in A$ oppure $x\in B$, anche in entrambi |
| $A\cap B$, intersezione | $x\in A$ e $x\in B$ |
| $A\setminus B$, differenza | $x\in A$ e $x\notin B$ |
| $A^c=U\setminus A$, complementare | $x\in U$ e $x\notin A$ |

> [!example] Esempi e controesempi — Inclusione e uguaglianza
> **Vale $A\subseteq B$:** $\{2,4\}\subseteq\{0,2,4\}$, perché ogni elemento di sinistra sta a destra; $\varnothing\subseteq B$ per ogni $B$.
> **Non vale $A\subseteq B$:** $\{2,5\}\not\subseteq\{0,2,4\}$, perché $5\notin\{0,2,4\}$: basta un elemento a smentirla.
> **Non vale l'uguaglianza** pur valendo una sola inclusione: $\{2\}\subseteq\{2,4\}$ ma $\{2,4\}\not\subseteq\{2\}$. Servono entrambe le inclusioni.

Due insiemi sono **disgiunti** se $A\cap B=\varnothing$. Il complementare dipende dall'ambiente: quello di $\{0,2\}$ in $\{0,1,2,3\}$ è $\{1,3\}$, mentre in $\mathbb N$ contiene anche $4,5,6,\ldots$.

**Esempio svolto.** Per $U=\{0,1,2,3,4,5\}$, $A=\{0,2,4\}$ e $B=\{2,3,4\}$ otteniamo

$$
A\cup B=\{0,2,3,4\},\quad A\cap B=\{2,4\},\quad
A\setminus B=\{0\},\quad A^c=\{1,3,5\}.
$$

Per esempio, $3$ entra nell'unione perché appartiene a $B$, ma non nell'intersezione perché non appartiene ad $A$.

Le **leggi di De Morgan**, per $A,B\subseteq U$, affermano che

$$
(A\cup B)^c=A^c\cap B^c,
\qquad
(A\cap B)^c=A^c\cup B^c.
$$

Per la prima, un elemento di $U$ è fuori dall'unione esattamente quando non appartiene né ad $A$ né a $B$. Per la seconda, essere fuori dall'intersezione significa che manca almeno una delle due appartenenze. In entrambi i casi abbiamo confrontato l'appartenenza di un elemento arbitrario: questo dimostra le uguaglianze.

Ci serviranno anche due costruzioni: la prima permette di descrivere oggetti formati da due scelte in ordine, la seconda di parlare di «tutti i sottoinsiemi» come di un unico insieme. Il **prodotto cartesiano** $A\times B$ è l'insieme delle coppie ordinate $(a,b)$ con $a\in A$ e $b\in B$. Le coppie $(1,2)$ e $(2,1)$ sono diverse, perché conta la posizione. L'**insieme delle parti** $\mathcal P(A)$ raccoglie tutti i sottoinsiemi di $A$: per esempio $\mathcal P(\{a\})=\{\varnothing,\{a\}\}$.

> [!example] Esempi e controesempi — Prodotto cartesiano e insieme delle parti
> Sia $A=\{1,2\}$ e $B=\{3,4\}$.
> **Sta in $A\times B$:** $(1,3)$ e $(2,4)$.
> **Non sta in $A\times B$:** $(3,4)$, perché la prima componente $3\notin A$ (la seconda va bene); $(1,2)$, perché la seconda componente $2\notin B$ (la prima va bene). Anche $(3,1)$ ha le componenti «al posto sbagliato»: l'ordine conta.
> **Sta in $\mathcal P(A)$:** $\varnothing$, $\{1\}$, $\{1,2\}$.
> **Non sta in $\mathcal P(A)$:** $1$, che è un elemento di $A$ e non un sottoinsieme; $\{1,3\}$, che contiene $3\notin A$.

## Quantificatori: tutti, qualcuno, uno solo

Una **proposizione** è un'affermazione alla quale attribuiamo un valore di verità. «$7$ è pari» è una proposizione falsa; «$n$ è pari» è una proprietà che dipende dal valore di $n$. Per formulare un'affermazione completa dobbiamo specificare il dominio e che cosa chiediamo ai suoi elementi.

Il simbolo $\forall$ significa «per ogni», mentre $\exists$ significa «esiste almeno un». Per esempio

$$
\forall n\in\mathbb N\ \exists m\in\mathbb N:\ m>n
$$

è vero: dato $n$, possiamo prendere $m=n+1$. Invece

$$
\exists m\in\mathbb N\ \forall n\in\mathbb N:\ m>n
$$

è falso: nessun unico $m$ supera tutti i naturali, perché dovrebbe superare anche sé stesso. Nel primo enunciato $m$ può dipendere da $n$; nel secondo deve essere scelto prima, una volta per tutte. **L'ordine dei quantificatori cambia il problema.**

La scrittura $\exists!x\in A:P(x)$ significa che esiste esattamente un elemento di $A$ con la proprietà $P$. Va dimostrata sia l'esistenza, sia l'unicità: se $x$ e $x'$ soddisfano $P$, allora devono coincidere.

Negare una frase significa descrivere precisamente quando è falsa. Serve a capire che cosa dobbiamo mostrare per smentire un'affermazione.

> [!abstract] Concetto chiave — Negazione dei quantificatori
> $$
> \neg(\forall x\in A:P(x))
> \quad\Longleftrightarrow\quad
> \exists x\in A:\neg P(x),
> $$
> $$
> \neg(\exists x\in A:P(x))
> \quad\Longleftrightarrow\quad
> \forall x\in A:\neg P(x).
> $$
> Per smentire un «per ogni» basta un controesempio; per smentire un «esiste» occorre escludere tutti i casi. Lo useremo in ogni dimostrazione per assurdo e per minimo controesempio ([[Books/Aritmetica-I/02 - Naturali e induzione|capitolo 02]]).

«Non tutti» significa «almeno uno no», non «nessuno». Per esempio, la negazione di «ogni studente ha risolto almeno un esercizio» è «esiste uno studente che non ha risolto alcun esercizio».

Analogamente, la negazione di «$P$ e $Q$» è «non $P$ oppure non $Q$»; la negazione di «$P$ oppure $Q$» è «non $P$ e non $Q$». L'«oppure» matematico è inclusivo: ammette che valgano entrambe le alternative. Ritroviamo così le regole che spiegavano De Morgan.

Una conseguenza utile è

$$
A\not\subseteq B
\quad\Longleftrightarrow\quad
\exists x\in A:\ x\notin B.
$$

Per smentire un'inclusione basta dunque trovare un elemento preciso. Inoltre $\varnothing\subseteq B$ per ogni $B$: non esiste un elemento del vuoto che possa violare l'inclusione. Per la stessa ragione un'affermazione universale su un dominio vuoto è vera; un'affermazione esistenziale su quel dominio è falsa.

> [!example] Esempi e controesempi — Quantificatori
> **«$\forall n\in\mathbb N\ \exists m:\ m>n$» è vera**, con $m=n+1$. **«$\exists m\ \forall n:\ m>n$» è falsa**, perché $m>m$ non vale: scambiando i quantificatori cambia il significato.
> **$\exists!$:** «esiste un unico $x\in\mathbb N$ con $x+2=5$» è vera ($x=3$). «Esiste un unico $x\in\mathbb Z$ con $x^2=4$» è falsa per mancanza di *unicità* ($2$ e $-2$). «Esiste un unico $x\in\mathbb N$ con $x+5=2$» è falsa per mancanza di *esistenza*.

## Implicazioni, equivalenze e controesempi

Scrivere $P\Rightarrow Q$ significa «se $P$, allora $Q$». $P$ è l'ipotesi, $Q$ la conclusione. L'implicazione esclude esattamente la situazione in cui $P$ è vera e $Q$ è falsa; perciò la sua negazione è

$$
\neg(P\Rightarrow Q)\quad\Longleftrightarrow\quad P\text{ e }\neg Q.
$$

Nell'esempio iniziale, «$n$ è pari» implica «$n^2$ è pari». Un caso con $n$ dispari non potrebbe smentire questa implicazione, perché non soddisferebbe l'ipotesi. In generale, per confutare un'affermazione universale occorre un **controesempio** che rispetti tutte le ipotesi e violi la conclusione.

Per esempio «per ogni $n\in\mathbb N$, $n^2>n$» è falsa: $n=0$ soddisfa $n^2=n$. Anche $n=1$ è un controesempio. Verificare $2,3,\ldots,100$ non avrebbe reso vero l'enunciato.

> [!example] Esempi e controesempi — Controesempio
> **È un controesempio** a «se $n$ è pari, allora $n^2>n$»: $n=0$, perché è pari (rispetta l'ipotesi) e $0^2=0\not>0$ (viola la conclusione).
> **Non è un controesempio:** $n=3$, perché è dispari e non rispetta l'ipotesi; $n=4$, perché rispetta l'ipotesi ma soddisfa anche la conclusione ($16>4$). Un controesempio deve rispettare l'ipotesi *e* violare la conclusione.

La **reciproca** di $P\Rightarrow Q$ è $Q\Rightarrow P$ e richiede una dimostrazione propria. Se entrambe valgono, scriviamo $P\Longleftrightarrow Q$, letto «$P$ se e solo se $Q$». Dimostrare un'equivalenza significa quindi controllare due direzioni.

> [!warning] Attenzione — La freccia non si gira da sola
> Per un intero $n$, essere multiplo di $4$ implica essere pari: $n=4k=2(2k)$. La reciproca è falsa, come mostra $n=2$. Una catena di implicazioni non può essere letta al contrario senza giustificare ogni passaggio inverso.

Nell'implicazione $P\Rightarrow Q$, $P$ è una condizione **sufficiente** per $Q$: basta che valga $P$. $Q$ è una condizione **necessaria** per $P$: se manca $Q$, non può valere $P$. Essere pari è necessario per essere multiplo di $4$, ma non sufficiente. «$P$ solo se $Q$» significa $P\Rightarrow Q$; «$P$ se $Q$» significa $Q\Rightarrow P$.

## Scegliere come dimostrare

Una **prova diretta** parte dalle ipotesi e costruisce la conclusione. La dimostrazione iniziale sulla parità del quadrato era diretta: abbiamo tradotto l'ipotesi in $n=2k$, poi riscritto il quadrato nella forma richiesta dalla definizione.

Una prova per **contrapposizione** dimostra invece

$$
\neg Q\Rightarrow\neg P
$$

per ottenere $P\Rightarrow Q$. Le due implicazioni escludono la stessa situazione, $P$ vera e $Q$ falsa, e sono quindi equivalenti.

**Esempio svolto.** Se $x,y\in\mathbb R$ e $x+y>10$, allora almeno uno fra $x,y$ è maggiore di $5$. Per contrapposizione assumiamo che nessuno dei due sia maggiore di $5$, cioè $x\leq5$ e $y\leq5$. Sommando otteniamo $x+y\leq10$, che è la negazione dell'ipotesi originaria. Abbiamo scelto questo verso perché «nessuno supera $5$» si traduce subito in due disuguaglianze sommabili.

In una prova **per assurdo** si assume la negazione della conclusione e si ricava una contraddizione con le ipotesi o con un fatto già stabilito. Per dimostrare che $\mathbb N$ non ha un massimo, supponiamo che ne abbia uno, $M$. Il successore $M+1$ è ancora naturale e soddisfa $M+1>M$, contraddicendo la massimalità di $M$.

Quale tecnica scegliere? Il criterio pratico è guardare che cosa si può ricavare facilmente dall'ipotesi e dalla negazione della tesi. La tabella va letta riga per riga: a sinistra la forma dell'enunciato, a destra il primo tentativo ragionevole.

| Che cosa devo dimostrare | Tecnica da provare | Primo passo |
|---|---|---|
| $P\Rightarrow Q$, e dall'ipotesi si ricava una formula (es. $n=2k$) | Diretta | Traduci $P$ con la definizione e arriva alla forma richiesta da $Q$ |
| $P\Rightarrow Q$, ma $\neg Q$ è più informativa di $P$ («nessuno supera...», «non è divisibile...») | Contrapposizione | Assumi $\neg Q$ e dimostra $\neg P$ |
| Una non esistenza o un'impossibilità («$\mathbb N$ non ha massimo») | Assurdo | Assumi che esista e cerca la contraddizione |
| $A=B$ fra insiemi | Doppia inclusione | Elemento arbitrario di $A$, poi di $B$ |
| $P\Longleftrightarrow Q$ | Due implicazioni | Prova $P\Rightarrow Q$ e $Q\Rightarrow P$ separatamente |
| Un «per ogni» che sospetti falso | Controesempio | Cerca un caso che rispetti l'ipotesi e violi la tesi |
| Un «esiste» | Costruzione | Esibisci un elemento e verifica la proprietà |
| Una proprietà di tutti i naturali, che passa da $n$ a $n+1$ | Induzione | Vedi il [[Books/Aritmetica-I/02 - Naturali e induzione\|capitolo 02]] |

> [!example] Esempi e controesempi — Contrapposizione e assurdo
> **Va bene:** nell'esempio con $x+y>10$ la contrapposizione funziona perché $\neg Q$ dà due disuguaglianze sommabili.
> **Non va bene:** assumere $Q$ e dedurre $P$ prova la reciproca $Q\Rightarrow P$, che è un'altra affermazione e può essere falsa ($n^2$ pari $\Rightarrow n$ pari vale, ma $n$ pari $\Rightarrow n$ multiplo di $4$ no). La contrapposizione nega *entrambe* le parti e inverte la freccia: $\neg Q\Rightarrow\neg P$. Un assurdo, poi, si conclude solo se si arriva a una contraddizione vera e propria.

Contrapposizione e assurdo sono vicini, ma conviene tenere visibile che cosa si sta facendo: nella prima si prova una precisa implicazione equivalente; nel secondo si rende impossibile la negazione della tesi. Nessuno dei due metodi autorizza ad assumere ciò che si vuole dimostrare. Una prova deve avere un punto di partenza indipendente dalla conclusione.

## Funzioni: assegnare senza ambiguità

Immaginiamo di assegnare a ogni studente un armadietto. L'assegnazione è una **funzione** se ogni studente riceve esattamente un armadietto. Può darsi che due studenti ricevano lo stesso, oppure che qualche armadietto rimanga inutilizzato: questi sono vincoli ulteriori.

Una funzione $f:X\to Y$ assegna a ogni elemento $x$ del **dominio** $X$ un unico elemento $f(x)$ del **codominio** $Y$. Il suo insieme immagine è

$$
\operatorname{Im}(f)=f(X)=\{f(x):x\in X\}\subseteq Y.
$$

Per un sottoinsieme $A\subseteq X$ definiamo similmente $f(A)=\{f(a):a\in A\}$. Per $B\subseteq Y$ la **controimmagine** è invece

$$
f^{-1}(B)=\{x\in X:f(x)\in B\}.
$$

Quest'ultima notazione è disponibile per qualsiasi funzione: non presuppone l'esistenza di una funzione inversa.

Una **preimmagine** di $y\in Y$ è un qualunque $x\in X$ con $f(x)=y$; la controimmagine di $\{y\}$ è l'insieme di tutte le preimmagini di $y$.

Per esempio, $f:\mathbb Z\to\mathbb Z$, $f(n)=2n$, ha come immagine gli interi pari. La regola «associare a $x$ il suo reciproco» non definisce una funzione $\mathbb R\to\mathbb R$, perché non assegna un valore a $0$; definisce invece una funzione su $\mathbb R\setminus\{0\}$.

> [!example] Esempi e controesempi — Funzione
> **È una funzione:** $n\mapsto2n$ da $\mathbb Z$ a $\mathbb Z$; $x\mapsto1/x$ da $\mathbb R\setminus\{0\}$ a $\mathbb R$.
> **Non è una funzione**, ciascuna violando una sola condizione:
> - $x\mapsto1/x$ da $\mathbb R$ a $\mathbb R$ non assegna alcun valore a $0$ (manca un valore);
> - «a ogni $n\in\mathbb N_{>0}$ associa un suo divisore positivo» non è ben definita: a $6$ si può associare $1,2,3$ o $6$ (manca l'unicità del valore);
> - $n\mapsto n/2$ da $\mathbb Z$ a $\mathbb Z$ assegna a $1$ il valore $1/2\notin\mathbb Z$ (il valore non sta nel codominio).

Due funzioni $f,g:X\to Y$ sono uguali se $f(x)=g(x)$ per ogni $x\in X$. Avere la stessa immagine non basta: su $\{1,2\}$, l'identità e la funzione che scambia $1$ con $2$ hanno la stessa immagine e valori diversi. Nel libro consideriamo dominio e codominio parte della specificazione della funzione.

Le tre proprietà fondamentali distinguono tipi di assegnazione:

- $f$ è **iniettiva** se $f(x)=f(x')$ implica $x=x'$. Equivalentemente, elementi distinti hanno immagini distinte: due studenti non condividono un armadietto.
- $f$ è **suriettiva** se per ogni $y\in Y$ esiste $x\in X$ tale che $f(x)=y$. Quindi $f(X)=Y$: nessun armadietto rimane inutilizzato.
- $f$ è **biettiva** se è iniettiva e suriettiva: ogni elemento di $Y$ corrisponde a esattamente un elemento di $X$.

Come si leggono insieme queste tre proprietà? Guardale come due domande indipendenti sul codominio: «qualche valore è raggiunto due volte?» (iniettività) e «qualche valore non è raggiunto?» (suriettività). La tabella le combina tutte e quattro in modo possibile, con un esempio per ciascuna.

| Funzione | Iniettiva | Suriettiva | Motivo |
|---|---|---|---|
| $\mathbb Z\to\mathbb Z$, $n\mapsto n+1$ | sì | sì | ogni $m$ ha l'unica preimmagine $m-1$: biettiva |
| $\mathbb Z\to\mathbb Z$, $n\mapsto2n$ | sì | no | $2n=2n'$ forza $n=n'$; ma $1$ non è mai raggiunto |
| $\mathbb Z\to\{0,1\}$, $n\mapsto0$ se $n$ è pari, $1$ se $n$ è dispari | no | sì | $0$ e $2$ hanno la stessa immagine; sia $0$ sia $1$ sono raggiunti |
| $\mathbb Z\to\mathbb Z$, $n\mapsto n^2$ | no | no | $1$ e $-1$ hanno la stessa immagine; $2$ non è un quadrato |

> [!example] Esempi e controesempi — Iniettiva, suriettiva, biettiva
> **Iniettiva:** $n\mapsto2n$ su $\mathbb Z$ (da $2n=2n'$ segue $n=n'$). **Non iniettiva**, perché due elementi distinti hanno la stessa immagine: $n\mapsto n^2$ su $\mathbb Z$ ($f(1)=f(-1)=1$).
> **Suriettiva:** $n\mapsto n+1$ su $\mathbb Z$. **Non suriettiva**, perché un elemento del codominio non è raggiunto: $n\mapsto2n$ su $\mathbb Z$ (manca $1$).
> **Biettiva:** $n\mapsto n+1$ su $\mathbb Z$. **Non biettiva** pur essendo iniettiva: $n\mapsto2n$ su $\mathbb Z$. **Non biettiva** pur essendo suriettiva: la funzione parità $\mathbb Z\to\{0,1\}$ della tabella.

Per provare l'iniettività si prendono $x,x'$ arbitrari e si studia l'uguaglianza delle immagini. Per provare la suriettività si prende un $y$ arbitrario nel codominio e si cerca una sua preimmagine, verificando che appartenga al dominio.

> [!warning] Attenzione — La formula non determina da sola le proprietà
> $n\mapsto2n$ da $\mathbb Z$ a $\mathbb Z$ è iniettiva ma non suriettiva: $1$ non è raggiunto. La stessa regola, da $\mathbb Z$ all'insieme degli interi pari, è biettiva. Il codominio è decisivo. Anche l'iniettività può cambiare restringendo il dominio: $x\mapsto x^2$ identifica $1$ e $-1$ su $\mathbb R$, ma è iniettiva sull'insieme $[0,+\infty)$ dei reali maggiori o uguali a zero.

## Comporre e tornare indietro

Se $f:X\to Y$ e $g:Y\to Z$, possiamo applicare prima $f$ e poi $g$. La **composizione** è

$$
g\circ f:X\to Z,\qquad (g\circ f)(x)=g(f(x)).
$$

L'ordine si legge da destra verso sinistra. Per esempio, su $\mathbb Z$, con $f(n)=n+1$ e $g(n)=2n$,

$$
(g\circ f)(n)=2n+2,\qquad(f\circ g)(n)=2n+1.
$$

Le composizioni sono diverse. Invece la composizione è **associativa**: per funzioni concatenabili $h,g,f$, entrambe $(h\circ g)\circ f$ e $h\circ(g\circ f)$ mandano $x$ in $h(g(f(x)))$.

Se $f$ e $g$ sono iniettive, lo è $g\circ f$: dall'uguaglianza $g(f(x))=g(f(x'))$, l'iniettività di $g$ dà $f(x)=f(x')$ e quella di $f$ dà $x=x'$. Se sono suriettive, lo è la composizione: dato $z\in Z$, troviamo $y\in Y$ con $g(y)=z$, poi $x\in X$ con $f(x)=y$. Allora $g(f(x))=z$. In particolare, la composizione di biezioni è una biezione.

L'**identità** $\operatorname{id}_X:X\to X$ manda $x$ in sé stesso. Una funzione $g:Y\to X$ è **inversa** di $f:X\to Y$ se

$$
g\circ f=\operatorname{id}_X,
\qquad
f\circ g=\operatorname{id}_Y.
$$

Quando ha senso «tornare indietro»? Solo se nessun valore è raggiunto da due elementi (altrimenti non sapremmo quale scegliere) e nessun valore è lasciato fuori (altrimenti per quel valore non ci sarebbe alcun punto a cui tornare).

> [!abstract] Concetto chiave — Inversa e biiezione
> Una funzione $f:X\to Y$ ammette inversa se e solo se è biettiva. L'inversa è unica.
> È il ponte fra funzioni e conteggio: una biezione conserva il numero di elementi ([[Books/Aritmetica-I/03 - Contare attraverso le funzioni|capitolo 03]]) e le permutazioni sono le biezioni di un insieme in sé ([[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|capitolo 14]]).

*Passo 1 — Se $f$ è biettiva, l'inversa esiste.* Ogni $y$ è immagine di un unico $x$: definiamo $g(y)$ come quell'$x$. Le due identità seguono dalla costruzione.

*Passo 2 — Se l'inversa esiste, $f$ è biettiva.* Se esiste $g$, da $f(x)=f(x')$ otteniamo $g(f(x))=g(f(x'))$, quindi $x=x'$; inoltre ogni $y$ è raggiunto perché $f(g(y))=y$. Dunque $f$ è sia iniettiva sia suriettiva.

L'inversa è unica: per ogni $y$ deve restituire l'unica preimmagine di $y$. Si indica con $f^{-1}$; il simbolo non significa $1/f$.

> [!example] Esempi e controesempi — Inversa
> **Ha inversa:** $n\mapsto n+1$ su $\mathbb Z$, con inversa $m\mapsto m-1$.
> **Non ha inversa**, ciascuna violando una sola condizione:
> - $n\mapsto2n$ da $\mathbb Z$ a $\mathbb Z$ è iniettiva ma non suriettiva. Si può definire $g(m)=m/2$ se $m$ è pari e $g(m)=0$ se $m$ è dispari: allora $g\circ f=\operatorname{id}_{\mathbb Z}$, ma $f(g(1))=0\ne1$, quindi $f\circ g\ne\operatorname{id}$;
> - la parità $p:\mathbb Z\to\{0,1\}$ è suriettiva ma non iniettiva. Con $g(0)=0$, $g(1)=1$ si ha $p\circ g=\operatorname{id}$, ma $g(p(2))=0\ne2$, quindi $g\circ p\ne\operatorname{id}$.

**Esempio svolto.** Sia $D=\{2k+1:k\in\mathbb Z\}$ l'insieme degli interi dispari e sia $f:\mathbb Z\to D$, $f(n)=2n+1$. Se $2n+1=2n'+1$, sottraendo $1$ e dividendo per $2$ otteniamo $n=n'$: $f$ è iniettiva. Ogni $d\in D$ ha la forma $2k+1$, dunque $f(k)=d$: è suriettiva. Risolvendo $d=2n+1$ rispetto a $n$ troviamo

$$
f^{-1}:D\to\mathbb Z,\qquad f^{-1}(d)=\frac{d-1}{2}.
$$

Il risultato è intero perché $d$ è dispari. Infine $(2n+1-1)/2=n$ e $2(d-1)/2+1=d$: abbiamo controllato entrambe le composizioni. Questa possibilità di tradurre un oggetto e ricostruirlo senza perderlo sarà il fondamento dei conteggi attraverso corrispondenze.

## Fonti

Il contesto degli insiemi numerici e delle corrispondenze proviene da [[Notes/Aritmetica/Lectures/2026-09-23 - Numeri naturali, induzione e fattorizzazione|nota del 23 settembre]] e dai passaggi introduttivi della [[_transcripts/Aritmetica/2026-09-23 - Numeri naturali, induzione e fattorizzazione|trascrizione del 23 settembre]]. Funzioni, inclusioni, uguaglianza di insiemi e corrispondenze sono ripresi dalla [[Notes/Aritmetica/Lectures/2026-09-29 - Cardinalità e tecniche fondamentali del calcolo combinatorio|nota del 29 settembre]] e dai relativi passaggi della [[_transcripts/Aritmetica/2026-09-29 - Cardinalità e tecniche fondamentali del calcolo combinatorio|trascrizione del 29 settembre]].

La trattazione sistematica di quantificatori, negazioni, necessario/sufficiente e metodi di prova è un'integrazione didattica per rendere autonomo il libro, non una ricostruzione letterale di una lezione di logica. Anche le prove sulle composizioni e sull'inversa, le operazioni insiemistiche e gli esempi sono stati esplicitati o rielaborati a questo scopo.

## Riscontri degli esercizi

Apri il riscontro soltanto dopo aver scritto un tentativo. Per una dimostrazione, confronta anche le ipotesi e la completezza, non soltanto il risultato.

### Riscontro 1

> [!tip]- Riscontro 1
> Unione: $\{0,1,2,3,4,6\}$; intersezione: $\{2\}$; differenza $B\setminus A=\{1,3\}$; complementare $A^c=\{1,3,5\}$. L'inclusione è falsa: per esempio $0\in A$ ma $0\notin B$. Per ogni operazione controlla la relativa condizione di appartenenza.

Torna a [[#Esercizio 1 — Operare sugli insiemi (unione, intersezione, differenza e inclusione)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> La negazione è $\exists n\in\mathbb N\ \forall m\in\mathbb N:m\leq n$. Si scambiano i quantificatori e si nega $m>n$. L'enunciato iniziale è vero scegliendo $m=n+1$ per ogni $n$; la sua negazione è quindi falsa.

Torna a [[#Esercizio 2 — Negare una frase (quantificatori e negazione)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> È stata invertita un'implicazione senza prova. $n=2$ è pari ma non multiplo di $6$. Essere multiplo di $6$ è sufficiente per essere pari, perché $6k=2(3k)$; essere pari è necessario per essere multiplo di $6$.

Torna a [[#Esercizio 3 — Una freccia invertita (implicazione, necessario e sufficiente)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Se $x$ sta a sinistra, appartiene ad $A$ e ad almeno uno fra $B,C$: appartiene dunque ad almeno una delle intersezioni a destra. Se sta a destra, appartiene ad $A\cap B$ oppure ad $A\cap C$: in entrambi i casi appartiene ad $A$ e a $B\cup C$. Le due inclusioni danno l'uguaglianza.

Torna a [[#Esercizio 4 — Due inclusioni (uguaglianza di insiemi)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Da $3n-2=3n'-2$ segue $3n=3n'$, quindi $n=n'$. Il valore $0$ non è raggiunto: richiederebbe $n=2/3\notin\mathbb Z$. Con $D=\{3k-2:k\in\mathbb Z\}$ come codominio, ogni elemento è raggiunto per definizione e la funzione è biettiva. L'inversa è $D\to\mathbb Z$, $d\mapsto(d+2)/3$; il risultato è intero per la definizione di $D$.

Torna a [[#Esercizio 5 — Cambiare il codominio (iniettività, suriettività e inversa)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> $(g\circ f)(x)=2(x+3)-1=2x+5$, mentre $(f\circ g)(x)=2x-1+3=2x+2$. Ponendo $h=g\circ f$, si ha $h^{-1}(y)=(y-5)/2$ su $\mathbb R$. Infatti $h^{-1}(h(x))=(2x+5-5)/2=x$ e $h(h^{-1}(y))=2(y-5)/2+5=y$.

Torna a [[#Esercizio 6 — Prima una funzione, poi l’altra (composizione e inversa)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Da $f(x)=f(x')$ segue $g(f(x))=g(f(x'))$, e l'iniettività della composizione dà $x=x'$. Se la composizione è suriettiva, per ogni $z\in Z$ esiste $x\in X$ con $g(f(x))=z$; dunque $f(x)\in Y$ è una preimmagine di $z$ per $g$. Per l'ultima domanda prendi $X=\{a\}$, $Y=\{b,c\}$, $Z=\{d\}$, con $f(a)=b$ e $g(b)=g(c)=d$. La composizione è iniettiva, poiché il dominio ha un solo elemento, ma $g$ non lo è.

Torna a [[#Esercizio 7 — Che cosa rivela la composizione (proprietà delle funzioni e controesempi)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> Se $e(x)=e(x')$, applicando $d$ otteniamo $x=x'$: nessun codice usato può confondere due oggetti. Le due richieste insieme dicono che $d$ è inversa di $e$, quindi $e$ deve essere biettiva. Nell'esempio poni $d(0)=a$, $d(1)=b$ e, per esempio, $d(2)=a$. Allora $d\circ e=\operatorname{id}_X$, ma $e(d(2))=0\ne2$. Qualunque scelta di $d(2)$ fallisce la seconda identità perché $2$ non appartiene all'immagine di $e$.

Torna a [[#Esercizio 8 — Codificare e decodificare (identità e biiezione)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> Se $n=2k$, allora $n^2=2(2k^2)$. Se $n=2k+1$, allora $n^2=2(2k^2+2k)+1$: questa è la contrapposta della seconda affermazione. Un presunto massimo $M$ è superato da $M+1$. La reciproca di «$n$ pari implica $n^2$ pari» è la seconda affermazione; la negazione è «esiste un intero pari con quadrato dispari». Nessuna lista finita controlla tutti gli interi.

Torna a [[#Esercizio 9 — Tre modi di provare (prova diretta, contrapposizione e assurdo)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> Il prodotto è $\{(1,2),(1,3),(2,2),(2,3)\}$ e le parti sono $\{\varnothing,\{1\},\{2\},\{1,2\}\}$. I due insiemi vuoti indicati hanno rispettivamente zero e un elemento. De Morgan segue traducendo «non appartiene all'unione/intersezione» in «non appartiene a nessuno/almeno uno dei due». Immagine $\{1,4,9\}$; controimmagine $\{-2,-1,1,2\}$, benché $f$ non sia invertibile. Il primo enunciato quantificato è vero con $m=n+1$, il secondo falso prendendo $n=m$. Nell'ultimo $x=3$ esiste e ogni soluzione deve essere $5-2=3$.

Torna a [[#Esercizio 10 — Rappresentare senza confondere (De Morgan, prodotto cartesiano, controimmagine e unicità)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> Le due identità danno iniettività applicando $g$ a $f(x)=f(x')$, e suriettività scrivendo $y=f(g(y))$. Viceversa la biiezione assegna a ogni $y$ un'unica preimmagine, che definisce l'inversa e ne forza l'unicità. Entrambe le associazioni di tre funzioni mandano $x$ in $h(g(f(x)))$. Per l'iniettività della composizione cancella prima con la funzione esterna, poi con l'interna; per la suriettività trova prima una preimmagine esterna e poi una interna. Identità e scambio su $\{1,2\}$ hanno la stessa immagine ma valori diversi, quindi l'uguaglianza delle immagini non basta.

Torna a [[#Esercizio 11 — Quando si può tornare indietro (teorema dell’inversa e composizione)|esercizio 11]].

Il capitolo è acquisito quando sai esplicitare dominio e quantificatori, distinguere una prova da un elenco di esempi e controllare entrambe le direzioni di un'equivalenza. Sulle funzioni, prova a spiegare con parole tue perché l'iniettività permette di ricostruire l'origine di un valore raggiunto e la suriettività garantisce che ogni elemento del codominio sia raggiunto.

---

[[Books/Aritmetica-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Aritmetica-I/02 - Naturali e induzione|02 · Naturali e induzione →]]
