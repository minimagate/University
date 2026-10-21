---
type: lecture-note
course: Aritmetica
date: 2026-10-14
title: Sviluppi decimali razionali e fattorizzazione dei denominatori
source_transcript: _transcripts/Aritmetica/2026-10-14 - Sviluppi decimali
  razionali e fattorizzazione dei denominatori.md
source_hash: sha256:2c8f4437f21173b7ca4e36498b02858da8a9fc43f8d8ecf39acafc3378a7314e
teaching_model: openai/gpt-5.6-luna
taught_at: 2026-10-14T11:30:02.663Z
---

# Sviluppi decimali razionali e fattorizzazione dei denominatori

## 1. Sviluppi decimali e periodicità

Si lavora in base $10$. Un numero reale può essere rappresentato, quando $x\ge 0$, nella forma

$$
x=a_0+\frac{a_1}{10}+\frac{a_2}{10^2}+\frac{a_3}{10^3}+\cdots,
$$

dove $a_0\in\mathbb{Z}_{\ge 0}$ è la parte intera e le cifre decimali soddisfano

$$
a_i\in\{0,1,\dots,9\}.
$$

Equivalentemente, si scrive

$$
x=a_0,a_1a_2a_3\ldots.
$$

Le cifre decimali possono eventualmente diventare periodiche. Dire che uno sviluppo decimale è **eventualmente periodico** significa che esistono:

- una parte iniziale finita di cifre, non necessariamente periodica;
- una sequenza finita di cifre che, da un certo punto in poi, si ripete indefinitamente.

Per esempio, uno sviluppo del tipo

$$
x=a_0,a_1a_2\cdots a_s\overline{b_1b_2\cdots b_n}
$$

ha:

- parte non periodica $a_1a_2\cdots a_s$;
- periodo $b_1b_2\cdots b_n$ di lunghezza $n$.

Il punto essenziale della lezione è il teorema:

> **Teorema.** Un numero reale è razionale se e solo se il suo sviluppo decimale è eventualmente periodico.

La dimostrazione è divisa in due direzioni:

1. ogni numero razionale ha sviluppo decimale eventualmente periodico;
2. ogni numero con sviluppo decimale eventualmente periodico è razionale.

---

## 2. Perché una frazione razionale ha sviluppo decimale periodico

Consideriamo una frazione $\frac{a}{b}$ e applichiamo l’algoritmo della divisione con resto per calcolarne lo sviluppo decimale.

A ogni passaggio dell’algoritmo si considerano:

- il resto corrente;
- la cifra decimale successiva ottenuta dalla divisione;
- il nuovo resto.

Se il denominatore è $b$, i resti possibili sono finiti:

$$
0,1,\dots,b-1.
$$

Quindi, durante l’algoritmo, si verifica una delle due possibilità:

1. compare il resto $0$; in questo caso lo sviluppo decimale termina;
2. non compare mai il resto $0$; poiché i resti possibili sono finiti, a un certo punto deve ricomparire un resto già incontrato.

Quando si ripresenta lo stesso resto, l’algoritmo riparte esattamente dalla stessa situazione. Da quel momento in poi produrrà le stesse cifre nello stesso ordine. Le cifre, dunque, diventano periodiche.

Questa è una conseguenza del fatto che il calcolo dello sviluppo decimale è un algoritmo deterministico con un numero finito di stati possibili.

> **Idea generale:** un processo deterministico che ha un numero finito di configurazioni, se continua indefinitamente, deve prima o poi ritornare in una configurazione già incontrata. Da quel momento il comportamento si ripete.

---

## 3. Un lemma sui periodi decimali

### Lemma 1

Siano $b_0,b_1,\dots,b_n$ cifre decimali, con

$$
0\le b_i\le 9.
$$

Consideriamo il blocco decimale

$$
0,b_0b_1\cdots b_n b_0b_1\cdots b_n b_0b_1\cdots.
$$

Indichiamo con

$$
B=b_0 10^n+b_1 10^{n-1}+\cdots+b_n
$$

l’intero rappresentato dal blocco di $n+1$ cifre. Allora

