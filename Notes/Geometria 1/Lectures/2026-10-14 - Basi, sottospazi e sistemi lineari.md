---
type: lecture-note
course: Geometria 1
date: 2026-10-14
title: Basi, sottospazi e sistemi lineari
source_transcript: _transcripts/Geometria 1/2026-10-14 - Basi, sottospazi e sistemi lineari.md
source_hash: sha256:f3bbfac95cf61c73b22a3d345fd7ac73f4e70f74a59f549dc998ba0e7e696891
teaching_model: openai/gpt-5.6-luna
taught_at: 2026-10-14T11:30:54.118Z
---

# Basi, sottospazi e sistemi lineari

## 1. Verificare che un insieme sia una base

Per dimostrare che un insieme di vettori è una base di uno spazio vettoriale $V$ occorre verificare due proprietà:

1. i vettori sono **linearmente indipendenti**;
2. i vettori **generano** $V$.

Se si lavora in uno spazio di dimensione finita, è spesso possibile usare il seguente criterio:

> Un insieme di $\dim V$ vettori è una base di $V$ se e solo se è linearmente indipendente.

Analogamente:

> Un insieme di $\dim V$ vettori è una base di $V$ se e solo se genera $V$.

Questi criteri permettono di evitare di verificare separatamente entrambe le proprietà.

### 1.1 Verificare l’indipendenza lineare mediante un sistema

Supponiamo di avere $v_1,\dots,v_k$ e di voler verificare che siano linearmente indipendenti. Si considera una combinazione lineare nulla:

$$
\lambda_1v_1+\cdots+\lambda_kv_k=0.
$$

Scrivendo le coordinate dei vettori, si ottiene un sistema lineare nelle incognite $\lambda_1,\dots,\lambda_k$.

I vettori sono linearmente indipendenti se e solo se il sistema omogeneo ammette un’unica soluzione:

$$
\lambda_1=\cdots=\lambda_k=0.
$$

Quindi non basta risolvere il sistema: bisogna anche esplicitare che l’unica combinazione lineare dei vettori che dà il vettore nullo è quella banale.

Per esempio, se i vettori sono in $\mathbb R^3$, si considera

$$
\lambda_1
\begin{pmatrix}
a_1\\a_2\\a_3
\end{pmatrix}
+
\lambda_2
\begin{pmatrix}
b_1\\b_2\\b_3
\end{pmatrix}
+
\lambda_3
\begin{pmatrix}
c_1\\c_2\\c_3
\end{pmatrix}
=
\begin{pmatrix}
0\\0\\0
\end{pmatrix}.
$$

Si risolve il sistema nelle variabili $\lambda_1,\lambda_2,\lambda_3$. Se l’unica soluzione è

$$
(\lambda_1,\lambda_2,\lambda_3)=(0,0,0),
$$

allora i tre vettori sono linearmente indipendenti.

### 1.2 Verificare che i vettori generino lo spazio

Per dimostrare che $v_1,\dots,v_k$ generano $V$, si prende un vettore generico $v\in V$ e si cerca di scriverlo nella forma

$$
v=\lambda_1v_1+\cdots+\lambda_kv_k.
$$

In coordinate questo produce un sistema lineare in $\lambda_1,\dots,\lambda_k$, con termini noti dipendenti dalle coordinate del vettore generico $v$.

Per dimostrare che i vettori generano $V$, il sistema deve essere risolubile per ogni scelta delle coordinate di $v$. Non è sufficiente mostrare che il sistema omogeneo, con termine noto nullo, ha una soluzione.

In molti esempi il sistema utilizzato per l’indipendenza è lo stesso utilizzato per la generazione, ma cambia il termine noto:

- per l’indipendenza si considera il sistema con termine noto $0$;
- per la generazione si considera il sistema con termine noto uguale alle coordinate di un vettore generico.

Se il sistema con il vettore generico ammette sempre un’unica soluzione, allora i vettori generano lo spazio e sono anche linearmente indipendenti.

---

## 2. Dimensione e criteri per le basi

Se $\dim V=n$, ogni base di $V$ contiene esattamente $n$ vettori. In particolare:

- un insieme linearmente indipendente in $V$ contiene al massimo $n$ vettori;
- un insieme di generatori di $V$ contiene almeno $n$ vettori.

Da queste proprietà seguono due criteri fondamentali.

### Teorema

