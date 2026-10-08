---
type: lecture-note
course: Geometria 1
date: 2026-10-06
title: Sottospazi, combinazioni lineari e basi
source_transcript: _transcripts/Geometria 1/2026-10-06 - Sottospazi,
  combinazioni lineari e basi.md
source_hash: sha256:f558db5910ed636444b5c4f7caa0a37c43455f9cef3e055c4a71576ac405bace
teaching_model: openai/gpt-5.6-luna
taught_at: 2026-10-06T13:25:36.895Z
---

# Sottospazi, combinazioni lineari e basi

## 1. Esempi di spazi vettoriali

Uno spazio vettoriale è un insieme dotato di due operazioni:

- la somma tra elementi dello spazio;
- il prodotto di un elemento dello spazio per uno scalare appartenente a un campo $K$.

Gli elementi dello spazio vettoriale vengono chiamati **vettori**, anche quando non sono rappresentati da frecce o da colonne di numeri.

### Polinomi

L’insieme dei polinomi a coefficienti in un campo $K$ è uno spazio vettoriale su $K$. Ad esempio:

$$
K[x]=\left\{a_0+a_1x+\cdots+a_nx^n \mid n\in\mathbb{N},\ a_i\in K\right\}.
$$

La somma e il prodotto per scalare sono definiti coefficiente per coefficiente:

$$
(a_0+a_1x+\cdots+a_nx^n)+(b_0+b_1x+\cdots+b_nx^n)
$$

è il polinomio

$$
(a_0+b_0)+(a_1+b_1)x+\cdots+(a_n+b_n)x^n,
$$

mentre, per $\lambda\in K$,

$$
\lambda(a_0+a_1x+\cdots+a_nx^n)
=
(\lambda a_0)+(\lambda a_1)x+\cdots+(\lambda a_n)x^n.
$$

### Funzioni

Anche gli insiemi di funzioni sono esempi importanti di spazi vettoriali. Se $X$ è un insieme e $K$ un campo, l’insieme di tutte le funzioni

$$
f\colon X\to K
$$

è uno spazio vettoriale su $K$.

Le operazioni sono definite **punto per punto**. Date $f,g\colon X\to K$ e $\lambda\in K$:

$$
(f+g)(x)=f(x)+g(x)
$$

e

$$
(\lambda f)(x)=\lambda f(x)
$$

per ogni $x\in X$.

È importante distinguere le due operazioni:

- $f(x)+g(x)$ è una somma nel campo $K$, perché $f(x)$ e $g(x)$ sono scalari;
- $f+g$ è una somma di funzioni, cioè una nuova funzione.

Per esempio, se in un certo punto $x=3$ si ha

$$
f(3)=5,\qquad g(3)=7,
$$

allora

$$
(f+g)(3)=f(3)+g(3)=5+7=12.
$$

Il grafico della somma si ottiene quindi sommando i valori delle due funzioni punto per punto.

Il vettore nullo di questo spazio è la **funzione nulla**:

$$
0(x)=0\qquad\forall x\in X.
$$

### Numeri complessi come spazio vettoriale

Il campo dei numeri complessi $\mathbb{C}$ può essere considerato come spazio vettoriale:

1. su $\mathbb{C}$;
2. su $\mathbb{R}$.

Come spazio vettoriale su $\mathbb{C}$, ogni numero complesso $z$ è multiplo di $1$:

$$
z=z\cdot 1.
$$

Di conseguenza, $\mathbb{C}$ ha dimensione $1$ su $\mathbb{C}$.

Come spazio vettoriale su $\mathbb{R}$, invece, ogni numero complesso si scrive nella forma

$$
z=a+bi,
\qquad a,b\in\mathbb{R},
$$

e può essere identificato con la coppia

$$
(a,b)\in\mathbb{R}^2.
$$

In questo caso una base è, ad esempio,

$$
\{1,i\},
$$

e la dimensione è $2$ su $\mathbb{R}$.

