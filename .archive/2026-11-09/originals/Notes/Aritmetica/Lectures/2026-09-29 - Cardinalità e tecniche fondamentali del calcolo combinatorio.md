---
type: lecture-note
course: Aritmetica
date: 2026-09-29
title: Cardinalità e tecniche fondamentali del calcolo combinatorio
source_transcript: _transcripts/Aritmetica/2026-09-29 - Cardinalità e tecniche
  fondamentali del calcolo combinatorio.md
source_hash: sha256:3a1a9b90f978be42eca4f10664786c7c66fea21c2fd6366a213efbe68b857999
teaching_model: openai/gpt-5.6-luna
taught_at: 2026-09-29T10:52:19.306Z
---

# Cardinalità e tecniche fondamentali del calcolo combinatorio

## 1. Dimostrazioni per induzione e calcolo di somme

Una distinzione importante è quella tra:

- **dimostrare per induzione** una formula già proposta;
- **calcolare** una somma, cioè trovare una forma chiusa della somma stessa.

Il principio di induzione permette di dimostrare che un enunciato $P(n)$ è vero per ogni $n\geq 1$, ma non fornisce automaticamente la formula da dimostrare. Se la formula non è ancora nota, occorre prima individuarla con un altro ragionamento.

### Esempio: somma dei numeri dispari

Si vuole dimostrare che, per ogni $n\geq 1$,

$$
\sum_{i=0}^{n-1}(2i+1)=n^2.
$$

L’enunciato $P(n)$ è quindi:

$$
P(n):\qquad \sum_{i=0}^{n-1}(2i+1)=n^2.
$$

### Passo base

Per $n=1$:

$$
\sum_{i=0}^{1-1}(2i+1)
=
\sum_{i=0}^{0}(2i+1)
=
2\cdot 0+1
=
1
=
1^2.
$$

Quindi $P(1)$ è vera.

### Passo induttivo

Si suppone vera $P(n)$, cioè si assume l’ipotesi induttiva

$$
\sum_{i=0}^{n-1}(2i+1)=n^2.
$$

Bisogna dimostrare $P(n+1)$:

$$
\sum_{i=0}^{n}(2i+1)=(n+1)^2.
$$

Si separa l’ultimo addendo:

$$
\sum_{i=0}^{n}(2i+1)
=
\sum_{i=0}^{n-1}(2i+1)+(2n+1).
$$

Applicando l’ipotesi induttiva:

$$
\sum_{i=0}^{n}(2i+1)
=
n^2+2n+1
=
(n+1)^2.
$$

Pertanto $P(n+1)$ è vera. Per il principio di induzione,

$$
\boxed{\sum_{i=0}^{n-1}(2i+1)=n^2\qquad\forall n\geq 1.}
$$

Il passaggio fondamentale consiste nel riconoscere che la somma relativa a $n+1$ contiene tutti gli addendi della somma relativa a $n$, più il nuovo addendo corrispondente a $i=n$.

---

## 2. Double counting: contare lo stesso insieme in due modi

Una tecnica fondamentale del calcolo combinatorio è il **double counting**, o conteggio doppio.

L’idea è la seguente: se uno stesso insieme finito viene contato in due modi diversi, i due risultati devono coincidere.

### Interpretazione geometrica della somma dei dispari

Si consideri un quadrato formato da $n\times n$ quadratini. Il numero totale di quadratini è

$$
n^2.
$$

Lo stesso quadrato può essere suddiviso in **cornici concentriche**:

- la cornice numero $0$ contiene $1$ quadratino;
- la cornice numero $1$ contiene $3$ quadratini;
- la cornice numero $2$ contiene $5$ quadratini;
- la cornice numero $3$ contiene $7$ quadratini;
- in generale, la cornice numero $i$ contiene $2i+1$ quadratini.

Le cornici sono disgiunte e ricoprono tutto il quadrato. Pertanto il numero totale di quadratini è anche

$$
1+3+5+\cdots +(2n-1)
=
\sum_{i=0}^{n-1}(2i+1).
$$

Poiché il numero totale di quadratini è $n^2$, si ottiene nuovamente

$$
\sum_{i=0}^{n-1}(2i+1)=n^2.
$$

