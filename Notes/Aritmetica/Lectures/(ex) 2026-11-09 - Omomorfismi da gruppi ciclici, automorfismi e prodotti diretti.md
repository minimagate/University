---
type: lecture-note
course: Aritmetica
date: '2026-11-09'
title: Omomorfismi da gruppi ciclici, automorfismi e prodotti diretti
source: LEZIONE 13!!.pdf
teaching_model: anthropic/claude-opus-5.5
---

# Omomorfismi da gruppi ciclici, automorfismi e prodotti diretti

Lezione 13 (lunedì 9/11), dagli appunti manoscritti «Metodi per fare esercizi sui gruppi». L'idea che regge tutta la lezione: **un omomorfismo con dominio ciclico è determinato dall'immagine di un generatore**, e l'unico vincolo su quell'immagine riguarda il suo ordine. Da qui si contano omomorfismi, si calcolano $\operatorname{Aut}(\mathbb Z)$ e $\operatorname{Aut}(\mathbb Z/n\mathbb Z)$ e si caratterizza quando $\mathbb Z/n\mathbb Z\times\mathbb Z/m\mathbb Z$ è ciclico.

Prerequisiti: omomorfismi, nucleo, ordine e prodotti diretti in [[2026-11-03 - Omomorfismi, nuclei e prodotti diretti di gruppi|Omomorfismi, nuclei e prodotti diretti di gruppi]]; teorema di Lagrange in [[2026-11-04 - Classi laterali e teorema di Lagrange|Classi laterali e teorema di Lagrange]].

---

## 1. Omomorfismi con dominio $\mathbb Z$

Sia $G$ un gruppo qualsiasi (notazione moltiplicativa) e $f:\mathbb Z\to G$ un omomorfismo con $f(1)=g$. Allora

$$
f(2)=f(1+1)=f(1)f(1)=g^2,
\qquad
f(n)=g^n\ \ \forall n\geq0,
\qquad
f(-n)=f(n)^{-1}=(g^n)^{-1}=g^{-n}.
$$

Quindi **l'immagine di $1$ determina $f$**: $f(n)=g^n$ per ogni $n\in\mathbb Z$.

Viceversa, per **ogni** $g\in G$ l'assegnamento $f(1)=g$ si estende a un omomorfismo ben definito $f(n)=g^n$, perché

$$
f(a+b)=g^{a+b}=g^ag^b=f(a)f(b).
$$

> **Fatto.** Un omomorfismo $\mathbb Z\to G$ è univocamente determinato dall'assegnamento $f(1)=g$, e ogni $g\in G$ va bene, qualunque sia $G$.

---

## 2. Omomorfismi con dominio $\mathbb Z/n\mathbb Z$

Sia $f:\mathbb Z/n\mathbb Z\to G$ con $f(\bar1)=g$. Come sopra, necessariamente $f(\bar a)=g^a$.

**Condizione necessaria.** L'ordine dell'immagine divide l'ordine dell'elemento, quindi

$$
\operatorname{ord} g=\operatorname{ord} f(\bar1)\ \big|\ \operatorname{ord}\bar1=n.
$$

**È anche sufficiente?** Supponiamo $\operatorname{ord} g\mid n$, cioè $g^n=e$. Dobbiamo verificare che $f(\bar a)=g^a$ sia ben definita, ossia che non dipenda dal rappresentante. Se $a\equiv b\pmod n$, allora $b=a+kn$ e

$$
g^b=g^a\,(g^n)^k=g^a\,e^k=g^a.
$$

Quindi $f$ è ben definita, ed è un omomorfismo per lo stesso conto del caso $\mathbb Z$.

> **Fatto.** Un omomorfismo $\mathbb Z/n\mathbb Z\to G$ è univocamente determinato da $f(\bar1)=g$, con l'unica condizione $\operatorname{ord} g\mid n$. Quindi
> $$\#\operatorname{Hom}(\mathbb Z/n\mathbb Z,G)=\#\{g\in G:\ g^n=e\}.$$

---

## 3. Esempi

### 3.1 $\operatorname{Hom}(\mathbb Z,G)$ con $|G|=m$

Per il §1 ogni $g\in G$ dà esattamente un omomorfismo, quindi

$$
|\operatorname{Hom}(\mathbb Z,G)|=|G|=m.
$$