Sia $\dim V=n$.

1. Se $v_1,\dots,v_n$ sono linearmente indipendenti, allora formano una base di $V$.
2. Se $v_1,\dots,v_n$ generano $V$, allora formano una base di $V$.

Il primo punto è utile, per esempio, in $\mathbb R^2$: se si trovano due vettori linearmente indipendenti, essi formano automaticamente una base di $\mathbb R^2$. Analogamente, in $\mathbb R^3$, tre vettori linearmente indipendenti formano una base.

Questa è un’applicazione del lemma dello scambio, o teorema di Steinitz.

---

## 3. Il lemma dello scambio e il numero massimo di vettori indipendenti

Sia $B=\{b_1,\dots,b_n\}$ una base di $V$ e sia $\{v_1,\dots,v_k\}$ un insieme linearmente indipendente di vettori di $V$.

Il lemma dello scambio afferma che si possono sostituire $k$ elementi della base con $v_1,\dots,v_k$, ottenendo ancora una base. In particolare, necessariamente

$$
k\leq n.
$$

Quindi in uno spazio di dimensione $n$ non possono esistere più di $n$ vettori linearmente indipendenti.

### Conseguenza

Se $v_1,\dots,v_k$ sono più di $n$ vettori in uno spazio di dimensione $n$, allora sono linearmente dipendenti.

Infatti, se fossero indipendenti, avremmo un insieme linearmente indipendente con cardinalità maggiore di quella di una base, in contraddizione con il lemma dello scambio.

### Caso $k=n$

Se $v_1,\dots,v_n$ sono linearmente indipendenti in uno spazio $V$ di dimensione $n$, il lemma dello scambio dice che devono sostituire tutti gli elementi di una base di $V$. Pertanto formano essi stessi una base.

---

## 4. Ridurre un insieme di generatori a una base

Supponiamo che $C=\{v_1,\dots,v_k\}$ sia un insieme di generatori di $V$, ma che non sia linearmente indipendente.

Essendo dipendente, esistono scalari $\lambda_1,\dots,\lambda_k$, non tutti nulli, tali che

$$
\lambda_1v_1+\cdots+\lambda_kv_k=0.
$$

Esiste dunque almeno un indice $j$ per cui $\lambda_j\neq 0$. Si può isolare $v_j$:

$$
v_j
=
-\frac{1}{\lambda_j}
\sum_{i\neq j}\lambda_i v_i.
$$

Quindi $v_j$ è combinazione lineare degli altri vettori. Di conseguenza, $v_j$ è superfluo: eliminandolo, gli altri vettori continuano a generare lo stesso spazio.

In termini di span:

$$
\operatorname{span}(C)
=
\operatorname{span}(C\setminus\{v_j\}).
$$

Si può ripetere il procedimento:

1. si parte da un insieme di generatori;
2. se è dipendente, si elimina un vettore che è combinazione lineare degli altri;
3. si conserva la proprietà di generare lo spazio;
4. si continua finché l’insieme rimanente è linearmente indipendente.

Il processo termina perché a ogni passaggio il numero di vettori diminuisce. Alla fine si ottiene un insieme che genera $V$ ed è linearmente indipendente, quindi una base.

### Osservazione

Se $\dim V=n$, ogni insieme di generatori contiene almeno $n$ vettori. Riducendo un insieme di generatori a una base, il processo non può terminare con meno di $n$ vettori, perché meno di $n$ vettori non possono generare $V$.

Ne segue anche:

> Ogni insieme di generatori di $V$ contiene una base di $V$.

---

## 5. Estendere un insieme indipendente a una base

Il procedimento precedente può essere invertito.

Se si parte da un insieme linearmente indipendente $S$ che non è ancora una base, si possono aggiungere vettori fino a ottenere una base. Per esempio, si può partire da una base nota e applicare il lemma dello scambio.

In $\mathbb R^2$, se $v\neq 0$, l’insieme $\{v\}$ è linearmente indipendente. Per completarlo a una base basta trovare un vettore non appartenente alla retta generata da $v$.

Per esempio, se

$$
v=
\begin{pmatrix}
a\\b
\end{pmatrix}
\neq
\begin{pmatrix}
0\\0
\end{pmatrix},
$$

si può scegliere opportunamente uno dei vettori canonici