Questo è un esempio di conteggio doppio: i quadratini vengono contati una prima volta come elementi di un quadrato $n\times n$ e una seconda volta come elementi delle cornici.

> [!note]
> Il double counting non è una semplice manipolazione algebrica. Per applicarlo correttamente occorre specificare con precisione quale insieme si sta contando e verificare che i due metodi contino effettivamente gli stessi elementi.

---

# 3. Che cosa significa contare

Nel contesto del corso, il calcolo combinatorio consiste nel contare oggetti appartenenti a insiemi finiti.

Contare un insieme finito significa porlo in corrispondenza biunivoca con un insieme standard di numeri naturali. Si usa normalmente la notazione

$$
[r]=\{1,2,\ldots,r\}.
$$

La scelta di iniziare da $1$, anziché da $0$, è convenzionale. In alcuni contesti si potrebbe usare $\{0,\ldots,r-1\}$, ma bisogna mantenere coerente la convenzione.

## Cardinalità

La **cardinalità** di un insieme finito $X$ è il numero di elementi di $X$ e si indica con una delle notazioni

$$
|X|,\qquad \#X,\qquad \operatorname{card}(X).
$$

Dire che $X$ ha cardinalità $r$ significa che esiste una funzione biiettiva

$$
f:[r]\longrightarrow X.
$$

In tal caso si scrive

$$
|X|=r.
$$

Per esempio, se un insieme contiene cinque oggetti, numerarli come

$$
1,2,3,4,5
$$

significa costruire una corrispondenza biunivoca tra l’insieme degli oggetti e $[5]$.

## Cardinalità come relazione di equivalenza

Due insiemi $X$ e $Y$ hanno la stessa cardinalità se e solo se esiste una biiezione

$$
f:X\longrightarrow Y.
$$

Si scrive

$$
|X|=|Y|
\quad\Longleftrightarrow\quad
\exists f:X\longrightarrow Y\text{ biiettiva}.
$$

Una biiezione è una funzione che è contemporaneamente:

- **iniettiva**;
- **suriettiva**.

### Dimostrazione della composizione

Se esistono biiezioni

$$
f:X\longrightarrow [r],
\qquad
g:[r]\longrightarrow Y,
$$

allora la composizione

$$
g\circ f:X\longrightarrow Y
$$

è ancora una biiezione. Infatti la composizione di funzioni biiettive è biiettiva.

Viceversa, se esiste una biiezione $h:X\to Y$, allora, nel caso finito, si può numerare $X$ e trasferire tale numerazione a $Y$. Questo mostra che i due insiemi hanno lo stesso numero di elementi.

---

# 4. Funzioni, iniettività, suriettività e biiettività

Una funzione

$$
f:X\longrightarrow Y
$$

ha:

- $X$ come **dominio**;
- $Y$ come **codominio**;
- per ogni $x\in X$, un’unica immagine $f(x)\in Y$.

È importante distinguere il codominio dall’immagine della funzione:

$$
\operatorname{Im}(f)=\{f(x):x\in X\}\subseteq Y.
$$

La funzione è:

- **iniettiva** se elementi distinti del dominio hanno immagini distinte:
  
  $$
  x_1\neq x_2
  \Longrightarrow
  f(x_1)\neq f(x_2);
  $$

- **suriettiva** se ogni elemento del codominio è immagine di almeno un elemento del dominio:
  
  $$
  \forall y\in Y\ \exists x\in X:\ f(x)=y;
  $$

- **biiettiva** se è sia iniettiva sia suriettiva.

Due funzioni sono uguali se e solo se hanno lo stesso dominio, lo stesso codominio e coincidono su ogni elemento del dominio:

$$
f=g
\quad\Longleftrightarrow\quad
\forall x\in X,\ f(x)=g(x).
$$

Non basta che abbiano la stessa immagine come insieme: l’associazione tra elementi del dominio e immagini fa parte della funzione.

---

# 5. Il principio dei cassetti

Il **principio dei cassetti**, detto anche principio di Dirichlet o principio della piccionaia, afferma:

> Se si distribuiscono $n$ oggetti in $k$ cassetti con $n>k$, allora almeno un cassetto contiene almeno due oggetti.

In forma funzionale:

$$
f:X\longrightarrow Y,\qquad |X|>|Y|
$$

