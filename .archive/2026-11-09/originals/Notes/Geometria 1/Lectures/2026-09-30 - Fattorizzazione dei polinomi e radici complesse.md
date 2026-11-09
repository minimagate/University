---
type: lecture-note
course: Geometria 1
date: 2026-09-30
title: Fattorizzazione dei polinomi e radici complesse
source_transcript: _transcripts/Geometria 1/2026-09-30 - Fattorizzazione dei
  polinomi e radici complesse.md
source_hash: sha256:c9f34d88caaaaceb4074db546fd127fa27b26a7317006679f7f3151b619bf750
teaching_model: openai/gpt-5.6-luna
taught_at: 2026-09-30T09:26:54.384Z
---

# Fattorizzazione dei polinomi e radici complesse

## 1. Teorema fondamentale dell’algebra e fattorizzazione lineare

Il **teorema fondamentale dell’algebra** afferma che ogni polinomio non costante a coefficienti complessi possiede almeno una radice complessa:

> Se $P(z)\in\mathbb{C}[z]$ ha grado almeno $1$, allora esiste $z_0\in\mathbb{C}$ tale che
>
> $$
> P(z_0)=0.
> $$

La dimostrazione del teorema fondamentale dell’algebra viene affrontata successivamente. In questa lezione si dimostra invece, per induzione sul grado, una conseguenza immediata ma molto importante.

## 2. Corollario: fattorizzazione completa in fattori lineari

### Enunciato

Sia $n\in\mathbb{N}$, $n\geq 1$, e sia $P(z)\in\mathbb{C}[z]$ un polinomio di grado $n$. Allora esistono $a\in\mathbb{C}\setminus\{0\}$ e $z_1,\dots,z_n\in\mathbb{C}$ tali che

$$
P(z)=a(z-z_1)(z-z_2)\cdots(z-z_n).
$$

I numeri $z_1,\dots,z_n$ sono le radici del polinomio, contate con la loro molteplicità.

Il coefficiente $a$ è il coefficiente del termine di grado massimo di $P$.

### Dimostrazione per induzione

Indichiamo con $P_n$ la proposizione:

> Ogni polinomio complesso di grado $n$ si può scrivere come prodotto del proprio coefficiente direttivo e di $n$ fattori lineari.

#### Passo base

Consideriamo un polinomio di grado $1$:

$$
P(z)=a_1z+a_0,
\qquad a_1\neq 0.
$$

Raccogliendo $a_1$ si ottiene

$$
P(z)
=a_1\left(z+\frac{a_0}{a_1}\right)
=a_1\left(z-\left(-\frac{a_0}{a_1}\right)\right).
$$

Quindi, ponendo

$$
z_1=-\frac{a_0}{a_1},
$$

si ha

$$
P(z)=a_1(z-z_1).
$$

La proposizione $P_1$ è dunque vera.

#### Passo induttivo

Supponiamo vera la proposizione per un certo grado $n\geq 1$: ogni polinomio complesso di grado $n$ ammette una fattorizzazione del tipo

$$
Q(z)=a(z-z_1)\cdots(z-z_n).
$$

Dimostriamo che allora vale per i polinomi di grado $n+1$.

Sia $P(z)$ un polinomio complesso di grado $n+1$. Per il teorema fondamentale dell’algebra, essendo $P$ non costante, esiste $z_1\in\mathbb{C}$ tale che

$$
P(z_1)=0.
$$

Dividendo $P(z)$ per il polinomio di primo grado $z-z_1$, si ottiene

$$
P(z)=(z-z_1)Q(z)+r,
$$

dove $r$ è un polinomio di grado minore di $1$, quindi una costante.

Valutando in $z=z_1$:

$$
P(z_1)=(z_1-z_1)Q(z_1)+r=r.
$$

Poiché $P(z_1)=0$, segue che $r=0$. Pertanto

$$
P(z)=(z-z_1)Q(z).
$$

Questo è il teorema del fattore, spesso formulato anche come conseguenza della regola di Ruffini:

$$
P(z_1)=0
\quad\Longleftrightarrow\quad
z-z_1\text{ divide }P(z).
$$

Il polinomio $Q(z)$ ha grado $n$, perché $P$ ha grado $n+1$ e $z-z_1$ ha grado $1$. Per l’ipotesi induttiva,

$$
Q(z)=a(z-z_2)\cdots(z-z_{n+1}).
$$

Sostituendo:

$$
P(z)
=(z-z_1)Q(z)
=a(z-z_1)(z-z_2)\cdots(z-z_{n+1}).
$$

Questo dimostra $P_{n+1}$ e quindi, per induzione, la proposizione vale per ogni $n\geq 1$.

## 3. Fattorizzazione e radici

È essenziale distinguere tra una semplice divisione con resto e una fattorizzazione.

Se si divide $P(z)$ per $z-z_1$, in generale si ottiene

$$
P(z)=(z-z_1)Q(z)+r.
$$

Questa non è ancora una fattorizzazione del polinomio, perché compare un termine additivo $r$.

Se invece $z_1$ è una radice, allora $P(z_1)=0$ e il resto è nullo. In tal caso:

$$
P(z)=(z-z_1)Q(z),
$$

che è effettivamente una fattorizzazione come prodotto di due polinomi.

Il punto chiave è quindi il seguente:

- una radice $z_1$ permette di estrarre il fattore $z-z_1$;
- una volta scritto il polinomio come prodotto di fattori, il prodotto si annulla se e solo se almeno uno dei fattori si annulla.

Infatti,

$$
P(z)=a(z-z_1)\cdots(z-z_n)
$$

implica

$$
P(z)=0
\quad\Longleftrightarrow\quad
z=z_1\ \text{oppure}\ z=z_2\ \text{oppure}\ \cdots\ \text{oppure}\ z=z_n.
$$

Le radici del polinomio sono dunque le radici dei singoli fattori lineari.

## 4. Molteplicità delle radici

Nella fattorizzazione

$$
P(z)=a(z-z_1)\cdots(z-z_n)
$$

non è necessario che i numeri $z_1,\dots,z_n$ siano distinti. Una stessa radice può comparire più volte.

Per esempio,

$$
P(z)=(z-1)^5
$$

ha una sola radice distinta, cioè $1$, ma tale radice ha molteplicità $5$.

### Definizione

Si dice che $z_0$ è una radice di molteplicità $k$ di $P$ se

$$
P(z)=(z-z_0)^kQ(z),
$$

dove $Q(z)$ è un polinomio tale che

$$
Q(z_0)\neq 0.
$$

Equivalentemente, $k$ è il massimo esponente per cui $(z-z_0)^k$ divide $P(z)$:

$$
(z-z_0)^k\mid P(z),
\qquad
(z-z_0)^{k+1}\nmid P(z).
$$

In pratica, se si trova una radice $z_0$, si può dividere $P$ per $z-z_0$. Se il quoziente possiede ancora la stessa radice, si può dividere nuovamente, e così via, fino a quando la radice non compare più.

Per esempio:

$$
P(z)=(z-1)^5.
$$

Dividendo una prima volta per $z-1$ si ottiene $(z-1)^4$; dividendo una seconda volta si ottiene $(z-1)^3$, e così via. Il fattore $z-1$ può essere estratto esattamente cinque volte.

### Esempio con radici di molteplicità diverse

Consideriamo

$$
P(z)=(z-1)^2(z-3)^4(z-5)^3.
$$

Il grado è

$$
2+4+3=9.
$$

Le radici distinte sono:

- $1$, con molteplicità $2$;
- $3$, con molteplicità $4$;
- $5$, con molteplicità $3$.

Contandole con la loro molteplicità, si ottengono complessivamente $9$ radici.

Questo chiarisce il significato dell’affermazione secondo cui un polinomio di grado $n$ ha $n$ radici: si tratta delle radici contate con molteplicità, non necessariamente di $n$ valori distinti.

## 5. Un polinomio di grado $n$ non può avere più di $n$ radici