Queste sono strutture diverse: la dimensione dipende dal campo degli scalari. Non è corretto dire semplicemente che $\mathbb{C}$ ha dimensione $1$ o $2$ senza specificare rispetto a quale campo viene considerato.

---

## 2. Matrici come spazio vettoriale

Una matrice $m\times n$ a coefficienti in $K$ è una tabella rettangolare di elementi di $K$:

$$
A=
\begin{pmatrix}
a_{11} & a_{12} & \cdots & a_{1n}\\
a_{21} & a_{22} & \cdots & a_{2n}\\
\vdots & \vdots & \ddots & \vdots\\
a_{m1} & a_{m2} & \cdots & a_{mn}
\end{pmatrix},
\qquad a_{ij}\in K.
$$

Il primo indice indica la riga, il secondo la colonna. Per esempio, $a_{16}$ è l’elemento che si trova nella prima riga e nella sesta colonna.

L’insieme di tutte le matrici $m\times n$ a coefficienti in $K$ si indica con

$$
M_{m,n}(K)
$$

ed è uno spazio vettoriale su $K$.

La somma tra matrici è definita componente per componente:

$$
(A+B)_{ij}=a_{ij}+b_{ij}.
$$

In forma esplicita:

$$
\begin{pmatrix}
a_{11} & \cdots & a_{1n}\\
\vdots & \ddots & \vdots\\
a_{m1} & \cdots & a_{mn}
\end{pmatrix}
+
\begin{pmatrix}
b_{11} & \cdots & b_{1n}\\
\vdots & \ddots & \vdots\\
b_{m1} & \cdots & b_{mn}
\end{pmatrix}
=
\begin{pmatrix}
a_{11}+b_{11} & \cdots & a_{1n}+b_{1n}\\
\vdots & \ddots & \vdots\\
a_{m1}+b_{m1} & \cdots & a_{mn}+b_{mn}
\end{pmatrix}.
$$

Il prodotto per scalare è anch’esso componente per componente:

$$
(\lambda A)_{ij}=\lambda a_{ij}.
$$

La somma è possibile perché le due matrici hanno lo stesso numero di righe e lo stesso numero di colonne. La struttura essenziale non cambia rispetto a quella di una lista di numeri: cambia soltanto il modo in cui i numeri sono disposti.

Il vettore nullo di $M_{m,n}(K)$ è la matrice i cui elementi sono tutti nulli:

$$
0_{m,n}=
\begin{pmatrix}
0 & \cdots & 0\\
\vdots & \ddots & \vdots\\
0 & \cdots & 0
\end{pmatrix}.
$$

Il prodotto tra matrici è un’operazione diversa e non è rilevante per stabilire che $M_{m,n}(K)$ sia uno spazio vettoriale. Per questa struttura bastano la somma tra matrici e il prodotto per scalare.

---

## 3. Sottospazi vettoriali

Sia $V$ uno spazio vettoriale su $K$ e sia $W\subseteq V$.

L’insieme $W$ è un **sottospazio vettoriale** di $V$ se, considerando su $W$ le stesse operazioni di $V$, esso è a sua volta uno spazio vettoriale.

In pratica, per verificare che $W$ sia un sottospazio non è necessario ricontrollare tutti gli assiomi dello spazio vettoriale. È sufficiente verificare che:

1. $W$ non sia vuoto;
2. $W$ sia chiuso rispetto alla somma;
3. $W$ sia chiuso rispetto al prodotto per scalare.

Formalmente:

$$
\forall u,v\in W,\qquad u+v\in W,
$$

e

$$
\forall \lambda\in K,\ \forall u\in W,\qquad \lambda u\in W.
$$

Una formulazione equivalente, spesso più comoda, è:

> $W$ è un sottospazio se e solo se è non vuoto e, per ogni $u,v\in W$ e ogni $\lambda,\mu\in K$, si ha
>
> $$
> \lambda u+\mu v\in W.
> $$

Questa condizione esprime direttamente la chiusura rispetto a tutte le combinazioni lineari di due vettori.