### 3.2 La struttura di gruppo su $\operatorname{Hom}(G_1,G_2)$

Dati $f,\varphi:G_1\to G_2$ omomorfismi, si definisce il prodotto puntuale, usando l'operazione di $G_2$:

$$
(f\cdot\varphi)(g)=f(g)\,\varphi(g).
$$

L'elemento neutro è l'omomorfismo banale $g\mapsto e_{G_2}$ per ogni $g$.

*Precisazione (mia):* perché $f\cdot\varphi$ sia sempre di nuovo un omomorfismo, per ogni coppia $f,\varphi$, basta che $G_2$ sia **abeliano**. Infatti $(f\cdot\varphi)(gh)=f(g)f(h)\varphi(g)\varphi(h)$, e per riordinarlo in $f(g)\varphi(g)\,f(h)\varphi(h)$ serve scambiare $f(h)$ con $\varphi(g)$. In generale serve che le immagini commutino. Gli appunti scrivono $(\operatorname{Hom}(G_1,G_2),+)$, con notazione additiva, che è il caso abeliano.

### 3.3 $\operatorname{Hom}(\mathbb Z,G)\cong G$

Consideriamo

$$
\Phi:\operatorname{Hom}(\mathbb Z,G)\to G,\qquad f\mapsto f(1).
$$

- **Omomorfismo:** $\Phi(f\cdot\varphi)=(f\cdot\varphi)(1)=f(1)\varphi(1)=\Phi(f)\Phi(\varphi)$.
- **Iniettiva:** $\ker\Phi=\{f:\ f(1)=e\}$. Se $f(1)=e$ allora $f(k)=e^k=e$ per ogni $k$, quindi $f$ è l'omomorfismo banale, cioè il neutro di $\operatorname{Hom}$. Gli appunti lo chiamano «mappa identità del gruppo Hom», nel senso di elemento neutro, non di funzione identità.
- **Suriettiva:** per ogni $g\in G$, l'assegnamento $f(1)=g$ definisce un (unico) omomorfismo, per il §1.

Quindi, per $G$ abeliano (così $\operatorname{Hom}(\mathbb Z,G)$ è un gruppo con il prodotto puntuale), $\Phi$ è un isomorfismo di gruppi. Per $G$ qualsiasi $\Phi$ resta una **biezione** tra insiemi.

### 3.4 $\operatorname{Hom}(\mathbb Z/n\mathbb Z,\mathbb Z/m\mathbb Z)$

Per il §2 c'è un omomorfismo per ogni $g\in\mathbb Z/m\mathbb Z$ con $\operatorname{ord} g\mid n$. Ma in $\mathbb Z/m\mathbb Z$ vale anche $\operatorname{ord} g\mid m$, quindi

$$
\operatorname{ord} g\mid (m,n)=:d.
$$

Gli elementi con ordine che divide $d$ sono esattamente quelli dell'unico sottogruppo di ordine $d$, cioè

$$
H_d=\Bigl\langle \overline{\tfrac md}\Bigr\rangle\le\mathbb Z/m\mathbb Z,
$$

quindi ci sono **$d$ omomorfismi**.

Gli appunti chiedono se $\operatorname{Hom}(\mathbb Z/n\mathbb Z,\mathbb Z/m\mathbb Z)\cong\mathbb Z/d\mathbb Z$. *Risposta (mia):* sì. La mappa $f\mapsto f(\bar1)$ è un omomorfismo iniettivo con immagine $H_d$, che è ciclico di ordine $d$.

---

## 4. Automorfismi

**Definizione.**

$$
\operatorname{Aut}(G)=\{f:G\to G\ \text{omomorfismo biettivo}\}.
$$

$(\operatorname{Aut}(G),\circ)$ è un gruppo, sottogruppo del gruppo delle permutazioni $S(G)$. Infatti se $f,\varphi\in\operatorname{Aut}(G)$ allora $f\circ\varphi\in\operatorname{Aut}(G)$, e se $f\in\operatorname{Aut}(G)$ allora $f^{-1}\in\operatorname{Aut}(G)$.

### 4.1 $\operatorname{Aut}(\mathbb Z)$