$$
0,\overline{b_0b_1\cdots b_n}
=
\frac{B}{10^{n+1}-1}.
$$

In forma più esplicita:

$$
0,\overline{b_0b_1\cdots b_n}
=
\frac{b_0 10^n+b_1 10^{n-1}+\cdots+b_n}{10^{n+1}-1}.
$$

### Dimostrazione

Poniamo

$$
x=0,\overline{b_0b_1\cdots b_n}.
$$

Moltiplicando per $10^{n+1}$ si sposta la virgola di $n+1$ posizioni, cioè si ottiene

$$
10^{n+1}x=B+x.
$$

Infatti, la parte iniziale che compare prima della nuova copia del periodo è proprio il numero intero $B$, mentre dopo di essa rimane nuovamente $x$.

Quindi

$$
10^{n+1}x-x=B,
$$

da cui

$$
(10^{n+1}-1)x=B.
$$

Pertanto

$$
x=\frac{B}{10^{n+1}-1}.
$$

### Esempio

Prendiamo il periodo $34$. In questo caso il periodo ha lunghezza $2$, quindi

$$
0,\overline{34}=0,343434\ldots.
$$

Il lemma afferma che

$$
0,\overline{34}=\frac{34}{10^2-1}=\frac{34}{99}.
$$

Infatti,

$$
100\cdot 0,343434\ldots
=
34,343434\ldots,
$$

e sottraendo $0,343434\ldots$ si ottiene

$$
99\cdot 0,343434\ldots=34.
$$

La parte periodica si cancella perché lo spostamento della virgola di una lunghezza pari al periodo lascia invariata la parte infinita ripetuta.

---

## 4. Periodicità eventuale

Consideriamo ora un numero della forma

$$
x=a_0,a_1a_2\cdots a_s\overline{b_0b_1\cdots b_n}.
$$

La parte periodica può essere considerata separatamente. Se poniamo

$$
y=0,\overline{b_0b_1\cdots b_n},
$$

allora, per il lemma precedente,

$$
y=\frac{B}{10^{n+1}-1},
$$

dove $B$ è l’intero rappresentato dal periodo.

Poiché il periodo inizia dopo $s$ cifre decimali, esso deve essere diviso per $10^s per collocarlo nella posizione corretta:

$$
x=
\left(a_0,a_1\cdots a_s\right)
+\frac{1}{10^s}\,y.
$$

Quindi $x$ è somma di:

1. un numero decimale finito, dunque razionale;
2. una frazione della forma

   $$
   \frac{B}{10^s(10^{n+1}-1)},
   $$

   dunque razionale.

Ne segue che ogni numero eventualmente periodico è razionale.

Questa parte della dimostrazione produce denominatori della forma

$$
10^s(10^m-1),
$$

dove $s\ge 0$ e $m\ge 1$.

A prima vista potrebbe sembrare che questo dia solo una classe molto particolare di denominatori. Occorre quindi dimostrare che ogni denominatore può essere ricondotto a questa forma, eventualmente moltiplicando numeratore e denominatore per uno stesso intero.

---

# 5. Un lemma sulle potenze modulo $b$

## Lemma 2

Siano $a,b\in\mathbb{Z}$ con

$$
\gcd(a,b)=1.
$$

Allora esiste un intero $n\ge 1$ tale che

$$
a^n\equiv 1\pmod b.
$$

Equivalentemente,

$$
b\mid a^n-1.
$$

### Dimostrazione mediante i resti

Consideriamo le potenze

$$
a,a^2,a^3,\dots
$$

e i loro resti modulo $b$.

Poiché ci sono solo un numero finito di resti possibili, tra le potenze

$$
a^1,a^2,\dots,a^{b+1}
$$

almeno due hanno lo stesso resto. Esistono quindi $m'<m$ tali che

