---
type: book-note
course: Geometria 1
date: 2026-09-30
title: Spazi vettoriali
topics:
  - spazi vettoriali
  - assiomi
  - sottospazi
---

# Spazi vettoriali

> **Lezione:** 30 settembre 2026 — Spazi vettoriali, esempi e sottospazi

Questo è il recap da utilizzare per ripassare velocemente la lezione prima di passare a span, indipendenza lineare e basi.

Per ogni pilastro trovi la domanda fondamentale, l'intuizione e la definizione formale, mantenendo le convenzioni degli appunti.

## 1. Spazio vettoriale

**Domanda.** Che cosa rende un insieme di oggetti uno spazio vettoriale, indipendentemente dalla loro natura geometrica?

**Intuizione.** Uno spazio vettoriale è un insieme i cui elementi possono essere sommati e moltiplicati per scalari, rispettando determinate regole.

**Definizione formale.**

Siano $K$ un campo e $V$ un insieme dotato di due operazioni:

$$
+:V\times V\longrightarrow V
$$

$$
\cdot:K\times V\longrightarrow V
$$

$V$ si dice spazio vettoriale su $K$ se le due operazioni soddisfano gli assiomi di spazio vettoriale.

Gli elementi di $V$ sono detti vettori, mentre gli elementi di $K$ sono detti scalari.

## 2. Assiomi di spazio vettoriale

**Domanda.** Quali proprietà devono rispettare la somma e il prodotto esterno affinché un insieme sia uno spazio vettoriale?

**Intuizione.** Gli assiomi garantiscono che le operazioni siano coerenti tra loro e permettano di manipolare i vettori seguendo regole precise.

**Definizione formale.**

Siano $u,v,w\in V$ e $\alpha,\beta\in K$.

Negli appunti del professore gli assiomi sono raggruppati in sette punti.

|Assioma|Proprietà formale|
|---|---|
|1. Associatività|$(u+v)+w=u+(v+w)$|
|2. Elemento neutro|$\exists\,\mathbf0\in V:\ u+\mathbf0=\mathbf0+u=u$|
|3. Esistenza dell'opposto|$\forall u\in V,\ \exists -u\in V:\ u+(-u)=\mathbf0$|
|4. Commutatività|$u+v=v+u$|
|5. Distributività|$\alpha(u+v)=\alpha u+\alpha v$ e $(\alpha+\beta)u=\alpha u+\beta u$|
|6. Compatibilità|$\alpha(\beta u)=(\alpha\beta)u$|
|7. Unità|$1_Ku=u$|

La chiusura delle due operazioni è già richiesta dalle loro definizioni:

$$
+:V\times V\to V,\qquad \cdot:K\times V\to V.
$$

Da ricordare: una proprietà derivabile dagli assiomi non necessita di essere introdotta come un ulteriore assioma.

Ad esempio:

$$
0_Ku=\mathbf0,\qquad \alpha\mathbf0=\mathbf0.
$$

## 3. Esempi fondamentali di spazi vettoriali

**Domanda.** Uno spazio vettoriale deve necessariamente essere un insieme di frecce geometriche?

**Intuizione.** no. La struttura vettoriale dipende dalle operazioni definite sugli elementi e dalle loro proprietà, non dalla forma concreta degli oggetti.

La lezione introduce tre esempi fondamentali.

### Le tuple ordinate: $K^n$

$$
K^n=\{(x_1,\ldots,x_n)\mid x_i\in K\}
$$

Con operazioni:

$$
(x_1,\ldots,x_n)+(y_1,\ldots,y_n) = (x_1+y_1,\ldots,x_n+y_n)
$$

$$
\alpha(x_1,\ldots,x_n) = (\alpha x_1,\ldots,\alpha x_n).
$$

### I polinomi: $K[x]$

$$
K[x]= \left\{ a_0+a_1x+\cdots+a_nx^n \mid n\in\mathbb N,\ a_i\in K \right\}
$$

