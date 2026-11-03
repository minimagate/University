# Il linguaggio delle dimostrazioni

Prerequisiti: aritmetica elementare e familiarità con interi e frazioni. [[Books/Aritmetica-I/00 - Indice e piano di studio|Indice e piano di studio]] · Segue: [[Books/Aritmetica-I/02 - Naturali e induzione|Naturali e induzione]].

## Da un esempio a un'affermazione controllabile

Il quadrato di un numero pari è pari: $2^2=4$, $4^2=16$, $6^2=36$. Quanti esempi servono per esserne sicuri? Se l'affermazione riguarda tutti gli interi pari, nessuna lista finita esaurisce i casi. Occorre un ragionamento che li comprenda insieme.

Un intero è **pari** quando è il doppio di un intero. Se $n$ è pari, esiste quindi $k\in\mathbb Z$ con $n=2k$. Allora

$$
n^2=(2k)^2=4k^2=2(2k^2).
$$

Poiché $2k^2$ è un intero, anche $n^2$ è pari. Abbiamo sostituito gli esempi con una **dimostrazione**: da un'ipotesi precisa siamo arrivati alla conclusione usando passaggi verificabili. Il numero $k$ non è un valore scelto a caso: rappresenta qualunque intero che testimoni la parità di $n$.

Questo capitolo costruisce il linguaggio per leggere e produrre ragionamenti simili. Le operazioni elementari sui numeri sono già familiari; i loro fondamenti specifici saranno sviluppati nei capitoli successivi. Useremo la convenzione $\mathbb N=\{0,1,2,\ldots\}$ e indicheremo con $\mathbb N_{>0}$ i naturali positivi.

## Insiemi: che cosa stiamo considerando?

Un **insieme** raccoglie oggetti chiamati elementi. Scrivere $x\in A$ significa che $x$ appartiene ad $A$; $x\notin A$ significa che non vi appartiene. Possiamo descrivere un insieme elencandone gli elementi oppure indicando una proprietà:

$$
A=\{0,2,4,6\}
=\{n\in\mathbb N:n\leq6\text{ e }n\text{ è pari}\}.
$$

Nella seconda scrittura i due punti significano «tali che». Ordine e ripetizioni non cambiano un insieme: $\{1,2\}=\{2,1,1\}$. L'**insieme vuoto**, indicato con $\varnothing$, non contiene elementi; $\{\varnothing\}$ contiene invece un elemento, che è l'insieme vuoto.

L'**inclusione** $A\subseteq B$ afferma che ogni elemento di $A$ appartiene anche a $B$. Ammette il caso $A=B$; per escluderlo scriveremo $A\subsetneq B$. Due insiemi sono uguali quando hanno gli stessi elementi, dunque

$$
A=B\quad\Longleftrightarrow\quad
A\subseteq B\text{ e }B\subseteq A.
$$

Questa equivalenza suggerisce un metodo: per dimostrare un'uguaglianza, partire da un elemento arbitrario del primo insieme e mostrarne l'appartenenza al secondo, poi fare il percorso inverso. «Arbitrario» significa che non gli attribuiamo proprietà ulteriori rispetto all'appartenenza dichiarata.

Fissato un insieme ambiente $U$ e due suoi sottoinsiemi $A,B$, le principali operazioni si leggono attraverso le condizioni di appartenenza:

| Insieme | Quando vi appartiene $x$? |
|---|---|
| $A\cup B$, unione | $x\in A$ oppure $x\in B$, anche in entrambi |
| $A\cap B$, intersezione | $x\in A$ e $x\in B$ |
| $A\setminus B$, differenza | $x\in A$ e $x\notin B$ |
| $A^c=U\setminus A$, complementare | $x\in U$ e $x\notin A$ |

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

Ci serviranno anche due costruzioni. Il **prodotto cartesiano** $A\times B$ è l'insieme delle coppie ordinate $(a,b)$ con $a\in A$ e $b\in B$. Le coppie $(1,2)$ e $(2,1)$ sono diverse, perché conta la posizione. L'**insieme delle parti** $\mathcal P(A)$ raccoglie tutti i sottoinsiemi di $A$: per esempio $\mathcal P(\{a\})=\{\varnothing,\{a\}\}$.

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

Negare una frase significa descrivere precisamente quando è falsa:

$$
\neg(\forall x\in A:P(x))
\quad\Longleftrightarrow\quad
\exists x\in A:\neg P(x),
$$

$$
\neg(\exists x\in A:P(x))
\quad\Longleftrightarrow\quad
\forall x\in A:\neg P(x).
$$