non può essere iniettiva.

Infatti, se $f$ fosse iniettiva, elementi distinti di $X$ avrebbero immagini distinte in $Y$. Sarebbe quindi necessario avere almeno tanti elementi in $Y$ quanti sono quelli di $X$, in contraddizione con $|X|>|Y|$.

Un esempio è la distribuzione di $10$ oggetti in $7$ cassetti: almeno un cassetto deve contenere almeno due oggetti.

Il principio dei cassetti è spesso utilizzato per dimostrare l’impossibilità di costruire funzioni iniettive tra insiemi finiti con cardinalità diverse.

---

# 6. Cardinalità del prodotto cartesiano

Il prodotto cartesiano di due insiemi $X$ e $Y$ è

$$
X\times Y
=
\{(x,y):x\in X,\ y\in Y\}.
$$

Gli elementi di $X\times Y$ sono **coppie ordinate**.

L’ordine è importante:

$$
(x,y)\neq(y,x)
$$

in generale, anche quando $x$ e $y$ appartengono allo stesso insieme. Inoltre $(x,x)$ è comunque una coppia ordinata, non un singolo elemento.

Se

$$
|X|=n,\qquad |Y|=m,
$$

allora

$$
|X\times Y|=nm.
$$

### Motivazione

Per la prima componente della coppia ci sono $n$ possibilità. Per ciascuna scelta della prima componente, la seconda componente può essere scelta in $m$ modi. Le scelte sono indipendenti, quindi il numero totale è

$$
\underbrace{m+\cdots+m}_{n\text{ volte}}
=
nm.
$$

Equivalentemente, si può rappresentare il prodotto cartesiano tramite una tabella:

- le righe corrispondono agli elementi di $X$;
- le colonne corrispondono agli elementi di $Y$;
- ogni casella rappresenta una coppia ordinata.

Più in generale, per insiemi finiti $X_1,\ldots,X_r$,

$$
\left|X_1\times\cdots\times X_r\right|
=
|X_1|\cdots |X_r|.
$$

---

# 7. Numero di funzioni tra due insiemi finiti

Siano $X$ e $Y$ insiemi finiti con

$$
|X|=n,\qquad |Y|=m.
$$

Si vuole contare l’insieme di tutte le funzioni

$$
f:X\longrightarrow Y.
$$

Indichiamo gli elementi del dominio con

$$
X=\{x_1,\ldots,x_n\}
$$

e quelli del codominio con

$$
Y=\{y_1,\ldots,y_m\}.
$$

Per costruire una funzione:

- $f(x_1)$ può essere scelto in $m$ modi;
- $f(x_2)$ può essere scelto in $m$ modi;
- continuando, anche $f(x_n)$ può essere scelto in $m$ modi.

Le scelte sono indipendenti: non è richiesto che immagini diverse del dominio abbiano immagini diverse. È quindi possibile che la funzione sia costante, cioè che tutti gli elementi di $X$ abbiano la stessa immagine.

Di conseguenza,

$$
|\{f:X\to Y\}|=
\underbrace{m\cdot m\cdots m}_{n\text{ fattori}}
=
m^n.
$$

Pertanto:

$$
\boxed{|Y^X|=|Y|^{|X|}=m^n.}
$$

La notazione $Y^X$ viene talvolta utilizzata per indicare l’insieme di tutte le funzioni da $X$ a $Y$.

---

# 8. Conteggio delle funzioni iniettive

Siano ancora

$$
|X|=n,\qquad |Y|=m.
$$

Si vuole contare il numero di funzioni iniettive

$$
f:X\longrightarrow Y.
$$

Per costruire una funzione iniettiva:

- l’immagine di $x_1$ può essere scelta in $m$ modi;
- l’immagine di $x_2$ può essere scelta in $m-1$ modi, perché non può coincidere con $f(x_1)$;
- l’immagine di $x_3$ può essere scelta in $m-2$ modi;
- continuando, l’immagine di $x_n$ può essere scelta in $m-n+1$ modi.

Quindi, se $n\leq m$, il numero di funzioni iniettive è

$$
m(m-1)(m-2)\cdots(m-n+1).
$$

In termini di fattoriali:

$$
\boxed{
\frac{m!}{(m-n)!}
}.
$$

Infatti,