### Necessità del vettore nullo

Se $W$ è un sottospazio, allora deve contenere il vettore nullo di $V$.

Infatti, preso un qualunque $w\in W$ e usando la chiusura rispetto al prodotto per scalare:

$$
0w=0\in W.
$$

Per questo motivo l’insieme vuoto non può mai essere un sottospazio vettoriale.

Attenzione: il vettore nullo dipende dallo spazio ambiente. Per esempio:

- in $\mathbb{R}^2$ è la coppia $(0,0)$;
- in $\mathbb{R}^3$ è la terna $(0,0,0)$;
- in $M_{m,n}(K)$ è la matrice nulla;
- nello spazio delle funzioni è la funzione nulla.

Si usa spesso lo stesso simbolo $0$, ma si tratta di elementi appartenenti a insiemi diversi.

> [!warning]
> Non basta che un insieme contenga “uno zero” scritto in modo informale: bisogna verificare che contenga il vettore nullo dello spazio ambiente corretto.

---

## 4. Esempi di sottospazi di $\mathbb{R}^3$

### Il piano $x_3=0$

Consideriamo

$$
W=\{(x_1,x_2,x_3)\in\mathbb{R}^3\mid x_3=0\}.
$$

Gli elementi di $W$ sono della forma

$$
(x_1,x_2,0),
$$

quindi $W$ può essere identificato con una copia di $\mathbb{R}^2$ contenuta in $\mathbb{R}^3$.

Per verificare che sia un sottospazio, prendiamo

$$
u=(x_1,x_2,0),\qquad v=(y_1,y_2,0)\in W.
$$

La loro somma è

$$
u+v=(x_1+y_1,x_2+y_2,0),
$$

che appartiene ancora a $W$.

Per $\lambda\in\mathbb{R}$:

$$
\lambda u=(\lambda x_1,\lambda x_2,0),
$$

che appartiene ancora a $W$.

Pertanto $W$ è un sottospazio.

### Un sottospazio definito da un’equazione lineare

Più in generale, consideriamo l’insieme delle soluzioni di un’equazione omogenea, ad esempio

$$
W=\{(x_1,x_2,x_3)\in\mathbb{R}^3\mid 2x_1-x_2+3x_3=0\}.
$$

L’equazione può essere riscritta come

$$
x_2=2x_1+3x_3.
$$

Ponendo

$$
x_1=s,\qquad x_3=t,
$$

si ottiene

$$
(x_1,x_2,x_3)=(s,2s+3t,t).
$$

Separando i parametri:

$$
(s,2s+3t,t)
=
s(1,2,0)+t(0,3,1).
$$

Quindi

$$
W=
\left\{
s(1,2,0)+t(0,3,1)\mid s,t\in\mathbb{R}
\right\}.
$$

In altre parole,

$$
W=\operatorname{span}\{(1,2,0),(0,3,1)\}.
$$

La descrizione mediante un’equazione e quella mediante combinazioni lineari descrivono lo stesso sottospazio:

- la prima è una descrizione **implicita**;
- la seconda è una descrizione **parametrica** o tramite generatori.

### Verifica della chiusura

Se $u,v\in W$, allora soddisfano entrambi l’equazione:

$$
2x_1-x_2+3x_3=0.
$$

Per la somma, se

$$
u=(x_1,x_2,x_3),\qquad v=(y_1,y_2,y_3),
$$

allora

$$
\begin{aligned}
2(x_1+y_1)-(x_2+y_2)+3(x_3+y_3)
&=(2x_1-x_2+3x_3)\\
&\quad +(2y_1-y_2+3y_3)\\
&=0.
\end{aligned}
$$

Quindi $u+v\in W$.

Per il prodotto per scalare:

$$
\begin{aligned}
2(\lambda x_1)-\lambda x_2+3(\lambda x_3)
&=\lambda(2x_1-x_2+3x_3)\\
&=\lambda\cdot 0=0.
\end{aligned}
$$

Quindi $\lambda u\in W$.