Gli omomorfismi $f:\mathbb Z\to\mathbb Z$ sono determinati da $f(1)=a$, per ogni $a$, e sono $f(n)=an$.

- **Nucleo:** $\ker f=\{n\in\mathbb Z:\ an=0\}$. Quindi $f$ è iniettiva $\iff a\neq0$: se $a\neq0$, $an=0\Rightarrow n=0$, cioè $\ker f=\{0\}$.
- **Suriettività:** $f$ è suriettiva $\iff$ per ogni $x\in\mathbb Z$ l'equazione $an=x$ ha soluzione $n\in\mathbb Z$. Per $x=1$ serve $an=1$, quindi $a=\pm1$. La condizione è anche sufficiente: per $a=\pm1$ l'equazione $an=x$ ha sempre la soluzione $n=\pm x$.

$$
\boxed{\operatorname{Aut}(\mathbb Z)=\{\mathrm{id},-\mathrm{id}\}\cong\mathbb Z/2\mathbb Z}
$$

### 4.2 $\operatorname{Aut}(\mathbb Z/n\mathbb Z)\cong(\mathbb Z/n\mathbb Z)^*$

Sia $f:\mathbb Z/n\mathbb Z\to\mathbb Z/n\mathbb Z$ con $f(\bar1)=\bar a$, quindi $f(\bar c)=c\,\bar a$ per ogni $c$. (Ogni $\bar a$ è ammesso, perché $\operatorname{ord}\bar a\mid n$ sempre.)

**Quando è iniettivo?**

$$
\bar c\in\ker f\iff ca\equiv0\pmod n.
$$

$f$ è iniettiva $\iff$ l'unica soluzione di $ca\equiv0\pmod n$ è $c\equiv0\pmod n$. Le soluzioni di $ac\equiv0\pmod n$ sono

$$
c\equiv0\ \Bigl(\bmod\ \tfrac{n}{(a,n)}\Bigr).
$$

- Se $(a,n)=1$, l'unica soluzione è $c\equiv0\pmod n$.
- Se $(a,n)=d>1$, le soluzioni sono $c\equiv0\pmod{n/d}$, e ce ne sono di non nulle.

Siccome $\mathbb Z/n\mathbb Z$ è finito, iniettiva equivale a biettiva. Quindi:

> $f(\bar1)=\bar a$ definisce un automorfismo $\iff (a,n)=1$. In particolare $|\operatorname{Aut}(\mathbb Z/n\mathbb Z)|=\varphi(n)$ (funzione di Eulero).

**L'isomorfismo.** Sia

$$
F:\operatorname{Aut}(\mathbb Z/n\mathbb Z)\to(\mathbb Z/n\mathbb Z)^*,\qquad f\mapsto f(\bar1).
$$

Sappiamo già che è ben definita e biettiva. Resta da verificare che sia un omomorfismo di gruppi:

$$
F(f\circ\varphi)=F(f)\cdot F(\varphi).
$$

*Verifica (mia):* se $\varphi(\bar1)=\bar b$ e $f(\bar1)=\bar a$, allora $(f\circ\varphi)(\bar1)=f(\bar b)=b\,\bar a=\overline{ab}$.

$$
\boxed{\operatorname{Aut}(\mathbb Z/n\mathbb Z)\cong(\mathbb Z/n\mathbb Z)^*}
$$

### 4.3 Esempio: $(\mathbb Z/8\mathbb Z)^*$ non è ciclico

$$
(\mathbb Z/8\mathbb Z)^*=\{\bar1,\bar3,\bar5,\bar7\},
$$

con $\bar1$ di ordine $1$ e $\bar3,\bar5,\bar7$ tutti di ordine $2$ (infatti $9,25,49\equiv1\pmod8$).

Un gruppo finito è ciclico $\iff$ ha un elemento di ordine uguale all'ordine del gruppo. Qui non ci sono elementi di ordine $4$, quindi **$(\mathbb Z/8\mathbb Z)^*$ non è ciclico**, e nemmeno $\operatorname{Aut}(\mathbb Z/8\mathbb Z)$. In effetti $(\mathbb Z/8\mathbb Z)^*\cong\mathbb Z/2\times\mathbb Z/2$ (vedi §5).

---

## 5. Prodotti diretti di gruppi ciclici