$$
m!
=
m(m-1)\cdots(m-n+1)(m-n)!.
$$

Se $n>m$, non esistono funzioni iniettive da $X$ a $Y$, per il principio dei cassetti. In tal caso il numero è $0$.

In forma complessiva:

$$
\#\{\text{funzioni iniettive }X\to Y\}
=
\begin{cases}
\dfrac{m!}{(m-n)!}, & n\leq m,\\[1.2ex]
0, & n>m.
\end{cases}
$$

Il prodotto dei fattori decrescenti è spesso indicato informalmente con una notazione di permutazione, ma la forma con i fattoriali rende esplicito il conteggio.

Per convenzione:

$$
0!=1.
$$

---

# 9. Funzioni tra insiemi finiti con la stessa cardinalità

Se $X$ e $Y$ sono finiti e hanno la stessa cardinalità,

$$
|X|=|Y|=n,
$$

allora per una funzione

$$
f:X\longrightarrow Y
$$

valgono le equivalenze:

$$
f\text{ iniettiva}
\quad\Longleftrightarrow\quad
f\text{ suriettiva}
\quad\Longleftrightarrow\quad
f\text{ biiettiva}.
$$

### Perché una funzione iniettiva è suriettiva

Se $f$ è iniettiva, le $n$ immagini degli $n$ elementi di $X$ sono tutte distinte. Poiché anche $Y$ ha esattamente $n$ elementi, queste immagini devono essere tutti gli elementi di $Y$. Quindi $f$ è suriettiva.

### Perché una funzione non iniettiva non può essere suriettiva

Se $f$ non è iniettiva, almeno due elementi distinti di $X$ hanno la stessa immagine. In tal modo, tra le immagini compaiono meno di $n$ elementi distinti. Poiché $Y$ contiene $n$ elementi, almeno un elemento del codominio rimane escluso: la funzione non è suriettiva.

Questa equivalenza dipende dalla finitezza. Per insiemi infiniti può esistere una funzione iniettiva ma non suriettiva da un insieme in sé stesso; ad esempio,

$$
f:\mathbb{N}\longrightarrow\mathbb{N},
\qquad
f(n)=n+1
$$

è iniettiva ma non suriettiva, perché $0$ non appartiene alla sua immagine se $\mathbb N$ contiene $0$.

---

# 10. Insieme delle parti

Dato un insieme $X$, si indica con

$$
\mathcal{P}(X)
$$

o talvolta con $P(X)$ l’**insieme delle parti** di $X$, cioè l’insieme di tutti i sottoinsiemi di $X$:

$$
\mathcal{P}(X)=\{A:A\subseteq X\}.
$$

Se $|X|=n$, allora

$$
\boxed{|\mathcal{P}(X)|=2^n.}
$$

### Conteggio diretto

Per costruire un sottoinsieme $A\subseteq X$, ogni elemento di $X$ può essere:

1. inserito in $A$;
2. non inserito in $A$.

Per ciascuno dei $n$ elementi ci sono quindi $2$ possibilità indipendenti. Il numero totale di scelte è

$$
\underbrace{2\cdot 2\cdots 2}_{n\text{ fattori}}
=
2^n.
$$

Questo conteggio include:

- il sottoinsieme vuoto $\varnothing$;
- il sottoinsieme $X$;
- tutti i sottoinsiemi intermedi.

Per esempio, se $X=\{a,b,c\}$, i sottoinsiemi sono:

- uno di cardinalità $0$: $\varnothing$;
- tre di cardinalità $1$: $\{a\}$, $\{b\}$, $\{c\}$;
- tre di cardinalità $2$: $\{a,b\}$, $\{a,c\}$, $\{b,c\}$;
- uno di cardinalità $3$: $\{a,b,c\}$.

In totale:

$$
1+3+3+1=8=2^3.
$$

---

# 11. Funzioni caratteristiche e corrispondenza con l’insieme delle parti

A ogni sottoinsieme $A\subseteq X$ si associa la sua **funzione caratteristica**

$$
\chi_A:X\longrightarrow \{0,1\},
$$

definita da

$$
\chi_A(x)=
\begin{cases}
1, & x\in A,\\
0, & x\notin A.
\end{cases}
$$

