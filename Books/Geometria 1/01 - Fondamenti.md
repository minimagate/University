---
type: book-note
course: Geometria 1
date: 2026-09-23
title: Fondamenti
topics:
  - insiemi
  - applicazioni
  - campi
  - spazi vettoriali
---

# Fondamenti

> **Lezione:** 23 settembre 2026 — Insiemi, applicazioni e spazi vettoriali

Questa lezione costruisce il linguaggio matematico necessario per arrivare alla definizione astratta di spazio vettoriale.

**Filo logico:**

Insiemi → Applicazioni → Proprietà delle applicazioni → Operazioni → Campi → Spazi vettoriali

Ho raggruppato gli argomenti della lezione in sei pilastri, privilegiando i concetti che ti serviranno per comprendere le lezioni successive.

## 1. Insiemi e operazioni insiemistiche

**Domanda.** Come posso descrivere una collezione di oggetti e costruire nuovi insiemi a partire da altri?

**Definizione intuitiva.** Un insieme è una collezione di elementi. Possiamo costruire nuovi insiemi selezionando gli elementi comuni, riunendo elementi oppure formando coppie ordinate.

**Definizioni formali.**

Nella lezione, il concetto di insieme è assunto come primitivo. Si introducono quindi le principali operazioni.

Siano $X,Y$ due insiemi.

|Operazione|Definizione formale|
|---|---|
|Appartenenza|$x\in X$|
|Intersezione|$X\cap Y=\{a\mid a\in X\land a\in Y\}$|
|Unione|$X\cup Y=\{a\mid a\in X\lor a\in Y\}$|
|Prodotto cartesiano|$X\times Y=\{(x,y)\mid x\in X,\ y\in Y\}$|

Il prodotto cartesiano è particolarmente importante perché permette di costruire oggetti come:

$$
\mathbb R^2=\mathbb R\times\mathbb R.
$$

I suoi elementi sono coppie ordinate:

$$
(x,y)\in\mathbb R^2.
$$

Proprietà fondamentale — Uguaglianza tra insiemi

Due insiemi sono uguali se e solo se ciascuno è contenuto nell'altro:

$$
\boxed{ A=B\iff (A\subseteq B)\land(B\subseteq A). }
$$

Dove l'inclusione si definisce formalmente come:

$$
A\subseteq B \iff \forall x\;(x\in A\implies x\in B).
$$

Questo introduce una delle prime tecniche dimostrative fondamentali del corso: la doppia inclusione.

## 2. Applicazioni (funzioni) tra insiemi

**Domanda.** Come posso formalizzare una corrispondenza che associa elementi di un insieme a elementi di un altro?

**Definizione intuitiva.** Un'applicazione è una regola che associa a ogni elemento del dominio esattamente un elemento del codominio.

**Definizione formale.**

Siano $X,Y$ due insiemi.

Un'applicazione:

$$
f:X\longrightarrow Y
$$

associa a ogni $x\in X$ uno e un solo elemento $y\in Y$, indicato con $f(x)$.

Formalmente, definendo il grafico $\Gamma_f\subseteq X\times Y$:

$$
\boxed{ \forall x\in X,\quad \exists!y\in Y: \quad (x,y)\in\Gamma_f. }
$$

Il simbolo $\exists!$ significa esiste uno e un solo.

Nota che dominio e codominio sono parte della definizione dell'applicazione: non basta specificare soltanto la legge $x\mapsto f(x)$.

## 3. Iniettività, suriettività e biettività

**Domanda.** Quali proprietà può avere la corrispondenza tra gli elementi di due insiemi? Quando è possibile invertirla?

Queste tre proprietà descrivono come un'applicazione associa gli elementi del dominio a quelli del codominio.

Iniettività

Elementi distinti del dominio hanno immagini distinte.

$$
\boxed{ \forall x,x'\in X,\quad f(x)=f(x')\implies x=x'. }
$$

Suriettività

Ogni elemento del codominio viene raggiunto da almeno un elemento del dominio.

$$
\boxed{ \forall y\in Y,\quad \exists x\in X:\ f(x)=y. }
$$

