---
type: book-note
course: Geometria 1
date: 2026-09-30
title: Polinomi e radici complesse
topics:
  - teorema fondamentale dell'algebra
  - fattorizzazione
  - molteplicità
  - radici coniugate
  - radici dell'unità
---

# Polinomi e radici complesse

> **Lezione:** 30 settembre 2026 — Fattorizzazione dei polinomi e radici complesse

**Filo logico:** radici → fattori lineari → molteplicità → fattorizzazione completa → coppie coniugate.

## Pilastro 1 — Radici e fattori lineari

**Domanda.** Qual è il legame tra una radice e la fattorizzazione di un polinomio?

Il **teorema del fattore** afferma che

$$
P(z_0)=0
\quad\Longleftrightarrow\quad
z-z_0\mid P(z).
$$

Quindi $z_0$ è una radice se e solo se esiste un polinomio $Q$ tale che

$$
P(z)=(z-z_0)Q(z).
$$

Una divisione con resto diventa una vera fattorizzazione soltanto quando il resto è zero.

## Pilastro 2 — Fattorizzazione completa su $\mathbb C$

**Domanda.** Possiamo scomporre ogni polinomio complesso in fattori lineari?

Il **teorema fondamentale dell'algebra** garantisce che ogni polinomio complesso non costante possiede almeno una radice. Ripetendo il teorema del fattore si ottiene:

$$
P(z)=a(z-z_1)(z-z_2)\cdots(z-z_n),
$$

dove $a\neq0$ e $n=\deg P$.

Le radici $z_1,\ldots,z_n$ sono contate con la loro molteplicità e non devono essere tutte distinte.

## Pilastro 3 — Molteplicità delle radici

**Domanda.** Che cosa significa che una radice compare più volte?

$z_0$ ha **molteplicità $k$** se

$$
P(z)=(z-z_0)^kQ(z),
\qquad Q(z_0)\neq0.
$$

Equivalentemente, $(z-z_0)^k$ divide $P$, ma $(z-z_0)^{k+1}$ non lo divide.

Un polinomio non nullo di grado $n$ ha al massimo $n$ radici contate con molteplicità; su $\mathbb C$ ne ha esattamente $n$.

## Pilastro 4 — Polinomi reali e radici coniugate

**Domanda.** Che cosa accade alle radici non reali di un polinomio a coefficienti reali?

Se $P$ ha coefficienti reali e $z_0$ è una radice, allora anche $\overline{z_0}$ è una radice:

$$
P(z_0)=0
\quad\Longrightarrow\quad
P(\overline{z_0})=0.
$$

Le radici non reali compaiono quindi in coppie coniugate, con la stessa molteplicità. Il loro prodotto genera un fattore quadratico reale:

$$
(z-z_0)(z-\overline{z_0})
=z^2-2\operatorname{Re}(z_0)z+|z_0|^2.
$$

## Pilastro 5 — Equazioni quadratiche complesse

**Domanda.** La formula risolutiva continua a valere su $\mathbb C$?

Per

$$
az^2+bz+c=0,
\qquad a\neq0,
$$

vale ancora

$$
z_{1,2}=\frac{-b\pm\sqrt{b^2-4ac}}{2a}.
$$

La differenza rispetto al caso reale è che il discriminante può essere complesso. Se è non nullo possiede due radici quadrate opposte; se è nullo si ottiene una radice doppia.

## Pilastro 6 — Radici dell'unità

**Domanda.** Quali sono le soluzioni di $z^n=1$?

Le radici $n$-esime dell'unità sono

$$
z_k=
\cos\frac{2k\pi}{n}
+i\sin\frac{2k\pi}{n},
\qquad k=0,\ldots,n-1.
$$

Sono i vertici di un poligono regolare inscritto nella circonferenza unitaria. Inoltre sono precisamente le radici del polinomio $z^n-1$.

## Formulario minimo

$$
P(z_0)=0
\iff
z-z_0\mid P(z).
$$

$$
P(z)=a\prod_{j=1}^{n}(z-z_j).
$$

$$
P\in\mathbb R[z],\ P(z_0)=0
\Longrightarrow
P(\overline{z_0})=0.
$$