> **Teorema.** $\mathbb Z/n\mathbb Z\times\mathbb Z/m\mathbb Z\cong\mathbb Z/mn\mathbb Z\iff(m,n)=1.$

**($\Leftarrow$)** È il teorema cinese del resto (TCR).

**($\Rightarrow$)** *Ipotesi:* $\mathbb Z/n\mathbb Z\times\mathbb Z/m\mathbb Z\cong\mathbb Z/mn\mathbb Z$. *Tesi:* $(m,n)=1$.

Se il prodotto è ciclico, esiste un elemento $([a]_m,[b]_n)$ di ordine $mn$. Sappiamo che

$$
\operatorname{ord}([a]_m,[b]_n)=\bigl[\operatorname{ord}[a]_m,\ \operatorname{ord}[b]_n\bigr]\quad(\text{mcm}).
$$

Sia $\eta=[m,n]$. Allora $\operatorname{ord}([a]_m,[b]_n)\mid\eta$ per ogni elemento, infatti

$$
\eta\,([a]_m,[b]_n)=(\eta[a]_m,\ \eta[b]_n)=([0]_m,[0]_n),
$$

perché $m\mid\eta$ e $n\mid\eta$.

Se $(m,n)>1$, allora

$$
[m,n]=\frac{mn}{(m,n)}<mn,
$$

quindi nessun elemento ha ordine $mn$ e **il gruppo non è ciclico**. Per contrapposizione, ciclico implica $(m,n)=1$. $\blacksquare$

**Esempio.** $\mathbb Z/2\times\mathbb Z/2$ non è ciclico (ogni elemento non banale ha ordine $2$). Ad esempio $(\mathbb Z/8\mathbb Z)^*\cong\mathbb Z/2\times\mathbb Z/2$.

---

## 6. Esercizio svolto: contare omomorfismi e omomorfismi iniettivi

**Problema.** Contare gli omomorfismi e gli omomorfismi iniettivi

$$
f:\mathbb Z/6\mathbb Z\longrightarrow\mathbb Z/4\mathbb Z\times\mathbb Z/30\mathbb Z\times\mathbb Z/31\mathbb Z.
$$

**Omomorfismi.** Il dominio è ciclico, quindi basta scegliere l'immagine di $\bar1$, una terna $(\bar a,\bar b,\bar c)$, con la condizione $\operatorname{ord}(\bar a,\bar b,\bar c)\mid\operatorname{ord}\bar1=6$, cioè

$$
6(\bar a,\bar b,\bar c)=(6\bar a,6\bar b,6\bar c)=(\bar0,\bar0,\bar0).
$$

$$
\begin{cases}
6a\equiv0\pmod4\\
6b\equiv0\pmod{30}\\
6c\equiv0\pmod{31}
\end{cases}
\iff
\begin{cases}
a\equiv0\ \bigl(\bmod\ \tfrac{4}{(6,4)}\bigr)\\[2pt]
b\equiv0\ \bigl(\bmod\ \tfrac{30}{(30,6)}\bigr)\\[2pt]
c\equiv0\ \bigl(\bmod\ \tfrac{31}{(6,31)}\bigr)
\end{cases}
\iff
\begin{cases}
a\equiv0\pmod2 & \to\ \tfrac42=2\ \text{elementi mod }4\\[2pt]
b\equiv0\pmod5 & \to\ \tfrac{30}5=6\ \text{elementi mod }30\\[2pt]
c\equiv0\pmod{31} & \to\ \tfrac{31}{31}=1\ \text{elemento mod }31
\end{cases}
$$

Totale: $2\cdot6\cdot1=12$ omomorfismi.

**Omomorfismi iniettivi.** Sono quelli con $\operatorname{ord} f(\bar1)=6$. La condizione è necessaria, ed è anche sufficiente perché $\operatorname{Im}f=\langle f(\bar1)\rangle$: se ha ordine $6$, $f$ è una biezione sull'immagine.

$$
\operatorname{ord}(\bar a,\bar b,\bar c)=\bigl[\operatorname{ord}\bar a,\ \operatorname{ord}\bar b,\ \operatorname{ord}\bar c\bigr]=6.
$$

Gli ordini possibili:

- $\bar a\in\{\bar0,\bar2\}$, quindi $\operatorname{ord}\bar a\in\{1,2\}$;
- $\bar b\in\langle\bar5\rangle\le\mathbb Z/30$ (ciclico di ordine $6$), quindi $\operatorname{ord}\bar b\in\{1,2,3,6\}$;
- $\bar c=\bar0$, quindi $\operatorname{ord}\bar c=1$.

Per avere mcm $=6$ bisogna escludere le combinazioni con mcm $1$, $2$ o $3$ (ad esempio $(\bar0,\overline{10},\bar0)$ ha ordine $3$). Restano due casi:

| $\bar a$ | $\bar b$ | $\bar c$ | conteggio |
|---|---|---|---|
| qualsiasi ($\bar0$ o $\bar2$) | di ordine $6$: $\varphi(6)=2$ scelte ($\bar5,\overline{25}$) | $\bar0$ | $2\cdot2=4$ |
| $\bar2$ (ordine $2$) | di ordine $3$: $\varphi(3)=2$ scelte ($\overline{10},\overline{20}$) | $\bar0$ | $1\cdot2=2$ |

Ad esempio $(\bar2,\overline{10},\bar0)$ ha ordine $[2,3]=6$, e $(\bar2,\bar5,\bar0)$ ha ordine $[2,6]=6$.

$$
\Rightarrow\quad 12\ \text{omomorfismi},\ \ 6\ \text{iniettivi}.
$$

*(Negli appunti i due casi sono scritti in modo sintetico, «$a=0$: $b$ con $\varphi(6)$ possibilità → 2 omo» e «$a=2$, $b$ di ordine $3$ → $\varphi(3)$ possibilità», con un totale parziale «4 omo» accanto alle terne di esempio; la tabella sopra ricompone il conteggio completo, che torna con il totale $6$ scritto negli appunti.)*

---

## 7. Esercizio proposto

**Contare gli omomorfismi** $f:\mathbb Z/12\mathbb Z\to\mathbb Z/8\mathbb Z\times S_3$.

Gli appunti si fermano all'enunciato. *Svolgimento (mio), con lo stesso metodo:* $f$ è determinato da $f(\bar1)=(x,\sigma)$ con $\operatorname{ord}(x,\sigma)=[\operatorname{ord}x,\operatorname{ord}\sigma]\mid12$. Il metodo vale anche se $S_3$ non è abeliano, perché il dominio è ciclico.

- $x\in\mathbb Z/8$: serve $\operatorname{ord}x\mid(12,8)=4$, quindi $x\in\langle\bar2\rangle=\{\bar0,\bar2,\bar4,\bar6\}$, cioè $4$ scelte.
- $\sigma\in S_3$: gli ordini possibili sono $1,2,3$, tutti divisori di $12$, quindi $6$ scelte.

Totale $4\cdot6=24$ omomorfismi. Quelli iniettivi richiedono $\operatorname{ord}(x,\sigma)=12$, cioè $\operatorname{ord}x=4$ ($\bar2,\bar6$) e $\operatorname{ord}\sigma=3$ (i due $3$-cicli): $2\cdot2=4$ omomorfismi iniettivi.

---

## Riepilogo dei metodi

1. **Dominio $\mathbb Z$:** $f$ è determinata da $f(1)$, che può essere qualsiasi elemento.
2. **Dominio $\mathbb Z/n\mathbb Z$:** $f$ è determinata da $f(\bar1)=g$ con $\operatorname{ord}g\mid n$. Si contano gli elementi del codominio con $g^n=e$.
3. **Codominio prodotto:** l'ordine di una tupla è il mcm degli ordini delle componenti, quindi le condizioni si risolvono componente per componente.
4. **Iniettività con dominio ciclico:** equivale a $\operatorname{ord}f(\bar1)=n$.
5. **Automorfismi:** $\operatorname{Aut}(\mathbb Z)\cong\mathbb Z/2$, $\operatorname{Aut}(\mathbb Z/n\mathbb Z)\cong(\mathbb Z/n\mathbb Z)^*$, di ordine $\varphi(n)$.

## Fonte

- Appunti manoscritti «LEZIONE 13!!» («Metodi per fare es. sui gruppi»), 1 pagina lunga in Nebo, creata il 9/11/2026.
- Le parti segnate «mia», «mio» o «precisazione» non compaiono negli appunti.
