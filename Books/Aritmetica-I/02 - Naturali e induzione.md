# Naturali e induzione

Prerequisiti: [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|insiemi, quantificatori e implicazioni]]. Navigazione: [[Books/Aritmetica-I/00 - Indice e piano di studio|indice del libro]].

> [!info] In questo capitolo
> - Imparerai a dimostrare un'affermazione su infiniti numeri con un argomento finito: passo base e passo induttivo.
> - Vedrai tre forme dello stesso principio (induzione debole, induzione forte, buon ordinamento) e sai scegliere quale usare.
> - Capirai perché base e passo sono entrambi necessari, guardando dimostrazioni sbagliate.
> - Userai l'induzione forte per provare che ogni numero $\ge2$ è prodotto di primi.

## Domande per iniziare dagli esercizi

Prova prima gli esercizi indicati dalla domanda. Se ti manca uno strumento, apri soltanto la sezione collegata, poi torna al problema e ricostruisci il passaggio senza guardare. Per le prove, scrivi ipotesi, tesi e motivo di ogni implicazione. I riscontri sono raccolti dopo la teoria.

La tabella copre tutte le sezioni teoriche del capitolo, compresi casi limite e approfondimenti. Gli esercizi 1–8 conservano la numerazione originaria; dal 9 trovi le integrazioni. Gli esercizi tratti dal PDF fornito hanno un riferimento esplicito alla fonte; gli altri sono redazionali.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Come puoi provare infiniti casi con un ragionamento finito? | [[#Esercizio 9 — Ricostruire i principi (successore, minimo controesempio e induzione forte)\|9]] | [[#Una dimostrazione per infiniti casi\|Una dimostrazione per infiniti casi]] |
| Quali proprietà di zero, successore e minimo stai usando? | [[#Esercizio 1 — Cercare il primo elemento (minimo e buon ordinamento)\|1]], [[#Esercizio 9 — Ricostruire i principi (successore, minimo controesempio e induzione forte)\|9]] | [[#Zero, successore e ordine\|Zero, successore e ordine]] |
| Come scegli la base e l’indice da cui partire? | [[#Esercizio 2 — Sommare i pari (induzione ordinaria e somma vuota)\|2]], [[#Esercizio 3 — Una potenza supera una retta (passo induttivo)\|3]], [[#Esercizio 7 — Comprare gettoni (induzione forte con più basi)\|7]], [[#Esercizio 9 — Ricostruire i principi (successore, minimo controesempio e induzione forte)\|9]] | [[#Induzione a partire da un indice qualsiasi\|Induzione a partire da un indice qualsiasi]] |
| Perché minimo controesempio e induzione esprimono lo stesso principio? | [[#Esercizio 4 — Ricordare tutti i casi precedenti (proprietà cumulativa e buon ordinamento)\|4]], [[#Esercizio 9 — Ricostruire i principi (successore, minimo controesempio e induzione forte)\|9]] | [[#Perché buon ordinamento e induzione sono equivalenti\|Perché buon ordinamento e induzione sono equivalenti]] |
| Quando devi conservare tutti i casi precedenti? | [[#Esercizio 4 — Ricordare tutti i casi precedenti (proprietà cumulativa e buon ordinamento)\|4]], [[#Esercizio 6 — Spezzare centottanta (induzione forte e fattorizzazione)\|6]], [[#Esercizio 7 — Comprare gettoni (induzione forte con più basi)\|7]], [[#Esercizio 8 — Un algoritmo che termina (induzione forte e discesa degli argomenti)\|8]], [[#Esercizio 9 — Ricostruire i principi (successore, minimo controesempio e induzione forte)\|9]] | [[#Induzione forte e proprietà cumulative\|Induzione forte e proprietà cumulative]] |
| In quale passaggio si rompe una falsa prova induttiva? | [[#Esercizio 5 — Gli occhi e il passo mancante (base e validità del passo induttivo)\|5]] | [[#Un errore che si nasconde nel primo passaggio\|Un errore che si nasconde nel primo passaggio]] |
| Perché spezzare un composto porta sempre a un prodotto finito di primi? | [[#Esercizio 6 — Spezzare centottanta (induzione forte e fattorizzazione)\|6]], [[#Esercizio 8 — Un algoritmo che termina (induzione forte e discesa degli argomenti)\|8]] | [[#Esistenza della fattorizzazione in primi\|Esistenza della fattorizzazione in primi]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–6 allenano gli strumenti di base; 7–8 li collegano ad altri problemi. Le integrazioni successive completano il controllo della teoria; quelle dalla raccolta fornita sono segnalate con numero e pagina. Non serve riuscire subito: individua che cosa ti manca, studia il passaggio collegato e riprova.

### Esercizio 1 — Cercare il primo elemento (minimo e buon ordinamento)

Determina il minimo di ciascun insieme: $A=\{n\in\mathbb N:n\ge8\}$; $B=\{n\in\mathbb N:3n>20\}$; $C=\{n\in\mathbb N:n^2>30\}$. Spiega perché $D=\{x\in\mathbb R:x>8\}$ non ha minimo.

Se ti blocchi: [[#Zero, successore e ordine|Zero, successore e ordine]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Sommare i pari (induzione ordinaria e somma vuota)

Dimostra per induzione che $\sum_{k=1}^n2k=n(n+1)$ per ogni $n\in\mathbb N$, interpretando la somma come vuota per $n=0$. Calcola $2+4+\cdots+30$.

Se ti blocchi: [[#Induzione a partire da un indice qualsiasi|Induzione a partire da un indice qualsiasi]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Una potenza supera una retta (passo induttivo)

Dimostra $2^n\ge n+1$ per ogni $n\in\mathbb N$. Indica dove usi l’ipotesi induttiva.

Se ti blocchi: [[#Induzione a partire da un indice qualsiasi|Induzione a partire da un indice qualsiasi]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Ricordare tutti i casi precedenti (proprietà cumulativa e buon ordinamento)

Uno studente tenta di dimostrare il buon ordinamento assumendo che $A\subseteq\mathbb N$ non abbia minimo. Usa $P(n):n\notin A$ e afferma: «Se $n\notin A$ e $n+1\in A$, allora $n+1$ sarebbe il minimo». Individua l’informazione mancante e riscrivi base e passo con una proprietà adeguata.

Se ti blocchi: [[#Perché buon ordinamento e induzione sono equivalenti|Perché buon ordinamento e induzione sono equivalenti]] · [[#Induzione forte e proprietà cumulative|Induzione forte e proprietà cumulative]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Gli occhi e il passo mancante (base e validità del passo induttivo)

Sia $P(n)$ la proprietà «ogni gruppo di $n$ persone ha un unico colore degli occhi». Nella falsa prova descritta nel capitolo, calcola il numero di persone comuni ai due sottogruppi e identifica esattamente il passaggio non giustificato. Spiega perché controllare soltanto $P(1)$ non basta.

Se ti blocchi: [[#Un errore che si nasconde nel primo passaggio|Un errore che si nasconde nel primo passaggio]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Spezzare centottanta (induzione forte e fattorizzazione)

Costruisci una fattorizzazione in primi di $180$, scegliendo prima $180=12\cdot15$. Spiega perché l’induzione forte autorizza l’uso dei due fattori e quale questione resta aperta dopo la prova di esistenza.

Se ti blocchi: [[#Induzione forte e proprietà cumulative|Induzione forte e proprietà cumulative]] · [[#Esistenza della fattorizzazione in primi|Esistenza della fattorizzazione in primi]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Comprare gettoni (induzione forte con più basi)

Un distributore vende gettoni in pacchetti da $3$ e da $5$. Dimostra che ogni numero intero $n\ge8$ di gettoni può essere acquistato esattamente: esistono $a,b\in\mathbb N$ con $n=3a+5b$. Usa induzione forte e spiega perché servono più basi nella prova che sottrae $3$.

Se ti blocchi: [[#Induzione a partire da un indice qualsiasi|Induzione a partire da un indice qualsiasi]] · [[#Induzione forte e proprietà cumulative|Induzione forte e proprietà cumulative]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Un algoritmo che termina (induzione forte e discesa degli argomenti)

Una procedura riceve un naturale $n\ge2$. Se è primo lo restituisce; se è composto, sceglie $n=ab$ con $2\le a,b<n$ e ripete la procedura su entrambi i fattori. Dimostra che termina dopo un numero finito di operazioni e restituisce una lista finita di primi il cui prodotto è $n$. Non usare l’unicità della fattorizzazione.

Se ti blocchi: [[#Induzione forte e proprietà cumulative|Induzione forte e proprietà cumulative]] · [[#Esistenza della fattorizzazione in primi|Esistenza della fattorizzazione in primi]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Ricostruire i principi (successore, minimo controesempio e induzione forte)

Enuncia le proprietà di zero e successore adottate nel capitolo. Partendo dal buon ordinamento, ricava l'induzione con base $n_0$, trattando separatamente il minimo controesempio uguale a $n_0$ e quello maggiore. Dall'induzione ordinaria ricava quella forte mediante $Q(n):\forall k\in\{n_0,\ldots,n\}\ P(k)$. Dimostra poi $n^2>n$ per $n\ge2$, spiegando perché non puoi partire da zero.

Se ti blocchi: [[#Una dimostrazione per infiniti casi|Una dimostrazione per infiniti casi]] · [[#Zero, successore e ordine|Zero, successore e ordine]] · [[#Induzione a partire da un indice qualsiasi|Induzione a partire da un indice qualsiasi]] · [[#Perché buon ordinamento e induzione sono equivalenti|Perché buon ordinamento e induzione sono equivalenti]] · [[#Induzione forte e proprietà cumulative|Induzione forte e proprietà cumulative]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

## Teoria da recuperare

Usa i collegamenti della tabella iniziale per leggere lo strumento che ti serve. Dopo la lettura, torna all’esercizio e prova a risolverlo senza suggerimenti.

## Una dimostrazione per infiniti casi

I primi cinque numeri dispari hanno somma $1+3+5+7+9=25$. Provando altri esempi sembra emergere una regola: la somma dei primi $n$ dispari è $n^2$. Ma controllare cento casi lascia aperto il centunesimo. Come possiamo raggiungere tutti i naturali con una dimostrazione finita?

L’idea è controllare l’inizio e dimostrare una regola di propagazione: se la formula funziona a un livello, allora funziona al successivo. Non occorre ripetere il calcolo per ogni numero; occorre un unico argomento valido qualunque sia quel numero. Questo è il principio di induzione. Prima di usarlo, chiariamo quale proprietà dei naturali lo rende possibile.

## Zero, successore e ordine

Adottiamo la convenzione

$$
\mathbb N=\{0,1,2,3,\ldots\},\qquad
\mathbb N_{>0}=\{1,2,3,\ldots\}.
$$

Il **successore** di $n$ è il numero che viene subito dopo, indicato con $S(n)$ o $n+1$. Nell’impostazione assiomatica usuale (cioè quella che parte da poche regole fondamentali, gli *assiomi*, e ricava tutto il resto) si richiede che il successore sia definito per ogni naturale, che $0$ non sia successore di alcun naturale e che

$$
S(a)=S(b)\Longrightarrow a=b.
$$

Quest’ultima proprietà impedisce che due numeri distinti abbiano lo stesso successore. A queste condizioni si aggiunge il principio di induzione: se un sottoinsieme dei naturali contiene $0$ e contiene il successore di ogni suo elemento, allora coincide con $\mathbb N$. In questo senso non ci sono naturali «fuori dalla catena» che parte da zero.

Questa è una descrizione degli ingredienti essenziali, non una costruzione completa dell’aritmetica da zero. Nel capitolo usiamo le operazioni e l’ordine usuali, con le loro proprietà elementari. In particolare $0$ è il più piccolo naturale; ogni naturale positivo ha un predecessore; se $a<b$, allora $a\le b-1$. Somma e prodotto restano nei naturali, mentre una differenza come $2-5$ non vi appartiene. Quando scriviamo $m-1$, verificheremo dunque che $m>0$.

Ci serve una seconda proprietà dei naturali, apparentemente ovvia ma potentissima: se esiste almeno un numero con una certa proprietà, ne esiste uno più piccolo di tutti. Permette di ragionare sul «primo caso» in cui qualcosa accade.

> [!abstract] Concetto chiave — Buon ordinamento
> Ogni sottoinsieme non vuoto $A\subseteq\mathbb N$ ha un **minimo**, cioè un elemento $m\in A$ tale che $m\le a$ per ogni $a\in A$.
> Detto anche principio del minimo; è equivalente all'induzione (vedi sotto) e sostiene dimostrazioni di esistenza come quella della divisione con resto ([[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|capitolo 08]]).

Per esempio, l’insieme dei multipli naturali di $7$ maggiori di $20$ è infinito, ma ha minimo $21$. Il principio riguarda anche insiemi definiti da condizioni di cui non sappiamo calcolare facilmente le soluzioni: purché l’insieme sia non vuoto, il minimo esiste.

La condizione sul dominio conta. L’insieme $\mathbb Z$ non ha minimo, perché per ogni intero $z$ esiste l’intero più piccolo $z-1$. Anche l’insieme dei reali positivi non ha minimo: se $x>0$, allora $0<x/2<x$.

> [!example] Esempi e controesempi — Buon ordinamento
> **Ha minimo:** $\{n\in\mathbb N:n\ge8\}$, con minimo $8$; l'insieme dei multipli di $7$ maggiori di $20$, con minimo $21$.
> **Non ha minimo**, perché viola esattamente una condizione:
> - $\varnothing$ non è non vuoto: non ha elementi, quindi nemmeno un minimo (ipotesi «non vuoto»);
> - $\mathbb Z$ non è contenuto in $\mathbb N$: ogni $z$ è battuto da $z-1$ (ipotesi «sottoinsieme di $\mathbb N$»);
> - i reali positivi non sono un sottoinsieme di $\mathbb N$: ogni $x$ è battuto da $x/2$.

## Induzione a partire da un indice qualsiasi

Una **proprietà** $P(n)$ è un'affermazione che dipende da $n$ e che, per ciascun $n$, risulta vera o falsa (per esempio «$n$ è pari», oppure «la somma dei primi $n$ dispari è $n^2$»). Vogliamo mostrare che $P(n)$ è vera per tutti gli $n$ da un certo indice in poi, senza controllarli uno per uno: è l'idea del domino, in cui basta che la prima tessera cada e che ciascuna faccia cadere la successiva.

Sia $n_0\in\mathbb N$ e sia $P(n)$ una proprietà definita per ogni naturale $n\ge n_0$.

> [!abstract] Concetto chiave — Principio di induzione
> Se (1) $P(n_0)$ è vera e (2) per ogni $n\ge n_0$ vale $P(n)\Rightarrow P(n+1)$, allora $P(n)$ è vera per ogni $n\ge n_0$.
> Il metodo con cui dimostriamo quasi tutte le formule e le proprietà «per ogni $n$» del libro (per esempio nei capitoli [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|04]] e [[Books/Aritmetica-I/07 - Ricorrenze e successioni|07]]).

Questo è il **principio di induzione debole**, o ordinaria: se

1. $P(n_0)$ è vera;
2. per ogni $n\ge n_0$ si dimostra $P(n)\Rightarrow P(n+1)$;

allora $P(n)$ è vera per ogni $n\ge n_0$.

Il primo punto è il **passo base**. Il secondo è il **passo induttivo**: si fissa un $n$ arbitrario nel dominio, si assume $P(n)$ e, usando tale ipotesi, si dimostra $P(n+1)$. Non stiamo assumendo già la conclusione per tutti gli indici. Stiamo dimostrando un’implicazione, proprio come nel capitolo precedente.

L’indice iniziale dipende dall’enunciato. Una formula può essere definita da $0$, ma vera soltanto da $4$; allora possiamo tentare un’induzione con $n_0=4$. Se invece il passo dimostrato funziona solo per $n\ge 5$, una base a $4$ da sola non basta: manca il collegamento da $4$ a $5$.

> [!warning] Attenzione — Il passo induttivo non avvia la catena
> La proprietà $P(n): n=n+1$ è falsa per ogni naturale. Tuttavia l’implicazione $P(n)\Rightarrow P(n+1)$ è vera per ogni $n$, perché ha ipotesi falsa (e un’implicazione con ipotesi falsa è sempre vera). Senza una base vera non si conclude nulla. Occorre anche verificare che il passo funzioni già all’indice della base.

> [!example] Esempi e controesempi — Perché servono base e passo
> **Passo vero, base falsa:** $P(n):\ n=n+1$ ha il passo $P(n)\Rightarrow P(n+1)$ vero per ogni $n$, ma $P(0)$ è falsa e la proprietà è falsa per ogni $n$.
> **Base vera, passo falso:** $P(n):\ n<5$ ha $P(0)$ vera, ma il passo fallisce a $n=4$: $P(4)$ è vera e $P(5)$ è falsa. La proprietà vale per $0,\ldots,4$ e poi smette.
> **Indice iniziale sbagliato:** $P(n):\ n^2>n$ è falsa per $n=0,1$ e vera per ogni $n\ge2$. Con base $P(2)$ il passo funziona e si conclude da $2$ in poi; con base $P(0)$ non si può concludere, perché $P(0)$ è falsa.

I due esempi seguenti mostrano il metodo all'opera, dalla scelta della proprietà fino al calcolo finale.

### Esempio svolto: somma dei naturali

Il simbolo $\sum_{k=1}^{n}k$ (sommatoria) indica la somma $1+2+\cdots+n$ degli $n$ termini che si ottengono facendo variare $k$ da $1$ a $n$. Definiamo $s_n=\sum_{k=1}^{n}k$ per $n\ge1$ e poniamo $s_0=0$: una **somma vuota** vale zero. Vogliamo provare

$$
s_n=\frac{n(n+1)}2\qquad(n\in\mathbb N).
$$

La formula può essere suggerita accoppiando il primo e l’ultimo termine, ma l’induzione ne darà una verifica autonoma.

**Base:** per $n=0$ entrambi i membri valgono $0$.

**Passo:** supponiamo $s_n=n(n+1)/2$. La somma successiva contiene gli stessi addendi e un nuovo termine, $n+1$. Quindi

$$
\begin{aligned}
s_{n+1}
&=s_n+(n+1)\\
&=\frac{n(n+1)}2+(n+1)\\
&=\frac{(n+1)(n+2)}2.
\end{aligned}
$$

L’ultima espressione è precisamente la formula proposta con $n+1$ al posto di $n$. Per induzione la formula vale per tutti i naturali. Ad esempio,

$$
1+2+\cdots+20=\frac{20\cdot21}{2}=210.
$$

### Esempio svolto: somma dei dispari

Poniamo $d_0=0$ e, per $n\ge1$,

$$
d_n=\sum_{i=0}^{n-1}(2i+1).
$$

Qui ci sono $n$ addendi: il primo è $1$, l’ultimo $2n-1$. Vogliamo dimostrare $d_n=n^2$ per ogni $n\in\mathbb N$.

La base $d_0=0^2$ è vera. Supponiamo $d_n=n^2$. Il nuovo addendo è quello di indice $i=n$, dunque

$$
d_{n+1}=d_n+(2n+1)=n^2+2n+1=(n+1)^2.
$$

Per induzione la formula è dimostrata. Per $n=6$ otteniamo

$$
1+3+5+7+9+11=36.
$$

La formula ha anche una spiegazione geometrica: per passare da un quadrato di $n\times n$ caselle a uno di $(n+1)\times(n+1)$ si aggiungono una riga e una colonna, contando la casella d’angolo una volta sola. Le caselle nuove sono $(n+1)+(n+1)-1=2n+1$.

Questa immagine aiuta a trovare la formula. L’induzione verifica una formula già formulata: non è una procedura automatica per indovinare il risultato di qualunque somma.

## Perché buon ordinamento e induzione sono equivalenti

Sul consueto ordine dei naturali, i due principi si ricavano l’uno dall’altro. Possiamo dunque assumerne uno come punto di partenza e dimostrare l’altro. Perché ci interessa? Perché alcuni problemi si risolvono meglio con l'uno (si cerca il «primo caso» che va male), altri con l'altro (si fa propagare una proprietà): sapere che sono equivalenti ci lascia scegliere liberamente.

### Dal minimo all’induzione: il minimo controesempio

Assumiamo il buon ordinamento e supponiamo verificate base e passo induttivo per $P(n)$, a partire da $n_0$. Se la conclusione fosse falsa, l’insieme

$$
C=\{n\in\mathbb N:n\ge n_0\text{ e }P(n)\text{ è falsa}\}
$$

sarebbe non vuoto. Avrebbe quindi un minimo $m$. La base ci dice che $m\ne n_0$, perciò $m>n_0$ e $m-1\ge n_0$. Per la minimalità di $m$, la proprietà $P(m-1)$ è vera. Il passo induttivo implica allora $P(m)$, in contraddizione con $m\in C$. Dunque $C$ è vuoto e l’induzione è giustificata.

Il metodo del **minimo controesempio** si può usare anche senza scrivere esplicitamente uno schema induttivo: si assume che esista un caso falso, si prende il più piccolo e si mostra che i casi più piccoli obbligano anche lui a essere vero.

### Dall’induzione al minimo: conservare tutta l’informazione

Assumiamo ora l’induzione ordinaria e prendiamo un insieme non vuoto $A\subseteq\mathbb N$. Supponiamo per assurdo che non abbia minimo. L'induzione ordinaria dà $P(n+1)$ a partire dal solo $P(n)$; per escludere gli elementi di $A$ ci serve però sapere che *tutti* i numeri fino a $n$ sono fuori da $A$. Usiamo allora una **proprietà cumulativa**, cioè una proprietà che riassume tutti i casi fino a $n$ (non solo l’$n$-esimo):

$$
Q(n):\quad A\cap\{0,1,\ldots,n\}=\varnothing.
$$

**Base:** $0\notin A$, altrimenti sarebbe il minimo di $A$. Quindi $Q(0)$ è vera.

**Passo:** supponiamo $Q(n)$. Se $n+1\in A$, tutti gli elementi di $A$ sarebbero maggiori o uguali a $n+1$, perché $Q(n)$ esclude tutti i precedenti. Allora $n+1$ sarebbe il minimo, contro l’ipotesi. Dunque $n+1\notin A$ e, insieme a $Q(n)$, questo dà $Q(n+1)$.

Per induzione $Q(n)$ vale per ogni naturale. Ma possiamo scegliere $a\in A$, essendo $A$ non vuoto, e $Q(a)$ dice che $a\notin A$. La contraddizione prova che $A$ ha minimo.

> [!warning] Attenzione — «Il precedente» non significa «tutti i precedenti»
> Nella dimostrazione appena fatta, l’ipotesi $n\notin A$ sarebbe insufficiente: non esclude, per esempio, che $n-1\in A$. Serve $Q(n)$, che esclude simultaneamente tutti gli elementi da $0$ a $n$. Rafforzare la proprietà induttiva può rendere possibile un passaggio che la proprietà più debole non giustifica.

## Induzione forte e proprietà cumulative

Spesso il caso di indice $n+1$ non si ricava dal solo caso $n$, ma da alcuni casi precedenti. La **forma forte** dell’induzione permette di usarli tutti. Se $P(n_0)$ è vera e, per ogni $n\ge n_0$,

$$
\bigl[\forall k\in\mathbb N,\ n_0\le k\le n\Rightarrow P(k)\bigr]
\Longrightarrow P(n+1),
$$

allora $P(n)$ vale per ogni $n\ge n_0$.

«Forte» descrive l’ipotesi a disposizione nel passo: possiamo usare tutte le proprietà $P(n_0),\ldots,P(n)$. I due principi hanno però la stessa forza logica. Dimostriamolo in entrambe le direzioni.

**Dall’induzione ordinaria a quella forte.** Supponiamo soddisfatte le ipotesi appena enunciate e definiamo

$$
R(n):\quad P(k)\text{ vale per ogni }k\text{ con }n_0\le k\le n.
$$

La base $R(n_0)$ coincide con $P(n_0)$. Se vale $R(n)$, l’ipotesi del passo forte dà $P(n+1)$. Unendola alle proprietà già contenute in $R(n)$ otteniamo $R(n+1)$. L’induzione ordinaria applicata a $R$ dimostra tutte le $R(n)$ e quindi tutte le $P(n)$.

**Dall’induzione forte a quella ordinaria.** Supponiamo verificate base e implicazione ordinaria $P(n)\Rightarrow P(n+1)$. Se assumiamo vere tutte le proprietà da $P(n_0)$ a $P(n)$, in particolare abbiamo $P(n)$, quindi otteniamo $P(n+1)$. Sono così soddisfatte le ipotesi dell’induzione forte, che dà la conclusione desiderata.

Abbiamo provato tutte le equivalenze: buon ordinamento, induzione ordinaria e induzione forte. La proprietà cumulativa è il raccordo concreto fra le ultime due. Per scegliere il metodo, chiediti quali casi più piccoli servono davvero: il solo predecessore, diversi indici, oppure il minimo di un insieme di controesempi.

Lo schema seguente riassume le equivalenze (le frecce portano da ciò che si assume a ciò che si ricava); la tabella dice quando conviene ciascuna forma.

```mermaid
flowchart LR
    B["Buon ordinamento"] -->|"minimo controesempio"| D["Induzione debole"]
    D -->|"proprietà cumulativa Q"| B
    D -->|"proprietà cumulativa R"| F["Induzione forte"]
    F -->|"caso particolare"| D
```

| Forma | Cosa hai a disposizione nel passo | Quando usarla | Esempio nel capitolo |
|---|---|---|---|
| Induzione debole | Solo $P(n)$ | Il caso $n+1$ si ottiene dal solo caso $n$ (si aggiunge un termine, si moltiplica per un fattore) | $\sum k=n(n+1)/2$; $d_n=n^2$; $2^n\ge n+1$ |
| Induzione forte | Tutti i $P(k)$ con $n_0\le k\le n$ | Il caso $n$ si spezza in casi più piccoli ma non consecutivi, oppure serve più di un predecessore | Fattorizzazione in primi; gettoni da $3$ e $5$ |
| Buon ordinamento (minimo controesempio) | Il più piccolo caso falso, e quindi tutti i precedenti veri | Si vuole mostrare che non esistono controesempi, o che esiste un elemento minimo con una proprietà | Dimostrazione dell'induzione dal minimo; procedura sui fattori |

> [!example] Esempi e controesempi — Induzione forte
> **Serve la forma forte:** nel teorema di esistenza della fattorizzazione, il caso $84$ dipende da $7$ e $12$, non da $83$. **Basta quella debole:** $2^n\ge n+1$, perché $2^{n+1}=2\cdot2^n$ usa solo il caso $n$.
> **Basi mancanti:** la proprietà «$n=3a+5b$ con $a,b\in\mathbb N$» è falsa per $1,2,4,7$ e vera da $8$ in poi. Il passo «sottrai $3$» richiede che $n-3$ sia ancora almeno $8$, cioè $n\ge11$: per questo l'esercizio 7 richiede le tre basi $8,9,10$. Con una sola base il passo non arriva a coprire $9$ e $10$.

## Un errore che si nasconde nel primo passaggio

Consideriamo la falsa affermazione: «In ogni gruppo di $n\ge1$ persone, tutte hanno gli occhi dello stesso colore». Per $n=1$ è vera. Si tenta poi questo ragionamento: date $n+1$ persone $x_1,\ldots,x_{n+1}$, i gruppi

$$
A=\{x_1,\ldots,x_n\},\qquad
B=\{x_2,\ldots,x_{n+1}\}
$$

hanno ciascuno $n$ persone. Per ipotesi induttiva ogni gruppo ha un unico colore degli occhi. Una persona in comune dovrebbe allora garantire che i due colori coincidano.

Il problema è preciso: $A\cap B=\{x_2,\ldots,x_n\}$ è non vuoto soltanto per $n\ge2$. Nel passaggio $1\Rightarrow2$ i due gruppi sono due singole persone distinte e non hanno nessuno in comune. Il passo non funziona al primo indice richiesto.

Spostare la base a $2$ non ripara la prova, perché la proprietà per due persone è falsa. L’esempio mostra che anche una base vera e un passo corretto per tutti gli indici successivi possono lasciare un vuoto decisivo fra loro.

## Esistenza della fattorizzazione in primi

Un’applicazione dell’induzione forte chiarisce perché sia utile poter tornare a indici diversi dal predecessore.

Per dimostrare che ogni numero si scompone in «mattoni» indivisibili, dobbiamo prima dire che cosa sono i mattoni e che cosa significa scomporre. Per naturali positivi $d,n$, diciamo che $d$ **divide** $n$, e scriviamo $d\mid n$, se esiste $q\in\mathbb N_{>0}$ tale che $n=dq$. Un naturale $p\ge2$ è **primo** se i suoi soli divisori positivi sono $1$ e $p$. Un naturale $n\ge2$ non primo è **composto**. Per esempio $2,3,5,7$ sono primi; $12=3\cdot4$ è composto. Il numero $1$ è escluso dalla definizione di primo.

> [!example] Esempi e controesempi — Divisore, primo e composto
> **$d\mid n$:** $3\mid12$ (con $q=4$). **Non vale** $5\mid12$ (nessun naturale $q$ con $12=5q$) e nemmeno $12\mid3$ (servirebbe $q=1/4$).
> **Primo:** $2$ e $13$. **Non primo**, per una condizione violata per volta: $1$ (non è $\ge2$) e $9$ (è $\ge2$ ma ha il divisore $3$, diverso da $1$ e $9$).
> **Composto:** $12=3\cdot4$. **Non composto:** $7$ (è primo) e $1$ (non è $\ge2$).

Se $n$ è composto, ha un divisore $a$ con $1<a<n$. Scrivendo $n=ab$, anche $b$ soddisfa $1<b<n$: se fosse $b=1$, avremmo $a=n$; poiché $a\ge2$, il prodotto $ab=n$ implica $b<n$. Dunque un composto si spezza in due naturali entrambi almeno $2$ e strettamente più piccoli di lui.

> [!abstract] Concetto chiave — Esistenza della fattorizzazione in primi
> Ogni naturale $n\ge2$ è un prodotto finito, con almeno un fattore, di numeri primi.
> È il primo pilastro dell'aritmetica degli interi: l'unicità, dimostrata nel [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|capitolo 09]], renderà i primi i veri «mattoni» dei numeri e sarà usata per MCD, mcm e divisori.

Dimostriamo la proprietà $P(n)$: «$n$ è prodotto di primi» per induzione forte da $2$.

*Passo 1 — Base.* $2$ è primo e costituisce un prodotto con un solo fattore.

*Passo 2 — Passo forte.* Sia $n>2$ e supponiamo che tutti i naturali da $2$ a $n-1$ siano prodotti di primi. Se $n$ è primo, il prodotto cercato è $n$ stesso. Se è composto, scriviamo $n=ab$ con $2\le a,b<n$. Per ipotesi induttiva esistono primi tali che

$$
a=p_1\cdots p_r,\qquad b=q_1\cdots q_s.
$$

Sostituendo,

$$
n=p_1\cdots p_rq_1\cdots q_s,
$$

che è un prodotto finito di primi. Questo conclude il passo e la dimostrazione.

> [!example] Esempi e controesempi — Ipotesi del teorema
> **Funziona:** $12=3\cdot4=3\cdot2\cdot2$, e anche $12=2\cdot6=2\cdot2\cdot3$.
> **Fallisce togliendo un'ipotesi:** per $n=1$ la conclusione non vale, perché nessun prodotto con almeno un fattore primo può dare $1$ (ogni primo è $\ge2$): l'ipotesi $n\ge2$ è necessaria.
> **Non dice:** che i primi siano gli stessi per ogni scelta dei fattori intermedi. Qui $12=3\cdot4$ e $12=2\cdot6$ danno la stessa lista $2,2,3$ a meno dell'ordine, ma l'unicità è un risultato a parte.

Per vedere il meccanismo su un numero concreto possiamo scegliere

$$
84=7\cdot12=7\cdot3\cdot4=7\cdot3\cdot2\cdot2.
$$

I fattori finali sono primi. Sapere soltanto che $83$ si fattorizza non suggerisce questo passaggio: servono le fattorizzazioni di $7$ e $12$, entrambe relative a numeri più piccoli di $84$. Con induzione ordinaria potremmo invece usare la proprietà cumulativa «ogni intero fra $2$ e $n$ è prodotto di primi».

La prova stabilisce l’**esistenza** di una fattorizzazione. Non dimostra ancora che scelte diverse dei fattori intermedi producano gli stessi primi con le stesse ripetizioni. L’unicità sarà dimostrata in [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|Primi e fattorizzazione unica]], dopo gli strumenti di divisibilità del capitolo 08. Nessun ragionamento di questo capitolo la richiede.

## Fonti

Il capitolo rielabora [[Notes/Aritmetica/Lectures/2026-09-23 - Numeri naturali, induzione e fattorizzazione|la nota del 23 settembre]] e [[_transcripts/Aritmetica/2026-09-23 - Numeri naturali, induzione e fattorizzazione|la relativa trascrizione]], con la parte iniziale di [[Notes/Aritmetica/Lectures/2026-09-29 - Cardinalità e tecniche fondamentali del calcolo combinatorio|nota del 29 settembre]] e [[_transcripts/Aritmetica/2026-09-29 - Cardinalità e tecniche fondamentali del calcolo combinatorio|trascrizione del 29 settembre]] dedicata alla somma dei dispari. Le prove sono riscritte esplicitando domini e casi iniziali. La dimostrazione induzione $\Rightarrow$ buon ordinamento corregge un passaggio insufficiente della nota del 23 settembre mediante una proprietà cumulativa; esempi di controllo ed esercizi sono integrazioni didattiche.

## Riscontri degli esercizi

Apri il riscontro soltanto dopo aver scritto un tentativo. Per una dimostrazione, confronta anche le ipotesi e la completezza, non soltanto il risultato.

### Riscontro 1

> [!tip]- Riscontro 1
> I minimi sono rispettivamente $8$, $7$ e $6$. Per $B$, $3\cdot6=18\le20$ mentre $3\cdot7=21>20$; per $C$, $5^2=25\le30$ mentre $6^2=36>30$. Se $x\in D$, anche $(8+x)/2$ appartiene a $D$ ed è minore di $x$: nessun elemento può essere il minimo.

Torna a [[#Esercizio 1 — Cercare il primo elemento (minimo e buon ordinamento)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> La base vale perché entrambi i membri sono zero. Al passo, aggiungi $2(n+1)$: $n(n+1)+2(n+1)=(n+1)(n+2)$. Nella somma richiesta ci sono $15$ termini; il risultato è $15\cdot16=240$.

Torna a [[#Esercizio 2 — Sommare i pari (induzione ordinaria e somma vuota)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> Per $n=0$, $1\ge1$. Se $2^n\ge n+1$, moltiplicando per $2$ ottieni $2^{n+1}\ge2n+2\ge n+2$, poiché $n\ge0$. L’ipotesi induttiva serve nella prima disuguaglianza; la seconda è una proprietà elementare dei naturali.

Torna a [[#Esercizio 3 — Una potenza supera una retta (passo induttivo)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Da $n\notin A$ non segue che nessun naturale minore di $n$ appartenga ad $A$: per esempio, $3\notin\{2,4\}$ ma $4$ non ne è il minimo. Usa $Q(n):A\cap\{0,\ldots,n\}=\varnothing$. La base segue dall’assenza di minimo, che esclude $0\in A$. Se $Q(n)$ vale, $n+1\in A$ lo renderebbe davvero il minimo; quindi $n+1\notin A$ e vale $Q(n+1)$. L’induzione forza $A=\varnothing$.

Torna a [[#Esercizio 4 — Ricordare tutti i casi precedenti (proprietà cumulativa e buon ordinamento)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> L’intersezione ha $n-1$ persone. È vuota per $n=1$, quindi il ragionamento non prova $P(1)\Rightarrow P(2)$. La base $P(1)$ è vera, ma non è collegata ai casi successivi. Per partire da $2$ servirebbe $P(2)$, che è falsa quando si scelgono due persone con colori diversi.

Torna a [[#Esercizio 5 — Gli occhi e il passo mancante (base e validità del passo induttivo)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> $12=3\cdot4=3\cdot2\cdot2$ e $15=3\cdot5$, quindi $180=2\cdot2\cdot3\cdot3\cdot5=2^2\cdot3^2\cdot5$. Entrambi i fattori iniziali sono fra $2$ e $179$, quindi rientrano nell’ipotesi forte. Resta da dimostrare che qualunque fattorizzazione in primi abbia gli stessi fattori, salvo l’ordine: il calcolo di una singola fattorizzazione non prova l’unicità.

Torna a [[#Esercizio 6 — Spezzare centottanta (induzione forte e fattorizzazione)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Le basi sono $8=3+5$, $9=3+3+3$ e $10=5+5$. Per $n\ge11$, $8\le n-3<n$: per ipotesi forte $n-3=3a+5b$, quindi $n=3(a+1)+5b$. Le tre basi coprono gli indici per cui sottrarre $3$ scenderebbe sotto $8$. Formalmente il passo forte tratta $9$ e $10$ direttamente e poi tutti gli $n\ge11$ con l’argomento dato.

Torna a [[#Esercizio 7 — Comprare gettoni (induzione forte con più basi)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> Usa induzione forte sulla proprietà completa «la procedura termina e restituisce una lista con il prodotto richiesto», per qualsiasi scelta ammessa dei fattori. A $n=2$ termina subito. Se $n$ è primo, lo stesso vale; altrimenti le due chiamate hanno argomenti minori, quindi terminano per ipotesi e restituiscono liste finite con prodotti $a$ e $b$. Concatenarle richiede un numero finito di operazioni e il prodotto è $ab=n$. Il numero di chiamate è dunque finito; nessun confronto tra fattorizzazioni diverse è necessario.

Torna a [[#Esercizio 8 — Un algoritmo che termina (induzione forte e discesa degli argomenti)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> Il successore è definito su tutti i naturali, è iniettivo e non assume valore zero; l'induzione esclude elementi fuori dalla catena di zero. Un minimo controesempio $m$ non può essere $n_0$ per la base; se $m>n_0$, il predecessore soddisfa $P$ e il passo forza $P(m)$. Per la forma forte, $Q(n)$ contiene tutte le ipotesi necessarie a provare $P(n+1)$, quindi $Q(n+1)$. Base $2^2>2$; se $n^2>n$, allora $(n+1)^2=n^2+2n+1>n+1$. A zero e uno la disuguaglianza è falsa.

Torna a [[#Esercizio 9 — Ricostruire i principi (successore, minimo controesempio e induzione forte)|esercizio 9]].

Hai acquisito il metodo quando sai scegliere la proprietà da propagare, dichiarare da dove parte e giustificare ogni uso dei casi precedenti. Prova soprattutto a ricostruire la proprietà cumulativa dell’esercizio 4 e il controllo della terminazione nell’esercizio 8 senza leggere i riscontri.

---

[[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|← 01 · Il linguaggio delle dimostrazioni]] · [[Books/Aritmetica-I/00 - Indice e piano di studio|Indice]] · [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|03 · Contare attraverso le funzioni →]]