Il valore $1$ indica che l’elemento è stato inserito nel sottoinsieme, mentre il valore $0$ indica che non è stato inserito.

Per esempio, se

$$
X=\{a,b,c\},
\qquad
A=\{a,c\},
$$

allora

$$
\chi_A(a)=1,\qquad
\chi_A(b)=0,\qquad
\chi_A(c)=1.
$$

Il sottoinsieme $A$ determina completamente $\chi_A$, e viceversa: conoscendo la funzione caratteristica, si ricostruisce il sottoinsieme come

$$
A=\{x\in X:\chi_A(x)=1\}.
$$

Quindi la corrispondenza

$$
A\longmapsto \chi_A
$$

è una biiezione tra $\mathcal{P}(X)$ e l’insieme delle funzioni da $X$ a $\{0,1\}$:

$$
\mathcal{P}(X)
\longleftrightarrow
\{0,1\}^X.
$$

Poiché

$$
|\{0,1\}^X|
=
2^{|X|},
$$

si ottiene nuovamente

$$
|\mathcal{P}(X)|=2^{|X|}.
$$

Questa è una seconda dimostrazione, più formale, della cardinalità dell’insieme delle parti.

---

# 12. Uguaglianza e inclusione tra insiemi

Due insiemi $A$ e $B$ sono uguali se e solo se hanno esattamente gli stessi elementi:

$$
A=B
\quad\Longleftrightarrow\quad
\forall x,\ x\in A\Longleftrightarrow x\in B.
$$

Per dimostrare l’uguaglianza tra insiemi è spesso utile dimostrare le due inclusioni:

$$
A\subseteq B
\qquad\text{e}\qquad
B\subseteq A.
$$

L’inclusione $A\subseteq B$ significa:

$$
\forall x\in A,\ x\in B.
$$

La negazione dell’inclusione è:

$$
A\not\subseteq B
\quad\Longleftrightarrow\quad
\exists x\in A\text{ tale che }x\notin B.
$$

Di conseguenza, se $A\neq B$, almeno una delle due inclusioni fallisce:

$$
A\neq B
\quad\Longleftrightarrow\quad
A\not\subseteq B
\ \text{oppure}\
B\not\subseteq A.
$$

Se le ipotesi sono simmetriche rispetto ad $A$ e $B$, si può talvolta procedere “senza perdita di generalità” supponendo che fallisca, per esempio, $A\subseteq B$. In quel caso esiste un elemento

$$
x\in A\setminus B.
$$

Questa tecnica va però usata solo quando le due situazioni sono realmente simmetriche.

---

# 13. Sottoinsiemi di cardinalità fissata e coefficienti binomiali

Sia $X$ un insieme con $|X|=n$. Si vuole contare il numero di sottoinsiemi di $X$ aventi cardinalità $r$.

Questo numero si indica con

$$
\binom{n}{r}
$$

e si legge “$n$ su $r$”.

Per costruire un sottoinsieme ordinato di $r$ elementi distinti si possono scegliere:

- il primo elemento in $n$ modi;
- il secondo in $n-1$ modi;
- il terzo in $n-2$ modi;
- e così via.

Il numero di $r$-uple ordinate di elementi distinti è quindi

$$
n(n-1)\cdots(n-r+1)
=
\frac{n!}{(n-r)!}.
$$

Tuttavia, ogni sottoinsieme di $r$ elementi è stato contato $r!$ volte, una per ciascun ordinamento dei suoi elementi. Perciò:

$$
\boxed{
\binom{n}{r}
=
\frac{n!}{r!(n-r)!}
}.
$$

Il fattore $r!$ serve proprio a eliminare l’ordine.

## Casi limite

Si hanno le convenzioni:

$$
\binom{n}{0}=1,
\qquad
\binom{n}{n}=1,
$$

perché esiste un solo sottoinsieme vuoto e un solo sottoinsieme costituito da tutti gli elementi di $X$.

Inoltre,

$$
\binom{n}{r}=0
\qquad\text{se }r>n.
$$

## Simmetria dei coefficienti binomiali

Vale la relazione

$$
\boxed{
\binom{n}{r}=\binom{n}{n-r}
}.
$$

La motivazione combinatoria è che scegliere un sottoinsieme $A\subseteq X$ con $r$ elementi equivale a scegliere il suo complementare

