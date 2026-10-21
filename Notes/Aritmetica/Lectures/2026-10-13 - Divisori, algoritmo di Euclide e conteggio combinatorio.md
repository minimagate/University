---
type: lecture-note
course: Aritmetica
date: 2026-10-13
title: Divisori, algoritmo di Euclide e conteggio combinatorio
source_transcript: _transcripts/Aritmetica/2026-10-13 - Divisori, algoritmo di
  Euclide e conteggio combinatorio.md
source_hash: sha256:d004e61613a94ed1838b3c865d273dfd92d4ae496ffbbc8c556847a289a29d05
teaching_model: openai/gpt-5.6-luna
taught_at: 2026-10-13T12:15:52.759Z
---

# Divisori, algoritmo di Euclide e conteggio combinatorio

## Massimo comune divisore e minimo comune multiplo mediante la fattorizzazione

Siano

$$
A=\prod_{i=1}^n p_i^{\alpha_i},
\qquad
B=\prod_{i=1}^n p_i^{\beta_i},
$$

dove i $p_i$ sono primi distinti e gli esponenti sono interi non negativi. Si possono includere nell’espressione anche primi che compaiono solo in uno dei due numeri, ponendo esponente $0$ nell’altro.

### Massimo comune divisore

Il massimo comune divisore di $A$ e $B$ è

$$
\gcd(A,B)=\prod_{i=1}^n p_i^{\min(\alpha_i,\beta_i)}.
$$

L’idea è che un primo $p_i$ può comparire in un divisore comune con un esponente al massimo uguale sia a $\alpha_i$ sia a $\beta_i$. Pertanto l’esponente massimo possibile è il minimo tra i due:

$$
\gamma_i\leq \alpha_i,
\qquad
\gamma_i\leq \beta_i,
$$

da cui

$$
\gamma_i\leq \min(\alpha_i,\beta_i).
$$

Il prodotto

$$
D=\prod_{i=1}^n p_i^{\min(\alpha_i,\beta_i)}
$$

divide sia $A$ sia $B$, perché per ogni $i$

$$
\min(\alpha_i,\beta_i)\leq \alpha_i,
\qquad
\min(\alpha_i,\beta_i)\leq \beta_i.
$$

Inoltre, se $C$ è un qualunque divisore comune di $A$ e $B$, scrivendo

$$
C=\prod_{i=1}^n p_i^{\gamma_i},
$$

si ha necessariamente

$$
\gamma_i\leq \alpha_i
\quad\text{e}\quad
\gamma_i\leq \beta_i,
$$

quindi

$$
\gamma_i\leq \min(\alpha_i,\beta_i).
$$

Ne segue che $C\mid D$. Per definizione di massimo comune divisore, dunque,

$$
\boxed{\gcd(A,B)=\prod_{i=1}^n p_i^{\min(\alpha_i,\beta_i)}}.
$$

I primi che non compaiono né in $A$ né in $B$ non entrano nel calcolo: soltanto i primi che dividono almeno uno dei due numeri possono comparire nel massimo comune divisore.

### Minimo comune multiplo

In modo analogo,

$$
\operatorname{lcm}(A,B)
=
\prod_{i=1}^n p_i^{\max(\alpha_i,\beta_i)}.
$$

Infatti, un multiplo comune deve contenere ogni primo $p_i$ con un esponente almeno pari sia a $\alpha_i$ sia a $\beta_i$. L’esponente minimo possibile è dunque

$$
\max(\alpha_i,\beta_i).
$$

Si ottiene quindi

$$
\boxed{\operatorname{lcm}(A,B)=\prod_{i=1}^n p_i^{\max(\alpha_i,\beta_i)}}.
$$

### Relazione tra $\gcd$ e $\operatorname{lcm}$

Per ogni $i$ vale

$$
\min(\alpha_i,\beta_i)+\max(\alpha_i,\beta_i)
=
\alpha_i+\beta_i.
$$

Pertanto

