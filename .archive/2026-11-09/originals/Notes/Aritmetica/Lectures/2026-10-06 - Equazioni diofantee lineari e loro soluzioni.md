---
type: lecture-note
course: Aritmetica
date: 2026-10-06
title: Equazioni diofantee lineari e loro soluzioni
source_transcript: _transcripts/Aritmetica/2026-10-06 - Equazioni diofantee
  lineari e loro soluzioni.md
source_hash: sha256:b5974126edb18c3920a494932d787fdf5293b04d20bdd7fb4d3da6daba336fba
teaching_model: openai/gpt-5.6-luna
taught_at: 2026-10-06T08:58:01.444Z
---

# Equazioni diofantee lineari e loro soluzioni

## 1. Forma generale del problema

Un’equazione diofantea lineare in due incognite è un’equazione del tipo

$$
ax+by=c,
$$

dove $a,b,c\in\mathbb{Z}$ e si cercano **soluzioni intere** $(x,y)\in\mathbb{Z}^2$.

L’obiettivo non è soltanto trovare una soluzione, quando esiste, ma determinare **tutte** le soluzioni intere dell’equazione.

Il punto fondamentale è il seguente:

> L’equazione $ax+by=c$ ammette soluzioni intere se e solo se il massimo comune divisore di $a$ e $b$ divide $c$.

Indicando con

$$
d=\gcd(a,b),
$$

il criterio di esistenza è quindi

$$
d\mid c.
$$

---

## 2. Il ruolo del massimo comune divisore

Per definizione, $d=\gcd(a,b)$ è un divisore comune di $a$ e $b$, ed è il massimo tra i divisori comuni positivi.

Si possono scrivere

$$
a=da_1,\qquad b=db_1,
$$

dove $a_1,b_1\in\mathbb{Z}$ e

$$
\gcd(a_1,b_1)=1.
$$

La coppia $(a_1,b_1)$ si ottiene dividendo entrambi i coefficienti per il loro massimo comune divisore. Questa riduzione è importante perché porta il problema al caso coprimo.

Un fatto fondamentale è che ogni combinazione lineare intera di $a$ e $b$ è divisibile per $d$:

$$
d\mid a,\qquad d\mid b
\quad\Longrightarrow\quad
d\mid (ax+by)
$$

per ogni $x,y\in\mathbb{Z}$.

Di conseguenza, se l’equazione

$$
ax+by=c
$$

ha una soluzione intera, allora necessariamente

$$
d\mid c.
$$

Questa è la parte necessaria del criterio.

---

## 3. Dimostrazione della necessità

Supponiamo che esista una soluzione intera $(x,y)$ dell’equazione:

$$
ax+by=c.
$$

Poiché $d=\gcd(a,b)$ divide sia $a$ sia $b$, esistono $a_1,b_1\in\mathbb{Z}$ tali che

$$
a=da_1,\qquad b=db_1.
$$

Sostituendo nell’equazione:

$$
c=ax+by
  =da_1x+db_1y
  =d(a_1x+b_1y).
$$

Il termine tra parentesi è intero, dunque $c$ è un multiplo intero di $d$. Pertanto

$$
d\mid c.
$$

Quindi, se $\gcd(a,b)\nmid c$, l’equazione non può avere soluzioni intere.

---

## 4. Identità di Bézout

Il risultato che permette di dimostrare la sufficienza è l’identità di Bézout:

> Per ogni $a,b\in\mathbb{Z}$, esistono $u,v\in\mathbb{Z}$ tali che
>
> $$
> au+bv=\gcd(a,b).
> $$

Nel caso particolare in cui $\gcd(a,b)=1$, si ottiene

$$
au+bv=1.
$$

I coefficienti $u$ e $v$ possono essere determinati mediante l’algoritmo di Euclide esteso.

L’identità di Bézout ha due conseguenze importanti:

1. il massimo comune divisore è una combinazione lineare intera di $a$ e $b$;
2. ogni multiplo di $\gcd(a,b)$ è anch’esso una combinazione lineare intera di $a$ e $b$.

Infatti, se

$$
au+bv=d,
$$

allora, moltiplicando per un intero $k$:

$$
a(ku)+b(kv)=kd.
$$

---

## 5. Dimostrazione della sufficienza

Supponiamo ora che

$$
d=\gcd(a,b)
$$

divida $c$. Allora esiste $\gamma\in\mathbb{Z}$ tale che

$$
c=d\gamma.
$$

Per l’identità di Bézout esistono $u,v\in\mathbb{Z}$ tali che

$$
au+bv=d.
$$

Moltiplicando entrambi i membri per $\gamma$ si ottiene

