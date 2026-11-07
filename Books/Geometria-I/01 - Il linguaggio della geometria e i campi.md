# Il linguaggio della geometria e i campi

Prerequisiti: aritmetica elementare, frazioni e piano cartesiano. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Imparerai a distinguere una condizione su un oggetto da una condizione su tutti gli oggetti: insiemi, quantificatori, implicazioni e prove.
> - Capirai perché dominio e codominio fanno parte di una funzione e quando una descrizione permette di tornare indietro senza ambiguità.
> - Riconoscerai le proprietà che permettono di sommare, sottrarre e dividere: sono gli assiomi di **campo**.
> - Vedrai un campo con appena due elementi, nel quale $1+1=0$: un primo allenamento a usare le ipotesi anziché le abitudini sui reali.

## Domande per iniziare dagli esercizi

Prova il problema indicato; se ti fermi, individua quale definizione manca e apri la sezione collegata. Dopo averla letta, torna al problema e ricostruisci il passaggio senza guardare. Gli enunciati completi precedono la teoria; i riscontri sono raccolti in fondo e restano richiudibili.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Come descrivi un punto e ricostruisci le informazioni iniziali? | [[#Esercizio 12 — Una descrizione reversibile (coordinate e coefficienti non nulli)\|12]] | [[#Una descrizione deve poter essere controllata\|Una descrizione deve poter essere controllata]] |
| Che differenza c'è fra un elemento, un sottoinsieme e una coppia? | [[#Esercizio 1 — Selezionare punti (insiemi e prodotto cartesiano)\|1]] | [[#Insiemi e coppie ordinate\|Insiemi e coppie ordinate]] |
| Che cosa cambia spostando «per ogni» e «esiste»? | [[#Esercizio 3 — Cambiare ordine cambia la domanda (quantificatori e negazioni)\|3]] | [[#Quantificatori e implicazioni\|Quantificatori e implicazioni]] |
| Come si passa da un disegno o da un esempio a una prova? | [[#Esercizio 2 — La seconda distributività (doppia inclusione)\|2]], [[#Esercizio 4 — Correggere una freccia (controesempi e metodi di prova)\|4]] | [[#Dimostrare significa conservare le ragioni\|Dimostrare significa conservare le ragioni]] |
| Quali relazioni definiscono davvero una funzione? | [[#Esercizio 5 — Leggere un grafico finito (esistenza e unicità del valore)\|5]] | [[#Funzioni come assegnazioni senza ambiguità\|Funzioni come assegnazioni senza ambiguità]] |
| Esistenza e unicità di una preimmagine sono la stessa cosa? | [[#Esercizio 6 — La stessa formula con insiemi diversi (iniettività e suriettività)\|6]] | [[#Iniettività e suriettività rispondono a due domande diverse\|Iniettività e suriettività rispondono a due domande diverse]] |
| In quale ordine si compone e quando esiste l'inversa? | [[#Esercizio 7 — Due percorsi sul piano (composizione)\|7]], [[#Esercizio 8 — Tornare indietro in un solo verso (inversa e identità)\|8]] | [[#Comporre e invertire\|Comporre e invertire]] |
| Quali operazioni e quali divisioni sono ammesse? | [[#Esercizio 9 — Quali sono gli ingressi (operazioni e campi)\|9]] | [[#Le operazioni e il campo degli scalari\|Le operazioni e il campo degli scalari]] |
| Perché neutri e inversi sono unici e la cancellazione funziona? | [[#Esercizio 10 — Dare una ragione alle regole (conseguenze degli assiomi)\|10]] | [[#Ricavare le regole dagli assiomi\|Ricavare le regole dagli assiomi]] |
| Come si calcola quando due volte uno dà zero? | [[#Esercizio 11 — Calcolare con due soli elementi (il campo F2)\|11]], [[#Esercizio 12 — Una descrizione reversibile (coordinate e coefficienti non nulli)\|12]] | [[#Un campo con due elementi\|Un campo con due elementi]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–6 controllano il linguaggio; 7–8 la reversibilità delle descrizioni; 9–12 le operazioni e il ruolo delle ipotesi. Scrivi un tentativo completo prima di aprire il riscontro. Quando ti si chiede una prova, il risultato atteso comprende le ragioni dei passaggi.

### Esercizio 1 — Selezionare punti (insiemi e prodotto cartesiano)

Siano $X=\{-1,0,1\}$, $U=X\times X$, $A=\{(x,y)\in U:x=y\}$ e $B=\{(x,y)\in U:x=0\}$. Elenca $U$, $A$, $B$, $A\cap B$ e $A\cup B$; descrivi $B\setminus A$ e il complementare di $A$ in $U$. Stabilisci se $(0,1)\in B$ e se $\{(0,1)\}\subseteq B$.

Se ti blocchi: [[#Insiemi e coppie ordinate|Insiemi e coppie ordinate]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — La seconda distributività (doppia inclusione)

Per tre insiemi $A,B,C$, dimostra $A\cup(B\cap C)=(A\cup B)\cap(A\cup C)$ mediante doppia inclusione. Nell'inclusione da destra a sinistra distingui il caso $x\in A$ dal caso $x\notin A$. Spiega perché un esempio con tre insiemi finiti non basterebbe a provare l'identità generale.

Se ti blocchi: [[#Dimostrare significa conservare le ragioni|Dimostrare significa conservare le ragioni]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Cambiare ordine cambia la domanda (quantificatori e negazioni)

Decidi quali delle frasi seguenti sono vere, scrivi la negazione di ciascuna e giustifica la risposta:

$$
\forall x\in\mathbb R\ \exists y\in\mathbb R:\ x+y=0;
\qquad
\exists y\in\mathbb R\ \forall x\in\mathbb R:\ x+y=0.
$$

La prima frase afferma già che lo stesso $y$ funziona per tutti gli $x$? Per ogni $x$ la scelta di $y$ è unica? Distingui le due domande.

Se ti blocchi: [[#Quantificatori e implicazioni|Quantificatori e implicazioni]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Correggere una freccia (controesempi e metodi di prova)

Uno studente dice: «Se $x=y=0$, allora $xy=0$; quindi $xy=0$ obbliga $x=y=0$». Individua l'errore e correggi la conclusione per $x,y\in\mathbb R$. Esprimi una condizione sufficiente per $xy=0$ e una necessaria per $x=y=0$. Dimostra poi, per contrapposizione, che $x+y>6$ implica $x>3$ oppure $y>3$. Infine prova per assurdo che non esiste un minimo reale.

Se ti blocchi: [[#Quantificatori e implicazioni|Quantificatori e implicazioni]] · [[#Dimostrare significa conservare le ragioni|Dimostrare significa conservare le ragioni]] · [[#Ricavare le regole dagli assiomi|Ricavare le regole dagli assiomi]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Leggere un grafico finito (esistenza e unicità del valore)

Siano $X=\{a,b\}$ e $Y=\{0,1,2\}$. Per ciascuna relazione stabilisci se è il grafico di una funzione $X\to Y$, indicando l'eventuale condizione violata:

$$
\Gamma_1=\{(a,1),(b,1)\},\quad
\Gamma_2=\{(a,0)\},\quad
\Gamma_3=\{(a,0),(a,2),(b,1)\}.
$$

Per la funzione definita da $\Gamma_1$ calcola immagine e controimmagini di $\{1\}$ e $\{2\}$. Quale proprietà del grafico, oltre a quelle che definiscono una funzione, esprime la biettività?

Se ti blocchi: [[#Funzioni come assegnazioni senza ambiguità|Funzioni come assegnazioni senza ambiguità]] · [[#Iniettività e suriettività rispondono a due domande diverse|Iniettività e suriettività]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — La stessa formula con insiemi diversi (iniettività e suriettività)

Studia iniettività e suriettività di $n\mapsto3n+1$ da $\mathbb Z$ a $\mathbb Z$, poi da $\mathbb Z$ a $D=\{3k+1:k\in\mathbb Z\}$. Scrivi l'inversa quando esiste. Trova inoltre un dominio e un codominio che rendano biettiva la formula $x\mapsto x^2$, e un'altra scelta che la renda suriettiva ma non iniettiva.

Se ti blocchi: [[#Iniettività e suriettività rispondono a due domande diverse|Iniettività e suriettività]] · [[#Comporre e invertire|Comporre e invertire]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Due percorsi sul piano (composizione)

Siano $f,g:\mathbb R^2\to\mathbb R^2$ definite da $f(x,y)=(x+y,y)$ e $g(x,y)=(x,2y)$. Calcola $g\circ f$ e $f\circ g$: coincidono? Spiega perché la composizione è associativa anche quando non è commutativa. Per funzioni generali $u:X\to Y$ e $v:Y\to Z$, dimostra che l'iniettività di $v\circ u$ implica quella di $u$ e che la suriettività di $v\circ u$ implica quella di $v$.

Se ti blocchi: [[#Comporre e invertire|Comporre e invertire]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Tornare indietro in un solo verso (inversa e identità)

Siano $i:\mathbb R\to\mathbb R^2$, $i(t)=(t,0)$, e $p:\mathbb R^2\to\mathbb R$, $p(x,y)=x$. Calcola $p\circ i$ e $i\circ p$. Sono inverse? Spiega quale delle due identità garantisce iniettività e quale suriettività per una funzione generale $f:X\to Y$. Ricostruisci poi la prova che ogni biezione ammette un'unica inversa.

Se ti blocchi: [[#Comporre e invertire|Comporre e invertire]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Quali sono gli ingressi (operazioni e campi)

La sottrazione usuale è un'operazione interna su $\mathbb N$? E su $\mathbb Z$? Il quoziente usuale lo è su $\mathbb Q$? La legge $\mathbb R\times\mathbb R^2\to\mathbb R^2$, $(a,(x,y))\mapsto(ax,ay)$, ha lo stesso tipo di ingressi del prodotto reale? Spiega infine quale assioma esclude $\mathbb Z$ dai campi e perché l'assenza di $\sqrt2$ in $\mathbb Q$ non esclude invece $\mathbb Q$.

Se ti blocchi: [[#Le operazioni e il campo degli scalari|Le operazioni e il campo degli scalari]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Dare una ragione alle regole (conseguenze degli assiomi)

Lavorando in un campo $K$, prova l'unicità del neutro moltiplicativo e dell'opposto additivo. Deduci dagli assiomi $a0=0$ e l'annullamento del prodotto. Indica esattamente dove usi $a\ne0$ nella cancellazione moltiplicativa. Dimostra poi $(-1)a=-a$ senza dare per scontata questa identità e risolvi $ax=b$ distinguendo tutti i casi.

Se ti blocchi: [[#Ricavare le regole dagli assiomi|Ricavare le regole dagli assiomi]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Calcolare con due soli elementi (il campo F2)

In $\mathbb F_2$ calcola $1+1+1$, $-1$ e $(1+1)(1+1)$. Risolvi $x+1=1$ e $(1+1)x=0$. Verifica la distributività distinguendo i due valori del fattore esterno. Uno studente passa da $x+x=0$ a $x=0$ «dividendo per due»: indica il primo passaggio non consentito e trova una soluzione che lo smentisca. Definisci poi la caratteristica di un campo e ricostruisci la prova che, se è positiva, deve essere prima.

Se ti blocchi: [[#Un campo con due elementi|Un campo con due elementi]] · [[#Una precisazione: la caratteristica del campo|La caratteristica del campo]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Una descrizione reversibile (coordinate e coefficienti non nulli)

Per $a$ in un campo $K$, considera $c_a:K^2\to K^2$, $c_a(s,t)=(s+at,at)$. Quando è biettiva? Nei casi in cui lo è, costruisci l'inversa e verifica entrambe le composizioni. Nel caso restante descrivi l'immagine e tutte le coppie che hanno immagine $(0,0)$. Applica il criterio anche a $K=\mathbb F_2$: che cosa succede scegliendo $a=1+1$?

Se ti blocchi: [[#Una descrizione deve poter essere controllata|Una descrizione deve poter essere controllata]] · [[#Comporre e invertire|Comporre e invertire]] · [[#Ricavare le regole dagli assiomi|Ricavare le regole dagli assiomi]] · [[#Un campo con due elementi|Un campo con due elementi]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

## Teoria da recuperare

Usa la tabella iniziale per trovare il concetto necessario. Dopo la lettura, torna al problema e prova a ricostruirne la soluzione senza suggerimenti.

## Una descrizione deve poter essere controllata

Immagina un piccolo robot che si muove nel piano. Un comando di tipo $s$ lo sposta di $(s,0)$; un comando di tipo $t$ lo sposta di $(t,t)$. Dopo i due comandi la posizione è

$$
(x,y)=(s+t,t).
$$

Se conosci i comandi, trovi subito la posizione. Ma puoi fare il percorso inverso? Da $y=t$ ricavi il secondo comando; poi $x=s+t$ dà $s=x-y$. Ogni posizione $(x,y)$ si raggiunge con **una e una sola** coppia di comandi:

$$
(s,t)=(x-y,y).
$$

In questo semplice ragionamento compaiono già due problemi distinti. Possiamo raggiungere ogni posizione? E due comandi diversi possono produrre la stessa posizione? Le parole *suriettività* e *iniettività* daranno un nome preciso alle due risposte. Più avanti, basi e coordinate serviranno a costruire descrizioni simili per oggetti molto diversi dai punti del piano.

Prima, però, dobbiamo capire quali sono gli oggetti, che cosa significa «ogni» e quali operazioni autorizzano i nostri passaggi. L'astrazione comincia qui: conservare il ragionamento che funziona in un esempio e renderne visibili tutte le ipotesi.

## Insiemi e coppie ordinate

Un **insieme** raccoglie oggetti; nel contesto del corso ne usiamo la nozione di base senza costruire una teoria assiomatica degli insiemi. Scriviamo $x\in A$ per dire che $x$ è un elemento di $A$, e $x\notin A$ per negarlo. L'ordine e le ripetizioni nell'elenco non contano: $\{1,2,1\}=\{2,1\}$.

Una condizione può selezionare gli elementi di un insieme. Per esempio,

$$
L=\{(x,y)\in\mathbb R^2:y=2x\}
$$

è la retta dei punti che soddisfano l'equazione. La barretta, o i due punti al suo posto, significa «tali che».

L'inclusione $A\subseteq B$ dice che **ogni** elemento di $A$ appartiene anche a $B$. Ammette $A=B$; per escluderlo scriviamo $A\subsetneq B$. Appartenenza e inclusione pongono domande diverse: $1\in\{1,2\}$, mentre $\{1\}\subseteq\{1,2\}$. L'insieme vuoto $\varnothing$ non ha elementi ed è contenuto in ogni insieme: non esiste un suo elemento che possa violare l'inclusione. Attenzione anche a $\varnothing\ne\{\varnothing\}$: il secondo ha un elemento.

Se $A$ e $B$ descrivono due condizioni, le operazioni seguenti costruiscono nuove selezioni:

$$
\begin{aligned}
A\cap B&=\{x:x\in A\text{ e }x\in B\},\\
A\cup B&=\{x:x\in A\text{ oppure }x\in B\},\\
A\setminus B&=\{x:x\in A\text{ e }x\notin B\}.
\end{aligned}
$$

L'«oppure» dell'unione è inclusivo: è ammesso appartenere a entrambi. Se abbiamo fissato un insieme ambiente $U$, il **complementare** di $A\subseteq U$ è $A^c=U\setminus A$. Senza specificare l'ambiente, il complementare non è determinato.

**Esempio svolto.** Nel piano, siano $A=\{(x,y):x\ge0\}$ e $B=\{(x,y):y=0\}$. L'intersezione è la semiretta dell'asse orizzontale con $x\ge0$. L'unione comprende l'intero semipiano destro e anche la parte sinistra dell'asse orizzontale. Il punto $(-1,0)$ appartiene all'unione ma non all'intersezione: basta controllare separatamente le due condizioni.

Il **prodotto cartesiano** contiene invece coppie ordinate:

$$
X\times Y=\{(x,y):x\in X,\ y\in Y\}.
$$

Le coppie sono uguali esattamente quando coincidono le componenti corrispondenti. In particolare $(1,2)\ne(2,1)$. Per $X=\{0,1\}$ e $Y=\{a,b\}$ il prodotto ha elementi $(0,a),(0,b),(1,a),(1,b)$; non sono numeri da moltiplicare.

Scriviamo $\mathbb R^2=\mathbb R\times\mathbb R$ e indichiamo con $\mathbb R^3$ l'insieme delle terne reali. La corrispondenza $((x,y),z)\mapsto(x,y,z)$ permette di passare dalle coppie annidate alle terne senza perdere dati. È utile distinguere una corrispondenza naturale da un'uguaglianza letterale di oggetti, come osservato nella [[_transcripts/Geometria 1/2026-09-23 - Insiemi, applicazioni e spazi vettoriali|lezione del 23 settembre]].

> [!example] Esempi e controesempi — Elenchi e coordinate
> $\{1,2\}=\{2,1\}$, perché contano gli elementi. Invece $(1,2)\ne(2,1)$, perché contano anche le posizioni. Per descrivere un punto o una sequenza di comandi useremo coppie e liste ordinate, non insiemi non ordinati.

Nel libro $\mathbb N=\{0,1,2,\ldots\}$; $\mathbb Z$, $\mathbb Q$, $\mathbb R$ indicano interi, razionali e reali. I complessi $\mathbb C$ saranno costruiti nel [[Books/Geometria-I/02 - Numeri complessi e geometria del piano|capitolo 02]].

## Quantificatori e implicazioni

«Per ogni punto esiste un comando» e «esiste un comando che va bene per ogni punto» non sono la stessa frase. Nella prima il comando può dipendere dal punto; nella seconda deve essere sempre lo stesso.

Il simbolo $\forall$ significa **per ogni**; $\exists$ significa **esiste almeno uno**. Per esempio,

$$
\forall x\in\mathbb R\ \exists y\in\mathbb R:\ y>x
$$

è vero: scelto $x$, basta prendere $y=x+1$. Scambiando i quantificatori otteniamo un'affermazione falsa:

$$
\exists y\in\mathbb R\ \forall x\in\mathbb R:\ y>x.
$$

Un tale $y$ dovrebbe superare anche $x=y$, il che è impossibile. L'ordine dei quantificatori registra quindi le dipendenze consentite nelle scelte.

Per negare una frase universale basta trovare un caso contrario; per negare un'esistenza bisogna escludere tutti i candidati:

$$
\neg(\forall x\in X\ P(x))\iff\exists x\in X:\neg P(x),
$$

$$
\neg(\exists x\in X\ P(x))\iff\forall x\in X:\neg P(x).
$$

Con più quantificatori si procede nell'ordine, scambiandoli tutti e negando la condizione finale. La negazione di «ogni punto ha un comando» è «esiste un punto per il quale nessun comando funziona».

Scriviamo $\exists!x\in X:P(x)$ per **esiste un unico** elemento con quella proprietà. Occorrono due prove: esibire almeno un candidato e mostrare che due candidati qualsiasi coincidono. Esibire una soluzione non dimostra l'unicità.

Un'**implicazione** $P\Rightarrow Q$ afferma che ogni volta che vale l'ipotesi $P$ vale anche la conclusione $Q$. È falsa esattamente se $P$ è vera e $Q$ è falsa. Diciamo che $P$ è *sufficiente* per $Q$, mentre $Q$ è *necessaria* per $P$. «$P$ solo se $Q$» significa $P\Rightarrow Q$; «$P$ se $Q$» significa $Q\Rightarrow P$.

L'**equivalenza** $P\iff Q$ richiede entrambe le implicazioni. Sul piano, $x=y=0$ implica $x+y=0$, ma $x+y=0$ non implica $x=y=0$: il punto $(1,-1)$ è un controesempio alla reciproca. Un **controesempio** deve rispettare le ipotesi e violare la conclusione; un punto con $x+y\ne0$ non confuterebbe quella reciproca.

> [!warning] Attenzione — Le condizioni non si possono sottintendere
> La precisione di parole e ordine logico è un richiamo esplicito della [[_transcripts/Geometria 1/2026-09-23 - Insiemi, applicazioni e spazi vettoriali|lezione introduttiva]]. Per esempio «per ogni $x$ esiste un $y$» non autorizza a scegliere un unico $y$ indipendente da $x$. Prima di calcolare, scrivi quali elementi sono fissati e quali devi ancora costruire.

Una condizione universale su un insieme vuoto è vera perché non ha controesempi. Questo non produce alcun elemento dell'insieme. In seguito sarà essenziale distinguere «chiuso rispetto a certe operazioni» da «non vuoto e chiuso».

## Dimostrare significa conservare le ragioni

Un disegno aiuta a formulare una congettura; una dimostrazione spiega perché tutti i casi ammessi seguano dalle ipotesi. La strategia più utile all'inizio del corso è la **doppia inclusione**:

$$
A=B\quad\Longleftrightarrow\quad A\subseteq B\text{ e }B\subseteq A.
$$

Per una singola inclusione si prende un elemento arbitrario del primo insieme e si verifica la definizione di appartenenza al secondo. «Arbitrario» significa che non scegliamo un punto particolarmente comodo: il ragionamento deve valere per qualunque elemento del primo insieme.

**Esempio svolto: distribuire intersezione e unione.** Vogliamo provare

$$
A\cap(B\cup C)=(A\cap B)\cup(A\cap C).
$$

*Passo 1 — Da sinistra a destra.* Sia $x\in A\cap(B\cup C)$. Allora $x\in A$ e almeno una fra $x\in B$, $x\in C$ è vera. Nel primo caso $x\in A\cap B$; nel secondo $x\in A\cap C$. In entrambi appartiene all'unione a destra.

*Passo 2 — Da destra a sinistra.* Se $x$ appartiene all'unione a destra, sta in $A\cap B$ oppure in $A\cap C$. In entrambi i casi sta in $A$ e in almeno uno fra $B,C$, dunque in $A\cap(B\cup C)$. Le due inclusioni concludono la prova.

Un'altra forma di distributività è $A\cup(B\cap C)=(A\cup B)\cap(A\cup C)$; la proverai nell'esercizio 2. Le due identità non dipendono da come abbiamo disegnato gli insiemi.

La **prova diretta** parte dalle ipotesi e costruisce la tesi. Per esempio, se $x=y$ e $y=z$, sostituendo otteniamo $x=z$. La prova per **contrapposizione** dimostra $\neg Q\Rightarrow\neg P$ per ottenere $P\Rightarrow Q$: esclude esattamente la stessa situazione impossibile, $P$ vera e $Q$ falsa. Per provare che $x+y>2$ implica $x>1$ oppure $y>1$, assumiamo che entrambe le conclusioni falliscano. Da $x\le1$ e $y\le1$ segue $x+y\le2$, cioè la negazione dell'ipotesi.

La prova **per assurdo** assume la negazione della tesi e ne ricava una contraddizione. Non esiste un massimo reale: se $M$ lo fosse, il reale $M+1$ sarebbe maggiore di $M$, contro la sua proprietà. La contraddizione va identificata; dire soltanto «è assurdo» non sostituisce l'ultimo passaggio.

Per un'unicità la strategia è ancora più precisa: supponiamo di avere due oggetti con la proprietà richiesta e mostriamo che sono uguali. Non è necessario supporli già diversi. Vedremo questo procedimento sia per le funzioni inverse sia per i neutri delle operazioni.

> [!abstract] Concetto chiave — La forma della domanda suggerisce la prova
> «Per ogni» richiede un elemento arbitrario; «esiste» una costruzione; «unico» un confronto fra due candidati; «se e solo se» due implicazioni; un'uguaglianza di insiemi due inclusioni. Se sospetti una frase falsa, cerca un controesempio che conservi tutte le ipotesi.

## Funzioni come assegnazioni senza ambiguità

Un dispositivo riceve un dato e restituisce un risultato. Per descriverlo matematicamente dobbiamo specificare quali dati accetta, in quale insieme restituisce i risultati e quale risultato assegna a ogni dato.

Una **funzione**, o **applicazione**, $f:X\to Y$ assegna a ogni elemento $x$ del **dominio** $X$ uno e un solo elemento $f(x)$ del **codominio** $Y$. Per rendere precisa la parola «assegna», consideriamo il suo **grafico**:

$$
\Gamma_f=\{(x,f(x)):x\in X\}\subseteq X\times Y.
$$

Viceversa, un sottoinsieme $\Gamma\subseteq X\times Y$ è il grafico di una funzione $X\to Y$ esattamente quando

$$
\forall x\in X\ \exists!y\in Y:\ (x,y)\in\Gamma.
$$

La definizione contiene due richieste indipendenti: nessun ingresso resta senza risposta e nessun ingresso riceve due risposte diverse. Non vieta che ingressi diversi diano la stessa risposta.

**Esempio svolto.** Con $X=\{a,b,c\}$ e $Y=\{0,1\}$, la relazione $\{(a,0),(b,0),(c,1)\}$ definisce una funzione. La relazione $\{(a,0),(b,1)\}$ no: manca un valore per $c$. Neppure $\{(a,0),(a,1),(b,0),(c,1)\}$ funziona: ad $a$ corrispondono due valori. L'errore nel primo caso è l'esistenza, nel secondo l'unicità.

Dominio e codominio sono parte del dato. La formula $x\mapsto1/x$ non definisce una funzione $\mathbb R\to\mathbb R$, perché non dà un valore a $0$; definisce una funzione $\mathbb R\setminus\{0\}\to\mathbb R$. La formula $x\mapsto x/2$ non definisce una funzione $\mathbb Z\to\mathbb Z$, perché il valore in $1$ non appartiene al codominio.

L'**immagine** è l'insieme dei valori effettivamente raggiunti:

$$
\operatorname{Im}f=f(X)=\{f(x):x\in X\}\subseteq Y.
$$

Per $A\subseteq X$ poniamo $f(A)=\{f(a):a\in A\}$. Per $B\subseteq Y$ la **controimmagine** è

$$
f^{-1}(B)=\{x\in X:f(x)\in B\}.
$$

Questa notazione non richiede che esista una funzione inversa. Per $f:\mathbb R\to\mathbb R$, $f(x)=x^2$, la controimmagine di $\{4\}$ è $\{-2,2\}$; quella di $\{-1\}$ è vuota.

Due funzioni $f,g:X\to Y$ sono uguali se $f(x)=g(x)$ per ogni $x\in X$. Non basta che abbiano la stessa immagine: su $\{0,1\}$, l'identità e lo scambio $0\leftrightarrow1$ raggiungono gli stessi valori ma non sono uguali.

## Iniettività e suriettività rispondono a due domande diverse

Riprendiamo un sistema di coordinate: vogliamo sapere se un risultato può venire da due descrizioni diverse e se tutti i risultati desiderati possono essere descritti.

Una funzione $f:X\to Y$ è **iniettiva** se

$$
\forall x,x'\in X:\quad f(x)=f(x')\Rightarrow x=x'.
$$

Equivalentemente, elementi distinti hanno immagini distinte. Ogni $y\in Y$ ha **al più una** preimmagine. Per mostrare che $f$ non è iniettiva basta trovare $x\ne x'$ con $f(x)=f(x')$.

È **suriettiva** se

$$
\forall y\in Y\ \exists x\in X:\quad f(x)=y,
$$

ossia $\operatorname{Im}f=Y$. Ogni elemento del codominio ha **almeno una** preimmagine. Per negare la suriettività serve un $y\in Y$ che nessun $x$ raggiunga.

È **biettiva** quando è sia iniettiva sia suriettiva: ogni elemento del codominio ha esattamente una preimmagine. Non confondere questa unicità con quella nella definizione di funzione. Una funzione ha un unico *valore per ingresso*; una biezione ha anche un unico *ingresso per valore del codominio*.

| Funzione | Iniettiva? | Suriettiva? | Che cosa succede |
|---|---|---|---|
| $\mathbb R\to\mathbb R$, $x\mapsto2x-3$ | sì | sì | $y$ ha l'unica preimmagine $(y+3)/2$ |
| $\mathbb Z\to\mathbb Z$, $n\mapsto2n$ | sì | no | $1$ non è raggiunto |
| $\mathbb R\to[0,+\infty)$, $x\mapsto x^2$ | no | sì | $1$ e $-1$ hanno la stessa immagine; ogni $y\ge0$ è raggiunto |
| $\mathbb R\to\mathbb R$, $x\mapsto x^2$ | no | no | manca anche ogni reale negativo |

**Esempio svolto: perdere una coordinata.** La funzione $p:\mathbb R^2\to\mathbb R$, $p(x,y)=x$, è suriettiva: dato $a\in\mathbb R$, il punto $(a,0)$ viene mandato in $a$. Non è iniettiva: $(0,0)$ e $(0,1)$ sono distinti e hanno entrambi immagine $0$. Non si è perso «un punto», ma la possibilità di distinguere tutti i punti con la stessa prima coordinata. Nucleo e immagine renderanno più precisa questa idea nel [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|capitolo 11]].

> [!warning] Attenzione — Una formula non determina tutte le proprietà
> Specificare dominio e codominio è un richiamo della [[_transcripts/Geometria 1/2026-09-23 - Insiemi, applicazioni e spazi vettoriali|lezione del 23 settembre]]. $x\mapsto x^2$ è biettiva da $[0,+\infty)$ a $[0,+\infty)$, ma non da $\mathbb R$ a $\mathbb R$. Per provare la suriettività non basta trovare qualche valore raggiunto: devi prendere un elemento arbitrario del codominio.

## Comporre e invertire

Se $f:X\to Y$ e $g:Y\to Z$, la **composizione** applica prima $f$ e poi $g$:

$$
g\circ f:X\to Z,\qquad(g\circ f)(x)=g(f(x)).
$$

L'ordine si legge da destra verso sinistra. Con $f(x)=x+1$ e $g(x)=3x$ su $\mathbb R$, abbiamo $(g\circ f)(x)=3x+3$ e $(f\circ g)(x)=3x+1$: l'ordine cambia il risultato. Inoltre le due composizioni non sono sempre entrambe definite: occorre che i valori della prima funzione siano ammessi come ingressi della seconda, eventualmente esplicitando una restrizione.

La composizione è **associativa**. Per $f:X\to Y$, $g:Y\to Z$, $h:Z\to T$, entrambe $h\circ(g\circ f)$ e $(h\circ g)\circ f$ mandano ogni $x$ in $h(g(f(x)))$, quindi sono uguali. La verifica usa l'uguaglianza punto per punto delle funzioni.

L'**identità** $\operatorname{id}_X:X\to X$ è $\operatorname{id}_X(x)=x$. Per $f:X\to Y$,

$$
f\circ\operatorname{id}_X=f,\qquad\operatorname{id}_Y\circ f=f.
$$

Una funzione $g:Y\to X$ è **inversa** di $f:X\to Y$ se

$$
g\circ f=\operatorname{id}_X,\qquad f\circ g=\operatorname{id}_Y.
$$

La prima identità ricostruisce ogni ingresso; la seconda ricostruisce ogni elemento del codominio. Servono entrambe.

> [!abstract] Concetto chiave — Biezione significa descrizione reversibile
> Una funzione ammette inversa se e solo se è biettiva. Quando esiste, l'inversa è unica e si indica $f^{-1}$. Il simbolo indica una funzione che torna indietro, non il reciproco numerico $1/f$.

**Dimostrazione.** *Passo 1 — Costruire l'inversa da una biezione.* Dato $y\in Y$, la suriettività dà un $x$ con $f(x)=y$; l'iniettività assicura che sia unico. Definiamo $g(y)$ come quell'unico $x$. Per ogni $x\in X$, la sua immagine $f(x)$ ha proprio $x$ come unica preimmagine, dunque $g(f(x))=x$. Per ogni $y\in Y$, la scelta di $g(y)$ garantisce $f(g(y))=y$.

*Passo 2 — Ricavare la biettività dalle due identità.* Se $f(x)=f(x')$, applicando $g$ otteniamo $x=x'$, quindi $f$ è iniettiva. Per ogni $y\in Y$ l'uguaglianza $y=f(g(y))$ esibisce una preimmagine, quindi $f$ è suriettiva.

*Passo 3 — Provare l'unicità.* Se $g$ e $h$ sono entrambe inverse di $f$, allora, usando associatività e le identità,

$$
g=g\circ\operatorname{id}_Y=g\circ(f\circ h)=(g\circ f)\circ h=\operatorname{id}_X\circ h=h.
$$

**Esempio svolto.** La funzione $c:\mathbb R^2\to\mathbb R^2$, $c(s,t)=(s+t,t)$, ha inversa $d(x,y)=(x-y,y)$. Infatti

$$
d(c(s,t))=((s+t)-t,t)=(s,t),
$$

$$
c(d(x,y))=((x-y)+y,y)=(x,y).
$$

Abbiamo verificato entrambe le composizioni; la biettività segue dal teorema. È la forma rigorosa del problema del robot.

Anche comporre funzioni con buone proprietà conserva quelle proprietà. Se $f$ e $g$ sono iniettive, da $g(f(x))=g(f(x'))$ cancelliamo prima con l'iniettività di $g$, poi con quella di $f$, ottenendo $x=x'$. Se sono suriettive, dato $z\in Z$ scegliamo $y\in Y$ con $g(y)=z$, poi $x\in X$ con $f(x)=y$; così $g(f(x))=z$. La composizione di biezioni è quindi una biezione.

## Le operazioni e il campo degli scalari

Per ricavare $s=x-y$ abbiamo usato la sottrazione; in altri problemi vorremo dividere per un coefficiente. Quali proprietà dell'insieme numerico rendono leciti questi passaggi? La risposta sarà importante quando i coefficienti non saranno necessariamente reali.

Un'**operazione interna** su $K$ è una funzione $K\times K\to K$. Riceve due elementi di $K$ e restituisce un elemento di $K$. La somma sui reali è interna; il quoziente non è un'operazione su tutto $\mathbb R\times\mathbb R$, perché non è definito se il secondo ingresso è zero. Una legge $K\times V\to V$ ha invece un ingresso in $K$ e uno in un insieme $V$; nel contesto degli spazi vettoriali verrà chiamata prodotto per scalare, o prodotto esterno. Le due firme sono diverse: non possiamo scambiare i tipi degli ingressi senza una definizione che lo permetta.

Un **campo** è un insieme $K$ dotato di due operazioni interne $+$ e $\cdot$, e di due elementi distinti $0$ e $1$, con le seguenti proprietà.

Per la somma, per ogni $a,b,c\in K$:

$$
(a+b)+c=a+(b+c),\qquad a+b=b+a,
$$

$$
a+0=0+a=a,\qquad\text{per ogni }a\text{ esiste }-a\text{ con }a+(-a)=0.
$$

Per il prodotto, per ogni $a,b,c\in K$:

$$
(ab)c=a(bc),\qquad ab=ba,\qquad a1=1a=a,
$$

$$
\text{per ogni }a\ne0\text{ esiste }a^{-1}\in K\text{ con }aa^{-1}=1.
$$

Infine, le operazioni sono collegate dalla **distributività**:

$$
a(b+c)=ab+ac,\qquad(a+b)c=ac+bc.
$$

Per commutatività del prodotto, una delle due distributività segue dall'altra. La somma, con associatività, neutro e opposti, rende $K$ un **gruppo abeliano**; questa espressione significa semplicemente che la somma ha quelle proprietà ed è commutativa. Analogamente, gli elementi non nulli formano un gruppo abeliano per il prodotto. Verificheremo fra poco che il prodotto di non nulli è ancora non nullo.

Il termine **scalare** indicherà un elemento del campo scelto. I campi $\mathbb Q$ e $\mathbb R$ soddisfano queste proprietà con le operazioni usuali; $\mathbb C$ sarà un altro esempio. Non serve che ogni equazione abbia una soluzione: $x^2=2$ non ha soluzione in $\mathbb Q$, eppure $\mathbb Q$ è un campo. La proprietà di campo consente di dividere per elementi non nulli già appartenenti al campo, non di estrarre qualsiasi radice.

> [!example] Esempi e controesempi — Essere un campo
> $\mathbb Q$ è un campo: per $a/b\ne0$, con $a,b\in\mathbb Z$ e $b\ne0$, l'inverso è $b/a\in\mathbb Q$. $\mathbb Z$ con le operazioni usuali non è un campo: $2$ non ha inverso intero. $\mathbb N$ non ha neppure l'opposto additivo di $1$. L'insieme con un solo elemento, pur ammettendo operazioni banali, è escluso dalla richiesta $0\ne1$.

Per evitare ambiguità, in un confronto fra strutture si possono scrivere $0_K$ e $1_K$. I simboli $0$ e $1$ indicano il ruolo di neutri delle operazioni; non prescrivono che gli elementi debbano essere i reali costruiti in precedenza.

## Ricavare le regole dagli assiomi

Una definizione astratta è utile quando permette di recuperare le regole di calcolo con prove che non dipendono dall'esempio. In questa sezione lavoriamo in un campo qualsiasi $K$.

### Unicità dei neutri, degli opposti e degli inversi

Se $e$ ed $e'$ sono entrambi neutri per la somma, allora

$$
e=e+e'=e'.
$$

La prima uguaglianza usa che $e'$ è neutro; la seconda che $e$ è neutro. È proprio il doppio uso delle proprietà dei candidati a mostrarne l'uguaglianza. Lo stesso argomento prova l'unicità del neutro moltiplicativo.

Se $b$ e $c$ sono entrambi opposti di $a$, associatività e commutatività danno

$$
b=b+0=b+(a+c)=(b+a)+c=0+c=c.
$$

Se invece $a\ne0$ e $b,c$ sono entrambi inversi moltiplicativi di $a$,

$$
b=b1=b(ac)=(ba)c=1c=c.
$$

Queste prove giustificano le notazioni $-a$ e $a^{-1}$: non stiamo scegliendo arbitrariamente fra più risultati possibili. Gli esercizi sui tre tipi di unicità sono proposti nella [[_transcripts/Geometria 1/2026-09-23 - Insiemi, applicazioni e spazi vettoriali|lezione del 23 settembre]], dove viene anche richiesto di spiegare ogni passaggio della breve prova sul neutro.

### Cancellare, moltiplicare per zero e dividere

Dall'uguaglianza $a+b=a+c$, sommiamo $-a$ ai due membri e usiamo associatività: otteniamo $b=c$. Questa è la **cancellazione additiva**. Non significa cancellare simboli per somiglianza grafica: significa applicare la stessa operazione ai due membri.

Ora, dalla distributività,

$$
a0=a(0+0)=a0+a0.
$$

Confrontando $a0+0=a0+a0$ e cancellando $a0$, ricaviamo $a0=0$. Per commutatività vale anche $0a=0$. In particolare zero non ha inverso moltiplicativo: se $0b=1$, avremmo $0=1$, contro l'assioma.

Se $a\ne0$ e $ab=ac$, moltiplichiamo per $a^{-1}$: associatività e $a^{-1}a=1$ danno $b=c$. Questa è la **cancellazione moltiplicativa**; la condizione $a\ne0$ è essenziale. Da $0b=0c$ non si ricava alcuna uguaglianza fra $b$ e $c$.

Ne segue l'**annullamento del prodotto**:

$$
ab=0\quad\Longrightarrow\quad a=0\text{ oppure }b=0.
$$

Infatti, se $a=0$ la conclusione è già vera; se $a\ne0$, cancelliamo $a$ nell'uguaglianza $ab=a0$ e otteniamo $b=0$. Dunque due elementi non nulli hanno prodotto non nullo: l'operazione moltiplicativa resta all'interno di $K\setminus\{0\}$.

Definiamo $a-b=a+(-b)$ e, per $b\ne0$, $a/b=ab^{-1}$. L'equazione $ax=b$ ha l'unica soluzione $x=a^{-1}b$ se $a\ne0$: esistenza per sostituzione, unicità per cancellazione. Se $a=0$, ha tutte le soluzioni quando $b=0$ e nessuna quando $b\ne0$.

> [!warning] Attenzione — Prima controlla il divisore
> Avvertenza di calcolo redazionale: dall'equazione $ax=ay$ puoi dedurre $x=y$ soltanto se sai che $a\ne0$. Se $a$ contiene un parametro, devi separare il caso in cui si annulla prima di dividere. Questa distinzione riapparirà nei [[Books/Geometria-I/10 - Il metodo di Gauss|sistemi con parametri]].

Il calcolo usuale non è stato abbandonato: abbiamo isolato le ragioni che lo rendono valido e il punto preciso in cui ciascuna ipotesi serve.

## Un campo con due elementi

Possiamo costruire un campo su $\mathbb F_2=\{0,1\}$. Poiché $0$ è il neutro additivo, conosciamo già quasi tutta la tavola della somma. Rimane $1+1$: deve essere $0$, altrimenti $1$ non avrebbe un opposto. Le tavole complete sono

| $+$ | $0$ | $1$ |
|---|---|---|
| $0$ | $0$ | $1$ |
| $1$ | $1$ | $0$ |

| $\cdot$ | $0$ | $1$ |
|---|---|---|
| $0$ | $0$ | $0$ |
| $1$ | $0$ | $1$ |

Queste sono operazioni sull'insieme dei due simboli; $1+1=0$ è una regola diversa da quella della somma reale. Un modo per ricordarla è pensare alla parità: $0$ rappresenta «pari», $1$ «dispari»; la somma di due dispari è pari.

Verifichiamo gli assiomi senza limitarci a leggere le tavole. La somma è commutativa perché la tavola è simmetrica; $0$ è neutro e ciascun elemento è il proprio opposto. Per l'associatività, la somma di tre elementi vale $0$ se il numero degli $1$ è pari, $1$ se è dispari: il risultato non dipende dal raggruppamento. Il prodotto di più elementi vale $1$ esattamente quando tutti sono $1$, quindi è associativo; è commutativo e ha neutro $1$. L'unico elemento non nullo è $1$, che è inverso di sé stesso. Per la distributività $a(b+c)=ab+ac$, se $a=0$ entrambi i membri sono $0$; se $a=1$ entrambi sono $b+c$. L'altra distributività segue per commutatività. Infine $0$ e $1$ sono distinti. Tutti gli assiomi sono verificati.

**Esempio svolto.** In $\mathbb F_2$, l'equazione $x+1=0$ ha soluzione $x=1$. Anche $x+1=1$ ha un'unica soluzione, $x=0$. Invece $(1+1)x=1$ non ne ha: il coefficiente è zero. Non possiamo dividere per $1+1$ solo perché il simbolo ricorda il reale $2$.

### Una precisazione: la caratteristica del campo

Il comportamento di $1+1$ ha un nome più generale. La **caratteristica** di $K$ è il minimo intero $n>0$ per cui $n\cdot1_K=0$, se esiste; se nessun intero positivo ha questa proprietà, si dice che la caratteristica è zero. Qui $n\cdot1_K$ significa sommare $1_K$ con sé stesso $n$ volte, non moltiplicare per uno scalare reale.

Così $\mathbb F_2$ ha caratteristica $2$, mentre $\mathbb Q,\mathbb R,\mathbb C$ hanno caratteristica zero. Se la caratteristica positiva $n$ fosse composta, $n=ab$ con $1<a,b<n$, avremmo

$$
(a\cdot1_K)(b\cdot1_K)=n\cdot1_K=0.
$$

Per la minimalità di $n$ nessuno dei due fattori sarebbe nullo, contro l'annullamento del prodotto. Dunque una caratteristica positiva è un numero primo. Questa precisazione redazionale permette di formulare con esattezza le ipotesi «si può dividere per $2$» e «un intero non si annulla nel campo», che ritroveremo nelle decomposizioni di matrici e nelle derivate dei polinomi.

> [!abstract] Concetto chiave — Le regole dipendono dalla struttura
> In ogni campo possiamo sommare, sottrarre e dividere per elementi non nulli. Non in ogni campo $1+1$ è non nullo. Una dimostrazione valida su un campo generico deve usare gli assiomi e dichiarare eventuali ipotesi ulteriori.

Nel [[Books/Geometria-I/04 - Spazi vettoriali e operazioni lineari|capitolo 04]] distingueremo gli scalari dagli oggetti su cui agiscono. Le funzioni di coordinate dei capitoli successivi saranno esempi di descrizioni reversibili che rispettano anche le operazioni: la preparazione di questo capitolo permetterà di leggere quella richiesta con precisione.

## Fonti

Insiemi, prodotto cartesiano, distributività, doppia inclusione, applicazioni tramite grafico, iniettività, suriettività, composizione, costruzione dell'inversa, operazioni e assiomi di campo provengono dalla [[Notes/Geometria 1/Lectures/2026-09-23 - Insiemi, applicazioni e spazi vettoriali|nota del 23 settembre]] e dalla corrispondente [[_transcripts/Geometria 1/2026-09-23 - Insiemi, applicazioni e spazi vettoriali|trascrizione]]. La stessa lezione propone il campo con due elementi e gli esercizi sull'unicità dei neutri, degli opposti e degli inversi. La richiesta $0\ne1$, esplicita nella trascrizione, è mantenuta nella definizione.

Il trattamento sistematico di negazioni, necessario/sufficiente e metodi di prova, le controimmagini, le prove nel verso inverso del teorema dell'inversa e le conseguenze dettagliate degli assiomi e la precisazione sulla caratteristica sono raccordi didattici aggiunti. Il robot, gli esempi numerici e i problemi finali sono redazionali; gli esercizi sulle unicità rielaborano il tipo di richiesta della lezione. I richiami attribuiti al docente riguardano la precisione del linguaggio, la specificazione di dominio e codominio e la spiegazione dei passaggi; le ulteriori avvertenze di calcolo sono esplicitamente redazionali. Per il quadro complessivo: [[Books/Geometria-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Riscontri degli esercizi

Apri il riscontro dopo un tentativo scritto. Per una prova, controlla che il tuo ragionamento copra ogni caso e non usi la conclusione come ipotesi.

### Riscontro 1

> [!tip]- Riscontro 1
> $U=\{(-1,-1),(-1,0),(-1,1),(0,-1),(0,0),(0,1),(1,-1),(1,0),(1,1)\}$. Le selezioni sono $A=\{(-1,-1),(0,0),(1,1)\}$ e $B=\{(0,-1),(0,0),(0,1)\}$. Quindi $A\cap B=\{(0,0)\}$ e $A\cup B=\{(-1,-1),(0,-1),(0,0),(0,1),(1,1)\}$. La differenza è $\{(0,-1),(0,1)\}$; il complementare di $A$ comprende le sei coppie con componenti diverse. Entrambe le frasi finali sono vere: la prima riguarda la coppia come elemento, la seconda il suo singoletto come sottoinsieme.

Torna a [[#Esercizio 1 — Selezionare punti (insiemi e prodotto cartesiano)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> Se $x\in A\cup(B\cap C)$, o $x\in A$, e allora appartiene a entrambe le unioni a destra, oppure $x\in B\cap C$, e ancora appartiene a entrambe. Viceversa, sia $x\in(A\cup B)\cap(A\cup C)$. Se $x\in A$ la tesi è immediata; se $x\notin A$, la prima unione impone $x\in B$ e la seconda $x\in C$, quindi $x\in B\cap C$. Abbiamo provato entrambe le inclusioni per insiemi arbitrari. Un esempio concreto controlla soltanto quella particolare scelta, mentre l'identità quantifica su tutte le scelte.

Torna a [[#Esercizio 2 — La seconda distributività (doppia inclusione)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> La prima è vera: per ogni $x$ scegli $y=-x$. La sua negazione è $\exists x\in\mathbb R\ \forall y\in\mathbb R:x+y\ne0$, falsa proprio per quella scelta. La seconda è falsa: un $y$ che funzionasse per $x=0$ dovrebbe essere $0$, mentre per $x=1$ dovrebbe essere $-1$. La sua negazione è $\forall y\in\mathbb R\ \exists x\in\mathbb R:x+y\ne0$, vera scegliendo $x=1-y$. La prima non richiede un unico $y$ per tutti gli $x$; per ogni $x$ fissato, però, il suo $y$ è unico, poiché da $x+y=x+y'=0$ segue $y=y'$.

Torna a [[#Esercizio 3 — Cambiare ordine cambia la domanda (quantificatori e negazioni)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> È stata invertita senza prova un'implicazione. La coppia $(0,1)$ ha prodotto nullo ma non ha entrambe le componenti nulle. La conclusione corretta è $x=0$ **oppure** $y=0$. Per esempio $x=0$ è sufficiente per $xy=0$; $xy=0$ è necessario per $x=y=0$. Per contrapposizione, se $x\le3$ e $y\le3$, allora $x+y\le6$. Infine, se $m$ fosse un minimo reale, il reale $m-1<m$ contraddirebbe la sua minimalità.

Torna a [[#Esercizio 4 — Correggere una freccia (controesempi e metodi di prova)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Solo $\Gamma_1$ è il grafico di una funzione: ogni ingresso ha un unico valore. In $\Gamma_2$ manca la risposta per $b$; in $\Gamma_3$ l'ingresso $a$ ha due risposte. Per la prima funzione, l'immagine è $\{1\}$, la controimmagine di $\{1\}$ è $X$, quella di $\{2\}$ è $\varnothing$. Una funzione è biettiva esattamente quando, oltre all'unica coppia per ogni primo elemento $x$, il grafico contiene anche esattamente una coppia per ogni secondo elemento $y\in Y$: $\forall y\in Y\ \exists!x\in X:(x,y)\in\Gamma$.

Torna a [[#Esercizio 5 — Leggere un grafico finito (esistenza e unicità del valore)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> Da $3n+1=3n'+1$ segue $n=n'$, quindi la funzione è iniettiva in entrambe le specificazioni. In $\mathbb Z$ non raggiunge $0$, perché richiederebbe $n=-1/3$. Con codominio $D$ è suriettiva per definizione di $D$, quindi biettiva; l'inversa è $D\to\mathbb Z$, $d\mapsto(d-1)/3$, che ha valore intero per ogni $d\in D$. La funzione quadrato è biettiva da $[0,+\infty)$ a $[0,+\infty)$, con inversa la radice non negativa. Da $\mathbb R$ a $[0,+\infty)$ è suriettiva ma non iniettiva, poiché $1$ e $-1$ hanno la stessa immagine.

Torna a [[#Esercizio 6 — La stessa formula con insiemi diversi (iniettività e suriettività)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> $(g\circ f)(x,y)=(x+y,2y)$, mentre $(f\circ g)(x,y)=(x+2y,2y)$: differiscono, per esempio, in $(0,1)$. Associatività significa che tre applicazioni compatibili danno sempre $h(g(f(x)))$, indipendentemente dal raggruppamento; non permette di scambiarne l'ordine. Se $u(x)=u(x')$, applicando $v$ e usando l'iniettività di $v\circ u$ otteniamo $x=x'$. Se $v\circ u$ è suriettiva, ogni $z\in Z$ è $v(u(x))$ per qualche $x$, quindi $u(x)$ è una preimmagine di $z$ per $v$.

Torna a [[#Esercizio 7 — Due percorsi sul piano (composizione)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> $(p\circ i)(t)=t$, mentre $(i\circ p)(x,y)=(x,0)$, diverso dall'identità del piano. Quindi $p$ e $i$ non sono inverse. In generale $g\circ f=\operatorname{id}_X$ garantisce l'iniettività di $f$: applica $g$ a un'uguaglianza di immagini. La condizione $f\circ g=\operatorname{id}_Y$ garantisce la suriettività di $f$: $g(y)$ è una preimmagine di ogni $y$. Per costruire l'inversa di una biezione assegna a $y$ la sua unica preimmagine; esistenza e unicità discendono rispettivamente da suriettività e iniettività. Le due composizioni sono identità per costruzione; due inverse $g,h$ coincidono perché $g=g\circ(f\circ h)=(g\circ f)\circ h=h$.

Torna a [[#Esercizio 8 — Tornare indietro in un solo verso (inversa e identità)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> Su $\mathbb N$ la sottrazione non è interna: $0-1\notin\mathbb N$. Su $\mathbb Z$ lo è. Il quoziente non è un'operazione su tutto $\mathbb Q\times\mathbb Q$, perché manca quando il denominatore è zero; restringendo il secondo ingresso a $\mathbb Q\setminus\{0\}$ si ottiene una funzione ben definita in $\mathbb Q$. La legge con le coppie riceve un reale e una coppia reale, non due reali: è un prodotto per scalare. $\mathbb Z$ fallisce l'inverso moltiplicativo per non nulli come $2$; $\mathbb Q$ non lo fallisce, perché il reciproco di un razionale non nullo è razionale. Gli assiomi di campo non richiedono radici quadrate di tutti gli elementi.

Torna a [[#Esercizio 9 — Quali sono gli ingressi (operazioni e campi)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> Per due neutri moltiplicativi $e,e'$, $e=ee'=e'$; il primo passaggio usa la neutralità di $e'$, il secondo quella di $e$. Per due opposti $b,c$ di $a$, $b=b+(a+c)=(b+a)+c=c$, inserendo i neutri nei passaggi intermedi. Dalla distributività $a0=a0+a0$ e dalla cancellazione additiva segue $a0=0$. Se $ab=0$ e $a\ne0$, moltiplicare per $a^{-1}$ dà $b=0$; se $a=0$ l'alternativa richiesta è già soddisfatta. La condizione $a\ne0$ serve esattamente all'esistenza di $a^{-1}$. Inoltre $a+(-1)a=1a+(-1)a=(1+(-1))a=0a=0$: dunque $(-1)a$ è l'opposto di $a$, e per unicità vale $(-1)a=-a$. Per $ax=b$: se $a\ne0$, unica soluzione $a^{-1}b$; se $a=0=b$, ogni $x\in K$; se $a=0$, $b\ne0$, nessuna.

Torna a [[#Esercizio 10 — Dare una ragione alle regole (conseguenze degli assiomi)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> $1+1+1=1$, $-1=1$ e $(1+1)(1+1)=0$. Da $x+1=1$ segue $x=0$; nell'altra equazione il coefficiente è zero, quindi entrambi gli elementi di $\mathbb F_2$ sono soluzioni. Per distributività: con fattore esterno $0$ entrambi i membri sono $0$, con fattore esterno $1$ entrambi sono la somma dei fattori interni. La divisione per due non è consentita perché qui $2$ significa $1+1=0$: l'inverso non esiste. Il valore $x=1$ soddisfa $x+x=0$ e confuta la conclusione dello studente. La caratteristica è il minimo $n>0$ con $n\cdot1_K=0$, oppure zero se non esiste. Se $n=ab$ fosse composto, con $1<a,b<n$, i due elementi $a\cdot1_K,b\cdot1_K$ sarebbero non nulli per minimalità, ma il loro prodotto sarebbe nullo: impossibile in un campo.

Torna a [[#Esercizio 11 — Calcolare con due soli elementi (il campo F2)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> Se $a\ne0$, da $(x,y)=(s+at,at)$ ricavi $t=a^{-1}y$ e $s=x-y$. L'inversa è $d_a(x,y)=(x-y,a^{-1}y)$. Verifica: $d_a(c_a(s,t))=(s+at-at,a^{-1}at)=(s,t)$ e $c_a(d_a(x,y))=(x-y+aa^{-1}y,aa^{-1}y)=(x,y)$. Se $a=0$, $c_0(s,t)=(s,0)$: l'immagine è $K\times\{0\}$ e le preimmagini di $(0,0)$ sono tutte le $(0,t)$. Non è suriettiva, perché manca $(0,1)$, né iniettiva, perché $(0,0)$ e $(0,1)$ hanno uguale immagine. La richiesta $0\ne1$ garantisce che questi punti siano distinti. Su $\mathbb F_2$ la scelta $a=1+1$ è proprio $a=0$, quindi è il caso non biettivo, malgrado il coefficiente sembri «due».

Torna a [[#Esercizio 12 — Una descrizione reversibile (coordinate e coefficienti non nulli)|esercizio 12]].

Il capitolo è acquisito quando sai esplicitare gli insiemi e i quantificatori di una domanda, distinguere esistenza da unicità e ricostruire le prove dell'inversa e della cancellazione. Prova a spiegare il problema iniziale del robot usando sia le formule sia le parole «iniettiva» e «suriettiva», indicando dove serve ciascuna proprietà.

---

[[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/02 - Numeri complessi e geometria del piano|02 · Numeri complessi e geometria del piano →]]