$$
\gcd(A,B)\operatorname{lcm}(A,B)
=
\prod_{i=1}^n p_i^{\min(\alpha_i,\beta_i)+\max(\alpha_i,\beta_i)}
=
\prod_{i=1}^n p_i^{\alpha_i+\beta_i}
=
AB.
$$

Si ricava la formula fondamentale

$$
\boxed{\operatorname{lcm}(A,B)=\frac{AB}{\gcd(A,B)}}.
$$

Questa relazione può essere dimostrata anche direttamente, senza usare la fattorizzazione in primi, partendo dalle definizioni astratte di massimo comune divisore e minimo comune multiplo. La dimostrazione mediante gli esponenti primi è però particolarmente trasparente.

> [!warning]
> Nel passaggio dal massimo comune divisore al minimo comune multiplo bisogna sostituire sistematicamente i minimi con i massimi e le disuguaglianze $\leq$ con le disuguaglianze $\geq$.

---

## Conteggio dei divisori di un intero

Sia

$$
N=p_1^{\alpha_1}p_2^{\alpha_2}\cdots p_k^{\alpha_k}
$$

la fattorizzazione di $N$ in primi distinti. Ogni divisore positivo $d$ di $N$ deve avere la forma

$$
d=p_1^{\beta_1}p_2^{\beta_2}\cdots p_k^{\beta_k},
$$

dove, per ogni $i$,

$$
0\leq \beta_i\leq \alpha_i.
$$

Per ciascun esponente $\beta_i$ ci sono $\alpha_i+1$ possibilità indipendenti. Di conseguenza, il numero dei divisori positivi di $N$ è

$$
\boxed{\tau(N)=\prod_{i=1}^k(\alpha_i+1)}.
$$

Si contano sempre i divisori positivi, salvo indicazione esplicita contraria: non si aggiungono i divisori negativi.

### Esempio: divisori di $2000$

Si ha

$$
2000=2^4\cdot 5^3.
$$

Ogni divisore positivo è della forma

$$
2^a5^b,
\qquad
0\leq a\leq 4,\quad 0\leq b\leq 3.
$$

Ci sono quindi $5$ possibilità per $a$ e $4$ possibilità per $b$:

$$
\tau(2000)=(4+1)(3+1)=5\cdot 4=20.
$$

---

## Conteggio di terne il cui prodotto è $2000$

Si vuole contare il numero di terne ordinate di interi positivi $(x,y,z)$ tali che

$$
xyz=2000.
$$

Poiché

$$
2000=2^4\cdot 5^3,
$$

si possono scrivere

$$
x=2^{\alpha_1}5^{\alpha_2},
\qquad
y=2^{\beta_1}5^{\beta_2},
\qquad
z=2^{\gamma_1}5^{\gamma_2},
$$

con tutti gli esponenti interi non negativi.

La condizione sul prodotto equivale alle due equazioni

$$
\alpha_1+\beta_1+\gamma_1=4,
$$

e

$$
\alpha_2+\beta_2+\gamma_2=3.
$$

Le scelte relative agli esponenti di $2$ e quelle relative agli esponenti di $5$ sono indipendenti.

### Metodo delle stelle e sbarre

Il numero di soluzioni intere non negative dell’equazione

$$
u_1+u_2+\cdots+u_r=n
$$

è

$$
\binom{n+r-1}{r-1}.
$$

L’interpretazione è quella delle stelle e sbarre: si dispongono $n$ stelle e $r-1$ sbarre. Le stelle prima della prima sbarra rappresentano $u_1$, quelle tra la prima e la seconda sbarra rappresentano $u_2$, e così via.

Per

$$
\alpha_1+\beta_1+\gamma_1=4
$$

si hanno $4$ stelle e $2$ sbarre, quindi

$$
\binom{4+3-1}{3-1}
=
\binom{6}{2}
=
15.
$$

Per

$$
\alpha_2+\beta_2+\gamma_2=3
$$

si hanno invece