$$
a(\gamma u)+b(\gamma v)=d\gamma=c.
$$

Pertanto

$$
x_0=\gamma u,\qquad y_0=\gamma v
$$

è una soluzione intera dell’equazione $ax+by=c$.

Abbiamo quindi dimostrato:

## Teorema di esistenza

Siano $a,b,c\in\mathbb{Z}$ e sia $d=\gcd(a,b)$. L’equazione

$$
ax+by=c
$$

ammette almeno una soluzione intera se e solo se

$$
d\mid c.
$$

Quando $d\mid c$, una soluzione particolare si ottiene a partire da una relazione di Bézout per $a$ e $b$.

---

## 6. Riduzione al caso coprimo

Supponiamo che $d=\gcd(a,b)$ divida $c$. Scriviamo

$$
a=da_1,\qquad b=db_1,\qquad c=dc_1.
$$

L’equazione diventa

$$
da_1x+db_1y=dc_1.
$$

Dividendo per $d$:

$$
a_1x+b_1y=c_1,
$$

dove

$$
\gcd(a_1,b_1)=1.
$$

Questa equazione ridotta è equivalente a quella iniziale: le soluzioni intere sono esattamente le stesse.

La riduzione è utile perché, nel caso coprimo, si può applicare direttamente il lemma di Euclide e la struttura delle soluzioni diventa più semplice.

---

## 7. Lemma di Euclide

Un lemma utilizzato nella determinazione di tutte le soluzioni è il seguente.

> Se $\gcd(r,s)=1$ e $r\mid st$, allora $r\mid t$.

In particolare, se $r$ e $s$ sono coprimi e $r$ divide un prodotto $st$, allora $r$ deve dividere il secondo fattore.

Questo risultato è essenziale nella dimostrazione della forma generale delle soluzioni.

---

## 8. Determinazione di tutte le soluzioni

Supponiamo di avere già trovato una soluzione particolare $(x_0,y_0)$ dell’equazione

$$
ax+by=c.
$$

Vogliamo descrivere tutte le altre soluzioni.

Sia $(x,y)$ un’altra soluzione. Allora

$$
ax+by=c
$$

e

$$
ax_0+by_0=c.
$$

Sottraendo membro a membro:

$$
a(x-x_0)+b(y-y_0)=0.
$$

Usando $a=da_1$ e $b=db_1$, con $\gcd(a_1,b_1)=1$, si ottiene

$$
da_1(x-x_0)+db_1(y-y_0)=0.
$$

Dividendo per $d$:

$$
a_1(x-x_0)+b_1(y-y_0)=0.
$$

Da questa uguaglianza segue

$$
a_1(x-x_0)=-b_1(y-y_0).
$$

Quindi $a_1$ divide il prodotto $b_1(y-y_0)$. Poiché $\gcd(a_1,b_1)=1$, per il lemma di Euclide:

$$
a_1\mid (y-y_0).
$$

Analogamente,

$$
b_1\mid (x-x_0).
$$

Esiste dunque $t\in\mathbb{Z}$ tale che

$$
x-x_0=b_1t,
$$

e quindi

$$
x=x_0+b_1t.
$$

Sostituendo nell’equazione differenziale, si ottiene

$$
y-y_0=-a_1t,
$$

cioè

$$
y=y_0-a_1t.
$$

Ricordando che

$$
a_1=\frac{a}{d},\qquad b_1=\frac{b}{d},
$$

la forma generale di tutte le soluzioni è

$$
\boxed{
\begin{aligned}
x&=x_0+\frac{b}{d}t,\\
y&=y_0-\frac{a}{d}t,
\end{aligned}
\qquad t\in\mathbb{Z}.
}
$$

Qui $(x_0,y_0)$ è una qualunque soluzione particolare.

---

## 9. Verifica della parametrizzazione

È necessario verificare anche il viceversa: ogni coppia definita dalla formula precedente è effettivamente una soluzione.

Siano

$$
x=x_0+\frac{b}{d}t,
\qquad
y=y_0-\frac{a}{d}t.
$$

Allora

$$
\begin{aligned}
ax+by
&=a\left(x_0+\frac{b}{d}t\right)
+b\left(y_0-\frac{a}{d}t\right)\\
&=ax_0+\frac{ab}{d}t+by_0-\frac{ab}{d}t\\
&=ax_0+by_0\\
&=c.
\end{aligned}
$$

I termini contenenti $t$ si cancellano. Pertanto ogni valore intero di $t$ produce una soluzione dell’equazione.

Di conseguenza, la parametrizzazione descrive esattamente tutte le soluzioni intere.

---

## 10. Forma geometrica

