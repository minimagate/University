---
type: book-note
course: Geometria 1
date: 2026-09-25
title: Numeri complessi
topics:
  - forma cartesiana
  - modulo e coniugio
  - forma polare
  - potenze
  - radici ennesime
---

# Numeri complessi

> **Lezione:** 25 settembre 2026 — Operazioni, forma polare e radici

**Filo logico:** forma cartesiana → modulo e coniugio → forma polare → prodotto e potenze → radici ennesime.

## Pilastro 1 — Forma cartesiana e operazioni

**Domanda.** Come rappresentiamo e calcoliamo con i numeri complessi?

Un numero complesso ha la forma

$$
z=a+ib,
\qquad a,b\in\mathbb R,
\qquad i^2=-1.
$$

$a$ è la parte reale e $b$ è la parte immaginaria. Possiamo identificare $z$ con il punto $(a,b)$ del piano.

Se $z=a+ib$ e $w=c+id$, allora

$$
z+w=(a+c)+i(b+d),
$$

$$
zw=(ac-bd)+i(ad+bc).
$$

La somma agisce componente per componente; nel prodotto compare il segno meno perché $i^2=-1$.

## Pilastro 2 — Modulo, coniugato e inverso

**Domanda.** Come misuriamo un numero complesso e come ne calcoliamo l'inverso?

Il **modulo** e il **coniugato** di $z=a+ib$ sono

$$
|z|=\sqrt{a^2+b^2},
\qquad
\overline z=a-ib.
$$

La relazione fondamentale è

$$
z\overline z=|z|^2.
$$

Per $z\neq0$ segue

$$
z^{-1}=\frac{\overline z}{|z|^2}.
$$

Il coniugio corrisponde geometricamente alla riflessione rispetto all'asse reale.

## Pilastro 3 — Forma polare

**Domanda.** Come descriviamo un numero complesso attraverso lunghezza e direzione?

Per $z\neq0$ possiamo scrivere

$$
z=\rho(\cos\theta+i\sin\theta),
$$

dove

$$
\rho=|z|
$$

e $\theta$ è un argomento di $z$. L'argomento è definito a meno di multipli di $2\pi$:

$$
\theta\sim\theta+2k\pi,
\qquad k\in\mathbb Z.
$$

Il numero $0$ non ha un argomento, perché non individua alcuna direzione.

## Pilastro 4 — Prodotto e potenze in forma polare

**Domanda.** Perché la forma polare semplifica prodotti e potenze?

Se

$$
z=\rho(\cos\theta+i\sin\theta),
\qquad
w=\lambda(\cos\varphi+i\sin\varphi),
$$

allora

$$
zw=\rho\lambda\bigl(\cos(\theta+\varphi)+i\sin(\theta+\varphi)\bigr).
$$

Quindi si moltiplicano i moduli e si sommano gli argomenti. Per le potenze si ottiene la formula di De Moivre:

$$
z^n=\rho^n\bigl(\cos(n\theta)+i\sin(n\theta)\bigr).
$$

## Pilastro 5 — Radici ennesime

**Domanda.** Come risolviamo l'equazione $z^n=w$?

Sia

$$
w=R(\cos\theta+i\sin\theta),
\qquad R>0.
$$

Le $n$ soluzioni distinte sono

$$
z_k=
\sqrt[n]{R}
\left(
\cos\frac{\theta+2k\pi}{n}
+i\sin\frac{\theta+2k\pi}{n}
\right),
\qquad k=0,\ldots,n-1.
$$

Hanno tutte lo stesso modulo e sono equidistanti sulla circonferenza: formano i vertici di un poligono regolare. Se $w=0$, l'unica soluzione è $z=0$.

## Pilastro 6 — Collegamento con i polinomi

**Domanda.** Perché i numeri complessi sono il campo naturale per studiare le radici dei polinomi?

Il **teorema fondamentale dell'algebra** afferma che ogni polinomio non costante a coefficienti complessi possiede almeno una radice complessa.

Se $P(z_0)=0$, allora

$$
P(z)=(z-z_0)Q(z).
$$

Questa proprietà collega la ricerca delle radici alla fattorizzazione dei polinomi.

## Formulario minimo

$$
\overline z=a-ib,
\qquad
|z|^2=z\overline z,
\qquad
z^{-1}=\frac{\overline z}{|z|^2}.
$$

$$
z^n=\rho^n\bigl(\cos(n\theta)+i\sin(n\theta)\bigr).
$$