$$
\binom{3+3-1}{3-1}
=
\binom{5}{2}
=
10.
$$

Pertanto il numero di terne ordinate $(x,y,z)$ è

$$
15\cdot 10=\boxed{150}.
$$

Il numero di sbarre è sempre il numero di variabili meno $1$. Per tre variabili occorrono quindi due sbarre.

---

## Un’identità del massimo comune divisore per potenze

Si considera il problema di calcolare

$$
\gcd(3^a-1,3^b-1),
$$

dove $a,b$ sono interi positivi.

L’obiettivo è mostrare che

$$
\boxed{\gcd(3^a-1,3^b-1)=3^{\gcd(a,b)}-1}.
$$

### Passaggio analogo all’algoritmo di Euclide

Supponiamo, per semplicità, che $a\geq b$. Si può sottrarre al numero più grande una quantità multipla del secondo:

$$
(3^a-1)-3^{a-b}(3^b-1).
$$

Sviluppando:

$$
\begin{aligned}
(3^a-1)-3^{a-b}(3^b-1)
&=3^a-1-\left(3^a-3^{a-b}\right)\\
&=3^{a-b}-1.
\end{aligned}
$$

Quindi il massimo comune divisore di $3^a-1$ e $3^b-1$ è uguale al massimo comune divisore di $3^{a-b}-1$ e $3^b-1$:

$$
\gcd(3^a-1,3^b-1)
=
\gcd(3^{a-b}-1,3^b-1).
$$

Questo è concettualmente lo stesso passaggio dell’algoritmo di Euclide: si sostituisce uno dei due numeri con una differenza che conserva il massimo comune divisore. La differenza rispetto alla divisione euclidea standard è che qui non si sottrae semplicemente il secondo numero, ma il multiplo $3^{a-b}$ del secondo, scelto per cancellare il termine $3^a$.

La scelta di questo multiplo non è casuale: permette di ottenere nuovamente un’espressione della forma $3^r-1$.

### Definizione ricorsiva degli esponenti

Per iterare il procedimento bisogna riordinare ogni volta gli esponenti in modo che il maggiore venga scritto per primo. Definiamo

$$
a_0=a,\qquad b_0=b,
$$

e, ricorsivamente,

$$
a_{n+1}=\max(a_n,b_n)-\min(a_n,b_n),
$$

$$
b_{n+1}=\min(a_n,b_n).
$$

In altre parole, a ogni passo si sostituisce la coppia $(a_n,b_n)$ con la coppia formata dalla differenza e dal minore, riordinata in modo che il primo elemento sia il maggiore.

Allora

$$
\gcd(3^{a_n}-1,3^{b_n}-1)
=
\gcd(3^{a_{n+1}}-1,3^{b_{n+1}}-1).
$$

### Terminazione del processo

Se entrambi gli esponenti sono positivi, la loro somma diminuisce strettamente a ogni passaggio. Infatti, se $a_n\geq b_n>0$, allora

$$
a_{n+1}+b_{n+1}
=
(a_n-b_n)+b_n
=
a_n
<
a_n+b_n.
$$

La somma è una successione di interi non negativi strettamente decrescente finché entrambi gli esponenti sono non nulli. Non può quindi diminuire indefinitamente: dopo un numero finito di passi si arriva a un esponente uguale a $0$.

Se, per esempio, $b_N=0$, allora

$$
\gcd(3^{a_N}-1,3^{b_N}-1)
=
\gcd(3^{a_N}-1,3^0-1)
=
\gcd(3^{a_N}-1,0)
=
3^{a_N}-1.
$$

La successione degli esponenti è esattamente quella prodotta dall’algoritmo di Euclide applicato ad $a$ e $b$. Pertanto l’ultimo esponente non nullo è $\gcd(a,b)$, e quindi

$$
\gcd(3^a-1,3^b-1)=3^{\gcd(a,b)}-1.
$$

### Idea generale sui procedimenti ricorsivi

Il passaggio precedente illustra una strategia generale:

1. si parte da un’espressione del problema;
2. la si trasforma in un’espressione della stessa forma;
3. si tengono sotto controllo i dati che cambiano;
4. si individua una misura intera che diminuisce strettamente;
5. si conclude che il procedimento termina.

In questo caso i dati sono gli esponenti e la misura utile è la loro somma.

---

## Equazioni diofantee lineari

Si considera un’equazione lineare a coefficienti interi, per esempio

$$
11x+41y=2.
$$

Un’equazione diofantea lineare

$$
ax+by=c
$$

ammette soluzioni intere se e solo se

$$
\gcd(a,b)\mid c.
$$

Nel caso in esame,

$$
\gcd(11,41)=1,
$$

e quindi l’equazione ammette soluzioni intere perché $1\mid 2$.

Per coefficienti piccoli si può spesso trovare una soluzione per tentativi. Quando i coefficienti sono più grandi, si usa l’algoritmo di Euclide esteso.

### Algoritmo di Euclide per $11$ e $41$

Si eseguono le divisioni successive:

$$
41=3\cdot 11+8,
$$

$$
11=1\cdot 8+3,
$$

$$
8=2\cdot 3+2,
$$

$$
3=1\cdot 2+1.
$$

L’ultimo resto non nullo è $1$, quindi

$$
\gcd(11,41)=1.
$$

### Risalita all’indietro

Si riscrivono le uguaglianze partendo dal fondo:

$$
1=3-2,
$$

$$
2=8-2\cdot 3,
$$

quindi

$$
1=3-(8-2\cdot 3)=3\cdot 3-8.
$$

Poiché

$$
3=11-8,
$$

si ottiene

$$
\begin{aligned}
1
&=3(11-8)-8\\
&=3\cdot 11-4\cdot 8.
\end{aligned}
$$

Infine, poiché

$$
8=41-3\cdot 11,
$$

segue che

$$
\begin{aligned}
1
&=3\cdot 11-4(41-3\cdot 11)\\
&=15\cdot 11-4\cdot 41.
\end{aligned}
$$

Abbiamo dunque scritto il massimo comune divisore come combinazione lineare dei coefficienti originali:

$$
1=15\cdot 11-4\cdot 41.
$$

Moltiplicando per $2$:

$$
2=30\cdot 11-8\cdot 41.
$$

Una soluzione particolare è quindi

$$
(x_0,y_0)=(30,-8).
$$

### Tutte le soluzioni

Sia $(x,y)$ una qualunque soluzione e sia $(x_0,y_0)=(30,-8)$ la soluzione particolare trovata. Sottraendo le due equazioni si ottiene

$$
11(x-x_0)+41(y-y_0)=0.
$$

Ponendo

$$
u=x-x_0,\qquad v=y-y_0,
$$

si ottiene l’equazione omogenea

$$
11u+41v=0.
$$

Da questa:

$$
11u=-41v.
$$

Poiché $\gcd(11,41)=1$, il numero $11$ deve dividere $v$. Possiamo quindi scrivere

$$
v=11\lambda
$$

per un certo $\lambda\in\mathbb Z$. Sostituendo:

$$
11u=-41\cdot 11\lambda,
$$

da cui

$$
u=-41\lambda.
$$

Pertanto tutte le soluzioni sono

$$
x=x_0+u=30-41\lambda,
$$

$$
y=y_0+v=-8+11\lambda,
$$

con $\lambda\in\mathbb Z$.

Equivalentemente, cambiando il segno del parametro, si può scrivere

$$
\boxed{x=30+41\lambda,\qquad y=-8-11\lambda,\qquad \lambda\in\mathbb Z}.
$$

Le due parametrizzazioni sono identiche, perché il parametro intero può essere sostituito con il suo opposto.

> [!note]
> Il passaggio usato è un caso del seguente fatto: se $\gcd(r,s)=1$ e $r\mid st$, allora $r\mid t$. Più generalmente, se $\gcd(r,s)=1$ e $r\mid st$, allora $r$ divide il secondo fattore $t$.