La fattorizzazione completa mostra anche che un polinomio non nullo di grado $n$ non può avere più di $n$ radici, se esse vengono contate con molteplicità.

Infatti, supponiamo di aver estratto tutte le radici:

$$
P(x)
=
Q(x)\prod_{j=1}^k (x-x_j)^{m_j},
$$

dove gli $x_j$ sono radici distinte e $m_j$ sono le rispettive molteplicità.

Il numero totale di radici contate con molteplicità è

$$
m_1+\cdots+m_k.
$$

Poiché ciascun fattore $(x-x_j)^{m_j}$ ha grado $m_j$, il prodotto dei fattori estratti ha grado

$$
m_1+\cdots+m_k.
$$

Se $\deg P=n$, allora necessariamente

$$
m_1+\cdots+m_k\leq n.
$$

Se il polinomio residuo $Q$ avesse ancora una radice $x_0$ diversa dalle radici già estratte, allora

$$
P(x_0)
=
Q(x_0)\prod_{j=1}^k (x_0-x_j)^{m_j}.
$$

Per costruzione $Q(x_0)=0$, mentre tutti gli altri fattori sono diversi da zero. Questo significherebbe che si può estrarre un ulteriore fattore lineare, aumentando il grado totale dei fattori estratti. Quando il grado totale ha già raggiunto $n$, ciò è impossibile, perché il polinomio residuo deve essere costante.

Di conseguenza:

> Un polinomio non nullo di grado $n$ ha al massimo $n$ radici, contate con molteplicità.

Nel caso dei polinomi complessi, il teorema fondamentale dell’algebra garantisce inoltre che un polinomio di grado $n$ possiede esattamente $n$ radici complesse contate con molteplicità.

## 6. Notazione di divisibilità

La barretta verticale indica la divisibilità.

Per polinomi o numeri interi, la scrittura

$$
A\mid B
$$

significa che $A$ divide $B$, cioè che esiste un polinomio o numero $C$ tale che

$$
B=AC.
$$

Se invece $A$ non divide $B$, si scrive

$$
A\nmid B.
$$

Per esempio,

$$
z-z_0\mid P(z)
$$

significa che esiste un polinomio $Q(z)$ tale che

$$
P(z)=(z-z_0)Q(z).
$$

Per il teorema del fattore:

$$
P(z_0)=0
\quad\Longleftrightarrow\quad
z-z_0\mid P(z).
$$

## 7. Induzione matematica

La dimostrazione della fattorizzazione è un esempio di dimostrazione per induzione.

Quando un enunciato dipende da un numero naturale $n$, si indica con $P_n$ la proposizione relativa al valore $n$.

Per dimostrare che $P_n$ è vera per ogni $n$ naturale a partire da un certo valore iniziale, si procede in due passaggi.

### Metodo induttivo standard

1. **Passo base:** si dimostra che $P_1$ è vera.
2. **Passo induttivo:** si dimostra che, per ogni $n$,
   $$
   P_n\Longrightarrow P_{n+1}.
   $$

Da questi due passaggi segue che $P_n$ è vera per ogni $n\geq 1$.

È importante specificare da quale valore parte $n$. Cambiare l’indice, per esempio usare $n-1$ invece di $n$, è solo una scelta notazionale. Non esiste una versione matematicamente “più corretta” in assoluto: bisogna solo indicare chiaramente il dominio dell’indice.

### Forma equivalente dell’induzione

È equivalente dimostrare:

1. $P_1$ è vera;
2. se sono vere tutte le proposizioni
   $$
   P_1,P_2,\dots,P_n,
   $$
   allora è vera $P_{n+1}$.

Questa è una forma di induzione in cui l’ipotesi induttiva comprende tutti i casi precedenti, non soltanto il caso immediatamente precedente. A seconda del problema, una forma può risultare più comoda dell’altra.

## 8. Polinomi a coefficienti reali come caso particolare

I numeri reali sono contenuti nei numeri complessi:

$$
\mathbb{R}\subseteq\mathbb{C}.
$$