Biettività

Ogni elemento del codominio viene raggiunto da esattamente un elemento del dominio.

$$
\boxed{ f\text{ biettiva} \iff f\text{ iniettiva e suriettiva}. }
$$

### Composizione e applicazione inversa

La lezione introduce inoltre la composizione di due applicazioni compatibili:

$$
f:X\to Y,\qquad g:Y\to Z.
$$

La composizione è definita come:

$$
\boxed{(g\circ f)(x)=g(f(x)).}
$$

Si applica prima $f$, poi $g$.

Un'applicazione $f:X\to Y$ è invertibile se e solo se è biettiva. In tal caso esiste:

$$
f^{-1}:Y\to X
$$

tale che:

$$
\boxed{ \begin{cases} f^{-1}\circ f=\operatorname{id}_X,\\ f\circ f^{-1}=\operatorname{id}_Y. \end{cases} }
$$

Qui $\operatorname{id}_X$ è l'applicazione identica su $X$, definita da $\operatorname{id}_X(x)=x$.

Collegamento importante: la suriettività garantisce l'esistenza della controimmagine, mentre l'iniettività ne garantisce l'unicità.

## 4. Operazioni interne ed esterne

**Domanda.** Come posso formalizzare le operazioni matematiche, distinguendo quelle che combinano elementi dello stesso insieme da quelle che coinvolgono insiemi differenti?

**Definizione intuitiva.** Un'operazione è un particolare tipo di applicazione. La sua struttura dipende dagli insiemi da cui prendiamo gli operandi e dall'insieme in cui otteniamo il risultato.

Definizioni formali:

Un'operazione interna su un insieme $K$ è un'applicazione:

$$
\boxed{\star:K\times K\longrightarrow K.}
$$

Prende due elementi di $K$ e restituisce ancora un elemento di $K$.

Per esempio, la somma usuale sui reali:

$$
+:\mathbb R\times\mathbb R\to\mathbb R.
$$

Il prodotto per scalare è invece un'operazione esterna rispetto a $V$, della forma:

$$
\boxed{\cdot:K\times V\longrightarrow V.}
$$

Prende uno scalare dal campo $K$ e un vettore da $V$, restituendo un elemento di $V$.

Questa distinzione prepara direttamente la definizione di spazio vettoriale.

## 5. Campi

**Domanda.** Quali proprietà deve possedere un insieme numerico affinché i suoi elementi possano essere utilizzati come scalari?

**Definizione intuitiva.** Un campo è un insieme sul quale possiamo effettuare somme, sottrazioni, prodotti e divisioni per elementi non nulli, rispettando determinate proprietà algebriche.

**Definizione formale.**

Un campo è un insieme $K$, dotato di due operazioni interne:

$$
+:K\times K\to K
$$

$$
\cdot:K\times K\to K
$$

tali che:

$$
\boxed{ \begin{cases} (K,+)\text{ è un gruppo abeliano},\\ (K\setminus\{0\},\cdot)\text{ è un gruppo abeliano},\\ \cdot\text{ è distributivo rispetto a }+. \end{cases} }
$$

La definizione compatta raccoglie gli assiomi presentati dal professore.

|Somma|Prodotto|
|---|---|
|Associativa|Associativo|
|Commutativa|Commutativo|
|Elemento neutro $0$|Elemento neutro $1\neq0$|
|Ogni elemento ha un opposto|Ogni elemento non nullo ha un inverso|

Inoltre, deve valere la proprietà distributiva:

$$
\boxed{a(b+c)=ab+ac.}
$$

Esempi importanti di campi sono:

$$
\mathbb Q,\qquad\mathbb R,\qquad\mathbb C.
$$

Nella lezione compare anche il campo con due elementi:

$$
\mathbb F_2=\{0,1\},
$$

nel quale, in particolare, $1+1=0$.

Idea da ricordare: un campo definisce la struttura algebrica degli scalari, non necessariamente quella dei vettori.

## 6. Spazi vettoriali

**Domanda.** Come posso generalizzare il concetto geometrico di vettore a oggetti astratti, mantenendo le proprietà fondamentali della somma e del prodotto per scalare?

