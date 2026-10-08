---
type: book-note
course: Aritmetica
date: 2026-09-23
title: Fondamenti e principio di induzione
topics:
  - numeri naturali
  - principio del minimo
  - induzione matematica
  - induzione forte
  - fattorizzazione in primi
---

# Fondamenti e principio di induzione

> **Lezione:** 23 settembre 2026 — Numeri naturali, induzione e fattorizzazione

## Struttura logica della lezione

La lezione costruisce progressivamente gli strumenti necessari per dimostrare proprietà valide per tutti i numeri naturali e li applica alla fattorizzazione.

1. **Insiemi numerici e operazioni:** definiamo gli oggetti matematici su cui lavoriamo e le operazioni che possiamo eseguire.
2. **Costruzione assiomatica di $\mathbb N$:** introduciamo un elemento iniziale e il concetto di successore.
3. **Principio del minimo:** sfruttiamo la particolare struttura ordinata dei naturali.
4. **Principio di induzione:** otteniamo uno strumento per dimostrare proprietà universali.
5. **Induzione forte:** generalizziamo il meccanismo dimostrativo utilizzando tutte le proprietà precedenti.
6. **Teorema fondamentale dell'aritmetica:** applichiamo questi strumenti per dimostrare l'esistenza della fattorizzazione in primi.

## Pilastro 1 — Insiemi numerici e operazioni

**Domanda.** Quali numeri possiamo utilizzare e quali operazioni sono ammesse al loro interno?

**Definizione concettuale.**

Gli insiemi numerici sono strutture progressivamente più ampie, introdotte anche per superare i limiti delle operazioni disponibili negli insiemi precedenti.

Ad esempio, nei naturali non possiamo sempre sottrarre, mentre negli interi sì.

**Definizione formale.**

La gerarchia introdotta è:

$$
\mathbb N\subset\mathbb Z\subset\mathbb Q \subset\mathbb R\subset\mathbb C
$$

Con:

$$
\begin{aligned} \mathbb N&=\{0,1,2,\ldots\}\\ \mathbb Z&=\{\ldots,-1,0,1,\ldots\}\\ \mathbb Q&=\left\{\frac ab\mid a,b\in\mathbb Z,\ b\neq0\right\} \end{aligned}
$$

Un'operazione binaria interna su un insieme $X$ è una funzione:

$$
*:X\times X\longrightarrow X
$$

Le proprietà fondamentali studiate sono:

|Proprietà|Definizione formale|
|---|---|
|Commutatività|$a*b=b*a$|
|Associatività|$(a*b)*c=a*(b*c)$|
|Elemento neutro|$a*e=e*a=a$|
|Inverso di $a$|$a*b=b*a=e$|

Le uguaglianze relative alle proprietà sono intese per tutti gli elementi pertinenti di $X$. Nel caso dell'inverso, $e$ è l'elemento neutro dell'operazione.

## Pilastro 2 — Costruzione assiomatica dei numeri naturali

**Domanda.** Come possiamo definire rigorosamente i numeri naturali senza limitarci all'intuizione del contare?

**Definizione concettuale.**

I numeri naturali possono essere caratterizzati partendo da un elemento iniziale e da una regola che permette di ottenere il numero successivo.

L'idea fondamentale è che ogni naturale possa essere raggiunto partendo da zero e applicando ripetutamente questa regola.

**Definizione formale.**

Si introduce un elemento iniziale:

$$
0\in\mathbb N
$$

E una funzione successore:

$$
S:\mathbb N\longrightarrow\mathbb N
$$

$$
S(n)=n+1
$$

Con le seguenti proprietà essenziali:

1. $0$ non è successore di alcun naturale.

2. Numeri naturali distinti hanno successori distinti.

3. Partendo da $0$ e applicando il successore si ottengono tutti i naturali (formalizzato dal principio di induzione).


## Pilastro 3 — Principio del minimo

**Domanda.** Possiamo garantire che un qualsiasi insieme non vuoto di numeri naturali abbia un elemento più piccolo di tutti gli altri?

**Definizione concettuale.**

Ogni sottoinsieme non vuoto dei naturali possiede necessariamente un minimo.

Questo principio permette, tra le altre cose, di costruire dimostrazioni per assurdo scegliendo il più piccolo numero naturale che viola una certa proprietà.

**Definizione formale.**

$$
\boxed{ \begin{gathered} \forall A\subseteq\mathbb N,\quad A\neq\varnothing\\ \Longrightarrow\\ \exists m\in A:\forall n\in A,\ m\leq n \end{gathered} }
$$

Il principio del minimo è equivalente al principio di induzione matematica.

## Pilastro 4 — Principio di induzione matematica

**Domanda.** Come possiamo dimostrare che una proprietà vale per infiniti numeri naturali attraverso un numero finito di passaggi?

**Definizione concettuale.**

L'induzione permette di dimostrare una proprietà universale verificando due condizioni:

- La proprietà è vera per un primo numero (passo base).