Questo mostra il principio generale:

> L’insieme delle soluzioni di un sistema lineare omogeneo è un sottospazio vettoriale.

L’omogeneità è essenziale. Un’equazione del tipo

$$
2x_1-x_2+3x_3=1
$$

in generale non descrive un sottospazio, perché il vettore nullo non soddisfa l’equazione.

---

## 5. Sottospazi generati e combinazioni lineari

Dati vettori $v_1,\dots,v_k\in V$, una **combinazione lineare** di questi vettori è un vettore della forma

$$
\lambda_1v_1+\cdots+\lambda_kv_k,
\qquad \lambda_1,\dots,\lambda_k\in K.
$$

L’insieme di tutte le combinazioni lineari si indica con

$$
\operatorname{span}\{v_1,\dots,v_k\}
$$

e si chiama **sottospazio generato** dai vettori $v_1,\dots,v_k$.

Per definizione:

$$
\operatorname{span}\{v_1,\dots,v_k\}
=
\left\{
\lambda_1v_1+\cdots+\lambda_kv_k
\mid
\lambda_1,\dots,\lambda_k\in K
\right\}.
$$

Questo insieme è sempre un sottospazio. Infatti:

- contiene il vettore nullo, scegliendo tutti i coefficienti uguali a zero;
- è chiuso rispetto alla somma;
- è chiuso rispetto al prodotto per scalare.

Se $u$ è un vettore non nullo, allora

$$
\operatorname{span}\{u\}
=
\{\lambda u\mid \lambda\in K\}.
$$

In $\mathbb{R}^2$, questo è una retta passante per l’origine. Se $u=(a,b)$, allora:

$$
\operatorname{span}\{(a,b)\}
=
\{(\lambda a,\lambda b)\mid \lambda\in\mathbb{R}\}.
$$

Il vettore nullo da solo genera invece il sottospazio banale:

$$
\operatorname{span}\{0\}=\{0\}.
$$

---

## 6. Classificazione dei sottospazi di $\mathbb{R}^2$

I sottospazi vettoriali di $\mathbb{R}^2$ possono essere soltanto:

1. $\{(0,0)\}$;
2. una retta passante per l’origine;
3. tutto $\mathbb{R}^2$.

### Dimostrazione

Sia $W$ un sottospazio di $\mathbb{R}^2$.

Se $W=\{(0,0)\}$, abbiamo il sottospazio banale.

Supponiamo ora che $W$ contenga un vettore non nullo $v$. Poiché $W$ è chiuso rispetto al prodotto per scalare, contiene tutti i multipli di $v$:

$$
\operatorname{span}\{v\}\subseteq W.
$$

Se $W$ non contiene altri vettori oltre ai multipli di $v$, allora

$$
W=\operatorname{span}\{v\},
$$

e quindi $W$ è una retta per l’origine.

Rimane il caso in cui esista un vettore

$$
w\in W
$$

che non sia un multiplo di $v$. In $\mathbb{R}^2$, due vettori non proporzionali sono linearmente indipendenti e generano tutto il piano:

$$
\operatorname{span}\{v,w\}=\mathbb{R}^2.
$$

Poiché $W$ contiene $v$ e $w$ ed è chiuso rispetto alle combinazioni lineari, contiene tutto $\mathbb{R}^2$. Dunque $W=\mathbb{R}^2$.

Questa dimostrazione mostra anche perché non esistono altri sottospazi di $\mathbb{R}^2$.

### Costruzione esplicita della base canonica

Supponiamo, per esempio, che

$$
v=(a,b),\qquad w=(c,d)
$$

siano due vettori di $W$ non proporzionali.

Almeno uno tra $a$ e $b$ è diverso da zero.

#### Caso $a\neq 0$

Si può costruire una combinazione lineare di $v$ e $w$ che abbia prima coordinata nulla. Consideriamo:

$$
w-\frac{c}{a}v.
$$

La prima coordinata è

$$
c-\frac{c}{a}a=0.
$$