### Conteggio delle soluzioni con $\lvert x\rvert,\lvert y\rvert\leq 100$

Usando

$$
x=30+41\lambda,
\qquad
y=-8-11\lambda,
$$

la condizione su $x$ diventa

$$
|30+41\lambda|\leq 100.
$$

Quindi

$$
-100\leq 30+41\lambda\leq 100,
$$

ossia

$$
-130\leq 41\lambda\leq 70.
$$

Da cui

$$
-\frac{130}{41}\leq \lambda\leq \frac{70}{41}.
$$

Essendo $\lambda$ intero, si ottiene

$$
\lambda\in\{-3,-2,-1,0,1\}.
$$

Ci sono dunque almeno cinque valori possibili.

Per questi valori,

$$
y=-8-11\lambda
$$

assume rispettivamente i valori

$$
25,\ 14,\ 3,\ -8,\ -19,
$$

tutti compresi tra $-100$ e $100$. La condizione su $y$ è quindi automaticamente soddisfatta.

Pertanto il numero di soluzioni intere con

$$
|x|\leq 100,\qquad |y|\leq 100
$$

è

$$
\boxed{5}.
$$

---

## Conteggio di sottoinsiemi di tre elementi con somma $100$

Si vuole contare il numero di sottoinsiemi di tre interi positivi distinti la cui somma è $100$.

Un sottoinsieme può essere rappresentato come una terna non ordinata

$$
\{a,b,c\},
\qquad
a,b,c\in\mathbb Z_{>0},
\qquad
a+b+c=100,
$$

con $a,b,c$ distinti.

Il problema viene risolto in due fasi:

1. si contano le terne ordinate di interi positivi;
2. si eliminano quelle con componenti ripetute e poi si dimentica l’ordine.

### Terne ordinate di interi positivi

Prima si contano le soluzioni ordinate di

$$
a+b+c=100,
\qquad
a,b,c\geq 1.
$$

Si pone

$$
a'=a-1,\qquad b'=b-1,\qquad c'=c-1.
$$

Allora

$$
a',b',c'\geq 0
$$

e

$$
a'+b'+c'=97.
$$

Per il metodo delle stelle e sbarre, il numero di soluzioni è

$$
\binom{97+3-1}{3-1}
=
\binom{99}{2}
=
\frac{99\cdot 98}{2}
=
4851.
$$

### Eliminazione delle terne con componenti uguali

Bisogna escludere le terne in cui almeno due componenti coincidono.

#### Caso $a=b$

L’equazione diventa

$$
2a+c=100,
$$

con $a,c\geq 1$. Poiché $c=100-2a\geq 1$, si ha

$$
1\leq a\leq 49.
$$

Esistono quindi $49$ terne ordinate di questo tipo.

Lo stesso vale per i casi

$$
a=c
\qquad\text{e}\qquad
b=c.
$$

In totale si contano

$$
3\cdot 49=147
$$

terne con almeno una coppia di componenti uguali, purché non si verifichi contemporaneamente $a=b=c$.

Il caso

$$
a=b=c
$$

richiederebbe

$$
3a=100,
$$

impossibile negli interi. Pertanto non ci sono sovrapposizioni da correggere.

Il numero di terne ordinate con componenti tutte distinte è dunque

$$
\binom{99}{2}-3\cdot 49
=
4851-147
=
4704.
$$

### Eliminazione dell’ordine

Ogni terna con tre componenti distinte può essere ordinata in

$$
3!=6
$$

modi diversi. Di conseguenza ogni sottoinsieme di tre elementi distinti è stato contato esattamente sei volte.

Il numero di sottoinsiemi cercati è quindi

$$
\frac{4704}{6}
=
\boxed{784}.
$$

In conclusione, il numero di sottoinsiemi di cardinalità $3$ formati da interi positivi distinti con somma $100$ è

$$
\boxed{784}.
$$