$$
e_1=
\begin{pmatrix}
1\\0
\end{pmatrix},
\qquad
e_2=
\begin{pmatrix}
0\\1
\end{pmatrix},
$$

in modo che il vettore scelto non sia multiplo di $v$.

Nel caso discusso, una verifica tipica dell’indipendenza di due vettori consiste nel considerare

$$
\alpha v+\beta w=0.
$$

Confrontando le coordinate si dimostra che necessariamente $\alpha=\beta=0$.

---

## 6. Dipendenza dal campo di scalari

La nozione di indipendenza lineare dipende dal campo su cui si considera lo spazio vettoriale.

Un insieme può essere linearmente indipendente su $\mathbb R$ e linearmente dipendente su $\mathbb C$, oppure viceversa, perché cambiano gli scalari ammessi nelle combinazioni lineari.

Un esempio importante è costituito dai vettori

$$
v=
\begin{pmatrix}
1\\ i
\end{pmatrix},
\qquad
w=
\begin{pmatrix}
i\\ -1
\end{pmatrix}.
$$

Su $\mathbb C$ si ha

$$
w=i\,v,
$$

perché

$$
i
\begin{pmatrix}
1\\i
\end{pmatrix}
=
\begin{pmatrix}
i\\i^2
\end{pmatrix}
=
\begin{pmatrix}
i\\-1
\end{pmatrix}.
$$

Quindi $v$ e $w$ sono linearmente dipendenti come vettori di $\mathbb C^2$.

Se invece si considera lo stesso insieme in uno spazio vettoriale reale, gli scalari ammessi sono soltanto quelli reali. Poiché $i\notin\mathbb R$, la relazione precedente non è una relazione lineare reale. In tal caso l’indipendenza deve essere verificata usando coefficienti reali.

È quindi essenziale specificare sempre il campo di scalari, per esempio:

- $\mathbb C^2$ considerato come spazio vettoriale su $\mathbb C$;
- $\mathbb C^2$ considerato come spazio vettoriale su $\mathbb R$.

La dimensione può cambiare nei due casi.

---

## 7. Una base dello spazio delle matrici

Lo spazio delle matrici $m\times n$ a coefficienti in un campo $\mathbb K$ si indica con

$$
M_{m,n}(\mathbb K)
$$

e ha dimensione

$$
\dim M_{m,n}(\mathbb K)=mn.
$$

Per ogni $i\in\{1,\dots,m\}$ e $j\in\{1,\dots,n\}$ si considera la matrice elementare $E_{ij}$ definita come la matrice che ha:

- un $1$ nella posizione $(i,j)$;
- tutti gli altri coefficienti uguali a $0$.

L’insieme

$$
\{E_{ij}:1\leq i\leq m,\;1\leq j\leq n\}
$$

è una base di $M_{m,n}(\mathbb K)$.

### Generazione

Data una matrice

$$
A=(a_{ij})\in M_{m,n}(\mathbb K),
$$

si ha

$$
A=\sum_{i=1}^m\sum_{j=1}^n a_{ij}E_{ij}.
$$

Infatti, $a_{ij}E_{ij}$ contribuisce soltanto alla posizione $(i,j)$ e vi inserisce il valore $a_{ij}$.

### Indipendenza lineare

Se

$$
\sum_{i=1}^m\sum_{j=1}^n \lambda_{ij}E_{ij}=0,
$$

allora, osservando la posizione $(i,j)$, si ottiene

$$
\lambda_{ij}=0
$$

per ogni $i,j$. Pertanto le matrici $E_{ij}$ sono linearmente indipendenti.

Poiché sono $mn$ e la dimensione dello spazio è $mn$, costituiscono una base.

---

## 8. Sottospazi definiti da condizioni lineari

Una condizione lineare omogenea sulle coordinate definisce spesso un sottospazio.

Consideriamo, per esempio,

$$
W=
\left\{
(x_1,x_2,x_3)\in\mathbb R^3:
x_1+2x_2-x_3=0
\right\}.
$$

### Verifica che $W$ sia un sottospazio

Per verificare che $W$ è un sottospazio di $\mathbb R^3$ si controllano:

1. il vettore nullo appartiene a $W$;
2. $W$ è chiuso rispetto alla somma;
3. $W$ è chiuso rispetto al prodotto per scalare.

#### Vettore nullo

Si ha

$$
0+2\cdot 0-0=0,
$$

quindi

$$
(0,0,0)\in W.
$$