Quindi il vettore ha la forma

$$
\left(0,d-\frac{bc}{a}\right).
$$

Il coefficiente

$$
d-\frac{bc}{a}
$$

non può essere nullo: se fosse nullo, avremmo

$$
d=\frac{bc}{a},
$$

e quindi

$$
(c,d)=\frac{c}{a}(a,b),
$$

cioè $w$ sarebbe un multiplo di $v$, contro l’ipotesi.

Pertanto questo vettore è un multiplo non nullo di $(0,1)$. Riscalandolo opportunamente, si ottiene

$$
(0,1)\in W.
$$

A questo punto, da

$$
v=(a,b)
$$

si sottrae $b(0,1)$:

$$
v-b(0,1)=(a,0).
$$

Poiché $a\neq 0$, dividendo per $a$ si ottiene

$$
(1,0)\in W.
$$

Quindi $W$ contiene la base canonica di $\mathbb{R}^2$:

$$
(1,0),\qquad (0,1).
$$

Ne segue che $W=\mathbb{R}^2$.

#### Caso $a=0$

Se $v=(a,b)$ è non nullo e $a=0$, allora necessariamente $b\neq 0$. In questo caso si scambiano i ruoli della prima e della seconda coordinata e si procede allo stesso modo.

Il ragionamento mostra che, se un sottospazio di $\mathbb{R}^2$ contiene due vettori non proporzionali, allora contiene necessariamente tutto $\mathbb{R}^2$.

---

## 7. Passaggio da un’equazione a una descrizione tramite generatori

Consideriamo in generale il sottospazio di $\mathbb{R}^n$ definito da una singola equazione omogenea:

$$
W=
\left\{
(x_1,\dots,x_n)\in\mathbb{R}^n
\mid
\alpha_1x_1+\alpha_2x_2+\cdots+\alpha_nx_n=0
\right\}.
$$

Supponiamo che almeno uno dei coefficienti $\alpha_i$ sia diverso da zero. Dopo eventualmente aver riordinato le coordinate, possiamo supporre che

$$
\alpha_1\neq 0.
$$

L’equazione si può risolvere rispetto a $x_1$:

$$
x_1
=
-\frac{\alpha_2}{\alpha_1}x_2
-\frac{\alpha_3}{\alpha_1}x_3
-\cdots
-\frac{\alpha_n}{\alpha_1}x_n.
$$

Quindi ogni vettore di $W$ è della forma

$$
\begin{aligned}
(x_1,\dots,x_n)
&=
\left(
-\frac{\alpha_2}{\alpha_1}x_2
-\cdots
-\frac{\alpha_n}{\alpha_1}x_n,
x_2,\dots,x_n
\right)\\
&=
x_2\left(-\frac{\alpha_2}{\alpha_1},1,0,\dots,0\right)
+x_3\left(-\frac{\alpha_3}{\alpha_1},0,1,\dots,0\right)\\
&\quad+\cdots+
x_n\left(-\frac{\alpha_n}{\alpha_1},0,\dots,0,1\right).
\end{aligned}
$$

Pertanto:

$$
W=
\operatorname{span}
\left\{
\left(-\frac{\alpha_2}{\alpha_1},1,0,\dots,0\right),
\left(-\frac{\alpha_3}{\alpha_1},0,1,\dots,0\right),
\dots,
\left(-\frac{\alpha_n}{\alpha_1},0,\dots,0,1\right)
\right\}.
$$

Sono presenti $n-1$ vettori generatori.

Se $\alpha_1=0$, si sceglie un altro coefficiente non nullo, per esempio $\alpha_j\neq 0$, e si risolve l’equazione rispetto a $x_j$.

Il procedimento è possibile perché ogni elemento non nullo del campo è invertibile: dividere per $\alpha_1\neq 0$ equivale a moltiplicare per $\alpha_1^{-1}$.

---

## 8. Basi e indipendenza lineare

Un insieme di vettori $v_1,\dots,v_k$ è **linearmente indipendente** se l’unica combinazione lineare che dà il vettore nullo è quella con tutti i coefficienti nulli:

$$
\lambda_1v_1+\cdots+\lambda_kv_k=0
\quad\Longrightarrow\quad
\lambda_1=\cdots=\lambda_k=0.
$$

Se invece esiste una combinazione lineare nulla con almeno un coefficiente non nullo, i vettori sono linearmente dipendenti.

Una **base** di uno spazio vettoriale è un insieme di vettori che:

1. genera lo spazio;
2. è linearmente indipendente.

Quindi una base è un insieme di generatori senza ridondanze.

### Esempio di indipendenza lineare

Consideriamo i vettori

$$
v_1=(-1,1,0),
\qquad
v_2=(-2,1,1).
$$

Supponiamo che una loro combinazione lineare sia nulla:

$$
\alpha v_1+\beta v_2=0.
$$

Si ottiene:

$$
\alpha(-1,1,0)+\beta(-2,1,1)
=
(-\alpha-2\beta,\alpha+\beta,\beta)
=
(0,0,0).
$$

Confrontando la terza coordinata:

$$
\beta=0.
$$

Allora dalla seconda coordinata segue:

$$
\alpha+\beta=\alpha=0.
$$

Quindi l’unica combinazione lineare nulla è quella con

$$
\alpha=\beta=0.
$$

Pertanto $v_1$ e $v_2$ sono linearmente indipendenti.

Il ragionamento non richiede necessariamente che in ogni vettore compaia una coordinata uguale a $1$ con tutte le altre coordinate nulle. Quella è una situazione particolarmente semplice, perché permette di leggere immediatamente i coefficienti. Tuttavia l’indipendenza lineare può essere dimostrata anche risolvendo il sistema ottenuto imponendo che una combinazione lineare sia uguale al vettore nullo.

### Vettori con struttura a pivot

Un modo semplice per dimostrare l’indipendenza è avere vettori con una struttura del tipo:

- nel primo vettore compare un $1$ in una certa posizione e zeri nelle posizioni successive;
- nel secondo compare un $1$ in una posizione successiva e zeri nelle altre posizioni rilevanti;
- e così via.

In una combinazione lineare nulla, si esamina una coordinata alla volta. Una coordinata può dipendere da un solo coefficiente, costringendolo a essere zero; successivamente si passa alla coordinata successiva.

Questa è l’idea alla base della forma a scala e dei pivot nei sistemi lineari.

---

## 9. Descrizioni equivalenti di un sottospazio

Lo stesso sottospazio può essere descritto in modi diversi:

- come insieme di soluzioni di una o più equazioni lineari omogenee;
- come insieme generato da una famiglia di vettori;
- mediante una base, cioè una famiglia di generatori linearmente indipendenti.

Per esempio, il sottospazio

$$
W=
\{(x_1,x_2,x_3)\in\mathbb{R}^3\mid x_3=0\}
$$

può essere scritto come

$$
W=
\{(x_1,x_2,0)\mid x_1,x_2\in\mathbb{R}\},
$$

oppure come

$$
W=
\operatorname{span}\{(1,0,0),(0,1,0)\}.
$$

La prima descrizione evidenzia l’equazione che definisce il sottospazio; la seconda evidenzia i vettori che lo generano.

Analogamente, il sottospazio delle soluzioni di un’equazione lineare omogenea in $\mathbb{R}^n$ può essere riscritto tramite $n-1$ vettori generatori, scegliendo una variabile libera per ciascun parametro.

Una stessa base non è unica: un sottospazio può avere molte basi diverse. Ciò che deve rimanere invariato è il sottospazio generato, non necessariamente la specifica lista di vettori utilizzata.

> [!note]
> La rappresentazione mediante generatori e la rappresentazione mediante equazioni sono due modi complementari di descrivere la stessa struttura:
>
> - le equazioni stabiliscono quali vettori appartengono al sottospazio;
> - i generatori mostrano come costruire tutti i suoi vettori tramite combinazioni lineari.