La somma avviene sommando i coefficienti delle stesse potenze; il prodotto esterno moltiplicando tutti i coefficienti per lo scalare.

Un caso particolarmente importante è:

$$
K_n[x]= \{a_0+a_1x+\cdots+a_nx^n\mid a_i\in K\}.
$$

È lo spazio dei polinomi di grado al più $n$, includendo il polinomio nullo.

### Le funzioni: $\mathcal F(X,\mathbb R)$

$$
\mathcal F(X,\mathbb R) = \{f\mid f:X\to\mathbb R\}
$$

Con operazioni definite punto per punto:

$$
(f+g)(x)=f(x)+g(x)
$$

$$
(\alpha f)(x)=\alpha f(x).
$$

Concetto da fissare: tuple, polinomi e funzioni possono condividere la medesima struttura vettoriale.

## 4. Sottospazio vettoriale

**Domanda.** Quando un sottoinsieme di uno spazio vettoriale è a sua volta uno spazio vettoriale?

**Intuizione.** Quando possiamo restringere lo studio a una porzione dello spazio originale senza perdere la struttura vettoriale e senza introdurre nuove operazioni.

**Definizione formale.**

Sia $V$ uno spazio vettoriale sul campo $K$.

Un sottoinsieme:

$$
W\subseteq V
$$

si dice sottospazio vettoriale di $V$ se, dotato delle stesse operazioni di somma e prodotto esterno definite su $V$, è a sua volta uno spazio vettoriale su $K$.

Esempio:

$$
W=\{(x,0)\mid x\in\mathbb R\}
$$

è un sottospazio di $\mathbb R^2$.

Geometricamente rappresenta l'asse orizzontale.

Attenzione: essere un sottoinsieme è necessario, ma non sufficiente per essere un sottospazio.

## 5. Criterio di sottospazio e conseguenze

**Domanda.** Come possiamo dimostrare che un sottoinsieme è un sottospazio senza verificare nuovamente tutti gli assiomi?

**Intuizione.** Poiché le proprietà delle operazioni sono già valide nello spazio ambiente, dobbiamo assicurarci che tali operazioni non ci facciano uscire dal sottoinsieme.

**Definizione formale — Criterio di sottospazio.**

Siano $V$ uno spazio vettoriale su $K$ e $W\subseteq V$.

Allora $W$ è un sottospazio vettoriale se e solo se:

$$
\boxed{
\begin{cases}
\mathbf{0}\in W,\\[4pt]
\forall u,v\in W,\quad u+v\in W,\\[4pt]
\forall\alpha\in K,\ \forall u\in W,\quad\alpha u\in W.
\end{cases}
}
$$

La prima condizione può essere sostituita da $W\neq\varnothing$, mantenendo le altre due.

### Due conseguenze importanti

Siano $U,W$ sottospazi vettoriali di $V$.

Intersezione:

$$
\boxed{U\cap W\text{ è sempre un sottospazio di }V.}
$$

Unione:

$$
\boxed{ U\cup W\text{ è un sottospazio} \iff U\subseteq W\ \lor\ W\subseteq U }
$$

L'unione, quindi, non è in generale un sottospazio: potrebbe non essere chiusa rispetto alla somma.

## Lock-in — L'intera lezione in 30 secondi

|Pilastro|Concetto da ricordare|
|---|---|
|1. Spazio vettoriale|Insieme + due operazioni|
|2. Assiomi|Le regole che le operazioni devono rispettare|
|3. Esempi|La natura concreta dei vettori è secondaria|
|4. Sottospazio|Sottoinsieme che conserva la struttura vettoriale|
|5. Criterio|Vettore nullo + due condizioni di chiusura|

### Il collegamento con la prossima lezione

Il prossimo grande concetto sarà la combinazione lineare:

$$
\alpha_1v_1+\cdots+\alpha_nv_n.
$$

Questa espressione utilizza proprio le due operazioni studiate oggi.

Da qui nascerà una nuova domanda:

Dato un insieme di vettori, quali altri vettori possiamo ottenere mediante combinazioni lineari?