«Non tutti» significa «almeno uno no», non «nessuno». Per esempio, la negazione di «ogni studente ha risolto almeno un esercizio» è «esiste uno studente che non ha risolto alcun esercizio».

Analogamente, la negazione di «$P$ e $Q$» è «non $P$ oppure non $Q$»; la negazione di «$P$ oppure $Q$» è «non $P$ e non $Q$». L'«oppure» matematico è inclusivo: ammette che valgano entrambe le alternative. Ritroviamo così le regole che spiegavano De Morgan.

Una conseguenza utile è

$$
A\not\subseteq B
\quad\Longleftrightarrow\quad
\exists x\in A:\ x\notin B.
$$

Per smentire un'inclusione basta dunque trovare un elemento preciso. Inoltre $\varnothing\subseteq B$ per ogni $B$: non esiste un elemento del vuoto che possa violare l'inclusione. Per la stessa ragione un'affermazione universale su un dominio vuoto è vera; un'affermazione esistenziale su quel dominio è falsa.

## Implicazioni, equivalenze e controesempi

Scrivere $P\Rightarrow Q$ significa «se $P$, allora $Q$». $P$ è l'ipotesi, $Q$ la conclusione. L'implicazione esclude esattamente la situazione in cui $P$ è vera e $Q$ è falsa; perciò la sua negazione è

$$
\neg(P\Rightarrow Q)\quad\Longleftrightarrow\quad P\text{ e }\neg Q.
$$

Nell'esempio iniziale, «$n$ è pari» implica «$n^2$ è pari». Un caso con $n$ dispari non potrebbe smentire questa implicazione, perché non soddisferebbe l'ipotesi. In generale, per confutare un'affermazione universale occorre un **controesempio** che rispetti tutte le ipotesi e violi la conclusione.

Per esempio «per ogni $n\in\mathbb N$, $n^2>n$» è falsa: $n=0$ soddisfa $n^2=n$. Anche $n=1$ è un controesempio. Verificare $2,3,\ldots,100$ non avrebbe reso vero l'enunciato.

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

Per esempio, $f:\mathbb Z\to\mathbb Z$, $f(n)=2n$, ha come immagine gli interi pari. La regola «associare a $x$ il suo reciproco» non definisce una funzione $\mathbb R\to\mathbb R$, perché non assegna un valore a $0$; definisce invece una funzione su $\mathbb R\setminus\{0\}$.

Due funzioni $f,g:X\to Y$ sono uguali se $f(x)=g(x)$ per ogni $x\in X$. Avere la stessa immagine non basta: su $\{1,2\}$, l'identità e la funzione che scambia $1$ con $2$ hanno la stessa immagine e valori diversi. Nel libro consideriamo dominio e codominio parte della specificazione della funzione.

Le tre proprietà fondamentali distinguono tipi di assegnazione:

- $f$ è **iniettiva** se $f(x)=f(x')$ implica $x=x'$. Equivalentemente, elementi distinti hanno immagini distinte: due studenti non condividono un armadietto.
- $f$ è **suriettiva** se per ogni $y\in Y$ esiste $x\in X$ tale che $f(x)=y$. Quindi $f(X)=Y$: nessun armadietto rimane inutilizzato.
- $f$ è **biettiva** se è iniettiva e suriettiva: ogni elemento di $Y$ corrisponde a esattamente un elemento di $X$.

Per provare l'iniettività si prendono $x,x'$ arbitrari e si studia l'uguaglianza delle immagini. Per provare la suriettività si prende un $y$ arbitrario nel codominio e si cerca una sua preimmagine, verificando che appartenga al dominio.

> [!warning] Attenzione — La formula non determina da sola le proprietà
> $n\mapsto2n$ da $\mathbb Z$ a $\mathbb Z$ è iniettiva ma non suriettiva: $1$ non è raggiunto. La stessa regola, da $\mathbb Z$ all'insieme degli interi pari, è biettiva. Il codominio è decisivo. Anche l'iniettività può cambiare restringendo il dominio: $x\mapsto x^2$ identifica $1$ e $-1$ su $\mathbb R$, ma è iniettiva su $[0,+\infty)$.

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

**Una funzione ammette inversa se e solo se è biettiva.** Se $f$ è biettiva, ogni $y$ è immagine di un unico $x$: definiamo $g(y)$ come quell'$x$. Le due identità seguono dalla costruzione. Viceversa, se esiste $g$, da $f(x)=f(x')$ otteniamo $g(f(x))=g(f(x'))$, quindi $x=x'$; inoltre ogni $y$ è raggiunto perché $f(g(y))=y$. Dunque $f$ è sia iniettiva sia suriettiva.

L'inversa è unica: per ogni $y$ deve restituire l'unica preimmagine di $y$. Si indica con $f^{-1}$; il simbolo non significa $1/f$.

**Esempio svolto.** Sia $D=\{2k+1:k\in\mathbb Z\}$ l'insieme degli interi dispari e sia $f:\mathbb Z\to D$, $f(n)=2n+1$. Se $2n+1=2n'+1$, sottraendo $1$ e dividendo per $2$ otteniamo $n=n'$: $f$ è iniettiva. Ogni $d\in D$ ha la forma $2k+1$, dunque $f(k)=d$: è suriettiva. Risolvendo $d=2n+1$ rispetto a $n$ troviamo

$$
f^{-1}:D\to\mathbb Z,\qquad f^{-1}(d)=\frac{d-1}{2}.
$$

Il risultato è intero perché $d$ è dispari. Infine $(2n+1-1)/2=n$ e $2(d-1)/2+1=d$: abbiamo controllato entrambe le composizioni. Questa possibilità di tradurre un oggetto e ricostruirlo senza perderlo sarà il fondamento dei conteggi attraverso corrispondenze.

## Fonti

Il contesto degli insiemi numerici e delle corrispondenze proviene da [[Notes/Aritmetica/Lectures/2026-09-23 - Numeri naturali, induzione e fattorizzazione|nota del 23 settembre]] e dai passaggi introduttivi della [[_transcripts/Aritmetica/2026-09-23 - Numeri naturali, induzione e fattorizzazione|trascrizione del 23 settembre]]. Funzioni, inclusioni, uguaglianza di insiemi e corrispondenze sono ripresi dalla [[Notes/Aritmetica/Lectures/2026-09-29 - Cardinalità e tecniche fondamentali del calcolo combinatorio|nota del 29 settembre]] e dai relativi passaggi della [[_transcripts/Aritmetica/2026-09-29 - Cardinalità e tecniche fondamentali del calcolo combinatorio|trascrizione del 29 settembre]].

La trattazione sistematica di quantificatori, negazioni, necessario/sufficiente e metodi di prova è un'integrazione didattica per rendere autonomo il libro, non una ricostruzione letterale di una lezione di logica. Anche le prove sulle composizioni e sull'inversa, le operazioni insiemistiche e gli esempi sono stati esplicitati o rielaborati a questo scopo.

## Esercizi per verificare la comprensione

Gli esercizi 1–6 sono fondamentali; 7–8 collegano i concetti e li trasferiscono a situazioni nuove.

1. Siano $U=\{0,1,2,3,4,5,6\}$, $A=\{0,2,4,6\}$ e $B=\{1,2,3\}$. Calcola $A\cup B$, $A\cap B$, $B\setminus A$ e $A^c$. Stabilisci se $A\subseteq B$.

> [!tip]- Riscontro 1
> Unione: $\{0,1,2,3,4,6\}$; intersezione: $\{2\}$; differenza $B\setminus A=\{1,3\}$; complementare $A^c=\{1,3,5\}$. L'inclusione è falsa: per esempio $0\in A$ ma $0\notin B$. Per ogni operazione controlla la relativa condizione di appartenenza.

2. Scrivi la negazione di $\forall n\in\mathbb N\ \exists m\in\mathbb N:m>n$. Stabilisci quale delle due affermazioni è vera, giustificando la risposta.

> [!tip]- Riscontro 2
> La negazione è $\exists n\in\mathbb N\ \forall m\in\mathbb N:m\leq n$. Si scambiano i quantificatori e si nega $m>n$. L'enunciato iniziale è vero scegliendo $m=n+1$ per ogni $n$; la sua negazione è quindi falsa.

3. Uno studente sostiene: «Se $n\in\mathbb Z$ è multiplo di $6$, allora è pari. Dunque se è pari è multiplo di $6$». Individua l'errore, fornisci un controesempio e formula una condizione necessaria e una sufficiente usando le due proprietà.

> [!tip]- Riscontro 3
> È stata invertita un'implicazione senza prova. $n=2$ è pari ma non multiplo di $6$. Essere multiplo di $6$ è sufficiente per essere pari, perché $6k=2(3k)$; essere pari è necessario per essere multiplo di $6$.

4. Per $A,B,C\subseteq U$, dimostra $A\cap(B\cup C)=(A\cap B)\cup(A\cap C)$, spiegando le due inclusioni.

> [!tip]- Riscontro 4
> Se $x$ sta a sinistra, appartiene ad $A$ e ad almeno uno fra $B,C$: appartiene dunque ad almeno una delle intersezioni a destra. Se sta a destra, appartiene ad $A\cap B$ oppure ad $A\cap C$: in entrambi i casi appartiene ad $A$ e a $B\cup C$. Le due inclusioni danno l'uguaglianza.

5. Considera $f:\mathbb Z\to\mathbb Z$, $f(n)=3n-2$. Dimostra che è iniettiva, mostra che non è suriettiva e indica un codominio che renda biettiva la stessa regola. Scrivi l'inversa con il suo dominio.

> [!tip]- Riscontro 5
> Da $3n-2=3n'-2$ segue $3n=3n'$, quindi $n=n'$. Il valore $0$ non è raggiunto: richiederebbe $n=2/3\notin\mathbb Z$. Con $D=\{3k-2:k\in\mathbb Z\}$ come codominio, ogni elemento è raggiunto per definizione e la funzione è biettiva. L'inversa è $D\to\mathbb Z$, $d\mapsto(d+2)/3$; il risultato è intero per la definizione di $D$.

6. Siano $f,g:\mathbb R\to\mathbb R$ date da $f(x)=x+3$ e $g(x)=2x-1$. Calcola $g\circ f$, $f\circ g$ e l'inversa di $g\circ f$. Verifica le due identità dell'inversa.

> [!tip]- Riscontro 6
> $(g\circ f)(x)=2(x+3)-1=2x+5$, mentre $(f\circ g)(x)=2x-1+3=2x+2$. Ponendo $h=g\circ f$, si ha $h^{-1}(y)=(y-5)/2$ su $\mathbb R$. Infatti $h^{-1}(h(x))=(2x+5-5)/2=x$ e $h(h^{-1}(y))=2(y-5)/2+5=y$.

7. Siano $f:X\to Y$ e $g:Y\to Z$. Dimostra: se $g\circ f$ è iniettiva, allora $f$ è iniettiva; se $g\circ f$ è suriettiva, allora $g$ è suriettiva. La prima ipotesi obbliga anche $g$ a essere iniettiva? Cerca un controesempio con insiemi finiti non vuoti.

> [!tip]- Riscontro 7
> Da $f(x)=f(x')$ segue $g(f(x))=g(f(x'))$, e l'iniettività della composizione dà $x=x'$. Se la composizione è suriettiva, per ogni $z\in Z$ esiste $x\in X$ con $g(f(x))=z$; dunque $f(x)\in Y$ è una preimmagine di $z$ per $g$. Per l'ultima domanda prendi $X=\{a\}$, $Y=\{b,c\}$, $Z=\{d\}$, con $f(a)=b$ e $g(b)=g(c)=d$. La composizione è iniettiva, poiché il dominio ha un solo elemento, ma $g$ non lo è.

8. Un sistema deve codificare ciascun elemento di un insieme $X$ con un codice nell'insieme $C$. Formalizza codifica $e:X\to C$ e decodifica $d:C\to X$. Dimostra che, se si richiede $d(e(x))=x$ per ogni $x\in X$, allora $e$ deve essere iniettiva. Se si richiede anche $e(d(c))=c$ per ogni $c\in C$, che cosa cambia? Con $X=\{a,b\}$, $C=\{0,1,2\}$ ed $e(a)=0,e(b)=1$, costruisci una decodifica che soddisfi la prima richiesta e spiega perché la seconda è impossibile.

> [!tip]- Riscontro 8
> Se $e(x)=e(x')$, applicando $d$ otteniamo $x=x'$: nessun codice usato può confondere due oggetti. Le due richieste insieme dicono che $d$ è inversa di $e$, quindi $e$ deve essere biettiva. Nell'esempio poni $d(0)=a$, $d(1)=b$ e, per esempio, $d(2)=a$. Allora $d\circ e=\operatorname{id}_X$, ma $e(d(2))=0\ne2$. Qualunque scelta di $d(2)$ fallisce la seconda identità perché $2$ non appartiene all'immagine di $e$.

Il capitolo è acquisito quando sai esplicitare dominio e quantificatori, distinguere una prova da un elenco di esempi e controllare entrambe le direzioni di un'equivalenza. Sulle funzioni, prova a spiegare con parole tue perché l'iniettività permette di ricostruire l'origine di un valore raggiunto e la suriettività garantisce che ogni elemento del codominio sia raggiunto.

---

[[Books/Aritmetica-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Aritmetica-I/02 - Naturali e induzione|02 · Naturali e induzione →]]