- Supponendo che sia vera per un generico numero $n$, possiamo dimostrare che lo sia anche per $n+1$ (passo induttivo).


In questo modo la proprietà si propaga dal valore iniziale a tutti i successivi.

**Definizione formale.**

Sia $P(n)$ una proprietà definita per ogni $n\geq n_0$.

$$
\boxed{ \begin{aligned} &P(n_0)\\ &\forall n\geq n_0,\quad P(n)\Rightarrow P(n+1) \end{aligned} }
$$

Allora:

$$
\boxed{\forall n\geq n_0,\ P(n)}
$$

Dove:

- $P(n_0)$: passo base.

- $P(n)$: ipotesi induttiva.

- $P(n+1)$: tesi del passo induttivo.


**Collegamento con il principio del minimo.**

Possiamo dimostrare l'induzione per assurdo supponendo che esista un minimo controesempio $m$.

Poiché $m$ è il primo controesempio, $P(m-1)$ deve essere vera. Tuttavia, dal passo induttivo segue anche $P(m)$, producendo una contraddizione.

## Pilastro 5 — Induzione forte (o completa)

**Domanda.** Come possiamo dimostrare una proprietà quando il caso $n$ dipende da più casi precedenti, e non soltanto dal suo predecessore?

**Definizione concettuale.**

L'induzione forte estende l'ipotesi induttiva: per dimostrare una proprietà relativa a $n$, possiamo assumere vere tutte le proprietà relative ai numeri precedenti, a partire dall'indice iniziale.

È particolarmente utile quando il problema viene ricondotto a numeri più piccoli, ma non necessariamente consecutivi.

**Definizione formale.**

Sia $P(n)$ una proprietà definita per $n\geq n_0$.

Se:

$$
P(n_0)
$$

e:

$$
\forall n>n_0,\quad \left( \bigwedge_{k=n_0}^{n-1}P(k) \right) \Rightarrow P(n)
$$

allora:

$$
\boxed{\forall n\geq n_0,\ P(n)}
$$

**Differenza fondamentale.**

|Induzione debole|Induzione forte|
|---|---|
|Assume $P(n)$|Assume tutte le proprietà precedenti|
|Dimostra $P(n+1)$|Dimostra $P(n)$|
|Usa il predecessore|Può usare qualsiasi caso precedente|

Le due forme sono logicamente equivalenti.

Infatti, possiamo trasformare un'induzione forte in una debole introducendo una proprietà cumulativa:

$$
Q(n):\forall k\in\mathbb N,\quad n_0\leq k\leq n\Rightarrow P(k)
$$

## Pilastro 6 — Teorema fondamentale dell'aritmetica

**Domanda.** È sempre possibile rappresentare un numero naturale maggiore di uno come prodotto di numeri primi? E questa rappresentazione è unica?

**Definizione concettuale.**

I numeri primi costituiscono i fattori fondamentali della moltiplicazione sui naturali.

Qualsiasi numero naturale maggiore di uno è primo oppure può essere scomposto in fattori primi. Questa rappresentazione è unica, ignorando l'ordine dei fattori.

**Definizioni formali preliminari.**

Un numero $p\in\mathbb N$ è primo se:

$$
p\geq2
$$

e:

$$
\forall d\in\mathbb N,\quad d\mid p\Rightarrow(d=1\lor d=p)
$$

Un numero $n\geq2$ è composto se:

$$
\exists a,b\in\mathbb N: \begin{cases} n=ab\\ 1<a<n\\ 1<b<n \end{cases}
$$

**Enunciato formale del teorema.**

$$
\boxed{ \forall n\in\mathbb N,\ n\geq2,\quad \exists p_1,\ldots,p_r\text{ primi}: n=\prod_{i=1}^{r}p_i }
$$

Inoltre, se esistono due fattorizzazioni:

$$
n=p_1\cdots p_r=q_1\cdots q_s
$$

allora $r=s$ e i fattori coincidono a meno di una permutazione.

### Collegamento con l'induzione forte

La lezione dimostra la parte di esistenza attraverso l'induzione forte.

Definiamo:

$$
P(n): n\text{ è prodotto di numeri primi}
$$

- Base: $P(2)$ è vera perché $2$ è primo.

- Passo induttivo: assumiamo $P(k)$ vera per ogni $2\leq k<n$.


Distinguiamo quindi due casi:

Caso 1: $n$ è primo. La proprietà è immediatamente verificata.

Caso 2: $n$ è composto. Allora:

$$
n=ab,\qquad 2\leq a,b<n
$$

Per ipotesi induttiva, sia $a$ sia $b$ sono fattorizzabili in primi; dunque anche il loro prodotto $n$ lo è.

L'induzione forte è naturale proprio perché dobbiamo utilizzare le proprietà di $a$ e $b$, che non sono necessariamente uguali a $n-1$.

Nota: la lezione enuncia anche l'unicità della fattorizzazione, ma sviluppa inizialmente soltanto la dimostrazione dell'esistenza.