#### Chiusura rispetto alla somma

Siano

$$
v=(x_1,x_2,x_3)\in W,
\qquad
v'=(x_1',x_2',x_3')\in W.
$$

Allora

$$
x_1+2x_2-x_3=0
$$

e

$$
x_1'+2x_2'-x_3'=0.
$$

Sommando le due uguaglianze:

$$
(x_1+x_1')+2(x_2+x_2')-(x_3+x_3')=0.
$$

Pertanto

$$
v+v'\in W.
$$

#### Chiusura rispetto al prodotto per scalare

Sia $\lambda\in\mathbb R$ e sia $v=(x_1,x_2,x_3)\in W$. Allora

$$
x_1+2x_2-x_3=0.
$$

Moltiplicando per $\lambda$:

$$
\lambda x_1+2\lambda x_2-\lambda x_3
=
\lambda(x_1+2x_2-x_3)
=
0.
$$

Quindi

$$
\lambda v\in W.
$$

La proprietà utilizzata è la linearità dell’espressione

$$
f(x_1,x_2,x_3)=x_1+2x_2-x_3.
$$

In generale, l’insieme delle soluzioni di un’equazione lineare omogenea è un sottospazio, perché il nucleo di un’applicazione lineare è un sottospazio.

---

## 9. Spazi di polinomi

Si consideri lo spazio

$$
\mathbb R_3[x]
=
\{p(x)\in\mathbb R[x]:\deg p\leq 3\}.
$$

Una base canonica è

$$
\{1,x,x^2,x^3\},
$$

quindi

$$
\dim\mathbb R_3[x]=4.
$$

### 9.1 Polinomi che si annullano in $0$

Consideriamo

$$
W_0=\{p\in\mathbb R_3[x]:p(0)=0\}.
$$

Se

$$
p(x)=a_3x^3+a_2x^2+a_1x+a_0,
$$

la condizione $p(0)=0$ implica

$$
a_0=0.
$$

Pertanto ogni elemento di $W_0$ ha la forma

$$
p(x)=a_3x^3+a_2x^2+a_1x
=
a_1x+a_2x^2+a_3x^3.
$$

Quindi

$$
W_0=\operatorname{span}\{x,x^2,x^3\}.
$$

I polinomi $x,x^2,x^3$ sono linearmente indipendenti. Un modo per verificarlo è osservare che hanno gradi distinti: se

$$
a x+b x^2+c x^3=0,
$$

allora il polinomio nullo ha tutti i coefficienti nulli, dunque

$$
a=b=c=0.
$$

Ne segue che

$$
\{x,x^2,x^3\}
$$

è una base di $W_0$ e

$$
\dim W_0=3.
$$

Più in generale, se $p_1,\dots,p_k$ sono polinomi non nulli di gradi tutti distinti, allora sono linearmente indipendenti. Infatti, considerando una combinazione lineare nulla, si guarda il termine di grado massimo: esso può provenire da un solo polinomio, perciò il coefficiente di quel polinomio deve essere nullo. Si procede poi per induzione sui gradi rimanenti.

### 9.2 Polinomi che si annullano in $1$

Consideriamo

$$
W_1=\{p\in\mathbb R_3[x]:p(1)=0\}.
$$

La condizione $p(1)=0$ equivale al fatto che $x-1$ divide $p(x)$. Pertanto ogni elemento di $W_1$ è della forma

$$
p(x)=(x-1)q(x),
\qquad \deg q\leq 2.
$$

Una base di $W_1$ si può ottenere moltiplicando per $x-1$ la base canonica di $\mathbb R_2[x]$:

$$
\{x-1,\;x(x-1),\;x^2(x-1)\}.
$$

Questi polinomi hanno gradi distinti, rispettivamente $1,2,3$, e sono quindi linearmente indipendenti. Generano tutti i polinomi divisibili per $x-1$ di grado minore o uguale a $3$. Dunque sono una base e

$$
\dim W_1=3.
$$

Si possono anche usare potenze successive di $x-1$, ottenendo la base

$$
\{x-1,\;(x-1)^2,\;(x-1)^3\}.
$$

Il punto essenziale è che un polinomio che si annulla in $1$ contiene il fattore $x-1$.

### 9.3 Polinomi che si annullano in $0$ e in $1$

Consideriamo

$$
W_{0,1}
=
\{p\in\mathbb R_3[x]:p(0)=0,\ p(1)=0\}.
$$

Un polinomio che si annulla in $0$ è divisibile per $x$, mentre un polinomio che si annulla in $1$ è divisibile per $x-1$. Quindi deve essere divisibile per

$$
x(x-1).
$$

Dato che $p$ ha grado al massimo $3$, il quoziente ha grado al massimo $1$. Pertanto

$$
p(x)=x(x-1)(a+bx),
\]

