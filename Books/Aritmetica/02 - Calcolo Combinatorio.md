---
type: book-note
course: Aritmetica
date: 2026-09-29
title: Calcolo combinatorio
topics:
  - cardinalità
  - principi di conteggio
  - funzioni tra insiemi finiti
  - principio dei cassetti
  - coefficienti binomiali
---

# Calcolo combinatorio

> **Lezione:** 29 settembre 2026 — Cardinalità e tecniche fondamentali del calcolo combinatorio

Questo è il recap da conservare in Books: per ogni pilastro trovi la domanda fondamentale, il significato intuitivo e la formalizzazione matematica, mantenendo le convenzioni del professore.

## 1. Cardinalità e biiezioni

**Domanda.** Che cosa significa contare un insieme? Quando due insiemi hanno lo stesso numero di elementi?

**Definizione concettuale.** Contare un insieme finito significa poter numerare tutti i suoi elementi, associando a ciascuno un numero distinto, senza omissioni né ripetizioni.

Due insiemi hanno la stessa cardinalità quando è possibile mettere i rispettivi elementi in corrispondenza biunivoca.

**Definizione formale.**

Dato $r\in\mathbb N$, con $r\geq1$, poniamo:

$$
[r]=\{1,2,\ldots,r\}.
$$

Un insieme finito $X$ ha cardinalità $r$ se:

$$
\boxed{|X|=r\iff\exists f:[r]\to X \text{ biiettiva}.}
$$

Con la convenzione $[0]=\varnothing$, la definizione comprende anche l'insieme vuoto.

Inoltre, per due insiemi finiti:

$$
\boxed{ |X|=|Y|\iff \exists f:X\to Y\text{ biiettiva}. }
$$

## 2. Principi fondamentali del conteggio

**Domanda.** Come posso determinare la cardinalità di un insieme senza enumerarne esplicitamente tutti gli elementi?

**Definizione concettuale.** Possiamo trasformare un problema di conteggio in uno più semplice, per esempio scomponendolo in scelte successive oppure contando gli stessi oggetti in due modi differenti.

La lezione introduce tre strumenti.

### A. Principio delle scelte successive

Se un oggetto viene costruito mediante due scelte, la prima con $n$ possibilità e la seconda con $m$ possibilità per ogni prima scelta, il numero complessivo è $nm$.

Formalmente, per insiemi finiti:

$$
\boxed{|X\times Y|=|X|\cdot|Y|=nm.}
$$

Dove:

$$
X\times Y=\{(x,y):x\in X,\ y\in Y\}.
$$

### B. Double counting

Consiste nel contare lo stesso insieme finito utilizzando due procedimenti differenti.

Se $X$ è partizionato in sottoinsiemi disgiunti $A_1,\ldots,A_k$, allora:

$$
\boxed{|X|=\sum_{i=1}^{k}|A_i|.}
$$

Se otteniamo una seconda espressione per $|X|$, possiamo uguagliare i due risultati.

### C. Principio di induzione

Consente di dimostrare che una proposizione $P(n)$ è vera per ogni naturale a partire da un valore iniziale.

Formalmente, se:

$$
\begin{cases} P(1)\text{ è vera},\\ P(n)\implies P(n+1),\quad\forall n\geq1, \end{cases}
$$

allora:

$$
\boxed{\forall n\geq1,\ P(n).}
$$

Esempio della lezione: l'identità

$$
\sum_{i=0}^{n-1}(2i+1)=n^2
$$

può essere dimostrata sia per induzione sia mediante double counting geometrico.

## 3. Funzioni tra insiemi finiti

**Domanda.** Quante funzioni differenti posso costruire da un insieme $X$ a un insieme $Y$?

**Definizione concettuale.** Costruire una funzione significa scegliere esattamente un'immagine nel codominio per ciascun elemento del dominio.

Se il dominio contiene $n$ elementi e il codominio ne contiene $m$, dobbiamo effettuare $n$ scelte, ciascuna con $m$ possibilità.

Le immagini possono ripetersi.

**Formalizzazione.**

Siano $X,Y$ insiemi finiti tali che:

$$
|X|=n,\qquad |Y|=m.
$$

Definiamo l'insieme di tutte le funzioni:

$$
Y^X=\{f\mid f:X\to Y\}.
$$

La sua cardinalità è:

$$
\boxed{|Y^X|=|Y|^{|X|}=m^n.}
$$

Il codominio non deve necessariamente coincidere con l'immagine:

$$
\operatorname{Im}(f)=\{f(x):x\in X\}\subseteq Y.
$$

## 4. Funzioni iniettive e principio dei cassetti

**Domanda.** Quante funzioni posso costruire se non posso associare due elementi distinti alla stessa immagine? Quando questa associazione diventa impossibile?

**Definizione concettuale.** Una funzione è iniettiva quando non riutilizza mai un'immagine per due elementi distinti del dominio.

Pertanto, durante la costruzione della funzione, ogni scelta riduce di uno le possibilità successive.

**Definizione formale di iniettività.**

Una funzione $f:X\to Y$ è iniettiva se:

$$
\boxed{ \forall x_1,x_2\in X,\quad f(x_1)=f(x_2)\implies x_1=x_2. }
$$

Se:

$$
|X|=n,\qquad |Y|=m,
$$

allora:

$$
\boxed{ \#\{f:X\to Y\mid f\text{ iniettiva}\} = \begin{cases} \dfrac{m!}{(m-n)!},&n\leq m,\\[6pt] 0,&n>m. \end{cases} }
$$

### Principio dei cassetti

Se abbiamo più oggetti che possibili destinazioni, almeno due oggetti devono condividere una destinazione.

Formalmente:

$$
\boxed{ |X|>|Y|\implies \nexists f:X\to Y\text{ iniettiva}. }
$$

Un risultato importante della lezione è che, se $X$ e $Y$ sono finiti e hanno la stessa cardinalità:

$$
\boxed{ f\text{ iniettiva} \iff f\text{ suriettiva} \iff f\text{ biiettiva}. }
$$

## 5. Insieme delle parti e funzioni caratteristiche

**Domanda.** Quanti sottoinsiemi differenti posso costruire a partire da un insieme?

**Definizione concettuale.** Costruire un sottoinsieme equivale a decidere, per ciascun elemento dell'insieme originale, se includerlo oppure escluderlo.

Ogni elemento offre quindi due possibilità indipendenti.

**Definizione formale.**

L'insieme delle parti di $X$ è:

$$
\boxed{ \mathcal P(X)=\{A:A\subseteq X\}. }
$$

Se $|X|=n$, allora:

$$
\boxed{|\mathcal P(X)|=2^n.}
$$

### Funzione caratteristica

Ogni sottoinsieme $A\subseteq X$ può essere rappresentato attraverso una funzione:

$$
\chi_A:X\to\{0,1\}
$$

definita da:

$$
\boxed{ \chi_A(x)= \begin{cases} 1,&x\in A,\\ 0,&x\notin A. \end{cases} }
$$

La corrispondenza:

$$
A\longmapsto\chi_A
$$

è una biiezione fra:

$$
\mathcal P(X)\longleftrightarrow\{0,1\}^X.
$$

Questo permette di ricondurre il conteggio dei sottoinsiemi al conteggio delle funzioni studiato nel terzo pilastro.

## 6. Coefficienti binomiali e sovracconteggio

**Domanda.** Quanti sottoinsiemi di cardinalità esattamente $r$ posso costruire a partire da un insieme di $n$ elementi, quando l'ordine non conta?

**Definizione concettuale.** Possiamo prima contare tutte le selezioni ordinate di $r$ elementi distinti e successivamente eliminare le ripetizioni dovute ai diversi ordinamenti dello stesso sottoinsieme.

Ogni sottoinsieme di $r$ elementi viene contato esattamente $r!$ volte.

**Definizione formale.**

Sia $X$ un insieme finito tale che $|X|=n$, con $0\leq r\leq n$.

Il coefficiente binomiale è il numero dei sottoinsiemi di $X$ aventi cardinalità $r$:

$$
\boxed{ \binom nr = \#\{A\subseteq X:|A|=r\}. }
$$

Per costruzione:

$$
\boxed{ \binom nr = \frac{n(n-1)\cdots(n-r+1)}{r!} = \frac{n!}{r!(n-r)!}. }
$$

### Principio generale del sovracconteggio

Se un procedimento produce $N$ risultati e ciascun oggetto viene contato esattamente $k$ volte, il numero effettivo di oggetti è:

$$
\boxed{\frac Nk.}
$$

La condizione fondamentale è che il sovracconteggio sia uniforme.

Un'ulteriore proprietà importante dei coefficienti binomiali è la simmetria:

$$
\boxed{\binom nr=\binom n{n-r}.}
$$

Deriva dalla biiezione che associa a ogni sottoinsieme il proprio complementare:

$$
A\longmapsto X\setminus A.
$$

## Mappa finale — Come si collegano tutti i pilastri?

1. **Cardinalità e biiezioni:** definiamo matematicamente cosa significa contare.
2. **Principi del conteggio:** impariamo a calcolare cardinalità senza enumerare.
3. **Funzioni tra insiemi finiti:** contiamo le possibili associazioni tra elementi.
4. **Iniettività:** imponiamo immagini distinte.
5. **Insieme delle parti:** rappresentiamo le scelte tramite $0$ e $1$.
6. **Coefficienti binomiali:** contiamo le selezioni di cardinalità fissata eliminando il sovracconteggio.

### La cosa più importante da ricordare

Questa lezione non è principalmente una raccolta di formule: insegna a trasformare un problema combinatorio in un problema di cardinalità.

Quando incontri un nuovo esercizio, prova a porti sempre queste quattro domande:

1. Qual è esattamente l'insieme degli oggetti che voglio contare?
2. Posso rappresentare questi oggetti mediante coppie, funzioni o sottoinsiemi?
3. Le scelte ammettono ripetizioni? L'ordine è importante?
4. Posso costruire una biiezione con un insieme più semplice da contare?

Se sai rispondere a queste domande, hai costruito le fondamenta concettuali necessarie per affrontare gli argomenti successivi del calcolo combinatorio.