Le operazioni di somma e prodotto di numeri reali coincidono con quelle eseguite in $\mathbb{C}$, e il risultato di una somma o di un prodotto di numeri reali è ancora reale. Per questo $\mathbb{R}$ è un sottoinsieme chiuso rispetto a tali operazioni.

Di conseguenza, un polinomio a coefficienti reali è anche un polinomio a coefficienti complessi. Il teorema fondamentale dell’algebra si applica quindi anche ai polinomi reali, ma garantisce radici in $\mathbb{C}$, non necessariamente in $\mathbb{R}$.

Un polinomio a coefficienti reali può dunque avere:

- radici tutte reali;
- alcune radici reali e alcune non reali;
- soltanto radici non reali.

Non è corretto dedurre dal fatto che i coefficienti siano reali che tutte le radici siano reali.

## 9. Coniugio delle radici di un polinomio reale

### Proposizione

Sia

$$
P(z)=a_nz^n+a_{n-1}z^{n-1}+\cdots+a_1z+a_0
$$

un polinomio a coefficienti reali, cioè $a_j\in\mathbb{R}$ per ogni $j$.

Se $z_0\in\mathbb{C}$ è una radice di $P$, allora anche il suo coniugato $\overline{z_0}$ è una radice:

$$
P(z_0)=0
\quad\Longrightarrow\quad
P(\overline{z_0})=0.
$$

Quindi le radici non reali di un polinomio reale compaiono a coppie coniugate.

Se $z_0$ è reale, allora $\overline{z_0}=z_0$ e la proposizione non aggiunge una nuova radice.

### Dimostrazione

Poiché $P(z_0)=0$, consideriamo il coniugato di questa uguaglianza:

$$
\overline{P(z_0)}=\overline{0}=0.
$$

Sviluppando:

$$
P(z_0)
=
a_nz_0^n+a_{n-1}z_0^{n-1}+\cdots+a_1z_0+a_0.
$$

Usando le proprietà del coniugio,

$$
\overline{u+v}=\overline{u}+\overline{v},
\qquad
\overline{uv}=\overline{u}\,\overline{v},
$$

e

$$
\overline{z_0^k}=\overline{z_0}^{\,k},
$$

si ottiene

$$
\overline{P(z_0)}
=
\overline{a_n}\,\overline{z_0}^{\,n}
+\overline{a_{n-1}}\,\overline{z_0}^{\,n-1}
+\cdots
+\overline{a_1}\,\overline{z_0}
+\overline{a_0}.
$$

Poiché i coefficienti sono reali,

$$
\overline{a_j}=a_j.
$$

Pertanto

$$
\overline{P(z_0)}
=
a_n\overline{z_0}^{\,n}
+a_{n-1}\overline{z_0}^{\,n-1}
+\cdots
+a_1\overline{z_0}
+a_0
=
P(\overline{z_0}).
$$

Ma $\overline{P(z_0)}=0$, dunque

$$
P(\overline{z_0})=0.
$$

## 10. Molteplicità delle radici coniugate

La proprietà di coniugio vale anche per le molteplicità.

Supponiamo che $z_0\notin\mathbb{R}$ sia una radice di $P$ di molteplicità $m$. Allora

$$
P(z)=(z-z_0)^mQ(z),
$$

dove $Q(z_0)\neq 0$.

Poiché anche $\overline{z_0}$ è una radice, il fattore $z-\overline{z_0}$ divide $P(z)$. Inoltre, la molteplicità di $\overline{z_0}$ è uguale a quella di $z_0$.

Le radici non reali compaiono quindi a coppie:

$$
z_0,\overline{z_0},
$$

con la stessa molteplicità.

Graficamente, l’insieme delle radici di un polinomio reale è simmetrico rispetto all’asse reale del piano complesso.

## 11. Il fattore quadratico associato a una coppia coniugata

Se $z_0\notin\mathbb{R}$ è una radice di un polinomio reale, allora anche $\overline{z_0}$ è una radice. Di conseguenza, il prodotto dei due fattori lineari

$$
(z-z_0)(z-\overline{z_0})
$$

divide il polinomio.

Sviluppando:

$$
\begin{aligned}
(z-z_0)(z-\overline{z_0})
&=z^2-(z_0+\overline{z_0})z+z_0\overline{z_0}.
\end{aligned}
$$

Ora,

$$
z_0+\overline{z_0}=2\operatorname{Re}(z_0)\in\mathbb{R},
$$

e

$$
z_0\overline{z_0}=|z_0|^2\in\mathbb{R}.
$$

Pertanto il fattore quadratico

$$
(z-z_0)(z-\overline{z_0})
=
z^2-(z_0+\overline{z_0})z+z_0\overline{z_0}
$$

ha coefficienti reali.

Questo mostra che un polinomio reale può essere fattorizzato, in $\mathbb{R}[z]$, in:

- fattori lineari associati alle radici reali;
- fattori quadratici associati alle coppie di radici complesse coniugate.

La divisione per questo fattore quadratico mantiene coefficienti reali: il quoziente ottenuto dividendo un polinomio reale per un polinomio reale è ancora un polinomio reale, quando la divisione è esatta.

## 12. Esempio di fattorizzazione reale

Se un polinomio reale ha radici $1$, $3$ e $5$ con molteplicità rispettivamente $2$, $4$ e $3$, allora

$$
P(z)=a(z-1)^2(z-3)^4(z-5)^3,
\qquad a\in\mathbb{R}\setminus\{0\}.
$$

Se invece possiede una radice non reale $z_0$ di molteplicità $m$, allora possiede anche $\overline{z_0}$ di molteplicità $m$, e compare il fattore

$$
\bigl((z-z_0)(z-\overline{z_0})\bigr)^m.
$$

La presenza di radici non reali non altera il numero totale di radici contate con molteplicità: una radice e la sua coniugata costituiscono una coppia, ma ciascuna viene comunque conteggiata.

## 13. Formula risolutiva per i polinomi di secondo grado complessi

Consideriamo il polinomio

$$
P(z)=az^2+bz+c,
\qquad a\neq 0,
$$

con $a,b,c\in\mathbb{C}$.

Formalmente la formula risolutiva è la stessa del caso reale:

$$
z_{1,2}
=
\frac{-b\pm\sqrt{\Delta}}{2a},
$$

dove

$$
\Delta=b^2-4ac.
$$

La differenza è che ora $\Delta$ può essere un numero complesso. Nei numeri complessi ogni numero possiede radici quadrate: se $\Delta\neq 0$, esistono due radici quadrate opposte, cioè numeri $w_1,w_2$ tali che

$$
w_1^2=\Delta,
\qquad
w_2=-w_1.
$$

La scrittura

$$
\pm\sqrt{\Delta}
$$

indica quindi le due possibilità date dalle due radici quadrate di $\Delta$.

Se $\Delta=0$, l’unica radice quadrata è $0$ e il polinomio ha una radice doppia:

$$
z=-\frac{b}{2a}.
$$

## 14. Radici quadrate di un numero complesso

Sia

$$
w=re^{i\theta},
\qquad r\geq 0.
$$

Le radici quadrate di $w$ hanno modulo $\sqrt r$ e argomenti

$$
\frac{\theta}{2}
\quad\text{e}\quad
\frac{\theta}{2}+\pi.
$$

Quindi sono opposte tra loro:

$$
\sqrt{w}
=
\pm\sqrt r\,e^{i\theta/2}.
$$

Geometricamente, le due radici quadrate sono i due vertici di un poligono regolare di ordine $2$ sulla circonferenza di raggio $\sqrt r$.

Questa è la specializzazione, per $n=2$, della regola generale per le radici $n$-esime di un numero complesso.

## 15. Esempio di equazione quadratica complessa

Consideriamo, nella forma ricostruita dalla formula utilizzata a lezione, il polinomio

$$
P(z)=z^2+(1-i)z.
$$

In questo caso

$$
a=1,\qquad b=1-i,\qquad c=0.
$$

Il discriminante è

$$
\Delta=(1-i)^2.
$$

Calcoliamo:

$$
(1-i)^2
=1-2i+i^2
=1-2i-1
=-2i.
$$

Una radice quadrata di $-2i$ è $1-i$, perché

$$
(1-i)^2=-2i.
$$

Le due radici quadrate sono quindi

$$
\pm(1-i).
$$

La formula risolutiva dà

$$
z_{1,2}
=
\frac{-(1-i)\pm(1-i)}{2}.
$$

Da cui:

$$
z_1=0,
$$

e

$$
z_2=-(1-i)=-1+i.
$$

Infatti il polinomio è già fattorizzato:

$$
P(z)=z(z+1-i),
$$

e le sue radici sono $0$ e $-1+i$.

L’esempio mostra anche che, quando i coefficienti non sono tutti reali, non ci si deve aspettare che le radici compaiano a coppie coniugate.

## 16. Radici $n$-esime dell’unità

Per trovare le soluzioni di

$$
z^n=1,
$$

si scrive $z$ in forma polare:

$$
z=re^{i\theta}.
$$

Poiché

$$
1=e^{2\pi i k}
$$

per ogni $k\in\mathbb{Z}$, l’equazione diventa

$$
r^n e^{in\theta}=e^{2\pi i k}.
$$

Confrontando moduli e argomenti:

$$
r^n=1
\quad\Longrightarrow\quad
r=1,
$$

e

$$
n\theta=2\pi k.
$$

Pertanto

$$
\theta=\frac{2\pi k}{n}.
$$

Le soluzioni distinte si ottengono scegliendo

$$
k=0,1,\dots,n-1.
$$

Quindi le radici $n$-esime dell’unità sono

$$
z_k=e^{2\pi i k/n},
\qquad k=0,1,\dots,n-1.
$$

Geometricamente sono i vertici di un poligono regolare di $n$ lati inscritto nella circonferenza unitaria.

## 17. Esempio: soluzioni di $z^6=1$

Per

$$
z^6=1,
$$

si ha

$$
|z|=1,
\qquad
\arg(z)=\frac{2\pi k}{6}
=\frac{k\pi}{3},
\qquad k=0,1,\dots,5.
$$

Le sei soluzioni sono:

$$
\begin{aligned}
z_0&=e^{0}=1,\\
z_1&=e^{i\pi/3}
=\frac12+i\frac{\sqrt3}{2},\\
z_2&=e^{2i\pi/3}
=-\frac12+i\frac{\sqrt3}{2},\\
z_3&=e^{i\pi}=-1,\\
z_4&=e^{4i\pi/3}
=-\frac12-i\frac{\sqrt3}{2},\\
z_5&=e^{5i\pi/3}
=\frac12-i\frac{\sqrt3}{2}.
\end{aligned}
$$

Questi punti sono i vertici di un esagono regolare sulla circonferenza unitaria.

Poiché il polinomio $z^6-1$ ha coefficienti reali, le radici non reali compaiono in coppie coniugate:

$$
\frac12+i\frac{\sqrt3}{2}
\quad\text{e}\quad
\frac12-i\frac{\sqrt3}{2},
$$

così come

$$
-\frac12+i\frac{\sqrt3}{2}
\quad\text{e}\quad
-\frac12-i\frac{\sqrt3}{2}.
$$

Si può anche ottenere una fattorizzazione algebrica usando la differenza di cubi:

$$
z^6-1=(z^3-1)(z^3+1).
$$

Poi:

$$
z^3-1=(z-1)(z^2+z+1),
$$

e

$$
z^3+1=(z+1)(z^2-z+1).
$$

Quindi

$$
z^6-1
=
(z-1)(z+1)(z^2+z+1)(z^2-z+1).
$$

I due fattori quadratici producono le quattro radici non reali.

Sono dunque possibili approcci diversi allo stesso esercizio:

- usare la forma polare e la formula generale per le radici $n$-esime;
- fattorizzare algebricamente il polinomio;
- sfruttare la simmetria delle radici e le coppie coniugate.

Qualunque procedimento corretto è accettabile, purché i passaggi siano giustificati e si utilizzino correttamente i teoremi disponibili.