L’equazione

$$
ax+by=c
$$

rappresenta una retta nel piano cartesiano. Le soluzioni diofantee sono i punti della retta le cui coordinate sono entrambe intere.

Se $(x_0,y_0)$ è una soluzione particolare, tutte le altre soluzioni si ottengono traslando questo punto secondo il vettore

$$
\left(\frac{b}{d},-\frac{a}{d}\right).
$$

Infatti:

$$
(x,y)
=
(x_0,y_0)
+t\left(\frac{b}{d},-\frac{a}{d}\right),
\qquad t\in\mathbb{Z}.
$$

Il vettore di traslazione è parallelo alla retta, perché

$$
a\frac{b}{d}+b\left(-\frac{a}{d}\right)=0.
$$

La condizione $t\in\mathbb{Z}$ seleziona precisamente i punti a coordinate intere sulla retta.

Quindi:

- se $d\nmid c$, la retta non contiene punti del reticolo $\mathbb{Z}^2$;
- se $d\mid c$, contiene infiniti punti del reticolo;
- una volta trovata una soluzione particolare, tutte le altre si ottengono con traslazioni intere lungo il vettore sopra indicato.

---

## 11. Algoritmo pratico per risolvere un’equazione

Per risolvere concretamente

$$
ax+by=c,
$$

si procede nel modo seguente.

### Passo 1: calcolare il massimo comune divisore

Calcolare

$$
d=\gcd(a,b).
$$

### Passo 2: verificare la condizione di esistenza

Controllare se

$$
d\mid c.
$$

- Se $d\nmid c$, non esistono soluzioni intere.
- Se $d\mid c$, si procede.

### Passo 3: trovare i coefficienti di Bézout

Usando l’algoritmo di Euclide esteso, trovare $u,v\in\mathbb{Z}$ tali che

$$
au+bv=d.
$$

### Passo 4: ottenere una soluzione particolare

Scrivere

$$
c=d\gamma
$$

e moltiplicare l’identità di Bézout per $\gamma$:

$$
a(\gamma u)+b(\gamma v)=c.
$$

Quindi una soluzione particolare è

$$
(x_0,y_0)=(\gamma u,\gamma v).
$$

### Passo 5: scrivere tutte le soluzioni

Usare la formula

$$
\boxed{
\begin{aligned}
x&=x_0+\frac{b}{d}t,\\
y&=y_0-\frac{a}{d}t,
\end{aligned}
\qquad t\in\mathbb{Z}.
}
$$

---

## 12. Soluzioni diverse e parametrizzazioni diverse

Una stessa famiglia di soluzioni può essere scritta in modi apparentemente differenti.

Per esempio, cambiando il parametro da $t$ a $t+1$, oppure da $t$ a $t+k$ con $k\in\mathbb{Z}$, si ottiene una scrittura diversa, ma la stessa collezione di punti, purché il cambiamento di parametro sia compatibile con la parametrizzazione.

Il fatto che due formule abbiano un aspetto diverso non implica che descrivano soluzioni diverse. Occorre verificare se generano lo stesso insieme di coppie $(x,y)$.

In particolare, non è necessario che le coordinate di una soluzione siano entrambe non nulle: sono ammesse anche soluzioni come

$$
x=0
\qquad\text{o}\qquad
y=0,
$$

quando soddisfano l’equazione.

---

## 13. Osservazioni metodologiche

Il passaggio più importante è distinguere chiaramente tra:

1. **esistenza** di almeno una soluzione, determinata dalla condizione
   $$
   \gcd(a,b)\mid c;
   $$

2. **costruzione** di una soluzione particolare, ottenuta tramite Bézout;

3. **determinazione di tutte le soluzioni**, ottenuta studiando la differenza tra due soluzioni.

Una volta note due soluzioni $(x,y)$ e $(x_0,y_0)$, la loro differenza soddisfa l’equazione omogenea

$$
a(x-x_0)+b(y-y_0)=0.
$$

Per questo la soluzione generale dell’equazione non omogenea è costituita da:

- una soluzione particolare dell’equazione originale;
- più una soluzione generale dell’equazione omogenea $ax+by=0$.

La soluzione omogenea è

$$
(x,y)=t\left(\frac{b}{d},-\frac{a}{d}\right),
\qquad t\in\mathbb{Z}.
$$

Di conseguenza,

$$
\text{soluzione generale}
=
\text{soluzione particolare}
+
\text{soluzione omogenea}.
$$

Questa struttura è analoga a quella già incontrata in altri problemi algebrici: trovare una soluzione particolare e poi aggiungere tutte le soluzioni del problema associato omogeneo.