$$
X\setminus A,
$$

che ha $n-r$ elementi.

La corrispondenza

$$
A\longmapsto X\setminus A
$$

è una biiezione tra:

- i sottoinsiemi di $X$ con cardinalità $r$;
- i sottoinsiemi di $X$ con cardinalità $n-r$.

---

# 14. Relazione tra funzioni iniettive, tuple ordinate e sottoinsiemi

Le funzioni iniettive

$$
f:[r]\longrightarrow X
$$

corrispondono alle $r$-uple ordinate

$$
(x_1,\ldots,x_r)
$$

di elementi distinti di $X$, ponendo

$$
x_i=f(i).
$$

Il numero di tali funzioni è

$$
n(n-1)\cdots(n-r+1)
=
\frac{n!}{(n-r)!}.
$$

Se invece dell’ordine interessa soltanto il sottoinsieme formato dagli elementi scelti, bisogna identificare tutte le $r!$ possibili permutazioni della stessa $r$-upla. Si ottiene così:

$$
\frac{1}{r!}\cdot\frac{n!}{(n-r)!}
=
\frac{n!}{r!(n-r)!}
=
\binom{n}{r}.
$$

Questa distinzione è essenziale:

- una **tupla ordinata** tiene conto della posizione degli elementi;
- un **sottoinsieme** non tiene conto dell’ordine.

Per esempio, le tuple

$$
(a,b,c)
\qquad\text{e}\qquad
(b,a,c)
$$

sono diverse, mentre i sottoinsiemi

$$
\{a,b,c\}
\qquad\text{e}\qquad
\{b,a,c\}
$$

sono lo stesso insieme.

---

# 15. Conteggio mediante quozienti: evitare il sovracconteggio

Nel calcolo combinatorio capita spesso di contare un insieme in modo non biunivoco: ogni oggetto viene contato più volte.

Se ogni oggetto viene contato esattamente $k$ volte e il conteggio complessivo produce $N$, allora il numero corretto di oggetti è

$$
\frac{N}{k}.
$$

Questo procedimento è valido solo quando il numero di volte in cui ogni oggetto viene contato è lo stesso.

### Esempio generale

Supponiamo di voler contare i sottoinsiemi di cardinalità $r$ di un insieme con $n$ elementi.

Si contano prima le $r$-uple ordinate di elementi distinti:

$$
\frac{n!}{(n-r)!}.
$$

Ogni sottoinsieme di cardinalità $r$ compare esattamente $r!$ volte, perché i suoi elementi possono essere ordinati in $r!$ modi. Il conteggio corretto è quindi

$$
\frac{\frac{n!}{(n-r)!}}{r!}
=
\binom{n}{r}.
$$

Il punto essenziale è che il sovracconteggio deve essere uniforme. Se oggetti diversi vengono contati un numero diverso di volte, non è sufficiente dividere per un unico fattore.

---

# 16. Collegamento tra le principali tecniche

Le tecniche affrontate sono diverse manifestazioni della stessa idea di base: trasformare il problema in un conteggio più semplice.

- Per contare una somma, si può usare l’induzione oppure un double counting geometrico.
- Per contare un insieme finito, lo si mette in corrispondenza con $[n]$.
- Per contare le coppie si usa il prodotto delle cardinalità.
- Per contare le funzioni si effettua una scelta indipendente per ogni elemento del dominio.
- Per contare le funzioni iniettive si impedisce di riutilizzare immagini già scelte.
- Per contare i sottoinsiemi si registra, per ciascun elemento, la scelta “inserito/non inserito”.
- Per contare i sottoinsiemi di cardinalità fissata si contano prima gli ordinamenti e poi si elimina il sovracconteggio dovuto alle permutazioni.
- Per dimostrare impossibilità di iniettività si usa il principio dei cassetti.
- Per dimostrare che due insiemi hanno la stessa cardinalità si costruisce una biiezione.

Il calcolo combinatorio richiede quindi di individuare con precisione:

1. quali sono gli oggetti da contare;
2. se l’ordine conta;
3. se sono ammesse ripetizioni;
4. se le scelte sono indipendenti;
5. se ogni oggetto viene contato una sola volta oppure più volte;
6. se il sovracconteggio è uniforme.