$$
a^{m'}\equiv a^m\pmod b.
$$

Questo equivale a dire che

$$
b\mid a^m-a^{m'}.
$$

Raccogliendo $a^{m'}$:

$$
b\mid a^{m'}(a^{m-m'}-1).
$$

Poiché $\gcd(a,b)=1$, anche $\gcd(a^{m'},b)=1$. Pertanto il fattore $a^{m'}$ è invertibile modulo $b$ e può essere cancellato nella congruenza:

$$
a^{m-m'}\equiv 1\pmod b.
$$

Ponendo

$$
n=m-m'>0,
$$

si ottiene

$$
a^n\equiv 1\pmod b.
$$

> La cancellazione del fattore $a^{m'}$ è lecita proprio grazie all’ipotesi $\gcd(a,b)=1$. Senza questa ipotesi il ragionamento non sarebbe valido.

Il docente ha osservato che una versione più precisa di questo risultato sarà collegata in seguito alla funzione di Eulero e al numero degli interi coprimi con $b$.

---

# 6. Fattorizzazione del denominatore

Vogliamo mostrare che, per ogni intero positivo $b$, esistono $s,m$ tali che

$$
b\mid 10^s(10^m-1).
$$

Questo è il passaggio chiave per dimostrare che ogni numero razionale è eventualmente periodico.

Scomponiamo $b$ in fattori primi e separiamo le potenze di $2$ e di $5$:

$$
b=2^\alpha 5^\beta b',
$$

dove

$$
\gcd(b',10)=1.
$$

Sia

$$
s=\max\{\alpha,\beta\}.
$$

Allora $2^\alpha5^\beta$ divide $10^s$, perché

$$
10^s=2^s5^s.
$$

Inoltre, poiché $b'$ è coprimo con $10$, il Lemma 2, applicato ad $a=10$ e $b=b'$, garantisce l’esistenza di $m\ge 1$ tale che

$$
10^m\equiv 1\pmod{b'}.
$$

Equivalentemente,

$$
b'\mid 10^m-1.
$$

Di conseguenza,

$$
b=2^\alpha5^\beta b'
\mid
10^s(10^m-1).
$$

Abbiamo quindi dimostrato:

> **Corollario.** Per ogni $b\ge 1$ esistono interi $s\ge 0$ e $m\ge 1$ tali che
>
> $$
> b\mid 10^s(10^m-1).
> $$

Il caso in cui $b$ è già coprimo con $10$ è direttamente il caso particolare del Lemma 2 con $a=10$. Il caso generale si ottiene estraendo dal denominatore tutte le potenze di $2$ e $5$.

> **Attenzione:** non è sufficiente dimostrare il risultato solo quando $b$ è primo. Dopo la fattorizzazione, $b'$ può essere un prodotto di più primi distinti da $2$ e $5$. Il Lemma 2 si applica direttamente a $b'$, senza che sia necessario supporlo primo.

---

# 7. Ogni numero razionale ha sviluppo eventualmente periodico

Consideriamo un numero razionale non negativo

$$
x=\frac{a}{b},
$$

con

$$
a\in\mathbb{Z}_{\ge 0},\qquad b\in\mathbb{Z}_{\ge 1}.
$$

Dal corollario precedente esistono $s,m$ tali che

$$
b\mid 10^s(10^m-1).
$$

Quindi esiste $\lambda\in\mathbb{Z}$ tale che

$$
10^s(10^m-1)=\lambda b.
$$

Moltiplicando numeratore e denominatore di $\frac{a}{b}$ per $\lambda$, si ottiene

$$
\frac{a}{b}
=
\frac{\lambda a}{10^s(10^m-1)}.
$$

Il denominatore ha la forma adatta per separare:

- una parte decimale finita, dovuta al fattore $10^s$;
- una parte periodica, dovuta al fattore $10^m-1$.

Infatti, per ogni intero $C$ vale

$$
\frac{C}{10^s(10^m-1)}
=
\frac{1}{10^s}\cdot \frac{C}{10^m-1}.
$$

Il fattore $\frac{1}{10^s}$ sposta semplicemente la virgola di $s$ posizioni, mentre il denominatore $10^m-1$ produce un periodo di lunghezza al più $m$.

Per rendere esplicita la parte periodica, si può effettuare la divisione euclidea di $C$ per $10^m-1$:

$$
C=q(10^m-1)+r,
\qquad 0\le r<10^m-1.
$$

Allora

$$
\frac{C}{10^m-1}
=
q+\frac{r}{10^m-1}.
$$

La parte intera $q$ non crea problemi, mentre

$$
\frac{r}{10^m-1}
$$

ha sviluppo decimale periodico per il Lemma 1.

Quindi $x$ è eventualmente periodico.

Per $x<0$ si considera prima $-x$ e poi si cambia il segno.

Abbiamo così dimostrato entrambe le direzioni:

$$
\boxed{
x\in\mathbb{Q}
\quad\Longleftrightarrow\quad
\text{lo sviluppo decimale di }x\text{ è eventualmente periodico}
}.
$$

---

# 8. Valutazione dell’esponente di un primo nel fattoriale

La seconda parte della lezione riguarda la fattorizzazione dei numeri interi, in particolare l’esponente con cui un primo compare nella fattorizzazione di un fattoriale.

## Definizione

Sia $p$ un numero primo e sia $N$ un intero positivo. Si indica con $v_p(N)$ l’esponente di $p$ nella fattorizzazione prima di $N$.

In altre parole, $v_p(N)$ è l’unico intero $\alpha\ge 0$ tale che

$$
p^\alpha\mid N,
\qquad
p^{\alpha+1}\nmid N.
$$

Per esempio, poiché

$$
24=2^3\cdot 3,
$$

si ha

$$
v_2(24)=3,\qquad v_3(24)=1,\qquad v_5(24)=0.
$$

L’obiettivo è calcolare $v_p(n!)$, cioè quante volte il primo $p$ compare nella fattorizzazione di

$$
n!=1\cdot 2\cdot 3\cdots n.
$$

---

## 9. Metodo mediante una tabella

Per esempio, consideriamo $19!$ e calcoliamo l’esponente di $2$.

Si possono disporre i numeri da $1$ a $19$ in una tabella e contare, per ogni numero, quante volte è divisibile per $2$:

- ogni numero pari contribuisce almeno una volta;
- ogni multiplo di $4$ contribuisce una volta aggiuntiva;
- ogni multiplo di $8$ contribuisce una volta aggiuntiva;
- ogni multiplo di $16$ contribuisce una volta aggiuntiva.

Il conteggio per righe è:

1. Multipli di $2$:

   $$
   2,4,6,8,10,12,14,16,18,
   $$

   in tutto

   $$
   \left\lfloor\frac{19}{2}\right\rfloor=9.
   $$

2. Multipli di $4$:

   $$
   4,8,12,16,
   $$

   in tutto

   $$
   \left\lfloor\frac{19}{4}\right\rfloor=4.
   $$

3. Multipli di $8$:

   $$
   8,16,
   $$

   in tutto

   $$
   \left\lfloor\frac{19}{8}\right\rfloor=2.
   $$

4. Multipli di $16$:

   $$
   16,
   $$

   in tutto

   $$
   \left\lfloor\frac{19}{16}\right\rfloor=1.
   $$

Pertanto

$$
v_2(19!)
=
\left\lfloor\frac{19}{2}\right\rfloor
+
\left\lfloor\frac{19}{4}\right\rfloor
+
\left\lfloor\frac{19}{8}\right\rfloor
+
\left\lfloor\frac{19}{16}\right\rfloor.
$$

Quindi

$$
v_2(19!)=9+4+2+1=16.
$$

Non è necessario considerare $2^{32}$ o potenze successive, perché appena $2^k>19$ non ci sono più multipli di $2^k$ tra $1$ e $19$.

---

## 10. Formula generale di Legendre

Il ragionamento precedente vale per ogni primo $p$ e ogni intero $n\ge 1$.

I multipli di $p$ compresi tra $1$ e $n$ sono

$$
\left\lfloor\frac{n}{p}\right\rfloor.
$$

Quelli divisibili per $p^2$ sono

$$
\left\lfloor\frac{n}{p^2}\right\rfloor,
$$

e così via.

Ne segue la formula:

$$
\boxed{
v_p(n!)
=
\sum_{k\ge 1}
\left\lfloor\frac{n}{p^k}\right\rfloor
}.
$$

La somma è in realtà finita, perché per $p^k>n$ si ha

$$
\left\lfloor\frac{n}{p^k}\right\rfloor=0.
$$

Questa è la **formula di Legendre**.

### Dimostrazione per righe

Ogni multiplo di $p$ contribuisce almeno una volta alla fattorizzazione di $n!$.

Ogni multiplo di $p^2$ contribuisce una seconda volta.

Ogni multiplo di $p^3$ contribuisce una terza volta, e così via.

Pertanto, sommando il numero di multipli di ciascuna potenza di $p$, si ottiene esattamente il numero totale di fattori $p$ contenuti in $n!$:

$$
v_p(n!)
=
\left\lfloor\frac{n}{p}\right\rfloor
+
\left\lfloor\frac{n}{p^2}\right\rfloor
+
\left\lfloor\frac{n}{p^3}\right\rfloor
+\cdots.
$$

### Dimostrazione per colonne

In alternativa, si può organizzare il conteggio per colonne.

Per ogni $k\ge 1$, consideriamo gli interi $m$ tra $1$ e $n$ tali che $p^k\mid m$. Il loro numero è

$$
\left\lfloor\frac{n}{p^k}\right\rfloor.
$$

Tra questi, alcuni sono divisibili anche per $p^{k+1}$. Il numero degli interi divisibili esattamente per $p^k$, ma non per $p^{k+1}$, è

$$
\left\lfloor\frac{n}{p^k}\right\rfloor
-
\left\lfloor\frac{n}{p^{k+1}}\right\rfloor.
$$

Ciascuno di questi interi contribuisce esattamente $k$ fattori $p$. Di conseguenza,

$$
v_p(n!)
=
\sum_{k\ge 1}
k\left(
\left\lfloor\frac{n}{p^k}\right\rfloor
-
\left\lfloor\frac{n}{p^{k+1}}\right\rfloor
\right).
$$

Sviluppando la somma:

$$
\begin{aligned}
v_p(n!)
&=
\left\lfloor\frac{n}{p}\right\rfloor
+
\left(
2\left\lfloor\frac{n}{p^2}\right\rfloor
-
\left\lfloor\frac{n}{p^2}\right\rfloor
\right) \\
&\quad+
\left(
3\left\lfloor\frac{n}{p^3}\right\rfloor
-
2\left\lfloor\frac{n}{p^3}\right\rfloor
\right)
+\cdots.
\end{aligned}
$$

I termini si semplificano telescopicamente e rimane

$$
v_p(n!)
=
\left\lfloor\frac{n}{p}\right\rfloor
+
\left\lfloor\frac{n}{p^2}\right\rfloor
+
\left\lfloor\frac{n}{p^3}\right\rfloor
+\cdots.
$$

Le due dimostrazioni corrispondono ai due modi di leggere la tabella:

- **per righe:** si conta quante volte compare ciascuna potenza $p^k$;
- **per colonne:** si raggruppano i numeri in base al numero esatto di fattori $p$ che contengono.

---

# 11. Equazioni del tipo $x^2-y^2=n$

Nella parte finale della lezione viene considerata l’equazione diofantea

$$
x^2-y^2=n,
$$

con $x,y\in\mathbb{Z}$.

Si utilizza la fattorizzazione

$$
x^2-y^2=(x+y)(x-y).
$$

Quindi risolvere l’equazione equivale a trovare due fattori $u,v$ tali che

$$
uv=n,
$$

con

$$
u=x+y,\qquad v=x-y.
$$

Da queste relazioni si ricava

$$
x=\frac{u+v}{2},
\qquad
y=\frac{u-v}{2}.
$$

Affinché $x$ e $y$ siano interi, $u$ e $v$ devono avere la stessa parità.

Infatti,

$$
u+v=2x,\qquad u-v=2y,
$$

quindi sia $u+v$ sia $u-v$ devono essere pari. Questo accade esattamente quando $u$ e $v$ sono entrambi pari oppure entrambi dispari.

---

## 12. Esempio: $x^2-y^2=26$

Consideriamo

$$
x^2-y^2=26.
$$

La fattorizzazione richiede

$$
(x+y)(x-y)=26.
$$

Le coppie di fattori di $26$ sono, a meno dei segni,

$$
(1,26),\qquad (2,13).
$$

In entrambi i casi i due fattori hanno parità diversa:

- $1$ è dispari e $26$ è pari;
- $2$ è pari e $13$ è dispari.

Pertanto non possono essere contemporaneamente della forma $x+y$ e $x-y$ con $x,y\in\mathbb{Z}$.

Ne segue che l’equazione non ha soluzioni intere.

---

## 13. Osservazione modulo $4$

La stessa conclusione può essere ottenuta usando le congruenze.

Ogni quadrato intero modulo $4$ è congruo a $0$ oppure a $1$:

- se $m$ è pari, $m=2k$, allora

  $$
  m^2=4k^2\equiv 0\pmod 4;
  $$

- se $m$ è dispari, $m=2k+1$, allora

  $$
  m^2=4k^2+4k+1\equiv 1\pmod 4.
  $$

Quindi

$$
x^2-y^2\pmod 4
$$

può assumere solo i valori

$$
0,\ 1,\ -1\equiv 3\pmod 4.
$$

Non può mai essere congruo a $2$ modulo $4$.

Poiché

$$
26\equiv 2\pmod 4,
$$

l’equazione

$$
x^2-y^2=26
$$

non può avere soluzioni intere.

Più in generale:

> Se $n\equiv 2\pmod 4$, l’equazione $x^2-y^2=n$ non ha soluzioni intere.

---

# 14. Classificazione in base alla parità di $n$

Dalla condizione che $x+y$ e $x-y$ debbano avere la stessa parità si ottiene una classificazione.

## Caso 1: $n$ dispari

Se $n$ è dispari e

$$
uv=n,
$$

allora necessariamente $u$ e $v$ sono entrambi dispari. Quindi ogni fattorizzazione di $n$ produce una soluzione intera:

$$
x=\frac{u+v}{2},
\qquad
y=\frac{u-v}{2}.
$$

Se si sceglie un divisore positivo $d$ di $n$, ponendo

$$
u=d,\qquad v=\frac{n}{d},
$$

si ottiene

$$
x=
\frac{d+\frac{n}{d}}{2},
\qquad
y=
\frac{d-\frac{n}{d}}{2}.
$$

Si possono considerare anche divisori negativi, che producono ulteriori soluzioni legate ai cambiamenti di segno.

## Caso 2: $n\equiv 2\pmod 4$

In questo caso non esistono soluzioni, perché una differenza di quadrati non può essere congrua a $2$ modulo $4$.

## Caso 3: $4\mid n$

Scriviamo

$$
n=4m.
$$

Per ottenere fattori $u=x+y$ e $v=x-y$ entrambi pari, poniamo

$$
u=2d,\qquad v=2\frac{m}{d},
$$

dove $d$ è un divisore di $m$.

Allora

$$
uv
=
2d\cdot 2\frac{m}{d}
=
4m=n.
$$

Le corrispondenti soluzioni sono

$$
x=\frac{u+v}{2}
=
d+\frac{m}{d},
$$

e

$$
y=\frac{u-v}{2}
=
d-\frac{m}{d}.
$$

Quindi, se $4\mid n$, ogni divisore $d$ di $\frac n4$ conduce a una soluzione:

$$
\boxed{
x=d+\frac{n}{4d},
\qquad
y=d-\frac{n}{4d}
}.
$$

Anche in questo caso si possono usare divisori negativi e scambiare i segni per ottenere le soluzioni associate.

In sintesi, per $n\ne 0$:

- se $n$ è dispari, ci sono soluzioni associate ai divisori di $n$;
- se $n\equiv 2\pmod 4$, non ci sono soluzioni;
- se $4\mid n$, ci sono soluzioni associate ai divisori di $\frac n4$.

La condizione fondamentale è sempre che i due fattori $x+y$ e $x-y$ abbiano la stessa parità.