con $a,b\in\mathbb R$.

Ne segue che

$$
W_{0,1}
=
\operatorname{span}\{x(x-1),\;x^2(x-1)\}.
$$

Una base è dunque

$$
\{x(x-1),\;x^2(x-1)\},
$$

e

$$
\dim W_{0,1}=2.
$$

### 9.4 Polinomi con lo stesso valore in $0$ e in $1$

Consideriamo

$$
W=
\{p\in\mathbb R_3[x]:p(0)=p(1)\}.
$$

La condizione può essere riscritta come

$$
p(1)-p(0)=0.
$$

L’applicazione

$$
L:\mathbb R_3[x]\longrightarrow\mathbb R,
\qquad
L(p)=p(1)-p(0)
$$

è lineare, quindi $W=\ker L$ è un sottospazio.

Il polinomio costante $1$ appartiene a $W$, perché

$$
1(0)=1(1)=1.
$$

Per descrivere tutti gli elementi di $W$, dato $p\in W$, si sottrae la costante $p(0)$:

$$
q(x)=p(x)-p(0).
$$

Allora

$$
q(0)=p(0)-p(0)=0
$$

e, poiché $p(1)=p(0)$,

$$
q(1)=p(1)-p(0)=0.
$$

Quindi $q$ appartiene a $W_{0,1}$ ed è divisibile per $x(x-1)$. Pertanto

$$
p(x)=p(0)+q(x)
\in
\operatorname{span}\{1,\;x(x-1),\;x^2(x-1)\}.
$$

Una base di $W$ è quindi

$$
\{1,\;x(x-1),\;x^2(x-1)\}.
$$

La dimensione è

$$
\dim W=3.
$$

La condizione $p(0)=p(1)$ è dunque una condizione lineare indipendente che riduce di una unità la dimensione dello spazio iniziale $\mathbb R_3[x]$.

---

## 10. Intersezione e unione di sottospazi

Siano $U$ e $W$ sottospazi di uno spazio vettoriale $V$.

### 10.1 Intersezione

L’intersezione

$$
U\cap W
=
\{v\in V:v\in U\text{ e }v\in W\}
$$

è sempre un sottospazio di $V$.

Infatti:

- $0\in U$ e $0\in W$, quindi $0\in U\cap W$;
- se $u,v\in U\cap W$, allora $u,v\in U$ e $u,v\in W$. Poiché $U$ e $W$ sono sottospazi,

  $$
  u+v\in U
  \quad\text{e}\quad
  u+v\in W,
  $$

  quindi $u+v\in U\cap W$;
- se $u\in U\cap W$ e $\lambda$ è uno scalare, allora $\lambda u\in U$ e $\lambda u\in W$, quindi $\lambda u\in U\cap W$.

### 10.2 Unione

L’unione

$$
U\cup W
$$

non è, in generale, un sottospazio.

L’unione è un sottospazio se e solo se uno dei due sottospazi è contenuto nell’altro:

$$
U\cup W\text{ è un sottospazio}
\iff
U\subseteq W
\ \text{oppure}\
W\subseteq U.
$$

Se, per esempio, $U\subseteq W$, allora

$$
U\cup W=W,
$$

che è un sottospazio. Analogamente se $W\subseteq U$.

### Dimostrazione nel caso non contenuto

Supponiamo che nessuno dei due sottospazi sia contenuto nell’altro. Allora esistono

$$
u\in U\setminus W,
\qquad
w\in W\setminus U.
$$

Entrambi appartengono a $U\cup W$. Se l’unione fosse un sottospazio, dovrebbe appartenervi anche la somma $u+w$.

Poiché $u+w\in U\cup W$, si avrebbe una delle due possibilità:

- $u+w\in U$;
- $u+w\in W$.

Se $u+w\in U$, allora, essendo anche $u\in U$,

$$
w=(u+w)-u\in U,
$$

in contraddizione con $w\notin U$.

