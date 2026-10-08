---
type: book-note
course: Geometria 1
date: 2026-10-02
title: Span e basi vettoriali
topics:
  - combinazioni lineari
  - span
  - indipendenza lineare
  - basi
  - coordinate
---

# Span e basi vettoriali

> **Lezione:** 2 ottobre 2026 — Span, indipendenza lineare e basi vettoriali

**Filo logico:**

Costruire vettori → Individuare tutti i vettori costruibili → Eliminare le ridondanze → Definire una base → Assegnare coordinate.

## 1. Combinazioni lineari

**Domanda.** Come posso costruire un nuovo vettore a partire da vettori fissati?

**Definizione intuitiva.** Una combinazione lineare è un vettore ottenuto sommando vettori fissati, ciascuno moltiplicato per uno scalare.

**Definizione formale.**

Sia $V$ uno spazio vettoriale sul campo $\mathbb K$ e siano $v_1,\ldots,v_n\in V$.

Si dice combinazione lineare dei vettori $v_1,\ldots,v_n$ ogni vettore della forma:

$$
\boxed{ w=\sum_{i=1}^{n}\alpha_iv_i, \qquad \alpha_i\in\mathbb K. }
$$

## 2. Span e sistemi di generatori

**Domanda.** Qual è l'insieme di tutti i vettori che posso costruire? Quando posso costruire l'intero spazio?

**Definizione intuitiva.** Lo span raccoglie tutte le possibili combinazioni lineari dei vettori scelti. Se coincide con l'intero spazio, quei vettori sono un sistema di generatori.

**Definizione formale.**

Siano $v_1,\ldots,v_n\in V$. Si definisce:

$$
\boxed{ \operatorname{span}(v_1,\ldots,v_n) = \left\{ \sum_{i=1}^{n}\alpha_iv_i \;\middle|\; \alpha_1,\ldots,\alpha_n\in\mathbb K \right\}. }
$$

Un sottoinsieme $A\subseteq V$ si dice insieme di generatori di $V$ se:

$$
\boxed{\operatorname{span}(A)=V.}
$$

Nel caso finito, equivalentemente:

$$
\forall w\in V,\quad \exists\alpha_1,\ldots,\alpha_n\in\mathbb K: \quad w=\sum_{i=1}^{n}\alpha_iv_i.
$$

Proprietà fondamentale: lo span di $A$ è il più piccolo sottospazio vettoriale di $V$ contenente $A$.

## 3. Indipendenza lineare

**Domanda.** I vettori che ho scelto sono tutti necessari oppure alcuni possono essere costruiti utilizzando gli altri?

**Definizione intuitiva.** Una famiglia è linearmente indipendente quando nessuno dei suoi vettori è ridondante.

**Definizione formale.**

I vettori $v_1,\ldots,v_n\in V$ si dicono linearmente indipendenti se l'unica loro combinazione lineare che restituisce il vettore nullo è quella banale:

$$
\boxed{ \sum_{i=1}^{n}\alpha_iv_i=0 \implies \alpha_1=\cdots=\alpha_n=0. }
$$

Viceversa, sono linearmente dipendenti se:

$$
\boxed{ \exists(\alpha_1,\ldots,\alpha_n)\neq(0,\ldots,0): \quad \sum_{i=1}^{n}\alpha_iv_i=0. }
$$

Risultato fondamentale:

$$
\begin{gathered} v_1,\ldots,v_n\text{ linearmente dipendenti}\\ \Updownarrow\\ \text{Almeno un vettore è combinazione lineare degli altri.} \end{gathered}
$$

L'indipendenza garantisce inoltre l'unicità della rappresentazione mediante i vettori fissati, quando tale rappresentazione esiste.

## 4. Basi vettoriali

**Domanda.** Come posso scegliere dei vettori sufficienti a descrivere tutto lo spazio, senza avere ridondanze?

**Definizione intuitiva.** Una base è un sistema di generatori linearmente indipendente: permette di rappresentare ogni vettore dello spazio in uno e un solo modo.

**Definizione formale.**

Sia $V$ uno spazio vettoriale sul campo $\mathbb K$.

Un sottoinsieme $B\subseteq V$ si dice base di $V$ se:

$$
\boxed{ B\text{ è una base di }V \iff \begin{cases} \operatorname{span}(B)=V,\\ B\text{ è linearmente indipendente}. \end{cases} }
$$

Le due condizioni hanno ruoli distinti:

|Proprietà|Garantisce|
|---|---|
|Generazione|Esistenza della rappresentazione|
|Indipendenza|Unicità della rappresentazione|
|Base|Esistenza e unicità|

## 5. Coordinate rispetto a una base

**Domanda.** Una volta scelta una base, come posso descrivere univocamente ogni vettore attraverso una lista di scalari?

**Definizione intuitiva.** Le coordinate sono gli unici coefficienti necessari per costruire un vettore attraverso i vettori di una base fissata.

**Definizione formale.**

Sia:

$$
B=(v_1,\ldots,v_n)
$$

una base ordinata di $V$.

Per ogni $w\in V$, esistono unici scalari $\alpha_1,\ldots,\alpha_n\in\mathbb K$ tali che:

$$
w=\sum_{i=1}^{n}\alpha_iv_i.
$$

Si definisce vettore delle coordinate di $w$ rispetto a $B$:

$$
\boxed{ [w]_B= \begin{pmatrix} \alpha_1\\ \vdots\\ \alpha_n \end{pmatrix}. }
$$

Caso particolare — Base canonica di $\mathbb K^n$:

$$
E=(e_1,\ldots,e_n)
$$

dove:

$$
e_i=(0,\ldots,0,\underbrace{1}_{i\text{-esima posizione}},0,\ldots,0).
$$

Rispetto alla base canonica, le coordinate coincidono con le componenti abituali del vettore.

## Lock-in: cosa devi assolutamente ricordare

### La lezione in cinque formule

01 — COMBINAZIONE LINEARE

$$
w=\sum_{i=1}^{n}\alpha_iv_i
$$

02 — GENERAZIONE

$$
\operatorname{span}(A)=V
$$

03 — INDIPENDENZA LINEARE

$$
\sum_{i=1}^{n}\alpha_iv_i=0 \implies \forall i,\ \alpha_i=0
$$

04 — BASE

$$
\operatorname{span}(B)=V \quad\land\quad B\text{ indipendente}
$$

05 — COORDINATE

$$
w=\sum_{i=1}^{n}\alpha_iv_i \implies [w]_B=(\alpha_1,\ldots,\alpha_n)^T
$$