**Definizione intuitiva.** Uno spazio vettoriale è un insieme di oggetti, chiamati vettori, che possiamo sommare tra loro e moltiplicare per elementi di un campo, rispettando determinati assiomi.

**Definizione formale.**

Sia $K$ un campo.

Uno spazio vettoriale su $K$ è un insieme $V$, dotato di due operazioni:

$$
\boxed{ \begin{aligned} + &:V\times V\longrightarrow V,\\ \cdot &:K\times V\longrightarrow V, \end{aligned} }
$$

che soddisfano otto assiomi.

### I quattro assiomi della somma

Per ogni $u,v,w\in V$:

|Proprietà|Formulazione|
|---|---|
|Associatività|$(u+v)+w=u+(v+w)$|
|Commutatività|$u+v=v+u$|
|Elemento neutro|$\exists\,0_V\in V:\ v+0_V=v$|
|Elemento opposto|$\forall v\in V,\ \exists(-v)\in V:\ v+(-v)=0_V$|

Queste proprietà rendono $(V,+)$ un gruppo abeliano.

### I quattro assiomi del prodotto per scalare

Per ogni $\alpha,\beta\in K$ e $u,v\in V$:

|Proprietà|Formulazione|
|---|---|
|Distributività sui vettori|$\alpha(u+v)=\alpha u+\alpha v$|
|Distributività sugli scalari|$(\alpha+\beta)v=\alpha v+\beta v$|
|Compatibilità|$(\alpha\beta)v=\alpha(\beta v)$|
|Azione dell'unità|$1v=v$|

Questa è la definizione assiomatica che permette di studiare con gli stessi strumenti matematici vettori geometrici, vettori numerici, polinomi e altri oggetti astratti.

## Lock-in — La lezione in sei formule

01 — INSIEMI

$$
A=B\iff A\subseteq B\land B\subseteq A
$$

02 — APPLICAZIONI

$$
\forall x\in X,\quad\exists!y\in Y: (x,y)\in\Gamma_f
$$

03 — BIETTIVITÀ

$$
f\text{ biettiva}\iff f\text{ iniettiva e suriettiva}
$$

04 — OPERAZIONI

$$
K\times K\to K,\qquad K\times V\to V
$$

05 — CAMPO

$$
(K,+),\ (K\setminus\{0\},\cdot) \text{ gruppi abeliani}
$$

con distributività del prodotto rispetto alla somma.

06 — SPAZIO VETTORIALE

$$
(V,+)\text{ gruppo abeliano}
$$

con prodotto esterno $K\times V\to V$ che soddisfa i quattro assiomi indicati.

## Quali concetti meritano maggiore attenzione?

Per collegare questa lezione a quella del 2 ottobre (span, indipendenza e basi), darei queste priorità:

|Priorità|Concetto|Perché|
|---|---|---|
|1|Spazio vettoriale|È la struttura su cui lavoreremo.|
|2|Campo|Determina quali scalari possiamo utilizzare.|
|3|Applicazioni|Fondamentali per studiare successivamente le applicazioni lineari.|
|4|Prodotto cartesiano|Permette di formalizzare operazioni e spazi come $\mathbb R^n$.|
|5|Iniettività e suriettività|Introducono le nozioni di esistenza e unicità.|
|6|Uguaglianza tra insiemi|Introduce una tecnica dimostrativa ricorrente.|

### Tre domande di richiamo attivo

1. Perché una funzione non è soltanto una legge $x\mapsto f(x)$, ma richiede anche la specificazione di dominio e codominio?

2. Qual è la differenza strutturale tra un campo $K$ e uno spazio vettoriale $V$ su $K$?

3. Perché non basta definire due operazioni $V\times V\to V$ e $K\times V\to V$ per poter affermare che $V$ sia uno spazio vettoriale?


Il collegamento più importante tra le due lezioni: il 23 settembre il professore introduce la struttura astratta dello spazio vettoriale; il 2 ottobre inizia a studiare cosa possiamo costruire all'interno di questa struttura, fino ad arrivare alle basi e alle coordinate.