Se $u+w\in W$, allora, essendo anche $w\in W$,

$$
u=(u+w)-w\in W,
$$

in contraddizione con $u\notin W$.

Quindi $u+w\notin U\cup W$ e l’unione non è chiusa rispetto alla somma.

---

## 11. Prodotto matrice-vettore

Un vettore colonna con $n$ componenti può essere visto come una matrice $n\times 1$:

$$
v=
\begin{pmatrix}
v_1\\
\vdots\\
v_n
\end{pmatrix}.
$$

Sia

$$
A=(a_{ij})\in M_{m,n}(\mathbb K).
$$

Il prodotto $Av$ è definito perché il numero di colonne di $A$, cioè $n$, coincide con il numero di righe di $v$.

Il risultato è un vettore colonna con $m$ componenti:

$$
Av=
\begin{pmatrix}
a_{11}v_1+\cdots+a_{1n}v_n\\
a_{21}v_1+\cdots+a_{2n}v_n\\
\vdots\\
a_{m1}v_1+\cdots+a_{mn}v_n
\end{pmatrix}.
$$

La componente $i$-esima è

$$
(Av)_i=\sum_{j=1}^n a_{ij}v_j.
$$

Il prodotto si calcola percorrendo una riga di $A$ e la colonna di $v$, moltiplicando i termini corrispondenti e sommando.

---

## 12. Prodotto tra matrici

Siano

$$
A\in M_{m,n}(\mathbb K),
\qquad
B\in M_{n,p}(\mathbb K).
$$

Il prodotto $AB$ è definito perché il numero di colonne di $A$ coincide con il numero di righe di $B$, entrambi uguali a $n$.

Il risultato è una matrice

$$
AB\in M_{m,p}(\mathbb K).
$$

Se $C=AB$, allora il coefficiente nella posizione $(i,j)$ è

$$
c_{ij}
=
\sum_{k=1}^n a_{ik}b_{kj}.
$$

In altre parole, per calcolare $c_{ij}$ si prende:

- la riga $i$ di $A$;
- la colonna $j$ di $B$;

e si esegue il prodotto riga per colonna.

La dimensione interna $n$ deve essere la stessa nelle due matrici, mentre le dimensioni esterne determinano la dimensione del prodotto:

$$
(m\times n)(n\times p)=m\times p.
$$

---

## 13. Sistemi lineari in forma matriciale

Un sistema lineare con $m$ equazioni e $n$ incognite può essere scritto nella forma

$$
\begin{cases}
a_{11}x_1+\cdots+a_{1n}x_n=b_1\\
\vdots\\
a_{m1}x_1+\cdots+a_{mn}x_n=b_m.
\end{cases}
$$

Definendo la matrice dei coefficienti

$$
A=
\begin{pmatrix}
a_{11}&\cdots&a_{1n}\\
\vdots&&\vdots\\
a_{m1}&\cdots&a_{mn}
\end{pmatrix},
$$

il vettore delle incognite

$$
x=
\begin{pmatrix}
x_1\\
\vdots\\
x_n
\end{pmatrix}
$$

e il vettore dei termini noti

$$
b=
\begin{pmatrix}
b_1\\
\vdots\\
b_m
\end{pmatrix},
$$

il sistema diventa

$$
Ax=b.
$$

Scrivere un sistema in questa forma non modifica il contenuto matematico: è una notazione più compatta che mette in evidenza il prodotto matrice-vettore.

L’insieme delle soluzioni è

$$
\{x\in\mathbb K^n:Ax=b\}.
$$

### Sistemi omogenei

Se tutti i termini noti sono nulli, cioè se $b=0$, si ottiene un sistema omogeneo:

$$
Ax=0.
$$

L’insieme delle soluzioni di un sistema omogeneo è il nucleo dell’applicazione lineare associata alla matrice $A$:

$$
\ker A
=
\{x\in\mathbb K^n:Ax=0\}.
$$

Di conseguenza, l’insieme delle soluzioni di un sistema omogeneo è sempre un sottospazio vettoriale.

Il vettore nullo è sempre soluzione di un sistema omogeneo. Se il sistema ammette soltanto la soluzione nulla, il nucleo è

$$
\ker A=\{0\}.
$$

Se invece esistono soluzioni non nulle, allora tutte le loro combinazioni lineari sono ancora soluzioni, perché il sistema è omogeneo.